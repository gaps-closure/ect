; ModuleID = 'websockets.mod.c'
source_filename = "websockets.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.websocket_packet_info_s = type { i64, i8, i8 }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ws_s = type { %struct.fio_protocol_s, i64, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (i64, i8*)*, i8*, i64, %struct.fio_ls_s, i8, %struct.buffer_s, i64, i64, i8, i8 }
%struct.fio_protocol_s = type { void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, i8 (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, i64 }
%struct.fio_ls_s = type { %struct.fio_ls_s*, %struct.fio_ls_s*, i8* }
%struct.buffer_s = type { i8*, i64 }
%struct.http_settings_s = type { void (%struct.http_s*)*, void (%struct.http_s*, i8*, i64)*, void (%struct.http_s*)*, void (%struct.http_settings_s*)*, i8*, i8*, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.http_s = type { %struct.anon, %struct.timespec, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8* }
%struct.anon = type { i8*, i64, i64 }
%struct.websocket_settings_s = type { void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (i64, i8*)*, i8* }
%struct.fio_write_args_s = type { %union.anon, %union.anon.0, i64, i64, i8 }
%union.anon = type { i8* }
%union.anon.0 = type { void (i8*)* }
%struct.fio_msg_metadata_s = type { i64, void (%struct.fio_msg_s*, i8*)*, i8* }
%struct.fio_msg_s = type { i32, %struct.fio_str_info_s, %struct.fio_str_info_s, i8*, i8*, i8 }
%struct.fio_str_s = type { i32, i8, i8, [10 x i8], i64, i64, void (i8*)*, i8* }
%struct.websocket_subscribe_s = type { %struct.ws_s*, %struct.fio_str_info_s, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (i8*)*, i8*, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)*, i8 }
%struct.websocket_sub_data_s = type { void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (i8*)*, i8* }
%struct.subscription_s = type opaque
%struct.subscribe_args_s = type { i32, %struct.fio_str_info_s, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)*, void (%struct.fio_msg_s*)*, void (i8*, i8*)*, i8*, i8* }
%struct.fiobj_object_header_s = type { i8, i32 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"FATAL: memory allocation error websockets.mod.c:333\00", align 1
@websocket_optimize4broadcasts.generic = internal global i64 0, align 8
@websocket_optimize4broadcasts.text = internal global i64 0, align 8
@websocket_optimize4broadcasts.binary = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"FATAL: memory allocation error websockets.mod.c:635\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\88\00\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@__const.websocket_buffer_peek.info = private unnamed_addr constant %struct.websocket_packet_info_s { i64 0, i8 2, i8 0 }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.6 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.8 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.10 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0) }, align 8
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"\89\80mask\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\89\00\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\8A\80MASK\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\8A\00\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\89\80MASK\00", align 1
@fio_str_utf8_map = internal global [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\05\05\05\05\05\05\05\05\02\02\02\02\03\03\04\00", align 16
@__const.fio_reschedule_thread.tm = private unnamed_addr constant %struct.timespec { i64 0, i64 1 }, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:3313\00", align 1

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
define weak dso_local { i8*, i64 } @create_ws_buffer(%struct.ws_s*) #0 {
  %2 = alloca %struct.buffer_s, align 8
  %3 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %3, align 8
  %4 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %5 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 1
  store i64 4096, i64* %5, align 8
  %6 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call noalias i8* @malloc(i64 %7) #1
  %9 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = bitcast %struct.buffer_s* %2 to { i8*, i64 }*
  %11 = load { i8*, i64 }, { i8*, i64 }* %10, align 8
  ret { i8*, i64 } %11
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local { i8*, i64 } @resize_ws_buffer(%struct.ws_s*, i8*, i64) #0 {
  %4 = alloca %struct.buffer_s, align 8
  %5 = alloca %struct.buffer_s, align 8
  %6 = alloca %struct.ws_s*, align 8
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.buffer_s* %5 to { i8*, i64 }*
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0
  store i8* %1, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 8
  store %struct.ws_s* %0, %struct.ws_s** %6, align 8
  %11 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %12, 12
  %14 = add i64 %13, 1
  %15 = shl i64 %14, 12
  %16 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 1
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @realloc(i8* %18, i64 %20) #1
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %3
  %25 = load %struct.ws_s*, %struct.ws_s** %6, align 8
  %26 = bitcast %struct.buffer_s* %5 to { i8*, i64 }*
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  call void @free_ws_buffer(%struct.ws_s* %25, i8* %28, i64 %30)
  %31 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 0
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %24, %3
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = bitcast %struct.buffer_s* %4 to i8*
  %37 = bitcast %struct.buffer_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = bitcast %struct.buffer_s* %4 to { i8*, i64 }*
  %39 = load { i8*, i64 }, { i8*, i64 }* %38, align 8
  ret { i8*, i64 } %39
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @free_ws_buffer(%struct.ws_s*, i8*, i64) #0 {
  %4 = alloca %struct.buffer_s, align 8
  %5 = alloca %struct.ws_s*, align 8
  %6 = bitcast %struct.buffer_s* %4 to { i8*, i64 }*
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 8
  store %struct.ws_s* %0, %struct.ws_s** %5, align 8
  %9 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %10 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %4, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  call void @free(i8* %11) #1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @websocket_attach(i64, %struct.http_settings_s*, %struct.websocket_settings_s*, i8*, i64) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.http_settings_s*, align 8
  %8 = alloca %struct.websocket_settings_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ws_s*, align 8
  %12 = alloca %struct.buffer_s, align 8
  %13 = alloca %struct.buffer_s, align 8
  store i64 %0, i64* %6, align 8
  store %struct.http_settings_s* %1, %struct.http_settings_s** %7, align 8
  store %struct.websocket_settings_s* %2, %struct.websocket_settings_s** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.ws_s* @new_websocket(i64 %14)
  store %struct.ws_s* %15, %struct.ws_s** %11, align 8
  %16 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %17 = icmp ne %struct.ws_s* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %21 = icmp sle i32 1, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23
  %25 = call i32 @kill(i32 0, i32 2) #1
  %26 = call i32* @__errno_location() #7
  %27 = load i32, i32* %26, align 4
  call void @exit(i32 %27) #8
  unreachable

28:                                               ; preds = %5
  %29 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %30 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %29, i32 0, i32 11
  %31 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %32 = call { i8*, i64 } @create_ws_buffer(%struct.ws_s* %31)
  %33 = bitcast %struct.buffer_s* %12 to { i8*, i64 }*
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i8*, i64 } %32, 0
  store i8* %35, i8** %34, align 8
  %36 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i8*, i64 } %32, 1
  store i64 %37, i64* %36, align 8
  %38 = bitcast %struct.buffer_s* %30 to i8*
  %39 = bitcast %struct.buffer_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8
  %41 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %40, i32 0, i32 1
  %42 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %41, align 8
  %43 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %44 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %43, i32 0, i32 5
  store void (%struct.ws_s*)* %42, void (%struct.ws_s*)** %44, align 8
  %45 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8
  %46 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %45, i32 0, i32 4
  %47 = load void (i64, i8*)*, void (i64, i8*)** %46, align 8
  %48 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %49 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %48, i32 0, i32 6
  store void (i64, i8*)* %47, void (i64, i8*)** %49, align 8
  %50 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8
  %51 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %50, i32 0, i32 0
  %52 = load void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %51, align 8
  %53 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %54 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %53, i32 0, i32 2
  store void (%struct.ws_s*, %struct.fio_str_info_s*, i8)* %52, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %54, align 8
  %55 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8
  %56 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %55, i32 0, i32 2
  %57 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %56, align 8
  %58 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %59 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %58, i32 0, i32 4
  store void (%struct.ws_s*)* %57, void (%struct.ws_s*)** %59, align 8
  %60 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8
  %61 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %60, i32 0, i32 3
  %62 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %61, align 8
  %63 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %64 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %63, i32 0, i32 3
  store void (%struct.ws_s*)* %62, void (%struct.ws_s*)** %64, align 8
  %65 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8
  %66 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %69 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %71 = icmp ne %struct.http_settings_s* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %28
  %73 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %74 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %73, i32 0, i32 18
  %75 = load i8, i8* %74, align 1
  %76 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %77 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %76, i32 0, i32 15
  store i8 %75, i8* %77, align 1
  %78 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %79 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %78, i32 0, i32 14
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %82 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %81, i32 0, i32 8
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %85 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %84, i32 0, i32 16
  %86 = load i8, i8* %85, align 1
  call void @fio_timeout_set(i64 %83, i8 zeroext %86)
  br label %91

87:                                               ; preds = %28
  %88 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %89 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %88, i32 0, i32 8
  store i64 262144, i64* %89, align 8
  %90 = load i64, i64* %6, align 8
  call void @fio_timeout_set(i64 %90, i8 zeroext 40)
  br label %91

91:                                               ; preds = %87, %72
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %148

94:                                               ; preds = %91
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %148

97:                                               ; preds = %94
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %100 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %99, i32 0, i32 11
  %101 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ugt i64 %98, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %97
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %107 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %106, i32 0, i32 11
  %108 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %107, i32 0, i32 1
  store i64 %105, i64* %108, align 8
  %109 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %110 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %109, i32 0, i32 11
  %111 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %112 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %113 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %112, i32 0, i32 11
  %114 = bitcast %struct.buffer_s* %113 to { i8*, i64 }*
  %115 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %114, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call { i8*, i64 } @resize_ws_buffer(%struct.ws_s* %111, i8* %116, i64 %118)
  %120 = bitcast %struct.buffer_s* %13 to { i8*, i64 }*
  %121 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %120, i32 0, i32 0
  %122 = extractvalue { i8*, i64 } %119, 0
  store i8* %122, i8** %121, align 8
  %123 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %120, i32 0, i32 1
  %124 = extractvalue { i8*, i64 } %119, 1
  store i64 %124, i64* %123, align 8
  %125 = bitcast %struct.buffer_s* %110 to i8*
  %126 = bitcast %struct.buffer_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 16, i1 false)
  %127 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %128 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %127, i32 0, i32 11
  %129 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %104
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %135 = bitcast %struct.ws_s* %134 to %struct.fio_protocol_s*
  call void @fio_attach(i64 %133, %struct.fio_protocol_s* %135)
  %136 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  call void @websocket_close(%struct.ws_s* %136)
  br label %153

137:                                              ; preds = %104
  br label %138

138:                                              ; preds = %137, %97
  %139 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %140 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %139, i32 0, i32 11
  %141 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i64, i64* %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %142, i8* align 1 %143, i64 %144, i1 false)
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %147 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %146, i32 0, i32 12
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %138, %94, %91
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.ws_s*, %struct.ws_s** %11, align 8
  %151 = bitcast %struct.ws_s* %150 to %struct.fio_protocol_s*
  call void @fio_attach(i64 %149, %struct.fio_protocol_s* %151)
  %152 = load i64, i64* %6, align 8
  call void @fio_force_event(i64 %152, i32 0)
  br label %153

153:                                              ; preds = %148, %132
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ws_s* @new_websocket(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ws_s*, align 8
  %4 = alloca %struct.ws_s, align 8
  store i64 %0, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 184) #1
  %6 = bitcast i8* %5 to %struct.ws_s*
  store %struct.ws_s* %6, %struct.ws_s** %3, align 8
  %7 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %8 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 0
  %9 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 0
  store void (i64, %struct.fio_protocol_s*)* @on_data_first, void (i64, %struct.fio_protocol_s*)** %9, align 8
  %10 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 1
  store void (i64, %struct.fio_protocol_s*)* null, void (i64, %struct.fio_protocol_s*)** %10, align 8
  %11 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 2
  store i8 (i64, %struct.fio_protocol_s*)* @on_shutdown, i8 (i64, %struct.fio_protocol_s*)** %11, align 8
  %12 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 3
  store void (i64, %struct.fio_protocol_s*)* @on_close, void (i64, %struct.fio_protocol_s*)** %12, align 8
  %13 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 4
  store void (i64, %struct.fio_protocol_s*)* @ws_ping, void (i64, %struct.fio_protocol_s*)** %13, align 8
  %14 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 1
  %16 = load i64, i64* %2, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 2
  store void (%struct.ws_s*, %struct.fio_str_info_s*, i8)* null, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %17, align 8
  %18 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 3
  store void (%struct.ws_s*)* null, void (%struct.ws_s*)** %18, align 8
  %19 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 4
  store void (%struct.ws_s*)* null, void (%struct.ws_s*)** %19, align 8
  %20 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 5
  store void (%struct.ws_s*)* null, void (%struct.ws_s*)** %20, align 8
  %21 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 6
  store void (i64, i8*)* null, void (i64, i8*)** %21, align 8
  %22 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 7
  store i8* null, i8** %22, align 8
  %23 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 9
  %25 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %24, i32 0, i32 0
  %26 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %27 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %26, i32 0, i32 9
  store %struct.fio_ls_s* %27, %struct.fio_ls_s** %25, align 8
  %28 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %24, i32 0, i32 1
  %29 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %30 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %29, i32 0, i32 9
  store %struct.fio_ls_s* %30, %struct.fio_ls_s** %28, align 8
  %31 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %24, i32 0, i32 2
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 10
  store volatile i8 0, i8* %32, align 8
  %33 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 11
  %34 = bitcast %struct.buffer_s* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 16, i1 false)
  %35 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 13
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 14
  store i8 0, i8* %37, align 8
  %38 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 15
  store i8 0, i8* %38, align 1
  %39 = bitcast %struct.ws_s* %7 to i8*
  %40 = bitcast %struct.ws_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 184, i1 true)
  %41 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  ret %struct.ws_s* %41
}

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

declare dso_local void @fio_timeout_set(i64, i8 zeroext) #4

declare dso_local void @fio_attach(i64, %struct.fio_protocol_s*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @websocket_close(%struct.ws_s*) #0 {
  %2 = alloca %struct.ws_s*, align 8
  %3 = alloca %struct.fio_write_args_s, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  %4 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %5 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 0
  %8 = bitcast %union.anon* %7 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 1
  %10 = bitcast %union.anon.0* %9 to void (i8*)**
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %10, align 8
  %11 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 2
  store i64 2, i64* %11, align 8
  %12 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 4
  %14 = load i8, i8* %13, align 8
  %15 = and i8 %14, -2
  store i8 %15, i8* %13, align 8
  %16 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 4
  %17 = load i8, i8* %16, align 8
  %18 = and i8 %17, -3
  store i8 %18, i8* %16, align 8
  %19 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 4
  %20 = load i8, i8* %19, align 8
  %21 = and i8 %20, -5
  store i8 %21, i8* %19, align 8
  %22 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 4
  %23 = load i8, i8* %22, align 8
  %24 = and i8 %23, -9
  store i8 %24, i8* %22, align 8
  %25 = call i64 @fio_write2_fn(i64 %6, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %3)
  %26 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %27 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  call void @fio_close(i64 %28)
  ret void
}

declare dso_local void @fio_force_event(i64, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @websocket_optimize4broadcasts(i64, i32) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* %3, align 8
  %12 = sub nsw i64 0, %11
  switch i64 %12, label %16 [
    i64 32, label %13
    i64 33, label %14
    i64 34, label %15
  ]

13:                                               ; preds = %2
  store i64* @websocket_optimize4broadcasts.generic, i64** %6, align 8
  store void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* @websocket_optimize_generic, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8
  br label %17

14:                                               ; preds = %2
  store i64* @websocket_optimize4broadcasts.text, i64** %6, align 8
  store void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* @websocket_optimize_text, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8
  br label %17

15:                                               ; preds = %2
  store i64* @websocket_optimize4broadcasts.binary, i64** %6, align 8
  store void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* @websocket_optimize_binary, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8
  br label %17

16:                                               ; preds = %2
  br label %40

17:                                               ; preds = %15, %14, %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i64*, i64** %6, align 8
  store i64 1, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = atomicrmw add i64* %21, i64 %22 seq_cst
  %24 = add i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)*, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8
  call void @fio_message_metadata_callback_set(void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* %28, i32 1)
  br label %29

29:                                               ; preds = %27, %20
  br label %40

30:                                               ; preds = %17
  %31 = load i64*, i64** %6, align 8
  store i64 1, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = atomicrmw sub i64* %31, i64 %32 seq_cst
  %34 = sub i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)*, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8
  call void @fio_message_metadata_callback_set(void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* %38, i32 0)
  br label %39

39:                                               ; preds = %37, %30
  br label %40

40:                                               ; preds = %16, %39, %29
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize_generic(%struct.fio_msg_metadata_s* noalias sret, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, i8 zeroext) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.fio_str_s, align 8
  %7 = alloca i8, align 1
  store i8 %3, i8* %5, align 1
  %8 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 0
  store volatile i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 1
  store i8 0, i8* %9, align 4
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 2
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 3
  %12 = bitcast [10 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %12, i8 0, i64 10, i1 false)
  %13 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 5
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 6
  store void (i8*)* @free, void (i8*)** %17, align 8
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 7
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %18, align 8
  %21 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 6
  store void (i8*)* null, void (i8*)** %21, align 8
  store i8 2, i8* %7, align 1
  %22 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ule i64 %23, 1048576
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = call i64 @fio_str_utf8_valid(%struct.fio_str_s* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8 1, i8* %7, align 1
  br label %29

29:                                               ; preds = %28, %25, %4
  %30 = load i8, i8* %7, align 1
  call void @websocket_optimize(%struct.fio_msg_metadata_s* sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext %30)
  %31 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 0
  store i64 -32, i64* %31, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize_text(%struct.fio_msg_metadata_s* noalias sret, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, i8 zeroext) #0 {
  %5 = alloca i8, align 1
  store i8 %3, i8* %5, align 1
  call void @websocket_optimize(%struct.fio_msg_metadata_s* sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext 1)
  %6 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 0
  store i64 -33, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize_binary(%struct.fio_msg_metadata_s* noalias sret, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, i8 zeroext) #0 {
  %5 = alloca i8, align 1
  store i8 %3, i8* %5, align 1
  call void @websocket_optimize(%struct.fio_msg_metadata_s* sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext 2)
  %6 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 0
  store i64 -34, i64* %6, align 8
  ret void
}

declare dso_local void @fio_message_metadata_callback_set(void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @websocket_subscribe(%struct.websocket_subscribe_s* byval(%struct.websocket_subscribe_s) align 8) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.websocket_sub_data_s*, align 8
  %4 = alloca %struct.websocket_sub_data_s, align 8
  %5 = alloca void (%struct.fio_msg_s*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.subscription_s*, align 8
  %8 = alloca %struct.subscribe_args_s, align 8
  %9 = alloca %struct.fio_ls_s*, align 8
  %10 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0
  %11 = load %struct.ws_s*, %struct.ws_s** %10, align 8
  %12 = icmp ne %struct.ws_s* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0
  %15 = load %struct.ws_s*, %struct.ws_s** %14, align 8
  %16 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @fio_is_valid(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %1
  br label %116

21:                                               ; preds = %13
  %22 = call noalias i8* @malloc(i64 24) #1
  %23 = bitcast i8* %22 to %struct.websocket_sub_data_s*
  store %struct.websocket_sub_data_s* %23, %struct.websocket_sub_data_s** %3, align 8
  %24 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %3, align 8
  %25 = icmp ne %struct.websocket_sub_data_s* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %29 = icmp sle i32 1, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31
  %33 = call i32 @kill(i32 0, i32 2) #1
  %34 = call i32* @__errno_location() #7
  %35 = load i32, i32* %34, align 4
  call void @exit(i32 %35) #8
  unreachable

36:                                               ; preds = %21
  %37 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %3, align 8
  %38 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %4, i32 0, i32 0
  %39 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 2
  %40 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %39, align 8
  store void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %40, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %38, align 8
  %41 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %4, i32 0, i32 1
  %42 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 3
  %43 = load void (i8*)*, void (i8*)** %42, align 8
  store void (i8*)* %43, void (i8*)** %41, align 8
  %44 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %4, i32 0, i32 2
  %45 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %44, align 8
  %47 = bitcast %struct.websocket_sub_data_s* %37 to i8*
  %48 = bitcast %struct.websocket_sub_data_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  store void (%struct.fio_msg_s*)* @websocket_on_pubsub_message, void (%struct.fio_msg_s*)** %5, align 8
  %49 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 2
  %50 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %49, align 8
  %51 = icmp ne void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %50, null
  br i1 %51, label %75, label %52

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 6
  %54 = load i8, i8* %53, align 8
  %55 = and i8 %54, 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i64 -34, i64* %6, align 8
  store void (%struct.fio_msg_s*)* @websocket_on_pubsub_message_direct_bin, void (%struct.fio_msg_s*)** %5, align 8
  br label %69

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 6
  %61 = load i8, i8* %60, align 8
  %62 = lshr i8 %61, 1
  %63 = and i8 %62, 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i64 -33, i64* %6, align 8
  store void (%struct.fio_msg_s*)* @websocket_on_pubsub_message_direct_txt, void (%struct.fio_msg_s*)** %5, align 8
  br label %68

67:                                               ; preds = %59
  store i64 -32, i64* %6, align 8
  store void (%struct.fio_msg_s*)* @websocket_on_pubsub_message_direct, void (%struct.fio_msg_s*)** %5, align 8
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i64, i64* %6, align 8
  call void @websocket_optimize4broadcasts(i64 %70, i32 1)
  %71 = load i64, i64* %6, align 8
  %72 = inttoptr i64 %71 to void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*
  %73 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %3, align 8
  %74 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %73, i32 0, i32 0
  store void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %72, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %74, align 8
  br label %75

75:                                               ; preds = %69, %36
  %76 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 1
  %78 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 1
  %79 = bitcast %struct.fio_str_info_s* %77 to i8*
  %80 = bitcast %struct.fio_str_info_s* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 24, i1 false)
  %81 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 2
  %82 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 5
  %83 = load i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)*, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)** %82, align 8
  store i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)* %83, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)** %81, align 8
  %84 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 3
  %85 = load void (%struct.fio_msg_s*)*, void (%struct.fio_msg_s*)** %5, align 8
  store void (%struct.fio_msg_s*)* %85, void (%struct.fio_msg_s*)** %84, align 8
  %86 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 4
  store void (i8*, i8*)* @websocket_on_unsubscribe, void (i8*, i8*)** %86, align 8
  %87 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 5
  %88 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0
  %89 = load %struct.ws_s*, %struct.ws_s** %88, align 8
  %90 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** %87, align 8
  %93 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 6
  %94 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %3, align 8
  %95 = bitcast %struct.websocket_sub_data_s* %94 to i8*
  store i8* %95, i8** %93, align 8
  %96 = call %struct.subscription_s* @fio_subscribe(%struct.subscribe_args_s* byval(%struct.subscribe_args_s) align 8 %8)
  store %struct.subscription_s* %96, %struct.subscription_s** %7, align 8
  %97 = load %struct.subscription_s*, %struct.subscription_s** %7, align 8
  %98 = icmp ne %struct.subscription_s* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %75
  store i64 0, i64* %2, align 8
  br label %126

100:                                              ; preds = %75
  %101 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0
  %102 = load %struct.ws_s*, %struct.ws_s** %101, align 8
  %103 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %102, i32 0, i32 10
  call void @fio_lock(i8* %103)
  %104 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0
  %105 = load %struct.ws_s*, %struct.ws_s** %104, align 8
  %106 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %105, i32 0, i32 9
  %107 = load %struct.subscription_s*, %struct.subscription_s** %7, align 8
  %108 = bitcast %struct.subscription_s* %107 to i8*
  %109 = call %struct.fio_ls_s* @fio_ls_push(%struct.fio_ls_s* %106, i8* %108)
  store %struct.fio_ls_s* %109, %struct.fio_ls_s** %9, align 8
  %110 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0
  %111 = load %struct.ws_s*, %struct.ws_s** %110, align 8
  %112 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %111, i32 0, i32 10
  %113 = call i32 @fio_unlock(i8* %112)
  %114 = load %struct.fio_ls_s*, %struct.fio_ls_s** %9, align 8
  %115 = ptrtoint %struct.fio_ls_s* %114 to i64
  store i64 %115, i64* %2, align 8
  br label %126

116:                                              ; preds = %20
  %117 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 3
  %118 = load void (i8*)*, void (i8*)** %117, align 8
  %119 = icmp ne void (i8*)* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 3
  %122 = load void (i8*)*, void (i8*)** %121, align 8
  %123 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  call void %122(i8* %124)
  br label %125

125:                                              ; preds = %120, %116
  store i64 0, i64* %2, align 8
  br label %126

126:                                              ; preds = %125, %100, %99
  %127 = load i64, i64* %2, align 8
  ret i64 %127
}

declare dso_local i32 @fio_is_valid(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message(%struct.fio_msg_s*) #0 {
  %2 = alloca %struct.fio_msg_s*, align 8
  %3 = alloca %struct.fio_protocol_s*, align 8
  %4 = alloca %struct.websocket_sub_data_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  %5 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  %6 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %5, i32 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = call %struct.fio_protocol_s* @fio_protocol_try_lock(i64 %8, i32 0)
  store %struct.fio_protocol_s* %9, %struct.fio_protocol_s** %3, align 8
  %10 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %3, align 8
  %11 = icmp ne %struct.fio_protocol_s* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = call i32* @__errno_location() #7
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %43

17:                                               ; preds = %12
  %18 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  call void @fio_message_defer(%struct.fio_msg_s* %18)
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  %21 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.websocket_sub_data_s*
  store %struct.websocket_sub_data_s* %23, %struct.websocket_sub_data_s** %4, align 8
  %24 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %4, align 8
  %25 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %24, i32 0, i32 0
  %26 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %25, align 8
  %27 = icmp ne void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %4, align 8
  %30 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %29, i32 0, i32 0
  %31 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %30, align 8
  %32 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %3, align 8
  %33 = bitcast %struct.fio_protocol_s* %32 to %struct.ws_s*
  %34 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  %35 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %34, i32 0, i32 1
  %36 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  %37 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %36, i32 0, i32 2
  %38 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %4, align 8
  %39 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  call void %31(%struct.ws_s* %33, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %35, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %37, i8* %40)
  br label %41

41:                                               ; preds = %28, %19
  %42 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %3, align 8
  call void @fio_protocol_unlock(%struct.fio_protocol_s* %42, i32 0)
  br label %43

43:                                               ; preds = %41, %17, %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message_direct_bin(%struct.fio_msg_s*) #0 {
  %2 = alloca %struct.fio_msg_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  %3 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  call void @websocket_on_pubsub_message_direct_internal(%struct.fio_msg_s* %3, i8 zeroext 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message_direct_txt(%struct.fio_msg_s*) #0 {
  %2 = alloca %struct.fio_msg_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  %3 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  call void @websocket_on_pubsub_message_direct_internal(%struct.fio_msg_s* %3, i8 zeroext 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message_direct(%struct.fio_msg_s*) #0 {
  %2 = alloca %struct.fio_msg_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  %3 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  call void @websocket_on_pubsub_message_direct_internal(%struct.fio_msg_s* %3, i8 zeroext 2)
  ret void
}

declare dso_local %struct.subscription_s* @fio_subscribe(%struct.subscribe_args_s* byval(%struct.subscribe_args_s) align 8) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_unsubscribe(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.websocket_sub_data_s*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.websocket_sub_data_s*
  store %struct.websocket_sub_data_s* %7, %struct.websocket_sub_data_s** %5, align 8
  %8 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8
  %9 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %8, i32 0, i32 1
  %10 = load void (i8*)*, void (i8*)** %9, align 8
  %11 = icmp ne void (i8*)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8
  %14 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %13, i32 0, i32 1
  %15 = load void (i8*)*, void (i8*)** %14, align 8
  %16 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8
  %17 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  call void %15(i8* %18)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8
  %21 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %20, i32 0, i32 0
  %22 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %21, align 8
  %23 = ptrtoint void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %22 to i64
  %24 = icmp eq i64 %23, -32
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call void @websocket_optimize4broadcasts(i64 -32, i32 0)
  br label %42

26:                                               ; preds = %19
  %27 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8
  %28 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %27, i32 0, i32 0
  %29 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %28, align 8
  %30 = ptrtoint void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %29 to i64
  %31 = icmp eq i64 %30, -33
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  call void @websocket_optimize4broadcasts(i64 -33, i32 0)
  br label %41

33:                                               ; preds = %26
  %34 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8
  %35 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %34, i32 0, i32 0
  %36 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %35, align 8
  %37 = ptrtoint void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %36 to i64
  %38 = icmp eq i64 %37, -34
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  call void @websocket_optimize4broadcasts(i64 -34, i32 0)
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %32
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8
  %44 = bitcast %struct.websocket_sub_data_s* %43 to i8*
  call void @free(i8* %44) #1
  %45 = load i8*, i8** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_lock(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @fio_trylock(i8* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @fio_reschedule_thread()
  br label %3

8:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fio_ls_s* @fio_ls_push(%struct.fio_ls_s*, i8*) #0 {
  %3 = alloca %struct.fio_ls_s*, align 8
  %4 = alloca %struct.fio_ls_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fio_ls_s*, align 8
  %7 = alloca %struct.fio_ls_s, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %9 = icmp ne %struct.fio_ls_s* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.fio_ls_s* null, %struct.fio_ls_s** %3, align 8
  br label %47

11:                                               ; preds = %2
  %12 = call noalias i8* @calloc(i64 24, i64 1) #1
  %13 = bitcast i8* %12 to %struct.fio_ls_s*
  store %struct.fio_ls_s* %13, %struct.fio_ls_s** %6, align 8
  %14 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  %15 = icmp ne %struct.fio_ls_s* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %19 = icmp sle i32 1, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  br label %21

21:                                               ; preds = %20, %17
  br label %22

22:                                               ; preds = %21
  %23 = call i32 @kill(i32 0, i32 2) #1
  %24 = call i32* @__errno_location() #7
  %25 = load i32, i32* %24, align 4
  call void @exit(i32 %25) #8
  unreachable

26:                                               ; preds = %11
  %27 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  %28 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 0
  %29 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %30 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %29, i32 0, i32 0
  %31 = load %struct.fio_ls_s*, %struct.fio_ls_s** %30, align 8
  store %struct.fio_ls_s* %31, %struct.fio_ls_s** %28, align 8
  %32 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 1
  %33 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  store %struct.fio_ls_s* %33, %struct.fio_ls_s** %32, align 8
  %34 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 2
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %34, align 8
  %36 = bitcast %struct.fio_ls_s* %27 to i8*
  %37 = bitcast %struct.fio_ls_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false)
  %38 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  %39 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %40 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %39, i32 0, i32 0
  %41 = load %struct.fio_ls_s*, %struct.fio_ls_s** %40, align 8
  %42 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %41, i32 0, i32 1
  store %struct.fio_ls_s* %38, %struct.fio_ls_s** %42, align 8
  %43 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  %44 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %45 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %44, i32 0, i32 0
  store %struct.fio_ls_s* %43, %struct.fio_ls_s** %45, align 8
  %46 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  store %struct.fio_ls_s* %46, %struct.fio_ls_s** %3, align 8
  br label %47

47:                                               ; preds = %26, %10
  %48 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  ret %struct.fio_ls_s* %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_unlock(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  %6 = load i8*, i8** %2, align 8
  store i8 0, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = atomicrmw volatile xchg i8* %6, i8 %7 seq_cst
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  store volatile i8 %9, i8* %3, align 1
  %10 = load volatile i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @websocket_unsubscribe(%struct.ws_s*, i64) #0 {
  %3 = alloca %struct.ws_s*, align 8
  %4 = alloca i64, align 8
  store %struct.ws_s* %0, %struct.ws_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to %struct.fio_ls_s*
  %7 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.subscription_s*
  call void @fio_unsubscribe(%struct.subscription_s* %9)
  %10 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %11 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %10, i32 0, i32 10
  call void @fio_lock(i8* %11)
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.fio_ls_s*
  %14 = call i8* @fio_ls_remove(%struct.fio_ls_s* %13)
  %15 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %16 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %15, i32 0, i32 10
  %17 = call i32 @fio_unlock(i8* %16)
  %18 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  ret void
}

declare dso_local void @fio_unsubscribe(%struct.subscription_s*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_ls_remove(%struct.fio_ls_s*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fio_ls_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %3, align 8
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %6 = icmp ne %struct.fio_ls_s* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %9 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %8, i32 0, i32 1
  %10 = load %struct.fio_ls_s*, %struct.fio_ls_s** %9, align 8
  %11 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %12 = icmp eq %struct.fio_ls_s* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8
  br label %35

14:                                               ; preds = %7
  %15 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %16 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  %18 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %19 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %18, i32 0, i32 0
  %20 = load %struct.fio_ls_s*, %struct.fio_ls_s** %19, align 8
  %21 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %22 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %21, i32 0, i32 1
  %23 = load %struct.fio_ls_s*, %struct.fio_ls_s** %22, align 8
  %24 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %23, i32 0, i32 0
  store %struct.fio_ls_s* %20, %struct.fio_ls_s** %24, align 8
  %25 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %26 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %25, i32 0, i32 1
  %27 = load %struct.fio_ls_s*, %struct.fio_ls_s** %26, align 8
  %28 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %29 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %28, i32 0, i32 0
  %30 = load %struct.fio_ls_s*, %struct.fio_ls_s** %29, align 8
  %31 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %30, i32 0, i32 1
  store %struct.fio_ls_s* %27, %struct.fio_ls_s** %31, align 8
  %32 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %33 = bitcast %struct.fio_ls_s* %32 to i8*
  call void @free(i8* %33) #1
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %14, %13
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @websocket_udata_get(%struct.ws_s*) #0 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 7
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @websocket_uuid(%struct.ws_s*) #0 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @websocket_udata_set(%struct.ws_s*, i8*) #0 {
  %3 = alloca %struct.ws_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %7 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %6, i32 0, i32 7
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %11 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %10, i32 0, i32 7
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @websocket_is_client(%struct.ws_s*) #0 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 15
  %5 = load i8, i8* %4, align 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @websocket_write(%struct.ws_s*, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, i8 zeroext) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ws_s*, align 8
  %6 = alloca i8, align 1
  store %struct.ws_s* %0, %struct.ws_s** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %8 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @fio_is_valid(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %14 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i8, i8* %6, align 1
  %21 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %22 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %21, i32 0, i32 15
  %23 = load i8, i8* %22, align 1
  call void @websocket_write_impl(i64 %15, i8* %17, i64 %19, i8 signext %20, i8 signext 1, i8 signext 1, i8 signext %23)
  store i32 0, i32* %4, align 4
  br label %25

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_write_impl(i64, i8*, i64, i8 signext, i8 signext, i8 signext, i8 signext) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8 %3, i8* %11, align 1
  store i8 %4, i8* %12, align 1
  store i8 %5, i8* %13, align 1
  store i8 %6, i8* %14, align 1
  %17 = load i64, i64* %10, align 8
  %18 = icmp ule i64 %17, 12288
  br i1 %18, label %19, label %79

19:                                               ; preds = %7
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %20, 16
  %22 = call noalias i8* @fio_malloc(i64 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 15
  %25 = icmp eq i64 %24, 0
  call void @llvm.assume(i1 %25)
  store i8* %22, i8** %15, align 8
  %26 = load i8, i8* %14, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load i8*, i8** %15, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i8, i8* %11, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 2
  %38 = trunc i32 %37 to i8
  %39 = load i8, i8* %12, align 1
  %40 = load i8, i8* %13, align 1
  %41 = call i64 @websocket_client_wrap(i8* %30, i8* %31, i64 %32, i8 zeroext %38, i8 zeroext %39, i8 zeroext %40, i8 zeroext 0)
  br label %55

42:                                               ; preds = %19
  %43 = load i8*, i8** %15, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 2
  %51 = trunc i32 %50 to i8
  %52 = load i8, i8* %12, align 1
  %53 = load i8, i8* %13, align 1
  %54 = call i64 @websocket_server_wrap(i8* %43, i8* %44, i64 %45, i8 zeroext %51, i8 zeroext %52, i8 zeroext %53, i8 zeroext 0)
  br label %55

55:                                               ; preds = %42, %29
  %56 = phi i64 [ %41, %29 ], [ %54, %42 ]
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 0
  %59 = bitcast %union.anon* %58 to i8**
  %60 = load i8*, i8** %15, align 8
  store i8* %60, i8** %59, align 8
  %61 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 1
  %62 = bitcast %union.anon.0* %61 to void (i8*)**
  store void (i8*)* @fio_free, void (i8*)** %62, align 8
  %63 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 2
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 4
  %67 = load i8, i8* %66, align 8
  %68 = and i8 %67, -2
  store i8 %68, i8* %66, align 8
  %69 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 4
  %70 = load i8, i8* %69, align 8
  %71 = and i8 %70, -3
  store i8 %71, i8* %69, align 8
  %72 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 4
  %73 = load i8, i8* %72, align 8
  %74 = and i8 %73, -5
  store i8 %74, i8* %72, align 8
  %75 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 4
  %76 = load i8, i8* %75, align 8
  %77 = and i8 %76, -9
  store i8 %77, i8* %75, align 8
  %78 = call i64 @fio_write2_fn(i64 %57, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %16)
  br label %100

79:                                               ; preds = %7
  br label %80

80:                                               ; preds = %83, %79
  %81 = load i64, i64* %10, align 8
  %82 = icmp ugt i64 %81, 12288
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %11, align 1
  %87 = load i8, i8* %12, align 1
  %88 = load i8, i8* %14, align 1
  call void @websocket_write_impl(i64 %84, i8* %85, i64 12288, i8 signext %86, i8 signext %87, i8 signext 0, i8 signext %88)
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 12288
  store i8* %90, i8** %9, align 8
  store i8 0, i8* %12, align 1
  %91 = load i64, i64* %10, align 8
  %92 = sub i64 %91, 12288
  store i64 %92, i64* %10, align 8
  br label %80

93:                                               ; preds = %80
  %94 = load i64, i64* %8, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i8, i8* %11, align 1
  %98 = load i8, i8* %12, align 1
  %99 = load i8, i8* %14, align 1
  call void @websocket_write_impl(i64 %94, i8* %95, i64 %96, i8 signext %97, i8 signext %98, i8 signext 1, i8 signext %99)
  br label %100

100:                                              ; preds = %93, %55
  ret void
}

declare dso_local i64 @fio_write2_fn(i64, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8) #4

declare dso_local void @FIO_DEALLOC_NOOP(i8*) #4

declare dso_local void @fio_close(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_data_first(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.ws_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.ws_s*
  store %struct.ws_s* %7, %struct.ws_s** %5, align 8
  %8 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %9 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %8, i32 0, i32 5
  %10 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %9, align 8
  %11 = icmp ne void (%struct.ws_s*)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %14 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %13, i32 0, i32 5
  %15 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %14, align 8
  %16 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  call void %15(%struct.ws_s* %16)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %19 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %19, i32 0, i32 0
  store void (i64, %struct.fio_protocol_s*)* @on_data, void (i64, %struct.fio_protocol_s*)** %20, align 8
  %21 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %22 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %22, i32 0, i32 1
  store void (i64, %struct.fio_protocol_s*)* @on_ready, void (i64, %struct.fio_protocol_s*)** %23, align 8
  %24 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %25 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %24, i32 0, i32 12
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %17
  %29 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %30 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %29, i32 0, i32 11
  %31 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %34 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %37 = bitcast %struct.ws_s* %36 to i8*
  %38 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %39 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %38, i32 0, i32 15
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = and i32 %42, 1
  %44 = trunc i32 %43 to i8
  %45 = call i64 @websocket_consume(i8* %32, i64 %35, i8* %37, i8 zeroext %44)
  %46 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %47 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %46, i32 0, i32 12
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %28, %17
  %49 = load i64, i64* %3, align 8
  call void @fio_force_event(i64 %49, i32 0)
  %50 = load i64, i64* %3, align 8
  call void @fio_force_event(i64 %50, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @on_shutdown(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.fio_write_args_s, align 8
  %6 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %9 = icmp ne %struct.fio_protocol_s* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %12 = bitcast %struct.fio_protocol_s* %11 to %struct.ws_s*
  %13 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %12, i32 0, i32 3
  %14 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %13, align 8
  %15 = icmp ne void (%struct.ws_s*)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %18 = bitcast %struct.fio_protocol_s* %17 to %struct.ws_s*
  %19 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %18, i32 0, i32 3
  %20 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %19, align 8
  %21 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %22 = bitcast %struct.fio_protocol_s* %21 to %struct.ws_s*
  call void %20(%struct.ws_s* %22)
  br label %23

23:                                               ; preds = %16, %10, %2
  %24 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %25 = bitcast %struct.fio_protocol_s* %24 to %struct.ws_s*
  %26 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %25, i32 0, i32 15
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 0
  %32 = bitcast %union.anon* %31 to i8**
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 1
  %34 = bitcast %union.anon.0* %33 to void (i8*)**
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %34, align 8
  %35 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 2
  store i64 6, i64* %35, align 8
  %36 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %38 = load i8, i8* %37, align 8
  %39 = and i8 %38, -2
  store i8 %39, i8* %37, align 8
  %40 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %41 = load i8, i8* %40, align 8
  %42 = and i8 %41, -3
  store i8 %42, i8* %40, align 8
  %43 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %44 = load i8, i8* %43, align 8
  %45 = and i8 %44, -5
  store i8 %45, i8* %43, align 8
  %46 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %47 = load i8, i8* %46, align 8
  %48 = and i8 %47, -9
  store i8 %48, i8* %46, align 8
  %49 = call i64 @fio_write2_fn(i64 %30, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %5)
  br label %71

50:                                               ; preds = %23
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 0
  %53 = bitcast %union.anon* %52 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 1
  %55 = bitcast %union.anon.0* %54 to void (i8*)**
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %55, align 8
  %56 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 2
  store i64 2, i64* %56, align 8
  %57 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %59 = load i8, i8* %58, align 8
  %60 = and i8 %59, -2
  store i8 %60, i8* %58, align 8
  %61 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %62 = load i8, i8* %61, align 8
  %63 = and i8 %62, -3
  store i8 %63, i8* %61, align 8
  %64 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %65 = load i8, i8* %64, align 8
  %66 = and i8 %65, -5
  store i8 %66, i8* %64, align 8
  %67 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %68 = load i8, i8* %67, align 8
  %69 = and i8 %68, -9
  store i8 %69, i8* %67, align 8
  %70 = call i64 @fio_write2_fn(i64 %51, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %6)
  br label %71

71:                                               ; preds = %50, %29
  ret i8 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_close(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %5 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %6 = bitcast %struct.fio_protocol_s* %5 to %struct.ws_s*
  call void @destroy_ws(%struct.ws_s* %6)
  %7 = load i64, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_ping(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.fio_write_args_s, align 8
  %6 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %7 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %8 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %9 = bitcast %struct.fio_protocol_s* %8 to %struct.ws_s*
  %10 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %9, i32 0, i32 15
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 0
  %16 = bitcast %union.anon* %15 to i8**
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 1
  %18 = bitcast %union.anon.0* %17 to void (i8*)**
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %18, align 8
  %19 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 2
  store i64 6, i64* %19, align 8
  %20 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %22 = load i8, i8* %21, align 8
  %23 = and i8 %22, -2
  store i8 %23, i8* %21, align 8
  %24 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %25 = load i8, i8* %24, align 8
  %26 = and i8 %25, -3
  store i8 %26, i8* %24, align 8
  %27 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %28 = load i8, i8* %27, align 8
  %29 = and i8 %28, -5
  store i8 %29, i8* %27, align 8
  %30 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %31 = load i8, i8* %30, align 8
  %32 = and i8 %31, -9
  store i8 %32, i8* %30, align 8
  %33 = call i64 @fio_write2_fn(i64 %14, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %5)
  br label %55

34:                                               ; preds = %2
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 0
  %37 = bitcast %union.anon* %36 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 1
  %39 = bitcast %union.anon.0* %38 to void (i8*)**
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %39, align 8
  %40 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 2
  store i64 2, i64* %40, align 8
  %41 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %43 = load i8, i8* %42, align 8
  %44 = and i8 %43, -2
  store i8 %44, i8* %42, align 8
  %45 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %46 = load i8, i8* %45, align 8
  %47 = and i8 %46, -3
  store i8 %47, i8* %45, align 8
  %48 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %49 = load i8, i8* %48, align 8
  %50 = and i8 %49, -5
  store i8 %50, i8* %48, align 8
  %51 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %52 = load i8, i8* %51, align 8
  %53 = and i8 %52, -9
  store i8 %53, i8* %51, align 8
  %54 = call i64 @fio_write2_fn(i64 %35, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %6)
  br label %55

55:                                               ; preds = %34, %13
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_data(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.ws_s*, align 8
  %6 = alloca %struct.websocket_packet_info_s, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_s, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %10 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %11 = bitcast %struct.fio_protocol_s* %10 to %struct.ws_s*
  store %struct.ws_s* %11, %struct.ws_s** %5, align 8
  %12 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %13 = icmp eq %struct.ws_s* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %125

15:                                               ; preds = %2
  %16 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %17 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %21 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %20, i32 0, i32 12
  %22 = load i64, i64* %21, align 8
  %23 = call { i64, i64 } @websocket_buffer_peek(i8* %19, i64 %22)
  %24 = bitcast %struct.websocket_packet_info_s* %6 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %6, i32 0, i32 1
  %32 = load i8, i8* %31, align 8
  %33 = zext i8 %32 to i64
  %34 = add i64 %30, %33
  store i64 %34, i64* %7, align 8
  %35 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %36 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %15
  %41 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  call void @websocket_close(%struct.ws_s* %41)
  br label %125

42:                                               ; preds = %15
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %45 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %44, i32 0, i32 11
  %46 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %43, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %52 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %55 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %54, i32 0, i32 11
  %56 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %57 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %58 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %57, i32 0, i32 11
  %59 = bitcast %struct.buffer_s* %58 to { i8*, i64 }*
  %60 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %59, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call { i8*, i64 } @resize_ws_buffer(%struct.ws_s* %56, i8* %61, i64 %63)
  %65 = bitcast %struct.buffer_s* %8 to { i8*, i64 }*
  %66 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %65, i32 0, i32 0
  %67 = extractvalue { i8*, i64 } %64, 0
  store i8* %67, i8** %66, align 8
  %68 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %65, i32 0, i32 1
  %69 = extractvalue { i8*, i64 } %64, 1
  store i64 %69, i64* %68, align 8
  %70 = bitcast %struct.buffer_s* %55 to i8*
  %71 = bitcast %struct.buffer_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %73 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %72, i32 0, i32 11
  %74 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %49
  %78 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  call void @websocket_close(%struct.ws_s* %78)
  br label %125

79:                                               ; preds = %49
  br label %80

80:                                               ; preds = %79, %42
  %81 = load i64, i64* %3, align 8
  %82 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %83 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %82, i32 0, i32 11
  %84 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %87 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %86, i32 0, i32 12
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %91 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %90, i32 0, i32 11
  %92 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %95 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %94, i32 0, i32 12
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %93, %96
  %98 = call i64 @fio_read(i64 %81, i8* %89, i64 %97)
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %80
  br label %125

102:                                              ; preds = %80
  %103 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %104 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %103, i32 0, i32 11
  %105 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %108 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %107, i32 0, i32 12
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %109, %110
  %112 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %113 = bitcast %struct.ws_s* %112 to i8*
  %114 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %115 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %114, i32 0, i32 15
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = xor i32 %117, -1
  %119 = and i32 %118, 1
  %120 = trunc i32 %119 to i8
  %121 = call i64 @websocket_consume(i8* %106, i64 %111, i8* %113, i8 zeroext %120)
  %122 = load %struct.ws_s*, %struct.ws_s** %5, align 8
  %123 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %122, i32 0, i32 12
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %3, align 8
  call void @fio_force_event(i64 %124, i32 0)
  br label %125

125:                                              ; preds = %102, %101, %77, %40, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_ready(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.ws_s*
  %8 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %7, i32 0, i32 4
  %9 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %8, align 8
  %10 = icmp ne void (%struct.ws_s*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %13 = bitcast %struct.fio_protocol_s* %12 to %struct.ws_s*
  %14 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %13, i32 0, i32 4
  %15 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %14, align 8
  %16 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %17 = bitcast %struct.fio_protocol_s* %16 to %struct.ws_s*
  call void %15(%struct.ws_s* %17)
  br label %18

18:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @websocket_consume(i8*, i64, i8*, i8 zeroext) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.websocket_packet_info_s, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.websocket_packet_info_s, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call { i64, i64 } @websocket_buffer_peek(i8* %16, i64 %17)
  %19 = bitcast %struct.websocket_packet_info_s* %10 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = extractvalue { i64, i64 } %18, 0
  store volatile i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = extractvalue { i64, i64 } %18, 1
  store volatile i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1
  %25 = load volatile i8, i8* %24, align 8
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  call void @websocket_on_protocol_error(i8* %28)
  store i64 0, i64* %5, align 8
  br label %216

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1
  %31 = load volatile i8, i8* %30, align 8
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %34 = load volatile i64, i64* %33, align 8
  %35 = add i64 %32, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %5, align 8
  br label %216

40:                                               ; preds = %29
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %11, align 8
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %12, align 8
  br label %43

43:                                               ; preds = %187, %40
  %44 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1
  %45 = load volatile i8, i8* %44, align 8
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %48 = load volatile i64, i64* %47, align 8
  %49 = add i64 %46, %48
  %50 = load i64, i64* %11, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %206

52:                                               ; preds = %43
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1
  %55 = load volatile i8, i8* %54, align 8
  %56 = zext i8 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8* %58, i8** %13, align 8
  %59 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 2
  %60 = load volatile i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %52
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 -4
  %65 = load i8, i8* %64, align 1
  %66 = bitcast i32* %14 to i8*
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %65, i8* %67, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -3
  %70 = load i8, i8* %69, align 1
  %71 = bitcast i32* %14 to i8*
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 %70, i8* %72, align 1
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -2
  %75 = load i8, i8* %74, align 1
  %76 = bitcast i32* %14 to i8*
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8 %75, i8* %77, align 2
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 -1
  %80 = load i8, i8* %79, align 1
  %81 = bitcast i32* %14 to i8*
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  store i8 %80, i8* %82, align 1
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %85 = load volatile i64, i64* %84, align 8
  %86 = load i32, i32* %14, align 4
  call void @websocket_xmask(i8* %83, i64 %85, i32 %86)
  br label %98

87:                                               ; preds = %52
  %88 = load i8, i8* %9, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %93 = load volatile i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  call void @websocket_on_protocol_error(i8* %96)
  br label %97

97:                                               ; preds = %95, %91, %87
  br label %98

98:                                               ; preds = %97, %62
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 15
  switch i32 %103, label %173 [
    i32 0, label %104
    i32 1, label %123
    i32 2, label %142
    i32 8, label %161
    i32 9, label %163
    i32 10, label %168
  ]

104:                                              ; preds = %98
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %108 = load volatile i64, i64* %107, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = ashr i32 %112, 7
  %114 = and i32 %113, 1
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = ashr i32 %119, 4
  %121 = and i32 %120, 7
  %122 = trunc i32 %121 to i8
  call void @websocket_on_unwrapped(i8* %105, i8* %106, i64 %108, i8 signext 0, i8 signext %115, i8 signext 0, i8 zeroext %122)
  br label %175

123:                                              ; preds = %98
  %124 = load i8*, i8** %8, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %127 = load volatile i64, i64* %126, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = ashr i32 %131, 7
  %133 = and i32 %132, 1
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %12, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = ashr i32 %138, 4
  %140 = and i32 %139, 7
  %141 = trunc i32 %140 to i8
  call void @websocket_on_unwrapped(i8* %124, i8* %125, i64 %127, i8 signext 1, i8 signext %134, i8 signext 1, i8 zeroext %141)
  br label %175

142:                                              ; preds = %98
  %143 = load i8*, i8** %8, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %146 = load volatile i64, i64* %145, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = ashr i32 %150, 7
  %152 = and i32 %151, 1
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %12, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = ashr i32 %157, 4
  %159 = and i32 %158, 7
  %160 = trunc i32 %159 to i8
  call void @websocket_on_unwrapped(i8* %143, i8* %144, i64 %146, i8 signext 1, i8 signext %153, i8 signext 0, i8 zeroext %160)
  br label %175

161:                                              ; preds = %98
  %162 = load i8*, i8** %8, align 8
  call void @websocket_on_protocol_close(i8* %162)
  br label %175

163:                                              ; preds = %98
  %164 = load i8*, i8** %8, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %167 = load volatile i64, i64* %166, align 8
  call void @websocket_on_protocol_ping(i8* %164, i8* %165, i64 %167)
  br label %175

168:                                              ; preds = %98
  %169 = load i8*, i8** %8, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %172 = load volatile i64, i64* %171, align 8
  call void @websocket_on_protocol_pong(i8* %169, i8* %170, i64 %172)
  br label %175

173:                                              ; preds = %98
  %174 = load i8*, i8** %8, align 8
  call void @websocket_on_protocol_error(i8* %174)
  br label %175

175:                                              ; preds = %173, %168, %163, %161, %142, %123, %104
  %176 = load i64, i64* %11, align 8
  %177 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1
  %178 = load volatile i8, i8* %177, align 8
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %181 = load volatile i64, i64* %180, align 8
  %182 = add i64 %179, %181
  %183 = sub i64 %176, %182
  store i64 %183, i64* %11, align 8
  %184 = load i64, i64* %11, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %175
  store i64 0, i64* %5, align 8
  br label %216

187:                                              ; preds = %175
  %188 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1
  %189 = load volatile i8, i8* %188, align 8
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0
  %192 = load volatile i64, i64* %191, align 8
  %193 = add i64 %190, %192
  %194 = load i8*, i8** %12, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 %193
  store i8* %195, i8** %12, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = load i64, i64* %11, align 8
  %198 = call { i64, i64 } @websocket_buffer_peek(i8* %196, i64 %197)
  %199 = bitcast %struct.websocket_packet_info_s* %15 to { i64, i64 }*
  %200 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 0
  %201 = extractvalue { i64, i64 } %198, 0
  store volatile i64 %201, i64* %200, align 8
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 1
  %203 = extractvalue { i64, i64 } %198, 1
  store volatile i64 %203, i64* %202, align 8
  %204 = bitcast %struct.websocket_packet_info_s* %10 to i8*
  %205 = bitcast %struct.websocket_packet_info_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 16, i1 true)
  br label %43

206:                                              ; preds = %43
  %207 = load i8*, i8** %6, align 8
  %208 = load i8*, i8** %6, align 8
  %209 = load i64, i64* %7, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = load i64, i64* %11, align 8
  %212 = sub i64 0, %211
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i64, i64* %11, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %207, i8* align 1 %213, i64 %214, i1 false)
  %215 = load i64, i64* %11, align 8
  store i64 %215, i64* %5, align 8
  br label %216

216:                                              ; preds = %206, %186, %38, %27
  %217 = load i64, i64* %5, align 8
  ret i64 %217
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @websocket_buffer_peek(i8*, i64) #0 {
  %3 = alloca %struct.websocket_packet_info_s, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = bitcast %struct.websocket_packet_info_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.websocket_packet_info_s* @__const.websocket_buffer_peek.info to i8*), i64 16, i1 false)
  br label %166

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = ashr i32 %18, 7
  %20 = and i32 %19, 1
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %6, align 1
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 2
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 127
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %8, align 1
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %155 [
    i32 126, label %34
    i32 127, label %71
  ]

34:                                               ; preds = %14
  %35 = load i64, i64* %5, align 8
  %36 = icmp ult i64 %35, 4
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 4, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 8
  %44 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2
  %45 = load i8, i8* %6, align 1
  store i8 %45, i8* %44, align 1
  br label %166

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i16
  %53 = zext i16 %52 to i32
  %54 = shl i32 %53, 8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i16
  %60 = zext i16 %59 to i32
  %61 = or i32 %54, %60
  %62 = trunc i32 %61 to i16
  %63 = zext i16 %62 to i64
  store i64 %63, i64* %47, align 8
  %64 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1
  %65 = load i8, i8* %7, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 4, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 8
  %69 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2
  %70 = load i8, i8* %6, align 1
  store i8 %70, i8* %69, align 1
  br label %166

71:                                               ; preds = %14
  %72 = load i64, i64* %5, align 8
  %73 = icmp ult i64 %72, 10
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1
  %77 = load i8, i8* %7, align 1
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 10, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 8
  %81 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2
  %82 = load i8, i8* %6, align 1
  store i8 %82, i8* %81, align 1
  br label %166

83:                                               ; preds = %71
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i64
  %89 = shl i64 %88, 56
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i64
  %95 = shl i64 %94, 48
  %96 = or i64 %89, %95
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i64
  %102 = shl i64 %101, 40
  %103 = or i64 %96, %102
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i64
  %109 = shl i64 %108, 32
  %110 = or i64 %103, %109
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i64
  %116 = shl i64 %115, 24
  %117 = or i64 %110, %116
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = getelementptr inbounds i8, i8* %119, i64 5
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i64
  %123 = shl i64 %122, 16
  %124 = or i64 %117, %123
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  %127 = getelementptr inbounds i8, i8* %126, i64 6
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i64
  %130 = shl i64 %129, 8
  %131 = or i64 %124, %130
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = getelementptr inbounds i8, i8* %133, i64 7
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i64
  %137 = or i64 %131, %136
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %9, align 8
  %139 = lshr i64 %138, 62
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %83
  %142 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1
  store i8 0, i8* %143, align 8
  %144 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2
  store i8 0, i8* %144, align 1
  br label %166

145:                                              ; preds = %83
  %146 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0
  %147 = load i64, i64* %9, align 8
  store i64 %147, i64* %146, align 8
  %148 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1
  %149 = load i8, i8* %7, align 1
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 10, %150
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %148, align 8
  %153 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2
  %154 = load i8, i8* %6, align 1
  store i8 %154, i8* %153, align 1
  br label %166

155:                                              ; preds = %14
  %156 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0
  %157 = load i8, i8* %8, align 1
  %158 = zext i8 %157 to i64
  store i64 %158, i64* %156, align 8
  %159 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1
  %160 = load i8, i8* %7, align 1
  %161 = zext i8 %160 to i32
  %162 = add nsw i32 2, %161
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %159, align 8
  %164 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2
  %165 = load i8, i8* %6, align 1
  store i8 %165, i8* %164, align 1
  br label %166

166:                                              ; preds = %155, %145, %141, %74, %46, %37, %12
  %167 = bitcast %struct.websocket_packet_info_s* %3 to { i64, i64 }*
  %168 = load { i64, i64 }, { i64, i64 }* %167, align 8
  ret { i64, i64 } %168
}

declare dso_local i64 @fio_read(i64, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_protocol_error(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ws_s*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ws_s*
  store %struct.ws_s* %5, %struct.ws_s** %3, align 8
  %6 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %7 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  call void @fio_close(i64 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_xmask(i8*, i64, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = icmp ugt i64 %10, 7
  br i1 %11, label %12, label %133

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 3
  %16 = sub i64 4, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  switch i64 %17, label %93 [
    i64 3, label %18
    i64 2, label %29
    i64 1, label %40
  ]

18:                                               ; preds = %12
  %19 = bitcast i32* %6 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 2
  %22 = zext i8 %21 to i32
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, %22
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 1
  br label %29

29:                                               ; preds = %12, %18
  %30 = bitcast i32* %6 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %37, %33
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  br label %40

40:                                               ; preds = %12, %29
  %41 = bitcast i32* %6 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 4
  %44 = zext i8 %43 to i32
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %48, %44
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 1
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = shl i64 %54, 32
  %56 = or i64 %52, %55
  store i64 %56, i64* %8, align 8
  %57 = bitcast i64* %8 to i8*
  %58 = load i64, i64* %7, align 8
  %59 = add i64 0, %58
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = bitcast i32* %6 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 %61, i8* %63, align 4
  %64 = bitcast i64* %8 to i8*
  %65 = load i64, i64* %7, align 8
  %66 = add i64 1, %65
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = bitcast i32* %6 to i8*
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %68, i8* %70, align 1
  %71 = bitcast i64* %8 to i8*
  %72 = load i64, i64* %7, align 8
  %73 = add i64 2, %72
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = bitcast i32* %6 to i8*
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8 %75, i8* %77, align 2
  %78 = bitcast i64* %8 to i8*
  %79 = load i64, i64* %7, align 8
  %80 = add i64 3, %79
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = bitcast i32* %6 to i8*
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  store i8 %82, i8* %84, align 1
  %85 = load i8*, i8** %4, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %86, %87
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %4, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %5, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %40, %12
  %94 = load i8*, i8** %4, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = and i64 %95, 7
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i64, i64* %5, align 8
  %105 = sub i64 %104, 4
  store i64 %105, i64* %5, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = add i64 %107, 4
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %4, align 8
  br label %110

110:                                              ; preds = %98, %93
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = shl i64 %112, 32
  %114 = load i32, i32* %6, align 4
  %115 = zext i32 %114 to i64
  %116 = or i64 %113, %115
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %120, %110
  %118 = load i64, i64* %5, align 8
  %119 = icmp uge i64 %118, 8
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load i64, i64* %9, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = bitcast i8* %122 to i64*
  %124 = load i64, i64* %123, align 8
  %125 = xor i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %5, align 8
  %127 = sub i64 %126, 8
  store i64 %127, i64* %5, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = add i64 %129, 8
  %131 = inttoptr i64 %130 to i8*
  store i8* %131, i8** %4, align 8
  br label %117

132:                                              ; preds = %117
  br label %133

133:                                              ; preds = %132, %3
  %134 = load i64, i64* %5, align 8
  switch i64 %134, label %212 [
    i64 7, label %135
    i64 6, label %146
    i64 5, label %157
    i64 4, label %168
    i64 3, label %179
    i64 2, label %190
    i64 1, label %201
  ]

135:                                              ; preds = %133
  %136 = bitcast i32* %6 to i8*
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 2
  %139 = zext i8 %138 to i32
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 6
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = xor i32 %143, %139
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %141, align 1
  br label %146

146:                                              ; preds = %133, %135
  %147 = bitcast i32* %6 to i8*
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8*, i8** %4, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 5
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = xor i32 %154, %150
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %152, align 1
  br label %157

157:                                              ; preds = %133, %146
  %158 = bitcast i32* %6 to i8*
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 4
  %161 = zext i8 %160 to i32
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 4
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = xor i32 %165, %161
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %163, align 1
  br label %168

168:                                              ; preds = %133, %157
  %169 = bitcast i32* %6 to i8*
  %170 = getelementptr inbounds i8, i8* %169, i64 3
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 3
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = xor i32 %176, %172
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %174, align 1
  br label %179

179:                                              ; preds = %133, %168
  %180 = bitcast i32* %6 to i8*
  %181 = getelementptr inbounds i8, i8* %180, i64 2
  %182 = load i8, i8* %181, align 2
  %183 = zext i8 %182 to i32
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 2
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = xor i32 %187, %183
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %185, align 1
  br label %190

190:                                              ; preds = %133, %179
  %191 = bitcast i32* %6 to i8*
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = xor i32 %198, %194
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %196, align 1
  br label %201

201:                                              ; preds = %133, %190
  %202 = bitcast i32* %6 to i8*
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 4
  %205 = zext i8 %204 to i32
  %206 = load i8*, i8** %4, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 0
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = xor i32 %209, %205
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %207, align 1
  br label %212

212:                                              ; preds = %201, %133
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_unwrapped(i8*, i8*, i64, i8 signext, i8 signext, i8 signext, i8 zeroext) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.ws_s*, align 8
  %16 = alloca %struct.fio_str_info_s, align 8
  %17 = alloca %struct.fio_str_info_s, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8 %3, i8* %11, align 1
  store i8 %4, i8* %12, align 1
  store i8 %5, i8* %13, align 1
  store i8 %6, i8* %14, align 1
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.ws_s*
  store %struct.ws_s* %19, %struct.ws_s** %15, align 8
  %20 = load i8, i8* %12, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %7
  %24 = load i8, i8* %11, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %29 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %28, i32 0, i32 2
  %30 = load void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %29, align 8
  %31 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %32 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %16, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %16, i32 0, i32 1
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %16, i32 0, i32 2
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** %35, align 8
  %37 = load i8, i8* %13, align 1
  call void %30(%struct.ws_s* %31, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %16, i8 zeroext %37)
  br label %80

38:                                               ; preds = %23, %7
  %39 = load i8, i8* %11, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i8, i8* %13, align 1
  %43 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %44 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %43, i32 0, i32 14
  store i8 %42, i8* %44, align 8
  %45 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %46 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %45, i32 0, i32 13
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @fiobj_str_buf(i64 %50)
  %52 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %53 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %52, i32 0, i32 13
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %41
  %55 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %56 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %55, i32 0, i32 13
  %57 = load i64, i64* %56, align 8
  call void @fiobj_str_resize(i64 %57, i64 0)
  br label %58

58:                                               ; preds = %54, %38
  %59 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %60 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %59, i32 0, i32 13
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @fiobj_str_write(i64 %61, i8* %62, i64 %63)
  %65 = load i8, i8* %12, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %69 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %68, i32 0, i32 2
  %70 = load void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %69, align 8
  %71 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %72 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %73 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %72, i32 0, i32 13
  %74 = load i64, i64* %73, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %17, i64 %74)
  %75 = load %struct.ws_s*, %struct.ws_s** %15, align 8
  %76 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %75, i32 0, i32 14
  %77 = load i8, i8* %76, align 8
  call void %70(%struct.ws_s* %71, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %17, i8 zeroext %77)
  br label %78

78:                                               ; preds = %67, %58
  %79 = load i8, i8* %14, align 1
  br label %80

80:                                               ; preds = %78, %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_protocol_close(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ws_s*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ws_s*
  store %struct.ws_s* %5, %struct.ws_s** %3, align 8
  %6 = load %struct.ws_s*, %struct.ws_s** %3, align 8
  %7 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  call void @fio_close(i64 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_protocol_ping(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ws_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fio_write_args_s, align 8
  %10 = alloca %struct.fio_write_args_s, align 8
  %11 = alloca %struct.fio_write_args_s, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ws_s*
  store %struct.ws_s* %13, %struct.ws_s** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %61

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 16
  %19 = call noalias i8* @malloc(i64 %18) #1
  store i8* %19, i8** %8, align 8
  %20 = load %struct.ws_s*, %struct.ws_s** %7, align 8
  %21 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %20, i32 0, i32 15
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @websocket_client_wrap(i8* %26, i8* %27, i64 %28, i8 zeroext 10, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0)
  br label %35

30:                                               ; preds = %16
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @websocket_server_wrap(i8* %31, i8* %32, i64 %33, i8 zeroext 10, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0)
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i64 [ %29, %25 ], [ %34, %30 ]
  store i64 %36, i64* %6, align 8
  %37 = load %struct.ws_s*, %struct.ws_s** %7, align 8
  %38 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 0
  %41 = bitcast %union.anon* %40 to i8**
  %42 = load i8*, i8** %8, align 8
  store i8* %42, i8** %41, align 8
  %43 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 1
  %44 = bitcast %union.anon.0* %43 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %44, i8 0, i64 8, i1 false)
  %45 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 2
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4
  %49 = load i8, i8* %48, align 8
  %50 = and i8 %49, -2
  store i8 %50, i8* %48, align 8
  %51 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4
  %52 = load i8, i8* %51, align 8
  %53 = and i8 %52, -3
  store i8 %53, i8* %51, align 8
  %54 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4
  %55 = load i8, i8* %54, align 8
  %56 = and i8 %55, -5
  store i8 %56, i8* %54, align 8
  %57 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4
  %58 = load i8, i8* %57, align 8
  %59 = and i8 %58, -9
  store i8 %59, i8* %57, align 8
  %60 = call i64 @fio_write2_fn(i64 %39, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %9)
  br label %113

61:                                               ; preds = %3
  %62 = load %struct.ws_s*, %struct.ws_s** %7, align 8
  %63 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %62, i32 0, i32 15
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %61
  %67 = load %struct.ws_s*, %struct.ws_s** %7, align 8
  %68 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 0
  %71 = bitcast %union.anon* %70 to i8**
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %71, align 8
  %72 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 1
  %73 = bitcast %union.anon.0* %72 to void (i8*)**
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %73, align 8
  %74 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 2
  store i64 2, i64* %74, align 8
  %75 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 4
  %77 = load i8, i8* %76, align 8
  %78 = and i8 %77, -2
  store i8 %78, i8* %76, align 8
  %79 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 4
  %80 = load i8, i8* %79, align 8
  %81 = and i8 %80, -3
  store i8 %81, i8* %79, align 8
  %82 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 4
  %83 = load i8, i8* %82, align 8
  %84 = and i8 %83, -5
  store i8 %84, i8* %82, align 8
  %85 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 4
  %86 = load i8, i8* %85, align 8
  %87 = and i8 %86, -9
  store i8 %87, i8* %85, align 8
  %88 = call i64 @fio_write2_fn(i64 %69, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %10)
  br label %112

89:                                               ; preds = %61
  %90 = load %struct.ws_s*, %struct.ws_s** %7, align 8
  %91 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 0
  %94 = bitcast %union.anon* %93 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %94, align 8
  %95 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 1
  %96 = bitcast %union.anon.0* %95 to void (i8*)**
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %96, align 8
  %97 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 2
  store i64 2, i64* %97, align 8
  %98 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 4
  %100 = load i8, i8* %99, align 8
  %101 = and i8 %100, -2
  store i8 %101, i8* %99, align 8
  %102 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 4
  %103 = load i8, i8* %102, align 8
  %104 = and i8 %103, -3
  store i8 %104, i8* %102, align 8
  %105 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 4
  %106 = load i8, i8* %105, align 8
  %107 = and i8 %106, -5
  store i8 %107, i8* %105, align 8
  %108 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 4
  %109 = load i8, i8* %108, align 8
  %110 = and i8 %109, -9
  store i8 %110, i8* %108, align 8
  %111 = call i64 @fio_write2_fn(i64 %92, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %11)
  br label %112

112:                                              ; preds = %89, %66
  br label %113

113:                                              ; preds = %112, %35
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_protocol_pong(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @fiobj_str_buf(i64) #4

declare dso_local void @fiobj_str_resize(i64, i64) #4

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #4

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.6 to i8*), i64 24, i1 false)
  br label %37

25:                                               ; preds = %19
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.8 to i8*), i64 24, i1 false)
  br label %37

27:                                               ; preds = %19
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.10 to i8*), i64 24, i1 false)
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @websocket_client_wrap(i8*, i8*, i64, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store i8 %5, i8* %14, align 1
  store i8 %6, i8* %15, align 1
  %17 = call i32 @rand() #1
  %18 = or i32 %17, 16909320
  store i32 %18, i32* %16, align 4
  %19 = load i8, i8* %13, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i8, i8* %12, align 1
  %24 = zext i8 %23 to i32
  br label %26

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  %28 = and i32 %27, 15
  %29 = or i32 0, %28
  %30 = load i8, i8* %15, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 7
  %33 = shl i32 %32, 4
  %34 = or i32 %29, %33
  %35 = load i8, i8* %14, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 1
  %38 = shl i32 %37, 7
  %39 = or i32 %34, %38
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %40, i8* %42, align 1
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %43, 126
  br i1 %44, label %45, label %81

45:                                               ; preds = %26
  %46 = load i64, i64* %11, align 8
  %47 = or i64 %46, 128
  %48 = trunc i64 %47 to i8
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 %48, i8* %50, align 1
  %51 = bitcast i32* %16 to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 %53, i8* %55, align 1
  %56 = bitcast i32* %16 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  store i8 %58, i8* %60, align 1
  %61 = bitcast i32* %16 to i8*
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 2
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  store i8 %63, i8* %65, align 1
  %66 = bitcast i32* %16 to i8*
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 5
  store i8 %68, i8* %70, align 1
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 6
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %72, i8* align 1 %73, i64 %74, i1 false)
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 6
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* %16, align 4
  call void @websocket_xmask(i8* %76, i64 %77, i32 %78)
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 6
  store i64 %80, i64* %8, align 8
  br label %227

81:                                               ; preds = %26
  %82 = load i64, i64* %11, align 8
  %83 = icmp ult i64 %82, 65536
  br i1 %83, label %84, label %136

84:                                               ; preds = %81
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8 -2, i8* %86, align 1
  br label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8
  %89 = trunc i64 %88 to i16
  %90 = zext i16 %89 to i32
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 %93, i8* %96, align 1
  %97 = load i64, i64* %11, align 8
  %98 = trunc i64 %97 to i16
  %99 = zext i16 %98 to i32
  %100 = and i32 %99, 255
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8 %101, i8* %104, align 1
  br label %105

105:                                              ; preds = %87
  %106 = bitcast i32* %16 to i8*
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  store i8 %108, i8* %110, align 1
  %111 = bitcast i32* %16 to i8*
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 5
  store i8 %113, i8* %115, align 1
  %116 = bitcast i32* %16 to i8*
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 2
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 6
  store i8 %118, i8* %120, align 1
  %121 = bitcast i32* %16 to i8*
  %122 = getelementptr inbounds i8, i8* %121, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 7
  store i8 %123, i8* %125, align 1
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %127, i8* align 1 %128, i64 %129, i1 false)
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 8
  %132 = load i64, i64* %11, align 8
  %133 = load i32, i32* %16, align 4
  call void @websocket_xmask(i8* %131, i64 %132, i32 %133)
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 8
  store i64 %135, i64* %8, align 8
  br label %227

136:                                              ; preds = %81
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8 -1, i8* %139, align 1
  br label %140

140:                                              ; preds = %137
  %141 = load i64, i64* %11, align 8
  %142 = lshr i64 %141, 56
  %143 = and i64 %142, 255
  %144 = trunc i64 %143 to i8
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  store i8 %144, i8* %147, align 1
  %148 = load i64, i64* %11, align 8
  %149 = lshr i64 %148, 48
  %150 = and i64 %149, 255
  %151 = trunc i64 %150 to i8
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8 %151, i8* %154, align 1
  %155 = load i64, i64* %11, align 8
  %156 = lshr i64 %155, 40
  %157 = and i64 %156, 255
  %158 = trunc i64 %157 to i8
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  store i8 %158, i8* %161, align 1
  %162 = load i64, i64* %11, align 8
  %163 = lshr i64 %162, 32
  %164 = and i64 %163, 255
  %165 = trunc i64 %164 to i8
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  store i8 %165, i8* %168, align 1
  %169 = load i64, i64* %11, align 8
  %170 = lshr i64 %169, 24
  %171 = and i64 %170, 255
  %172 = trunc i64 %171 to i8
  %173 = load i8*, i8** %9, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  %175 = getelementptr inbounds i8, i8* %174, i64 4
  store i8 %172, i8* %175, align 1
  %176 = load i64, i64* %11, align 8
  %177 = lshr i64 %176, 16
  %178 = and i64 %177, 255
  %179 = trunc i64 %178 to i8
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 2
  %182 = getelementptr inbounds i8, i8* %181, i64 5
  store i8 %179, i8* %182, align 1
  %183 = load i64, i64* %11, align 8
  %184 = lshr i64 %183, 8
  %185 = and i64 %184, 255
  %186 = trunc i64 %185 to i8
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  %189 = getelementptr inbounds i8, i8* %188, i64 6
  store i8 %186, i8* %189, align 1
  %190 = load i64, i64* %11, align 8
  %191 = and i64 %190, 255
  %192 = trunc i64 %191 to i8
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  %195 = getelementptr inbounds i8, i8* %194, i64 7
  store i8 %192, i8* %195, align 1
  br label %196

196:                                              ; preds = %140
  %197 = bitcast i32* %16 to i8*
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 4
  %200 = load i8*, i8** %9, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 10
  store i8 %199, i8* %201, align 1
  %202 = bitcast i32* %16 to i8*
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = load i8*, i8** %9, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 11
  store i8 %204, i8* %206, align 1
  %207 = bitcast i32* %16 to i8*
  %208 = getelementptr inbounds i8, i8* %207, i64 2
  %209 = load i8, i8* %208, align 2
  %210 = load i8*, i8** %9, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 12
  store i8 %209, i8* %211, align 1
  %212 = bitcast i32* %16 to i8*
  %213 = getelementptr inbounds i8, i8* %212, i64 3
  %214 = load i8, i8* %213, align 1
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 13
  store i8 %214, i8* %216, align 1
  %217 = load i8*, i8** %9, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 14
  %219 = load i8*, i8** %10, align 8
  %220 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %218, i8* align 1 %219, i64 %220, i1 false)
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 14
  %223 = load i64, i64* %11, align 8
  %224 = load i32, i32* %16, align 4
  call void @websocket_xmask(i8* %222, i64 %223, i32 %224)
  %225 = load i64, i64* %11, align 8
  %226 = add i64 %225, 14
  store i64 %226, i64* %8, align 8
  br label %227

227:                                              ; preds = %196, %105, %45
  %228 = load i64, i64* %8, align 8
  ret i64 %228
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @websocket_server_wrap(i8*, i8*, i64, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store i8 %5, i8* %14, align 1
  store i8 %6, i8* %15, align 1
  %16 = load i8, i8* %13, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load i8, i8* %12, align 1
  %21 = zext i8 %20 to i32
  br label %23

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  %25 = and i32 %24, 15
  %26 = or i32 0, %25
  %27 = load i8, i8* %15, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 7
  %30 = shl i32 %29, 4
  %31 = or i32 %26, %30
  %32 = load i8, i8* %14, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 1
  %35 = shl i32 %34, 7
  %36 = or i32 %31, %35
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  %40 = load i64, i64* %11, align 8
  %41 = icmp ult i64 %40, 126
  br i1 %41, label %42, label %53

42:                                               ; preds = %23
  %43 = load i64, i64* %11, align 8
  %44 = trunc i64 %43 to i8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 1 %49, i64 %50, i1 false)
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 2
  store i64 %52, i64* %8, align 8
  br label %151

53:                                               ; preds = %23
  %54 = load i64, i64* %11, align 8
  %55 = icmp ult i64 %54, 65536
  br i1 %55, label %56, label %84

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 126, i8* %58, align 1
  br label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i16
  %62 = zext i16 %61 to i32
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %65, i8* %68, align 1
  %69 = load i64, i64* %11, align 8
  %70 = trunc i64 %69 to i16
  %71 = zext i16 %70 to i32
  %72 = and i32 %71, 255
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 %73, i8* %76, align 1
  br label %77

77:                                               ; preds = %59
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %79, i8* align 1 %80, i64 %81, i1 false)
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %8, align 8
  br label %151

84:                                               ; preds = %53
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 127, i8* %87, align 1
  br label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %11, align 8
  %90 = lshr i64 %89, 56
  %91 = and i64 %90, 255
  %92 = trunc i64 %91 to i8
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %92, i8* %95, align 1
  %96 = load i64, i64* %11, align 8
  %97 = lshr i64 %96, 48
  %98 = and i64 %97, 255
  %99 = trunc i64 %98 to i8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8 %99, i8* %102, align 1
  %103 = load i64, i64* %11, align 8
  %104 = lshr i64 %103, 40
  %105 = and i64 %104, 255
  %106 = trunc i64 %105 to i8
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  store i8 %106, i8* %109, align 1
  %110 = load i64, i64* %11, align 8
  %111 = lshr i64 %110, 32
  %112 = and i64 %111, 255
  %113 = trunc i64 %112 to i8
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  store i8 %113, i8* %116, align 1
  %117 = load i64, i64* %11, align 8
  %118 = lshr i64 %117, 24
  %119 = and i64 %118, 255
  %120 = trunc i64 %119 to i8
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  store i8 %120, i8* %123, align 1
  %124 = load i64, i64* %11, align 8
  %125 = lshr i64 %124, 16
  %126 = and i64 %125, 255
  %127 = trunc i64 %126 to i8
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = getelementptr inbounds i8, i8* %129, i64 5
  store i8 %127, i8* %130, align 1
  %131 = load i64, i64* %11, align 8
  %132 = lshr i64 %131, 8
  %133 = and i64 %132, 255
  %134 = trunc i64 %133 to i8
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = getelementptr inbounds i8, i8* %136, i64 6
  store i8 %134, i8* %137, align 1
  %138 = load i64, i64* %11, align 8
  %139 = and i64 %138, 255
  %140 = trunc i64 %139 to i8
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  %143 = getelementptr inbounds i8, i8* %142, i64 7
  store i8 %140, i8* %143, align 1
  br label %144

144:                                              ; preds = %88
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 10
  %147 = load i8*, i8** %10, align 8
  %148 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %146, i8* align 1 %147, i64 %148, i1 false)
  %149 = load i64, i64* %11, align 8
  %150 = add i64 %149, 10
  store i64 %150, i64* %8, align 8
  br label %151

151:                                              ; preds = %144, %77, %42
  %152 = load i64, i64* %8, align 8
  ret i64 %152
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_ws(%struct.ws_s*) #0 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 6
  %5 = load void (i64, i8*)*, void (i64, i8*)** %4, align 8
  %6 = icmp ne void (i64, i8*)* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %9 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %8, i32 0, i32 6
  %10 = load void (i64, i8*)*, void (i64, i8*)** %9, align 8
  %11 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %12 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %15 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %14, i32 0, i32 7
  %16 = load i8*, i8** %15, align 8
  call void %10(i64 %13, i8* %16)
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %19 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %18, i32 0, i32 13
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %24 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %23, i32 0, i32 13
  %25 = load i64, i64* %24, align 8
  call void @fiobj_free(i64 %25)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  call void @clear_subscriptions(%struct.ws_s* %27)
  %28 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %29 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %30 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %29, i32 0, i32 11
  %31 = bitcast %struct.buffer_s* %30 to { i8*, i64 }*
  %32 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  call void @free_ws_buffer(%struct.ws_s* %28, i8* %33, i64 %35)
  %36 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %37 = bitcast %struct.ws_s* %36 to i8*
  call void @free(i8* %37) #1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_free(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 6
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %7, %1
  br label %50

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.fiobj_object_header_s*
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1
  store i32 1, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = atomicrmw sub i32* %21, i32 %22 seq_cst
  %24 = sub i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %50

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8
  %30 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %29)
  %31 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %30, i32 0, i32 5
  %32 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %31, align 8
  %33 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35)
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 2
  %38 = load i64 (i64)*, i64 (i64)** %37, align 8
  %39 = load i64, i64* %2, align 8
  %40 = call i64 %38(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i64, i64* %2, align 8
  call void @fiobj_free_complex_object(i64 %43)
  br label %50

44:                                               ; preds = %34, %28
  %45 = load i64, i64* %2, align 8
  %46 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %45)
  %47 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %46, i32 0, i32 1
  %48 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %47, align 8
  %49 = load i64, i64* %2, align 8
  call void %48(i64 %49, void (i64, i8*)* null, i8* null)
  br label %50

50:                                               ; preds = %15, %27, %44, %42
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_subscriptions(%struct.ws_s*) #0 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 10
  call void @fio_lock(i8* %4)
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %7 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %6, i32 0, i32 9
  %8 = call i32 @fio_ls_any(%struct.fio_ls_s* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %12 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %11, i32 0, i32 9
  %13 = call i8* @fio_ls_pop(%struct.fio_ls_s* %12)
  %14 = bitcast i8* %13 to %struct.subscription_s*
  call void @fio_unsubscribe(%struct.subscription_s* %14)
  br label %5

15:                                               ; preds = %5
  %16 = load %struct.ws_s*, %struct.ws_s** %2, align 8
  %17 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %16, i32 0, i32 10
  %18 = call i32 @fio_unlock(i8* %17)
  ret void
}

declare dso_local void @fiobj_free_complex_object(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ls_any(%struct.fio_ls_s*) #0 {
  %2 = alloca %struct.fio_ls_s*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %2, align 8
  %3 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %3, i32 0, i32 1
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %6 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8
  %7 = icmp ne %struct.fio_ls_s* %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_ls_pop(%struct.fio_ls_s*) #0 {
  %2 = alloca %struct.fio_ls_s*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %2, align 8
  %3 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %3, i32 0, i32 0
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %6 = call i8* @fio_ls_remove(%struct.fio_ls_s* %5)
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str_utf8_valid(%struct.fio_str_s*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_s*, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.fio_str_s* %0, %struct.fio_str_s** %3, align 8
  %7 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %8 = icmp ne %struct.fio_str_s* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %239

10:                                               ; preds = %1
  %11 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %4, %struct.fio_str_s* %11)
  %12 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i64 1, i64* %2, align 8
  br label %239

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %225, %16
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %214 [
    i32 1, label %34
    i32 2, label %43
    i32 3, label %80
    i32 4, label %137
  ]

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %40, align 8
  br label %215

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ugt i8* %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %59, 5
  br i1 %60, label %61, label %62

61:                                               ; preds = %49, %43
  store i32 -1, i32* %6, align 4
  br label %215

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 31
  %69 = shl i32 %68, 6
  %70 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 63
  %76 = or i32 %69, %75
  store i32 %76, i32* %6, align 4
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %77, align 8
  br label %215

80:                                               ; preds = %23
  %81 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8*, i8** %5, align 8
  %85 = icmp ugt i8* %83, %84
  br i1 %85, label %110, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = ashr i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 5
  br i1 %97, label %110, label %98

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = ashr i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ne i32 %108, 5
  br i1 %109, label %110, label %111

110:                                              ; preds = %98, %86, %80
  store i32 -1, i32* %6, align 4
  br label %215

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 15
  %118 = shl i32 %117, 12
  %119 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %123, 63
  %125 = shl i32 %124, 6
  %126 = or i32 %118, %125
  %127 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 63
  %133 = or i32 %126, %132
  store i32 %133, i32* %6, align 4
  %134 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 3
  store i8* %136, i8** %134, align 8
  br label %215

137:                                              ; preds = %23
  %138 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 4
  %141 = load i8*, i8** %5, align 8
  %142 = icmp ugt i8* %140, %141
  br i1 %142, label %179, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = ashr i32 %148, 3
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %153, 5
  br i1 %154, label %179, label %155

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 2
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = ashr i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp ne i32 %165, 5
  br i1 %166, label %179, label %167

167:                                              ; preds = %155
  %168 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 3
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = ashr i32 %172, 3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp ne i32 %177, 5
  br i1 %178, label %179, label %180

179:                                              ; preds = %167, %155, %143, %137
  store i32 -1, i32* %6, align 4
  br label %215

180:                                              ; preds = %167
  %181 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 7
  %187 = shl i32 %186, 18
  %188 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = and i32 %192, 63
  %194 = shl i32 %193, 12
  %195 = or i32 %187, %194
  %196 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 2
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %200, 63
  %202 = shl i32 %201, 6
  %203 = or i32 %195, %202
  %204 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 3
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = and i32 %208, 63
  %210 = or i32 %203, %209
  store i32 %210, i32* %6, align 4
  %211 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 4
  store i8* %213, i8** %211, align 8
  br label %215

214:                                              ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %215

215:                                              ; preds = %214, %180, %179, %111, %110, %62, %61, %34
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %6, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %5, align 8
  %224 = icmp ult i8* %222, %223
  br label %225

225:                                              ; preds = %220, %217
  %226 = phi i1 [ false, %217 ], [ %224, %220 ]
  br i1 %226, label %22, label %227

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = icmp eq i8* %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* %6, align 4
  %234 = icmp sge i32 %233, 0
  br label %235

235:                                              ; preds = %232, %227
  %236 = phi i1 [ false, %227 ], [ %234, %232 ]
  %237 = zext i1 %236 to i32
  %238 = sext i32 %237 to i64
  store i64 %238, i64* %2, align 8
  br label %239

239:                                              ; preds = %235, %15, %9
  %240 = load i64, i64* %2, align 8
  ret i64 %240
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize(%struct.fio_msg_metadata_s* noalias sret, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, i8 zeroext) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  store i8 %2, i8* %4, align 1
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 10
  %10 = call i64 @fiobj_str_buf(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %6, i64 %12)
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i8, i8* %4, align 1
  %20 = call i64 @websocket_server_wrap(i8* %14, i8* %16, i64 %18, i8 zeroext %19, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0)
  call void @fiobj_str_resize(i64 %11, i64 %20)
  %21 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 1
  store void (%struct.fio_msg_s*, i8*)* @websocket_optimize_free, void (%struct.fio_msg_s*, i8*)** %22, align 8
  %23 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 2
  %24 = load i64, i64* %5, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %23, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_info(%struct.fio_str_info_s* noalias sret, %struct.fio_str_s*) #0 {
  %3 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %3, align 8
  %4 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %5 = icmp ne %struct.fio_str_s* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %9, align 8
  br label %64

10:                                               ; preds = %2
  %11 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %12 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 4
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 7
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %16, %10
  %22 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  %23 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %24 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %23, i32 0, i32 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i64 0, i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 2), i64 1) to i64)), i64 1)
  store i64 %29, i64* %22, align 8
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %31 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %32 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 4
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %30, align 8
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %38 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %39 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %38, i32 0, i32 2
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %37, align 8
  br label %63

41:                                               ; preds = %16
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  %43 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %44 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %51 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi i64 [ 0, %48 ], [ %52, %49 ]
  store i64 %54, i64* %42, align 8
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %56 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %57 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %55, align 8
  %59 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %60 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %61 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %59, align 8
  br label %63

63:                                               ; preds = %53, %21
  br label %64

64:                                               ; preds = %63, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize_free(%struct.fio_msg_s*, i8*) #0 {
  %3 = alloca %struct.fio_msg_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = ptrtoint i8* %5 to i64
  call void @fiobj_free(i64 %6)
  %7 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  ret void
}

declare dso_local %struct.fio_protocol_s* @fio_protocol_try_lock(i64, i32) #4

declare dso_local void @fio_message_defer(%struct.fio_msg_s*) #4

declare dso_local void @fio_protocol_unlock(%struct.fio_protocol_s*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message_direct_internal(%struct.fio_msg_s*, i8 zeroext) #0 {
  %3 = alloca %struct.fio_msg_s*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.fio_protocol_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_s, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %3, align 8
  store i8 %1, i8* %4, align 1
  %9 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  %10 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %9, i32 0, i32 3
  %11 = load i8*, i8** %10, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = call %struct.fio_protocol_s* @fio_protocol_try_lock(i64 %12, i32 1)
  store %struct.fio_protocol_s* %13, %struct.fio_protocol_s** %5, align 8
  %14 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8
  %15 = icmp ne %struct.fio_protocol_s* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = call i32* @__errno_location() #7
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %101

21:                                               ; preds = %16
  %22 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  call void @fio_message_defer(%struct.fio_msg_s* %22)
  br label %101

23:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %24 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8
  %25 = bitcast %struct.fio_protocol_s* %24 to %struct.ws_s*
  %26 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %25, i32 0, i32 15
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  switch i32 %31, label %44 [
    i32 0, label %32
    i32 1, label %36
    i32 2, label %40
  ]

32:                                               ; preds = %29
  %33 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  %34 = call i8* @fio_message_metadata(%struct.fio_msg_s* %33, i64 -34)
  %35 = ptrtoint i8* %34 to i64
  store i64 %35, i64* %7, align 8
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  %38 = call i8* @fio_message_metadata(%struct.fio_msg_s* %37, i64 -33)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %7, align 8
  br label %45

40:                                               ; preds = %29
  %41 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  %42 = call i8* @fio_message_metadata(%struct.fio_msg_s* %41, i64 -32)
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* %7, align 8
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %40, %36, %32
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  %50 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @fiobj_dup(i64 %53)
  %55 = call i64 @fiobj_send_free(i64 %52, i64 %54)
  br label %99

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i8, i8* %4, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 0
  store volatile i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 1
  store i8 0, i8* %63, align 4
  %64 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 2
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 3
  %66 = bitcast [10 x i8]* %65 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %66, i8 0, i64 10, i1 false)
  %67 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 5
  %69 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  %70 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %68, align 8
  %73 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 6
  store void (i8*)* null, void (i8*)** %73, align 8
  %74 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 7
  %75 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  %76 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %74, align 8
  %79 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %80, 32768
  br i1 %81, label %82, label %83

82:                                               ; preds = %61
  br label %85

83:                                               ; preds = %61
  %84 = call i64 @fio_str_utf8_valid(%struct.fio_str_s* %8)
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i64 [ 0, %82 ], [ %84, %83 ]
  %87 = trunc i64 %86 to i8
  store i8 %87, i8* %4, align 1
  br label %88

88:                                               ; preds = %85, %57
  %89 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8
  %90 = bitcast %struct.fio_protocol_s* %89 to %struct.ws_s*
  %91 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8
  %92 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %91, i32 0, i32 2
  %93 = load i8, i8* %4, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 1
  %96 = trunc i32 %95 to i8
  %97 = call i32 @websocket_write(%struct.ws_s* %90, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %92, i8 zeroext %96)
  %98 = load i64, i64* %6, align 8
  call void @fiobj_free(i64 %98)
  br label %99

99:                                               ; preds = %88, %48
  %100 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8
  call void @fio_protocol_unlock(%struct.fio_protocol_s* %100, i32 1)
  br label %101

101:                                              ; preds = %99, %21, %20
  ret void
}

declare dso_local i8* @fio_message_metadata(%struct.fio_msg_s*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_send_free(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  %6 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %7)
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to i8**
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %10, align 8
  %13 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 1
  %14 = bitcast %union.anon.0* %13 to void (i8*)**
  store void (i8*)* @fiobj4sock_dealloc, void (i8*)** %14, align 8
  %15 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 3
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %18, align 8
  %24 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %25 = load i8, i8* %24, align 8
  %26 = and i8 %25, -2
  store i8 %26, i8* %24, align 8
  %27 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %28 = load i8, i8* %27, align 8
  %29 = and i8 %28, -3
  store i8 %29, i8* %27, align 8
  %30 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %31 = load i8, i8* %30, align 8
  %32 = and i8 %31, -5
  store i8 %32, i8* %30, align 8
  %33 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %34 = load i8, i8* %33, align 8
  %35 = and i8 %34, -9
  store i8 %35, i8* %33, align 8
  %36 = call i64 @fio_write2_fn(i64 %8, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %6)
  ret i64 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_dup(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 6
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = and i64 %16, -8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.fiobj_object_header_s*
  %20 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %19, i32 0, i32 1
  store i32 1, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = atomicrmw add i32* %20, i32 %21 seq_cst
  %23 = add i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %11, %7, %1
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj4sock_dealloc(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  call void @fiobj_free(i64 %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_trylock(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  %6 = load i8*, i8** %2, align 8
  store i8 1, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = atomicrmw volatile xchg i8* %6, i8 %7 seq_cst
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  store volatile i8 %9, i8* %3, align 1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  %10 = load volatile i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_reschedule_thread() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = bitcast %struct.timespec* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.timespec* @__const.fio_reschedule_thread.tm to i8*), i64 16, i1 false)
  %3 = call i32 @nanosleep(%struct.timespec* %1, %struct.timespec* null)
  ret void
}

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

declare dso_local noalias i8* @fio_malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

declare dso_local void @fio_free(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
!2 = !{i32 135582}
!3 = !{i32 135226}
!4 = !{i32 135311}
