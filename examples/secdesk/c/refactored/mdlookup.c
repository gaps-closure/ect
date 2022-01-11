#include "mdlookup.h"

static sqlite3 *get_database(const char *dbfile) {
  static sqlite3 *db = NULL;
  if (dbfile) {
    if (db) sqlite3_close(db);
    int rc = sqlite3_open(dbfile, &db);
    if (rc != SQLITE_OK) {
      fprintf(stderr, "Cannot open database: %s\n", sqlite3_errmsg(db));
      sqlite3_close(db);
      db = NULL;
    }
  }
  return db;
}

void stop_database() {
  sqlite3 *db = get_database(NULL);
  if (db) sqlite3_close(db);
}

void start_database(const char *dbfile) {
  if (!get_database(dbfile)) perror("ERROR opening database");
}

int lookup(const char *fname, const char *mi, const char *lname) {
  int rc; 
  sqlite3_stmt *res;
  sqlite3 *db = get_database(NULL);
  char *err_msg = 0;
  char *sql = "SELECT anonid FROM mdata WHERE fname = @f AND mi = @m AND lname = @l";

  rc = sqlite3_prepare_v2(db, sql, -1, &res, 0);
  if (rc == SQLITE_OK ) {
    int idx;
    idx = sqlite3_bind_parameter_index(res, "@f");
    sqlite3_bind_text(res,idx,fname,strlen(fname),0);
    idx = sqlite3_bind_parameter_index(res, "@m");
    sqlite3_bind_text(res,idx,mi,strlen(mi),0);
    idx = sqlite3_bind_parameter_index(res, "@l");
    sqlite3_bind_text(res,idx,lname,strlen(lname),0);
  } else {
    fprintf(stderr, "SQL error: %s\n", err_msg);
    sqlite3_free(err_msg);
    sqlite3_close(db);
    return -1;
  }

  int ret  = -1;
  int step = sqlite3_step(res);
  if (step == SQLITE_ROW) ret = sqlite3_column_int(res,0);
  sqlite3_finalize(res);
  return ret;
}

