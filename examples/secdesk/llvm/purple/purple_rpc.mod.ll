; ModuleID = './examples/secdesk/c/purple_rpc.mod.c'
source_filename = "./examples/secdesk/c/purple_rpc.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._codec_map = type { i32, void (i8*, i8*, i64*)*, void (i8*, i8*, i64*)* }
%struct._tag = type { i32, i32, i32 }
%struct._sdh_ha_v1 = type { %struct._tag, i32, [2000 x i8] }
%struct._nextrpc_datatype = type { i32, i32, i32, %struct._trailer_datatype }
%struct._trailer_datatype = type { i32, i32, i32, i16, i16 }
%struct._okay_datatype = type { i32, %struct._trailer_datatype }
%struct._request_recognize_datatype = type { [128 x double], %struct._trailer_datatype }
%struct._response_recognize_datatype = type { i32, %struct._trailer_datatype }
%struct._request_start_recognizer_datatype = type { i32, %struct._trailer_datatype }
%struct._response_start_recognizer_datatype = type { i32, %struct._trailer_datatype }
%struct._request_stop_recognizer_datatype = type { i32, %struct._trailer_datatype }
%struct._response_stop_recognizer_datatype = type { i32, %struct._trailer_datatype }
%union.pthread_attr_t = type { i64, [48 x i8] }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"send error %s %d \00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ipc:///tmp/secdeskpubpurple\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ipc:///tmp/secdesksubpurple\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"./examples/secdesk/c/purple_rpc.mod.c\00", align 1
@__PRETTY_FUNCTION__.my_xdc_sub_socket = private unnamed_addr constant [42 x i8] c"void *my_xdc_sub_socket(gaps_tag, void *)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"TAG_NEXTRPC\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [38 x i8] c"./examples/secdesk/c/purple_rpc.mod.c\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [9 x i8] c"TAG_OKAY\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [22 x i8] c"TAG_REQUEST_RECOGNIZE\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [23 x i8] c"TAG_RESPONSE_RECOGNIZE\00", section "llvm.metadata"
@.str.10 = private unnamed_addr constant [29 x i8] c"TAG_REQUEST_START_RECOGNIZER\00", section "llvm.metadata"
@.str.11 = private unnamed_addr constant [30 x i8] c"TAG_RESPONSE_START_RECOGNIZER\00", section "llvm.metadata"
@.str.12 = private unnamed_addr constant [28 x i8] c"TAG_REQUEST_STOP_RECOGNIZER\00", section "llvm.metadata"
@.str.13 = private unnamed_addr constant [29 x i8] c"TAG_RESPONSE_STOP_RECOGNIZER\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_type_check(i32, %struct._codec_map*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._codec_map*, align 8
  store i32 %0, i32* %3, align 4
  store %struct._codec_map* %1, %struct._codec_map** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp uge i32 %5, 200
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load %struct._codec_map*, %struct._codec_map** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %8, i64 %10
  %12 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7, %2
  call void @exit(i32 1) #7
  unreachable

16:                                               ; preds = %7
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_xdc_register(void (i8*, i8*, i64*)*, void (i8*, i8*, i64*)*, i32, %struct._codec_map*) #0 {
  %5 = alloca void (i8*, i8*, i64*)*, align 8
  %6 = alloca void (i8*, i8*, i64*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._codec_map*, align 8
  store void (i8*, i8*, i64*)* %0, void (i8*, i8*, i64*)** %5, align 8
  store void (i8*, i8*, i64*)* %1, void (i8*, i8*, i64*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct._codec_map* %3, %struct._codec_map** %8, align 8
  %9 = load %struct._codec_map*, %struct._codec_map** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %9, i64 %11
  %13 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load void (i8*, i8*, i64*)*, void (i8*, i8*, i64*)** %5, align 8
  %15 = load %struct._codec_map*, %struct._codec_map** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %15, i64 %17
  %19 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %18, i32 0, i32 1
  store void (i8*, i8*, i64*)* %14, void (i8*, i8*, i64*)** %19, align 8
  %20 = load void (i8*, i8*, i64*)*, void (i8*, i8*, i64*)** %6, align 8
  %21 = load %struct._codec_map*, %struct._codec_map** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %21, i64 %23
  %25 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %24, i32 0, i32 2
  store void (i8*, i8*, i64*)* %20, void (i8*, i8*, i64*)** %25, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_tag_encode(%struct._tag*, %struct._tag*) #0 {
  %3 = alloca %struct._tag*, align 8
  %4 = alloca %struct._tag*, align 8
  store %struct._tag* %0, %struct._tag** %3, align 8
  store %struct._tag* %1, %struct._tag** %4, align 8
  %5 = load %struct._tag*, %struct._tag** %4, align 8
  %6 = getelementptr inbounds %struct._tag, %struct._tag* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @htonl(i32 %7) #8
  %9 = load %struct._tag*, %struct._tag** %3, align 8
  %10 = getelementptr inbounds %struct._tag, %struct._tag* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct._tag*, %struct._tag** %4, align 8
  %12 = getelementptr inbounds %struct._tag, %struct._tag* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @htonl(i32 %13) #8
  %15 = load %struct._tag*, %struct._tag** %3, align 8
  %16 = getelementptr inbounds %struct._tag, %struct._tag* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct._tag*, %struct._tag** %4, align 8
  %18 = getelementptr inbounds %struct._tag, %struct._tag* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htonl(i32 %19) #8
  %21 = load %struct._tag*, %struct._tag** %3, align 8
  %22 = getelementptr inbounds %struct._tag, %struct._tag* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @htonl(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_tag_decode(%struct._tag*, %struct._tag*) #0 {
  %3 = alloca %struct._tag*, align 8
  %4 = alloca %struct._tag*, align 8
  store %struct._tag* %0, %struct._tag** %3, align 8
  store %struct._tag* %1, %struct._tag** %4, align 8
  %5 = load %struct._tag*, %struct._tag** %4, align 8
  %6 = getelementptr inbounds %struct._tag, %struct._tag* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ntohl(i32 %7) #8
  %9 = load %struct._tag*, %struct._tag** %3, align 8
  %10 = getelementptr inbounds %struct._tag, %struct._tag* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct._tag*, %struct._tag** %4, align 8
  %12 = getelementptr inbounds %struct._tag, %struct._tag* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohl(i32 %13) #8
  %15 = load %struct._tag*, %struct._tag** %3, align 8
  %16 = getelementptr inbounds %struct._tag, %struct._tag* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct._tag*, %struct._tag** %4, align 8
  %18 = getelementptr inbounds %struct._tag, %struct._tag* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntohl(i32 %19) #8
  %21 = load %struct._tag*, %struct._tag** %3, align 8
  %22 = getelementptr inbounds %struct._tag, %struct._tag* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @ntohl(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_len_encode(i32*, i64) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @ntohl(i32 %6) #8
  %8 = load i32*, i32** %3, align 8
  store i32 %7, i32* %8, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_len_decode(i64*, i32) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @htonl(i32 %5) #8
  %7 = zext i32 %6 to i64
  %8 = load i64*, i64** %3, align 8
  store i64 %7, i64* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_gaps_data_encode(%struct._sdh_ha_v1*, i64*, i8*, i64*, %struct._tag*, %struct._codec_map*) #0 {
  %7 = alloca %struct._sdh_ha_v1*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct._tag*, align 8
  %12 = alloca %struct._codec_map*, align 8
  %13 = alloca i32, align 4
  store %struct._sdh_ha_v1* %0, %struct._sdh_ha_v1** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct._tag* %4, %struct._tag** %11, align 8
  store %struct._codec_map* %5, %struct._codec_map** %12, align 8
  %14 = load %struct._tag*, %struct._tag** %11, align 8
  %15 = getelementptr inbounds %struct._tag, %struct._tag* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load %struct._codec_map*, %struct._codec_map** %12, align 8
  call void @my_type_check(i32 %17, %struct._codec_map* %18)
  %19 = load %struct._codec_map*, %struct._codec_map** %12, align 8
  %20 = load i32, i32* %13, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %19, i64 %21
  %23 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %22, i32 0, i32 1
  %24 = load void (i8*, i8*, i64*)*, void (i8*, i8*, i64*)** %23, align 8
  %25 = load %struct._sdh_ha_v1*, %struct._sdh_ha_v1** %7, align 8
  %26 = getelementptr inbounds %struct._sdh_ha_v1, %struct._sdh_ha_v1* %25, i32 0, i32 2
  %27 = getelementptr inbounds [2000 x i8], [2000 x i8]* %26, i64 0, i64 0
  %28 = load i8*, i8** %9, align 8
  %29 = load i64*, i64** %10, align 8
  call void %24(i8* %27, i8* %28, i64* %29)
  %30 = load %struct._sdh_ha_v1*, %struct._sdh_ha_v1** %7, align 8
  %31 = getelementptr inbounds %struct._sdh_ha_v1, %struct._sdh_ha_v1* %30, i32 0, i32 0
  %32 = load %struct._tag*, %struct._tag** %11, align 8
  call void @my_tag_encode(%struct._tag* %31, %struct._tag* %32)
  %33 = load %struct._sdh_ha_v1*, %struct._sdh_ha_v1** %7, align 8
  %34 = getelementptr inbounds %struct._sdh_ha_v1, %struct._sdh_ha_v1* %33, i32 0, i32 1
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  call void @my_len_encode(i32* %34, i64 %36)
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 12
  %40 = add i64 %39, 4
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_gaps_data_decode(%struct._sdh_ha_v1*, i64, i8*, i64*, %struct._tag*, %struct._codec_map*) #0 {
  %7 = alloca %struct._sdh_ha_v1*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct._tag*, align 8
  %12 = alloca %struct._codec_map*, align 8
  %13 = alloca i32, align 4
  store %struct._sdh_ha_v1* %0, %struct._sdh_ha_v1** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct._tag* %4, %struct._tag** %11, align 8
  store %struct._codec_map* %5, %struct._codec_map** %12, align 8
  %14 = load %struct._tag*, %struct._tag** %11, align 8
  %15 = getelementptr inbounds %struct._tag, %struct._tag* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load %struct._codec_map*, %struct._codec_map** %12, align 8
  call void @my_type_check(i32 %17, %struct._codec_map* %18)
  %19 = load %struct._tag*, %struct._tag** %11, align 8
  %20 = load %struct._sdh_ha_v1*, %struct._sdh_ha_v1** %7, align 8
  %21 = getelementptr inbounds %struct._sdh_ha_v1, %struct._sdh_ha_v1* %20, i32 0, i32 0
  call void @my_tag_decode(%struct._tag* %19, %struct._tag* %21)
  %22 = load i64*, i64** %10, align 8
  %23 = load %struct._sdh_ha_v1*, %struct._sdh_ha_v1** %7, align 8
  %24 = getelementptr inbounds %struct._sdh_ha_v1, %struct._sdh_ha_v1* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  call void @my_len_decode(i64* %22, i32 %25)
  %26 = load %struct._codec_map*, %struct._codec_map** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %26, i64 %28
  %30 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %29, i32 0, i32 2
  %31 = load void (i8*, i8*, i64*)*, void (i8*, i8*, i64*)** %30, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct._sdh_ha_v1*, %struct._sdh_ha_v1** %7, align 8
  %34 = getelementptr inbounds %struct._sdh_ha_v1, %struct._sdh_ha_v1* %33, i32 0, i32 2
  %35 = getelementptr inbounds [2000 x i8], [2000 x i8]* %34, i64 0, i64 0
  call void %31(i8* %32, i8* %35, i64* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_xdc_asyn_send(i8*, i8*, %struct._tag*, %struct._codec_map*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._tag*, align 8
  %8 = alloca %struct._codec_map*, align 8
  %9 = alloca %struct._sdh_ha_v1, align 4
  %10 = alloca %struct._sdh_ha_v1*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct._tag* %2, %struct._tag** %7, align 8
  store %struct._codec_map* %3, %struct._codec_map** %8, align 8
  store %struct._sdh_ha_v1* %9, %struct._sdh_ha_v1** %10, align 8
  %14 = load %struct._sdh_ha_v1*, %struct._sdh_ha_v1** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct._tag*, %struct._tag** %7, align 8
  %17 = load %struct._codec_map*, %struct._codec_map** %8, align 8
  call void @my_gaps_data_encode(%struct._sdh_ha_v1* %14, i64* %11, i8* %15, i64* %12, %struct._tag* %16, %struct._codec_map* %17)
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct._sdh_ha_v1*, %struct._sdh_ha_v1** %10, align 8
  %20 = bitcast %struct._sdh_ha_v1* %19 to i8*
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @zmq_send(i8* %18, i8* %20, i64 %21, i32 0)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32* @__errno_location() #8
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @zmq_strerror(i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %4
  ret void
}

declare dso_local i32 @zmq_send(i8*, i8*, i64, i32) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i8* @zmq_strerror(i32) #3

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_xdc_blocking_recv(i8*, i8*, %struct._tag*, %struct._codec_map*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._tag*, align 8
  %8 = alloca %struct._codec_map*, align 8
  %9 = alloca %struct._sdh_ha_v1, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct._tag* %2, %struct._tag** %7, align 8
  store %struct._codec_map* %3, %struct._codec_map** %8, align 8
  %13 = bitcast %struct._sdh_ha_v1* %9 to i8*
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @zmq_recv(i8* %14, i8* %15, i64 2016, i32 0)
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct._sdh_ha_v1*
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct._tag*, %struct._tag** %7, align 8
  %23 = load %struct._codec_map*, %struct._codec_map** %8, align 8
  call void @my_gaps_data_decode(%struct._sdh_ha_v1* %18, i64 %20, i8* %21, i64* %12, %struct._tag* %22, %struct._codec_map* %23)
  ret void
}

declare dso_local i32 @zmq_recv(i8*, i8*, i64, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @my_xdc_pub_socket(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @zmq_socket(i8* %5, i32 1)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @zmq_connect(i8* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %8, i32* %3, align 4
  %9 = load i8*, i8** %4, align 8
  ret i8* %9
}

declare dso_local i8* @zmq_socket(i8*, i32) #3

declare dso_local i32 @zmq_connect(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @my_xdc_sub_socket(i64, i32, i8*) #0 {
  %4 = alloca %struct._tag, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._tag, align 4
  %9 = alloca i8*, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %0, i64* %10, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %11, align 4
  %12 = bitcast %struct._tag* %4 to i8*
  %13 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @zmq_socket(i8* %14, i32 2)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @zmq_connect(i8* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  call void @my_tag_encode(%struct._tag* %8, %struct._tag* %4)
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast %struct._tag* %8 to i8*
  %20 = call i32 @zmq_setsockopt(i8* %18, i32 6, i8* %19, i64 12)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %25

24:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.my_xdc_sub_socket, i64 0, i64 0)) #7
  unreachable

25:                                               ; preds = %23
  %26 = load i8*, i8** %9, align 8
  ret i8* %26
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @zmq_setsockopt(i8*, i32, i8*, i64) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_tag_write(%struct._tag*, i32, i32, i32) #0 {
  %5 = alloca %struct._tag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._tag* %0, %struct._tag** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct._tag*, %struct._tag** %5, align 8
  %11 = getelementptr inbounds %struct._tag, %struct._tag* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tag*, %struct._tag** %5, align 8
  %14 = getelementptr inbounds %struct._tag, %struct._tag* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct._tag*, %struct._tag** %5, align 8
  %17 = getelementptr inbounds %struct._tag, %struct._tag* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hal_init(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_handle_nextrpc(%struct._tag*) #0 {
  %2 = alloca %struct._tag*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._tag, align 4
  %6 = alloca %struct._tag, align 4
  %7 = alloca [200 x %struct._codec_map], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct._nextrpc_datatype, align 1
  %10 = alloca %struct._okay_datatype, align 1
  %11 = alloca i8*, align 8
  %12 = alloca { i64, i32 }, align 4
  store %struct._tag* %0, %struct._tag** %2, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 200
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 %18
  %20 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %13

24:                                               ; preds = %13
  %25 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @nextrpc_data_encode, void (i8*, i8*, i64*)* @nextrpc_data_decode, i32 1, %struct._codec_map* %25)
  %26 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @okay_data_encode, void (i8*, i8*, i64*)* @okay_data_decode, i32 2, %struct._codec_map* %26)
  %27 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_recognize_data_encode, void (i8*, i8*, i64*)* @request_recognize_data_decode, i32 3, %struct._codec_map* %27)
  %28 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_recognize_data_encode, void (i8*, i8*, i64*)* @response_recognize_data_decode, i32 4, %struct._codec_map* %28)
  %29 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_start_recognizer_data_encode, void (i8*, i8*, i64*)* @request_start_recognizer_data_decode, i32 5, %struct._codec_map* %29)
  %30 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_start_recognizer_data_encode, void (i8*, i8*, i64*)* @response_start_recognizer_data_decode, i32 6, %struct._codec_map* %30)
  %31 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_stop_recognizer_data_encode, void (i8*, i8*, i64*)* @request_stop_recognizer_data_decode, i32 7, %struct._codec_map* %31)
  %32 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_stop_recognizer_data_encode, void (i8*, i8*, i64*)* @response_stop_recognizer_data_decode, i32 8, %struct._codec_map* %32)
  %33 = bitcast %struct._nextrpc_datatype* %9 to i8*
  call void @llvm.var.annotation(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 147)
  %34 = bitcast %struct._okay_datatype* %10 to i8*
  call void @llvm.var.annotation(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 154)
  call void @my_tag_write(%struct._tag* %5, i32 1, i32 1, i32 1)
  %35 = call i8* @zmq_ctx_new()
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @my_xdc_pub_socket(i8* %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast { i64, i32 }* %12 to i8*
  %40 = bitcast %struct._tag* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @my_xdc_sub_socket(i64 %42, i32 %44, i8* %38)
  store i8* %45, i8** %4, align 8
  %46 = call i32 @sleep(i32 1)
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast %struct._nextrpc_datatype* %9 to i8*
  %49 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_blocking_recv(i8* %47, i8* %48, %struct._tag* %5, %struct._codec_map* %49)
  call void @my_tag_write(%struct._tag* %6, i32 2, i32 2, i32 2)
  %50 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %10, i32 0, i32 0
  store i32 0, i32* %50, align 1
  %51 = load i8*, i8** %3, align 8
  %52 = bitcast %struct._okay_datatype* %10 to i8*
  %53 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_asyn_send(i8* %51, i8* %52, %struct._tag* %6, %struct._codec_map* %53)
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @zmq_close(i8* %54)
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @zmq_close(i8* %56)
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @zmq_ctx_shutdown(i8* %58)
  %60 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 1
  %62 = load %struct._tag*, %struct._tag** %2, align 8
  %63 = getelementptr inbounds %struct._tag, %struct._tag* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %9, i32 0, i32 1
  %65 = load i32, i32* %64, align 1
  %66 = load %struct._tag*, %struct._tag** %2, align 8
  %67 = getelementptr inbounds %struct._tag, %struct._tag* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %9, i32 0, i32 2
  %69 = load i32, i32* %68, align 1
  %70 = load %struct._tag*, %struct._tag** %2, align 8
  %71 = getelementptr inbounds %struct._tag, %struct._tag* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local void @nextrpc_data_encode(i8*, i8*, i64*) #3

declare dso_local void @nextrpc_data_decode(i8*, i8*, i64*) #3

declare dso_local void @okay_data_encode(i8*, i8*, i64*) #3

declare dso_local void @okay_data_decode(i8*, i8*, i64*) #3

declare dso_local void @request_recognize_data_encode(i8*, i8*, i64*) #3

declare dso_local void @request_recognize_data_decode(i8*, i8*, i64*) #3

declare dso_local void @response_recognize_data_encode(i8*, i8*, i64*) #3

declare dso_local void @response_recognize_data_decode(i8*, i8*, i64*) #3

declare dso_local void @request_start_recognizer_data_encode(i8*, i8*, i64*) #3

declare dso_local void @request_start_recognizer_data_decode(i8*, i8*, i64*) #3

declare dso_local void @response_start_recognizer_data_encode(i8*, i8*, i64*) #3

declare dso_local void @response_start_recognizer_data_decode(i8*, i8*, i64*) #3

declare dso_local void @request_stop_recognizer_data_encode(i8*, i8*, i64*) #3

declare dso_local void @request_stop_recognizer_data_decode(i8*, i8*, i64*) #3

declare dso_local void @response_stop_recognizer_data_encode(i8*, i8*, i64*) #3

declare dso_local void @response_stop_recognizer_data_decode(i8*, i8*, i64*) #3

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #5

declare dso_local i8* @zmq_ctx_new() #3

declare dso_local i32 @sleep(i32) #3

declare dso_local i32 @zmq_close(i8*) #3

declare dso_local i32 @zmq_ctx_shutdown(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_handle_request_recognize(%struct._tag*) #0 {
  %2 = alloca %struct._tag*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._tag, align 4
  %6 = alloca %struct._tag, align 4
  %7 = alloca [200 x %struct._codec_map], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct._request_recognize_datatype, align 1
  %10 = alloca %struct._response_recognize_datatype, align 1
  %11 = alloca i8*, align 8
  %12 = alloca { i64, i32 }, align 4
  store %struct._tag* %0, %struct._tag** %2, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 200
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 %18
  %20 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %13

24:                                               ; preds = %13
  %25 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @nextrpc_data_encode, void (i8*, i8*, i64*)* @nextrpc_data_decode, i32 1, %struct._codec_map* %25)
  %26 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @okay_data_encode, void (i8*, i8*, i64*)* @okay_data_decode, i32 2, %struct._codec_map* %26)
  %27 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_recognize_data_encode, void (i8*, i8*, i64*)* @request_recognize_data_decode, i32 3, %struct._codec_map* %27)
  %28 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_recognize_data_encode, void (i8*, i8*, i64*)* @response_recognize_data_decode, i32 4, %struct._codec_map* %28)
  %29 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_start_recognizer_data_encode, void (i8*, i8*, i64*)* @request_start_recognizer_data_decode, i32 5, %struct._codec_map* %29)
  %30 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_start_recognizer_data_encode, void (i8*, i8*, i64*)* @response_start_recognizer_data_decode, i32 6, %struct._codec_map* %30)
  %31 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_stop_recognizer_data_encode, void (i8*, i8*, i64*)* @request_stop_recognizer_data_decode, i32 7, %struct._codec_map* %31)
  %32 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_stop_recognizer_data_encode, void (i8*, i8*, i64*)* @response_stop_recognizer_data_decode, i32 8, %struct._codec_map* %32)
  %33 = bitcast %struct._request_recognize_datatype* %9 to i8*
  call void @llvm.var.annotation(i8* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 221)
  call void @my_tag_write(%struct._tag* %5, i32 1, i32 1, i32 3)
  %34 = bitcast %struct._response_recognize_datatype* %10 to i8*
  call void @llvm.var.annotation(i8* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 233)
  call void @my_tag_write(%struct._tag* %6, i32 2, i32 2, i32 4)
  %35 = call i8* @zmq_ctx_new()
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @my_xdc_pub_socket(i8* %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast { i64, i32 }* %12 to i8*
  %40 = bitcast %struct._tag* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @my_xdc_sub_socket(i64 %42, i32 %44, i8* %38)
  store i8* %45, i8** %4, align 8
  %46 = call i32 @sleep(i32 1)
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast %struct._request_recognize_datatype* %9 to i8*
  %49 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_blocking_recv(i8* %47, i8* %48, %struct._tag* %5, %struct._codec_map* %49)
  %50 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %9, i32 0, i32 0
  %51 = getelementptr inbounds [128 x double], [128 x double]* %50, i64 0, i64 0
  %52 = call i32 @recognize(double* %51)
  %53 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 1
  %54 = load i8*, i8** %3, align 8
  %55 = bitcast %struct._response_recognize_datatype* %10 to i8*
  %56 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_asyn_send(i8* %54, i8* %55, %struct._tag* %6, %struct._codec_map* %56)
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @zmq_close(i8* %57)
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @zmq_close(i8* %59)
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @zmq_ctx_shutdown(i8* %61)
  ret void
}

declare dso_local i32 @recognize(double*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_handle_request_start_recognizer(%struct._tag*) #0 {
  %2 = alloca %struct._tag*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._tag, align 4
  %6 = alloca %struct._tag, align 4
  %7 = alloca [200 x %struct._codec_map], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct._request_start_recognizer_datatype, align 1
  %10 = alloca %struct._response_start_recognizer_datatype, align 1
  %11 = alloca i8*, align 8
  %12 = alloca { i64, i32 }, align 4
  store %struct._tag* %0, %struct._tag** %2, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 200
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 %18
  %20 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %13

24:                                               ; preds = %13
  %25 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @nextrpc_data_encode, void (i8*, i8*, i64*)* @nextrpc_data_decode, i32 1, %struct._codec_map* %25)
  %26 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @okay_data_encode, void (i8*, i8*, i64*)* @okay_data_decode, i32 2, %struct._codec_map* %26)
  %27 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_recognize_data_encode, void (i8*, i8*, i64*)* @request_recognize_data_decode, i32 3, %struct._codec_map* %27)
  %28 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_recognize_data_encode, void (i8*, i8*, i64*)* @response_recognize_data_decode, i32 4, %struct._codec_map* %28)
  %29 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_start_recognizer_data_encode, void (i8*, i8*, i64*)* @request_start_recognizer_data_decode, i32 5, %struct._codec_map* %29)
  %30 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_start_recognizer_data_encode, void (i8*, i8*, i64*)* @response_start_recognizer_data_decode, i32 6, %struct._codec_map* %30)
  %31 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_stop_recognizer_data_encode, void (i8*, i8*, i64*)* @request_stop_recognizer_data_decode, i32 7, %struct._codec_map* %31)
  %32 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_stop_recognizer_data_encode, void (i8*, i8*, i64*)* @response_stop_recognizer_data_decode, i32 8, %struct._codec_map* %32)
  %33 = bitcast %struct._request_start_recognizer_datatype* %9 to i8*
  call void @llvm.var.annotation(i8* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 301)
  call void @my_tag_write(%struct._tag* %5, i32 1, i32 1, i32 5)
  %34 = bitcast %struct._response_start_recognizer_datatype* %10 to i8*
  call void @llvm.var.annotation(i8* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 313)
  call void @my_tag_write(%struct._tag* %6, i32 2, i32 2, i32 6)
  %35 = call i8* @zmq_ctx_new()
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @my_xdc_pub_socket(i8* %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast { i64, i32 }* %12 to i8*
  %40 = bitcast %struct._tag* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @my_xdc_sub_socket(i64 %42, i32 %44, i8* %38)
  store i8* %45, i8** %4, align 8
  %46 = call i32 @sleep(i32 1)
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast %struct._request_start_recognizer_datatype* %9 to i8*
  %49 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_blocking_recv(i8* %47, i8* %48, %struct._tag* %5, %struct._codec_map* %49)
  %50 = call i32 (...) @start_recognizer()
  %51 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 1
  %52 = load i8*, i8** %3, align 8
  %53 = bitcast %struct._response_start_recognizer_datatype* %10 to i8*
  %54 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_asyn_send(i8* %52, i8* %53, %struct._tag* %6, %struct._codec_map* %54)
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @zmq_close(i8* %55)
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @zmq_close(i8* %57)
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @zmq_ctx_shutdown(i8* %59)
  ret void
}

declare dso_local i32 @start_recognizer(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_handle_request_stop_recognizer(%struct._tag*) #0 {
  %2 = alloca %struct._tag*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._tag, align 4
  %6 = alloca %struct._tag, align 4
  %7 = alloca [200 x %struct._codec_map], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct._request_stop_recognizer_datatype, align 1
  %10 = alloca %struct._response_stop_recognizer_datatype, align 1
  %11 = alloca i8*, align 8
  %12 = alloca { i64, i32 }, align 4
  store %struct._tag* %0, %struct._tag** %2, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 200
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 %18
  %20 = getelementptr inbounds %struct._codec_map, %struct._codec_map* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %13

24:                                               ; preds = %13
  %25 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @nextrpc_data_encode, void (i8*, i8*, i64*)* @nextrpc_data_decode, i32 1, %struct._codec_map* %25)
  %26 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @okay_data_encode, void (i8*, i8*, i64*)* @okay_data_decode, i32 2, %struct._codec_map* %26)
  %27 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_recognize_data_encode, void (i8*, i8*, i64*)* @request_recognize_data_decode, i32 3, %struct._codec_map* %27)
  %28 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_recognize_data_encode, void (i8*, i8*, i64*)* @response_recognize_data_decode, i32 4, %struct._codec_map* %28)
  %29 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_start_recognizer_data_encode, void (i8*, i8*, i64*)* @request_start_recognizer_data_decode, i32 5, %struct._codec_map* %29)
  %30 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_start_recognizer_data_encode, void (i8*, i8*, i64*)* @response_start_recognizer_data_decode, i32 6, %struct._codec_map* %30)
  %31 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @request_stop_recognizer_data_encode, void (i8*, i8*, i64*)* @request_stop_recognizer_data_decode, i32 7, %struct._codec_map* %31)
  %32 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_register(void (i8*, i8*, i64*)* @response_stop_recognizer_data_encode, void (i8*, i8*, i64*)* @response_stop_recognizer_data_decode, i32 8, %struct._codec_map* %32)
  %33 = bitcast %struct._request_stop_recognizer_datatype* %9 to i8*
  call void @llvm.var.annotation(i8* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 381)
  call void @my_tag_write(%struct._tag* %5, i32 1, i32 1, i32 7)
  %34 = bitcast %struct._response_stop_recognizer_datatype* %10 to i8*
  call void @llvm.var.annotation(i8* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 393)
  call void @my_tag_write(%struct._tag* %6, i32 2, i32 2, i32 8)
  %35 = call i8* @zmq_ctx_new()
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @my_xdc_pub_socket(i8* %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast { i64, i32 }* %12 to i8*
  %40 = bitcast %struct._tag* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @my_xdc_sub_socket(i64 %42, i32 %44, i8* %38)
  store i8* %45, i8** %4, align 8
  %46 = call i32 @sleep(i32 1)
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast %struct._request_stop_recognizer_datatype* %9 to i8*
  %49 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_blocking_recv(i8* %47, i8* %48, %struct._tag* %5, %struct._codec_map* %49)
  %50 = call i32 (...) @stop_recognizer()
  %51 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 1
  %52 = load i8*, i8** %3, align 8
  %53 = bitcast %struct._response_stop_recognizer_datatype* %10 to i8*
  %54 = getelementptr inbounds [200 x %struct._codec_map], [200 x %struct._codec_map]* %7, i64 0, i64 0
  call void @my_xdc_asyn_send(i8* %52, i8* %53, %struct._tag* %6, %struct._codec_map* %54)
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @zmq_close(i8* %55)
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @zmq_close(i8* %57)
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @zmq_ctx_shutdown(i8* %59)
  ret void
}

declare dso_local i32 @stop_recognizer(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_wrapper_nextrpc(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %1, %3
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct._tag*
  call void @_handle_nextrpc(%struct._tag* %5)
  br label %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_wrapper_request_recognize(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %1, %3
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct._tag*
  call void @_handle_request_recognize(%struct._tag* %5)
  br label %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_wrapper_request_start_recognizer(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %1, %3
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct._tag*
  call void @_handle_request_start_recognizer(%struct._tag* %5)
  br label %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_wrapper_request_stop_recognizer(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %1, %3
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct._tag*
  call void @_handle_request_stop_recognizer(%struct._tag* %5)
  br label %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_slave_rpc_loop() #0 {
  %1 = alloca %struct._tag, align 4
  %2 = alloca [4 x i64], align 16
  %3 = alloca i32, align 4
  call void @_hal_init(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %4 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %5 = bitcast %struct._tag* %1 to i8*
  %6 = call i32 @pthread_create(i64* %4, %union.pthread_attr_t* null, i8* (i8*)* @_wrapper_nextrpc, i8* %5) #5
  %7 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 1
  %8 = bitcast %struct._tag* %1 to i8*
  %9 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* null, i8* (i8*)* @_wrapper_request_recognize, i8* %8) #5
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 2
  %11 = bitcast %struct._tag* %1 to i8*
  %12 = call i32 @pthread_create(i64* %10, %union.pthread_attr_t* null, i8* (i8*)* @_wrapper_request_start_recognizer, i8* %11) #5
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 3
  %14 = bitcast %struct._tag* %1 to i8*
  %15 = call i32 @pthread_create(i64* %13, %union.pthread_attr_t* null, i8* (i8*)* @_wrapper_request_stop_recognizer, i8* %14) #5
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %25, %0
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @pthread_join(i64 %23, i8** null)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %16

28:                                               ; preds = %16
  ret i32 0
}

; Function Attrs: nounwind
declare !callback !2 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #6

declare dso_local i32 @pthread_join(i64, i8**) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
