; ModuleID = 'fiobject.mod.c'
source_filename = "fiobject.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_stack_s = type { i64, i64, i64, i64* }
%struct.task_packet_s = type { i32 (i64, i8*)*, i8*, %struct.fiobj_stack_s*, i64, i64, i8, i8 }
%struct.fiobj_object_header_s = type { i8, i32 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 4, align 4
@__const.fio_ltoa.notation = private unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4920\00", align 1

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
define weak dso_local noalias i8* @fio_malloc(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #1
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 0, i64 %10, i1 false)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local noalias i8* @fio_calloc(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noalias i8* @calloc(i64 %5, i64 %6) #1
  ret i8* %7
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_free(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* %3) #1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i8* @fio_realloc(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @realloc(i8* %5, i64 %6) #1
  ret i8* %7
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i8* @fio_realloc2(i8*, i64, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i8* @realloc(i8* %7, i64 %8) #1
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local noalias i8* @fio_mmap(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @fio_malloc(i64 %3)
  %5 = ptrtoint i8* %4 to i64
  %6 = and i64 %5, 15
  %7 = icmp eq i64 %6, 0
  call void @llvm.assume(i1 %7)
  ret i8* %4
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_atol(i8**) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = call i64 @strtoll(i8* %4, i8** %5, i32 0) #1
  ret i64 %6
}

; Function Attrs: nounwind
declare dso_local i64 @strtoll(i8*, i8**, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local double @fio_atof(i8**) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = call double @strtod(i8* %4, i8** %5) #1
  ret double %6
}

; Function Attrs: nounwind
declare dso_local double @strtod(i8*, i8**) #2

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_ltoa(i8*, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca [16 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca [48 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %21 = bitcast [16 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.fio_ltoa.notation, i32 0, i32 0), i64 16, i1 false)
  store i64 0, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %311

25:                                               ; preds = %3
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  switch i32 %27, label %264 [
    i32 1, label %28
    i32 2, label %28
    i32 8, label %86
    i32 16, label %133
    i32 3, label %214
    i32 4, label %214
    i32 5, label %214
    i32 6, label %214
    i32 7, label %214
    i32 9, label %214
  ]

28:                                               ; preds = %25, %25
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %11, align 8
  store i8 0, i8* %12, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 48, i8* %33, align 1
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 98, i8* %37, align 1
  br label %38

38:                                               ; preds = %48, %28
  %39 = load i8, i8* %12, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp slt i32 %40, 64
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  %44 = and i64 %43, -9223372036854775808
  %45 = icmp eq i64 %44, 0
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = load i64, i64* %11, align 8
  %50 = shl i64 %49, 1
  store i64 %50, i64* %11, align 8
  %51 = load i8, i8* %12, align 1
  %52 = add i8 %51, 1
  store i8 %52, i8* %12, align 1
  br label %38

53:                                               ; preds = %46
  %54 = load i8, i8* %12, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 48, i8* %60, align 1
  br label %61

61:                                               ; preds = %56, %53
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i8, i8* %12, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i64, i64* %11, align 8
  %68 = and i64 %67, -9223372036854775808
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 49, i32 48
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  %76 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 %72, i8* %76, align 1
  %77 = load i64, i64* %11, align 8
  %78 = shl i64 %77, 1
  store i64 %78, i64* %11, align 8
  %79 = load i8, i8* %12, align 1
  %80 = add i8 %79, 1
  store i8 %80, i8* %12, align 1
  br label %62

81:                                               ; preds = %62
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %4, align 8
  br label %345

86:                                               ; preds = %25
  store i64 0, i64* %13, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 45, i8* %93, align 1
  %94 = load i64, i64* %6, align 8
  %95 = sub nsw i64 0, %94
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i8*, i8** %5, align 8
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  %100 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 48, i8* %100, align 1
  br label %101

101:                                              ; preds = %104, %96
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i64, i64* %6, align 8
  %106 = and i64 %105, 7
  %107 = add nsw i64 48, %106
  %108 = trunc i64 %107 to i8
  %109 = load i64, i64* %13, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %13, align 8
  %111 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %109
  store i8 %108, i8* %111, align 1
  %112 = load i64, i64* %6, align 8
  %113 = ashr i64 %112, 3
  store i64 %113, i64* %6, align 8
  br label %101

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %118, %114
  %116 = load i64, i64* %13, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i64, i64* %13, align 8
  %120 = add i64 %119, -1
  store i64 %120, i64* %13, align 8
  %121 = load i64, i64* %13, align 8
  %122 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %9, align 8
  %127 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 %123, i8* %127, align 1
  br label %115

128:                                              ; preds = %115
  %129 = load i8*, i8** %5, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8 0, i8* %131, align 1
  %132 = load i64, i64* %9, align 8
  store i64 %132, i64* %4, align 8
  br label %345

133:                                              ; preds = %25
  %134 = load i64, i64* %6, align 8
  store i64 %134, i64* %14, align 8
  store i8 0, i8* %15, align 1
  %135 = load i8*, i8** %5, align 8
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %9, align 8
  %138 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 48, i8* %138, align 1
  %139 = load i8*, i8** %5, align 8
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %9, align 8
  %142 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8 120, i8* %142, align 1
  br label %143

143:                                              ; preds = %153, %133
  %144 = load i8, i8* %15, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp slt i32 %145, 8
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i64, i64* %14, align 8
  %149 = and i64 %148, -72057594037927936
  %150 = icmp eq i64 %149, 0
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i1 [ false, %143 ], [ %150, %147 ]
  br i1 %152, label %153, label %158

153:                                              ; preds = %151
  %154 = load i64, i64* %14, align 8
  %155 = shl i64 %154, 8
  store i64 %155, i64* %14, align 8
  %156 = load i8, i8* %15, align 1
  %157 = add i8 %156, 1
  store i8 %157, i8* %15, align 1
  br label %143

158:                                              ; preds = %151
  %159 = load i8, i8* %15, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load i64, i64* %14, align 8
  %164 = and i64 %163, -9223372036854775808
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i8*, i8** %5, align 8
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  %170 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8 48, i8* %170, align 1
  %171 = load i8*, i8** %5, align 8
  %172 = load i64, i64* %9, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %9, align 8
  %174 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8 48, i8* %174, align 1
  br label %175

175:                                              ; preds = %166, %162, %158
  br label %176

176:                                              ; preds = %180, %175
  %177 = load i8, i8* %15, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %180, label %209

180:                                              ; preds = %176
  %181 = load i64, i64* %14, align 8
  %182 = and i64 %181, -1152921504606846976
  %183 = lshr i64 %182, 60
  %184 = trunc i64 %183 to i8
  store i8 %184, i8* %16, align 1
  %185 = load i8, i8* %16, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = load i8*, i8** %5, align 8
  %190 = load i64, i64* %9, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %9, align 8
  %192 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8 %188, i8* %192, align 1
  %193 = load i64, i64* %14, align 8
  %194 = and i64 %193, 1080863910568919040
  %195 = lshr i64 %194, 56
  %196 = trunc i64 %195 to i8
  store i8 %196, i8* %16, align 1
  %197 = load i8, i8* %16, align 1
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = load i8*, i8** %5, align 8
  %202 = load i64, i64* %9, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %9, align 8
  %204 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8 %200, i8* %204, align 1
  %205 = load i8, i8* %15, align 1
  %206 = add i8 %205, 1
  store i8 %206, i8* %15, align 1
  %207 = load i64, i64* %14, align 8
  %208 = shl i64 %207, 8
  store i64 %208, i64* %14, align 8
  br label %176

209:                                              ; preds = %176
  %210 = load i8*, i8** %5, align 8
  %211 = load i64, i64* %9, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8 0, i8* %212, align 1
  %213 = load i64, i64* %9, align 8
  store i64 %213, i64* %4, align 8
  br label %345

214:                                              ; preds = %25, %25, %25, %25, %25, %25
  %215 = load i64, i64* %6, align 8
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load i8*, i8** %5, align 8
  %219 = load i64, i64* %9, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %9, align 8
  %221 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8 45, i8* %221, align 1
  %222 = load i64, i64* %6, align 8
  %223 = sub nsw i64 0, %222
  store i64 %223, i64* %6, align 8
  br label %224

224:                                              ; preds = %217, %214
  store i64 0, i64* %17, align 8
  br label %225

225:                                              ; preds = %228, %224
  %226 = load i64, i64* %6, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %225
  %229 = load i64, i64* %6, align 8
  %230 = load i8, i8* %7, align 1
  %231 = zext i8 %230 to i64
  %232 = sdiv i64 %229, %231
  store i64 %232, i64* %18, align 8
  %233 = load i64, i64* %6, align 8
  %234 = load i64, i64* %18, align 8
  %235 = load i8, i8* %7, align 1
  %236 = zext i8 %235 to i64
  %237 = mul i64 %234, %236
  %238 = sub i64 %233, %237
  %239 = add i64 48, %238
  %240 = trunc i64 %239 to i8
  %241 = load i64, i64* %17, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %17, align 8
  %243 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %241
  store i8 %240, i8* %243, align 1
  %244 = load i64, i64* %18, align 8
  store i64 %244, i64* %6, align 8
  br label %225

245:                                              ; preds = %225
  br label %246

246:                                              ; preds = %249, %245
  %247 = load i64, i64* %17, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %246
  %250 = load i64, i64* %17, align 8
  %251 = add i64 %250, -1
  store i64 %251, i64* %17, align 8
  %252 = load i64, i64* %17, align 8
  %253 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = load i8*, i8** %5, align 8
  %256 = load i64, i64* %9, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %9, align 8
  %258 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8 %254, i8* %258, align 1
  br label %246

259:                                              ; preds = %246
  %260 = load i8*, i8** %5, align 8
  %261 = load i64, i64* %9, align 8
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  store i8 0, i8* %262, align 1
  %263 = load i64, i64* %9, align 8
  store i64 %263, i64* %4, align 8
  br label %345

264:                                              ; preds = %25
  br label %265

265:                                              ; preds = %264
  %266 = load i64, i64* %6, align 8
  %267 = icmp slt i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %265
  %269 = load i8*, i8** %5, align 8
  %270 = load i64, i64* %9, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %9, align 8
  %272 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8 45, i8* %272, align 1
  %273 = load i64, i64* %6, align 8
  %274 = sub nsw i64 0, %273
  store i64 %274, i64* %6, align 8
  br label %275

275:                                              ; preds = %268, %265
  store i64 0, i64* %19, align 8
  br label %276

276:                                              ; preds = %279, %275
  %277 = load i64, i64* %6, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %276
  %280 = load i64, i64* %6, align 8
  %281 = sdiv i64 %280, 10
  store i64 %281, i64* %20, align 8
  %282 = load i64, i64* %6, align 8
  %283 = load i64, i64* %20, align 8
  %284 = mul i64 %283, 10
  %285 = sub i64 %282, %284
  %286 = add i64 48, %285
  %287 = trunc i64 %286 to i8
  %288 = load i64, i64* %19, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %19, align 8
  %290 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %288
  store i8 %287, i8* %290, align 1
  %291 = load i64, i64* %20, align 8
  store i64 %291, i64* %6, align 8
  br label %276

292:                                              ; preds = %276
  br label %293

293:                                              ; preds = %296, %292
  %294 = load i64, i64* %19, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %293
  %297 = load i64, i64* %19, align 8
  %298 = add i64 %297, -1
  store i64 %298, i64* %19, align 8
  %299 = load i64, i64* %19, align 8
  %300 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = load i8*, i8** %5, align 8
  %303 = load i64, i64* %9, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %9, align 8
  %305 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8 %301, i8* %305, align 1
  br label %293

306:                                              ; preds = %293
  %307 = load i8*, i8** %5, align 8
  %308 = load i64, i64* %9, align 8
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  store i8 0, i8* %309, align 1
  %310 = load i64, i64* %9, align 8
  store i64 %310, i64* %4, align 8
  br label %345

311:                                              ; preds = %24
  %312 = load i8, i8* %7, align 1
  %313 = zext i8 %312 to i32
  switch i32 %313, label %336 [
    i32 1, label %314
    i32 2, label %314
    i32 16, label %323
  ]

314:                                              ; preds = %311, %311
  %315 = load i8*, i8** %5, align 8
  %316 = load i64, i64* %9, align 8
  %317 = add i64 %316, 1
  store i64 %317, i64* %9, align 8
  %318 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8 48, i8* %318, align 1
  %319 = load i8*, i8** %5, align 8
  %320 = load i64, i64* %9, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %9, align 8
  %322 = getelementptr inbounds i8, i8* %319, i64 %320
  store i8 98, i8* %322, align 1
  br label %323

323:                                              ; preds = %311, %314
  %324 = load i8*, i8** %5, align 8
  %325 = load i64, i64* %9, align 8
  %326 = add i64 %325, 1
  store i64 %326, i64* %9, align 8
  %327 = getelementptr inbounds i8, i8* %324, i64 %325
  store i8 48, i8* %327, align 1
  %328 = load i8*, i8** %5, align 8
  %329 = load i64, i64* %9, align 8
  %330 = add i64 %329, 1
  store i64 %330, i64* %9, align 8
  %331 = getelementptr inbounds i8, i8* %328, i64 %329
  store i8 120, i8* %331, align 1
  %332 = load i8*, i8** %5, align 8
  %333 = load i64, i64* %9, align 8
  %334 = add i64 %333, 1
  store i64 %334, i64* %9, align 8
  %335 = getelementptr inbounds i8, i8* %332, i64 %333
  store i8 48, i8* %335, align 1
  br label %336

336:                                              ; preds = %323, %311
  %337 = load i8*, i8** %5, align 8
  %338 = load i64, i64* %9, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %9, align 8
  %340 = getelementptr inbounds i8, i8* %337, i64 %338
  store i8 48, i8* %340, align 1
  %341 = load i8*, i8** %5, align 8
  %342 = load i64, i64* %9, align 8
  %343 = getelementptr inbounds i8, i8* %341, i64 %342
  store i8 0, i8* %343, align 1
  %344 = load i64, i64* %9, align 8
  store i64 %344, i64* %4, align 8
  br label %345

345:                                              ; preds = %336, %306, %259, %209, %128, %81
  %346 = load i64, i64* %4, align 8
  ret i64 %346
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_ftoa(i8*, double, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store double %1, double* %6, align 8
  store i8 %2, i8* %7, align 1
  %12 = load i8, i8* %7, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %3
  %20 = bitcast double* %6 to i8*
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i8, i8* %7, align 1
  %26 = call i64 @fio_ltoa(i8* %22, i64 %24, i8 zeroext %25)
  store i64 %26, i64* %4, align 8
  br label %72

27:                                               ; preds = %15
  %28 = load i8*, i8** %5, align 8
  %29 = load double, double* %6, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %29) #1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %9, align 8
  store i8 1, i8* %10, align 1
  %32 = load i8*, i8** %5, align 8
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %55, %27
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 44
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  store i8 46, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 101
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  store i8 0, i8* %10, align 1
  br label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  br label %33

58:                                               ; preds = %54, %33
  %59 = load i8, i8* %10, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 46, i8* %65, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  %69 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 48, i8* %69, align 1
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %70, %19
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fiobj_stack_s, align 8
  %10 = alloca %struct.task_packet_s, align 8
  store i64 %0, i64* %5, align 8
  store i32 (i64, i8*)* %1, i32 (i64, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, 1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %21, 6
  %23 = icmp ne i64 %22, 6
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %25)
  %27 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %26, i32 0, i32 5
  %28 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %27, align 8
  %29 = icmp eq i64 (i64, i64, i32 (i64, i8*)*, i8*)* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24, %20, %16, %13, %3
  %31 = load i32 (i64, i8*)*, i32 (i64, i8*)** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 %31(i64 %32, i8* %33)
  store i64 1, i64* %4, align 8
  br label %100

35:                                               ; preds = %24
  %36 = load i32 (i64, i8*)*, i32 (i64, i8*)** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 %36(i64 %37, i8* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i64 1, i64* %4, align 8
  br label %100

42:                                               ; preds = %35
  store i64 0, i64* %8, align 8
  %43 = bitcast %struct.fiobj_stack_s* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 32, i1 false)
  %44 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 0
  %45 = load i32 (i64, i8*)*, i32 (i64, i8*)** %6, align 8
  store i32 (i64, i8*)* %45, i32 (i64, i8*)** %44, align 8
  %46 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 1
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %46, align 8
  %48 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 2
  store %struct.fiobj_stack_s* %9, %struct.fiobj_stack_s** %48, align 8
  %49 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 4
  store i64 1, i64* %50, align 8
  %51 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 5
  store i8 0, i8* %51, align 8
  %52 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 6
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %93, %42
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 6
  store i8 0, i8* %59, align 1
  %60 = load i64, i64* %5, align 8
  %61 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %60)
  %62 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %61, i32 0, i32 5
  %63 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = bitcast %struct.task_packet_s* %10 to i8*
  %67 = call i64 %63(i64 %64, i64 %65, i32 (i64, i8*)* @fiobj_task_wrapper, i8* %66)
  store i64 %67, i64* %8, align 8
  %68 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 5
  %69 = load i8, i8* %68, align 8
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %97

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 6
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %9, i64 %77)
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %9, i64 %79)
  br label %81

81:                                               ; preds = %76, %72
  %82 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %9, i64 0)
  %87 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %9, i64 %88)
  br label %90

90:                                               ; preds = %85, %81
  store i64 0, i64* %5, align 8
  %91 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %9, i64* %5)
  %92 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %9, i64* %8)
  br label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %5, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %53, label %96

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96, %71
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %9)
  %98 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %97, %41, %30
  %101 = load i64, i64* %4, align 8
  ret i64 %101
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_task_wrapper(i64, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.task_packet_s*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.task_packet_s*
  store %struct.task_packet_s* %9, %struct.task_packet_s** %6, align 8
  %10 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8
  %11 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8
  %15 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %14, i32 0, i32 0
  %16 = load i32 (i64, i8*)*, i32 (i64, i8*)** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8
  %19 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 %16(i64 %17, i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8
  %26 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %25, i32 0, i32 5
  store i8 1, i8* %26, align 8
  store i32 -1, i32* %3, align 4
  br label %51

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i64, i64* %4, align 8
  %32 = and i64 %31, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, 6
  %37 = icmp ne i64 %36, 6
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %39)
  %41 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %40, i32 0, i32 5
  %42 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %41, align 8
  %43 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8
  %46 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %45, i32 0, i32 6
  store i8 1, i8* %46, align 1
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8
  %49 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  store i32 -1, i32* %3, align 4
  br label %51

50:                                               ; preds = %38, %34, %30, %27
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %44, %24
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_stack_push(%struct.fiobj_stack_s*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fiobj_stack_s*, align 8
  %5 = alloca i64, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %7 = icmp ne %struct.fiobj_stack_s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

9:                                                ; preds = %2
  %10 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %11 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %14 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  call void @fiobj_stack___require_on_top(%struct.fiobj_stack_s* %18, i64 5)
  br label %19

19:                                               ; preds = %17, %9
  %20 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %21 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %24 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %29 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %31 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %35 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %38 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  store i64 %33, i64* %40, align 8
  %41 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %42 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %41, i32 0, i32 1
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
define internal i32 @fiobj_stack_pop(%struct.fiobj_stack_s*, i64*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fiobj_stack_s*, align 8
  %5 = alloca i64*, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %7 = call i64 @fiobj_stack_count(%struct.fiobj_stack_s* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %12 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %19 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8
  %22 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %21, i32 0, i32 1
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
define internal void @fiobj_stack_free(%struct.fiobj_stack_s*) #0 {
  %2 = alloca %struct.fiobj_stack_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fiobj_stack_s, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %2, align 8
  %6 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8
  %7 = icmp ne %struct.fiobj_stack_s* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8
  %10 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8
  %13 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %12, i32 0, i32 0
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
  %24 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8
  %25 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = bitcast i64* %26 to i8*
  call void @fio_free(i8* %27)
  %28 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8
  %29 = bitcast %struct.fiobj_stack_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false)
  %30 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %5, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = bitcast %struct.fiobj_stack_s* %28 to i8*
  %32 = bitcast %struct.fiobj_stack_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  br label %33

33:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_free_complex_object(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_stack_s, align 8
  store i64 %0, i64* %2, align 8
  %4 = bitcast %struct.fiobj_stack_s* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 32, i1 false)
  br label %5

5:                                                ; preds = %12, %1
  %6 = load i64, i64* %2, align 8
  %7 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %6)
  %8 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %7, i32 0, i32 1
  %9 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %8, align 8
  %10 = load i64, i64* %2, align 8
  %11 = bitcast %struct.fiobj_stack_s* %3 to i8*
  call void %9(i64 %10, void (i64, i8*)* @fiobj_dealloc_task, i8* %11)
  br label %12

12:                                               ; preds = %5
  %13 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %3, i64* %2)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %5, label %16

16:                                               ; preds = %12
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_dealloc_task(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fiobj_stack_s*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, 6
  %20 = icmp ne i64 %19, 6
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13, %10, %2
  br label %60

22:                                               ; preds = %17
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, -8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.fiobj_object_header_s*
  %27 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %26, i32 0, i32 1
  store i32 1, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = atomicrmw sub i32* %27, i32 %28 seq_cst
  %30 = sub i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %60

34:                                               ; preds = %22
  %35 = load i64, i64* %3, align 8
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35)
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 5
  %38 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %37, align 8
  %39 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i64, i64* %3, align 8
  %42 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %41)
  %43 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %42, i32 0, i32 2
  %44 = load i64 (i64)*, i64 (i64)** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i64 %44(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %40, %34
  %49 = load i64, i64* %3, align 8
  %50 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %49)
  %51 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %50, i32 0, i32 1
  %52 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %51, align 8
  %53 = load i64, i64* %3, align 8
  call void %52(i64 %53, void (i64, i8*)* null, i8* null)
  br label %60

54:                                               ; preds = %40
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to %struct.fiobj_stack_s*
  store %struct.fiobj_stack_s* %56, %struct.fiobj_stack_s** %7, align 8
  %57 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %7, align 8
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %48, %33, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_iseq____internal_complex__(i64, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fiobj_stack_s, align 8
  %7 = alloca %struct.fiobj_stack_s, align 8
  %8 = alloca %struct.fiobj_stack_s, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = bitcast %struct.fiobj_stack_s* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = bitcast %struct.fiobj_stack_s* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = bitcast %struct.fiobj_stack_s* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  br label %12

12:                                               ; preds = %70, %2
  %13 = load i64, i64* %4, align 8
  %14 = bitcast %struct.fiobj_stack_s* %6 to i8*
  %15 = call i64 @fiobj_each1(i64 %13, i64 0, i32 (i64, i8*)* @fiobj_iseq____internal_complex__task, i8* %14)
  %16 = load i64, i64* %5, align 8
  %17 = bitcast %struct.fiobj_stack_s* %7 to i8*
  %18 = call i64 @fiobj_each1(i64 %16, i64 0, i32 (i64, i8*)* @fiobj_iseq____internal_complex__task, i8* %17)
  br label %19

19:                                               ; preds = %60, %12
  %20 = call i64 @fiobj_stack_count(%struct.fiobj_stack_s* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %23 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %6, i64* %4)
  %24 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %7, i64* %5)
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @fiobj_iseq_simple(i64 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %74

30:                                               ; preds = %22
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = and i64 %34, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %38, 6
  %40 = icmp ne i64 %39, 6
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %42)
  %44 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %43, i32 0, i32 5
  %45 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %44, align 8
  %46 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i64, i64* %4, align 8
  %49 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %48)
  %50 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %49, i32 0, i32 2
  %51 = load i64 (i64)*, i64 (i64)** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i64 %51(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %8, i64 %56)
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %8, i64 %58)
  br label %60

60:                                               ; preds = %55, %47, %41, %37, %33, %30
  br label %19

61:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %62 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %8, i64* %5)
  %63 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %8, i64* %4)
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @fiobj_iseq_simple(i64 %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %74

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %12, label %73

73:                                               ; preds = %70
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %6)
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %7)
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %8)
  store i32 1, i32* %3, align 4
  br label %75

74:                                               ; preds = %68, %29
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %6)
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %7)
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %8)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

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
define internal i32 @fiobj_iseq____internal_complex__task(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fiobj_stack_s*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.fiobj_stack_s*
  store %struct.fiobj_stack_s* %7, %struct.fiobj_stack_s** %5, align 8
  %8 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %8, i64 %9)
  %11 = call i64 @fiobj_hash_key_in_loop()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %5, align 8
  %15 = call i64 @fiobj_hash_key_in_loop()
  %16 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %14, i64 %15)
  br label %17

17:                                               ; preds = %13, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_stack_count(%struct.fiobj_stack_s*) #0 {
  %2 = alloca %struct.fiobj_stack_s*, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %2, align 8
  %3 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8
  %4 = icmp ne %struct.fiobj_stack_s* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8
  %7 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8
  %10 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %9, i32 0, i32 0
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
define internal i32 @fiobj_iseq_simple(i64, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %68

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10
  store i32 0, i32* %3, align 4
  br label %68

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, 6
  %27 = icmp ne i64 %26, 6
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, 6
  %38 = icmp ne i64 %37, 6
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %31, %28, %24, %20, %17
  store i32 0, i32* %3, align 4
  br label %68

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = and i64 %41, -8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.fiobj_object_header_s*
  %45 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 4
  %47 = zext i8 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, -8
  %50 = inttoptr i64 %49 to i8*
  %51 = bitcast i8* %50 to %struct.fiobj_object_header_s*
  %52 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %68

57:                                               ; preds = %40
  %58 = load i64, i64* %4, align 8
  %59 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %58)
  %60 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %59, i32 0, i32 4
  %61 = load i64 (i64, i64)*, i64 (i64, i64)** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 %61(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %68

67:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %66, %56, %39, %16, %9
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobject___noop_dealloc(i64, void (i64, i8*)*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8
  %9 = load i8*, i8** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobject___simple_dealloc(i64, void (i64, i8*)*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, -8
  %9 = inttoptr i64 %8 to i8*
  call void @fio_free(i8* %9)
  %10 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8
  %11 = load i8*, i8** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobject___noop_count(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobject___noop_is_eq(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobject___noop_to_str(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobject___noop_to_i(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @fiobject___noop_to_f(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret double 0.000000e+00
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
define internal void @fiobj_stack___require_on_top(%struct.fiobj_stack_s*, i64) #0 {
  %3 = alloca %struct.fiobj_stack_s*, align 8
  %4 = alloca i64, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8
  %6 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %7, %8
  %10 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8
  %11 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %58

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8
  %18 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  %21 = and i64 %20, -2
  %22 = add i64 %21, 2
  store i64 %22, i64* %4, align 8
  %23 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8
  %24 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i64, i64* %4, align 8
  %28 = mul i64 %27, 8
  %29 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8
  %30 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 8
  %33 = call i8* @fio_realloc2(i8* %26, i64 %28, i64 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 15
  %36 = icmp eq i64 %35, 0
  call void @llvm.assume(i1 %36)
  %37 = bitcast i8* %33 to i64*
  %38 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8
  %39 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %38, i32 0, i32 3
  store i64* %37, i64** %39, align 8
  %40 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8
  %41 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %40, i32 0, i32 3
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
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @kill(i32 0, i32 2) #1
  %52 = call i32* @__errno_location() #7
  %53 = load i32, i32* %52, align 4
  call void @exit(i32 %53) #8
  unreachable

54:                                               ; preds = %15
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8
  %57 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %14
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

declare dso_local i64 @fiobj_hash_key_in_loop() #4

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
