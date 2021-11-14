; ModuleID = 'secdesk.c'
source_filename = "secdesk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !0
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !29
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !36
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
@RESPONSE_FORMAT = internal global i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.58, i32 0, i32 0), align 8, !dbg !38
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
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !55, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !60, metadata !DIExpression()), !dbg !76
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !77
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !77
  call void @llvm.va_start(i8* %7), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %5, metadata !78, metadata !DIExpression()), !dbg !79
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !80
  %9 = load i8*, i8** %2, align 8, !dbg !81
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !82
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !83
  store i32 %11, i32* %5, align 4, !dbg !79
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !84
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !84
  call void @llvm.va_end(i8* %13), !dbg !84
  %14 = load i32, i32* %5, align 4, !dbg !85
  %15 = icmp sle i32 %14, 0, !dbg !87
  br i1 %15, label %19, label %16, !dbg !88

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !89
  %18 = icmp sge i32 %17, 2046, !dbg !90
  br i1 %18, label %19, label %29, !dbg !91

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !92
  %21 = icmp sge i32 %20, 2046, !dbg !95
  br i1 %21, label %22, label %25, !dbg !96

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !97
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !99
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !100
  store i32 2041, i32* %5, align 4, !dbg !101
  br label %28, !dbg !102

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !103
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !105
  br label %42, !dbg !106

28:                                               ; preds = %22
  br label %29, !dbg !107

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !108
  %31 = add nsw i32 %30, 1, !dbg !108
  store i32 %31, i32* %5, align 4, !dbg !108
  %32 = sext i32 %30 to i64, !dbg !109
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !109
  store i8 10, i8* %33, align 1, !dbg !110
  %34 = load i32, i32* %5, align 4, !dbg !111
  %35 = sext i32 %34 to i64, !dbg !112
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !112
  store i8 48, i8* %36, align 1, !dbg !113
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !114
  %38 = load i32, i32* %5, align 4, !dbg !115
  %39 = sext i32 %38 to i64, !dbg !115
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !116
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !117
  br label %42, !dbg !118

42:                                               ; preds = %29, %25
  ret void, !dbg !118
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_secdesk_service(i32 %0, i8** %1) #0 !dbg !119 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.http_settings_s, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_start_args, align 2
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !123, metadata !DIExpression()), !dbg !124
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !125, metadata !DIExpression()), !dbg !126
  %8 = load i32, i32* %3, align 4, !dbg !127
  %9 = load i8**, i8*** %4, align 8, !dbg !128
  call void @initialize_cli(i32 %8, i8** %9), !dbg !129
  %10 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !130
  %11 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !130
  %12 = bitcast %struct.http_settings_s* %5 to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 128, i1 false), !dbg !130
  %13 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 0, !dbg !130
  store void (%struct.http_s*)* @on_http_request, void (%struct.http_s*)** %13, align 8, !dbg !130
  %14 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 5, !dbg !130
  %15 = call i8* @fio_cli_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !130
  store i8* %15, i8** %14, align 8, !dbg !130
  %16 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 8, !dbg !130
  %17 = call i32 @fio_cli_get_i(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !130
  %18 = mul nsw i32 %17, 1024, !dbg !130
  %19 = mul nsw i32 %18, 1024, !dbg !130
  %20 = sext i32 %19 to i64, !dbg !130
  store i64 %20, i64* %16, align 8, !dbg !130
  %21 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 15, !dbg !130
  %22 = call i32 @fio_cli_get_i(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)), !dbg !130
  %23 = trunc i32 %22 to i8, !dbg !130
  store i8 %23, i8* %21, align 8, !dbg !130
  %24 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 17, !dbg !130
  %25 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)), !dbg !130
  %26 = icmp ne i8* %25, null, !dbg !130
  %27 = zext i1 %26 to i32, !dbg !130
  %28 = trunc i32 %27 to i8, !dbg !130
  store i8 %28, i8* %24, align 2, !dbg !130
  %29 = call i64 @http_listen(i8* %10, i8* %11, %struct.http_settings_s* byval(%struct.http_settings_s) align 8 %5), !dbg !130
  %30 = icmp eq i64 %29, -1, !dbg !132
  br i1 %30, label %31, label %32, !dbg !133

31:                                               ; preds = %2
  call void @perror(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0)), !dbg !134
  call void @exit(i32 1) #8, !dbg !136
  unreachable, !dbg !136

32:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !137, metadata !DIExpression()), !dbg !138
  %33 = call i8* @fio_cli_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)), !dbg !139
  store i8* %33, i8** %6, align 8, !dbg !138
  %34 = load i8*, i8** %6, align 8, !dbg !140
  call void @start_database(i8* %34), !dbg !141
  %35 = call i32 @start_imageprocessor(), !dbg !142
  %36 = call i32 @start_recognizer(), !dbg !143
  %37 = getelementptr inbounds %struct.fio_start_args, %struct.fio_start_args* %7, i32 0, i32 0, !dbg !144
  %38 = call i32 @fio_cli_get_i(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)), !dbg !144
  %39 = trunc i32 %38 to i16, !dbg !144
  store i16 %39, i16* %37, align 2, !dbg !144
  %40 = getelementptr inbounds %struct.fio_start_args, %struct.fio_start_args* %7, i32 0, i32 1, !dbg !144
  %41 = call i32 @fio_cli_get_i(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)), !dbg !144
  %42 = trunc i32 %41 to i16, !dbg !144
  store i16 %42, i16* %40, align 2, !dbg !144
  %43 = bitcast %struct.fio_start_args* %7 to i32*, !dbg !144
  %44 = load i32, i32* %43, align 2, !dbg !144
  call void @fio_start(i32 %44), !dbg !144
  %45 = call i32 @stop_recognizer(), !dbg !145
  %46 = call i32 @stop_imageprocessor(), !dbg !146
  call void @stop_database(), !dbg !147
  call void @fio_cli_end(), !dbg !148
  ret void, !dbg !149
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_cli(i32 %0, i8** %1) #0 !dbg !150 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [27 x i8*], align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !151, metadata !DIExpression()), !dbg !152
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !153, metadata !DIExpression()), !dbg !154
  %10 = load i32, i32* %3, align 4, !dbg !155
  %11 = load i8**, i8*** %4, align 8, !dbg !155
  %12 = getelementptr inbounds [27 x i8*], [27 x i8*]* %5, i64 0, i64 0, !dbg !155
  %13 = bitcast [27 x i8*]* %5 to i8*, !dbg !155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast ([27 x i8*]* @constinit to i8*), i64 216, i1 false), !dbg !155
  %14 = getelementptr inbounds [27 x i8*], [27 x i8*]* %5, i64 0, i64 0, !dbg !155
  call void @fio_cli_start(i32 %10, i8** %11, i32 0, i32 0, i8* null, i8** %14), !dbg !155
  %15 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !156
  %16 = icmp ne i8* %15, null, !dbg !156
  br i1 %16, label %25, label %17, !dbg !158

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !159, metadata !DIExpression()), !dbg !161
  %18 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #2, !dbg !162
  store i8* %18, i8** %6, align 8, !dbg !161
  %19 = load i8*, i8** %6, align 8, !dbg !163
  %20 = icmp ne i8* %19, null, !dbg !163
  br i1 %20, label %21, label %24, !dbg !165

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8, !dbg !166
  call void @fio_cli_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %22), !dbg !168
  %23 = load i8*, i8** %6, align 8, !dbg !169
  call void @fio_cli_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* %23), !dbg !170
  br label %24, !dbg !171

24:                                               ; preds = %21, %17
  br label %25, !dbg !172

25:                                               ; preds = %24, %2
  %26 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !173
  %27 = icmp ne i8* %26, null, !dbg !173
  br i1 %27, label %39, label %28, !dbg !175

28:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata i8** %7, metadata !176, metadata !DIExpression()), !dbg !178
  %29 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !179
  store i8* %29, i8** %7, align 8, !dbg !178
  %30 = load i8*, i8** %7, align 8, !dbg !180
  %31 = icmp ne i8* %30, null, !dbg !180
  br i1 %31, label %36, label %32, !dbg !182

32:                                               ; preds = %28
  %33 = call i8* @fio_cli_get(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !183
  %34 = icmp ne i8* %33, null, !dbg !183
  br i1 %34, label %36, label %35, !dbg !184

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %7, align 8, !dbg !185
  br label %36, !dbg !186

36:                                               ; preds = %35, %32, %28
  %37 = load i8*, i8** %7, align 8, !dbg !187
  call void @fio_cli_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %37), !dbg !188
  %38 = load i8*, i8** %7, align 8, !dbg !189
  call void @fio_cli_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8* %38), !dbg !190
  br label %39, !dbg !191

39:                                               ; preds = %36, %25
  %40 = call i8* @fio_cli_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !192
  %41 = icmp ne i8* %40, null, !dbg !192
  br i1 %41, label %50, label %42, !dbg !194

42:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i8** %8, metadata !195, metadata !DIExpression()), !dbg !197
  %43 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0)) #2, !dbg !198
  store i8* %43, i8** %8, align 8, !dbg !197
  %44 = load i8*, i8** %8, align 8, !dbg !199
  %45 = icmp ne i8* %44, null, !dbg !199
  br i1 %45, label %46, label %49, !dbg !201

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8, !dbg !202
  call void @fio_cli_set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* %47), !dbg !204
  %48 = load i8*, i8** %8, align 8, !dbg !205
  call void @fio_cli_set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %48), !dbg !206
  br label %49, !dbg !207

49:                                               ; preds = %46, %42
  br label %50, !dbg !208

50:                                               ; preds = %49, %39
  %51 = call i8* @fio_cli_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)), !dbg !209
  %52 = icmp ne i8* %51, null, !dbg !209
  br i1 %52, label %61, label %53, !dbg !211

53:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %9, metadata !212, metadata !DIExpression()), !dbg !214
  %54 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)) #2, !dbg !215
  store i8* %54, i8** %9, align 8, !dbg !214
  %55 = load i8*, i8** %9, align 8, !dbg !216
  %56 = icmp ne i8* %55, null, !dbg !216
  br i1 %56, label %58, label %57, !dbg !218

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** %9, align 8, !dbg !219
  br label %58, !dbg !220

58:                                               ; preds = %57, %53
  %59 = load i8*, i8** %9, align 8, !dbg !221
  call void @fio_cli_set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %59), !dbg !222
  %60 = load i8*, i8** %9, align 8, !dbg !223
  call void @fio_cli_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %60), !dbg !224
  br label %61, !dbg !225

61:                                               ; preds = %58, %50
  ret void, !dbg !226
}

declare dso_local i64 @http_listen(i8*, i8*, %struct.http_settings_s* byval(%struct.http_settings_s) align 8) #5

declare dso_local i8* @fio_cli_get(i8*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_http_request(%struct.http_s* %0) #0 !dbg !227 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  %5 = alloca %struct.secinput, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %2, metadata !261, metadata !DIExpression()), !dbg !262
  %9 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !263
  call void @http_parse_query(%struct.http_s* %9), !dbg !264
  %10 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !265
  %11 = getelementptr inbounds %struct.http_s, %struct.http_s* %10, i32 0, i32 6, !dbg !267
  %12 = load i64, i64* %11, align 8, !dbg !267
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %3, i64 %12), !dbg !268
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2, !dbg !269
  %14 = load i8*, i8** %13, align 8, !dbg !269
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !270
  %16 = icmp ne i32 %15, 0, !dbg !271
  br i1 %16, label %29, label %17, !dbg !272

17:                                               ; preds = %1
  %18 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !273
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 2, !dbg !274
  %20 = load i64, i64* %19, align 8, !dbg !274
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %4, i64 %20), !dbg !275
  %21 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !276
  %22 = load i8*, i8** %21, align 8, !dbg !276
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !277
  %24 = icmp ne i32 %23, 0, !dbg !278
  br i1 %24, label %29, label %25, !dbg !279

25:                                               ; preds = %17
  %26 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !280
  %27 = call i32 @http_parse_body(%struct.http_s* %26), !dbg !281
  %28 = icmp eq i32 %27, -1, !dbg !282
  br i1 %28, label %29, label %34, !dbg !283

29:                                               ; preds = %25, %17, %1
  br i1 true, label %30, label %31, !dbg !284

30:                                               ; preds = %29
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0)), !dbg !286
  br label %31, !dbg !286

31:                                               ; preds = %30, %29
  %32 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !284
  %33 = call i32 @http_send_error(%struct.http_s* %32, i64 404), !dbg !284
  br label %55, !dbg !284

34:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.secinput* %5, metadata !288, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata [512 x i8]* %6, metadata !298, metadata !DIExpression()), !dbg !302
  %35 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !303
  %36 = getelementptr inbounds %struct.http_s, %struct.http_s* %35, i32 0, i32 10, !dbg !304
  %37 = load i64, i64* %36, align 8, !dbg !304
  %38 = bitcast %struct.secinput* %5 to i8*, !dbg !305
  %39 = call i64 @fiobj_each1(i64 %37, i64 0, i32 (i64, i8*)* @get_fields, i8* %38), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %7, metadata !307, metadata !DIExpression()), !dbg !308
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0, !dbg !309
  %41 = call i32 @process_secinput(%struct.secinput* %5, i8* %40), !dbg !310
  store i32 %41, i32* %7, align 4, !dbg !308
  call void @llvm.dbg.declare(metadata [1024 x i8]* %8, metadata !311, metadata !DIExpression()), !dbg !315
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !316
  %43 = load i8*, i8** @RESPONSE_FORMAT, align 8, !dbg !317
  %44 = load i32, i32* %7, align 4, !dbg !318
  %45 = icmp ne i32 %44, 0, !dbg !318
  %46 = zext i1 %45 to i64, !dbg !318
  %47 = select i1 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), !dbg !318
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0, !dbg !319
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* %43, i8* %47, i8* %48) #2, !dbg !320
  %50 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !321
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !322
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !323
  %53 = call i64 @strlen(i8* %52) #9, !dbg !324
  %54 = call i32 @http_send_body(%struct.http_s* %50, i8* %51, i64 %53), !dbg !325
  br label %55, !dbg !325

55:                                               ; preds = %34, %31
  call void @llvm.dbg.label(metadata !326), !dbg !327
  %56 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !328
  call void @http_finish(%struct.http_s* %56), !dbg !329
  ret void, !dbg !330
}

declare dso_local i32 @fio_cli_get_i(i8*) #5

declare dso_local void @perror(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

declare dso_local void @start_database(i8*) #5

declare dso_local i32 @start_imageprocessor() #5

declare dso_local i32 @start_recognizer() #5

declare dso_local void @fio_start(i32) #5

declare dso_local i32 @stop_recognizer() #5

declare dso_local i32 @stop_imageprocessor() #5

declare dso_local void @stop_database() #5

declare dso_local void @fio_cli_end() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !331 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !334, metadata !DIExpression()), !dbg !335
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !336, metadata !DIExpression()), !dbg !337
  %6 = load i32, i32* %4, align 4, !dbg !338
  %7 = load i8**, i8*** %5, align 8, !dbg !339
  call void @run_secdesk_service(i32 %6, i8** %7), !dbg !340
  ret i32 0, !dbg !341
}

declare dso_local void @fio_cli_start(i32, i8**, i32, i32, i8*, i8**) #5

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

declare dso_local void @fio_cli_set(i8*, i8*) #5

declare dso_local void @http_parse_query(%struct.http_s*) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !342 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !354, metadata !DIExpression()), !dbg !355
  %4 = load i64, i64* %3, align 8, !dbg !356
  %5 = icmp ne i64 %4, 0, !dbg !356
  br i1 %5, label %8, label %6, !dbg !358

6:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !359, metadata !DIExpression()), !dbg !361
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false), !dbg !361
  br label %37, !dbg !362

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !363
  %10 = and i64 %9, 1, !dbg !365
  %11 = icmp ne i64 %10, 0, !dbg !365
  br i1 %11, label %12, label %15, !dbg !366

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8, !dbg !367
  %14 = ashr i64 %13, 1, !dbg !368
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14), !dbg !369
  br label %37, !dbg !370

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8, !dbg !371
  %17 = and i64 %16, 6, !dbg !373
  %18 = icmp eq i64 %17, 6, !dbg !374
  br i1 %18, label %19, label %31, !dbg !375

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8, !dbg !376
  %21 = trunc i64 %20 to i8, !dbg !378
  %22 = zext i8 %21 to i32, !dbg !378
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ], !dbg !379

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !380, metadata !DIExpression()), !dbg !383
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !383
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.41 to i8*), i64 24, i1 false), !dbg !383
  br label %37, !dbg !384

25:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !385, metadata !DIExpression()), !dbg !387
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !387
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.43 to i8*), i64 24, i1 false), !dbg !387
  br label %37, !dbg !388

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !389, metadata !DIExpression()), !dbg !391
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.45 to i8*), i64 24, i1 false), !dbg !391
  br label %37, !dbg !392

29:                                               ; preds = %19
  br label %30, !dbg !393

30:                                               ; preds = %29
  br label %31, !dbg !394

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8, !dbg !395
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32), !dbg !395
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6, !dbg !396
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8, !dbg !396
  %36 = load i64, i64* %3, align 8, !dbg !397
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36), !dbg !395
  br label %37, !dbg !398

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void, !dbg !399
}

declare dso_local i32 @http_parse_body(%struct.http_s*) #5

declare dso_local i32 @http_send_error(%struct.http_s*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_each1(i64 %0, i64 %1, i32 (i64, i8*)* %2, i8* %3) #0 !dbg !400 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !406, metadata !DIExpression()), !dbg !407
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !408, metadata !DIExpression()), !dbg !409
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (i64, i8*)** %8, metadata !410, metadata !DIExpression()), !dbg !411
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !412, metadata !DIExpression()), !dbg !413
  %10 = load i64, i64* %6, align 8, !dbg !414
  %11 = icmp ne i64 %10, 0, !dbg !414
  br i1 %11, label %12, label %36, !dbg !414

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8, !dbg !414
  %14 = and i64 %13, 1, !dbg !414
  %15 = icmp eq i64 %14, 0, !dbg !414
  br i1 %15, label %16, label %36, !dbg !414

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8, !dbg !414
  %18 = and i64 %17, 6, !dbg !414
  %19 = icmp ne i64 %18, 6, !dbg !414
  br i1 %19, label %20, label %36, !dbg !416

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8, !dbg !417
  %22 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %21), !dbg !417
  %23 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %22, i32 0, i32 5, !dbg !418
  %24 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %23, align 8, !dbg !418
  %25 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %24, null, !dbg !417
  br i1 %25, label %26, label %36, !dbg !419

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8, !dbg !420
  %28 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %27), !dbg !420
  %29 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %28, i32 0, i32 5, !dbg !421
  %30 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %29, align 8, !dbg !421
  %31 = load i64, i64* %6, align 8, !dbg !422
  %32 = load i64, i64* %7, align 8, !dbg !423
  %33 = load i32 (i64, i8*)*, i32 (i64, i8*)** %8, align 8, !dbg !424
  %34 = load i8*, i8** %9, align 8, !dbg !425
  %35 = call i64 %30(i64 %31, i64 %32, i32 (i64, i8*)* %33, i8* %34), !dbg !420
  store i64 %35, i64* %5, align 8, !dbg !426
  br label %37, !dbg !426

36:                                               ; preds = %20, %16, %12, %4
  store i64 0, i64* %5, align 8, !dbg !427
  br label %37, !dbg !427

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %5, align 8, !dbg !428
  ret i64 %38, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fields(i64 %0, i8* %1) #0 !dbg !429 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.secinput*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !430, metadata !DIExpression()), !dbg !431
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata %struct.secinput** %5, metadata !434, metadata !DIExpression()), !dbg !436
  %8 = load i8*, i8** %4, align 8, !dbg !437
  %9 = bitcast i8* %8 to %struct.secinput*, !dbg !437
  store %struct.secinput* %9, %struct.secinput** %5, align 8, !dbg !436
  %10 = load i64, i64* %3, align 8, !dbg !438
  %11 = icmp ne i64 %10, 0, !dbg !438
  br i1 %11, label %12, label %51, !dbg !440

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !441, metadata !DIExpression()), !dbg !443
  %13 = call i64 @fiobj_hash_key_in_loop(), !dbg !444
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %13), !dbg !445
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !446
  %15 = load i8*, i8** %14, align 8, !dbg !446
  store i8* %15, i8** %6, align 8, !dbg !443
  %16 = load i8*, i8** %6, align 8, !dbg !447
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0)) #9, !dbg !449
  %18 = icmp eq i32 %17, 0, !dbg !450
  br i1 %18, label %19, label %23, !dbg !451

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !452
  %21 = load i8*, i8** %4, align 8, !dbg !454
  %22 = call i64 @fiobj_each1(i64 %20, i64 0, i32 (i64, i8*)* @get_file, i8* %21), !dbg !455
  br label %50, !dbg !456

23:                                               ; preds = %12
  %24 = load i8*, i8** %6, align 8, !dbg !457
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0)) #9, !dbg !459
  %26 = icmp eq i32 %25, 0, !dbg !460
  br i1 %26, label %27, label %31, !dbg !461

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8, !dbg !462
  %29 = load %struct.secinput*, %struct.secinput** %5, align 8, !dbg !464
  %30 = getelementptr inbounds %struct.secinput, %struct.secinput* %29, i32 0, i32 0, !dbg !465
  store i64 %28, i64* %30, align 8, !dbg !466
  br label %49, !dbg !467

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8, !dbg !468
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0)) #9, !dbg !470
  %34 = icmp eq i32 %33, 0, !dbg !471
  br i1 %34, label %35, label %39, !dbg !472

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8, !dbg !473
  %37 = load %struct.secinput*, %struct.secinput** %5, align 8, !dbg !475
  %38 = getelementptr inbounds %struct.secinput, %struct.secinput* %37, i32 0, i32 1, !dbg !476
  store i64 %36, i64* %38, align 8, !dbg !477
  br label %48, !dbg !478

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8, !dbg !479
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0)) #9, !dbg !481
  %42 = icmp eq i32 %41, 0, !dbg !482
  br i1 %42, label %43, label %47, !dbg !483

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8, !dbg !484
  %45 = load %struct.secinput*, %struct.secinput** %5, align 8, !dbg !486
  %46 = getelementptr inbounds %struct.secinput, %struct.secinput* %45, i32 0, i32 2, !dbg !487
  store i64 %44, i64* %46, align 8, !dbg !488
  br label %47, !dbg !489

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %19
  br label %51, !dbg !490

51:                                               ; preds = %50, %2
  ret i32 0, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_secinput(%struct.secinput* %0, i8* %1) #0 !dbg !492 {
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
  call void @llvm.dbg.declare(metadata %struct.secinput** %3, metadata !495, metadata !DIExpression()), !dbg !496
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %5, metadata !499, metadata !DIExpression()), !dbg !500
  %23 = load %struct.secinput*, %struct.secinput** %3, align 8, !dbg !501
  %24 = getelementptr inbounds %struct.secinput, %struct.secinput* %23, i32 0, i32 4, !dbg !502
  %25 = load i64, i64* %24, align 8, !dbg !502
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %25), !dbg !503
  call void @llvm.dbg.declare(metadata i8** %6, metadata !504, metadata !DIExpression()), !dbg !505
  %26 = load %struct.secinput*, %struct.secinput** %3, align 8, !dbg !506
  %27 = getelementptr inbounds %struct.secinput, %struct.secinput* %26, i32 0, i32 3, !dbg !507
  %28 = load i64, i64* %27, align 8, !dbg !507
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %28), !dbg !508
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !509
  %30 = load i8*, i8** %29, align 8, !dbg !509
  store i8* %30, i8** %6, align 8, !dbg !505
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !510, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata [512 x i8]* %9, metadata !515, metadata !DIExpression()), !dbg !516
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !517
  %32 = call i8* @fio_cli_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !518
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* %32) #2, !dbg !519
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !520
  %35 = call i32 @mkdir(i8* %34, i32 511) #2, !dbg !521
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0, !dbg !522
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !523
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i8* %37) #2, !dbg !524
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %10, metadata !525, metadata !DIExpression()), !dbg !578
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0, !dbg !579
  %40 = call i32 @mkstemp(i8* %39), !dbg !580
  %41 = call %struct._IO_FILE* @fdopen(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0)) #2, !dbg !581
  store %struct._IO_FILE* %41, %struct._IO_FILE** %10, align 8, !dbg !578
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !582
  %43 = icmp ne %struct._IO_FILE* %42, null, !dbg !582
  br i1 %43, label %45, label %44, !dbg !584

44:                                               ; preds = %2
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0)), !dbg !585
  br label %45, !dbg !585

45:                                               ; preds = %44, %2
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2, !dbg !586
  %47 = load i8*, i8** %46, align 8, !dbg !586
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1, !dbg !588
  %49 = load i64, i64* %48, align 8, !dbg !588
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !589
  %51 = call i64 @fwrite(i8* %47, i64 %49, i64 1, %struct._IO_FILE* %50), !dbg !590
  %52 = icmp ne i64 %51, 1, !dbg !591
  br i1 %52, label %53, label %58, !dbg !592

53:                                               ; preds = %45
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !593
  %55 = load i8*, i8** %6, align 8, !dbg !595
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0, !dbg !596
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i64 0, i64 0), i8* %55, i8* %56), !dbg !597
  br label %58, !dbg !598

58:                                               ; preds = %53, %45
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !599
  %60 = call i32 @fclose(%struct._IO_FILE* %59), !dbg !600
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !601, metadata !DIExpression()), !dbg !605
  %61 = bitcast [32 x i8]* %11 to i8*, !dbg !605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.process_secinput.tmp2, i32 0, i32 0), i64 32, i1 false), !dbg !605
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0, !dbg !606
  %63 = call i32 @mkstemp(i8* %62), !dbg !607
  %64 = call i32 @close(i32 %63), !dbg !608
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0, !dbg !609
  %66 = call i32 @remove(i8* %65) #2, !dbg !610
  %67 = load i8*, i8** %4, align 8, !dbg !611
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !612
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0, !dbg !613
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* %68, i8* %69) #2, !dbg !614
  call void @llvm.dbg.declare(metadata i8** %12, metadata !615, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.declare(metadata i8** %13, metadata !617, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.declare(metadata i8** %14, metadata !619, metadata !DIExpression()), !dbg !620
  %71 = load %struct.secinput*, %struct.secinput** %3, align 8, !dbg !621
  %72 = getelementptr inbounds %struct.secinput, %struct.secinput* %71, i32 0, i32 0, !dbg !622
  %73 = load i64, i64* %72, align 8, !dbg !622
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %15, i64 %73), !dbg !623
  %74 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %15, i32 0, i32 2, !dbg !624
  %75 = load i8*, i8** %74, align 8, !dbg !624
  %76 = call noalias i8* @strdup(i8* %75) #2, !dbg !625
  store i8* %76, i8** %12, align 8, !dbg !626
  %77 = load %struct.secinput*, %struct.secinput** %3, align 8, !dbg !627
  %78 = getelementptr inbounds %struct.secinput, %struct.secinput* %77, i32 0, i32 1, !dbg !628
  %79 = load i64, i64* %78, align 8, !dbg !628
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %16, i64 %79), !dbg !629
  %80 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %16, i32 0, i32 2, !dbg !630
  %81 = load i8*, i8** %80, align 8, !dbg !630
  %82 = call noalias i8* @strdup(i8* %81) #2, !dbg !631
  store i8* %82, i8** %13, align 8, !dbg !632
  %83 = load %struct.secinput*, %struct.secinput** %3, align 8, !dbg !633
  %84 = getelementptr inbounds %struct.secinput, %struct.secinput* %83, i32 0, i32 2, !dbg !634
  %85 = load i64, i64* %84, align 8, !dbg !634
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %17, i64 %85), !dbg !635
  %86 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %17, i32 0, i32 2, !dbg !636
  %87 = load i8*, i8** %86, align 8, !dbg !636
  %88 = call noalias i8* @strdup(i8* %87) #2, !dbg !637
  store i8* %88, i8** %14, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata [128 x double]* %18, metadata !639, metadata !DIExpression()), !dbg !644
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0, !dbg !645
  %90 = getelementptr inbounds [128 x double], [128 x double]* %18, i64 0, i64 0, !dbg !646
  %91 = call i32 @get_features(i8* %89, double* %90), !dbg !647
  call void @llvm.dbg.declare(metadata i32* %19, metadata !648, metadata !DIExpression()), !dbg !649
  %92 = getelementptr inbounds [128 x double], [128 x double]* %18, i64 0, i64 0, !dbg !650
  %93 = call i32 @recognize(double* %92), !dbg !651
  store i32 %93, i32* %19, align 4, !dbg !652
  call void @llvm.dbg.declare(metadata i32* %20, metadata !653, metadata !DIExpression()), !dbg !654
  %94 = load i8*, i8** %12, align 8, !dbg !655
  %95 = load i8*, i8** %13, align 8, !dbg !656
  %96 = load i8*, i8** %14, align 8, !dbg !657
  %97 = call i32 @lookup(i8* %94, i8* %95, i8* %96), !dbg !658
  store i32 %97, i32* %20, align 4, !dbg !659
  %98 = load i8*, i8** %12, align 8, !dbg !660
  call void @free(i8* %98) #2, !dbg !661
  %99 = load i8*, i8** %13, align 8, !dbg !662
  call void @free(i8* %99) #2, !dbg !663
  %100 = load i8*, i8** %14, align 8, !dbg !664
  call void @free(i8* %100) #2, !dbg !665
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0, !dbg !666
  %102 = load i8*, i8** %4, align 8, !dbg !667
  %103 = load i32, i32* %19, align 4, !dbg !668
  %104 = call i32 @overlay(i8* %101, i8* %102, i32 %103), !dbg !669
  call void @llvm.dbg.declare(metadata i32* %21, metadata !670, metadata !DIExpression()), !dbg !671
  %105 = call i8* @fio_cli_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !672
  %106 = call i64 @strlen(i8* %105) #9, !dbg !673
  %107 = add i64 %106, 1, !dbg !674
  %108 = trunc i64 %107 to i32, !dbg !673
  store i32 %108, i32* %21, align 4, !dbg !671
  call void @llvm.dbg.declare(metadata i32* %22, metadata !675, metadata !DIExpression()), !dbg !676
  %109 = load i8*, i8** %4, align 8, !dbg !677
  %110 = call i64 @strlen(i8* %109) #9, !dbg !678
  %111 = trunc i64 %110 to i32, !dbg !678
  store i32 %111, i32* %22, align 4, !dbg !676
  %112 = load i8*, i8** %4, align 8, !dbg !679
  %113 = load i8*, i8** %4, align 8, !dbg !680
  %114 = load i32, i32* %21, align 4, !dbg !681
  %115 = sext i32 %114 to i64, !dbg !682
  %116 = getelementptr inbounds i8, i8* %113, i64 %115, !dbg !682
  %117 = load i32, i32* %22, align 4, !dbg !683
  %118 = load i32, i32* %21, align 4, !dbg !684
  %119 = sub nsw i32 %117, %118, !dbg !685
  %120 = add nsw i32 %119, 1, !dbg !686
  %121 = sext i32 %120 to i64, !dbg !683
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %112, i8* align 1 %116, i64 %121, i1 false), !dbg !687
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0, !dbg !688
  %123 = call i32 @remove(i8* %122) #2, !dbg !689
  %124 = load i32, i32* %19, align 4, !dbg !690
  %125 = icmp sgt i32 %124, 0, !dbg !691
  br i1 %125, label %126, label %133, !dbg !692

126:                                              ; preds = %58
  %127 = load i32, i32* %20, align 4, !dbg !693
  %128 = icmp sgt i32 %127, 0, !dbg !694
  br i1 %128, label %129, label %133, !dbg !695

129:                                              ; preds = %126
  %130 = load i32, i32* %19, align 4, !dbg !696
  %131 = load i32, i32* %20, align 4, !dbg !697
  %132 = icmp eq i32 %130, %131, !dbg !698
  br label %133

133:                                              ; preds = %129, %126, %58
  %134 = phi i1 [ false, %126 ], [ false, %58 ], [ %132, %129 ], !dbg !699
  %135 = zext i1 %134 to i64, !dbg !700
  %136 = select i1 %134, i32 1, i32 0, !dbg !700
  ret i32 %136, !dbg !701
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

declare dso_local i32 @http_send_body(%struct.http_s*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @http_finish(%struct.http_s*) #5

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !702 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !750, metadata !DIExpression()), !dbg !751
  %4 = load i64, i64* %3, align 8, !dbg !752
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !752
  %6 = zext i8 %5 to i32, !dbg !752
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
  ], !dbg !753

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !754
  br label %15, !dbg !754

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !756
  br label %15, !dbg !756

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !757
  br label %15, !dbg !757

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !758
  br label %15, !dbg !758

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !759
  br label %15, !dbg !759

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !760
  br label %15, !dbg !760

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !761
  br label %15, !dbg !761

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !762
  br label %15, !dbg !762

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !763
  ret %struct.fiobj_object_vtable_s* %16, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !764 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !767, metadata !DIExpression()), !dbg !768
  %4 = load i64, i64* %3, align 8, !dbg !769
  %5 = icmp ne i64 %4, 0, !dbg !769
  br i1 %5, label %7, label %6, !dbg !771

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !772
  br label %35, !dbg !772

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !773
  %9 = and i64 %8, 1, !dbg !775
  %10 = icmp ne i64 %9, 0, !dbg !775
  br i1 %10, label %11, label %12, !dbg !776

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !777
  br label %35, !dbg !777

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !778
  %14 = and i64 %13, 6, !dbg !780
  %15 = icmp eq i64 %14, 6, !dbg !781
  br i1 %15, label %16, label %19, !dbg !782

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !783
  %18 = trunc i64 %17 to i8, !dbg !784
  store i8 %18, i8* %2, align 1, !dbg !785
  br label %35, !dbg !785

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !786
  %21 = and i64 %20, 6, !dbg !788
  %22 = icmp eq i64 %21, 2, !dbg !789
  br i1 %22, label %23, label %24, !dbg !790

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !791
  br label %35, !dbg !791

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !792
  %26 = and i64 %25, 6, !dbg !794
  %27 = icmp eq i64 %26, 4, !dbg !795
  br i1 %27, label %28, label %29, !dbg !796

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !797
  br label %35, !dbg !797

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !798
  %31 = and i64 %30, -8, !dbg !798
  %32 = inttoptr i64 %31 to i8*, !dbg !798
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !799
  %34 = load i8, i8* %33, align 1, !dbg !799
  store i8 %34, i8* %2, align 1, !dbg !800
  br label %35, !dbg !800

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !801
  ret i8 %36, !dbg !801
}

declare dso_local i64 @fiobj_hash_key_in_loop() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_file(i64 %0, i8* %1) #0 !dbg !802 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.secinput*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !803, metadata !DIExpression()), !dbg !804
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !805, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.declare(metadata %struct.secinput** %5, metadata !807, metadata !DIExpression()), !dbg !808
  %8 = load i8*, i8** %4, align 8, !dbg !809
  %9 = bitcast i8* %8 to %struct.secinput*, !dbg !809
  store %struct.secinput* %9, %struct.secinput** %5, align 8, !dbg !808
  %10 = load i64, i64* %3, align 8, !dbg !810
  %11 = icmp ne i64 %10, 0, !dbg !810
  br i1 %11, label %12, label %33, !dbg !812

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !813, metadata !DIExpression()), !dbg !815
  %13 = call i64 @fiobj_hash_key_in_loop(), !dbg !816
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %13), !dbg !817
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !818
  %15 = load i8*, i8** %14, align 8, !dbg !818
  store i8* %15, i8** %6, align 8, !dbg !815
  %16 = load i8*, i8** %6, align 8, !dbg !819
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0)) #9, !dbg !821
  %18 = icmp eq i32 %17, 0, !dbg !822
  br i1 %18, label %19, label %23, !dbg !823

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !824
  %21 = load %struct.secinput*, %struct.secinput** %5, align 8, !dbg !826
  %22 = getelementptr inbounds %struct.secinput, %struct.secinput* %21, i32 0, i32 3, !dbg !827
  store i64 %20, i64* %22, align 8, !dbg !828
  br label %32, !dbg !829

23:                                               ; preds = %12
  %24 = load i8*, i8** %6, align 8, !dbg !830
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #9, !dbg !832
  %26 = icmp eq i32 %25, 0, !dbg !833
  br i1 %26, label %27, label %31, !dbg !834

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8, !dbg !835
  %29 = load %struct.secinput*, %struct.secinput** %5, align 8, !dbg !837
  %30 = getelementptr inbounds %struct.secinput, %struct.secinput* %29, i32 0, i32 4, !dbg !838
  store i64 %28, i64* %30, align 8, !dbg !839
  br label %31, !dbg !840

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %19
  br label %33, !dbg !841

33:                                               ; preds = %32, %2
  ret i32 0, !dbg !842
}

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8*, i32) #3

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #3

declare dso_local i32 @mkstemp(i8*) #5

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

declare dso_local i32 @fclose(%struct._IO_FILE*) #5

declare dso_local i32 @close(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8*) #3

declare dso_local i32 @get_features(i8*, double*) #5

declare dso_local i32 @recognize(double*) #5

declare dso_local i32 @lookup(i8*, i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local i32 @overlay(i8*, i8*, i32) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !31, line: 433, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "secdesk.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 50, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "facilio/include/fiobject.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "FIOBJ_T_NUMBER", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "FIOBJ_T_NULL", value: 6, isUnsigned: true)
!11 = !DIEnumerator(name: "FIOBJ_T_TRUE", value: 22, isUnsigned: true)
!12 = !DIEnumerator(name: "FIOBJ_T_FALSE", value: 38, isUnsigned: true)
!13 = !DIEnumerator(name: "FIOBJ_T_FLOAT", value: 39, isUnsigned: true)
!14 = !DIEnumerator(name: "FIOBJ_T_STRING", value: 40, isUnsigned: true)
!15 = !DIEnumerator(name: "FIOBJ_T_ARRAY", value: 41, isUnsigned: true)
!16 = !DIEnumerator(name: "FIOBJ_T_HASH", value: 42, isUnsigned: true)
!17 = !DIEnumerator(name: "FIOBJ_T_DATA", value: 43, isUnsigned: true)
!18 = !DIEnumerator(name: "FIOBJ_T_UNKNOWN", value: 44, isUnsigned: true)
!19 = !{!20, !21, !24, !25, !26}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !22, line: 87, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !6, line: 61, baseType: !5)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !22, line: 90, baseType: !27)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!0, !29, !36, !38}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !31, line: 2433, type: !32, isLocal: false, isDefinition: true)
!31 = !DIFile(filename: "facilio/include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !35, line: 38, baseType: !7)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !31, line: 2434, type: !32, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "RESPONSE_FORMAT", scope: !2, file: !3, line: 10, type: !40, isLocal: true, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 10.0.0-4ubuntu1 "}
!47 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !31, file: !31, line: 437, type: !48, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !52)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, null}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!52 = !{}
!53 = !DILocalVariable(name: "format", arg: 1, scope: !47, file: !31, line: 437, type: !50)
!54 = !DILocation(line: 437, column: 28, scope: !47)
!55 = !DILocalVariable(name: "tmp___log", scope: !47, file: !31, line: 438, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16384, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 2048)
!59 = !DILocation(line: 438, column: 8, scope: !47)
!60 = !DILocalVariable(name: "argv", scope: !47, file: !31, line: 439, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !62, line: 52, baseType: !63)
!62 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !64, line: 32, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 192, elements: !74)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !68)
!68 = !{!69, !71, !72, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !67, file: !3, line: 439, baseType: !70, size: 32)
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !67, file: !3, line: 439, baseType: !70, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !67, file: !3, line: 439, baseType: !20, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !67, file: !3, line: 439, baseType: !20, size: 64, offset: 128)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DILocation(line: 439, column: 11, scope: !47)
!77 = !DILocation(line: 440, column: 3, scope: !47)
!78 = !DILocalVariable(name: "len___log", scope: !47, file: !31, line: 441, type: !42)
!79 = !DILocation(line: 441, column: 7, scope: !47)
!80 = !DILocation(line: 441, column: 29, scope: !47)
!81 = !DILocation(line: 441, column: 66, scope: !47)
!82 = !DILocation(line: 441, column: 74, scope: !47)
!83 = !DILocation(line: 441, column: 19, scope: !47)
!84 = !DILocation(line: 442, column: 3, scope: !47)
!85 = !DILocation(line: 443, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !47, file: !31, line: 443, column: 7)
!87 = !DILocation(line: 443, column: 17, scope: !86)
!88 = !DILocation(line: 443, column: 22, scope: !86)
!89 = !DILocation(line: 443, column: 25, scope: !86)
!90 = !DILocation(line: 443, column: 35, scope: !86)
!91 = !DILocation(line: 443, column: 7, scope: !47)
!92 = !DILocation(line: 444, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !31, line: 444, column: 9)
!94 = distinct !DILexicalBlock(scope: !86, file: !31, line: 443, column: 64)
!95 = !DILocation(line: 444, column: 19, scope: !93)
!96 = !DILocation(line: 444, column: 9, scope: !94)
!97 = !DILocation(line: 445, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !31, line: 444, column: 48)
!99 = !DILocation(line: 445, column: 24, scope: !98)
!100 = !DILocation(line: 445, column: 7, scope: !98)
!101 = !DILocation(line: 447, column: 17, scope: !98)
!102 = !DILocation(line: 448, column: 5, scope: !98)
!103 = !DILocation(line: 449, column: 65, scope: !104)
!104 = distinct !DILexicalBlock(scope: !93, file: !31, line: 448, column: 12)
!105 = !DILocation(line: 449, column: 7, scope: !104)
!106 = !DILocation(line: 450, column: 7, scope: !104)
!107 = !DILocation(line: 452, column: 3, scope: !94)
!108 = !DILocation(line: 453, column: 22, scope: !47)
!109 = !DILocation(line: 453, column: 3, scope: !47)
!110 = !DILocation(line: 453, column: 26, scope: !47)
!111 = !DILocation(line: 454, column: 13, scope: !47)
!112 = !DILocation(line: 454, column: 3, scope: !47)
!113 = !DILocation(line: 454, column: 24, scope: !47)
!114 = !DILocation(line: 455, column: 10, scope: !47)
!115 = !DILocation(line: 455, column: 21, scope: !47)
!116 = !DILocation(line: 455, column: 35, scope: !47)
!117 = !DILocation(line: 455, column: 3, scope: !47)
!118 = !DILocation(line: 456, column: 1, scope: !47)
!119 = distinct !DISubprogram(name: "run_secdesk_service", scope: !3, file: !3, line: 149, type: !120, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !52)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !42, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!123 = !DILocalVariable(name: "argc", arg: 1, scope: !119, file: !3, line: 149, type: !42)
!124 = !DILocation(line: 149, column: 30, scope: !119)
!125 = !DILocalVariable(name: "argv", arg: 2, scope: !119, file: !3, line: 149, type: !122)
!126 = !DILocation(line: 149, column: 48, scope: !119)
!127 = !DILocation(line: 151, column: 18, scope: !119)
!128 = !DILocation(line: 151, column: 24, scope: !119)
!129 = !DILocation(line: 151, column: 3, scope: !119)
!130 = !DILocation(line: 152, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !119, file: !3, line: 152, column: 7)
!132 = !DILocation(line: 157, column: 60, scope: !131)
!133 = !DILocation(line: 152, column: 7, scope: !119)
!134 = !DILocation(line: 158, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 157, column: 67)
!136 = !DILocation(line: 159, column: 5, scope: !135)
!137 = !DILocalVariable(name: "d", scope: !119, file: !3, line: 162, type: !50)
!138 = !DILocation(line: 162, column: 15, scope: !119)
!139 = !DILocation(line: 162, column: 19, scope: !119)
!140 = !DILocation(line: 163, column: 18, scope: !119)
!141 = !DILocation(line: 163, column: 3, scope: !119)
!142 = !DILocation(line: 164, column: 3, scope: !119)
!143 = !DILocation(line: 165, column: 3, scope: !119)
!144 = !DILocation(line: 166, column: 3, scope: !119)
!145 = !DILocation(line: 167, column: 3, scope: !119)
!146 = !DILocation(line: 168, column: 3, scope: !119)
!147 = !DILocation(line: 169, column: 3, scope: !119)
!148 = !DILocation(line: 170, column: 3, scope: !119)
!149 = !DILocation(line: 171, column: 1, scope: !119)
!150 = distinct !DISubprogram(name: "initialize_cli", scope: !3, file: !3, line: 13, type: !120, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!151 = !DILocalVariable(name: "argc", arg: 1, scope: !150, file: !3, line: 13, type: !42)
!152 = !DILocation(line: 13, column: 32, scope: !150)
!153 = !DILocalVariable(name: "argv", arg: 2, scope: !150, file: !3, line: 13, type: !122)
!154 = !DILocation(line: 13, column: 50, scope: !150)
!155 = !DILocation(line: 14, column: 3, scope: !150)
!156 = !DILocation(line: 30, column: 8, scope: !157)
!157 = distinct !DILexicalBlock(scope: !150, file: !3, line: 30, column: 7)
!158 = !DILocation(line: 30, column: 7, scope: !150)
!159 = !DILocalVariable(name: "tmp", scope: !160, file: !3, line: 31, type: !40)
!160 = distinct !DILexicalBlock(scope: !157, file: !3, line: 30, column: 27)
!161 = !DILocation(line: 31, column: 11, scope: !160)
!162 = !DILocation(line: 31, column: 17, scope: !160)
!163 = !DILocation(line: 32, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 32, column: 9)
!165 = !DILocation(line: 32, column: 9, scope: !160)
!166 = !DILocation(line: 33, column: 25, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 32, column: 14)
!168 = !DILocation(line: 33, column: 7, scope: !167)
!169 = !DILocation(line: 34, column: 28, scope: !167)
!170 = !DILocation(line: 34, column: 7, scope: !167)
!171 = !DILocation(line: 35, column: 5, scope: !167)
!172 = !DILocation(line: 36, column: 3, scope: !160)
!173 = !DILocation(line: 37, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !150, file: !3, line: 37, column: 7)
!175 = !DILocation(line: 37, column: 7, scope: !150)
!176 = !DILocalVariable(name: "tmp", scope: !177, file: !3, line: 38, type: !40)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 37, column: 27)
!178 = !DILocation(line: 38, column: 11, scope: !177)
!179 = !DILocation(line: 38, column: 17, scope: !177)
!180 = !DILocation(line: 39, column: 10, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 39, column: 9)
!182 = !DILocation(line: 39, column: 14, scope: !181)
!183 = !DILocation(line: 39, column: 18, scope: !181)
!184 = !DILocation(line: 39, column: 9, scope: !177)
!185 = !DILocation(line: 39, column: 41, scope: !181)
!186 = !DILocation(line: 39, column: 37, scope: !181)
!187 = !DILocation(line: 40, column: 23, scope: !177)
!188 = !DILocation(line: 40, column: 5, scope: !177)
!189 = !DILocation(line: 41, column: 26, scope: !177)
!190 = !DILocation(line: 41, column: 5, scope: !177)
!191 = !DILocation(line: 42, column: 3, scope: !177)
!192 = !DILocation(line: 43, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !150, file: !3, line: 43, column: 7)
!194 = !DILocation(line: 43, column: 7, scope: !150)
!195 = !DILocalVariable(name: "tmp", scope: !196, file: !3, line: 44, type: !40)
!196 = distinct !DILexicalBlock(scope: !193, file: !3, line: 43, column: 29)
!197 = !DILocation(line: 44, column: 11, scope: !196)
!198 = !DILocation(line: 44, column: 17, scope: !196)
!199 = !DILocation(line: 45, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !3, line: 45, column: 9)
!201 = !DILocation(line: 45, column: 9, scope: !196)
!202 = !DILocation(line: 46, column: 30, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 45, column: 14)
!204 = !DILocation(line: 46, column: 7, scope: !203)
!205 = !DILocation(line: 47, column: 27, scope: !203)
!206 = !DILocation(line: 47, column: 7, scope: !203)
!207 = !DILocation(line: 48, column: 5, scope: !203)
!208 = !DILocation(line: 49, column: 3, scope: !196)
!209 = !DILocation(line: 50, column: 8, scope: !210)
!210 = distinct !DILexicalBlock(scope: !150, file: !3, line: 50, column: 7)
!211 = !DILocation(line: 50, column: 7, scope: !150)
!212 = !DILocalVariable(name: "tmp", scope: !213, file: !3, line: 51, type: !40)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 50, column: 28)
!214 = !DILocation(line: 51, column: 11, scope: !213)
!215 = !DILocation(line: 51, column: 17, scope: !213)
!216 = !DILocation(line: 52, column: 10, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !3, line: 52, column: 9)
!218 = !DILocation(line: 52, column: 9, scope: !213)
!219 = !DILocation(line: 52, column: 19, scope: !217)
!220 = !DILocation(line: 52, column: 15, scope: !217)
!221 = !DILocation(line: 53, column: 30, scope: !213)
!222 = !DILocation(line: 53, column: 5, scope: !213)
!223 = !DILocation(line: 54, column: 24, scope: !213)
!224 = !DILocation(line: 54, column: 5, scope: !213)
!225 = !DILocation(line: 55, column: 3, scope: !213)
!226 = !DILocation(line: 56, column: 1, scope: !150)
!227 = distinct !DISubprogram(name: "on_http_request", scope: !3, file: !3, line: 131, type: !228, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_s", file: !232, line: 121, baseType: !233)
!232 = !DIFile(filename: "facilio/include/http.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 74, size: 1024, elements: !234)
!234 = !{!235, !242, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !233, file: !232, line: 83, baseType: !236, size: 192)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !232, line: 76, size: 192, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "vtbl", scope: !236, file: !232, line: 78, baseType: !20, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !236, file: !232, line: 80, baseType: !26, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "out_headers", scope: !236, file: !232, line: 82, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !6, line: 63, baseType: !26)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "received_at", scope: !233, file: !232, line: 85, baseType: !243, size: 128, offset: 192)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !244, line: 10, size: 128, elements: !245)
!244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !243, file: !244, line: 12, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !35, line: 160, baseType: !23)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !243, file: !244, line: 16, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !35, line: 196, baseType: !23)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !233, file: !232, line: 87, baseType: !241, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "status_str", scope: !233, file: !232, line: 89, baseType: !241, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !233, file: !232, line: 91, baseType: !241, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !233, file: !232, line: 96, baseType: !26, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !233, file: !232, line: 98, baseType: !241, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !233, file: !232, line: 100, baseType: !241, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !233, file: !232, line: 103, baseType: !241, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !233, file: !232, line: 108, baseType: !241, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !233, file: !232, line: 113, baseType: !241, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !233, file: !232, line: 118, baseType: !241, size: 64, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !233, file: !232, line: 120, baseType: !20, size: 64, offset: 960)
!261 = !DILocalVariable(name: "h", arg: 1, scope: !227, file: !3, line: 131, type: !230)
!262 = !DILocation(line: 131, column: 37, scope: !227)
!263 = !DILocation(line: 133, column: 20, scope: !227)
!264 = !DILocation(line: 133, column: 3, scope: !227)
!265 = !DILocation(line: 134, column: 30, scope: !266)
!266 = distinct !DILexicalBlock(scope: !227, file: !3, line: 134, column: 7)
!267 = !DILocation(line: 134, column: 33, scope: !266)
!268 = !DILocation(line: 134, column: 15, scope: !266)
!269 = !DILocation(line: 134, column: 39, scope: !266)
!270 = !DILocation(line: 134, column: 8, scope: !266)
!271 = !DILocation(line: 134, column: 61, scope: !266)
!272 = !DILocation(line: 135, column: 7, scope: !266)
!273 = !DILocation(line: 135, column: 33, scope: !266)
!274 = !DILocation(line: 135, column: 36, scope: !266)
!275 = !DILocation(line: 135, column: 18, scope: !266)
!276 = !DILocation(line: 135, column: 44, scope: !266)
!277 = !DILocation(line: 135, column: 11, scope: !266)
!278 = !DILocation(line: 135, column: 57, scope: !266)
!279 = !DILocation(line: 136, column: 7, scope: !266)
!280 = !DILocation(line: 136, column: 27, scope: !266)
!281 = !DILocation(line: 136, column: 11, scope: !266)
!282 = !DILocation(line: 136, column: 30, scope: !266)
!283 = !DILocation(line: 134, column: 7, scope: !227)
!284 = !DILocation(line: 136, column: 40, scope: !285)
!285 = distinct !DILexicalBlock(scope: !266, file: !3, line: 136, column: 38)
!286 = !DILocation(line: 136, column: 40, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !3, line: 136, column: 40)
!288 = !DILocalVariable(name: "s", scope: !227, file: !3, line: 137, type: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "secinput", file: !290, line: 14, size: 320, elements: !291)
!290 = !DIFile(filename: "./secdesk.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored")
!291 = !{!292, !293, !294, !295, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !289, file: !290, line: 15, baseType: !241, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mi", scope: !289, file: !290, line: 16, baseType: !241, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "lname", scope: !289, file: !290, line: 17, baseType: !241, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !289, file: !290, line: 18, baseType: !241, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "filedata", scope: !289, file: !290, line: 19, baseType: !241, size: 64, offset: 256)
!297 = !DILocation(line: 137, column: 19, scope: !227)
!298 = !DILocalVariable(name: "overlayImageFile", scope: !227, file: !3, line: 138, type: !299)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 4096, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 512)
!302 = !DILocation(line: 138, column: 8, scope: !227)
!303 = !DILocation(line: 139, column: 15, scope: !227)
!304 = !DILocation(line: 139, column: 18, scope: !227)
!305 = !DILocation(line: 139, column: 41, scope: !227)
!306 = !DILocation(line: 139, column: 3, scope: !227)
!307 = !DILocalVariable(name: "rsp", scope: !227, file: !3, line: 140, type: !42)
!308 = !DILocation(line: 140, column: 7, scope: !227)
!309 = !DILocation(line: 140, column: 34, scope: !227)
!310 = !DILocation(line: 140, column: 13, scope: !227)
!311 = !DILocalVariable(name: "response", scope: !227, file: !3, line: 141, type: !312)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8192, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 1024)
!315 = !DILocation(line: 141, column: 8, scope: !227)
!316 = !DILocation(line: 142, column: 11, scope: !227)
!317 = !DILocation(line: 142, column: 21, scope: !227)
!318 = !DILocation(line: 142, column: 39, scope: !227)
!319 = !DILocation(line: 142, column: 70, scope: !227)
!320 = !DILocation(line: 142, column: 3, scope: !227)
!321 = !DILocation(line: 143, column: 18, scope: !227)
!322 = !DILocation(line: 143, column: 21, scope: !227)
!323 = !DILocation(line: 143, column: 38, scope: !227)
!324 = !DILocation(line: 143, column: 31, scope: !227)
!325 = !DILocation(line: 143, column: 3, scope: !227)
!326 = !DILabel(scope: !227, name: "cleanup", file: !3, line: 145)
!327 = !DILocation(line: 145, column: 3, scope: !227)
!328 = !DILocation(line: 145, column: 24, scope: !227)
!329 = !DILocation(line: 145, column: 12, scope: !227)
!330 = !DILocation(line: 145, column: 28, scope: !227)
!331 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 173, type: !332, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !52)
!332 = !DISubroutineType(types: !333)
!333 = !{!42, !42, !122}
!334 = !DILocalVariable(name: "argc", arg: 1, scope: !331, file: !3, line: 173, type: !42)
!335 = !DILocation(line: 173, column: 14, scope: !331)
!336 = !DILocalVariable(name: "argv", arg: 2, scope: !331, file: !3, line: 173, type: !122)
!337 = !DILocation(line: 173, column: 33, scope: !331)
!338 = !DILocation(line: 174, column: 23, scope: !331)
!339 = !DILocation(line: 174, column: 29, scope: !331)
!340 = !DILocation(line: 174, column: 3, scope: !331)
!341 = !DILocation(line: 175, column: 3, scope: !331)
!342 = distinct !DISubprogram(name: "fiobj_obj2cstr", scope: !6, file: !6, line: 515, type: !343, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !353}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !31, line: 287, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !31, line: 283, size: 192, elements: !347)
!347 = !{!348, !351, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !346, file: !31, line: 284, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !350, line: 46, baseType: !27)
!350 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !346, file: !31, line: 285, baseType: !349, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !346, file: !31, line: 286, baseType: !40, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!354 = !DILocalVariable(name: "o", arg: 1, scope: !342, file: !6, line: 515, type: !353)
!355 = !DILocation(line: 515, column: 54, scope: !342)
!356 = !DILocation(line: 516, column: 8, scope: !357)
!357 = distinct !DILexicalBlock(scope: !342, file: !6, line: 516, column: 7)
!358 = !DILocation(line: 516, column: 7, scope: !342)
!359 = !DILocalVariable(name: "ret", scope: !360, file: !6, line: 517, type: !345)
!360 = distinct !DILexicalBlock(scope: !357, file: !6, line: 516, column: 11)
!361 = !DILocation(line: 517, column: 20, scope: !360)
!362 = !DILocation(line: 518, column: 5, scope: !360)
!363 = !DILocation(line: 520, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !342, file: !6, line: 520, column: 7)
!365 = !DILocation(line: 520, column: 9, scope: !364)
!366 = !DILocation(line: 520, column: 7, scope: !342)
!367 = !DILocation(line: 521, column: 35, scope: !364)
!368 = !DILocation(line: 521, column: 38, scope: !364)
!369 = !DILocation(line: 521, column: 12, scope: !364)
!370 = !DILocation(line: 521, column: 5, scope: !364)
!371 = !DILocation(line: 522, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !342, file: !6, line: 522, column: 7)
!373 = !DILocation(line: 522, column: 10, scope: !372)
!374 = !DILocation(line: 522, column: 37, scope: !372)
!375 = !DILocation(line: 522, column: 7, scope: !342)
!376 = !DILocation(line: 523, column: 30, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !6, line: 522, column: 65)
!378 = !DILocation(line: 523, column: 13, scope: !377)
!379 = !DILocation(line: 523, column: 5, scope: !377)
!380 = !DILocalVariable(name: "ret", scope: !381, file: !6, line: 525, type: !345)
!381 = distinct !DILexicalBlock(scope: !382, file: !6, line: 524, column: 24)
!382 = distinct !DILexicalBlock(scope: !377, file: !6, line: 523, column: 33)
!383 = !DILocation(line: 525, column: 22, scope: !381)
!384 = !DILocation(line: 526, column: 7, scope: !381)
!385 = !DILocalVariable(name: "ret", scope: !386, file: !6, line: 529, type: !345)
!386 = distinct !DILexicalBlock(scope: !382, file: !6, line: 528, column: 25)
!387 = !DILocation(line: 529, column: 22, scope: !386)
!388 = !DILocation(line: 530, column: 7, scope: !386)
!389 = !DILocalVariable(name: "ret", scope: !390, file: !6, line: 533, type: !345)
!390 = distinct !DILexicalBlock(scope: !382, file: !6, line: 532, column: 24)
!391 = !DILocation(line: 533, column: 22, scope: !390)
!392 = !DILocation(line: 534, column: 7, scope: !390)
!393 = !DILocation(line: 537, column: 7, scope: !382)
!394 = !DILocation(line: 539, column: 3, scope: !377)
!395 = !DILocation(line: 540, column: 10, scope: !342)
!396 = !DILocation(line: 540, column: 28, scope: !342)
!397 = !DILocation(line: 540, column: 35, scope: !342)
!398 = !DILocation(line: 540, column: 3, scope: !342)
!399 = !DILocation(line: 541, column: 1, scope: !342)
!400 = distinct !DISubprogram(name: "fiobj_each1", scope: !6, file: !6, line: 638, type: !401, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!401 = !DISubroutineType(types: !402)
!402 = !{!349, !241, !349, !403, !20}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!42, !241, !20}
!406 = !DILocalVariable(name: "o", arg: 1, scope: !400, file: !6, line: 638, type: !241)
!407 = !DILocation(line: 638, column: 37, scope: !400)
!408 = !DILocalVariable(name: "start_at", arg: 2, scope: !400, file: !6, line: 638, type: !349)
!409 = !DILocation(line: 638, column: 47, scope: !400)
!410 = !DILocalVariable(name: "task", arg: 3, scope: !400, file: !6, line: 639, type: !403)
!411 = !DILocation(line: 639, column: 37, scope: !400)
!412 = !DILocalVariable(name: "arg", arg: 4, scope: !400, file: !6, line: 639, type: !20)
!413 = !DILocation(line: 639, column: 72, scope: !400)
!414 = !DILocation(line: 640, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !400, file: !6, line: 640, column: 7)
!416 = !DILocation(line: 640, column: 29, scope: !415)
!417 = !DILocation(line: 640, column: 32, scope: !415)
!418 = !DILocation(line: 640, column: 50, scope: !415)
!419 = !DILocation(line: 640, column: 7, scope: !400)
!420 = !DILocation(line: 641, column: 12, scope: !415)
!421 = !DILocation(line: 641, column: 30, scope: !415)
!422 = !DILocation(line: 641, column: 35, scope: !415)
!423 = !DILocation(line: 641, column: 38, scope: !415)
!424 = !DILocation(line: 641, column: 48, scope: !415)
!425 = !DILocation(line: 641, column: 54, scope: !415)
!426 = !DILocation(line: 641, column: 5, scope: !415)
!427 = !DILocation(line: 642, column: 3, scope: !400)
!428 = !DILocation(line: 643, column: 1, scope: !400)
!429 = distinct !DISubprogram(name: "get_fields", scope: !3, file: !3, line: 68, type: !404, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!430 = !DILocalVariable(name: "o", arg: 1, scope: !429, file: !3, line: 68, type: !241)
!431 = !DILocation(line: 68, column: 29, scope: !429)
!432 = !DILocalVariable(name: "arg", arg: 2, scope: !429, file: !3, line: 68, type: !20)
!433 = !DILocation(line: 68, column: 38, scope: !429)
!434 = !DILocalVariable(name: "s", scope: !429, file: !3, line: 69, type: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!436 = !DILocation(line: 69, column: 20, scope: !429)
!437 = !DILocation(line: 69, column: 24, scope: !429)
!438 = !DILocation(line: 70, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !429, file: !3, line: 70, column: 7)
!440 = !DILocation(line: 70, column: 7, scope: !429)
!441 = !DILocalVariable(name: "key", scope: !442, file: !3, line: 71, type: !40)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 70, column: 10)
!443 = !DILocation(line: 71, column: 12, scope: !442)
!444 = !DILocation(line: 71, column: 33, scope: !442)
!445 = !DILocation(line: 71, column: 18, scope: !442)
!446 = !DILocation(line: 71, column: 59, scope: !442)
!447 = !DILocation(line: 72, column: 16, scope: !448)
!448 = distinct !DILexicalBlock(scope: !442, file: !3, line: 72, column: 9)
!449 = !DILocation(line: 72, column: 9, scope: !448)
!450 = !DILocation(line: 72, column: 33, scope: !448)
!451 = !DILocation(line: 72, column: 9, scope: !442)
!452 = !DILocation(line: 72, column: 54, scope: !453)
!453 = distinct !DILexicalBlock(scope: !448, file: !3, line: 72, column: 40)
!454 = !DILocation(line: 72, column: 70, scope: !453)
!455 = !DILocation(line: 72, column: 42, scope: !453)
!456 = !DILocation(line: 72, column: 76, scope: !453)
!457 = !DILocation(line: 73, column: 21, scope: !458)
!458 = distinct !DILexicalBlock(scope: !448, file: !3, line: 73, column: 14)
!459 = !DILocation(line: 73, column: 14, scope: !458)
!460 = !DILocation(line: 73, column: 34, scope: !458)
!461 = !DILocation(line: 73, column: 14, scope: !448)
!462 = !DILocation(line: 73, column: 53, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !3, line: 73, column: 40)
!464 = !DILocation(line: 73, column: 42, scope: !463)
!465 = !DILocation(line: 73, column: 45, scope: !463)
!466 = !DILocation(line: 73, column: 51, scope: !463)
!467 = !DILocation(line: 73, column: 56, scope: !463)
!468 = !DILocation(line: 74, column: 21, scope: !469)
!469 = distinct !DILexicalBlock(scope: !458, file: !3, line: 74, column: 14)
!470 = !DILocation(line: 74, column: 14, scope: !469)
!471 = !DILocation(line: 74, column: 31, scope: !469)
!472 = !DILocation(line: 74, column: 14, scope: !458)
!473 = !DILocation(line: 74, column: 50, scope: !474)
!474 = distinct !DILexicalBlock(scope: !469, file: !3, line: 74, column: 40)
!475 = !DILocation(line: 74, column: 42, scope: !474)
!476 = !DILocation(line: 74, column: 45, scope: !474)
!477 = !DILocation(line: 74, column: 48, scope: !474)
!478 = !DILocation(line: 74, column: 53, scope: !474)
!479 = !DILocation(line: 75, column: 21, scope: !480)
!480 = distinct !DILexicalBlock(scope: !469, file: !3, line: 75, column: 14)
!481 = !DILocation(line: 75, column: 14, scope: !480)
!482 = !DILocation(line: 75, column: 34, scope: !480)
!483 = !DILocation(line: 75, column: 14, scope: !469)
!484 = !DILocation(line: 75, column: 53, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !3, line: 75, column: 40)
!486 = !DILocation(line: 75, column: 42, scope: !485)
!487 = !DILocation(line: 75, column: 45, scope: !485)
!488 = !DILocation(line: 75, column: 51, scope: !485)
!489 = !DILocation(line: 75, column: 56, scope: !485)
!490 = !DILocation(line: 76, column: 3, scope: !442)
!491 = !DILocation(line: 77, column: 3, scope: !429)
!492 = distinct !DISubprogram(name: "process_secinput", scope: !3, file: !3, line: 80, type: !493, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!493 = !DISubroutineType(types: !494)
!494 = !{!42, !435, !40}
!495 = !DILocalVariable(name: "s", arg: 1, scope: !492, file: !3, line: 80, type: !435)
!496 = !DILocation(line: 80, column: 46, scope: !492)
!497 = !DILocalVariable(name: "overlayImageFile", arg: 2, scope: !492, file: !3, line: 80, type: !40)
!498 = !DILocation(line: 80, column: 55, scope: !492)
!499 = !DILocalVariable(name: "tmp", scope: !492, file: !3, line: 81, type: !345)
!500 = !DILocation(line: 81, column: 18, scope: !492)
!501 = !DILocation(line: 81, column: 39, scope: !492)
!502 = !DILocation(line: 81, column: 42, scope: !492)
!503 = !DILocation(line: 81, column: 24, scope: !492)
!504 = !DILocalVariable(name: "filename", scope: !492, file: !3, line: 82, type: !40)
!505 = !DILocation(line: 82, column: 9, scope: !492)
!506 = !DILocation(line: 82, column: 39, scope: !492)
!507 = !DILocation(line: 82, column: 42, scope: !492)
!508 = !DILocation(line: 82, column: 24, scope: !492)
!509 = !DILocation(line: 82, column: 52, scope: !492)
!510 = !DILocalVariable(name: "dir", scope: !492, file: !3, line: 84, type: !511)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 256)
!514 = !DILocation(line: 84, column: 8, scope: !492)
!515 = !DILocalVariable(name: "tmpfile", scope: !492, file: !3, line: 84, type: !299)
!516 = !DILocation(line: 84, column: 18, scope: !492)
!517 = !DILocation(line: 85, column: 11, scope: !492)
!518 = !DILocation(line: 85, column: 26, scope: !492)
!519 = !DILocation(line: 85, column: 3, scope: !492)
!520 = !DILocation(line: 86, column: 9, scope: !492)
!521 = !DILocation(line: 86, column: 3, scope: !492)
!522 = !DILocation(line: 87, column: 11, scope: !492)
!523 = !DILocation(line: 87, column: 45, scope: !492)
!524 = !DILocation(line: 87, column: 3, scope: !492)
!525 = !DILocalVariable(name: "fp", scope: !492, file: !3, line: 89, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !528, line: 7, baseType: !529)
!528 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !530, line: 49, size: 1728, elements: !531)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !547, !549, !550, !551, !553, !555, !557, !559, !562, !564, !567, !570, !571, !572, !573, !574}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !529, file: !530, line: 51, baseType: !42, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !529, file: !530, line: 54, baseType: !40, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !529, file: !530, line: 55, baseType: !40, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !529, file: !530, line: 56, baseType: !40, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !529, file: !530, line: 57, baseType: !40, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !529, file: !530, line: 58, baseType: !40, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !529, file: !530, line: 59, baseType: !40, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !529, file: !530, line: 60, baseType: !40, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !529, file: !530, line: 61, baseType: !40, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !529, file: !530, line: 64, baseType: !40, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !529, file: !530, line: 65, baseType: !40, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !529, file: !530, line: 66, baseType: !40, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !529, file: !530, line: 68, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !530, line: 36, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !529, file: !530, line: 70, baseType: !548, size: 64, offset: 832)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !529, file: !530, line: 72, baseType: !42, size: 32, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !529, file: !530, line: 73, baseType: !42, size: 32, offset: 928)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !529, file: !530, line: 74, baseType: !552, size: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 152, baseType: !23)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !529, file: !530, line: 77, baseType: !554, size: 16, offset: 1024)
!554 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !529, file: !530, line: 78, baseType: !556, size: 8, offset: 1040)
!556 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !529, file: !530, line: 79, baseType: !558, size: 8, offset: 1048)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !74)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !529, file: !530, line: 81, baseType: !560, size: 64, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !530, line: 43, baseType: null)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !529, file: !530, line: 89, baseType: !563, size: 64, offset: 1152)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 153, baseType: !23)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !529, file: !530, line: 91, baseType: !565, size: 64, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !530, line: 37, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !529, file: !530, line: 92, baseType: !568, size: 64, offset: 1280)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !530, line: 38, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !529, file: !530, line: 93, baseType: !548, size: 64, offset: 1344)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !529, file: !530, line: 94, baseType: !20, size: 64, offset: 1408)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !529, file: !530, line: 95, baseType: !349, size: 64, offset: 1472)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !529, file: !530, line: 96, baseType: !42, size: 32, offset: 1536)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !529, file: !530, line: 98, baseType: !575, size: 160, offset: 1568)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 20)
!578 = !DILocation(line: 89, column: 10, scope: !492)
!579 = !DILocation(line: 89, column: 39, scope: !492)
!580 = !DILocation(line: 89, column: 31, scope: !492)
!581 = !DILocation(line: 89, column: 24, scope: !492)
!582 = !DILocation(line: 90, column: 8, scope: !583)
!583 = distinct !DILexicalBlock(scope: !492, file: !3, line: 90, column: 7)
!584 = !DILocation(line: 90, column: 7, scope: !492)
!585 = !DILocation(line: 90, column: 12, scope: !583)
!586 = !DILocation(line: 91, column: 18, scope: !587)
!587 = distinct !DILexicalBlock(scope: !492, file: !3, line: 91, column: 7)
!588 = !DILocation(line: 91, column: 28, scope: !587)
!589 = !DILocation(line: 91, column: 36, scope: !587)
!590 = !DILocation(line: 91, column: 7, scope: !587)
!591 = !DILocation(line: 91, column: 40, scope: !587)
!592 = !DILocation(line: 91, column: 7, scope: !492)
!593 = !DILocation(line: 92, column: 13, scope: !594)
!594 = distinct !DILexicalBlock(scope: !587, file: !3, line: 91, column: 46)
!595 = !DILocation(line: 92, column: 62, scope: !594)
!596 = !DILocation(line: 92, column: 72, scope: !594)
!597 = !DILocation(line: 92, column: 5, scope: !594)
!598 = !DILocation(line: 93, column: 3, scope: !594)
!599 = !DILocation(line: 94, column: 10, scope: !492)
!600 = !DILocation(line: 94, column: 3, scope: !492)
!601 = !DILocalVariable(name: "tmp2", scope: !492, file: !3, line: 96, type: !602)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 32)
!605 = !DILocation(line: 96, column: 8, scope: !492)
!606 = !DILocation(line: 97, column: 17, scope: !492)
!607 = !DILocation(line: 97, column: 9, scope: !492)
!608 = !DILocation(line: 97, column: 3, scope: !492)
!609 = !DILocation(line: 98, column: 10, scope: !492)
!610 = !DILocation(line: 98, column: 3, scope: !492)
!611 = !DILocation(line: 99, column: 11, scope: !492)
!612 = !DILocation(line: 99, column: 42, scope: !492)
!613 = !DILocation(line: 99, column: 47, scope: !492)
!614 = !DILocation(line: 99, column: 3, scope: !492)
!615 = !DILocalVariable(name: "f", scope: !492, file: !3, line: 101, type: !40)
!616 = !DILocation(line: 101, column: 9, scope: !492)
!617 = !DILocalVariable(name: "m", scope: !492, file: !3, line: 101, type: !40)
!618 = !DILocation(line: 101, column: 13, scope: !492)
!619 = !DILocalVariable(name: "l", scope: !492, file: !3, line: 101, type: !40)
!620 = !DILocation(line: 101, column: 17, scope: !492)
!621 = !DILocation(line: 102, column: 29, scope: !492)
!622 = !DILocation(line: 102, column: 32, scope: !492)
!623 = !DILocation(line: 102, column: 14, scope: !492)
!624 = !DILocation(line: 102, column: 39, scope: !492)
!625 = !DILocation(line: 102, column: 7, scope: !492)
!626 = !DILocation(line: 102, column: 5, scope: !492)
!627 = !DILocation(line: 103, column: 29, scope: !492)
!628 = !DILocation(line: 103, column: 32, scope: !492)
!629 = !DILocation(line: 103, column: 14, scope: !492)
!630 = !DILocation(line: 103, column: 36, scope: !492)
!631 = !DILocation(line: 103, column: 7, scope: !492)
!632 = !DILocation(line: 103, column: 5, scope: !492)
!633 = !DILocation(line: 104, column: 29, scope: !492)
!634 = !DILocation(line: 104, column: 32, scope: !492)
!635 = !DILocation(line: 104, column: 14, scope: !492)
!636 = !DILocation(line: 104, column: 39, scope: !492)
!637 = !DILocation(line: 104, column: 7, scope: !492)
!638 = !DILocation(line: 104, column: 5, scope: !492)
!639 = !DILocalVariable(name: "embedding", scope: !492, file: !3, line: 107, type: !640)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 8192, elements: !642)
!641 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!642 = !{!643}
!643 = !DISubrange(count: 128)
!644 = !DILocation(line: 107, column: 10, scope: !492)
!645 = !DILocation(line: 109, column: 16, scope: !492)
!646 = !DILocation(line: 109, column: 25, scope: !492)
!647 = !DILocation(line: 109, column: 3, scope: !492)
!648 = !DILocalVariable(name: "i", scope: !492, file: !3, line: 112, type: !42)
!649 = !DILocation(line: 112, column: 7, scope: !492)
!650 = !DILocation(line: 114, column: 17, scope: !492)
!651 = !DILocation(line: 114, column: 7, scope: !492)
!652 = !DILocation(line: 114, column: 5, scope: !492)
!653 = !DILocalVariable(name: "j", scope: !492, file: !3, line: 116, type: !42)
!654 = !DILocation(line: 116, column: 7, scope: !492)
!655 = !DILocation(line: 117, column: 14, scope: !492)
!656 = !DILocation(line: 117, column: 16, scope: !492)
!657 = !DILocation(line: 117, column: 18, scope: !492)
!658 = !DILocation(line: 117, column: 7, scope: !492)
!659 = !DILocation(line: 117, column: 5, scope: !492)
!660 = !DILocation(line: 118, column: 8, scope: !492)
!661 = !DILocation(line: 118, column: 3, scope: !492)
!662 = !DILocation(line: 118, column: 17, scope: !492)
!663 = !DILocation(line: 118, column: 12, scope: !492)
!664 = !DILocation(line: 118, column: 26, scope: !492)
!665 = !DILocation(line: 118, column: 21, scope: !492)
!666 = !DILocation(line: 120, column: 11, scope: !492)
!667 = !DILocation(line: 120, column: 20, scope: !492)
!668 = !DILocation(line: 120, column: 38, scope: !492)
!669 = !DILocation(line: 120, column: 3, scope: !492)
!670 = !DILocalVariable(name: "n", scope: !492, file: !3, line: 122, type: !42)
!671 = !DILocation(line: 122, column: 7, scope: !492)
!672 = !DILocation(line: 122, column: 18, scope: !492)
!673 = !DILocation(line: 122, column: 11, scope: !492)
!674 = !DILocation(line: 122, column: 39, scope: !492)
!675 = !DILocalVariable(name: "len", scope: !492, file: !3, line: 123, type: !42)
!676 = !DILocation(line: 123, column: 7, scope: !492)
!677 = !DILocation(line: 123, column: 20, scope: !492)
!678 = !DILocation(line: 123, column: 13, scope: !492)
!679 = !DILocation(line: 124, column: 11, scope: !492)
!680 = !DILocation(line: 124, column: 29, scope: !492)
!681 = !DILocation(line: 124, column: 48, scope: !492)
!682 = !DILocation(line: 124, column: 46, scope: !492)
!683 = !DILocation(line: 124, column: 51, scope: !492)
!684 = !DILocation(line: 124, column: 57, scope: !492)
!685 = !DILocation(line: 124, column: 55, scope: !492)
!686 = !DILocation(line: 124, column: 59, scope: !492)
!687 = !DILocation(line: 124, column: 3, scope: !492)
!688 = !DILocation(line: 126, column: 10, scope: !492)
!689 = !DILocation(line: 126, column: 3, scope: !492)
!690 = !DILocation(line: 128, column: 11, scope: !492)
!691 = !DILocation(line: 128, column: 13, scope: !492)
!692 = !DILocation(line: 128, column: 17, scope: !492)
!693 = !DILocation(line: 128, column: 20, scope: !492)
!694 = !DILocation(line: 128, column: 22, scope: !492)
!695 = !DILocation(line: 128, column: 26, scope: !492)
!696 = !DILocation(line: 128, column: 29, scope: !492)
!697 = !DILocation(line: 128, column: 34, scope: !492)
!698 = !DILocation(line: 128, column: 31, scope: !492)
!699 = !DILocation(line: 0, scope: !492)
!700 = !DILocation(line: 128, column: 10, scope: !492)
!701 = !DILocation(line: 128, column: 3, scope: !492)
!702 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !6, file: !6, line: 344, type: !703, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!703 = !DISubroutineType(types: !704)
!704 = !{!705, !241}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !6, line: 325, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 305, size: 576, elements: !709)
!709 = !{!710, !711, !719, !724, !729, !734, !737, !740, !745}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !708, file: !6, line: 307, baseType: !50, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !708, file: !6, line: 309, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !241, !716, !20}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !241, !20}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !708, file: !6, line: 311, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!26, !353}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !708, file: !6, line: 313, baseType: !725, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!349, !353}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !708, file: !6, line: 315, baseType: !730, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!349, !353, !353}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !708, file: !6, line: 317, baseType: !735, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !708, file: !6, line: 320, baseType: !738, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !708, file: !6, line: 322, baseType: !741, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!21, !353}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !708, file: !6, line: 324, baseType: !746, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!641, !353}
!750 = !DILocalVariable(name: "o", arg: 1, scope: !702, file: !6, line: 344, type: !241)
!751 = !DILocation(line: 344, column: 65, scope: !702)
!752 = !DILocation(line: 345, column: 11, scope: !702)
!753 = !DILocation(line: 345, column: 3, scope: !702)
!754 = !DILocation(line: 347, column: 5, scope: !755)
!755 = distinct !DILexicalBlock(scope: !702, file: !6, line: 345, column: 26)
!756 = !DILocation(line: 349, column: 5, scope: !755)
!757 = !DILocation(line: 351, column: 5, scope: !755)
!758 = !DILocation(line: 353, column: 5, scope: !755)
!759 = !DILocation(line: 355, column: 5, scope: !755)
!760 = !DILocation(line: 357, column: 5, scope: !755)
!761 = !DILocation(line: 362, column: 5, scope: !755)
!762 = !DILocation(line: 364, column: 3, scope: !702)
!763 = !DILocation(line: 365, column: 1, scope: !702)
!764 = distinct !DISubprogram(name: "fiobj_type", scope: !6, file: !6, line: 250, type: !765, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!765 = !DISubroutineType(types: !766)
!766 = !{!24, !241}
!767 = !DILocalVariable(name: "o", arg: 1, scope: !764, file: !6, line: 250, type: !241)
!768 = !DILocation(line: 250, column: 45, scope: !764)
!769 = !DILocation(line: 251, column: 8, scope: !770)
!770 = distinct !DILexicalBlock(scope: !764, file: !6, line: 251, column: 7)
!771 = !DILocation(line: 251, column: 7, scope: !764)
!772 = !DILocation(line: 252, column: 5, scope: !770)
!773 = !DILocation(line: 253, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !764, file: !6, line: 253, column: 7)
!775 = !DILocation(line: 253, column: 9, scope: !774)
!776 = !DILocation(line: 253, column: 7, scope: !764)
!777 = !DILocation(line: 254, column: 5, scope: !774)
!778 = !DILocation(line: 255, column: 8, scope: !779)
!779 = distinct !DILexicalBlock(scope: !764, file: !6, line: 255, column: 7)
!780 = !DILocation(line: 255, column: 10, scope: !779)
!781 = !DILocation(line: 255, column: 37, scope: !779)
!782 = !DILocation(line: 255, column: 7, scope: !764)
!783 = !DILocation(line: 256, column: 29, scope: !779)
!784 = !DILocation(line: 256, column: 12, scope: !779)
!785 = !DILocation(line: 256, column: 5, scope: !779)
!786 = !DILocation(line: 258, column: 8, scope: !787)
!787 = distinct !DILexicalBlock(scope: !764, file: !6, line: 257, column: 7)
!788 = !DILocation(line: 258, column: 10, scope: !787)
!789 = !DILocation(line: 258, column: 37, scope: !787)
!790 = !DILocation(line: 257, column: 7, scope: !764)
!791 = !DILocation(line: 259, column: 5, scope: !787)
!792 = !DILocation(line: 260, column: 30, scope: !793)
!793 = distinct !DILexicalBlock(scope: !764, file: !6, line: 260, column: 7)
!794 = !DILocation(line: 260, column: 32, scope: !793)
!795 = !DILocation(line: 260, column: 59, scope: !793)
!796 = !DILocation(line: 260, column: 7, scope: !764)
!797 = !DILocation(line: 261, column: 5, scope: !793)
!798 = !DILocation(line: 262, column: 30, scope: !764)
!799 = !DILocation(line: 262, column: 10, scope: !764)
!800 = !DILocation(line: 262, column: 3, scope: !764)
!801 = !DILocation(line: 263, column: 1, scope: !764)
!802 = distinct !DISubprogram(name: "get_file", scope: !3, file: !3, line: 58, type: !404, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !52)
!803 = !DILocalVariable(name: "o", arg: 1, scope: !802, file: !3, line: 58, type: !241)
!804 = !DILocation(line: 58, column: 27, scope: !802)
!805 = !DILocalVariable(name: "arg", arg: 2, scope: !802, file: !3, line: 58, type: !20)
!806 = !DILocation(line: 58, column: 36, scope: !802)
!807 = !DILocalVariable(name: "s", scope: !802, file: !3, line: 59, type: !435)
!808 = !DILocation(line: 59, column: 20, scope: !802)
!809 = !DILocation(line: 59, column: 24, scope: !802)
!810 = !DILocation(line: 60, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !802, file: !3, line: 60, column: 7)
!812 = !DILocation(line: 60, column: 7, scope: !802)
!813 = !DILocalVariable(name: "key", scope: !814, file: !3, line: 61, type: !40)
!814 = distinct !DILexicalBlock(scope: !811, file: !3, line: 60, column: 10)
!815 = !DILocation(line: 61, column: 12, scope: !814)
!816 = !DILocation(line: 61, column: 33, scope: !814)
!817 = !DILocation(line: 61, column: 18, scope: !814)
!818 = !DILocation(line: 61, column: 59, scope: !814)
!819 = !DILocation(line: 62, column: 16, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !3, line: 62, column: 9)
!821 = !DILocation(line: 62, column: 9, scope: !820)
!822 = !DILocation(line: 62, column: 28, scope: !820)
!823 = !DILocation(line: 62, column: 9, scope: !814)
!824 = !DILocation(line: 62, column: 50, scope: !825)
!825 = distinct !DILexicalBlock(scope: !820, file: !3, line: 62, column: 34)
!826 = !DILocation(line: 62, column: 36, scope: !825)
!827 = !DILocation(line: 62, column: 39, scope: !825)
!828 = !DILocation(line: 62, column: 48, scope: !825)
!829 = !DILocation(line: 62, column: 53, scope: !825)
!830 = !DILocation(line: 63, column: 21, scope: !831)
!831 = distinct !DILexicalBlock(scope: !820, file: !3, line: 63, column: 14)
!832 = !DILocation(line: 63, column: 14, scope: !831)
!833 = !DILocation(line: 63, column: 33, scope: !831)
!834 = !DILocation(line: 63, column: 14, scope: !820)
!835 = !DILocation(line: 63, column: 55, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !3, line: 63, column: 39)
!837 = !DILocation(line: 63, column: 41, scope: !836)
!838 = !DILocation(line: 63, column: 44, scope: !836)
!839 = !DILocation(line: 63, column: 53, scope: !836)
!840 = !DILocation(line: 63, column: 58, scope: !836)
!841 = !DILocation(line: 64, column: 3, scope: !814)
!842 = !DILocation(line: 65, column: 3, scope: !802)
