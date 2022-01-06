; ModuleID = 'secdesk.c'
source_filename = "secdesk.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.http_settings_s = type { void (%struct.http_s*)*, void (%struct.http_s*, i8*, i64)*, void (%struct.http_s*)*, void (%struct.http_settings_s*)*, i8*, i8*, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.http_s = type { %struct.anon, %struct.timespec, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8* }
%struct.anon = type { i8*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.fio_start_args = type { i16, i16 }
%struct.secinput = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-www\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-maxbd\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"ERROR: facil couldn't initialize HTTP service (already running?)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-db\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Address binding:\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"-port -p port number to listen to. default: port 3000\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"-bind -b address to listen to. default: any available.\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Concurrency:\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"-workers -w number of processes to use.\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"-threads -t number of threads per process.\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"HTTP Server:\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"-public -www public folder, for static file service.\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"-keep-alive -k HTTP keep-alive timeout (0..255). default: ~5s\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"-max-body -maxbd HTTP upload limit. default: ~50Mb\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"-log -v request verbosity (logging).\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Database:\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"-database -db Database file.  default ./db/secdesk.db\00", align 1
@constinit = private global [27 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* inttoptr (i64 5 to i8*), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* inttoptr (i64 3 to i8*), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0), i8* inttoptr (i64 1 to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* inttoptr (i64 5 to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* inttoptr (i64 3 to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0), i8* inttoptr (i64 3 to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* inttoptr (i64 5 to i8*), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0), i8* inttoptr (i64 1 to i8*), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i32 0, i32 0), i8* inttoptr (i64 3 to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i32 0, i32 0), i8* inttoptr (i64 3 to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), i8* inttoptr (i64 2 to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* inttoptr (i64 5 to i8*), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* inttoptr (i64 1 to i8*), i8* null], align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"ADDRESS\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"-bind\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"3000\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"-port\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"HTTP_PUBLIC_FOLDER\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"-public\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"DBURI\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"./db/secdesk.db\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"-database\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"/check_person\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"Invalid request\00", align 1
@RESPONSE_FORMAT = internal global i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.58, i32 0, i32 0), align 8
@.str.38 = private unnamed_addr constant [9 x i8] c"ALLOWED!\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"DENIED!\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.41 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0) }, align 8
@.str.42 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.43 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0) }, align 8
@.str.44 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.45 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0) }, align 8
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.46 = private unnamed_addr constant [10 x i8] c"imageFile\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"fname\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"lname\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"%s/tmp\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"%s/secdesk_img_XXXXXX\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"Error opening tempfile\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"Error writing image file %s into %s\0A\00", align 1
@__const.process_secinput.tmp2 = private unnamed_addr constant [32 x i8] c"overlay_XXXXXX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.57 = private unnamed_addr constant [10 x i8] c"%s/%s.png\00", align 1
@.str.58 = private unnamed_addr constant [92 x i8] c"<!DOCTYPE html><html><body>%s<br><img height=\22200px\22 src=\22%s\22 id=\22myImage\22 /></body></html>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8*, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #1
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 2046
  br i1 %18, label %19, label %29

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 2046
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 2016
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false)
  store i32 2041, i32* %5, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26)
  br label %42

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32
  store i8 10, i8* %33, align 1
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35
  store i8 48, i8* %36, align 1
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40)
  br label %42

42:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_secdesk_service(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.http_settings_s, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_start_args, align 2
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  call void @initialize_cli(i32 %8, i8** %9)
  %10 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %12 = bitcast %struct.http_settings_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 128, i1 false)
  %13 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 0
  store void (%struct.http_s*)* @on_http_request, void (%struct.http_s*)** %13, align 8
  %14 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 5
  %15 = call i8* @fio_cli_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 8
  %17 = call i32 @fio_cli_get_i(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %18 = mul nsw i32 %17, 1024
  %19 = mul nsw i32 %18, 1024
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %16, align 8
  %21 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 15
  %22 = call i32 @fio_cli_get_i(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %21, align 8
  %24 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 17
  %25 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %26 = icmp ne i8* %25, null
  %27 = zext i1 %26 to i32
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 2
  %29 = call i64 @http_listen(i8* %10, i8* %11, %struct.http_settings_s* byval(%struct.http_settings_s) align 8 %5)
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  call void @perror(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

32:                                               ; preds = %2
  %33 = call i8* @fio_cli_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  call void @start_database(i8* %34)
  %35 = call i32 @start_imageprocessor()
  %36 = call i32 @start_recognizer()
  %37 = getelementptr inbounds %struct.fio_start_args, %struct.fio_start_args* %7, i32 0, i32 0
  %38 = call i32 @fio_cli_get_i(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %37, align 2
  %40 = getelementptr inbounds %struct.fio_start_args, %struct.fio_start_args* %7, i32 0, i32 1
  %41 = call i32 @fio_cli_get_i(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %40, align 2
  %43 = bitcast %struct.fio_start_args* %7 to i32*
  %44 = load i32, i32* %43, align 2
  call void @fio_start(i32 %44)
  %45 = call i32 @stop_recognizer()
  %46 = call i32 @stop_imageprocessor()
  call void @stop_database()
  call void @fio_cli_end()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_cli(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [27 x i8*], align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds [27 x i8*], [27 x i8*]* %5, i64 0, i64 0
  %13 = bitcast [27 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast ([27 x i8*]* @constinit to i8*), i64 216, i1 false)
  %14 = getelementptr inbounds [27 x i8*], [27 x i8*]* %5, i64 0, i64 0
  call void @fio_cli_start(i32 %10, i8** %11, i32 0, i32 0, i8* null, i8** %14)
  %15 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %16 = icmp ne i8* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #1
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  call void @fio_cli_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %23 = load i8*, i8** %6, align 8
  call void @fio_cli_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* %23)
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %2
  %26 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i8* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #1
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %7, align 8
  br label %36

36:                                               ; preds = %35, %32, %28
  %37 = load i8*, i8** %7, align 8
  call void @fio_cli_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %38 = load i8*, i8** %7, align 8
  call void @fio_cli_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8* %38)
  br label %39

39:                                               ; preds = %36, %25
  %40 = call i8* @fio_cli_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i8* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0)) #1
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  call void @fio_cli_set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* %47)
  %48 = load i8*, i8** %8, align 8
  call void @fio_cli_set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %39
  %51 = call i8* @fio_cli_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %52 = icmp ne i8* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)) #1
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** %9, align 8
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i8*, i8** %9, align 8
  call void @fio_cli_set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %59)
  %60 = load i8*, i8** %9, align 8
  call void @fio_cli_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %60)
  br label %61

61:                                               ; preds = %58, %50
  ret void
}

declare dso_local i64 @http_listen(i8*, i8*, %struct.http_settings_s* byval(%struct.http_settings_s) align 8) #4

declare dso_local i8* @fio_cli_get(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_http_request(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  %5 = alloca %struct.secinput, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %9 = load %struct.http_s*, %struct.http_s** %2, align 8
  call void @http_parse_query(%struct.http_s* %9)
  %10 = load %struct.http_s*, %struct.http_s** %2, align 8
  %11 = getelementptr inbounds %struct.http_s, %struct.http_s* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %3, i64 %12)
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0)) #8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.http_s*, %struct.http_s** %2, align 8
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %4, i64 %20)
  %21 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load %struct.http_s*, %struct.http_s** %2, align 8
  %27 = call i32 @http_parse_body(%struct.http_s* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %17, %1
  br i1 true, label %30, label %31

30:                                               ; preds = %29
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.http_s*, %struct.http_s** %2, align 8
  %33 = call i32 @http_send_error(%struct.http_s* %32, i64 404)
  br label %55

34:                                               ; preds = %25
  %35 = load %struct.http_s*, %struct.http_s** %2, align 8
  %36 = getelementptr inbounds %struct.http_s, %struct.http_s* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = bitcast %struct.secinput* %5 to i8*
  %39 = call i64 @fiobj_each1(i64 %37, i64 0, i32 (i64, i8*)* @get_fields, i8* %38)
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %41 = call i32 @process_secinput(%struct.secinput* %5, i8* %40)
  store i32 %41, i32* %7, align 4
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %43 = load i8*, i8** @RESPONSE_FORMAT, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* %43, i8* %47, i8* %48) #1
  %50 = load %struct.http_s*, %struct.http_s** %2, align 8
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %53 = call i64 @strlen(i8* %52) #8
  %54 = call i32 @http_send_body(%struct.http_s* %50, i8* %51, i64 %53)
  br label %55

55:                                               ; preds = %34, %31
  %56 = load %struct.http_s*, %struct.http_s** %2, align 8
  call void @http_finish(%struct.http_s* %56)
  ret void
}

declare dso_local i32 @fio_cli_get_i(i8*) #4

declare dso_local void @perror(i8*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

declare dso_local void @start_database(i8*) #4

declare dso_local i32 @start_imageprocessor() #4

declare dso_local i32 @start_recognizer() #4

declare dso_local void @fio_start(i32) #4

declare dso_local i32 @stop_recognizer() #4

declare dso_local i32 @stop_imageprocessor() #4

declare dso_local void @stop_database() #4

declare dso_local void @fio_cli_end() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  call void @run_secdesk_service(i32 %6, i8** %7)
  ret i32 0
}

declare dso_local void @fio_cli_start(i32, i8**, i32, i32, i8*, i8**) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

declare dso_local void @fio_cli_set(i8*, i8*) #4

declare dso_local void @http_parse_query(%struct.http_s*) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false)
  br label %37

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 1
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = ashr i64 %13, 1
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14)
  br label %37

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, 6
  %18 = icmp eq i64 %17, 6
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i8
  %22 = zext i8 %21 to i32
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ]

23:                                               ; preds = %19
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.41 to i8*), i64 24, i1 false)
  br label %37

25:                                               ; preds = %19
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.43 to i8*), i64 24, i1 false)
  br label %37

27:                                               ; preds = %19
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.45 to i8*), i64 24, i1 false)
  br label %37

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32)
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8
  %36 = load i64, i64* %3, align 8
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36)
  br label %37

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void
}

declare dso_local i32 @http_parse_body(%struct.http_s*) #4

declare dso_local i32 @http_send_error(%struct.http_s*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_each1(i64, i64, i32 (i64, i8*)*, i8*) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, 6
  %19 = icmp ne i64 %18, 6
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %21)
  %23 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %22, i32 0, i32 5
  %24 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %23, align 8
  %25 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %27)
  %29 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %28, i32 0, i32 5
  %30 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32 (i64, i8*)*, i32 (i64, i8*)** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 %30(i64 %31, i64 %32, i32 (i64, i8*)* %33, i8* %34)
  store i64 %35, i64* %5, align 8
  br label %37

36:                                               ; preds = %20, %16, %12, %4
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fields(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.secinput*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.secinput*
  store %struct.secinput* %9, %struct.secinput** %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = call i64 @fiobj_hash_key_in_loop()
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %13)
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0)) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @fiobj_each1(i64 %20, i64 0, i32 (i64, i8*)* @get_file, i8* %21)
  br label %50

23:                                               ; preds = %12
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0)) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.secinput*, %struct.secinput** %5, align 8
  %30 = getelementptr inbounds %struct.secinput, %struct.secinput* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %49

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0)) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.secinput*, %struct.secinput** %5, align 8
  %38 = getelementptr inbounds %struct.secinput, %struct.secinput* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %48

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0)) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.secinput*, %struct.secinput** %5, align 8
  %46 = getelementptr inbounds %struct.secinput, %struct.secinput* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %19
  br label %51

51:                                               ; preds = %50, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_secinput(%struct.secinput*, i8*) #0 {
  %3 = alloca %struct.secinput*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.fio_str_info_s, align 8
  %16 = alloca %struct.fio_str_info_s, align 8
  %17 = alloca %struct.fio_str_info_s, align 8
  %18 = alloca [128 x double], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.secinput* %0, %struct.secinput** %3, align 8
  store i8* %1, i8** %4, align 8
  %23 = load %struct.secinput*, %struct.secinput** %3, align 8
  %24 = getelementptr inbounds %struct.secinput, %struct.secinput* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %25)
  %26 = load %struct.secinput*, %struct.secinput** %3, align 8
  %27 = getelementptr inbounds %struct.secinput, %struct.secinput* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %28)
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %32 = call i8* @fio_cli_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* %32) #1
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %35 = call i32 @mkdir(i8* %34, i32 511) #1
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i8* %37) #1
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %40 = call i32 @mkstemp(i8* %39)
  %41 = call %struct._IO_FILE* @fdopen(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0)) #1
  store %struct._IO_FILE* %41, %struct._IO_FILE** %10, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %43 = icmp ne %struct._IO_FILE* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %2
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0))
  br label %45

45:                                               ; preds = %44, %2
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %51 = call i64 @fwrite(i8* %47, i64 %49, i64 1, %struct._IO_FILE* %50)
  %52 = icmp ne i64 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %45
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %60 = call i32 @fclose(%struct._IO_FILE* %59)
  %61 = bitcast [32 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.process_secinput.tmp2, i32 0, i32 0), i64 32, i1 false)
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %63 = call i32 @mkstemp(i8* %62)
  %64 = call i32 @close(i32 %63)
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %66 = call i32 @remove(i8* %65) #1
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* %68, i8* %69) #1
  %71 = load %struct.secinput*, %struct.secinput** %3, align 8
  %72 = getelementptr inbounds %struct.secinput, %struct.secinput* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %15, i64 %73)
  %74 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %15, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call noalias i8* @strdup(i8* %75) #1
  store i8* %76, i8** %12, align 8
  %77 = load %struct.secinput*, %struct.secinput** %3, align 8
  %78 = getelementptr inbounds %struct.secinput, %struct.secinput* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %16, i64 %79)
  %80 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %16, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call noalias i8* @strdup(i8* %81) #1
  store i8* %82, i8** %13, align 8
  %83 = load %struct.secinput*, %struct.secinput** %3, align 8
  %84 = getelementptr inbounds %struct.secinput, %struct.secinput* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %17, i64 %85)
  %86 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %17, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call noalias i8* @strdup(i8* %87) #1
  store i8* %88, i8** %14, align 8
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %90 = getelementptr inbounds [128 x double], [128 x double]* %18, i64 0, i64 0
  %91 = call i32 @get_features(i8* %89, double* %90)
  %92 = getelementptr inbounds [128 x double], [128 x double]* %18, i64 0, i64 0
  %93 = call i32 @recognize(double* %92)
  store i32 %93, i32* %19, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @lookup(i8* %94, i8* %95, i8* %96)
  store i32 %97, i32* %20, align 4
  %98 = load i8*, i8** %12, align 8
  call void @free(i8* %98) #1
  %99 = load i8*, i8** %13, align 8
  call void @free(i8* %99) #1
  %100 = load i8*, i8** %14, align 8
  call void @free(i8* %100) #1
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %102 = load i8*, i8** %4, align 8
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @overlay(i8* %101, i8* %102, i32 %103)
  %105 = call i8* @fio_cli_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %106 = call i64 @strlen(i8* %105) #8
  %107 = add i64 %106, 1
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %21, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = call i64 @strlen(i8* %109) #8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %22, align 4
  %112 = load i8*, i8** %4, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %21, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %21, align 4
  %119 = sub nsw i32 %117, %118
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %112, i8* align 1 %116, i64 %121, i1 false)
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %123 = call i32 @remove(i8* %122) #1
  %124 = load i32, i32* %19, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %58
  %127 = load i32, i32* %20, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp eq i32 %130, %131
  br label %133

133:                                              ; preds = %129, %126, %58
  %134 = phi i1 [ false, %126 ], [ false, %58 ], [ %132, %129 ]
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 0
  ret i32 %136
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @http_send_body(%struct.http_s*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #6

declare dso_local void @http_finish(%struct.http_s*) #4

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64) #0 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call zeroext i8 @fiobj_type(i64 %4)
  %6 = zext i8 %5 to i32
  switch i32 %6, label %14 [
    i32 1, label %7
    i32 39, label %8
    i32 40, label %9
    i32 41, label %10
    i32 42, label %11
    i32 43, label %12
    i32 6, label %13
    i32 22, label %13
    i32 38, label %13
    i32 44, label %13
  ]

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8
  ret %struct.fiobj_object_vtable_s* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1
  br label %35

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 1
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1
  br label %35

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 6
  %15 = icmp eq i64 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %2, align 1
  br label %35

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %20, 6
  %22 = icmp eq i64 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1
  br label %35

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = and i64 %25, 6
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1
  br label %35

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %2, align 1
  br label %35

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1
  ret i8 %36
}

declare dso_local i64 @fiobj_hash_key_in_loop() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_file(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.secinput*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.secinput*
  store %struct.secinput* %9, %struct.secinput** %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = call i64 @fiobj_hash_key_in_loop()
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %13)
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0)) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.secinput*, %struct.secinput** %5, align 8
  %22 = getelementptr inbounds %struct.secinput, %struct.secinput* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  br label %32

23:                                               ; preds = %12
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.secinput*, %struct.secinput** %5, align 8
  %30 = getelementptr inbounds %struct.secinput, %struct.secinput* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %2
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #2

declare dso_local i32 @mkstemp(i8*) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

declare dso_local i32 @close(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8*) #2

declare dso_local i32 @get_features(i8*, double*) #4

declare dso_local i32 @recognize(double*) #4

declare dso_local i32 @lookup(i8*, i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

declare dso_local i32 @overlay(i8*, i8*, i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
