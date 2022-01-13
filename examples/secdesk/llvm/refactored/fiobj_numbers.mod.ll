; ModuleID = './examples/secdesk/c/fiobj_numbers.mod.c'
source_filename = "./examples/secdesk/c/fiobj_numbers.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.fiobj_num_s = type { %struct.fiobj_object_header_s, i64 }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.fiobj_float_s = type { %struct.fiobj_object_header_s, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@FIOBJECT_VTABLE_NUMBER = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobject___simple_dealloc, i64 (i64)* @fiobject___noop_count, i64 (i64)* @fio_itrue, i64 (i64, i64)* @fiobj_i_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* null, void (%struct.fio_str_info_s*, i64)* @fio_i2str, i64 (i64)* @fio_i2i, double (i64)* @fio_i2f }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Float\00", align 1
@FIOBJECT_VTABLE_FLOAT = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobject___simple_dealloc, i64 (i64)* @fiobject___noop_count, i64 (i64)* @fio_ftrue, i64 (i64, i64)* @fiobj_f_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* null, void (%struct.fio_str_info_s*, i64)* @fio_f2str, i64 (i64)* @fio_f2i, double (i64)* @fio_f2f }, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"ERROR: fiobj number couldn't allocate memory\00", align 1
@fiobj_num_tmp.ret = internal thread_local global %struct.fiobj_num_s zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"ERROR: fiobj float couldn't allocate memory\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"FIOBJ_TYPE_IS(obj, FIOBJ_T_FLOAT)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"./examples/secdesk/c/fiobj_numbers.mod.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_float_set = private unnamed_addr constant [36 x i8] c"void fiobj_float_set(FIOBJ, double)\00", align 1
@fiobj_float_tmp.ret = internal thread_local global %struct.fiobj_float_s zeroinitializer, align 8
@num_buffer = internal thread_local global [512 x i8] zeroinitializer, align 16
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1

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

declare dso_local void @fiobject___simple_dealloc(i64, void (i64, i8*)*, i8*) #4

declare dso_local i64 @fiobject___noop_count(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_itrue(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.fiobj_num_s*
  %7 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_i_is_eq(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.fiobj_num_s*
  %9 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.fiobj_num_s*
  %15 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %10, %16
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  ret i64 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_i2str(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, -8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.fiobj_num_s*
  %10 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @fio_ltoa(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i64 %11, i8 zeroext 10)
  store i64 %12, i64* %5, align 8
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i8** %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_i2i(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.fiobj_num_s*
  %7 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fio_i2f(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.fiobj_num_s*
  %7 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sitofp i64 %8 to double
  ret double %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ftrue(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.fiobj_float_s*
  %7 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %6, i32 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = fcmp une double %8, 0.000000e+00
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_f_is_eq(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.fiobj_float_s*
  %9 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %8, i32 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.fiobj_float_s*
  %15 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = fcmp oeq double %10, %16
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  ret i64 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_f2str(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, -8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.fiobj_float_s*
  %8 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %7, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = fcmp uno double %9, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 3, i64* %13, align 8
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %57

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, -8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.fiobj_float_s*
  %20 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = call double @llvm.fabs.f64(double %21) #8
  %23 = fcmp oeq double %22, 0x7FF0000000000000
  %24 = bitcast double %21 to i64
  %25 = icmp slt i64 %24, 0
  %26 = select i1 %25, i32 -1, i32 1
  %27 = select i1 %23, i32 %26, i32 0
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %15
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.fiobj_float_s*
  %34 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fcmp ogt double %35, 0.000000e+00
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 8, i64* %39, align 8
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %40, align 8
  br label %57

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 9, i64* %43, align 8
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %44, align 8
  br label %57

45:                                               ; preds = %15
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %49 = load i64, i64* %3, align 8
  %50 = and i64 %49, -8
  %51 = inttoptr i64 %50 to i8*
  %52 = bitcast i8* %51 to %struct.fiobj_float_s*
  %53 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = call i64 @fio_ftoa(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), double %54, i8 zeroext 10)
  store i64 %55, i64* %48, align 8
  %56 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i8** %56, align 8
  br label %57

57:                                               ; preds = %46, %41, %37, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_f2i(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.fiobj_float_s*
  %7 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %6, i32 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = fpext double %8 to x86_fp80
  %10 = call x86_fp80 @llvm.floor.f80(x86_fp80 %9)
  %11 = fptosi x86_fp80 %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fio_f2f(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.fiobj_float_s*
  %7 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %6, i32 0, i32 1
  %8 = load double, double* %7, align 8
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_num_new_bignum(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_num_s*, align 8
  %4 = alloca %struct.fiobj_num_s, align 8
  store i64 %0, i64* %2, align 8
  %5 = call noalias i8* @fio_malloc(i64 16)
  %6 = ptrtoint i8* %5 to i64
  %7 = and i64 %6, 15
  %8 = icmp eq i64 %7, 0
  call void @llvm.assume(i1 %8)
  %9 = bitcast i8* %5 to %struct.fiobj_num_s*
  store %struct.fiobj_num_s* %9, %struct.fiobj_num_s** %3, align 8
  %10 = load %struct.fiobj_num_s*, %struct.fiobj_num_s** %3, align 8
  %11 = icmp ne %struct.fiobj_num_s* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32* @__errno_location() #9
  %14 = load i32, i32* %13, align 4
  call void @exit(i32 %14) #10
  unreachable

15:                                               ; preds = %1
  %16 = load %struct.fiobj_num_s*, %struct.fiobj_num_s** %3, align 8
  %17 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %17, i32 0, i32 0
  store i8 1, i8* %18, align 8
  %19 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %17, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %4, i32 0, i32 1
  %21 = load i64, i64* %2, align 8
  store i64 %21, i64* %20, align 8
  %22 = bitcast %struct.fiobj_num_s* %16 to i8*
  %23 = bitcast %struct.fiobj_num_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.fiobj_num_s*, %struct.fiobj_num_s** %3, align 8
  %25 = ptrtoint %struct.fiobj_num_s* %24 to i64
  ret i64 %25
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
define dso_local i64 @fiobj_num_tmp(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_num_s, align 8
  store i64 %0, i64* %2, align 8
  %4 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %4, i32 0, i32 0
  store i8 1, i8* %5, align 8
  %6 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %4, i32 0, i32 1
  store i32 268435455, i32* %6, align 4
  %7 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %3, i32 0, i32 1
  %8 = load i64, i64* %2, align 8
  store i64 %8, i64* %7, align 8
  %9 = bitcast %struct.fiobj_num_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.fiobj_num_s, %struct.fiobj_num_s* @fiobj_num_tmp.ret, i32 0, i32 0, i32 0), i8* align 8 %9, i64 16, i1 false)
  ret i64 ptrtoint (%struct.fiobj_num_s* @fiobj_num_tmp.ret to i64)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_float_new(double) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.fiobj_float_s*, align 8
  %4 = alloca %struct.fiobj_float_s, align 8
  store double %0, double* %2, align 8
  %5 = call noalias i8* @fio_malloc(i64 16)
  %6 = ptrtoint i8* %5 to i64
  %7 = and i64 %6, 15
  %8 = icmp eq i64 %7, 0
  call void @llvm.assume(i1 %8)
  %9 = bitcast i8* %5 to %struct.fiobj_float_s*
  store %struct.fiobj_float_s* %9, %struct.fiobj_float_s** %3, align 8
  %10 = load %struct.fiobj_float_s*, %struct.fiobj_float_s** %3, align 8
  %11 = icmp ne %struct.fiobj_float_s* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32* @__errno_location() #9
  %14 = load i32, i32* %13, align 4
  call void @exit(i32 %14) #10
  unreachable

15:                                               ; preds = %1
  %16 = load %struct.fiobj_float_s*, %struct.fiobj_float_s** %3, align 8
  %17 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %17, i32 0, i32 0
  store i8 39, i8* %18, align 8
  %19 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %17, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %4, i32 0, i32 1
  %21 = load double, double* %2, align 8
  store double %21, double* %20, align 8
  %22 = bitcast %struct.fiobj_float_s* %16 to i8*
  %23 = bitcast %struct.fiobj_float_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.fiobj_float_s*, %struct.fiobj_float_s** %3, align 8
  %25 = ptrtoint %struct.fiobj_float_s* %24 to i64
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_float_set(i64, double) #0 {
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  store i64 %0, i64* %3, align 8
  store double %1, double* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @fiobj_type_is(i64 %5, i8 zeroext 39)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.fiobj_float_set, i64 0, i64 0)) #10
  unreachable

10:                                               ; preds = %8
  %11 = load double, double* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.fiobj_float_s*
  %16 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %15, i32 0, i32 1
  store double %11, double* %16, align 8
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

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_float_tmp(double) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.fiobj_float_s, align 8
  store double %0, double* %2, align 8
  %4 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %4, i32 0, i32 0
  store i8 39, i8* %5, align 8
  %6 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %4, i32 0, i32 1
  store i32 268435455, i32* %6, align 4
  %7 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %3, i32 0, i32 1
  %8 = load double, double* %2, align 8
  store double %8, double* %7, align 8
  %9 = bitcast %struct.fiobj_float_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.fiobj_float_s, %struct.fiobj_float_s* @fiobj_float_tmp.ret, i32 0, i32 0, i32 0), i8* align 8 %9, i64 16, i1 false)
  ret i64 ptrtoint (%struct.fiobj_float_s* @fiobj_float_tmp.ret to i64)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fio_ltocstr(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @fio_ltoa(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i64 %6, i8 zeroext 10)
  store i64 %7, i64* %5, align 8
  %8 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i8** %8, align 8
  ret void
}

declare dso_local i64 @fio_ltoa(i8*, i64, i8 zeroext) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fio_ftocstr(%struct.fio_str_info_s* noalias sret, double) #0 {
  %3 = alloca double, align 8
  store double %1, double* %3, align 8
  %4 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %6 = load double, double* %3, align 8
  %7 = call i64 @fio_ftoa(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), double %6, i8 zeroext 10)
  store i64 %7, i64* %5, align 8
  %8 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i8** %8, align 8
  ret void
}

declare dso_local i64 @fio_ftoa(i8*, double, i8 zeroext) #4

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nounwind readnone speculatable
declare x86_fp80 @llvm.floor.f80(x86_fp80) #7

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { readnone }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
