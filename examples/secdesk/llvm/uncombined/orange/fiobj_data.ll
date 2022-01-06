; ModuleID = 'fiobj_data.c'
source_filename = "fiobj_data.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_data_s = type { %struct.fiobj_object_header_s, i8*, %union.anon, i64, i64, i64, i32 }
%struct.fiobj_object_header_s = type { i8, i32 }
%union.anon = type { i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@FIOBJECT_VTABLE_DATA = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobj_data_dealloc, i64 (i64)* @fiobject___noop_count, i64 (i64)* @fiobj_data_is_true, i64 (i64, i64)* @fiobj_data_iseq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* null, void (%struct.fio_str_info_s*, i64)* @fio_io2str, i64 (i64)* @fiobj_data_i, double (i64)* @fiobject___noop_to_f }, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"FATAL ERROR: fiobj IO couldn't allocate memory\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"FIOBJ_TYPE(io) == FIOBJ_T_DATA\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fiobj_data.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_data_assert_dynamic = private unnamed_addr constant [38 x i8] c"void fiobj_data_assert_dynamic(FIOBJ)\00", align 1
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@__const.fio_tmpfile.name_template = private unnamed_addr constant [31 x i8] c"/tmp/facil_io_tmpfile_XXXXXXXX\00", align 16
@.str.6 = private unnamed_addr constant [54 x i8] c"FATAL ERROR: (fiobj_data) can't create temporary file\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"FATAL ERROR: (fiobj_data) can't write to temporary file\00", align 1

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
define internal void @fiobj_data_dealloc(i64, void (i64, i8*)*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.fiobj_data_s*
  %9 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %41 [
    i32 -1, label %11
    i32 -2, label %35
  ]

11:                                               ; preds = %3
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.fiobj_data_s*
  %14 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %13, i32 0, i32 2
  %15 = bitcast %union.anon* %14 to void (i8*)**
  %16 = load void (i8*)*, void (i8*)** %15, align 8
  %17 = icmp ne void (i8*)* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = inttoptr i64 %25 to %struct.fiobj_data_s*
  %27 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %26, i32 0, i32 2
  %28 = bitcast %union.anon* %27 to void (i8*)**
  %29 = load void (i8*)*, void (i8*)** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = inttoptr i64 %30 to %struct.fiobj_data_s*
  %32 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  call void %29(i8* %33)
  br label %34

34:                                               ; preds = %24, %18, %11
  br label %51

35:                                               ; preds = %3
  %36 = load i64, i64* %4, align 8
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 2
  %39 = bitcast %union.anon* %38 to i64*
  %40 = load i64, i64* %39, align 8
  call void @fiobj_free(i64 %40)
  br label %51

41:                                               ; preds = %3
  %42 = load i64, i64* %4, align 8
  %43 = inttoptr i64 %42 to %struct.fiobj_data_s*
  %44 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @close(i32 %45)
  %47 = load i64, i64* %4, align 8
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  call void @fio_free(i8* %50)
  br label %51

51:                                               ; preds = %41, %35, %34
  %52 = load i64, i64* %4, align 8
  %53 = inttoptr i64 %52 to i8*
  call void @fio_free(i8* %53)
  %54 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8
  %55 = load i8*, i8** %6, align 8
  ret void
}

declare dso_local i64 @fiobject___noop_count(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_is_true(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_data_i(i64 %3)
  %5 = icmp sgt i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_iseq(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @fiobj_data_i(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @fiobj_data_i(i64 %10)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  call void @fio_io2str(%struct.fio_str_info_s* sret %6, i64 %14)
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %4, align 8
  call void @fio_io2str(%struct.fio_str_info_s* sret %7, i64 %17)
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @memcmp(i8* %16, i8* %19, i64 %20) #8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %13, %2
  %25 = phi i1 [ false, %2 ], [ %23, %13 ]
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  ret i64 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_io2str(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to %struct.fiobj_data_s*
  %7 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %35 [
    i32 -1, label %9
    i32 -2, label %21
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.fiobj_data_s*
  %14 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %17 = load i64, i64* %3, align 8
  %18 = inttoptr i64 %17 to %struct.fiobj_data_s*
  %19 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %16, align 8
  br label %93

21:                                               ; preds = %2
  %22 = load i64, i64* %3, align 8
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 2
  %25 = bitcast %union.anon* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = inttoptr i64 %27 to %struct.fiobj_data_s*
  %29 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = inttoptr i64 %31 to %struct.fiobj_data_s*
  %33 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %0, i64 %26, i64 %30, i64 %34)
  br label %93

35:                                               ; preds = %2
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @fiobj_data_get_fd_size(i64 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %43 = load i64, i64* %3, align 8
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %42, align 8
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %48 = load i64, i64* %3, align 8
  %49 = inttoptr i64 %48 to %struct.fiobj_data_s*
  %50 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %47, align 8
  br label %93

52:                                               ; preds = %35
  %53 = load i64, i64* %3, align 8
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %3, align 8
  %57 = inttoptr i64 %56 to %struct.fiobj_data_s*
  %58 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, 1
  call void @fiobj_data_pre_write(i64 %59, i64 %61)
  %62 = load i64, i64* %3, align 8
  %63 = inttoptr i64 %62 to %struct.fiobj_data_s*
  %64 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = inttoptr i64 %66 to %struct.fiobj_data_s*
  %68 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @pread(i32 %65, i8* %69, i64 %70, i64 0)
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %52
  %75 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %77, align 8
  br label %93

78:                                               ; preds = %52
  %79 = load i64, i64* %3, align 8
  %80 = inttoptr i64 %79 to %struct.fiobj_data_s*
  %81 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 0, i8* %84, align 1
  %85 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %87 = load i64, i64* %4, align 8
  store i64 %87, i64* %86, align 8
  %88 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %89 = load i64, i64* %3, align 8
  %90 = inttoptr i64 %89 to %struct.fiobj_data_s*
  %91 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %88, align 8
  br label %93

93:                                               ; preds = %78, %74, %40, %21, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_i(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = inttoptr i64 %4 to %struct.fiobj_data_s*
  %6 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %13 [
    i32 -1, label %8
    i32 -2, label %8
  ]

8:                                                ; preds = %1, %1
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to %struct.fiobj_data_s*
  %11 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @fiobj_data_get_fd_size(i64 %14)
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i64, i64* %2, align 8
  ret i64 %17
}

declare dso_local double @fiobject___noop_to_f(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_newstr() #0 {
  %1 = alloca i64, align 8
  %2 = call noalias i8* @fio_malloc(i64 4096)
  %3 = ptrtoint i8* %2 to i64
  %4 = and i64 %3, 15
  %5 = icmp eq i64 %4, 0
  call void @llvm.assume(i1 %5)
  %6 = call i64 @fiobj_data_alloc(i8* %2, i32 -1)
  store i64 %6, i64* %1, align 8
  br label %7

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = inttoptr i64 %8 to %struct.fiobj_data_s*
  %10 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32* @__errno_location() #9
  %15 = load i32, i32* %14, align 4
  call void @exit(i32 %15) #10
  unreachable

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16
  %18 = load i64, i64* %1, align 8
  %19 = inttoptr i64 %18 to %struct.fiobj_data_s*
  %20 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %19, i32 0, i32 3
  store i64 4096, i64* %20, align 8
  %21 = load i64, i64* %1, align 8
  %22 = inttoptr i64 %21 to %struct.fiobj_data_s*
  %23 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %22, i32 0, i32 2
  %24 = bitcast %union.anon* %23 to void (i8*)**
  store void (i8*)* @fio_free, void (i8*)** %24, align 8
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_alloc(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fiobj_data_s*, align 8
  %6 = alloca %struct.fiobj_data_s, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call noalias i8* @fio_malloc(i64 56)
  %8 = ptrtoint i8* %7 to i64
  %9 = and i64 %8, 15
  %10 = icmp eq i64 %9, 0
  call void @llvm.assume(i1 %10)
  %11 = bitcast i8* %7 to %struct.fiobj_data_s*
  store %struct.fiobj_data_s* %11, %struct.fiobj_data_s** %5, align 8
  br label %12

12:                                               ; preds = %2
  %13 = load %struct.fiobj_data_s*, %struct.fiobj_data_s** %5, align 8
  %14 = icmp eq %struct.fiobj_data_s* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32* @__errno_location() #9
  %17 = load i32, i32* %16, align 4
  call void @exit(i32 %17) #10
  unreachable

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.fiobj_data_s*, %struct.fiobj_data_s** %5, align 8
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %21, i32 0, i32 0
  store i8 43, i8* %22, align 8
  %23 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %21, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 1
  %25 = load i8*, i8** %3, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 2
  %27 = bitcast %union.anon* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false)
  %28 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 6
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %31, align 8
  %33 = bitcast %struct.fiobj_data_s* %20 to i8*
  %34 = bitcast %struct.fiobj_data_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 56, i1 false)
  %35 = load %struct.fiobj_data_s*, %struct.fiobj_data_s** %5, align 8
  %36 = ptrtoint %struct.fiobj_data_s* %35 to i64
  ret i64 %36
}

declare dso_local noalias i8* @fio_malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

declare dso_local void @perror(i8*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

declare dso_local void @fio_free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_newstr2(i8*, i64, void (i8*)*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store void (i8*)* %2, void (i8*)** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @fiobj_data_alloc(i8* %8, i32 -1)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 3
  store i64 %10, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.fiobj_data_s*
  %17 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %16, i32 0, i32 4
  store i64 %14, i64* %17, align 8
  %18 = load void (i8*)*, void (i8*)** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 2
  %22 = bitcast %union.anon* %21 to void (i8*)**
  store void (i8*)* %18, void (i8*)** %22, align 8
  %23 = load i64, i64* %7, align 8
  ret i64 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_newfd(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @fio_malloc(i64 4096)
  %5 = ptrtoint i8* %4 to i64
  %6 = and i64 %5, 15
  %7 = icmp eq i64 %6, 0
  call void @llvm.assume(i1 %7)
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @fiobj_data_alloc(i8* %4, i32 %8)
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32* @__errno_location() #9
  %18 = load i32, i32* %17, align 4
  call void @exit(i32 %18) #10
  unreachable

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %3, align 8
  %22 = inttoptr i64 %21 to %struct.fiobj_data_s*
  %23 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %22, i32 0, i32 2
  %24 = bitcast %union.anon* %23 to i64*
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_newtmpfile() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @fio_tmpfile()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @fiobj_data_newfd(i32 %8)
  store i64 %9, i64* %1, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i64, i64* %1, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_tmpfile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [31 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [31 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* @__const.fio_tmpfile.name_template, i32 0, i32 0), i64 31, i1 false)
  %4 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i64 0, i64 0
  %5 = call i32 @mkstemp(i8* %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_slice(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @fiobj_data_len(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, 1
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %12, %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %30, %23
  %25 = load i64, i64* %4, align 8
  %26 = inttoptr i64 %25 to %struct.fiobj_data_s*
  %27 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, -2
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = inttoptr i64 %31 to %struct.fiobj_data_s*
  %33 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = inttoptr i64 %37 to %struct.fiobj_data_s*
  %39 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %38, i32 0, i32 2
  %40 = bitcast %union.anon* %39 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %4, align 8
  br label %24

42:                                               ; preds = %24
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @fiobj_data_len(i64 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  store i64 0, i64* %6, align 8
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %5, align 8
  br label %61

50:                                               ; preds = %42
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %52, %53
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %5, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %48
  %62 = call i64 @fiobj_data_alloc(i8* null, i32 -2)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %9, align 8
  %65 = inttoptr i64 %64 to %struct.fiobj_data_s*
  %66 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %65, i32 0, i32 3
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = inttoptr i64 %68 to %struct.fiobj_data_s*
  %70 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %69, i32 0, i32 4
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @fiobj_dup(i64 %71)
  %73 = load i64, i64* %9, align 8
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 2
  %76 = bitcast %union.anon* %75 to i64*
  store i64 %72, i64* %76, align 8
  %77 = load i64, i64* %9, align 8
  ret i64 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_len(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 43)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  store i64 -1, i64* %2, align 8
  br label %14

11:                                               ; preds = %6
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @fiobj_data_i(i64 %12)
  store i64 %13, i64* %2, align 8
  br label %14

14:                                               ; preds = %11, %10
  %15 = load i64, i64* %2, align 8
  ret i64 %15
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
define dso_local i32 @fiobj_data_save(i64, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = inttoptr i64 %6 to %struct.fiobj_data_s*
  %8 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %18 [
    i32 -1, label %10
    i32 -2, label %14
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @fiobj_data_save_str(i64 %11, i8* %12)
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @fiobj_data_save_slice(i64 %15, i8* %16)
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @fiobj_data_save_file(i64 %19, i8* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %14, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_data_save_str(i64, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 (i8*, i32, ...) @open(i8* %9, i32 578, i32 511)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = call i32* @__errno_location() #9
  store i32 0, i32* %15, align 4
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %38, %14
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %4, align 8
  %19 = inttoptr i64 %18 to %struct.fiobj_data_s*
  %20 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %27, %28
  %30 = call i64 @write(i32 %17, i8* %23, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %48

34:                                               ; preds = %16
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %4, align 8
  %41 = inttoptr i64 %40 to %struct.fiobj_data_s*
  %42 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %16, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @close(i32 %46)
  store i32 0, i32* %3, align 4
  br label %53

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @unlink(i8* %51) #1
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %45, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_data_save_slice(i64, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 578, i32 511)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = call i32* @__errno_location() #9
  store i32 0, i32* %17, align 4
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %78, %16
  %19 = load i64, i64* %4, align 8
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 2
  %22 = bitcast %union.anon* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %9, i64 %23, i64 %29, i64 4096)
  %30 = bitcast %struct.fio_str_info_s* %7 to i8*
  %31 = bitcast %struct.fio_str_info_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %82

36:                                               ; preds = %18
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %37, %39
  %41 = load i64, i64* %4, align 8
  %42 = inttoptr i64 %41 to %struct.fiobj_data_s*
  %43 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %40, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load i64, i64* %4, align 8
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %50, %51
  %53 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %36
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @write(i32 %59, i8* %61, i64 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %58
  br label %85

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %73, %54
  br label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 4096
  br i1 %81, label %18, label %82

82:                                               ; preds = %78, %35
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @close(i32 %83)
  store i32 0, i32* %3, align 4
  br label %90

85:                                               ; preds = %72
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @close(i32 %86)
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @unlink(i8* %88) #1
  store i32 -1, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %82, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_data_save_file(i64, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 578, i32 511)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = call i32* @__errno_location() #9
  store i32 0, i32* %17, align 4
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %46, %16
  %19 = load i64, i64* %4, align 8
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @pread(i32 %22, i8* %23, i64 1024, i64 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %47

29:                                               ; preds = %18
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @write(i32 %34, i8* %35, i64 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %50

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %42
  br i1 true, label %18, label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @close(i32 %48)
  store i32 0, i32* %3, align 4
  br label %55

50:                                               ; preds = %41, %32
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @unlink(i8* %53) #1
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %47, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_read(%struct.fio_str_info_s* noalias sret, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  store i64 %2, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 43)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %3
  %13 = call i32* @__errno_location() #9
  store i32 14, i32* %13, align 4
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %16, align 8
  br label %32

17:                                               ; preds = %8
  %18 = call i32* @__errno_location() #9
  store i32 0, i32* %18, align 4
  %19 = load i64, i64* %4, align 8
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %29 [
    i32 -1, label %23
    i32 -2, label %26
  ]

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  call void @fiobj_data_read_str(%struct.fio_str_info_s* sret %0, i64 %24, i64 %25)
  br label %32

26:                                               ; preds = %17
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  call void @fiobj_data_read_slice(%struct.fio_str_info_s* sret %0, i64 %27, i64 %28)
  br label %32

29:                                               ; preds = %17
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  call void @fiobj_data_read_file(%struct.fio_str_info_s* sret %0, i64 %30, i64 %31)
  br label %32

32:                                               ; preds = %29, %26, %23, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64, i8 zeroext) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %96 [
    i32 1, label %8
    i32 6, label %23
    i32 22, label %34
    i32 38, label %40
    i32 40, label %46
    i32 42, label %59
    i32 39, label %71
    i32 41, label %71
    i32 43, label %71
    i32 44, label %71
  ]

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = and i64 %9, 1
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 1
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %3, align 8
  br label %121

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @fiobj_null()
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %3, align 8
  br label %121

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @fiobj_true()
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %3, align 8
  br label %121

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @fiobj_false()
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %3, align 8
  br label %121

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8
  %48 = and i64 %47, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = and i64 %51, 6
  %53 = icmp eq i64 %52, 2
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %3, align 8
  br label %121

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8
  %61 = and i64 %60, 1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = and i64 %64, 6
  %66 = icmp eq i64 %65, 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %3, align 8
  br label %121

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8
  %76 = and i64 %75, 1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8
  %80 = and i64 %79, 6
  %81 = icmp ne i64 %80, 6
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8
  %84 = and i64 %83, -8
  %85 = inttoptr i64 %84 to i8*
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ]
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %3, align 8
  br label %121

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8
  %101 = and i64 %100, 1
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8
  %105 = and i64 %104, 6
  %106 = icmp ne i64 %105, 6
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8
  %109 = and i64 %108, -8
  %110 = inttoptr i64 %109 to i8*
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %113, %115
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ]
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read_str(%struct.fio_str_info_s* noalias sret, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  store i64 %2, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.fiobj_data_s*
  %9 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %10, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %19, align 8
  br label %86

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = inttoptr i64 %28 to %struct.fiobj_data_s*
  %30 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %27, %31
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i64, i64* %5, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %41, align 8
  br label %86

42:                                               ; preds = %35
  %43 = load i64, i64* %4, align 8
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* %4, align 8
  %51 = inttoptr i64 %50 to %struct.fiobj_data_s*
  %52 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %51, i32 0, i32 5
  store i64 %49, i64* %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %56, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %42
  %63 = load i64, i64* %4, align 8
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = inttoptr i64 %67 to %struct.fiobj_data_s*
  %69 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %68, i32 0, i32 5
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %42
  %71 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %73 = load i64, i64* %4, align 8
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %72, align 8
  %79 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %80 = load i64, i64* %4, align 8
  %81 = inttoptr i64 %80 to %struct.fiobj_data_s*
  %82 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %79, align 8
  br label %86

86:                                               ; preds = %70, %38, %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read_slice(%struct.fio_str_info_s* noalias sret, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  store i64 %2, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.fiobj_data_s*
  %9 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %10, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %19, align 8
  br label %88

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = inttoptr i64 %28 to %struct.fiobj_data_s*
  %30 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %27, %31
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i64, i64* %5, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %41, align 8
  br label %88

42:                                               ; preds = %35
  %43 = load i64, i64* %4, align 8
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* %4, align 8
  %51 = inttoptr i64 %50 to %struct.fiobj_data_s*
  %52 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %51, i32 0, i32 5
  store i64 %49, i64* %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %56, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %42
  %63 = load i64, i64* %4, align 8
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = inttoptr i64 %67 to %struct.fiobj_data_s*
  %69 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %68, i32 0, i32 5
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %42
  %71 = load i64, i64* %4, align 8
  %72 = inttoptr i64 %71 to %struct.fiobj_data_s*
  %73 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %72, i32 0, i32 2
  %74 = bitcast %union.anon* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %4, align 8
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %76, %80
  %82 = load i64, i64* %4, align 8
  %83 = inttoptr i64 %82 to %struct.fiobj_data_s*
  %84 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = sub i64 %85, %86
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %0, i64 %75, i64 %81, i64 %87)
  br label %88

88:                                               ; preds = %70, %38, %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read_file(%struct.fio_str_info_s* noalias sret, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  store i64 %2, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @fiobj_data_get_fd_size(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = inttoptr i64 %14 to %struct.fiobj_data_s*
  %16 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %15, i32 0, i32 2
  %17 = bitcast %union.anon* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %13, %18
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %12, %3
  %23 = load i64, i64* %5, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call i32* @__errno_location() #9
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %29, align 8
  br label %127

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = inttoptr i64 %32 to %struct.fiobj_data_s*
  %34 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %31, %35
  %37 = load i64, i64* %4, align 8
  %38 = inttoptr i64 %37 to %struct.fiobj_data_s*
  %39 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ule i64 %36, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %47 = load i64, i64* %4, align 8
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = inttoptr i64 %51 to %struct.fiobj_data_s*
  %53 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8* %55, i8** %46, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %4, align 8
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %56
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %4, align 8
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 2
  %66 = bitcast %union.anon* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %62
  store i64 %68, i64* %66, align 8
  br label %127

69:                                               ; preds = %30
  %70 = load i64, i64* %4, align 8
  %71 = inttoptr i64 %70 to %struct.fiobj_data_s*
  %72 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %4, align 8
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %5, align 8
  call void @fiobj_data_pre_write(i64 %76, i64 %77)
  br label %78

78:                                               ; preds = %100, %69
  %79 = load i64, i64* %4, align 8
  %80 = inttoptr i64 %79 to %struct.fiobj_data_s*
  %81 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = inttoptr i64 %83 to %struct.fiobj_data_s*
  %85 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %4, align 8
  %89 = inttoptr i64 %88 to %struct.fiobj_data_s*
  %90 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %89, i32 0, i32 2
  %91 = bitcast %union.anon* %90 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @pread(i32 %82, i8* %86, i64 %87, i64 %92)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp eq i64 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %78
  %97 = call i32* @__errno_location() #9
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %78

101:                                              ; preds = %96, %78
  %102 = load i64, i64* %7, align 8
  %103 = icmp eq i64 %102, -1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %7, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104, %101
  %108 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %110, align 8
  br label %127

111:                                              ; preds = %104
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %4, align 8
  %114 = inttoptr i64 %113 to %struct.fiobj_data_s*
  %115 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %114, i32 0, i32 2
  %116 = bitcast %union.anon* %115 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %112
  store i64 %118, i64* %116, align 8
  %119 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %121 = load i64, i64* %7, align 8
  store i64 %121, i64* %120, align 8
  %122 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %123 = load i64, i64* %4, align 8
  %124 = inttoptr i64 %123 to %struct.fiobj_data_s*
  %125 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %122, align 8
  br label %127

127:                                              ; preds = %111, %107, %42, %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_read2ch(%struct.fio_str_info_s* noalias sret, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %1, i64* %4, align 8
  store i8 %2, i8* %5, align 1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 43)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %3
  %13 = call i32* @__errno_location() #9
  store i32 14, i32* %13, align 4
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %16, align 8
  br label %31

17:                                               ; preds = %8
  %18 = load i64, i64* %4, align 8
  %19 = inttoptr i64 %18 to %struct.fiobj_data_s*
  %20 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %28 [
    i32 -1, label %22
    i32 -2, label %25
  ]

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = load i8, i8* %5, align 1
  call void @fiobj_data_read2ch_str(%struct.fio_str_info_s* sret %0, i64 %23, i8 zeroext %24)
  br label %31

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = load i8, i8* %5, align 1
  call void @fiobj_data_read2ch_slice(%struct.fio_str_info_s* sret %0, i64 %26, i8 zeroext %27)
  br label %31

28:                                               ; preds = %17
  %29 = load i64, i64* %4, align 8
  %30 = load i8, i8* %5, align 1
  call void @fiobj_data_read2ch_file(%struct.fio_str_info_s* sret %0, i64 %29, i8 zeroext %30)
  br label %31

31:                                               ; preds = %28, %25, %22, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read2ch_str(%struct.fio_str_info_s* noalias sret, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i64 %1, i64* %4, align 8
  store i8 %2, i8* %5, align 1
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.fiobj_data_s*
  %11 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to %struct.fiobj_data_s*
  %15 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %12, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %21, align 8
  br label %82

22:                                               ; preds = %3
  %23 = load i64, i64* %4, align 8
  %24 = inttoptr i64 %23 to %struct.fiobj_data_s*
  %25 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = inttoptr i64 %27 to %struct.fiobj_data_s*
  %29 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8* %31, i8** %6, align 8
  %32 = load i64, i64* %4, align 8
  %33 = inttoptr i64 %32 to %struct.fiobj_data_s*
  %34 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %5, align 1
  %43 = call i32 @swallow_ch(i8** %6, i8* %41, i8 zeroext %42)
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %4, align 8
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %46 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = load i64, i64* %4, align 8
  %55 = inttoptr i64 %54 to %struct.fiobj_data_s*
  %56 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %53, %57
  store i64 %58, i64* %45, align 8
  %59 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %60 = load i64, i64* %4, align 8
  %61 = inttoptr i64 %60 to %struct.fiobj_data_s*
  %62 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = inttoptr i64 %64 to %struct.fiobj_data_s*
  %66 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8* %68, i8** %59, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %4, align 8
  %71 = inttoptr i64 %70 to %struct.fiobj_data_s*
  %72 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %69 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = load i64, i64* %4, align 8
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 5
  store i64 %76, i64* %79, align 8
  %80 = bitcast %struct.fio_str_info_s* %0 to i8*
  %81 = bitcast %struct.fio_str_info_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 24, i1 false)
  br label %82

82:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read2ch_slice(%struct.fio_str_info_s* noalias sret, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %1, i64* %4, align 8
  store i8 %2, i8* %5, align 1
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to %struct.fiobj_data_s*
  %10 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.fiobj_data_s*
  %14 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %11, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %20, align 8
  br label %95

21:                                               ; preds = %3
  %22 = load i64, i64* %4, align 8
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 2
  %25 = bitcast %union.anon* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.fiobj_data_s*
  %28 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %4, align 8
  %31 = inttoptr i64 %30 to %struct.fiobj_data_s*
  %32 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = inttoptr i64 %34 to %struct.fiobj_data_s*
  %36 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %33, %37
  %39 = load i64, i64* %4, align 8
  %40 = inttoptr i64 %39 to %struct.fiobj_data_s*
  %41 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %40, i32 0, i32 2
  %42 = bitcast %union.anon* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 5
  store i64 %38, i64* %45, align 8
  %46 = load i64, i64* %4, align 8
  %47 = inttoptr i64 %46 to %struct.fiobj_data_s*
  %48 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %47, i32 0, i32 2
  %49 = bitcast %union.anon* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i8, i8* %5, align 1
  call void @fiobj_data_read2ch(%struct.fio_str_info_s* sret %7, i64 %50, i8 zeroext %51)
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 2
  %56 = bitcast %union.anon* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 5
  store i64 %52, i64* %59, align 8
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = inttoptr i64 %62 to %struct.fiobj_data_s*
  %64 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %61, %65
  %67 = load i64, i64* %4, align 8
  %68 = inttoptr i64 %67 to %struct.fiobj_data_s*
  %69 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ugt i64 %66, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %21
  %73 = load i64, i64* %4, align 8
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %76, %80
  %82 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* %4, align 8
  %84 = inttoptr i64 %83 to %struct.fiobj_data_s*
  %85 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = inttoptr i64 %87 to %struct.fiobj_data_s*
  %89 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %88, i32 0, i32 5
  store i64 %86, i64* %89, align 8
  %90 = bitcast %struct.fio_str_info_s* %0 to i8*
  %91 = bitcast %struct.fio_str_info_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 24, i1 false)
  br label %95

92:                                               ; preds = %21
  %93 = bitcast %struct.fio_str_info_s* %0 to i8*
  %94 = bitcast %struct.fio_str_info_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  br label %95

95:                                               ; preds = %92, %72, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read2ch_file(%struct.fio_str_info_s* noalias sret, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  store i8 %2, i8* %5, align 1
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to %struct.fiobj_data_s*
  %17 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = inttoptr i64 %20 to %struct.fiobj_data_s*
  %22 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @swallow_ch(i8** %6, i8* %33, i8 zeroext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = inttoptr i64 %39 to %struct.fiobj_data_s*
  %41 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = ptrtoint i8* %38 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %4, align 8
  %53 = inttoptr i64 %52 to %struct.fiobj_data_s*
  %54 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %51
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %4, align 8
  %59 = inttoptr i64 %58 to %struct.fiobj_data_s*
  %60 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %59, i32 0, i32 2
  %61 = bitcast %union.anon* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %57
  store i64 %63, i64* %61, align 8
  %64 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %65, align 8
  %67 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %37
  %71 = load i64, i64* %4, align 8
  %72 = inttoptr i64 %71 to %struct.fiobj_data_s*
  %73 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = inttoptr i64 %75 to %struct.fiobj_data_s*
  %77 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  br label %84

83:                                               ; preds = %37
  br label %84

84:                                               ; preds = %83, %70
  %85 = phi i8* [ %82, %70 ], [ null, %83 ]
  store i8* %85, i8** %67, align 8
  br label %226

86:                                               ; preds = %32, %3
  %87 = load i64, i64* %4, align 8
  %88 = inttoptr i64 %87 to %struct.fiobj_data_s*
  %89 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load i64, i64* %4, align 8
  %91 = inttoptr i64 %90 to %struct.fiobj_data_s*
  %92 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %225
  %94 = load i64, i64* %4, align 8
  call void @fiobj_data_pre_write(i64 %94, i64 4096)
  br label %95

95:                                               ; preds = %126, %93
  %96 = load i64, i64* %4, align 8
  %97 = inttoptr i64 %96 to %struct.fiobj_data_s*
  %98 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %4, align 8
  %101 = inttoptr i64 %100 to %struct.fiobj_data_s*
  %102 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = inttoptr i64 %104 to %struct.fiobj_data_s*
  %106 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i64, i64* %4, align 8
  %110 = inttoptr i64 %109 to %struct.fiobj_data_s*
  %111 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %110, i32 0, i32 2
  %112 = bitcast %union.anon* %111 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %4, align 8
  %115 = inttoptr i64 %114 to %struct.fiobj_data_s*
  %116 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %113, %117
  %119 = call i64 @pread(i32 %99, i8* %108, i64 4096, i64 %118)
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %95
  %123 = call i32* @__errno_location() #9
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %95

127:                                              ; preds = %122, %95
  %128 = load i64, i64* %9, align 8
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %9, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i64, i64* %4, align 8
  %135 = inttoptr i64 %134 to %struct.fiobj_data_s*
  %136 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133, %127
  %140 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %142, align 8
  br label %226

143:                                              ; preds = %133, %130
  %144 = load i64, i64* %9, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %143
  %147 = load i64, i64* %4, align 8
  %148 = inttoptr i64 %147 to %struct.fiobj_data_s*
  %149 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %4, align 8
  %152 = inttoptr i64 %151 to %struct.fiobj_data_s*
  %153 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %152, i32 0, i32 2
  %154 = bitcast %union.anon* %153 to i64*
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %150
  store i64 %156, i64* %154, align 8
  %157 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %157, align 8
  %158 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %159 = load i64, i64* %4, align 8
  %160 = inttoptr i64 %159 to %struct.fiobj_data_s*
  %161 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %158, align 8
  %163 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %164 = load i64, i64* %4, align 8
  %165 = inttoptr i64 %164 to %struct.fiobj_data_s*
  %166 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %163, align 8
  br label %226

168:                                              ; preds = %143
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %4, align 8
  %171 = inttoptr i64 %170 to %struct.fiobj_data_s*
  %172 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, %169
  store i64 %174, i64* %172, align 8
  %175 = load i64, i64* %4, align 8
  %176 = inttoptr i64 %175 to %struct.fiobj_data_s*
  %177 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %6, align 8
  %179 = load i64, i64* %4, align 8
  %180 = inttoptr i64 %179 to %struct.fiobj_data_s*
  %181 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load i64, i64* %4, align 8
  %184 = inttoptr i64 %183 to %struct.fiobj_data_s*
  %185 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  store i8* %187, i8** %7, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = load i8, i8* %5, align 1
  %190 = call i32 @swallow_ch(i8** %6, i8* %188, i8 zeroext %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %225

192:                                              ; preds = %168
  %193 = load i8*, i8** %6, align 8
  %194 = load i64, i64* %4, align 8
  %195 = inttoptr i64 %194 to %struct.fiobj_data_s*
  %196 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load i64, i64* %4, align 8
  %199 = inttoptr i64 %198 to %struct.fiobj_data_s*
  %200 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %199, i32 0, i32 5
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  %203 = ptrtoint i8* %193 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  store i64 %205, i64* %10, align 8
  %206 = load i64, i64* %10, align 8
  %207 = load i64, i64* %4, align 8
  %208 = inttoptr i64 %207 to %struct.fiobj_data_s*
  %209 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %208, i32 0, i32 5
  store i64 %206, i64* %209, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* %4, align 8
  %212 = inttoptr i64 %211 to %struct.fiobj_data_s*
  %213 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %212, i32 0, i32 2
  %214 = bitcast %union.anon* %213 to i64*
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, %210
  store i64 %216, i64* %214, align 8
  %217 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %219 = load i64, i64* %10, align 8
  store i64 %219, i64* %218, align 8
  %220 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %221 = load i64, i64* %4, align 8
  %222 = inttoptr i64 %221 to %struct.fiobj_data_s*
  %223 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  store i8* %224, i8** %220, align 8
  br label %226

225:                                              ; preds = %168
  br label %93

226:                                              ; preds = %192, %146, %139, %84
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_pos(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 43)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  store i64 -1, i64* %2, align 8
  br label %27

11:                                               ; preds = %6
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.fiobj_data_s*
  %14 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %21 [
    i32 -1, label %16
    i32 -2, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = load i64, i64* %3, align 8
  %18 = inttoptr i64 %17 to %struct.fiobj_data_s*
  %19 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %2, align 8
  br label %27

21:                                               ; preds = %11
  %22 = load i64, i64* %3, align 8
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 2
  %25 = bitcast %union.anon* %24 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %21, %16, %10
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_seek(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 43)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  br label %119

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to %struct.fiobj_data_s*
  %16 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %67 [
    i32 -1, label %18
    i32 -2, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  br label %119

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = inttoptr i64 %30 to %struct.fiobj_data_s*
  %32 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i64, i64* %3, align 8
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = inttoptr i64 %42 to %struct.fiobj_data_s*
  %44 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %43, i32 0, i32 5
  store i64 %41, i64* %44, align 8
  br label %119

45:                                               ; preds = %25
  %46 = load i64, i64* %4, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %3, align 8
  %50 = inttoptr i64 %49 to %struct.fiobj_data_s*
  %51 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i64 0, i64* %4, align 8
  br label %62

55:                                               ; preds = %45
  %56 = load i64, i64* %3, align 8
  %57 = inttoptr i64 %56 to %struct.fiobj_data_s*
  %58 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %55, %54
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %3, align 8
  %65 = inttoptr i64 %64 to %struct.fiobj_data_s*
  %66 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %65, i32 0, i32 5
  store i64 %63, i64* %66, align 8
  br label %119

67:                                               ; preds = %13
  %68 = load i64, i64* %3, align 8
  %69 = inttoptr i64 %68 to %struct.fiobj_data_s*
  %70 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %3, align 8
  %72 = inttoptr i64 %71 to %struct.fiobj_data_s*
  %73 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i64, i64* %3, align 8
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 2
  %80 = bitcast %union.anon* %79 to i64*
  store i64 0, i64* %80, align 8
  br label %119

81:                                               ; preds = %67
  %82 = load i64, i64* %3, align 8
  %83 = call i64 @fiobj_data_get_fd_size(i64 %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i64 0, i64* %5, align 8
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i64, i64* %4, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* %5, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* %3, align 8
  %99 = inttoptr i64 %98 to %struct.fiobj_data_s*
  %100 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %99, i32 0, i32 2
  %101 = bitcast %union.anon* %100 to i64*
  store i64 %97, i64* %101, align 8
  br label %119

102:                                              ; preds = %87
  %103 = load i64, i64* %4, align 8
  %104 = sub nsw i64 0, %103
  store i64 %104, i64* %4, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i64 0, i64* %4, align 8
  br label %113

109:                                              ; preds = %102
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* %4, align 8
  %112 = sub nsw i64 %110, %111
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %109, %108
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* %3, align 8
  %116 = inttoptr i64 %115 to %struct.fiobj_data_s*
  %117 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %116, i32 0, i32 2
  %118 = bitcast %union.anon* %117 to i64*
  store i64 %114, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %96, %76, %62, %40, %21, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_get_fd_size(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  store i64 %0, i64* %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.fiobj_data_s*
  %8 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @fstat(i32 %9, %struct.stat* %4) #1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = call i32* @__errno_location() #9
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %5

17:                                               ; preds = %12
  store i64 -1, i64* %2, align 8
  br label %21

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %18, %17
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_pread(%struct.fio_str_info_s* noalias sret, i64, i64, i64) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 %3, i64* %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 43)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %4
  %15 = call i32* @__errno_location() #9
  store i32 14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %18, align 8
  br label %37

19:                                               ; preds = %10
  %20 = call i32* @__errno_location() #9
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to %struct.fiobj_data_s*
  %23 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %33 [
    i32 -1, label %25
    i32 -2, label %29
  ]

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  call void @fiobj_data_pread_str(%struct.fio_str_info_s* sret %0, i64 %26, i64 %27, i64 %28)
  br label %37

29:                                               ; preds = %19
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  call void @fiobj_data_pread_slice(%struct.fio_str_info_s* sret %0, i64 %30, i64 %31, i64 %32)
  br label %37

33:                                               ; preds = %19
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  call void @fiobj_data_pread_file(%struct.fio_str_info_s* sret %0, i64 %34, i64 %35, i64 %36)
  br label %37

37:                                               ; preds = %33, %29, %25, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_pread_str(%struct.fio_str_info_s* noalias sret, i64, i64, i64) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 %3, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %10, %4
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = inttoptr i64 %23 to %struct.fiobj_data_s*
  %25 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = inttoptr i64 %29 to %struct.fiobj_data_s*
  %31 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %5, align 8
  %38 = inttoptr i64 %37 to %struct.fiobj_data_s*
  %39 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i64, i64* %5, align 8
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %55, align 8
  br label %67

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %61 = load i64, i64* %5, align 8
  %62 = inttoptr i64 %61 to %struct.fiobj_data_s*
  %63 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %60, align 8
  br label %67

67:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_pread_slice(%struct.fio_str_info_s* noalias sret, i64, i64, i64) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 %3, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %10, %4
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = inttoptr i64 %23 to %struct.fiobj_data_s*
  %25 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = inttoptr i64 %29 to %struct.fiobj_data_s*
  %31 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %5, align 8
  %38 = inttoptr i64 %37 to %struct.fiobj_data_s*
  %39 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i64, i64* %5, align 8
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %55, align 8
  br label %64

56:                                               ; preds = %49
  %57 = load i64, i64* %5, align 8
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 2
  %60 = bitcast %union.anon* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %0, i64 %61, i64 %62, i64 %63)
  br label %64

64:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_pread_file(%struct.fio_str_info_s* noalias sret, i64, i64, i64) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 %3, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @fiobj_data_get_fd_size(i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %8, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = inttoptr i64 %39 to %struct.fiobj_data_s*
  %41 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  call void @fio_free(i8* %42)
  %43 = load i64, i64* %5, align 8
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 1
  store i8* null, i8** %45, align 8
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %48, align 8
  br label %91

49:                                               ; preds = %32
  %50 = load i64, i64* %5, align 8
  %51 = inttoptr i64 %50 to %struct.fiobj_data_s*
  %52 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  call void @fiobj_data_pre_write(i64 %56, i64 %58)
  %59 = load i64, i64* %5, align 8
  %60 = inttoptr i64 %59 to %struct.fiobj_data_s*
  %61 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @pread(i32 %62, i8* %66, i64 %67, i64 %68)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %49
  %73 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %75, align 8
  br label %91

76:                                               ; preds = %49
  %77 = load i64, i64* %5, align 8
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %84, align 8
  %86 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %87 = load i64, i64* %5, align 8
  %88 = inttoptr i64 %87 to %struct.fiobj_data_s*
  %89 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %86, align 8
  br label %91

91:                                               ; preds = %76, %72, %35
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_assert_dynamic(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32* @__errno_location() #9
  store i32 23, i32* %6, align 4
  br label %16

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call zeroext i8 @fiobj_type(i64 %8)
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %14

13:                                               ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 941, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.fiobj_data_assert_dynamic, i64 0, i64 0)) #10
  unreachable

14:                                               ; preds = %12
  %15 = load i64, i64* %2, align 8
  call void @fiobj_data_pre_write(i64 %15, i64 0)
  br label %16

16:                                               ; preds = %14, %5
  ret void
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

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_pre_write(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to %struct.fiobj_data_s*
  %7 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %21 [
    i32 -1, label %9
    i32 -2, label %19
  ]

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to %struct.fiobj_data_s*
  %12 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %11, i32 0, i32 2
  %13 = bitcast %union.anon* %12 to void (i8*)**
  %14 = load void (i8*)*, void (i8*)** %13, align 8
  %15 = icmp ne void (i8*)* %14, @fio_free
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i64, i64* %3, align 8
  call void @fiobj_data_copy_buffer(i64 %17)
  br label %18

18:                                               ; preds = %16, %9
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  call void @fiobj_data_copy_parent(i64 %20)
  br label %21

21:                                               ; preds = %2, %19, %18
  %22 = load i64, i64* %3, align 8
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = inttoptr i64 %26 to %struct.fiobj_data_s*
  %28 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %29, %30
  %32 = icmp uge i64 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %72

34:                                               ; preds = %21
  %35 = load i64, i64* %3, align 8
  %36 = inttoptr i64 %35 to %struct.fiobj_data_s*
  %37 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %38, %39
  %41 = lshr i64 %40, 12
  %42 = add i64 %41, 1
  %43 = shl i64 %42, 12
  %44 = load i64, i64* %3, align 8
  %45 = inttoptr i64 %44 to %struct.fiobj_data_s*
  %46 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %45, i32 0, i32 3
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %3, align 8
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = inttoptr i64 %51 to %struct.fiobj_data_s*
  %53 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @fio_realloc(i8* %50, i64 %54)
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, 15
  %58 = icmp eq i64 %57, 0
  call void @llvm.assume(i1 %58)
  %59 = load i64, i64* %3, align 8
  %60 = inttoptr i64 %59 to %struct.fiobj_data_s*
  %61 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %60, i32 0, i32 1
  store i8* %55, i8** %61, align 8
  br label %62

62:                                               ; preds = %34
  %63 = load i64, i64* %3, align 8
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32* @__errno_location() #9
  %70 = load i32, i32* %69, align 4
  call void @exit(i32 %70) #10
  unreachable

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %33, %71
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_write(i64, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 43)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %10, %3
  %21 = call i32* @__errno_location() #9
  store i32 14, i32* %21, align 4
  store i64 -1, i64* %4, align 8
  br label %81

22:                                               ; preds = %17, %14
  %23 = call i32* @__errno_location() #9
  store i32 0, i32* %23, align 4
  %24 = load i64, i64* %5, align 8
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -2
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  call void @fiobj_data_assert_dynamic(i64 %30)
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i64, i64* %5, align 8
  %33 = inttoptr i64 %32 to %struct.fiobj_data_s*
  %34 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %71

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  call void @fiobj_data_pre_write(i64 %38, i64 %40)
  %41 = load i64, i64* %5, align 8
  %42 = inttoptr i64 %41 to %struct.fiobj_data_s*
  %43 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = inttoptr i64 %45 to %struct.fiobj_data_s*
  %47 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %50, i64 %51, i1 false)
  %52 = load i64, i64* %5, align 8
  %53 = inttoptr i64 %52 to %struct.fiobj_data_s*
  %54 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %5, align 8
  %59 = inttoptr i64 %58 to %struct.fiobj_data_s*
  %60 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %59, i32 0, i32 4
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %5, align 8
  %62 = inttoptr i64 %61 to %struct.fiobj_data_s*
  %63 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = inttoptr i64 %65 to %struct.fiobj_data_s*
  %67 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %4, align 8
  br label %81

71:                                               ; preds = %31
  %72 = load i64, i64* %5, align 8
  %73 = inttoptr i64 %72 to %struct.fiobj_data_s*
  %74 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @fiobj_data_get_fd_size(i64 %78)
  %80 = call i64 @pwrite(i32 %75, i8* %76, i64 %77, i64 %79)
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %71, %37, %20
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i64 @pwrite(i32, i8*, i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_puts(i64, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @fiobj_type_is(i64 %14, i8 zeroext 43)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %13, %3
  %24 = call i32* @__errno_location() #9
  store i32 14, i32* %24, align 4
  store i64 -1, i64* %4, align 8
  br label %129

25:                                               ; preds = %20, %17
  %26 = load i64, i64* %5, align 8
  %27 = inttoptr i64 %26 to %struct.fiobj_data_s*
  %28 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -2
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  call void @fiobj_data_assert_dynamic(i64 %32)
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %5, align 8
  %35 = inttoptr i64 %34 to %struct.fiobj_data_s*
  %36 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %90

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 2
  call void @fiobj_data_pre_write(i64 %40, i64 %42)
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = inttoptr i64 %46 to %struct.fiobj_data_s*
  %48 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = inttoptr i64 %50 to %struct.fiobj_data_s*
  %52 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %55, i64 %56, i1 false)
  br label %57

57:                                               ; preds = %45, %39
  %58 = load i64, i64* %5, align 8
  %59 = inttoptr i64 %58 to %struct.fiobj_data_s*
  %60 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %61, %62
  %64 = add i64 %63, 2
  %65 = load i64, i64* %5, align 8
  %66 = inttoptr i64 %65 to %struct.fiobj_data_s*
  %67 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %66, i32 0, i32 4
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %5, align 8
  %69 = inttoptr i64 %68 to %struct.fiobj_data_s*
  %70 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = inttoptr i64 %72 to %struct.fiobj_data_s*
  %74 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, 2
  %77 = getelementptr inbounds i8, i8* %71, i64 %76
  store i8 13, i8* %77, align 1
  %78 = load i64, i64* %5, align 8
  %79 = inttoptr i64 %78 to %struct.fiobj_data_s*
  %80 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = inttoptr i64 %82 to %struct.fiobj_data_s*
  %84 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  store i8 10, i8* %87, align 1
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 2
  store i64 %89, i64* %4, align 8
  br label %129

90:                                               ; preds = %33
  %91 = load i64, i64* %5, align 8
  %92 = call i64 @fiobj_data_get_fd_size(i64 %91)
  store i64 %92, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load i64, i64* %5, align 8
  %97 = inttoptr i64 %96 to %struct.fiobj_data_s*
  %98 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @pwrite(i32 %99, i8* %100, i64 %101, i64 %102)
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %4, align 8
  br label %129

108:                                              ; preds = %95
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %8, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %108, %90
  %113 = load i64, i64* %5, align 8
  %114 = inttoptr i64 %113 to %struct.fiobj_data_s*
  %115 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @pwrite(i32 %116, i8* %117, i64 %118, i64 %119)
  store i64 %120, i64* %10, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i64, i64* %9, align 8
  store i64 %124, i64* %4, align 8
  br label %129

125:                                              ; preds = %112
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* %10, align 8
  %128 = add nsw i64 %126, %127
  store i64 %128, i64* %4, align 8
  br label %129

129:                                              ; preds = %125, %123, %106, %57, %23
  %130 = load i64, i64* %4, align 8
  ret i64 %130
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

declare dso_local i32 @close(i32) #4

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

declare dso_local void @fiobj_free_complex_object(i64) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #7

declare dso_local i64 @pread(i32, i8*, i64, i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @mkstemp(i8*) #4

declare dso_local i32 @open(i8*, i32, ...) #4

declare dso_local i64 @write(i32, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 {
  ret i64 6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 {
  ret i64 22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 {
  ret i64 38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swallow_ch(i8**, i8*, i8 zeroext) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  %9 = load i8*, i8** %6, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = ptrtoint i8* %9 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8*, i8** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = call i8* @memchr(i8* %19, i32 %21, i64 %27) #8
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load i8*, i8** %8, align 8
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  store i32 1, i32* %4, align 4
  br label %40

37:                                               ; preds = %17
  %38 = load i8*, i8** %6, align 8
  %39 = load i8**, i8*** %5, align 8
  store i8* %38, i8** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %31, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #7

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_copy_buffer(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.fiobj_data_s*
  %6 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = lshr i64 %7, 12
  %9 = add i64 %8, 1
  %10 = shl i64 %9, 12
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 3
  store i64 %10, i64* %13, align 8
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to %struct.fiobj_data_s*
  %16 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call noalias i8* @fio_malloc(i64 %17)
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 %19, 15
  %21 = icmp eq i64 %20, 0
  call void @llvm.assume(i1 %21)
  store i8* %18, i8** %3, align 8
  br label %22

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32* @__errno_location() #9
  %27 = load i32, i32* %26, align 4
  call void @exit(i32 %27) #10
  unreachable

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %2, align 8
  %32 = inttoptr i64 %31 to %struct.fiobj_data_s*
  %33 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %2, align 8
  %36 = inttoptr i64 %35 to %struct.fiobj_data_s*
  %37 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %34, i64 %38, i1 false)
  %39 = load i64, i64* %2, align 8
  %40 = inttoptr i64 %39 to %struct.fiobj_data_s*
  %41 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %40, i32 0, i32 2
  %42 = bitcast %union.anon* %41 to void (i8*)**
  %43 = load void (i8*)*, void (i8*)** %42, align 8
  %44 = icmp ne void (i8*)* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %29
  %46 = load i64, i64* %2, align 8
  %47 = inttoptr i64 %46 to %struct.fiobj_data_s*
  %48 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %47, i32 0, i32 2
  %49 = bitcast %union.anon* %48 to void (i8*)**
  %50 = load void (i8*)*, void (i8*)** %49, align 8
  %51 = load i64, i64* %2, align 8
  %52 = inttoptr i64 %51 to %struct.fiobj_data_s*
  %53 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  call void %50(i8* %54)
  br label %55

55:                                               ; preds = %45, %29
  %56 = load i64, i64* %2, align 8
  %57 = inttoptr i64 %56 to %struct.fiobj_data_s*
  %58 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %57, i32 0, i32 2
  %59 = bitcast %union.anon* %58 to void (i8*)**
  store void (i8*)* @fio_free, void (i8*)** %59, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i64, i64* %2, align 8
  %62 = inttoptr i64 %61 to %struct.fiobj_data_s*
  %63 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_copy_parent(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.fiobj_data_s*
  %9 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %8, i32 0, i32 2
  %10 = bitcast %union.anon* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %77 [
    i32 -1, label %15
  ]

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = inttoptr i64 %16 to %struct.fiobj_data_s*
  %18 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  %21 = call noalias i8* @fio_malloc(i64 %20)
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 15
  %24 = icmp eq i64 %23, 0
  call void @llvm.assume(i1 %24)
  %25 = load i64, i64* %2, align 8
  %26 = inttoptr i64 %25 to %struct.fiobj_data_s*
  %27 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %26, i32 0, i32 1
  store i8* %21, i8** %27, align 8
  %28 = load i64, i64* %2, align 8
  %29 = inttoptr i64 %28 to %struct.fiobj_data_s*
  %30 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %2, align 8
  %33 = inttoptr i64 %32 to %struct.fiobj_data_s*
  %34 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %33, i32 0, i32 2
  %35 = bitcast %union.anon* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %2, align 8
  %41 = inttoptr i64 %40 to %struct.fiobj_data_s*
  %42 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load i64, i64* %2, align 8
  %46 = inttoptr i64 %45 to %struct.fiobj_data_s*
  %47 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %44, i64 %48, i1 false)
  %49 = load i64, i64* %2, align 8
  %50 = inttoptr i64 %49 to %struct.fiobj_data_s*
  %51 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %2, align 8
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i64, i64* %2, align 8
  %59 = inttoptr i64 %58 to %struct.fiobj_data_s*
  %60 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %2, align 8
  %63 = inttoptr i64 %62 to %struct.fiobj_data_s*
  %64 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %63, i32 0, i32 3
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %2, align 8
  %66 = inttoptr i64 %65 to %struct.fiobj_data_s*
  %67 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %66, i32 0, i32 6
  store i32 -1, i32* %67, align 8
  %68 = load i64, i64* %2, align 8
  %69 = inttoptr i64 %68 to %struct.fiobj_data_s*
  %70 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %69, i32 0, i32 2
  %71 = bitcast %union.anon* %70 to i64*
  %72 = load i64, i64* %71, align 8
  call void @fiobj_free(i64 %72)
  %73 = load i64, i64* %2, align 8
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 2
  %76 = bitcast %union.anon* %75 to void (i8*)**
  store void (i8*)* @fio_free, void (i8*)** %76, align 8
  br label %178

77:                                               ; preds = %1
  %78 = call i32 @fio_tmpfile()
  %79 = load i64, i64* %2, align 8
  %80 = inttoptr i64 %79 to %struct.fiobj_data_s*
  %81 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %80, i32 0, i32 6
  store i32 %78, i32* %81, align 8
  %82 = load i64, i64* %2, align 8
  %83 = inttoptr i64 %82 to %struct.fiobj_data_s*
  %84 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  call void @perror(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %88 = call i32* @__errno_location() #9
  %89 = load i32, i32* %88, align 4
  call void @exit(i32 %89) #10
  unreachable

90:                                               ; preds = %77
  store i64 0, i64* %4, align 8
  br label %91

91:                                               ; preds = %147, %90
  %92 = load i64, i64* %2, align 8
  %93 = inttoptr i64 %92 to %struct.fiobj_data_s*
  %94 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %93, i32 0, i32 2
  %95 = bitcast %union.anon* %94 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* %2, align 8
  %99 = inttoptr i64 %98 to %struct.fiobj_data_s*
  %100 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %97, %101
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %6, i64 %96, i64 %102, i64 4096)
  %103 = bitcast %struct.fio_str_info_s* %3 to i8*
  %104 = bitcast %struct.fio_str_info_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 24, i1 false)
  %105 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %4, align 8
  %108 = add i64 %106, %107
  %109 = load i64, i64* %2, align 8
  %110 = inttoptr i64 %109 to %struct.fiobj_data_s*
  %111 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ugt i64 %108, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %91
  %115 = load i64, i64* %2, align 8
  %116 = inttoptr i64 %115 to %struct.fiobj_data_s*
  %117 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %4, align 8
  %120 = sub i64 %118, %119
  %121 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  br label %122

122:                                              ; preds = %114, %91
  br label %123

123:                                              ; preds = %139, %122
  %124 = load i64, i64* %2, align 8
  %125 = inttoptr i64 %124 to %struct.fiobj_data_s*
  %126 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @write(i32 %127, i8* %129, i64 %131)
  store i64 %132, i64* %5, align 8
  %133 = load i64, i64* %5, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %123
  %136 = call i32* @__errno_location() #9
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 4
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %123

140:                                              ; preds = %135
  call void @perror(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %141 = call i32* @__errno_location() #9
  %142 = load i32, i32* %141, align 4
  call void @exit(i32 %142) #10
  unreachable

143:                                              ; preds = %123
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %4, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %4, align 8
  br label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 4096
  br i1 %150, label %91, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* %2, align 8
  %153 = inttoptr i64 %152 to %struct.fiobj_data_s*
  %154 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %153, i32 0, i32 2
  %155 = bitcast %union.anon* %154 to i64*
  %156 = load i64, i64* %155, align 8
  call void @fiobj_free(i64 %156)
  %157 = load i64, i64* %2, align 8
  %158 = inttoptr i64 %157 to %struct.fiobj_data_s*
  %159 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %158, i32 0, i32 3
  store i64 0, i64* %159, align 8
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* %2, align 8
  %162 = inttoptr i64 %161 to %struct.fiobj_data_s*
  %163 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %162, i32 0, i32 4
  store i64 %160, i64* %163, align 8
  %164 = load i64, i64* %2, align 8
  %165 = inttoptr i64 %164 to %struct.fiobj_data_s*
  %166 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %2, align 8
  %169 = inttoptr i64 %168 to %struct.fiobj_data_s*
  %170 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %169, i32 0, i32 2
  %171 = bitcast %union.anon* %170 to i64*
  store i64 %167, i64* %171, align 8
  %172 = load i64, i64* %2, align 8
  %173 = inttoptr i64 %172 to %struct.fiobj_data_s*
  %174 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %173, i32 0, i32 5
  store i64 0, i64* %174, align 8
  %175 = load i64, i64* %2, align 8
  %176 = inttoptr i64 %175 to %struct.fiobj_data_s*
  %177 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %176, i32 0, i32 1
  store i8* null, i8** %177, align 8
  br label %178

178:                                              ; preds = %15, %151
  ret void
}

declare dso_local i8* @fio_realloc(i8*, i64) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
