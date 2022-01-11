#include "secdesk.h"
#pragma cle def ORANGE {"level":"orange"}
#pragma cle def EMBEDDING_SHAREABLE {"level":"orange",\
  "cdf": [\
    {"remotelevel":"purple", \
     "direction": "egress", \
     "guarddirective": { "operation": "allow"}}\
  ] }
#pragma cle def PROCESS_SECINPUT {"level":"orange",\
  "cdf": [\
    {"remotelevel":"orange", \
     "direction": "egress", \
     "guarddirective": { "operation": "allow" },\
     "argtaints": [["ORANGE"], ["ORANGE"]], \
     "codtaints": ["EMBEDDING_SHAREABLE", "ORANGE"],\
     "rettaints": ["ORANGE"]}\
  ] }



static char *RESPONSE_FORMAT= "<!DOCTYPE html><html><body>%s<br><img height=\"200px\" src=\"%s\" id=\"myImage\" /></body></html>";

/* Set up command line interface and defaults */
static void initialize_cli(int argc, char const *argv[]) {
  fio_cli_start(
      argc, argv, 0, 0, NULL, 
      FIO_CLI_PRINT_HEADER("Address binding:"),
      FIO_CLI_INT("-port -p port number to listen to. default: port 3000"),
      FIO_CLI_STRING("-bind -b address to listen to. default: any available."),
      FIO_CLI_PRINT_HEADER("Concurrency:"),
      FIO_CLI_INT("-workers -w number of processes to use."),
      FIO_CLI_INT("-threads -t number of threads per process."),
      FIO_CLI_PRINT_HEADER("HTTP Server:"),
      FIO_CLI_STRING("-public -www public folder, for static file service."),
      FIO_CLI_INT("-keep-alive -k HTTP keep-alive timeout (0..255). default: ~5s"),
      FIO_CLI_INT("-max-body -maxbd HTTP upload limit. default: ~50Mb"),
      FIO_CLI_BOOL("-log -v request verbosity (logging)."),
      FIO_CLI_PRINT_HEADER("Database:"),
      FIO_CLI_STRING("-database -db Database file.  default ./db/secdesk.db"));

  if (!fio_cli_get("-b")) {
    char *tmp = getenv("ADDRESS");
    if (tmp) {
      fio_cli_set("-b", tmp);
      fio_cli_set("-bind", tmp);
    }
  }
  if (!fio_cli_get("-p")) {
    char *tmp = getenv("PORT");
    if (!tmp && !fio_cli_get("-b")) tmp = "3000";
    fio_cli_set("-p", tmp);
    fio_cli_set("-port", tmp);
  }
  if (!fio_cli_get("-www")) {
    char *tmp = getenv("HTTP_PUBLIC_FOLDER");
    if (tmp) {
      fio_cli_set("-public", tmp);
      fio_cli_set("-www", tmp);
    }
  }
  if (!fio_cli_get("-db")) {
    char *tmp = getenv("DBURI");
    if (!tmp) tmp = "./db/secdesk.db";
    fio_cli_set("-database", tmp);
    fio_cli_set("-db", tmp);
  }
}

static int get_file(FIOBJ o, void *arg) {
  struct secinput *s = arg;
  if (o) {
    char * key = fiobj_obj2cstr(fiobj_hash_key_in_loop()).data;
    if (strcmp(key,"name") == 0) { s->filename = o; } 
    else if (strcmp(key,"data") == 0) { s->filedata = o; }
  }
  return 0;
}

static int get_fields(FIOBJ o, void *arg) {
  struct secinput *s = arg;
  if (o) {
    char * key = fiobj_obj2cstr(fiobj_hash_key_in_loop()).data;
    if (strcmp(key,"imageFile") == 0)  { fiobj_each1(o, 0, get_file, arg); } 
    else if (strcmp(key,"fname") == 0) { s->fname = o; }
    else if (strcmp(key,"mi") == 0)    { s->mi = o; }
    else if (strcmp(key,"lname") == 0) { s->lname = o; }
  }
  return 0;
}

#pragma cle begin PROCESS_SECINPUT
static int process_secinput(struct secinput *s, char *overlayImageFile) {
#pragma cle end PROCESS_SECINPUT
  fio_str_info_s tmp = fiobj_obj2cstr(s->filedata);
  char *filename     = fiobj_obj2cstr(s->filename).data;
  #pragma cle begin ORANGE
  char dir[256], tmpfile[512];
  sprintf(dir, "%s/tmp", fio_cli_get("-www"));
  mkdir(dir, 0777);
  sprintf(tmpfile, "%s/secdesk_img_XXXXXX", dir);
  #pragma cle end ORANGE
  FILE * fp          = fdopen(mkstemp(tmpfile), "wb"); 
  if (!fp) perror("Error opening tempfile");
  if (fwrite(tmp.data, tmp.len, 1, fp) != 1) {
    fprintf(stderr, "Error writing image file %s into %s\n", filename, tmpfile);
  }
  fclose(fp);

  char tmp2[32] = "overlay_XXXXXX";
  close(mkstemp(tmp2));  // returns fd open for writing, so closing
  remove(tmp2);          // remove temp file, png created with same name in www/tmp separately
  sprintf(overlayImageFile, "%s/%s.png", dir, tmp2);  // .png is necessary for python to find the right writer.

  char *f, *m, *l;
  f = strdup(fiobj_obj2cstr(s->fname).data);
  m = strdup(fiobj_obj2cstr(s->mi).data);
  l = strdup(fiobj_obj2cstr(s->lname).data);

  #pragma cle begin EMBEDDING_SHAREABLE
  double embedding[128];
  #pragma cle end EMBEDDING_SHAREABLE
  get_features(tmpfile, embedding);

  #pragma cle begin ORANGE
  int i;
  #pragma cle end ORANGE
  i = recognize(embedding);

  int j;
  j = lookup(f,m,l);
  free(f); free(m); free(l);

  overlay(tmpfile, overlayImageFile, i);

  int n = strlen(fio_cli_get("-www")) + 1;  // e.g. www/
  int len = strlen(overlayImageFile);
  memmove(overlayImageFile, overlayImageFile + n, len - n + 1);

  remove(tmpfile);

  return (i > 0 && j > 0 && i == j) ? 1 : 0;
}

static void on_http_request(http_s *h) {
  #define ERRCLN(x) if(x) perror(x);http_send_error(h,404);goto cleanup;
  http_parse_query(h);
  if ((strcmp(fiobj_obj2cstr(h->path).data,"/check_person") != 0) 
      || (strcmp(fiobj_obj2cstr(h->method).data,"POST") != 0)
      || (http_parse_body(h) == -1)) { ERRCLN("Invalid request") }
  struct secinput s;
  char overlayImageFile[512];
  fiobj_each1(h->params, 0, get_fields, &s);
  int rsp = process_secinput(&s, overlayImageFile);
  char response[1024];
  sprintf(response, RESPONSE_FORMAT, (rsp ? "ALLOWED!" : "DENIED!"), overlayImageFile);
  http_send_body(h, response, strlen(response));

  cleanup: http_finish(h); return;
}

void run_secdesk_service(int argc, char const *argv[]) {
  initialize_cli(argc, argv);
  if (http_listen(fio_cli_get("-p"), fio_cli_get("-b"),
                  .on_request    = on_http_request,
                  .public_folder = fio_cli_get("-www"),
                  .timeout       = fio_cli_get_i("-k"),
                  .max_body_size = fio_cli_get_i("-maxbd") * 1024 * 1024,
                  .log           = fio_cli_get_bool("-v")) == -1) {
    perror("ERROR: facil couldn't initialize HTTP service (already running?)");
    exit(1);
  }

  const char *d = fio_cli_get("-db");
  start_database(d);
  start_imageprocessor();
  start_recognizer();
  fio_start(.threads = fio_cli_get_i("-t"), .workers = fio_cli_get_i("-w"));
  stop_recognizer();
  stop_imageprocessor();
  stop_database();
  fio_cli_end(); 
}

int main(int argc, char const **argv) {
  #pragma cle begin ORANGE
  run_secdesk_service(argc, argv);
  #pragma cle end ORANGE
  return 0;
}
