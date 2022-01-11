; ModuleID = './examples/secdesk/c/refactored/fiobj_ary.mod.c'
source_filename = "./examples/secdesk/c/refactored/fiobj_ary.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_ary_s = type { %struct.fiobj_object_header_s, %struct.fio_ary___s }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.fio_ary___s = type { i64, i64, i64, i64* }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"FIOBJ_TYPE_IS(ary, FIOBJ_T_ARRAY)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"./examples/secdesk/c/refactored/fiobj_ary.mod.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_count = private unnamed_addr constant [36 x i8] c"size_t fiobj_ary_count(const FIOBJ)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@FIOBJECT_VTABLE_ARRAY = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobj_ary_dealloc, i64 (i64)* @fiobj_ary_count, i64 (i64)* @fiobj_ary_is_true, i64 (i64, i64)* @fiobj_ary_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* @fiobj_ary_each1, void (%struct.fio_str_info_s*, i64)* @fiobject___noop_to_str, i64 (i64)* @fiobject___noop_to_i, double (i64)* @fiobject___noop_to_f }, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"ary && FIOBJ_TYPE_IS(ary, FIOBJ_T_ARRAY)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_capa = private unnamed_addr constant [29 x i8] c"size_t fiobj_ary_capa(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary2ptr = private unnamed_addr constant [28 x i8] c"FIOBJ *fiobj_ary2ptr(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_index = private unnamed_addr constant [38 x i8] c"FIOBJ fiobj_ary_index(FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_set = private unnamed_addr constant [42 x i8] c"void fiobj_ary_set(FIOBJ, FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_push = private unnamed_addr constant [34 x i8] c"void fiobj_ary_push(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_pop = private unnamed_addr constant [27 x i8] c"FIOBJ fiobj_ary_pop(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_unshift = private unnamed_addr constant [37 x i8] c"void fiobj_ary_unshift(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_shift = private unnamed_addr constant [29 x i8] c"FIOBJ fiobj_ary_shift(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_replace = private unnamed_addr constant [47 x i8] c"FIOBJ fiobj_ary_replace(FIOBJ, FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_find = private unnamed_addr constant [37 x i8] c"int64_t fiobj_ary_find(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_remove = private unnamed_addr constant [37 x i8] c"int fiobj_ary_remove(FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_remove2 = private unnamed_addr constant [36 x i8] c"int fiobj_ary_remove2(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_compact = private unnamed_addr constant [30 x i8] c"void fiobj_ary_compact(FIOBJ)\00", align 1
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"ERROR: fiobj array couldn't allocate memory\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/refactored/fio.h:4920\00", align 1
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.8 = private unnamed_addr constant [74 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/refactored/fio.h:4933\00", align 1

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
define dso_local i64 @fiobj_ary_count(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_type_is(i64 %3, i8 zeroext 41)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_count, i64 0, i64 0)) #7
  unreachable

8:                                                ; preds = %6
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.fiobj_ary_s*
  %11 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %10, i32 0, i32 1
  %12 = call i64 @fio_ary___count(%struct.fio_ary___s* %11)
  ret i64 %12
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

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___count(%struct.fio_ary___s*) #0 {
  %2 = alloca %struct.fio_ary___s*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %2, align 8
  %3 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %4 = icmp ne %struct.fio_ary___s* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %8, %11
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i64 [ %12, %5 ], [ 0, %13 ]
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_ary_dealloc(i64, void (i64, i8*)*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.fiobj_ary_s*
  %11 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %11, i32 0, i32 3
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %71

15:                                               ; preds = %3
  %16 = load i64, i64* %4, align 8
  %17 = inttoptr i64 %16 to %struct.fiobj_ary_s*
  %18 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %7, align 8
  %21 = load i64, i64* %4, align 8
  %22 = inttoptr i64 %21 to %struct.fiobj_ary_s*
  %23 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = inttoptr i64 %26 to %struct.fiobj_ary_s*
  %28 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %25, i64 %30
  store i64* %31, i64** %8, align 8
  br label %32

32:                                               ; preds = %51, %15
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %4, align 8
  %35 = inttoptr i64 %34 to %struct.fiobj_ary_s*
  %36 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = inttoptr i64 %39 to %struct.fiobj_ary_s*
  %41 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  %45 = icmp ult i64* %33, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %32
  %47 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %6, align 8
  call void %47(i64 %49, i8* %50)
  br label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8
  %53 = inttoptr i64 %52 to %struct.fiobj_ary_s*
  %54 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = ptrtoint i64* %57 to i64
  %60 = ptrtoint i64* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = getelementptr inbounds i64, i64* %56, i64 %62
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  store i64* %64, i64** %8, align 8
  %65 = load i64, i64* %4, align 8
  %66 = inttoptr i64 %65 to %struct.fiobj_ary_s*
  %67 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  store i64* %69, i64** %7, align 8
  br label %32

70:                                               ; preds = %32
  br label %71

71:                                               ; preds = %70, %3
  %72 = load i64, i64* %4, align 8
  %73 = inttoptr i64 %72 to %struct.fiobj_ary_s*
  %74 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %73, i32 0, i32 1
  call void @fio_ary___free(%struct.fio_ary___s* %74)
  %75 = load i64, i64* %4, align 8
  %76 = and i64 %75, -8
  %77 = inttoptr i64 %76 to i8*
  call void @fio_free(i8* %77)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_ary_is_true(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_ary_count(i64 %3)
  %5 = icmp ugt i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_ary_is_eq(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_ary___s*, align 8
  %7 = alloca %struct.fio_ary___s*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to %struct.fiobj_ary_s*
  %10 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %9, i32 0, i32 1
  store %struct.fio_ary___s* %10, %struct.fio_ary___s** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.fiobj_ary_s*
  %13 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %12, i32 0, i32 1
  store %struct.fio_ary___s* %13, %struct.fio_ary___s** %7, align 8
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %6, align 8
  %15 = call i64 @fio_ary___count(%struct.fio_ary___s* %14)
  %16 = load %struct.fio_ary___s*, %struct.fio_ary___s** %7, align 8
  %17 = call i64 @fio_ary___count(%struct.fio_ary___s* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %21

20:                                               ; preds = %2
  store i64 1, i64* %3, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_ary_each1(i64, i64, i32 (i64, i8*)*, i8*) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.fiobj_ary_s*
  %11 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = load i32 (i64, i8*)*, i32 (i64, i8*)** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @fio_ary___each(%struct.fio_ary___s* %11, i64 %12, i32 (i64, i8*)* %13, i8* %14)
  ret i64 %15
}

declare dso_local void @fiobject___noop_to_str(%struct.fio_str_info_s* sret, i64) #4

declare dso_local i64 @fiobject___noop_to_i(i64) #4

declare dso_local double @fiobject___noop_to_f(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_new() #0 {
  %1 = call i64 @fiobj_ary_alloc(i64 0)
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_ary_alloc(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_ary_s*, align 8
  %4 = alloca %struct.fiobj_ary_s, align 8
  store i64 %0, i64* %2, align 8
  %5 = call noalias i8* @fio_malloc(i64 40)
  %6 = ptrtoint i8* %5 to i64
  %7 = and i64 %6, 15
  %8 = icmp eq i64 %7, 0
  call void @llvm.assume(i1 %8)
  %9 = bitcast i8* %5 to %struct.fiobj_ary_s*
  store %struct.fiobj_ary_s* %9, %struct.fiobj_ary_s** %3, align 8
  %10 = load %struct.fiobj_ary_s*, %struct.fiobj_ary_s** %3, align 8
  %11 = icmp ne %struct.fiobj_ary_s* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32* @__errno_location() #8
  %14 = load i32, i32* %13, align 4
  call void @exit(i32 %14) #7
  unreachable

15:                                               ; preds = %1
  %16 = load %struct.fiobj_ary_s*, %struct.fiobj_ary_s** %3, align 8
  %17 = bitcast %struct.fiobj_ary_s* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %18, i32 0, i32 0
  store i8 41, i8* %19, align 8
  %20 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %18, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = bitcast %struct.fiobj_ary_s* %16 to i8*
  %22 = bitcast %struct.fiobj_ary_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 40, i1 false)
  %23 = load i64, i64* %2, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.fiobj_ary_s*, %struct.fiobj_ary_s** %3, align 8
  %27 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %26, i32 0, i32 1
  %28 = load i64, i64* %2, align 8
  call void @fio_ary_____require_on_top(%struct.fio_ary___s* %27, i64 %28)
  br label %29

29:                                               ; preds = %25, %15
  %30 = load %struct.fiobj_ary_s*, %struct.fiobj_ary_s** %3, align 8
  %31 = ptrtoint %struct.fiobj_ary_s* %30 to i64
  ret i64 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_new2(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_ary_alloc(i64 %3)
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_capa(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 41)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_capa, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.fiobj_ary_s*
  %14 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %13, i32 0, i32 1
  %15 = call i64 @fio_ary___capa(%struct.fio_ary___s* %14)
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___capa(%struct.fio_ary___s*) #0 {
  %2 = alloca %struct.fio_ary___s*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %2, align 8
  %3 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %4 = icmp ne %struct.fio_ary___s* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 0, %9 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @fiobj_ary2ptr(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 41)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.fiobj_ary2ptr, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.fiobj_ary_s*
  %14 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %2, align 8
  %18 = inttoptr i64 %17 to %struct.fiobj_ary_s*
  %19 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %16, i64 %21
  ret i64* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_index(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 41)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_index, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to %struct.fiobj_ary_s*
  %16 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @fio_ary___get(%struct.fio_ary___s* %16, i64 %17)
  ret i64 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___get(%struct.fio_ary___s*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %7 = icmp ne %struct.fio_ary___s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %34

9:                                                ; preds = %2
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @fio_ary_____rel2absolute(%struct.fio_ary___s* %10, i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  %21 = icmp uge i64 %13, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %34

23:                                               ; preds = %9
  %24 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %25 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %28 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %23, %22, %8
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_ary_set(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 41)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %16

15:                                               ; preds = %10, %3
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_set, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  store i64 0, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = inttoptr i64 %17 to %struct.fiobj_ary_s*
  %19 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  call void @fio_ary___set(%struct.fio_ary___s* %19, i64 %20, i64 %21, i64* %7)
  %22 = load i64, i64* %7, align 8
  call void @fiobj_free(i64 %22)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_ary___set(%struct.fio_ary___s*, i64, i64, i64*) #0 {
  %5 = alloca %struct.fio_ary___s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %11 = icmp ne %struct.fio_ary___s* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %99

13:                                               ; preds = %4
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %23 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %25 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @fio_ary_____rel2absolute(%struct.fio_ary___s* %27, i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %32 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %35 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  %38 = sub i64 %30, %37
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %26
  %42 = load i64*, i64** %8, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %46 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %49 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %8, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %44, %41
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %59 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %62 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %57, i64* %66, align 8
  br label %99

67:                                               ; preds = %26
  %68 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, 1
  call void @fio_ary_____require_on_top(%struct.fio_ary___s* %68, i64 %70)
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %75 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %78 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = bitcast i64* %80 to i8*
  %82 = load i64, i64* %9, align 8
  %83 = mul i64 8, %82
  call void @llvm.memset.p0i8.i64(i8* align 8 %81, i8 0, i64 %83, i1 false)
  br label %84

84:                                               ; preds = %73, %67
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %87 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %90 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %85, i64* %94, align 8
  %95 = load i64, i64* %6, align 8
  %96 = add nsw i64 %95, 1
  %97 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %98 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %84, %56, %12
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
define dso_local void @fiobj_ary_push(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 41)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_push, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to %struct.fiobj_ary_s*
  %16 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @fio_ary___push(%struct.fio_ary___s* %16, i64 %17)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___push(%struct.fio_ary___s*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %7 = icmp ne %struct.fio_ary___s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

9:                                                ; preds = %2
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %11 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %14 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  call void @fio_ary_____require_on_top(%struct.fio_ary___s* %18, i64 5)
  br label %19

19:                                               ; preds = %17, %9
  %20 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %21 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %24 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %29 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %31 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %35 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %38 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  store i64 %33, i64* %40, align 8
  %41 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %42 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %8
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_pop(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 41)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %12

11:                                               ; preds = %6, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_pop, i64 0, i64 0)) #7
  unreachable

12:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.fiobj_ary_s*
  %15 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %14, i32 0, i32 1
  %16 = call i32 @fio_ary___pop(%struct.fio_ary___s* %15, i64* %3)
  %17 = load i64, i64* %3, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___pop(%struct.fio_ary___s*, i64*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %7 = call i64 @fio_ary___count(%struct.fio_ary___s* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %12 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %19 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %22 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  br label %27

27:                                               ; preds = %17, %10
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_ary_unshift(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 41)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_unshift, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to %struct.fiobj_ary_s*
  %16 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @fio_ary___unshift(%struct.fio_ary___s* %16, i64 %17)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___unshift(%struct.fio_ary___s*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %7 = icmp ne %struct.fio_ary___s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %29

9:                                                ; preds = %2
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %11 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  call void @fio_ary_____require_on_bottom(%struct.fio_ary___s* %15, i64 8)
  br label %16

16:                                               ; preds = %14, %9
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %23 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %22, i32 0, i32 3
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %26 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64 %21, i64* %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_shift(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 41)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %12

11:                                               ; preds = %6, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_shift, i64 0, i64 0)) #7
  unreachable

12:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.fiobj_ary_s*
  %15 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %14, i32 0, i32 1
  %16 = call i32 @fio_ary___shift(%struct.fio_ary___s* %15, i64* %3)
  %17 = load i64, i64* %3, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___shift(%struct.fio_ary___s*, i64*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %7 = call i64 @fio_ary___count(%struct.fio_ary___s* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %13, %10
  %24 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %25 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_replace(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 41)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %16

15:                                               ; preds = %10, %3
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_replace, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @fiobj_ary_index(i64 %17, i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  call void @fiobj_ary_set(i64 %20, i64 %21, i64 %22)
  %23 = load i64, i64* %7, align 8
  ret i64 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_find(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 41)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_find, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to %struct.fiobj_ary_s*
  %16 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @fio_ary___find(%struct.fio_ary___s* %16, i64 %17)
  ret i64 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___find(%struct.fio_ary___s*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %10 = call i64 @fio_ary___count(%struct.fio_ary___s* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %16 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %19 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %37, %14
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %28 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %26, %32
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %25, %21
  %36 = phi i1 [ false, %21 ], [ %34, %25 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %21

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i64 -1, i64* %3, align 8
  br label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %48 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %45, %44, %13
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_ary_remove(i64, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @fiobj_type_is(i64 %10, i8 zeroext 41)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %15

14:                                               ; preds = %9, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_remove, i64 0, i64 0)) #7
  unreachable

15:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = inttoptr i64 %16 to %struct.fiobj_ary_s*
  %18 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %17, i32 0, i32 1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @fio_ary___remove(%struct.fio_ary___s* %18, i64 %19, i64* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  call void @fiobj_free(i64 %24)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___remove(%struct.fio_ary___s*, i64, i64*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fio_ary___s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @fio_ary_____rel2absolute(%struct.fio_ary___s* %9, i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %13 = call i64 @fio_ary___count(%struct.fio_ary___s* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4
  br label %79

21:                                               ; preds = %16
  %22 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %23 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %31 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %30, i32 0, i32 3
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %40 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %45 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %79

48:                                               ; preds = %37
  %49 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %50 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %55 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %48
  %59 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %60 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = bitcast i64* %63 to i8*
  %65 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %66 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = bitcast i64* %70 to i8*
  %72 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %73 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %74, %75
  %77 = mul i64 %76, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %71, i64 %77, i1 false)
  br label %78

78:                                               ; preds = %58, %48
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %43, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_ary_remove2(i64, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 41)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %14

13:                                               ; preds = %8, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_remove2, i64 0, i64 0)) #7
  unreachable

14:                                               ; preds = %12
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to %struct.fiobj_ary_s*
  %17 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %16, i32 0, i32 1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @fio_ary___remove2(%struct.fio_ary___s* %17, i64 %18, i64* %5)
  %20 = icmp eq i32 -1, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  call void @fiobj_free(i64 %23)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___remove2(%struct.fio_ary___s*, i64, i64*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fio_ary___s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @fio_ary___find(%struct.fio_ary___s* %9, i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @fio_ary___remove(%struct.fio_ary___s* %16, i64 %17, i64* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_ary_compact(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 41)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 250, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_compact, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.fiobj_ary_s*
  %14 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %13, i32 0, i32 1
  call void @fio_ary___compact(%struct.fio_ary___s* %14)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_ary___compact(%struct.fio_ary___s*) #0 {
  %2 = alloca %struct.fio_ary___s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %2, align 8
  %7 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %8 = call i64 @fio_ary___count(%struct.fio_ary___s* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %14 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %17 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  store i64* %19, i64** %4, align 8
  %20 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %21 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %24 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  store i64* %26, i64** %5, align 8
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %28 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %31 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  store i64* %33, i64** %6, align 8
  br label %34

34:                                               ; preds = %48, %12
  %35 = load i64*, i64** %5, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = icmp ult i64* %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i64*, i64** %5, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %4, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  store i64* %47, i64** %4, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i64*, i64** %5, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64* %50, i64** %5, align 8
  br label %34

51:                                               ; preds = %34
  %52 = load i64*, i64** %4, align 8
  %53 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %54 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = ptrtoint i64* %52 to i64
  %57 = ptrtoint i64* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 8
  %60 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %61 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %51, %11
  ret void
}

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
define internal void @fio_ary___free(%struct.fio_ary___s*) #0 {
  %2 = alloca %struct.fio_ary___s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_ary___s, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %2, align 8
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %7 = icmp ne %struct.fio_ary___s* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %13 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %20, %8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %15

23:                                               ; preds = %15
  %24 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %25 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = bitcast i64* %26 to i8*
  call void @fio_free(i8* %27)
  %28 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8
  %29 = bitcast %struct.fio_ary___s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false)
  %30 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %5, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = bitcast %struct.fio_ary___s* %28 to i8*
  %32 = bitcast %struct.fio_ary___s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  br label %33

33:                                               ; preds = %23, %1
  ret void
}

declare dso_local void @fio_free(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___each(%struct.fio_ary___s*, i64, i32 (i64, i8*)*, i8*) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_ary___s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.fio_ary___s*, %struct.fio_ary___s** %6, align 8
  %12 = call i64 @fio_ary___count(%struct.fio_ary___s* %11)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %4
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %5, align 8
  br label %47

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32 (i64, i8*)*, i32 (i64, i8*)** %8, align 8
  %28 = load %struct.fio_ary___s*, %struct.fio_ary___s** %6, align 8
  %29 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.fio_ary___s*, %struct.fio_ary___s** %6, align 8
  %32 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  %36 = add i64 %33, %34
  %37 = getelementptr inbounds i64, i64* %30, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 %27(i64 %38, i8* %39)
  %41 = icmp ne i32 %40, -1
  br label %42

42:                                               ; preds = %26, %22
  %43 = phi i1 [ false, %22 ], [ %41, %26 ]
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %22

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local noalias i8* @fio_malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

declare dso_local void @perror(i8*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_ary_____require_on_top(%struct.fio_ary___s*, i64) #0 {
  %3 = alloca %struct.fio_ary___s*, align 8
  %4 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %6 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %7, %8
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %11 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %58

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  %21 = and i64 %20, -2
  %22 = add i64 %21, 2
  store i64 %22, i64* %4, align 8
  %23 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %24 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i64, i64* %4, align 8
  %28 = mul i64 %27, 8
  %29 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %30 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 8
  %33 = call i8* @fio_realloc2(i8* %26, i64 %28, i64 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 15
  %36 = icmp eq i64 %35, 0
  call void @llvm.assume(i1 %36)
  %37 = bitcast i8* %33 to i64*
  %38 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %39 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %38, i32 0, i32 3
  store i64* %37, i64** %39, align 8
  %40 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %41 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %47 = icmp sle i32 1, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0))
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @kill(i32 0, i32 2) #1
  %52 = call i32* @__errno_location() #8
  %53 = load i32, i32* %52, align 4
  call void @exit(i32 %53) #7
  unreachable

54:                                               ; preds = %15
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %57 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %14
  ret void
}

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary_____rel2absolute(%struct.fio_ary___s*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %3, align 8
  br label %25

10:                                               ; preds = %2
  %11 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %12 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %3, align 8
  br label %25

24:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  br label %25

25:                                               ; preds = %24, %22, %8
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

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
define internal void @fio_ary_____require_on_bottom(%struct.fio_ary___s*, i64) #0 {
  %3 = alloca %struct.fio_ary___s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %7 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %110

12:                                               ; preds = %2
  %13 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %14 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  %21 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %22 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = and i64 %24, -2
  %26 = add i64 %25, 2
  store i64 %26, i64* %4, align 8
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %28 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %12
  %33 = load i64, i64* %4, align 8
  %34 = mul i64 %33, 8
  %35 = call noalias i8* @fio_malloc(i64 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 15
  %38 = icmp eq i64 %37, 0
  call void @llvm.assume(i1 %38)
  %39 = bitcast i8* %35 to i64*
  %40 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %41 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %40, i32 0, i32 3
  store i64* %39, i64** %41, align 8
  %42 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %43 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %49 = icmp sle i32 1, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51
  %53 = call i32 @kill(i32 0, i32 2) #1
  %54 = call i32* @__errno_location() #8
  %55 = load i32, i32* %54, align 4
  call void @exit(i32 %55) #7
  unreachable

56:                                               ; preds = %32
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %59 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %12
  %61 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %62 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %65 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  store i64 %67, i64* %4, align 8
  %68 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %69 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %72 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %60
  %76 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %77 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %80 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = sub i64 %81, %82
  %84 = getelementptr inbounds i64, i64* %78, i64 %83
  %85 = bitcast i64* %84 to i8*
  %86 = load i64*, i64** %5, align 8
  %87 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %88 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = bitcast i64* %90 to i8*
  %92 = load i64, i64* %4, align 8
  %93 = mul i64 %92, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %91, i64 %93, i1 false)
  br label %94

94:                                               ; preds = %75, %60
  %95 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %96 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = sub i64 %97, %98
  %100 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %101 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** %5, align 8
  %103 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8
  %104 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %103, i32 0, i32 3
  %105 = load i64*, i64** %104, align 8
  %106 = icmp ne i64* %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %94
  %108 = load i64*, i64** %5, align 8
  %109 = bitcast i64* %108 to i8*
  call void @fio_free(i8* %109)
  br label %110

110:                                              ; preds = %11, %107, %94
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
