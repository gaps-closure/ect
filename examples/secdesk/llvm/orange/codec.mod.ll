; ModuleID = './examples/secdesk/c/orange/codec.mod.c'
source_filename = "./examples/secdesk/c/orange/codec.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type <{ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }>
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._nextrpc_datatype = type { i32, i32, i32, %struct._trailer_datatype }
%struct._trailer_datatype = type { i32, i32, i32, i16, i16 }
%struct._nextrpc_output = type { i32, i32, i32, %struct._trailer_datatype }
%struct._okay_datatype = type { i32, %struct._trailer_datatype }
%struct._okay_output = type { i32, %struct._trailer_datatype }
%struct._request_recognize_datatype = type { [128 x double], %struct._trailer_datatype }
%struct._request_recognize_output = type { [128 x i64], %struct._trailer_datatype }
%struct._response_recognize_datatype = type { i32, %struct._trailer_datatype }
%struct._response_recognize_output = type { i32, %struct._trailer_datatype }
%struct._request_start_recognizer_datatype = type { i32, %struct._trailer_datatype }
%struct._request_start_recognizer_output = type { i32, %struct._trailer_datatype }
%struct._response_start_recognizer_datatype = type { i32, %struct._trailer_datatype }
%struct._response_start_recognizer_output = type { i32, %struct._trailer_datatype }
%struct._request_stop_recognizer_datatype = type { i32, %struct._trailer_datatype }
%struct._request_stop_recognizer_output = type { i32, %struct._trailer_datatype }
%struct._response_stop_recognizer_datatype = type { i32, %struct._trailer_datatype }
%struct._response_stop_recognizer_output = type { i32, %struct._trailer_datatype }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"nextrpc(len=%ld): \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %d,\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" %u, %u, %u, %hu, %hu\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"okay(len=%ld): \00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"request_recognize(len=%ld): \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %lf,\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"response_recognize(len=%ld): \00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"request_start_recognizer(len=%ld): \00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"response_start_recognizer(len=%ld): \00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"request_stop_recognizer(len=%ld): \00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"response_stop_recognizer(len=%ld): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nextrpc_print(%struct._nextrpc_datatype*) #0 {
  %2 = alloca %struct._nextrpc_datatype*, align 8
  store %struct._nextrpc_datatype* %0, %struct._nextrpc_datatype** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 28)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %2, align 8
  %7 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %2, align 8
  %12 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 1
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %2, align 8
  %17 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 1
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %2, align 8
  %22 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 1
  %25 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %2, align 8
  %26 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 1
  %29 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %2, align 8
  %30 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 1
  %33 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %2, align 8
  %34 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %34, i32 0, i32 3
  %36 = load i16, i16* %35, align 1
  %37 = zext i16 %36 to i32
  %38 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %2, align 8
  %39 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %39, i32 0, i32 4
  %41 = load i16, i16* %40, align 1
  %42 = zext i16 %41 to i32
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %28, i32 %32, i32 %37, i32 %42)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nextrpc_data_encode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._nextrpc_datatype*, align 8
  %8 = alloca %struct._nextrpc_output*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._nextrpc_datatype*
  store %struct._nextrpc_datatype* %10, %struct._nextrpc_datatype** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._nextrpc_output*
  store %struct._nextrpc_output* %12, %struct._nextrpc_output** %8, align 8
  %13 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %7, align 8
  %14 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @htonl(i32 %15) #3
  %17 = load %struct._nextrpc_output*, %struct._nextrpc_output** %8, align 8
  %18 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %7, align 8
  %20 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 1
  %22 = call i32 @htonl(i32 %21) #3
  %23 = load %struct._nextrpc_output*, %struct._nextrpc_output** %8, align 8
  %24 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 1
  %25 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %7, align 8
  %26 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 1
  %28 = call i32 @htonl(i32 %27) #3
  %29 = load %struct._nextrpc_output*, %struct._nextrpc_output** %8, align 8
  %30 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 1
  %31 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %7, align 8
  %32 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 1
  %35 = call i32 @htonl(i32 %34) #3
  %36 = load %struct._nextrpc_output*, %struct._nextrpc_output** %8, align 8
  %37 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 1
  %39 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %7, align 8
  %40 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 1
  %43 = call i32 @htonl(i32 %42) #3
  %44 = load %struct._nextrpc_output*, %struct._nextrpc_output** %8, align 8
  %45 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 1
  %47 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %7, align 8
  %48 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 1
  %51 = call i32 @htonl(i32 %50) #3
  %52 = load %struct._nextrpc_output*, %struct._nextrpc_output** %8, align 8
  %53 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 1
  %55 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %7, align 8
  %56 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %56, i32 0, i32 3
  %58 = load i16, i16* %57, align 1
  %59 = call zeroext i16 @htons(i16 zeroext %58) #3
  %60 = load %struct._nextrpc_output*, %struct._nextrpc_output** %8, align 8
  %61 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %61, i32 0, i32 3
  store i16 %59, i16* %62, align 1
  %63 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %7, align 8
  %64 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %64, i32 0, i32 4
  %66 = load i16, i16* %65, align 1
  %67 = call zeroext i16 @htons(i16 zeroext %66) #3
  %68 = load %struct._nextrpc_output*, %struct._nextrpc_output** %8, align 8
  %69 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %69, i32 0, i32 4
  store i16 %67, i16* %70, align 1
  %71 = load i64*, i64** %6, align 8
  store i64 28, i64* %71, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @htonl(i32) #2

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nextrpc_data_decode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._nextrpc_output*, align 8
  %8 = alloca %struct._nextrpc_datatype*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._nextrpc_output*
  store %struct._nextrpc_output* %10, %struct._nextrpc_output** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._nextrpc_datatype*
  store %struct._nextrpc_datatype* %12, %struct._nextrpc_datatype** %8, align 8
  %13 = load %struct._nextrpc_output*, %struct._nextrpc_output** %7, align 8
  %14 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @ntohl(i32 %15) #3
  %17 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %8, align 8
  %18 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._nextrpc_output*, %struct._nextrpc_output** %7, align 8
  %20 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 1
  %22 = call i32 @ntohl(i32 %21) #3
  %23 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %8, align 8
  %24 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 1
  %25 = load %struct._nextrpc_output*, %struct._nextrpc_output** %7, align 8
  %26 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 1
  %28 = call i32 @ntohl(i32 %27) #3
  %29 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %8, align 8
  %30 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 1
  %31 = load %struct._nextrpc_output*, %struct._nextrpc_output** %7, align 8
  %32 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 1
  %35 = call i32 @ntohl(i32 %34) #3
  %36 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %8, align 8
  %37 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 1
  %39 = load %struct._nextrpc_output*, %struct._nextrpc_output** %7, align 8
  %40 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 1
  %43 = call i32 @ntohl(i32 %42) #3
  %44 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %8, align 8
  %45 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 1
  %47 = load %struct._nextrpc_output*, %struct._nextrpc_output** %7, align 8
  %48 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 1
  %51 = call i32 @ntohl(i32 %50) #3
  %52 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %8, align 8
  %53 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 1
  %55 = load %struct._nextrpc_output*, %struct._nextrpc_output** %7, align 8
  %56 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %56, i32 0, i32 3
  %58 = load i16, i16* %57, align 1
  %59 = call zeroext i16 @ntohs(i16 zeroext %58) #3
  %60 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %8, align 8
  %61 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %61, i32 0, i32 3
  store i16 %59, i16* %62, align 1
  %63 = load %struct._nextrpc_output*, %struct._nextrpc_output** %7, align 8
  %64 = getelementptr inbounds %struct._nextrpc_output, %struct._nextrpc_output* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %64, i32 0, i32 4
  %66 = load i16, i16* %65, align 1
  %67 = call zeroext i16 @ntohs(i16 zeroext %66) #3
  %68 = load %struct._nextrpc_datatype*, %struct._nextrpc_datatype** %8, align 8
  %69 = getelementptr inbounds %struct._nextrpc_datatype, %struct._nextrpc_datatype* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %69, i32 0, i32 4
  store i16 %67, i16* %70, align 1
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @ntohl(i32) #2

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @ntohs(i16 zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @okay_print(%struct._okay_datatype*) #0 {
  %2 = alloca %struct._okay_datatype*, align 8
  store %struct._okay_datatype* %0, %struct._okay_datatype** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 20)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct._okay_datatype*, %struct._okay_datatype** %2, align 8
  %7 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct._okay_datatype*, %struct._okay_datatype** %2, align 8
  %12 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 1
  %15 = load %struct._okay_datatype*, %struct._okay_datatype** %2, align 8
  %16 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 1
  %19 = load %struct._okay_datatype*, %struct._okay_datatype** %2, align 8
  %20 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 1
  %23 = load %struct._okay_datatype*, %struct._okay_datatype** %2, align 8
  %24 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %24, i32 0, i32 3
  %26 = load i16, i16* %25, align 1
  %27 = zext i16 %26 to i32
  %28 = load %struct._okay_datatype*, %struct._okay_datatype** %2, align 8
  %29 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %29, i32 0, i32 4
  %31 = load i16, i16* %30, align 1
  %32 = zext i16 %31 to i32
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %27, i32 %32)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @okay_data_encode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._okay_datatype*, align 8
  %8 = alloca %struct._okay_output*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._okay_datatype*
  store %struct._okay_datatype* %10, %struct._okay_datatype** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._okay_output*
  store %struct._okay_output* %12, %struct._okay_output** %8, align 8
  %13 = load %struct._okay_datatype*, %struct._okay_datatype** %7, align 8
  %14 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @htonl(i32 %15) #3
  %17 = load %struct._okay_output*, %struct._okay_output** %8, align 8
  %18 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._okay_datatype*, %struct._okay_datatype** %7, align 8
  %20 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @htonl(i32 %22) #3
  %24 = load %struct._okay_output*, %struct._okay_output** %8, align 8
  %25 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._okay_datatype*, %struct._okay_datatype** %7, align 8
  %28 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @htonl(i32 %30) #3
  %32 = load %struct._okay_output*, %struct._okay_output** %8, align 8
  %33 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._okay_datatype*, %struct._okay_datatype** %7, align 8
  %36 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @htonl(i32 %38) #3
  %40 = load %struct._okay_output*, %struct._okay_output** %8, align 8
  %41 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._okay_datatype*, %struct._okay_datatype** %7, align 8
  %44 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @htons(i16 zeroext %46) #3
  %48 = load %struct._okay_output*, %struct._okay_output** %8, align 8
  %49 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._okay_datatype*, %struct._okay_datatype** %7, align 8
  %52 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @htons(i16 zeroext %54) #3
  %56 = load %struct._okay_output*, %struct._okay_output** %8, align 8
  %57 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  %59 = load i64*, i64** %6, align 8
  store i64 20, i64* %59, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @okay_data_decode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._okay_output*, align 8
  %8 = alloca %struct._okay_datatype*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._okay_output*
  store %struct._okay_output* %10, %struct._okay_output** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._okay_datatype*
  store %struct._okay_datatype* %12, %struct._okay_datatype** %8, align 8
  %13 = load %struct._okay_output*, %struct._okay_output** %7, align 8
  %14 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @ntohl(i32 %15) #3
  %17 = load %struct._okay_datatype*, %struct._okay_datatype** %8, align 8
  %18 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._okay_output*, %struct._okay_output** %7, align 8
  %20 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @ntohl(i32 %22) #3
  %24 = load %struct._okay_datatype*, %struct._okay_datatype** %8, align 8
  %25 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._okay_output*, %struct._okay_output** %7, align 8
  %28 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @ntohl(i32 %30) #3
  %32 = load %struct._okay_datatype*, %struct._okay_datatype** %8, align 8
  %33 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._okay_output*, %struct._okay_output** %7, align 8
  %36 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @ntohl(i32 %38) #3
  %40 = load %struct._okay_datatype*, %struct._okay_datatype** %8, align 8
  %41 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._okay_output*, %struct._okay_output** %7, align 8
  %44 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @ntohs(i16 zeroext %46) #3
  %48 = load %struct._okay_datatype*, %struct._okay_datatype** %8, align 8
  %49 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._okay_output*, %struct._okay_output** %7, align 8
  %52 = getelementptr inbounds %struct._okay_output, %struct._okay_output* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @ntohs(i16 zeroext %54) #3
  %56 = load %struct._okay_datatype*, %struct._okay_datatype** %8, align 8
  %57 = getelementptr inbounds %struct._okay_datatype, %struct._okay_datatype* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_recognize_print(%struct._request_recognize_datatype*) #0 {
  %2 = alloca %struct._request_recognize_datatype*, align 8
  %3 = alloca i32, align 4
  store %struct._request_recognize_datatype* %0, %struct._request_recognize_datatype** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 1040)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %2, align 8
  %12 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %11, i32 0, i32 0
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [128 x double], [128 x double]* %12, i64 0, i64 %14
  %16 = load double, double* %15, align 1
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %2, align 8
  %24 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 1
  %27 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %2, align 8
  %28 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %2, align 8
  %32 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 1
  %35 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %2, align 8
  %36 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 3
  %38 = load i16, i16* %37, align 1
  %39 = zext i16 %38 to i32
  %40 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %2, align 8
  %41 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 4
  %43 = load i16, i16* %42, align 1
  %44 = zext i16 %43 to i32
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %30, i32 %34, i32 %39, i32 %44)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_recognize_data_encode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._request_recognize_datatype*, align 8
  %8 = alloca %struct._request_recognize_output*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct._request_recognize_datatype*
  store %struct._request_recognize_datatype* %11, %struct._request_recognize_datatype** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct._request_recognize_output*
  store %struct._request_recognize_output* %13, %struct._request_recognize_output** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %7, align 8
  %19 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %18, i32 0, i32 0
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x double], [128 x double]* %19, i64 0, i64 %21
  %23 = load double, double* %22, align 1
  %24 = fpext double %23 to x86_fp80
  %25 = call i64 @htond(x86_fp80 %24)
  %26 = load %struct._request_recognize_output*, %struct._request_recognize_output** %8, align 8
  %27 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %26, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [128 x i64], [128 x i64]* %27, i64 0, i64 %29
  store i64 %25, i64* %30, align 1
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %7, align 8
  %36 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @htonl(i32 %38) #3
  %40 = load %struct._request_recognize_output*, %struct._request_recognize_output** %8, align 8
  %41 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 1
  %43 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %7, align 8
  %44 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 1
  %47 = call i32 @htonl(i32 %46) #3
  %48 = load %struct._request_recognize_output*, %struct._request_recognize_output** %8, align 8
  %49 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 1
  %51 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %7, align 8
  %52 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 1
  %55 = call i32 @htonl(i32 %54) #3
  %56 = load %struct._request_recognize_output*, %struct._request_recognize_output** %8, align 8
  %57 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 1
  %59 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %7, align 8
  %60 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %60, i32 0, i32 3
  %62 = load i16, i16* %61, align 1
  %63 = call zeroext i16 @htons(i16 zeroext %62) #3
  %64 = load %struct._request_recognize_output*, %struct._request_recognize_output** %8, align 8
  %65 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %65, i32 0, i32 3
  store i16 %63, i16* %66, align 1
  %67 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %7, align 8
  %68 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %68, i32 0, i32 4
  %70 = load i16, i16* %69, align 1
  %71 = call zeroext i16 @htons(i16 zeroext %70) #3
  %72 = load %struct._request_recognize_output*, %struct._request_recognize_output** %8, align 8
  %73 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %73, i32 0, i32 4
  store i16 %71, i16* %74, align 1
  %75 = load i64*, i64** %6, align 8
  store i64 1040, i64* %75, align 8
  ret void
}

declare dso_local i64 @htond(x86_fp80) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_recognize_data_decode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._request_recognize_output*, align 8
  %8 = alloca %struct._request_recognize_datatype*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct._request_recognize_output*
  store %struct._request_recognize_output* %11, %struct._request_recognize_output** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct._request_recognize_datatype*
  store %struct._request_recognize_datatype* %13, %struct._request_recognize_datatype** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct._request_recognize_output*, %struct._request_recognize_output** %7, align 8
  %19 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %18, i32 0, i32 0
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x i64], [128 x i64]* %19, i64 0, i64 %21
  %23 = load i64, i64* %22, align 1
  %24 = call x86_fp80 @ntohd(i64 %23)
  %25 = fptrunc x86_fp80 %24 to double
  %26 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %8, align 8
  %27 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %26, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [128 x double], [128 x double]* %27, i64 0, i64 %29
  store double %25, double* %30, align 1
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct._request_recognize_output*, %struct._request_recognize_output** %7, align 8
  %36 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @ntohl(i32 %38) #3
  %40 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %8, align 8
  %41 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 1
  %43 = load %struct._request_recognize_output*, %struct._request_recognize_output** %7, align 8
  %44 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 1
  %47 = call i32 @ntohl(i32 %46) #3
  %48 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %8, align 8
  %49 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 1
  %51 = load %struct._request_recognize_output*, %struct._request_recognize_output** %7, align 8
  %52 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 1
  %55 = call i32 @ntohl(i32 %54) #3
  %56 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %8, align 8
  %57 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 1
  %59 = load %struct._request_recognize_output*, %struct._request_recognize_output** %7, align 8
  %60 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %60, i32 0, i32 3
  %62 = load i16, i16* %61, align 1
  %63 = call zeroext i16 @ntohs(i16 zeroext %62) #3
  %64 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %8, align 8
  %65 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %65, i32 0, i32 3
  store i16 %63, i16* %66, align 1
  %67 = load %struct._request_recognize_output*, %struct._request_recognize_output** %7, align 8
  %68 = getelementptr inbounds %struct._request_recognize_output, %struct._request_recognize_output* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %68, i32 0, i32 4
  %70 = load i16, i16* %69, align 1
  %71 = call zeroext i16 @ntohs(i16 zeroext %70) #3
  %72 = load %struct._request_recognize_datatype*, %struct._request_recognize_datatype** %8, align 8
  %73 = getelementptr inbounds %struct._request_recognize_datatype, %struct._request_recognize_datatype* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %73, i32 0, i32 4
  store i16 %71, i16* %74, align 1
  ret void
}

declare dso_local x86_fp80 @ntohd(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_recognize_print(%struct._response_recognize_datatype*) #0 {
  %2 = alloca %struct._response_recognize_datatype*, align 8
  store %struct._response_recognize_datatype* %0, %struct._response_recognize_datatype** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 20)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %2, align 8
  %7 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %2, align 8
  %12 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 1
  %15 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %2, align 8
  %16 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 1
  %19 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %2, align 8
  %20 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 1
  %23 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %2, align 8
  %24 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %24, i32 0, i32 3
  %26 = load i16, i16* %25, align 1
  %27 = zext i16 %26 to i32
  %28 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %2, align 8
  %29 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %29, i32 0, i32 4
  %31 = load i16, i16* %30, align 1
  %32 = zext i16 %31 to i32
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %27, i32 %32)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_recognize_data_encode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._response_recognize_datatype*, align 8
  %8 = alloca %struct._response_recognize_output*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._response_recognize_datatype*
  store %struct._response_recognize_datatype* %10, %struct._response_recognize_datatype** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._response_recognize_output*
  store %struct._response_recognize_output* %12, %struct._response_recognize_output** %8, align 8
  %13 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %7, align 8
  %14 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @htonl(i32 %15) #3
  %17 = load %struct._response_recognize_output*, %struct._response_recognize_output** %8, align 8
  %18 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %7, align 8
  %20 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @htonl(i32 %22) #3
  %24 = load %struct._response_recognize_output*, %struct._response_recognize_output** %8, align 8
  %25 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %7, align 8
  %28 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @htonl(i32 %30) #3
  %32 = load %struct._response_recognize_output*, %struct._response_recognize_output** %8, align 8
  %33 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %7, align 8
  %36 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @htonl(i32 %38) #3
  %40 = load %struct._response_recognize_output*, %struct._response_recognize_output** %8, align 8
  %41 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %7, align 8
  %44 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @htons(i16 zeroext %46) #3
  %48 = load %struct._response_recognize_output*, %struct._response_recognize_output** %8, align 8
  %49 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %7, align 8
  %52 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @htons(i16 zeroext %54) #3
  %56 = load %struct._response_recognize_output*, %struct._response_recognize_output** %8, align 8
  %57 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  %59 = load i64*, i64** %6, align 8
  store i64 20, i64* %59, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_recognize_data_decode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._response_recognize_output*, align 8
  %8 = alloca %struct._response_recognize_datatype*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._response_recognize_output*
  store %struct._response_recognize_output* %10, %struct._response_recognize_output** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._response_recognize_datatype*
  store %struct._response_recognize_datatype* %12, %struct._response_recognize_datatype** %8, align 8
  %13 = load %struct._response_recognize_output*, %struct._response_recognize_output** %7, align 8
  %14 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @ntohl(i32 %15) #3
  %17 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %8, align 8
  %18 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._response_recognize_output*, %struct._response_recognize_output** %7, align 8
  %20 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @ntohl(i32 %22) #3
  %24 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %8, align 8
  %25 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._response_recognize_output*, %struct._response_recognize_output** %7, align 8
  %28 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @ntohl(i32 %30) #3
  %32 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %8, align 8
  %33 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._response_recognize_output*, %struct._response_recognize_output** %7, align 8
  %36 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @ntohl(i32 %38) #3
  %40 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %8, align 8
  %41 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._response_recognize_output*, %struct._response_recognize_output** %7, align 8
  %44 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @ntohs(i16 zeroext %46) #3
  %48 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %8, align 8
  %49 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._response_recognize_output*, %struct._response_recognize_output** %7, align 8
  %52 = getelementptr inbounds %struct._response_recognize_output, %struct._response_recognize_output* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @ntohs(i16 zeroext %54) #3
  %56 = load %struct._response_recognize_datatype*, %struct._response_recognize_datatype** %8, align 8
  %57 = getelementptr inbounds %struct._response_recognize_datatype, %struct._response_recognize_datatype* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_start_recognizer_print(%struct._request_start_recognizer_datatype*) #0 {
  %2 = alloca %struct._request_start_recognizer_datatype*, align 8
  store %struct._request_start_recognizer_datatype* %0, %struct._request_start_recognizer_datatype** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 20)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %2, align 8
  %7 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %2, align 8
  %12 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 1
  %15 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %2, align 8
  %16 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 1
  %19 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %2, align 8
  %20 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 1
  %23 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %2, align 8
  %24 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %24, i32 0, i32 3
  %26 = load i16, i16* %25, align 1
  %27 = zext i16 %26 to i32
  %28 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %2, align 8
  %29 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %29, i32 0, i32 4
  %31 = load i16, i16* %30, align 1
  %32 = zext i16 %31 to i32
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %27, i32 %32)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_start_recognizer_data_encode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._request_start_recognizer_datatype*, align 8
  %8 = alloca %struct._request_start_recognizer_output*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._request_start_recognizer_datatype*
  store %struct._request_start_recognizer_datatype* %10, %struct._request_start_recognizer_datatype** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._request_start_recognizer_output*
  store %struct._request_start_recognizer_output* %12, %struct._request_start_recognizer_output** %8, align 8
  %13 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %7, align 8
  %14 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @htonl(i32 %15) #3
  %17 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %8, align 8
  %18 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %7, align 8
  %20 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @htonl(i32 %22) #3
  %24 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %8, align 8
  %25 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %7, align 8
  %28 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @htonl(i32 %30) #3
  %32 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %8, align 8
  %33 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %7, align 8
  %36 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @htonl(i32 %38) #3
  %40 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %8, align 8
  %41 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %7, align 8
  %44 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @htons(i16 zeroext %46) #3
  %48 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %8, align 8
  %49 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %7, align 8
  %52 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @htons(i16 zeroext %54) #3
  %56 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %8, align 8
  %57 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  %59 = load i64*, i64** %6, align 8
  store i64 20, i64* %59, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_start_recognizer_data_decode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._request_start_recognizer_output*, align 8
  %8 = alloca %struct._request_start_recognizer_datatype*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._request_start_recognizer_output*
  store %struct._request_start_recognizer_output* %10, %struct._request_start_recognizer_output** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._request_start_recognizer_datatype*
  store %struct._request_start_recognizer_datatype* %12, %struct._request_start_recognizer_datatype** %8, align 8
  %13 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %7, align 8
  %14 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @ntohl(i32 %15) #3
  %17 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %8, align 8
  %18 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %7, align 8
  %20 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @ntohl(i32 %22) #3
  %24 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %8, align 8
  %25 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %7, align 8
  %28 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @ntohl(i32 %30) #3
  %32 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %8, align 8
  %33 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %7, align 8
  %36 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @ntohl(i32 %38) #3
  %40 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %8, align 8
  %41 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %7, align 8
  %44 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @ntohs(i16 zeroext %46) #3
  %48 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %8, align 8
  %49 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._request_start_recognizer_output*, %struct._request_start_recognizer_output** %7, align 8
  %52 = getelementptr inbounds %struct._request_start_recognizer_output, %struct._request_start_recognizer_output* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @ntohs(i16 zeroext %54) #3
  %56 = load %struct._request_start_recognizer_datatype*, %struct._request_start_recognizer_datatype** %8, align 8
  %57 = getelementptr inbounds %struct._request_start_recognizer_datatype, %struct._request_start_recognizer_datatype* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_start_recognizer_print(%struct._response_start_recognizer_datatype*) #0 {
  %2 = alloca %struct._response_start_recognizer_datatype*, align 8
  store %struct._response_start_recognizer_datatype* %0, %struct._response_start_recognizer_datatype** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 20)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %2, align 8
  %7 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %2, align 8
  %12 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 1
  %15 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %2, align 8
  %16 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 1
  %19 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %2, align 8
  %20 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 1
  %23 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %2, align 8
  %24 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %24, i32 0, i32 3
  %26 = load i16, i16* %25, align 1
  %27 = zext i16 %26 to i32
  %28 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %2, align 8
  %29 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %29, i32 0, i32 4
  %31 = load i16, i16* %30, align 1
  %32 = zext i16 %31 to i32
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %27, i32 %32)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_start_recognizer_data_encode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._response_start_recognizer_datatype*, align 8
  %8 = alloca %struct._response_start_recognizer_output*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._response_start_recognizer_datatype*
  store %struct._response_start_recognizer_datatype* %10, %struct._response_start_recognizer_datatype** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._response_start_recognizer_output*
  store %struct._response_start_recognizer_output* %12, %struct._response_start_recognizer_output** %8, align 8
  %13 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %7, align 8
  %14 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @htonl(i32 %15) #3
  %17 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %8, align 8
  %18 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %7, align 8
  %20 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @htonl(i32 %22) #3
  %24 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %8, align 8
  %25 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %7, align 8
  %28 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @htonl(i32 %30) #3
  %32 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %8, align 8
  %33 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %7, align 8
  %36 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @htonl(i32 %38) #3
  %40 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %8, align 8
  %41 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %7, align 8
  %44 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @htons(i16 zeroext %46) #3
  %48 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %8, align 8
  %49 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %7, align 8
  %52 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @htons(i16 zeroext %54) #3
  %56 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %8, align 8
  %57 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  %59 = load i64*, i64** %6, align 8
  store i64 20, i64* %59, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_start_recognizer_data_decode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._response_start_recognizer_output*, align 8
  %8 = alloca %struct._response_start_recognizer_datatype*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._response_start_recognizer_output*
  store %struct._response_start_recognizer_output* %10, %struct._response_start_recognizer_output** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._response_start_recognizer_datatype*
  store %struct._response_start_recognizer_datatype* %12, %struct._response_start_recognizer_datatype** %8, align 8
  %13 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %7, align 8
  %14 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @ntohl(i32 %15) #3
  %17 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %8, align 8
  %18 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %7, align 8
  %20 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @ntohl(i32 %22) #3
  %24 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %8, align 8
  %25 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %7, align 8
  %28 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @ntohl(i32 %30) #3
  %32 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %8, align 8
  %33 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %7, align 8
  %36 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @ntohl(i32 %38) #3
  %40 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %8, align 8
  %41 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %7, align 8
  %44 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @ntohs(i16 zeroext %46) #3
  %48 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %8, align 8
  %49 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._response_start_recognizer_output*, %struct._response_start_recognizer_output** %7, align 8
  %52 = getelementptr inbounds %struct._response_start_recognizer_output, %struct._response_start_recognizer_output* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @ntohs(i16 zeroext %54) #3
  %56 = load %struct._response_start_recognizer_datatype*, %struct._response_start_recognizer_datatype** %8, align 8
  %57 = getelementptr inbounds %struct._response_start_recognizer_datatype, %struct._response_start_recognizer_datatype* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_stop_recognizer_print(%struct._request_stop_recognizer_datatype*) #0 {
  %2 = alloca %struct._request_stop_recognizer_datatype*, align 8
  store %struct._request_stop_recognizer_datatype* %0, %struct._request_stop_recognizer_datatype** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 20)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %2, align 8
  %7 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %2, align 8
  %12 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 1
  %15 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %2, align 8
  %16 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 1
  %19 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %2, align 8
  %20 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 1
  %23 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %2, align 8
  %24 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %24, i32 0, i32 3
  %26 = load i16, i16* %25, align 1
  %27 = zext i16 %26 to i32
  %28 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %2, align 8
  %29 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %29, i32 0, i32 4
  %31 = load i16, i16* %30, align 1
  %32 = zext i16 %31 to i32
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %27, i32 %32)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_stop_recognizer_data_encode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._request_stop_recognizer_datatype*, align 8
  %8 = alloca %struct._request_stop_recognizer_output*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._request_stop_recognizer_datatype*
  store %struct._request_stop_recognizer_datatype* %10, %struct._request_stop_recognizer_datatype** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._request_stop_recognizer_output*
  store %struct._request_stop_recognizer_output* %12, %struct._request_stop_recognizer_output** %8, align 8
  %13 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %7, align 8
  %14 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @htonl(i32 %15) #3
  %17 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %8, align 8
  %18 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %7, align 8
  %20 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @htonl(i32 %22) #3
  %24 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %8, align 8
  %25 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %7, align 8
  %28 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @htonl(i32 %30) #3
  %32 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %8, align 8
  %33 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %7, align 8
  %36 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @htonl(i32 %38) #3
  %40 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %8, align 8
  %41 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %7, align 8
  %44 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @htons(i16 zeroext %46) #3
  %48 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %8, align 8
  %49 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %7, align 8
  %52 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @htons(i16 zeroext %54) #3
  %56 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %8, align 8
  %57 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  %59 = load i64*, i64** %6, align 8
  store i64 20, i64* %59, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_stop_recognizer_data_decode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._request_stop_recognizer_output*, align 8
  %8 = alloca %struct._request_stop_recognizer_datatype*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._request_stop_recognizer_output*
  store %struct._request_stop_recognizer_output* %10, %struct._request_stop_recognizer_output** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._request_stop_recognizer_datatype*
  store %struct._request_stop_recognizer_datatype* %12, %struct._request_stop_recognizer_datatype** %8, align 8
  %13 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %7, align 8
  %14 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @ntohl(i32 %15) #3
  %17 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %8, align 8
  %18 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %7, align 8
  %20 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @ntohl(i32 %22) #3
  %24 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %8, align 8
  %25 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %7, align 8
  %28 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @ntohl(i32 %30) #3
  %32 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %8, align 8
  %33 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %7, align 8
  %36 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @ntohl(i32 %38) #3
  %40 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %8, align 8
  %41 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %7, align 8
  %44 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @ntohs(i16 zeroext %46) #3
  %48 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %8, align 8
  %49 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._request_stop_recognizer_output*, %struct._request_stop_recognizer_output** %7, align 8
  %52 = getelementptr inbounds %struct._request_stop_recognizer_output, %struct._request_stop_recognizer_output* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @ntohs(i16 zeroext %54) #3
  %56 = load %struct._request_stop_recognizer_datatype*, %struct._request_stop_recognizer_datatype** %8, align 8
  %57 = getelementptr inbounds %struct._request_stop_recognizer_datatype, %struct._request_stop_recognizer_datatype* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_stop_recognizer_print(%struct._response_stop_recognizer_datatype*) #0 {
  %2 = alloca %struct._response_stop_recognizer_datatype*, align 8
  store %struct._response_stop_recognizer_datatype* %0, %struct._response_stop_recognizer_datatype** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i64 20)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %2, align 8
  %7 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %2, align 8
  %12 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 1
  %15 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %2, align 8
  %16 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 1
  %19 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %2, align 8
  %20 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 1
  %23 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %2, align 8
  %24 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %24, i32 0, i32 3
  %26 = load i16, i16* %25, align 1
  %27 = zext i16 %26 to i32
  %28 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %2, align 8
  %29 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %29, i32 0, i32 4
  %31 = load i16, i16* %30, align 1
  %32 = zext i16 %31 to i32
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %27, i32 %32)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_stop_recognizer_data_encode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._response_stop_recognizer_datatype*, align 8
  %8 = alloca %struct._response_stop_recognizer_output*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._response_stop_recognizer_datatype*
  store %struct._response_stop_recognizer_datatype* %10, %struct._response_stop_recognizer_datatype** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._response_stop_recognizer_output*
  store %struct._response_stop_recognizer_output* %12, %struct._response_stop_recognizer_output** %8, align 8
  %13 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %7, align 8
  %14 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @htonl(i32 %15) #3
  %17 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %8, align 8
  %18 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %7, align 8
  %20 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @htonl(i32 %22) #3
  %24 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %8, align 8
  %25 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %7, align 8
  %28 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @htonl(i32 %30) #3
  %32 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %8, align 8
  %33 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %7, align 8
  %36 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @htonl(i32 %38) #3
  %40 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %8, align 8
  %41 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %7, align 8
  %44 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @htons(i16 zeroext %46) #3
  %48 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %8, align 8
  %49 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %7, align 8
  %52 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @htons(i16 zeroext %54) #3
  %56 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %8, align 8
  %57 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  %59 = load i64*, i64** %6, align 8
  store i64 20, i64* %59, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @response_stop_recognizer_data_decode(i8*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._response_stop_recognizer_output*, align 8
  %8 = alloca %struct._response_stop_recognizer_datatype*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct._response_stop_recognizer_output*
  store %struct._response_stop_recognizer_output* %10, %struct._response_stop_recognizer_output** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._response_stop_recognizer_datatype*
  store %struct._response_stop_recognizer_datatype* %12, %struct._response_stop_recognizer_datatype** %8, align 8
  %13 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %7, align 8
  %14 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 1
  %16 = call i32 @ntohl(i32 %15) #3
  %17 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %8, align 8
  %18 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 1
  %19 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %7, align 8
  %20 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @ntohl(i32 %22) #3
  %24 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %8, align 8
  %25 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 1
  %27 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %7, align 8
  %28 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 1
  %31 = call i32 @ntohl(i32 %30) #3
  %32 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %8, align 8
  %33 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 1
  %35 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %7, align 8
  %36 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 1
  %39 = call i32 @ntohl(i32 %38) #3
  %40 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %8, align 8
  %41 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 1
  %43 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %7, align 8
  %44 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 1
  %47 = call zeroext i16 @ntohs(i16 zeroext %46) #3
  %48 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %8, align 8
  %49 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %49, i32 0, i32 3
  store i16 %47, i16* %50, align 1
  %51 = load %struct._response_stop_recognizer_output*, %struct._response_stop_recognizer_output** %7, align 8
  %52 = getelementptr inbounds %struct._response_stop_recognizer_output, %struct._response_stop_recognizer_output* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 1
  %55 = call zeroext i16 @ntohs(i16 zeroext %54) #3
  %56 = load %struct._response_stop_recognizer_datatype*, %struct._response_stop_recognizer_datatype** %8, align 8
  %57 = getelementptr inbounds %struct._response_stop_recognizer_datatype, %struct._response_stop_recognizer_datatype* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct._trailer_datatype, %struct._trailer_datatype* %57, i32 0, i32 4
  store i16 %55, i16* %58, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
