; ModuleID = './examples/secdesk/c/fiobj_str.mod.c'
source_filename = "./examples/secdesk/c/fiobj_str.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.fiobj_str_s = type { %struct.fiobj_object_header_s, i64, %struct.fio_str_s }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.fio_str_s = type { i8, i8, [14 x i8], i64, i64, void (i8*)*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@FIOBJECT_VTABLE_STRING = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobj_str_dealloc, i64 (i64)* @fiobject___noop_count, i64 (i64)* @fio_str2bool, i64 (i64, i64)* @fiobj_str_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* null, void (%struct.fio_str_info_s*, i64)* @fio_str2str, i64 (i64)* @fio_str2i, double (i64)* @fio_str2f }, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"ERROR: fiobj string couldn't allocate memory\00", align 1
@fiobj_str_tmp.tmp = internal thread_local global %struct.fiobj_str_s { %struct.fiobj_object_header_s { i8 40, i32 268435455 }, i64 0, %struct.fio_str_s { i8 1, i8 0, [14 x i8] zeroinitializer, i64 0, i64 0, void (i8*)* null, i8* null } }, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"FIOBJ_TYPE_IS(str, FIOBJ_T_STRING)\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"./examples/secdesk/c/fiobj_str.mod.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_capa_assert = private unnamed_addr constant [44 x i8] c"size_t fiobj_str_capa_assert(FIOBJ, size_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_capa = private unnamed_addr constant [29 x i8] c"size_t fiobj_str_capa(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_resize = private unnamed_addr constant [37 x i8] c"void fiobj_str_resize(FIOBJ, size_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_compact = private unnamed_addr constant [30 x i8] c"void fiobj_str_compact(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_clear = private unnamed_addr constant [28 x i8] c"void fiobj_str_clear(FIOBJ)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"FIOBJ_TYPE_IS(dest, FIOBJ_T_STRING)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_write = private unnamed_addr constant [52 x i8] c"size_t fiobj_str_write(FIOBJ, const char *, size_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_write_i = private unnamed_addr constant [41 x i8] c"size_t fiobj_str_write_i(FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_printf = private unnamed_addr constant [50 x i8] c"size_t fiobj_str_printf(FIOBJ, const char *, ...)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_vprintf = private unnamed_addr constant [70 x i8] c"size_t fiobj_str_vprintf(FIOBJ, const char *, struct __va_list_tag *)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_concat = private unnamed_addr constant [38 x i8] c"size_t fiobj_str_concat(FIOBJ, FIOBJ)\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"FIOBJ_TYPE_IS(o, FIOBJ_T_STRING)\00", align 1
@__PRETTY_FUNCTION__.fiobj_str_hash = private unnamed_addr constant [31 x i8] c"uint64_t fiobj_str_hash(FIOBJ)\00", align 1
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/fio.h:4024\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/fio.h:4027\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/fio.h:4042\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/fio.h:4078\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/fio.h:4497\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.15 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.17 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0) }, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.19 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0) }, align 8
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8

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
define internal void @fiobj_str_dealloc(i64, void (i64, i8*)*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, -8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.fiobj_str_s*
  %11 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %10, i32 0, i32 2
  %12 = call i32 @fio_str_free(%struct.fio_str_s* %11)
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, -8
  %15 = inttoptr i64 %14 to i8*
  call void @fio_free(i8* %15)
  %16 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8
  %17 = load i8*, i8** %6, align 8
  ret void
}

declare dso_local i64 @fiobject___noop_count(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str2bool(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.fiobj_str_s*
  %7 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %6, i32 0, i32 2
  %8 = call i64 @fio_str_len(%struct.fio_str_s* %7)
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_str_is_eq(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.fiobj_str_s*
  %9 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %8, i32 0, i32 2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, -8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.fiobj_str_s*
  %14 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %13, i32 0, i32 2
  %15 = call i32 @fio_str_iseq(%struct.fio_str_s* %9, %struct.fio_str_s* %14)
  %16 = sext i32 %15 to i64
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str2str(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  call void @fiobj_str_get_cstr(%struct.fio_str_info_s* sret %0, i64 %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str2i(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, -8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.fiobj_str_s*
  %8 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %7, i32 0, i32 2
  %9 = call i8* @fio_str_data(%struct.fio_str_s* %8)
  store i8* %9, i8** %3, align 8
  %10 = call i64 @fio_atol(i8** %3)
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fio_str2f(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, -8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.fiobj_str_s*
  %8 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %7, i32 0, i32 2
  %9 = call i8* @fio_str_data(%struct.fio_str_s* %8)
  store i8* %9, i8** %3, align 8
  %10 = call double @fio_atof(i8** %3)
  ret double %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_buf(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_str_s*, align 8
  %4 = alloca %struct.fiobj_str_s, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %2, align 8
  br label %13

11:                                               ; preds = %1
  %12 = call i64 @sysconf(i32 30) #1
  store i64 %12, i64* %2, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = call noalias i8* @fio_malloc(i64 64)
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 15
  %17 = icmp eq i64 %16, 0
  call void @llvm.assume(i1 %17)
  %18 = bitcast i8* %14 to %struct.fiobj_str_s*
  store %struct.fiobj_str_s* %18, %struct.fiobj_str_s** %3, align 8
  %19 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %3, align 8
  %20 = icmp ne %struct.fiobj_str_s* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32* @__errno_location() #8
  %23 = load i32, i32* %22, align 4
  call void @exit(i32 %23) #9
  unreachable

24:                                               ; preds = %13
  %25 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %3, align 8
  %26 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %4, i32 0, i32 0
  %27 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %26, i32 0, i32 0
  store i8 40, i8* %27, align 8
  %28 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %26, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %4, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %4, i32 0, i32 2
  %31 = bitcast %struct.fio_str_s* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 48, i1 false)
  %32 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %30, i32 0, i32 0
  store i8 1, i8* %32, align 8
  %33 = bitcast %struct.fiobj_str_s* %25 to i8*
  %34 = bitcast %struct.fiobj_str_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 64, i1 false)
  %35 = load i64, i64* %2, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %3, align 8
  %39 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %38, i32 0, i32 2
  %40 = load i64, i64* %2, align 8
  call void @fio_str_capa_assert(%struct.fio_str_info_s* sret %5, %struct.fio_str_s* %39, i64 %40)
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %3, align 8
  %43 = ptrtoint %struct.fiobj_str_s* %42 to i64
  %44 = or i64 %43, 2
  ret i64 %44
}

; Function Attrs: nounwind
declare dso_local i64 @sysconf(i32) #2

declare dso_local noalias i8* @fio_malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

declare dso_local void @perror(i8*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_capa_assert(%struct.fio_str_info_s* noalias sret, %struct.fio_str_s*, i64) #0 {
  %4 = alloca %struct.fio_str_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %4, align 8
  store i64 %2, i64* %5, align 8
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %10 = icmp ne %struct.fio_str_s* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %13 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %3
  %18 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %18)
  br label %232

19:                                               ; preds = %11
  %20 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %21 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %27 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %26, i32 0, i32 6
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %25, %19
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %31, sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64))
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), i64* %34, align 8
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %36 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %37 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 1
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %35, align 8
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %43 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %44 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %43, i32 0, i32 1
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %42, align 8
  br label %232

46:                                               ; preds = %30
  br label %167

47:                                               ; preds = %25
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %50 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  %55 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %56 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %54, align 8
  %58 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %59 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %60 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %58, align 8
  %62 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %63 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %64 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %62, align 8
  br label %232

66:                                               ; preds = %47
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  %69 = or i64 %68, 15
  store i64 %69, i64* %5, align 8
  %70 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %71 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %70, i32 0, i32 5
  %72 = load void (i8*)*, void (i8*)** %71, align 8
  %73 = icmp eq void (i8*)* %72, @fio_free
  br i1 %73, label %74, label %101

74:                                               ; preds = %66
  %75 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %76 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %75, i32 0, i32 6
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  %80 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %81 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  %84 = call i8* @fio_realloc2(i8* %77, i64 %79, i64 %83)
  %85 = ptrtoint i8* %84 to i64
  %86 = and i64 %85, 15
  %87 = icmp eq i64 %86, 0
  call void @llvm.assume(i1 %87)
  store i8* %84, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %93 = icmp sle i32 1, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95
  %97 = call i32 @kill(i32 0, i32 2) #1
  %98 = call i32* @__errno_location() #8
  %99 = load i32, i32* %98, align 4
  call void @exit(i32 %99) #9
  unreachable

100:                                              ; preds = %74
  br label %143

101:                                              ; preds = %66
  %102 = load i64, i64* %5, align 8
  %103 = add i64 %102, 1
  %104 = call noalias i8* @fio_malloc(i64 %103)
  %105 = ptrtoint i8* %104 to i64
  %106 = and i64 %105, 15
  %107 = icmp eq i64 %106, 0
  call void @llvm.assume(i1 %107)
  store i8* %104, i8** %6, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %113 = icmp sle i32 1, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0))
  br label %115

115:                                              ; preds = %114, %111
  br label %116

116:                                              ; preds = %115
  %117 = call i32 @kill(i32 0, i32 2) #1
  %118 = call i32* @__errno_location() #8
  %119 = load i32, i32* %118, align 4
  call void @exit(i32 %119) #9
  unreachable

120:                                              ; preds = %101
  %121 = load i8*, i8** %6, align 8
  %122 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %123 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %126 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %121, i8* align 1 %124, i64 %128, i1 false)
  %129 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %130 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %129, i32 0, i32 5
  %131 = load void (i8*)*, void (i8*)** %130, align 8
  %132 = icmp ne void (i8*)* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %120
  %134 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %135 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %134, i32 0, i32 5
  %136 = load void (i8*)*, void (i8*)** %135, align 8
  %137 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %138 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %137, i32 0, i32 6
  %139 = load i8*, i8** %138, align 8
  call void %136(i8* %139)
  br label %140

140:                                              ; preds = %133, %120
  %141 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %142 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %141, i32 0, i32 5
  store void (i8*)* @fio_free, void (i8*)** %142, align 8
  br label %143

143:                                              ; preds = %140, %100
  %144 = load i64, i64* %5, align 8
  %145 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %146 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %149 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %151 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %150, i32 0, i32 6
  %152 = load i8*, i8** %151, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8 0, i8* %154, align 1
  %155 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  %156 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %157 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %155, align 8
  %159 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %160 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %161 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %159, align 8
  %163 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %164 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %165 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %164, i32 0, i32 6
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %163, align 8
  br label %232

167:                                              ; preds = %46
  %168 = load i64, i64* %5, align 8
  %169 = add i64 %168, 1
  %170 = or i64 %169, 15
  store i64 %170, i64* %5, align 8
  %171 = load i64, i64* %5, align 8
  %172 = add i64 %171, 1
  %173 = call noalias i8* @fio_malloc(i64 %172)
  %174 = ptrtoint i8* %173 to i64
  %175 = and i64 %174, 15
  %176 = icmp eq i64 %175, 0
  call void @llvm.assume(i1 %176)
  store i8* %173, i8** %6, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %189, label %179

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %182 = icmp sle i32 1, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0))
  br label %184

184:                                              ; preds = %183, %180
  br label %185

185:                                              ; preds = %184
  %186 = call i32 @kill(i32 0, i32 2) #1
  %187 = call i32* @__errno_location() #8
  %188 = load i32, i32* %187, align 4
  call void @exit(i32 %188) #9
  unreachable

189:                                              ; preds = %167
  %190 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %191 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %190, i32 0, i32 0
  %192 = load i8, i8* %191, align 8
  %193 = zext i8 %192 to i32
  %194 = ashr i32 %193, 1
  %195 = and i32 %194, 255
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %7, align 8
  %197 = load i64, i64* %7, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %189
  %200 = load i8*, i8** %6, align 8
  %201 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %202 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %201, i32 0, i32 1
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i64, i64* %7, align 8
  %205 = add i64 %204, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %200, i8* align 1 %203, i64 %205, i1 false)
  br label %209

206:                                              ; preds = %189
  %207 = load i8*, i8** %6, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  store i8 0, i8* %208, align 1
  br label %209

209:                                              ; preds = %206, %199
  %210 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %211 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 0
  store i8 0, i8* %211, align 8
  %212 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 1
  store i8 0, i8* %212, align 1
  %213 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 2
  %214 = bitcast [14 x i8]* %213 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %214, i8 0, i64 14, i1 false)
  %215 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 3
  %216 = load i64, i64* %5, align 8
  store i64 %216, i64* %215, align 8
  %217 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 4
  %218 = load i64, i64* %7, align 8
  store i64 %218, i64* %217, align 8
  %219 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 5
  store void (i8*)* @fio_free, void (i8*)** %219, align 8
  %220 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 6
  %221 = load i8*, i8** %6, align 8
  store i8* %221, i8** %220, align 8
  %222 = bitcast %struct.fio_str_s* %210 to i8*
  %223 = bitcast %struct.fio_str_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 8 %223, i64 48, i1 false)
  %224 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  %225 = load i64, i64* %5, align 8
  store i64 %225, i64* %224, align 8
  %226 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %227 = load i64, i64* %7, align 8
  store i64 %227, i64* %226, align 8
  %228 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %229 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %230 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %229, i32 0, i32 6
  %231 = load i8*, i8** %230, align 8
  store i8* %231, i8** %228, align 8
  br label %232

232:                                              ; preds = %209, %143, %53, %33, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_new(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fiobj_str_s*, align 8
  %6 = alloca %struct.fiobj_str_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call noalias i8* @fio_malloc(i64 64)
  %9 = ptrtoint i8* %8 to i64
  %10 = and i64 %9, 15
  %11 = icmp eq i64 %10, 0
  call void @llvm.assume(i1 %11)
  %12 = bitcast i8* %8 to %struct.fiobj_str_s*
  store %struct.fiobj_str_s* %12, %struct.fiobj_str_s** %5, align 8
  %13 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %5, align 8
  %14 = icmp ne %struct.fiobj_str_s* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32* @__errno_location() #8
  %17 = load i32, i32* %16, align 4
  call void @exit(i32 %17) #9
  unreachable

18:                                               ; preds = %2
  %19 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %5, align 8
  %20 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 0
  store i8 40, i8* %21, align 8
  %22 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %6, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %6, i32 0, i32 2
  %25 = bitcast %struct.fio_str_s* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 48, i1 false)
  %26 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %24, i32 0, i32 0
  store i8 1, i8* %26, align 8
  %27 = bitcast %struct.fiobj_str_s* %19 to i8*
  %28 = bitcast %struct.fiobj_str_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 64, i1 false)
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %5, align 8
  %36 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %35, i32 0, i32 2
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %4, align 8
  call void @fio_str_write(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %36, i8* %37, i64 %38)
  br label %39

39:                                               ; preds = %34, %31, %18
  %40 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %5, align 8
  %41 = ptrtoint %struct.fiobj_str_s* %40 to i64
  %42 = or i64 %41, 2
  ret i64 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_write(%struct.fio_str_info_s* noalias sret, %struct.fio_str_s*, i8*, i64) #0 {
  %5 = alloca %struct.fio_str_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 %3, i64* %7, align 8
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  %10 = icmp ne %struct.fio_str_s* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  %19 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %14, %11, %4
  %24 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %24)
  br label %42

25:                                               ; preds = %17
  %26 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  %29 = call i64 @fio_str_len(%struct.fio_str_s* %28)
  %30 = add i64 %27, %29
  call void @fio_str_resize(%struct.fio_str_info_s* sret %8, %struct.fio_str_s* %26, i64 %30)
  %31 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %34, %35
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 %39, i1 false)
  %40 = bitcast %struct.fio_str_info_s* %0 to i8*
  %41 = bitcast %struct.fio_str_info_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  br label %42

42:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_move(i8*, i64, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fiobj_str_s*, align 8
  %8 = alloca %struct.fiobj_str_s, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call noalias i8* @fio_malloc(i64 64)
  %10 = ptrtoint i8* %9 to i64
  %11 = and i64 %10, 15
  %12 = icmp eq i64 %11, 0
  call void @llvm.assume(i1 %12)
  %13 = bitcast i8* %9 to %struct.fiobj_str_s*
  store %struct.fiobj_str_s* %13, %struct.fiobj_str_s** %7, align 8
  %14 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %7, align 8
  %15 = icmp ne %struct.fiobj_str_s* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32* @__errno_location() #8
  %18 = load i32, i32* %17, align 4
  call void @exit(i32 %18) #9
  unreachable

19:                                               ; preds = %3
  %20 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %7, align 8
  %21 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %21, i32 0, i32 0
  store i8 40, i8* %22, align 8
  %23 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %21, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %8, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %8, i32 0, i32 2
  %26 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 0
  store i8 0, i8* %26, align 8
  %27 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 2
  %29 = bitcast [14 x i8]* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %29, i8 0, i64 14, i1 false)
  %30 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 3
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 4
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 5
  store void (i8*)* @fio_free, void (i8*)** %34, align 8
  %35 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 6
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %35, align 8
  %37 = bitcast %struct.fiobj_str_s* %20 to i8*
  %38 = bitcast %struct.fiobj_str_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 64, i1 false)
  %39 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %7, align 8
  %40 = ptrtoint %struct.fiobj_str_s* %39 to i64
  %41 = or i64 %40, 2
  ret i64 %41
}

declare dso_local void @fio_free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_tmp() #0 {
  %1 = alloca %struct.fio_str_info_s, align 8
  store i8 0, i8* getelementptr inbounds (%struct.fiobj_str_s, %struct.fiobj_str_s* @fiobj_str_tmp.tmp, i32 0, i32 2, i32 1), align 1
  call void @fio_str_resize(%struct.fio_str_info_s* sret %1, %struct.fio_str_s* getelementptr inbounds (%struct.fiobj_str_s, %struct.fiobj_str_s* @fiobj_str_tmp.tmp, i32 0, i32 2), i64 0)
  ret i64 or (i64 ptrtoint (%struct.fiobj_str_s* @fiobj_str_tmp.tmp to i64), i64 2)
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_resize(%struct.fio_str_info_s* noalias sret, %struct.fio_str_s*, i64) #0 {
  %4 = alloca %struct.fio_str_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %4, align 8
  store i64 %2, i64* %5, align 8
  %8 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %9 = icmp ne %struct.fio_str_s* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %12 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %3
  %17 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %17)
  br label %99

18:                                               ; preds = %10
  %19 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %20 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %26 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 6
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %24, %18
  %30 = load i64, i64* %5, align 8
  %31 = icmp ult i64 %30, sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64))
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = shl i64 %33, 1
  %35 = or i64 %34, 1
  %36 = and i64 %35, 255
  %37 = trunc i64 %36 to i8
  %38 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %39 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 8
  %40 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %41 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %40, i32 0, i32 1
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), i64* %45, align 8
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %49 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %50 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %49, i32 0, i32 1
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %48, align 8
  br label %99

52:                                               ; preds = %29
  %53 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %54 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %53, i32 0, i32 0
  store i8 trunc (i64 and (i64 or (i64 shl (i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), i64 1), i64 1), i64 255) to i8), i8* %54, align 8
  %55 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %56 = load i64, i64* %5, align 8
  call void @fio_str_capa_assert(%struct.fio_str_info_s* sret %6, %struct.fio_str_s* %55, i64 %56)
  br label %80

57:                                               ; preds = %24
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %60 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp uge i64 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %65 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %64, i32 0, i32 5
  %66 = load void (i8*)*, void (i8*)** %65, align 8
  %67 = ptrtoint void (i8*)* %66 to i64
  %68 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %69 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %72 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @fio_ct_if2(i64 %67, i64 %70, i64 %73)
  %75 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %76 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %78 = load i64, i64* %5, align 8
  call void @fio_str_capa_assert(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %77, i64 %78)
  br label %79

79:                                               ; preds = %63, %57
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %83 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  %84 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %85 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 0, i8* %88, align 1
  %89 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  %90 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %91 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %89, align 8
  %93 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %94 = load i64, i64* %5, align 8
  store i64 %94, i64* %93, align 8
  %95 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %96 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %97 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %95, align 8
  br label %99

99:                                               ; preds = %80, %32, %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_str_freeze(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_type_is(i64 %3, i8 zeroext 40)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, -8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.fiobj_str_s*
  %11 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %10, i32 0, i32 2
  call void @fio_str_freeze(%struct.fio_str_s* %11)
  br label %12

12:                                               ; preds = %6, %1
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
define internal void @fio_str_freeze(%struct.fio_str_s*) #0 {
  %2 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  %3 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %4 = icmp ne %struct.fio_str_s* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %8 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %7, i32 0, i32 1
  store i8 1, i8* %8, align 1
  br label %9

9:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_capa_assert(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 40)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.fiobj_str_capa_assert, i64 0, i64 0)) #9
  unreachable

12:                                               ; preds = %10
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, -8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.fiobj_str_s*
  %17 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %31

22:                                               ; preds = %12
  %23 = load i64, i64* %4, align 8
  %24 = and i64 %23, -8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.fiobj_str_s*
  %27 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %26, i32 0, i32 2
  %28 = load i64, i64* %5, align 8
  call void @fio_str_capa_assert(%struct.fio_str_info_s* sret %6, %struct.fio_str_s* %27, i64 %28)
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %22, %21
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_capa(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_type_is(i64 %3, i8 zeroext 40)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.fiobj_str_capa, i64 0, i64 0)) #9
  unreachable

8:                                                ; preds = %6
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, -8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.fiobj_str_s*
  %13 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %12, i32 0, i32 2
  %14 = call i64 @fio_str_capa(%struct.fio_str_s* %13)
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str_capa(%struct.fio_str_s*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %3, align 8
  %4 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %5 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %4, i32 0, i32 1
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %11 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %17 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %16, i32 0, i32 6
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %9
  br label %25

21:                                               ; preds = %15
  %22 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %23 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  br label %25

25:                                               ; preds = %21, %20
  %26 = phi i64 [ sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), %20 ], [ %24, %21 ]
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %25, %8
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_str_resize(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 40)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_str_resize, i64 0, i64 0)) #9
  unreachable

11:                                               ; preds = %9
  %12 = load i64, i64* %3, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.fiobj_str_s*
  %16 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %15, i32 0, i32 2
  %17 = load i64, i64* %4, align 8
  call void @fio_str_resize(%struct.fio_str_info_s* sret %5, %struct.fio_str_s* %16, i64 %17)
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, -8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.fiobj_str_s*
  %22 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_str_compact(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_type_is(i64 %3, i8 zeroext 40)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 229, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.fiobj_str_compact, i64 0, i64 0)) #9
  unreachable

8:                                                ; preds = %6
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, -8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.fiobj_str_s*
  %13 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %12, i32 0, i32 2
  call void @fio_str_compact(%struct.fio_str_s* %13)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_compact(%struct.fio_str_s*) #0 {
  %2 = alloca %struct.fio_str_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_s, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  %6 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %7 = icmp ne %struct.fio_str_s* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %16 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %15, i32 0, i32 6
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %8, %1
  br label %91

20:                                               ; preds = %14
  %21 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %22 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %23, sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64))
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %59

26:                                               ; preds = %20
  %27 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %28 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %27, i32 0, i32 6
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %31 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  %34 = call i8* @fio_realloc(i8* %29, i64 %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 %35, 15
  %37 = icmp eq i64 %36, 0
  call void @llvm.assume(i1 %37)
  store i8* %34, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %43 = icmp sle i32 1, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0))
  br label %45

45:                                               ; preds = %44, %41
  br label %46

46:                                               ; preds = %45
  %47 = call i32 @kill(i32 0, i32 2) #1
  %48 = call i32* @__errno_location() #8
  %49 = load i32, i32* %48, align 4
  call void @exit(i32 %49) #9
  unreachable

50:                                               ; preds = %26
  %51 = load i8*, i8** %3, align 8
  %52 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %53 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %55 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %58 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  br label %91

59:                                               ; preds = %25
  %60 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %61 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %3, align 8
  %63 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %64 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %4, align 8
  %66 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %67 = bitcast %struct.fio_str_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %67, i8 0, i64 48, i1 false)
  %68 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %5, i32 0, i32 0
  %69 = load i64, i64* %4, align 8
  %70 = shl i64 %69, 1
  %71 = or i64 %70, 1
  %72 = and i64 %71, 255
  %73 = trunc i64 %72 to i8
  store i8 %73, i8* %68, align 8
  %74 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %5, i32 0, i32 1
  %75 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %76 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %74, align 1
  %78 = bitcast %struct.fio_str_s* %66 to i8*
  %79 = bitcast %struct.fio_str_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 48, i1 false)
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %59
  %83 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %84 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %83, i32 0, i32 1
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8*, i8** %3, align 8
  %87 = load i64, i64* %4, align 8
  %88 = add i64 %87, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %85, i8* align 1 %86, i64 %88, i1 false)
  br label %89

89:                                               ; preds = %82, %59
  %90 = load i8*, i8** %3, align 8
  call void @fio_free(i8* %90)
  br label %91

91:                                               ; preds = %89, %50, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_str_clear(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @fiobj_type_is(i64 %4, i8 zeroext 40)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 236, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.fiobj_str_clear, i64 0, i64 0)) #9
  unreachable

9:                                                ; preds = %7
  %10 = load i64, i64* %2, align 8
  %11 = and i64 %10, -8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.fiobj_str_s*
  %14 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %13, i32 0, i32 2
  call void @fio_str_resize(%struct.fio_str_info_s* sret %3, %struct.fio_str_s* %14, i64 0)
  %15 = load i64, i64* %2, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.fiobj_str_s*
  %19 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_write(i64, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 40)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 246, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.fiobj_str_write, i64 0, i64 0)) #9
  unreachable

14:                                               ; preds = %12
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.fiobj_str_s*
  %19 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %39

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, -8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.fiobj_str_s*
  %29 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.fiobj_str_s*
  %34 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %33, i32 0, i32 2
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  call void @fio_str_write(%struct.fio_str_info_s* sret %8, %struct.fio_str_s* %34, i8* %35, i64 %36)
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %24, %23
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_write_i(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 40)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 259, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.fiobj_str_write_i, i64 0, i64 0)) #9
  unreachable

12:                                               ; preds = %10
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, -8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.fiobj_str_s*
  %17 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %36

22:                                               ; preds = %12
  %23 = load i64, i64* %4, align 8
  %24 = and i64 %23, -8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.fiobj_str_s*
  %27 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, -8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.fiobj_str_s*
  %32 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %31, i32 0, i32 2
  %33 = load i64, i64* %5, align 8
  call void @fio_str_write_i(%struct.fio_str_info_s* sret %6, %struct.fio_str_s* %32, i64 %33)
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %22, %21
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_write_i(%struct.fio_str_info_s* noalias sret, %struct.fio_str_s*, i64) #0 {
  %4 = alloca %struct.fio_str_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca [22 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.fio_str_info_s, align 8
  %12 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %4, align 8
  store i64 %2, i64* %5, align 8
  %13 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %14 = icmp ne %struct.fio_str_s* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %17 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %3
  %22 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %22)
  br label %103

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %88

27:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %9, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %5, align 8
  store i8 1, i8* %9, align 1
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %40, %36
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = sdiv i64 %41, 10
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = mul i64 %44, 10
  %46 = sub i64 %43, %45
  %47 = add i64 48, %46
  %48 = trunc i64 %47 to i8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  %51 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 %49
  store i8 %48, i8* %51, align 1
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %5, align 8
  br label %37

53:                                               ; preds = %37
  %54 = load i8, i8* %9, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  %59 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 %57
  store i8 45, i8* %59, align 1
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %62 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %63 = call i64 @fio_str_len(%struct.fio_str_s* %62)
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %63, %64
  call void @fio_str_resize(%struct.fio_str_info_s* sret %11, %struct.fio_str_s* %61, i64 %65)
  %66 = bitcast %struct.fio_str_info_s* %6 to i8*
  %67 = bitcast %struct.fio_str_info_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 24, i1 false)
  br label %68

68:                                               ; preds = %71, %60
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, -1
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  %83 = sub i64 %80, %82
  %84 = getelementptr inbounds i8, i8* %78, i64 %83
  store i8 %76, i8* %84, align 1
  br label %68

85:                                               ; preds = %68
  %86 = bitcast %struct.fio_str_info_s* %0 to i8*
  %87 = bitcast %struct.fio_str_info_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 24, i1 false)
  br label %103

88:                                               ; preds = %26
  %89 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %90 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %91 = call i64 @fio_str_len(%struct.fio_str_s* %90)
  %92 = add i64 %91, 1
  call void @fio_str_resize(%struct.fio_str_info_s* sret %12, %struct.fio_str_s* %89, i64 %92)
  %93 = bitcast %struct.fio_str_info_s* %6 to i8*
  %94 = bitcast %struct.fio_str_info_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  %95 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  store i8 48, i8* %100, align 1
  %101 = bitcast %struct.fio_str_info_s* %0 to i8*
  %102 = bitcast %struct.fio_str_info_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 24, i1 false)
  br label %103

103:                                              ; preds = %88, %85, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_printf(i64, i8*, ...) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 40)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 271, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.fiobj_str_printf, i64 0, i64 0)) #9
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.fiobj_str_s*
  %18 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %42

23:                                               ; preds = %13
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, -8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.fiobj_str_s*
  %28 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %30 = bitcast %struct.__va_list_tag* %29 to i8*
  call void @llvm.va_start(i8* %30)
  %31 = load i64, i64* %4, align 8
  %32 = and i64 %31, -8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.fiobj_str_s*
  %35 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %34, i32 0, i32 2
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  call void @fio_str_vprintf(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %35, i8* %36, %struct.__va_list_tag* %37)
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %39 = bitcast %struct.__va_list_tag* %38 to i8*
  call void @llvm.va_end(i8* %39)
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %23, %22
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_vprintf(%struct.fio_str_info_s* noalias sret, %struct.fio_str_s*, i8*, %struct.__va_list_tag*) #0 {
  %5 = alloca %struct.fio_str_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %7, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %12 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8
  %13 = bitcast %struct.__va_list_tag* %11 to i8*
  %14 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_copy(i8* %13, i8* %14)
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %17 = call i32 @vsnprintf(i8* null, i64 0, i8* %15, %struct.__va_list_tag* %16) #1
  store i32 %17, i32* %9, align 4
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_end(i8* %19)
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %23)
  br label %47

24:                                               ; preds = %4
  %25 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  %29 = call i64 @fio_str_len(%struct.fio_str_s* %28)
  %30 = add i64 %27, %29
  call void @fio_str_resize(%struct.fio_str_info_s* sret %10, %struct.fio_str_s* %25, i64 %30)
  %31 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %34, %36
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8
  %44 = call i32 @vsnprintf(i8* %38, i64 %41, i8* %42, %struct.__va_list_tag* %43) #1
  %45 = bitcast %struct.fio_str_info_s* %0 to i8*
  %46 = bitcast %struct.fio_str_info_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 24, i1 false)
  br label %47

47:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_vprintf(i64, i8*, %struct.__va_list_tag*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 40)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.fiobj_str_vprintf, i64 0, i64 0)) #9
  unreachable

14:                                               ; preds = %12
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.fiobj_str_s*
  %19 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %39

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, -8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.fiobj_str_s*
  %29 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.fiobj_str_s*
  %34 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %33, i32 0, i32 2
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8
  call void @fio_str_vprintf(%struct.fio_str_info_s* sret %8, %struct.fio_str_s* %34, i8* %35, %struct.__va_list_tag* %36)
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %24, %23
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_readfile(i64, i8*, i64, i64) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = and i64 %10, -8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.fiobj_str_s*
  %14 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %13, i32 0, i32 2
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  call void @fio_str_readfile(%struct.fio_str_info_s* sret %9, %struct.fio_str_s* %14, i8* %15, i64 %16, i64 %17)
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  ret i64 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_readfile(%struct.fio_str_info_s* noalias sret, %struct.fio_str_s*, i8*, i64, i64) #0 {
  %6 = alloca %struct.fio_str_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fio_str_info_s, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.fio_str_info_s, align 8
  %20 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 %4, i64* %9, align 8
  %21 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8
  %26 = icmp ne %struct.fio_str_s* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %5
  br label %198

28:                                               ; preds = %24
  store i32 -1, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 126
  br i1 %33, label %34, label %117

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %117

46:                                               ; preds = %40, %34
  %47 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #1
  store i8* %47, i8** %14, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %116

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strlen(i8* %51) #10
  store i64 %52, i64* %15, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i64 @strlen(i8* %53) #10
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %15, align 8
  %57 = add i64 %55, %56
  %58 = icmp uge i64 %57, 65536
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %198

60:                                               ; preds = %50
  %61 = load i8*, i8** %14, align 8
  %62 = load i64, i64* %16, align 8
  %63 = sub i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 47
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load i8*, i8** %14, align 8
  %70 = load i64, i64* %16, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 92
  br i1 %75, label %76, label %79

76:                                               ; preds = %68, %60
  %77 = load i64, i64* %16, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %16, align 8
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %15, align 8
  %82 = add i64 %80, %81
  %83 = sub i64 %82, 1
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, 1
  %86 = call noalias i8* @fio_malloc(i64 %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = and i64 %87, 15
  %89 = icmp eq i64 %88, 0
  call void @llvm.assume(i1 %89)
  store i8* %86, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %95 = icmp sle i32 1, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0))
  br label %97

97:                                               ; preds = %96, %93
  br label %98

98:                                               ; preds = %97
  %99 = call i32 @kill(i32 0, i32 2) #1
  %100 = call i32* @__errno_location() #8
  %101 = load i32, i32* %100, align 4
  call void @exit(i32 %101) #9
  unreachable

102:                                              ; preds = %79
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i64, i64* %16, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %103, i8* align 1 %104, i64 %105, i1 false)
  %106 = load i8*, i8** %12, align 8
  %107 = load i64, i64* %16, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i64, i64* %15, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %108, i8* align 1 %110, i64 %111, i1 false)
  %112 = load i8*, i8** %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load i8*, i8** %12, align 8
  store i8* %115, i8** %7, align 8
  br label %116

116:                                              ; preds = %102, %46
  br label %117

117:                                              ; preds = %116, %40, %28
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @stat(i8* %118, %struct.stat* %10) #1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %196

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %124 = load i64, i64* %123, align 8
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %126, %122
  %132 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %17, %struct.fio_str_s* %132)
  %133 = bitcast %struct.fio_str_info_s* %0 to i8*
  %134 = bitcast %struct.fio_str_info_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 24, i1 false)
  br label %196

135:                                              ; preds = %126
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 (i8*, i32, ...) @open(i8* %136, i32 0)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 -1, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %196

141:                                              ; preds = %135
  %142 = load i64, i64* %8, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = add nsw i64 %146, %147
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i64 0, i64* %8, align 8
  br label %152

152:                                              ; preds = %151, %144
  br label %153

153:                                              ; preds = %152, %141
  %154 = load i64, i64* %9, align 8
  %155 = icmp sle i64 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %8, align 8
  %161 = add nsw i64 %159, %160
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %156, %153
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = sub nsw i64 %165, %166
  store i64 %167, i64* %9, align 8
  br label %168

168:                                              ; preds = %163, %156
  %169 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8
  %170 = call i64 @fio_str_len(%struct.fio_str_s* %169)
  store i64 %170, i64* %18, align 8
  %171 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8
  %172 = load i64, i64* %18, align 8
  %173 = load i64, i64* %9, align 8
  %174 = add i64 %172, %173
  call void @fio_str_resize(%struct.fio_str_info_s* sret %19, %struct.fio_str_s* %171, i64 %174)
  %175 = bitcast %struct.fio_str_info_s* %0 to i8*
  %176 = bitcast %struct.fio_str_info_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %175, i8* align 8 %176, i64 24, i1 false)
  %177 = load i32, i32* %11, align 4
  %178 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = load i64, i64* %18, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = load i64, i64* %9, align 8
  %183 = load i64, i64* %8, align 8
  %184 = call i64 @pread(i32 %177, i8* %181, i64 %182, i64 %183)
  %185 = load i64, i64* %9, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %168
  %188 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8
  %189 = load i64, i64* %18, align 8
  call void @fio_str_resize(%struct.fio_str_info_s* sret %20, %struct.fio_str_s* %188, i64 %189)
  %190 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  store i8* null, i8** %190, align 8
  %191 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  store i64 0, i64* %191, align 8
  %192 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %187, %168
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @close(i32 %194)
  br label %196

196:                                              ; preds = %193, %140, %131, %121
  %197 = load i8*, i8** %12, align 8
  call void @fio_free(i8* %197)
  br label %198

198:                                              ; preds = %196, %59, %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_concat(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 40)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 311, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.fiobj_str_concat, i64 0, i64 0)) #9
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.fiobj_str_s*
  %18 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %52

23:                                               ; preds = %13
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, -8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.fiobj_str_s*
  %28 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %6, i64 %29)
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load i64, i64* %4, align 8
  %35 = and i64 %34, -8
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.fiobj_str_s*
  %38 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %37, i32 0, i32 2
  %39 = call i64 @fio_str_len(%struct.fio_str_s* %38)
  store i64 %39, i64* %3, align 8
  br label %52

40:                                               ; preds = %23
  %41 = load i64, i64* %4, align 8
  %42 = and i64 %41, -8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.fiobj_str_s*
  %45 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  call void @fio_str_write(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %45, i8* %47, i64 %49)
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %40, %33, %22
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.15 to i8*), i64 24, i1 false)
  br label %37

25:                                               ; preds = %19
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.17 to i8*), i64 24, i1 false)
  br label %37

27:                                               ; preds = %19
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.19 to i8*), i64 24, i1 false)
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str_len(%struct.fio_str_s*) #0 {
  %2 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  %3 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = zext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %9, i32 0, i32 6
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %15 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = ashr i32 %17, 1
  %19 = sext i32 %18 to i64
  br label %24

20:                                               ; preds = %8
  %21 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %22 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i64 [ %19, %13 ], [ %23, %20 ]
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_hash(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @fiobj_type_is(i64 %5, i8 zeroext 40)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 325, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.fiobj_str_hash, i64 0, i64 0)) #9
  unreachable

10:                                               ; preds = %8
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.fiobj_str_s*
  %15 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, -8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.fiobj_str_s*
  %23 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %2, align 8
  br label %47

25:                                               ; preds = %10
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, -8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.fiobj_str_s*
  %30 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %29, i32 0, i32 2
  call void @fio_str_info(%struct.fio_str_info_s* sret %4, %struct.fio_str_s* %30)
  %31 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @fiobj_hash_string(i8* %32, i64 %34)
  %36 = load i64, i64* %3, align 8
  %37 = and i64 %36, -8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.fiobj_str_s*
  %40 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %39, i32 0, i32 1
  store i64 %35, i64* %40, align 8
  %41 = load i64, i64* %3, align 8
  %42 = and i64 %41, -8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.fiobj_str_s*
  %45 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %25, %18
  %48 = load i64, i64* %2, align 8
  ret i64 %48
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
  %12 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 8
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 6
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %16, %10
  %22 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  %23 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %24 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i64 0, i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1)
  store i64 %29, i64* %22, align 8
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %31 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %32 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %30, align 8
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %38 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %39 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %38, i32 0, i32 1
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %37, align 8
  br label %63

41:                                               ; preds = %16
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0
  %43 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %44 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %51 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi i64 [ 0, %48 ], [ %52, %49 ]
  store i64 %54, i64* %42, align 8
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %56 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %57 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %55, align 8
  %59 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %60 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8
  %61 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %59, align 8
  br label %63

63:                                               ; preds = %53, %21
  br label %64

64:                                               ; preds = %63, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_string(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @fio_siphash13(i8* %5, i64 %6, i64 ptrtoint (i64 (i64, i32 (i64, i8*)*, i8*)* @fiobj_each2 to i64), i64 ptrtoint (void (i64)* @fiobj_free_complex_object to i64))
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_str_free(%struct.fio_str_s*) #0 {
  %2 = alloca %struct.fio_str_s*, align 8
  %3 = alloca %struct.fio_str_s, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  %4 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %5 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %4, i32 0, i32 0
  %6 = load i8, i8* %5, align 8
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %9, i32 0, i32 5
  %11 = load void (i8*)*, void (i8*)** %10, align 8
  %12 = icmp ne void (i8*)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %15 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %14, i32 0, i32 5
  %16 = load void (i8*)*, void (i8*)** %15, align 8
  %17 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 6
  %19 = load i8*, i8** %18, align 8
  call void %16(i8* %19)
  br label %20

20:                                               ; preds = %13, %8, %1
  %21 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %22 = bitcast %struct.fio_str_s* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 48, i1 false)
  %23 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %3, i32 0, i32 0
  store i8 1, i8* %23, align 8
  %24 = bitcast %struct.fio_str_s* %21 to i8*
  %25 = bitcast %struct.fio_str_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 48, i1 false)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_str_iseq(%struct.fio_str_s*, %struct.fio_str_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_str_s*, align 8
  %5 = alloca %struct.fio_str_s*, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %4, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %5, align 8
  %8 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  %10 = icmp eq %struct.fio_str_s* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  %14 = icmp ne %struct.fio_str_s* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  %17 = icmp ne %struct.fio_str_s* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %40

19:                                               ; preds = %15
  %20 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %6, %struct.fio_str_s* %20)
  %21 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8
  call void @fio_str_info(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %21)
  %22 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @memcmp(i8* %29, i8* %31, i64 %33) #10
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %27, %19
  %38 = phi i1 [ false, %19 ], [ %36, %27 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %18, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_str_get_cstr(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, -8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.fiobj_str_s*
  %8 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %7, i32 0, i32 2
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_str_data(%struct.fio_str_s*) #0 {
  %2 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  %3 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = zext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %9, i32 0, i32 6
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %15 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %14, i32 0, i32 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  br label %21

17:                                               ; preds = %8
  %18 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8
  %19 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %18, i32 0, i32 6
  %20 = load i8*, i8** %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i8* [ %16, %13 ], [ %20, %17 ]
  ret i8* %22
}

declare dso_local i64 @fio_atol(i8**) #4

declare dso_local double @fio_atof(i8**) #4

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if2(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @fio_ct_true(i64 %7)
  %9 = trunc i64 %8 to i8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @fio_ct_if(i8 zeroext %9, i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if(i8 zeroext, i64, i64) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 1
  %11 = sub nsw i32 0, %10
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = xor i64 %13, %14
  %16 = and i64 %12, %15
  %17 = xor i64 %7, %16
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_true(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = sub i64 0, %4
  %6 = or i64 %3, %5
  %7 = lshr i64 %6, 63
  ret i64 %7
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

declare dso_local i8* @fio_realloc(i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #7

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @open(i8*, i32, ...) #4

declare dso_local i64 @pread(i32, i8*, i64, i64) #4

declare dso_local i32 @close(i32) #4

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

declare dso_local i64 @fio_siphash13(i8*, i64, i64, i64) #4

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #4

declare dso_local void @fiobj_free_complex_object(i64) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
