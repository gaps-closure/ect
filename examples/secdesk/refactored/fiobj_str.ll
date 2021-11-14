; ModuleID = 'fiobj_str.c'
source_filename = "fiobj_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@FIOBJECT_VTABLE_STRING = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobj_str_dealloc, i64 (i64)* @fiobject___noop_count, i64 (i64)* @fio_str2bool, i64 (i64, i64)* @fiobj_str_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* null, void (%struct.fio_str_info_s*, i64)* @fio_str2str, i64 (i64)* @fio_str2i, double (i64)* @fio_str2f }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [45 x i8] c"ERROR: fiobj string couldn't allocate memory\00", align 1
@fiobj_str_tmp.tmp = internal thread_local global %struct.fiobj_str_s { %struct.fiobj_object_header_s { i8 40, i32 268435455 }, i64 0, %struct.fio_str_s { i8 1, i8 0, [14 x i8] zeroinitializer, i64 0, i64 0, void (i8*)* null, i8* null } }, align 8, !dbg !295
@.str.4 = private unnamed_addr constant [35 x i8] c"FIOBJ_TYPE_IS(str, FIOBJ_T_STRING)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"fiobj_str.c\00", align 1
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
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !301
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !304
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !306
@.str.8 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4024\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4027\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4042\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4078\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4497\00", align 1
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
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !373 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !378, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !383, metadata !DIExpression()), !dbg !398
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !399
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !399
  call void @llvm.va_start(i8* %7), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %5, metadata !400, metadata !DIExpression()), !dbg !401
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !402
  %9 = load i8*, i8** %2, align 8, !dbg !403
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !404
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !405
  store i32 %11, i32* %5, align 4, !dbg !401
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !406
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !406
  call void @llvm.va_end(i8* %13), !dbg !406
  %14 = load i32, i32* %5, align 4, !dbg !407
  %15 = icmp sle i32 %14, 0, !dbg !409
  br i1 %15, label %19, label %16, !dbg !410

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !411
  %18 = icmp sge i32 %17, 2046, !dbg !412
  br i1 %18, label %19, label %29, !dbg !413

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !414
  %21 = icmp sge i32 %20, 2046, !dbg !417
  br i1 %21, label %22, label %25, !dbg !418

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !419
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !422
  store i32 2041, i32* %5, align 4, !dbg !423
  br label %28, !dbg !424

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !425
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !427
  br label %42, !dbg !428

28:                                               ; preds = %22
  br label %29, !dbg !429

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !430
  %31 = add nsw i32 %30, 1, !dbg !430
  store i32 %31, i32* %5, align 4, !dbg !430
  %32 = sext i32 %30 to i64, !dbg !431
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !431
  store i8 10, i8* %33, align 1, !dbg !432
  %34 = load i32, i32* %5, align 4, !dbg !433
  %35 = sext i32 %34 to i64, !dbg !434
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !434
  store i8 48, i8* %36, align 1, !dbg !435
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !436
  %38 = load i32, i32* %5, align 4, !dbg !437
  %39 = sext i32 %38 to i64, !dbg !437
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !438
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !439
  br label %42, !dbg !440

42:                                               ; preds = %29, %25
  ret void, !dbg !440
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
define internal void @fiobj_str_dealloc(i64 %0, void (i64, i8*)* %1, i8* %2) #0 !dbg !441 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !442, metadata !DIExpression()), !dbg !443
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i64, i8*)** %5, metadata !444, metadata !DIExpression()), !dbg !445
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !446, metadata !DIExpression()), !dbg !447
  %7 = load i64, i64* %4, align 8, !dbg !448
  %8 = and i64 %7, -8, !dbg !448
  %9 = inttoptr i64 %8 to i8*, !dbg !448
  %10 = bitcast i8* %9 to %struct.fiobj_str_s*, !dbg !448
  %11 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %10, i32 0, i32 2, !dbg !449
  %12 = call i32 @fio_str_free(%struct.fio_str_s* %11), !dbg !450
  %13 = load i64, i64* %4, align 8, !dbg !451
  %14 = and i64 %13, -8, !dbg !451
  %15 = inttoptr i64 %14 to i8*, !dbg !451
  call void @fio_free(i8* %15), !dbg !452
  %16 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8, !dbg !453
  %17 = load i8*, i8** %6, align 8, !dbg !454
  ret void, !dbg !455
}

declare dso_local i64 @fiobject___noop_count(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str2bool(i64 %0) #0 !dbg !456 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !457, metadata !DIExpression()), !dbg !458
  %3 = load i64, i64* %2, align 8, !dbg !459
  %4 = and i64 %3, -8, !dbg !459
  %5 = inttoptr i64 %4 to i8*, !dbg !459
  %6 = bitcast i8* %5 to %struct.fiobj_str_s*, !dbg !459
  %7 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %6, i32 0, i32 2, !dbg !460
  %8 = call i64 @fio_str_len(%struct.fio_str_s* %7), !dbg !461
  %9 = icmp ne i64 %8, 0, !dbg !462
  %10 = zext i1 %9 to i32, !dbg !462
  %11 = sext i32 %10 to i64, !dbg !461
  ret i64 %11, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_str_is_eq(i64 %0, i64 %1) #0 !dbg !464 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !467, metadata !DIExpression()), !dbg !468
  %5 = load i64, i64* %3, align 8, !dbg !469
  %6 = and i64 %5, -8, !dbg !469
  %7 = inttoptr i64 %6 to i8*, !dbg !469
  %8 = bitcast i8* %7 to %struct.fiobj_str_s*, !dbg !469
  %9 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %8, i32 0, i32 2, !dbg !470
  %10 = load i64, i64* %4, align 8, !dbg !471
  %11 = and i64 %10, -8, !dbg !471
  %12 = inttoptr i64 %11 to i8*, !dbg !471
  %13 = bitcast i8* %12 to %struct.fiobj_str_s*, !dbg !471
  %14 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %13, i32 0, i32 2, !dbg !472
  %15 = call i32 @fio_str_iseq(%struct.fio_str_s* %9, %struct.fio_str_s* %14), !dbg !473
  %16 = sext i32 %15 to i64, !dbg !473
  ret i64 %16, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str2str(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !475 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !476, metadata !DIExpression()), !dbg !477
  %4 = load i64, i64* %3, align 8, !dbg !478
  call void @fiobj_str_get_cstr(%struct.fio_str_info_s* sret %0, i64 %4), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str2i(i64 %0) #0 !dbg !481 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !482, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata i8** %3, metadata !484, metadata !DIExpression()), !dbg !485
  %4 = load i64, i64* %2, align 8, !dbg !486
  %5 = and i64 %4, -8, !dbg !486
  %6 = inttoptr i64 %5 to i8*, !dbg !486
  %7 = bitcast i8* %6 to %struct.fiobj_str_s*, !dbg !486
  %8 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %7, i32 0, i32 2, !dbg !487
  %9 = call i8* @fio_str_data(%struct.fio_str_s* %8), !dbg !488
  store i8* %9, i8** %3, align 8, !dbg !485
  %10 = call i64 @fio_atol(i8** %3), !dbg !489
  ret i64 %10, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fio_str2f(i64 %0) #0 !dbg !491 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i8** %3, metadata !494, metadata !DIExpression()), !dbg !495
  %4 = load i64, i64* %2, align 8, !dbg !496
  %5 = and i64 %4, -8, !dbg !496
  %6 = inttoptr i64 %5 to i8*, !dbg !496
  %7 = bitcast i8* %6 to %struct.fiobj_str_s*, !dbg !496
  %8 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %7, i32 0, i32 2, !dbg !497
  %9 = call i8* @fio_str_data(%struct.fio_str_s* %8), !dbg !498
  store i8* %9, i8** %3, align 8, !dbg !495
  %10 = call double @fio_atof(i8** %3), !dbg !499
  ret double %10, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_buf(i64 %0) #0 !dbg !501 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_str_s*, align 8
  %4 = alloca %struct.fiobj_str_s, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !504, metadata !DIExpression()), !dbg !505
  %6 = load i64, i64* %2, align 8, !dbg !506
  %7 = icmp ne i64 %6, 0, !dbg !506
  br i1 %7, label %8, label %11, !dbg !508

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8, !dbg !509
  %10 = add i64 %9, 1, !dbg !510
  store i64 %10, i64* %2, align 8, !dbg !511
  br label %13, !dbg !512

11:                                               ; preds = %1
  %12 = call i64 @sysconf(i32 30) #2, !dbg !513
  store i64 %12, i64* %2, align 8, !dbg !514
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.dbg.declare(metadata %struct.fiobj_str_s** %3, metadata !515, metadata !DIExpression()), !dbg !516
  %14 = call noalias i8* @fio_malloc(i64 64), !dbg !517
  %15 = ptrtoint i8* %14 to i64, !dbg !517
  %16 = and i64 %15, 15, !dbg !517
  %17 = icmp eq i64 %16, 0, !dbg !517
  call void @llvm.assume(i1 %17), !dbg !517
  %18 = bitcast i8* %14 to %struct.fiobj_str_s*, !dbg !517
  store %struct.fiobj_str_s* %18, %struct.fiobj_str_s** %3, align 8, !dbg !516
  %19 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %3, align 8, !dbg !518
  %20 = icmp ne %struct.fiobj_str_s* %19, null, !dbg !518
  br i1 %20, label %24, label %21, !dbg !521

21:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0)), !dbg !522
  %22 = call i32* @__errno_location() #10, !dbg !524
  %23 = load i32, i32* %22, align 4, !dbg !524
  call void @exit(i32 %23) #11, !dbg !525
  unreachable, !dbg !525

24:                                               ; preds = %13
  %25 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %3, align 8, !dbg !526
  %26 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %4, i32 0, i32 0, !dbg !527
  %27 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %26, i32 0, i32 0, !dbg !528
  store i8 40, i8* %27, align 8, !dbg !528
  %28 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %26, i32 0, i32 1, !dbg !528
  store i32 1, i32* %28, align 4, !dbg !528
  %29 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %4, i32 0, i32 1, !dbg !527
  store i64 0, i64* %29, align 8, !dbg !527
  %30 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %4, i32 0, i32 2, !dbg !527
  %31 = bitcast %struct.fio_str_s* %30 to i8*, !dbg !529
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 48, i1 false), !dbg !529
  %32 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %30, i32 0, i32 0, !dbg !529
  store i8 1, i8* %32, align 8, !dbg !529
  %33 = bitcast %struct.fiobj_str_s* %25 to i8*, !dbg !530
  %34 = bitcast %struct.fiobj_str_s* %4 to i8*, !dbg !530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 64, i1 false), !dbg !530
  %35 = load i64, i64* %2, align 8, !dbg !531
  %36 = icmp ne i64 %35, 0, !dbg !531
  br i1 %36, label %37, label %41, !dbg !533

37:                                               ; preds = %24
  %38 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %3, align 8, !dbg !534
  %39 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %38, i32 0, i32 2, !dbg !536
  %40 = load i64, i64* %2, align 8, !dbg !537
  call void @fio_str_capa_assert(%struct.fio_str_info_s* sret %5, %struct.fio_str_s* %39, i64 %40), !dbg !538
  br label %41, !dbg !539

41:                                               ; preds = %37, %24
  %42 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %3, align 8, !dbg !540
  %43 = ptrtoint %struct.fiobj_str_s* %42 to i64, !dbg !541
  %44 = or i64 %43, 2, !dbg !542
  ret i64 %44, !dbg !543
}

; Function Attrs: nounwind
declare dso_local i64 @sysconf(i32) #3

declare dso_local noalias i8* @fio_malloc(i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

declare dso_local void @perror(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_capa_assert(%struct.fio_str_info_s* noalias sret %0, %struct.fio_str_s* %1, i64 %2) #0 !dbg !544 {
  %4 = alloca %struct.fio_str_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %4, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !549, metadata !DIExpression()), !dbg !550
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !551
  %10 = icmp ne %struct.fio_str_s* %9, null, !dbg !551
  br i1 %10, label %11, label %17, !dbg !553

11:                                               ; preds = %3
  %12 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !554
  %13 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %12, i32 0, i32 1, !dbg !555
  %14 = load i8, i8* %13, align 1, !dbg !555
  %15 = zext i8 %14 to i32, !dbg !554
  %16 = icmp ne i32 %15, 0, !dbg !554
  br i1 %16, label %17, label %19, !dbg !556

17:                                               ; preds = %11, %3
  %18 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !557
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %18), !dbg !559
  br label %232, !dbg !560

19:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i8** %6, metadata !561, metadata !DIExpression()), !dbg !562
  %20 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !563
  %21 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %20, i32 0, i32 0, !dbg !565
  %22 = load i8, i8* %21, align 8, !dbg !565
  %23 = zext i8 %22 to i32, !dbg !563
  %24 = icmp ne i32 %23, 0, !dbg !563
  br i1 %24, label %30, label %25, !dbg !566

25:                                               ; preds = %19
  %26 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !567
  %27 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %26, i32 0, i32 6, !dbg !568
  %28 = load i8*, i8** %27, align 8, !dbg !568
  %29 = icmp ne i8* %28, null, !dbg !567
  br i1 %29, label %47, label %30, !dbg !569

30:                                               ; preds = %25, %19
  %31 = load i64, i64* %5, align 8, !dbg !570
  %32 = icmp ult i64 %31, sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), !dbg !573
  br i1 %32, label %33, label %46, !dbg !574

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !575
  store i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), i64* %34, align 8, !dbg !575
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !575
  %36 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !577
  %37 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %36, i32 0, i32 0, !dbg !578
  %38 = load i8, i8* %37, align 8, !dbg !578
  %39 = zext i8 %38 to i32, !dbg !577
  %40 = ashr i32 %39, 1, !dbg !579
  %41 = sext i32 %40 to i64, !dbg !580
  store i64 %41, i64* %35, align 8, !dbg !575
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !575
  %43 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !581
  %44 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %43, i32 0, i32 1, !dbg !581
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !581
  store i8* %45, i8** %42, align 8, !dbg !575
  br label %232, !dbg !582

46:                                               ; preds = %30
  br label %167, !dbg !583

47:                                               ; preds = %25
  %48 = load i64, i64* %5, align 8, !dbg !584
  %49 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !586
  %50 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %49, i32 0, i32 3, !dbg !587
  %51 = load i64, i64* %50, align 8, !dbg !587
  %52 = icmp ult i64 %48, %51, !dbg !588
  br i1 %52, label %53, label %66, !dbg !589

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !590
  %55 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !592
  %56 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %55, i32 0, i32 3, !dbg !593
  %57 = load i64, i64* %56, align 8, !dbg !593
  store i64 %57, i64* %54, align 8, !dbg !590
  %58 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !590
  %59 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !594
  %60 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %59, i32 0, i32 4, !dbg !595
  %61 = load i64, i64* %60, align 8, !dbg !595
  store i64 %61, i64* %58, align 8, !dbg !590
  %62 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !590
  %63 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !596
  %64 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %63, i32 0, i32 6, !dbg !597
  %65 = load i8*, i8** %64, align 8, !dbg !597
  store i8* %65, i8** %62, align 8, !dbg !590
  br label %232, !dbg !598

66:                                               ; preds = %47
  %67 = load i64, i64* %5, align 8, !dbg !599
  %68 = add i64 %67, 1, !dbg !599
  %69 = or i64 %68, 15, !dbg !599
  store i64 %69, i64* %5, align 8, !dbg !600
  %70 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !601
  %71 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %70, i32 0, i32 5, !dbg !603
  %72 = load void (i8*)*, void (i8*)** %71, align 8, !dbg !603
  %73 = icmp eq void (i8*)* %72, @fio_free, !dbg !604
  br i1 %73, label %74, label %101, !dbg !605

74:                                               ; preds = %66
  %75 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !606
  %76 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %75, i32 0, i32 6, !dbg !606
  %77 = load i8*, i8** %76, align 8, !dbg !606
  %78 = load i64, i64* %5, align 8, !dbg !606
  %79 = add i64 %78, 1, !dbg !606
  %80 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !606
  %81 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %80, i32 0, i32 4, !dbg !606
  %82 = load i64, i64* %81, align 8, !dbg !606
  %83 = add i64 %82, 1, !dbg !606
  %84 = call i8* @fio_realloc2(i8* %77, i64 %79, i64 %83), !dbg !606
  %85 = ptrtoint i8* %84 to i64, !dbg !606
  %86 = and i64 %85, 15, !dbg !606
  %87 = icmp eq i64 %86, 0, !dbg !606
  call void @llvm.assume(i1 %87), !dbg !606
  store i8* %84, i8** %6, align 8, !dbg !608
  %88 = load i8*, i8** %6, align 8, !dbg !609
  %89 = icmp ne i8* %88, null, !dbg !609
  br i1 %89, label %100, label %90, !dbg !611

90:                                               ; preds = %74
  br label %91, !dbg !612

91:                                               ; preds = %90
  %92 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !614
  %93 = icmp sle i32 1, %92, !dbg !614
  br i1 %93, label %94, label %95, !dbg !617

94:                                               ; preds = %91
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0)), !dbg !618
  br label %95, !dbg !618

95:                                               ; preds = %94, %91
  br label %96, !dbg !617

96:                                               ; preds = %95
  %97 = call i32 @kill(i32 0, i32 2) #2, !dbg !612
  %98 = call i32* @__errno_location() #10, !dbg !612
  %99 = load i32, i32* %98, align 4, !dbg !612
  call void @exit(i32 %99) #11, !dbg !612
  unreachable, !dbg !612

100:                                              ; preds = %74
  br label %143, !dbg !620

101:                                              ; preds = %66
  %102 = load i64, i64* %5, align 8, !dbg !621
  %103 = add i64 %102, 1, !dbg !621
  %104 = call noalias i8* @fio_malloc(i64 %103), !dbg !621
  %105 = ptrtoint i8* %104 to i64, !dbg !621
  %106 = and i64 %105, 15, !dbg !621
  %107 = icmp eq i64 %106, 0, !dbg !621
  call void @llvm.assume(i1 %107), !dbg !621
  store i8* %104, i8** %6, align 8, !dbg !623
  %108 = load i8*, i8** %6, align 8, !dbg !624
  %109 = icmp ne i8* %108, null, !dbg !624
  br i1 %109, label %120, label %110, !dbg !626

110:                                              ; preds = %101
  br label %111, !dbg !627

111:                                              ; preds = %110
  %112 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !629
  %113 = icmp sle i32 1, %112, !dbg !629
  br i1 %113, label %114, label %115, !dbg !632

114:                                              ; preds = %111
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0)), !dbg !633
  br label %115, !dbg !633

115:                                              ; preds = %114, %111
  br label %116, !dbg !632

116:                                              ; preds = %115
  %117 = call i32 @kill(i32 0, i32 2) #2, !dbg !627
  %118 = call i32* @__errno_location() #10, !dbg !627
  %119 = load i32, i32* %118, align 4, !dbg !627
  call void @exit(i32 %119) #11, !dbg !627
  unreachable, !dbg !627

120:                                              ; preds = %101
  %121 = load i8*, i8** %6, align 8, !dbg !635
  %122 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !636
  %123 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %122, i32 0, i32 6, !dbg !637
  %124 = load i8*, i8** %123, align 8, !dbg !637
  %125 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !638
  %126 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %125, i32 0, i32 4, !dbg !639
  %127 = load i64, i64* %126, align 8, !dbg !639
  %128 = add i64 %127, 1, !dbg !640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %121, i8* align 1 %124, i64 %128, i1 false), !dbg !641
  %129 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !642
  %130 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %129, i32 0, i32 5, !dbg !644
  %131 = load void (i8*)*, void (i8*)** %130, align 8, !dbg !644
  %132 = icmp ne void (i8*)* %131, null, !dbg !642
  br i1 %132, label %133, label %140, !dbg !645

133:                                              ; preds = %120
  %134 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !646
  %135 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %134, i32 0, i32 5, !dbg !647
  %136 = load void (i8*)*, void (i8*)** %135, align 8, !dbg !647
  %137 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !648
  %138 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %137, i32 0, i32 6, !dbg !649
  %139 = load i8*, i8** %138, align 8, !dbg !649
  call void %136(i8* %139), !dbg !646
  br label %140, !dbg !646

140:                                              ; preds = %133, %120
  %141 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !650
  %142 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %141, i32 0, i32 5, !dbg !651
  store void (i8*)* @fio_free, void (i8*)** %142, align 8, !dbg !652
  br label %143

143:                                              ; preds = %140, %100
  %144 = load i64, i64* %5, align 8, !dbg !653
  %145 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !654
  %146 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %145, i32 0, i32 3, !dbg !655
  store i64 %144, i64* %146, align 8, !dbg !656
  %147 = load i8*, i8** %6, align 8, !dbg !657
  %148 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !658
  %149 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %148, i32 0, i32 6, !dbg !659
  store i8* %147, i8** %149, align 8, !dbg !660
  %150 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !661
  %151 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %150, i32 0, i32 6, !dbg !662
  %152 = load i8*, i8** %151, align 8, !dbg !662
  %153 = load i64, i64* %5, align 8, !dbg !663
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !661
  store i8 0, i8* %154, align 1, !dbg !664
  %155 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !665
  %156 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !666
  %157 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %156, i32 0, i32 3, !dbg !667
  %158 = load i64, i64* %157, align 8, !dbg !667
  store i64 %158, i64* %155, align 8, !dbg !665
  %159 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !665
  %160 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !668
  %161 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %160, i32 0, i32 4, !dbg !669
  %162 = load i64, i64* %161, align 8, !dbg !669
  store i64 %162, i64* %159, align 8, !dbg !665
  %163 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !665
  %164 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !670
  %165 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %164, i32 0, i32 6, !dbg !671
  %166 = load i8*, i8** %165, align 8, !dbg !671
  store i8* %166, i8** %163, align 8, !dbg !665
  br label %232, !dbg !672

167:                                              ; preds = %46
  call void @llvm.dbg.label(metadata !673), !dbg !674
  %168 = load i64, i64* %5, align 8, !dbg !675
  %169 = add i64 %168, 1, !dbg !675
  %170 = or i64 %169, 15, !dbg !675
  store i64 %170, i64* %5, align 8, !dbg !676
  %171 = load i64, i64* %5, align 8, !dbg !677
  %172 = add i64 %171, 1, !dbg !677
  %173 = call noalias i8* @fio_malloc(i64 %172), !dbg !677
  %174 = ptrtoint i8* %173 to i64, !dbg !677
  %175 = and i64 %174, 15, !dbg !677
  %176 = icmp eq i64 %175, 0, !dbg !677
  call void @llvm.assume(i1 %176), !dbg !677
  store i8* %173, i8** %6, align 8, !dbg !678
  %177 = load i8*, i8** %6, align 8, !dbg !679
  %178 = icmp ne i8* %177, null, !dbg !679
  br i1 %178, label %189, label %179, !dbg !681

179:                                              ; preds = %167
  br label %180, !dbg !682

180:                                              ; preds = %179
  %181 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !684
  %182 = icmp sle i32 1, %181, !dbg !684
  br i1 %182, label %183, label %184, !dbg !687

183:                                              ; preds = %180
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0)), !dbg !688
  br label %184, !dbg !688

184:                                              ; preds = %183, %180
  br label %185, !dbg !687

185:                                              ; preds = %184
  %186 = call i32 @kill(i32 0, i32 2) #2, !dbg !682
  %187 = call i32* @__errno_location() #10, !dbg !682
  %188 = load i32, i32* %187, align 4, !dbg !682
  call void @exit(i32 %188) #11, !dbg !682
  unreachable, !dbg !682

189:                                              ; preds = %167
  call void @llvm.dbg.declare(metadata i64* %7, metadata !690, metadata !DIExpression()), !dbg !692
  %190 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !693
  %191 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %190, i32 0, i32 0, !dbg !694
  %192 = load i8, i8* %191, align 8, !dbg !694
  %193 = zext i8 %192 to i32, !dbg !693
  %194 = ashr i32 %193, 1, !dbg !695
  %195 = and i32 %194, 255, !dbg !696
  %196 = sext i32 %195 to i64, !dbg !697
  store i64 %196, i64* %7, align 8, !dbg !692
  %197 = load i64, i64* %7, align 8, !dbg !698
  %198 = icmp ne i64 %197, 0, !dbg !698
  br i1 %198, label %199, label %206, !dbg !700

199:                                              ; preds = %189
  %200 = load i8*, i8** %6, align 8, !dbg !701
  %201 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !703
  %202 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %201, i32 0, i32 1, !dbg !703
  %203 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !703
  %204 = load i64, i64* %7, align 8, !dbg !704
  %205 = add i64 %204, 1, !dbg !705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %200, i8* align 1 %203, i64 %205, i1 false), !dbg !706
  br label %209, !dbg !707

206:                                              ; preds = %189
  %207 = load i8*, i8** %6, align 8, !dbg !708
  %208 = getelementptr inbounds i8, i8* %207, i64 0, !dbg !708
  store i8 0, i8* %208, align 1, !dbg !710
  br label %209

209:                                              ; preds = %206, %199
  %210 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !711
  %211 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 0, !dbg !712
  store i8 0, i8* %211, align 8, !dbg !712
  %212 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 1, !dbg !712
  store i8 0, i8* %212, align 1, !dbg !712
  %213 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 2, !dbg !712
  %214 = bitcast [14 x i8]* %213 to i8*, !dbg !712
  call void @llvm.memset.p0i8.i64(i8* align 2 %214, i8 0, i64 14, i1 false), !dbg !712
  %215 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 3, !dbg !712
  %216 = load i64, i64* %5, align 8, !dbg !713
  store i64 %216, i64* %215, align 8, !dbg !712
  %217 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 4, !dbg !712
  %218 = load i64, i64* %7, align 8, !dbg !714
  store i64 %218, i64* %217, align 8, !dbg !712
  %219 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 5, !dbg !712
  store void (i8*)* @fio_free, void (i8*)** %219, align 8, !dbg !712
  %220 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 6, !dbg !712
  %221 = load i8*, i8** %6, align 8, !dbg !715
  store i8* %221, i8** %220, align 8, !dbg !712
  %222 = bitcast %struct.fio_str_s* %210 to i8*, !dbg !716
  %223 = bitcast %struct.fio_str_s* %8 to i8*, !dbg !716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 8 %223, i64 48, i1 false), !dbg !716
  %224 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !717
  %225 = load i64, i64* %5, align 8, !dbg !718
  store i64 %225, i64* %224, align 8, !dbg !717
  %226 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !717
  %227 = load i64, i64* %7, align 8, !dbg !719
  store i64 %227, i64* %226, align 8, !dbg !717
  %228 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !717
  %229 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !720
  %230 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %229, i32 0, i32 6, !dbg !721
  %231 = load i8*, i8** %230, align 8, !dbg !721
  store i8* %231, i8** %228, align 8, !dbg !717
  br label %232, !dbg !722

232:                                              ; preds = %209, %143, %53, %33, %17
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_new(i8* %0, i64 %1) #0 !dbg !724 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fiobj_str_s*, align 8
  %6 = alloca %struct.fiobj_str_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !727, metadata !DIExpression()), !dbg !728
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata %struct.fiobj_str_s** %5, metadata !731, metadata !DIExpression()), !dbg !732
  %8 = call noalias i8* @fio_malloc(i64 64), !dbg !733
  %9 = ptrtoint i8* %8 to i64, !dbg !733
  %10 = and i64 %9, 15, !dbg !733
  %11 = icmp eq i64 %10, 0, !dbg !733
  call void @llvm.assume(i1 %11), !dbg !733
  %12 = bitcast i8* %8 to %struct.fiobj_str_s*, !dbg !733
  store %struct.fiobj_str_s* %12, %struct.fiobj_str_s** %5, align 8, !dbg !732
  %13 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %5, align 8, !dbg !734
  %14 = icmp ne %struct.fiobj_str_s* %13, null, !dbg !734
  br i1 %14, label %18, label %15, !dbg !737

15:                                               ; preds = %2
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0)), !dbg !738
  %16 = call i32* @__errno_location() #10, !dbg !740
  %17 = load i32, i32* %16, align 4, !dbg !740
  call void @exit(i32 %17) #11, !dbg !741
  unreachable, !dbg !741

18:                                               ; preds = %2
  %19 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %5, align 8, !dbg !742
  %20 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %6, i32 0, i32 0, !dbg !743
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 0, !dbg !744
  store i8 40, i8* %21, align 8, !dbg !744
  %22 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1, !dbg !744
  store i32 1, i32* %22, align 4, !dbg !744
  %23 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %6, i32 0, i32 1, !dbg !743
  store i64 0, i64* %23, align 8, !dbg !743
  %24 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %6, i32 0, i32 2, !dbg !743
  %25 = bitcast %struct.fio_str_s* %24 to i8*, !dbg !745
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 48, i1 false), !dbg !745
  %26 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %24, i32 0, i32 0, !dbg !745
  store i8 1, i8* %26, align 8, !dbg !745
  %27 = bitcast %struct.fiobj_str_s* %19 to i8*, !dbg !746
  %28 = bitcast %struct.fiobj_str_s* %6 to i8*, !dbg !746
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 64, i1 false), !dbg !746
  %29 = load i8*, i8** %3, align 8, !dbg !747
  %30 = icmp ne i8* %29, null, !dbg !747
  br i1 %30, label %31, label %39, !dbg !749

31:                                               ; preds = %18
  %32 = load i64, i64* %4, align 8, !dbg !750
  %33 = icmp ne i64 %32, 0, !dbg !750
  br i1 %33, label %34, label %39, !dbg !751

34:                                               ; preds = %31
  %35 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %5, align 8, !dbg !752
  %36 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %35, i32 0, i32 2, !dbg !754
  %37 = load i8*, i8** %3, align 8, !dbg !755
  %38 = load i64, i64* %4, align 8, !dbg !756
  call void @fio_str_write(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %36, i8* %37, i64 %38), !dbg !757
  br label %39, !dbg !758

39:                                               ; preds = %34, %31, %18
  %40 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %5, align 8, !dbg !759
  %41 = ptrtoint %struct.fiobj_str_s* %40 to i64, !dbg !760
  %42 = or i64 %41, 2, !dbg !761
  ret i64 %42, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_write(%struct.fio_str_info_s* noalias sret %0, %struct.fio_str_s* %1, i8* %2, i64 %3) #0 !dbg !763 {
  %5 = alloca %struct.fio_str_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %5, metadata !768, metadata !DIExpression()), !dbg !769
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !770, metadata !DIExpression()), !dbg !771
  store i64 %3, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !772, metadata !DIExpression()), !dbg !773
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !774
  %10 = icmp ne %struct.fio_str_s* %9, null, !dbg !774
  br i1 %10, label %11, label %23, !dbg !776

11:                                               ; preds = %4
  %12 = load i64, i64* %7, align 8, !dbg !777
  %13 = icmp ne i64 %12, 0, !dbg !777
  br i1 %13, label %14, label %23, !dbg !778

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8, !dbg !779
  %16 = icmp ne i8* %15, null, !dbg !779
  br i1 %16, label %17, label %23, !dbg !780

17:                                               ; preds = %14
  %18 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !781
  %19 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %18, i32 0, i32 1, !dbg !782
  %20 = load i8, i8* %19, align 1, !dbg !782
  %21 = zext i8 %20 to i32, !dbg !781
  %22 = icmp ne i32 %21, 0, !dbg !781
  br i1 %22, label %23, label %25, !dbg !783

23:                                               ; preds = %17, %14, %11, %4
  %24 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !784
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %24), !dbg !785
  br label %42, !dbg !786

25:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %8, metadata !787, metadata !DIExpression()), !dbg !788
  %26 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !789
  %27 = load i64, i64* %7, align 8, !dbg !790
  %28 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !791
  %29 = call i64 @fio_str_len(%struct.fio_str_s* %28), !dbg !792
  %30 = add i64 %27, %29, !dbg !793
  call void @fio_str_resize(%struct.fio_str_info_s* sret %8, %struct.fio_str_s* %26, i64 %30), !dbg !794
  %31 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2, !dbg !795
  %32 = load i8*, i8** %31, align 8, !dbg !795
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1, !dbg !796
  %34 = load i64, i64* %33, align 8, !dbg !796
  %35 = load i64, i64* %7, align 8, !dbg !797
  %36 = sub i64 %34, %35, !dbg !798
  %37 = getelementptr inbounds i8, i8* %32, i64 %36, !dbg !799
  %38 = load i8*, i8** %6, align 8, !dbg !800
  %39 = load i64, i64* %7, align 8, !dbg !801
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 %39, i1 false), !dbg !802
  %40 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !803
  %41 = bitcast %struct.fio_str_info_s* %8 to i8*, !dbg !803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false), !dbg !803
  br label %42, !dbg !804

42:                                               ; preds = %25, %23
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_move(i8* %0, i64 %1, i64 %2) #0 !dbg !806 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fiobj_str_s*, align 8
  %8 = alloca %struct.fiobj_str_s, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !809, metadata !DIExpression()), !dbg !810
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !811, metadata !DIExpression()), !dbg !812
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata %struct.fiobj_str_s** %7, metadata !815, metadata !DIExpression()), !dbg !816
  %9 = call noalias i8* @fio_malloc(i64 64), !dbg !817
  %10 = ptrtoint i8* %9 to i64, !dbg !817
  %11 = and i64 %10, 15, !dbg !817
  %12 = icmp eq i64 %11, 0, !dbg !817
  call void @llvm.assume(i1 %12), !dbg !817
  %13 = bitcast i8* %9 to %struct.fiobj_str_s*, !dbg !817
  store %struct.fiobj_str_s* %13, %struct.fiobj_str_s** %7, align 8, !dbg !816
  %14 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %7, align 8, !dbg !818
  %15 = icmp ne %struct.fiobj_str_s* %14, null, !dbg !818
  br i1 %15, label %19, label %16, !dbg !821

16:                                               ; preds = %3
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0)), !dbg !822
  %17 = call i32* @__errno_location() #10, !dbg !824
  %18 = load i32, i32* %17, align 4, !dbg !824
  call void @exit(i32 %18) #11, !dbg !825
  unreachable, !dbg !825

19:                                               ; preds = %3
  %20 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %7, align 8, !dbg !826
  %21 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %8, i32 0, i32 0, !dbg !827
  %22 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %21, i32 0, i32 0, !dbg !828
  store i8 40, i8* %22, align 8, !dbg !828
  %23 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %21, i32 0, i32 1, !dbg !828
  store i32 1, i32* %23, align 4, !dbg !828
  %24 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %8, i32 0, i32 1, !dbg !827
  store i64 0, i64* %24, align 8, !dbg !827
  %25 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %8, i32 0, i32 2, !dbg !827
  %26 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 0, !dbg !829
  store i8 0, i8* %26, align 8, !dbg !829
  %27 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 1, !dbg !829
  store i8 0, i8* %27, align 1, !dbg !829
  %28 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 2, !dbg !829
  %29 = bitcast [14 x i8]* %28 to i8*, !dbg !829
  call void @llvm.memset.p0i8.i64(i8* align 2 %29, i8 0, i64 14, i1 false), !dbg !829
  %30 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 3, !dbg !829
  %31 = load i64, i64* %6, align 8, !dbg !829
  store i64 %31, i64* %30, align 8, !dbg !829
  %32 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 4, !dbg !829
  %33 = load i64, i64* %5, align 8, !dbg !829
  store i64 %33, i64* %32, align 8, !dbg !829
  %34 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 5, !dbg !829
  store void (i8*)* @fio_free, void (i8*)** %34, align 8, !dbg !829
  %35 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 6, !dbg !829
  %36 = load i8*, i8** %4, align 8, !dbg !829
  store i8* %36, i8** %35, align 8, !dbg !829
  %37 = bitcast %struct.fiobj_str_s* %20 to i8*, !dbg !830
  %38 = bitcast %struct.fiobj_str_s* %8 to i8*, !dbg !830
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 64, i1 false), !dbg !830
  %39 = load %struct.fiobj_str_s*, %struct.fiobj_str_s** %7, align 8, !dbg !831
  %40 = ptrtoint %struct.fiobj_str_s* %39 to i64, !dbg !832
  %41 = or i64 %40, 2, !dbg !833
  ret i64 %41, !dbg !834
}

declare dso_local void @fio_free(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_tmp() #0 !dbg !297 {
  %1 = alloca %struct.fio_str_info_s, align 8
  store i8 0, i8* getelementptr inbounds (%struct.fiobj_str_s, %struct.fiobj_str_s* @fiobj_str_tmp.tmp, i32 0, i32 2, i32 1), align 1, !dbg !835
  call void @fio_str_resize(%struct.fio_str_info_s* sret %1, %struct.fio_str_s* getelementptr inbounds (%struct.fiobj_str_s, %struct.fiobj_str_s* @fiobj_str_tmp.tmp, i32 0, i32 2), i64 0), !dbg !836
  ret i64 or (i64 ptrtoint (%struct.fiobj_str_s* @fiobj_str_tmp.tmp to i64), i64 2), !dbg !837
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_resize(%struct.fio_str_info_s* noalias sret %0, %struct.fio_str_s* %1, i64 %2) #0 !dbg !838 {
  %4 = alloca %struct.fio_str_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %4, metadata !839, metadata !DIExpression()), !dbg !840
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !841, metadata !DIExpression()), !dbg !842
  %8 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !843
  %9 = icmp ne %struct.fio_str_s* %8, null, !dbg !843
  br i1 %9, label %10, label %16, !dbg !845

10:                                               ; preds = %3
  %11 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !846
  %12 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %11, i32 0, i32 1, !dbg !847
  %13 = load i8, i8* %12, align 1, !dbg !847
  %14 = zext i8 %13 to i32, !dbg !846
  %15 = icmp ne i32 %14, 0, !dbg !846
  br i1 %15, label %16, label %18, !dbg !848

16:                                               ; preds = %10, %3
  %17 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !849
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %17), !dbg !851
  br label %99, !dbg !852

18:                                               ; preds = %10
  %19 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !853
  %20 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %19, i32 0, i32 0, !dbg !855
  %21 = load i8, i8* %20, align 8, !dbg !855
  %22 = zext i8 %21 to i32, !dbg !853
  %23 = icmp ne i32 %22, 0, !dbg !853
  br i1 %23, label %29, label %24, !dbg !856

24:                                               ; preds = %18
  %25 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !857
  %26 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %25, i32 0, i32 6, !dbg !858
  %27 = load i8*, i8** %26, align 8, !dbg !858
  %28 = icmp ne i8* %27, null, !dbg !857
  br i1 %28, label %57, label %29, !dbg !859

29:                                               ; preds = %24, %18
  %30 = load i64, i64* %5, align 8, !dbg !860
  %31 = icmp ult i64 %30, sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), !dbg !863
  br i1 %31, label %32, label %52, !dbg !864

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8, !dbg !865
  %34 = shl i64 %33, 1, !dbg !867
  %35 = or i64 %34, 1, !dbg !868
  %36 = and i64 %35, 255, !dbg !869
  %37 = trunc i64 %36 to i8, !dbg !870
  %38 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !871
  %39 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %38, i32 0, i32 0, !dbg !872
  store i8 %37, i8* %39, align 8, !dbg !873
  %40 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !874
  %41 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %40, i32 0, i32 1, !dbg !874
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !874
  %43 = load i64, i64* %5, align 8, !dbg !875
  %44 = getelementptr inbounds i8, i8* %42, i64 %43, !dbg !874
  store i8 0, i8* %44, align 1, !dbg !876
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !877
  store i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), i64* %45, align 8, !dbg !877
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !877
  %47 = load i64, i64* %5, align 8, !dbg !878
  store i64 %47, i64* %46, align 8, !dbg !877
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !877
  %49 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !879
  %50 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %49, i32 0, i32 1, !dbg !879
  %51 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !879
  store i8* %51, i8** %48, align 8, !dbg !877
  br label %99, !dbg !880

52:                                               ; preds = %29
  %53 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !881
  %54 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %53, i32 0, i32 0, !dbg !882
  store i8 trunc (i64 and (i64 or (i64 shl (i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), i64 1), i64 1), i64 255) to i8), i8* %54, align 8, !dbg !883
  %55 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !884
  %56 = load i64, i64* %5, align 8, !dbg !885
  call void @fio_str_capa_assert(%struct.fio_str_info_s* sret %6, %struct.fio_str_s* %55, i64 %56), !dbg !886
  br label %80, !dbg !887

57:                                               ; preds = %24
  %58 = load i64, i64* %5, align 8, !dbg !888
  %59 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !890
  %60 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %59, i32 0, i32 3, !dbg !891
  %61 = load i64, i64* %60, align 8, !dbg !891
  %62 = icmp uge i64 %58, %61, !dbg !892
  br i1 %62, label %63, label %79, !dbg !893

63:                                               ; preds = %57
  %64 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !894
  %65 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %64, i32 0, i32 5, !dbg !896
  %66 = load void (i8*)*, void (i8*)** %65, align 8, !dbg !896
  %67 = ptrtoint void (i8*)* %66 to i64, !dbg !897
  %68 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !898
  %69 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %68, i32 0, i32 3, !dbg !899
  %70 = load i64, i64* %69, align 8, !dbg !899
  %71 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !900
  %72 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %71, i32 0, i32 4, !dbg !901
  %73 = load i64, i64* %72, align 8, !dbg !901
  %74 = call i64 @fio_ct_if2(i64 %67, i64 %70, i64 %73), !dbg !902
  %75 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !903
  %76 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %75, i32 0, i32 4, !dbg !904
  store i64 %74, i64* %76, align 8, !dbg !905
  %77 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !906
  %78 = load i64, i64* %5, align 8, !dbg !907
  call void @fio_str_capa_assert(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %77, i64 %78), !dbg !908
  br label %79, !dbg !909

79:                                               ; preds = %63, %57
  br label %80, !dbg !891

80:                                               ; preds = %79, %52
  call void @llvm.dbg.label(metadata !910), !dbg !911
  %81 = load i64, i64* %5, align 8, !dbg !912
  %82 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !913
  %83 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %82, i32 0, i32 4, !dbg !914
  store i64 %81, i64* %83, align 8, !dbg !915
  %84 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !916
  %85 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %84, i32 0, i32 6, !dbg !917
  %86 = load i8*, i8** %85, align 8, !dbg !917
  %87 = load i64, i64* %5, align 8, !dbg !918
  %88 = getelementptr inbounds i8, i8* %86, i64 %87, !dbg !916
  store i8 0, i8* %88, align 1, !dbg !919
  %89 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !920
  %90 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !921
  %91 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %90, i32 0, i32 3, !dbg !922
  %92 = load i64, i64* %91, align 8, !dbg !922
  store i64 %92, i64* %89, align 8, !dbg !920
  %93 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !920
  %94 = load i64, i64* %5, align 8, !dbg !923
  store i64 %94, i64* %93, align 8, !dbg !920
  %95 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !920
  %96 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !924
  %97 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %96, i32 0, i32 6, !dbg !925
  %98 = load i8*, i8** %97, align 8, !dbg !925
  store i8* %98, i8** %95, align 8, !dbg !920
  br label %99, !dbg !926

99:                                               ; preds = %80, %32, %16
  ret void, !dbg !927
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_str_freeze(i64 %0) #0 !dbg !928 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !931, metadata !DIExpression()), !dbg !932
  %3 = load i64, i64* %2, align 8, !dbg !933
  %4 = call i64 @fiobj_type_is(i64 %3, i8 zeroext 40), !dbg !933
  %5 = icmp ne i64 %4, 0, !dbg !933
  br i1 %5, label %6, label %12, !dbg !935

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8, !dbg !936
  %8 = and i64 %7, -8, !dbg !936
  %9 = inttoptr i64 %8 to i8*, !dbg !936
  %10 = bitcast i8* %9 to %struct.fiobj_str_s*, !dbg !936
  %11 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %10, i32 0, i32 2, !dbg !937
  call void @fio_str_freeze(%struct.fio_str_s* %11), !dbg !938
  br label %12, !dbg !938

12:                                               ; preds = %6, %1
  ret void, !dbg !939
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64 %0, i8 zeroext %1) #0 !dbg !940 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !943, metadata !DIExpression()), !dbg !944
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !945, metadata !DIExpression()), !dbg !946
  %6 = load i8, i8* %5, align 1, !dbg !947
  %7 = zext i8 %6 to i32, !dbg !947
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
  ], !dbg !948

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !949
  %10 = and i64 %9, 1, !dbg !951
  %11 = icmp ne i64 %10, 0, !dbg !951
  br i1 %11, label %19, label %12, !dbg !952

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8, !dbg !953
  %14 = inttoptr i64 %13 to i8*, !dbg !954
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !955
  %16 = load i8, i8* %15, align 1, !dbg !955
  %17 = zext i8 %16 to i32, !dbg !955
  %18 = icmp eq i32 %17, 1, !dbg !956
  br label %19, !dbg !952

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32, !dbg !952
  %22 = sext i32 %21 to i64, !dbg !957
  store i64 %22, i64* %3, align 8, !dbg !958
  br label %121, !dbg !958

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8, !dbg !959
  %25 = icmp ne i64 %24, 0, !dbg !959
  br i1 %25, label %26, label %30, !dbg !960

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !961
  %28 = call i64 @fiobj_null(), !dbg !962
  %29 = icmp eq i64 %27, %28, !dbg !963
  br label %30, !dbg !960

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !960
  %33 = sext i32 %32 to i64, !dbg !964
  store i64 %33, i64* %3, align 8, !dbg !965
  br label %121, !dbg !965

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8, !dbg !966
  %36 = call i64 @fiobj_true(), !dbg !967
  %37 = icmp eq i64 %35, %36, !dbg !968
  %38 = zext i1 %37 to i32, !dbg !968
  %39 = sext i32 %38 to i64, !dbg !966
  store i64 %39, i64* %3, align 8, !dbg !969
  br label %121, !dbg !969

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8, !dbg !970
  %42 = call i64 @fiobj_false(), !dbg !971
  %43 = icmp eq i64 %41, %42, !dbg !972
  %44 = zext i1 %43 to i32, !dbg !972
  %45 = sext i32 %44 to i64, !dbg !970
  store i64 %45, i64* %3, align 8, !dbg !973
  br label %121, !dbg !973

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8, !dbg !974
  %48 = and i64 %47, 1, !dbg !975
  %49 = icmp eq i64 %48, 0, !dbg !976
  br i1 %49, label %50, label %54, !dbg !977

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8, !dbg !978
  %52 = and i64 %51, 6, !dbg !979
  %53 = icmp eq i64 %52, 2, !dbg !980
  br i1 %53, label %55, label %54, !dbg !981

54:                                               ; preds = %50, %46
  br label %55, !dbg !981

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32, !dbg !981
  %58 = sext i32 %57 to i64, !dbg !982
  store i64 %58, i64* %3, align 8, !dbg !983
  br label %121, !dbg !983

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8, !dbg !984
  %61 = and i64 %60, 1, !dbg !987
  %62 = icmp eq i64 %61, 0, !dbg !988
  br i1 %62, label %63, label %67, !dbg !989

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8, !dbg !990
  %65 = and i64 %64, 6, !dbg !991
  %66 = icmp eq i64 %65, 4, !dbg !992
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ], !dbg !993
  %69 = zext i1 %68 to i32, !dbg !989
  %70 = sext i32 %69 to i64, !dbg !994
  store i64 %70, i64* %3, align 8, !dbg !995
  br label %121, !dbg !995

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8, !dbg !996
  %73 = icmp ne i64 %72, 0, !dbg !996
  br i1 %73, label %74, label %92, !dbg !996

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8, !dbg !996
  %76 = and i64 %75, 1, !dbg !996
  %77 = icmp eq i64 %76, 0, !dbg !996
  br i1 %77, label %78, label %92, !dbg !996

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8, !dbg !996
  %80 = and i64 %79, 6, !dbg !996
  %81 = icmp ne i64 %80, 6, !dbg !996
  br i1 %81, label %82, label %92, !dbg !997

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8, !dbg !998
  %84 = and i64 %83, -8, !dbg !998
  %85 = inttoptr i64 %84 to i8*, !dbg !998
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !999
  %87 = load i8, i8* %86, align 1, !dbg !999
  %88 = zext i8 %87 to i32, !dbg !999
  %89 = load i8, i8* %5, align 1, !dbg !1000
  %90 = zext i8 %89 to i32, !dbg !1000
  %91 = icmp eq i32 %88, %90, !dbg !1001
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ], !dbg !1002
  %94 = zext i1 %93 to i32, !dbg !997
  %95 = sext i32 %94 to i64, !dbg !996
  store i64 %95, i64* %3, align 8, !dbg !1003
  br label %121, !dbg !1003

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8, !dbg !1004
  %98 = icmp ne i64 %97, 0, !dbg !1004
  br i1 %98, label %99, label %117, !dbg !1004

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8, !dbg !1004
  %101 = and i64 %100, 1, !dbg !1004
  %102 = icmp eq i64 %101, 0, !dbg !1004
  br i1 %102, label %103, label %117, !dbg !1004

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !1004
  %105 = and i64 %104, 6, !dbg !1004
  %106 = icmp ne i64 %105, 6, !dbg !1004
  br i1 %106, label %107, label %117, !dbg !1005

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8, !dbg !1006
  %109 = and i64 %108, -8, !dbg !1006
  %110 = inttoptr i64 %109 to i8*, !dbg !1006
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !1007
  %112 = load i8, i8* %111, align 1, !dbg !1007
  %113 = zext i8 %112 to i32, !dbg !1007
  %114 = load i8, i8* %5, align 1, !dbg !1008
  %115 = zext i8 %114 to i32, !dbg !1008
  %116 = icmp eq i32 %113, %115, !dbg !1009
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ], !dbg !1010
  %119 = zext i1 %118 to i32, !dbg !1005
  %120 = sext i32 %119 to i64, !dbg !1004
  store i64 %120, i64* %3, align 8, !dbg !1011
  br label %121, !dbg !1011

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8, !dbg !1012
  ret i64 %122, !dbg !1012
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_freeze(%struct.fio_str_s* %0) #0 !dbg !1013 {
  %2 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %2, metadata !1016, metadata !DIExpression()), !dbg !1017
  %3 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1018
  %4 = icmp ne %struct.fio_str_s* %3, null, !dbg !1018
  br i1 %4, label %6, label %5, !dbg !1020

5:                                                ; preds = %1
  br label %9, !dbg !1021

6:                                                ; preds = %1
  %7 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1022
  %8 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %7, i32 0, i32 1, !dbg !1023
  store i8 1, i8* %8, align 1, !dbg !1024
  br label %9, !dbg !1025

9:                                                ; preds = %6, %5
  ret void, !dbg !1025
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_capa_assert(i64 %0, i64 %1) #0 !dbg !1026 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1029, metadata !DIExpression()), !dbg !1030
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1031, metadata !DIExpression()), !dbg !1032
  %7 = load i64, i64* %4, align 8, !dbg !1033
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 40), !dbg !1033
  %9 = icmp ne i64 %8, 0, !dbg !1033
  br i1 %9, label %10, label %11, !dbg !1036

10:                                               ; preds = %2
  br label %12, !dbg !1036

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.fiobj_str_capa_assert, i64 0, i64 0)) #11, !dbg !1033
  unreachable, !dbg !1033

12:                                               ; preds = %10
  %13 = load i64, i64* %4, align 8, !dbg !1037
  %14 = and i64 %13, -8, !dbg !1037
  %15 = inttoptr i64 %14 to i8*, !dbg !1037
  %16 = bitcast i8* %15 to %struct.fiobj_str_s*, !dbg !1037
  %17 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %16, i32 0, i32 2, !dbg !1039
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 1, !dbg !1040
  %19 = load i8, i8* %18, align 1, !dbg !1040
  %20 = icmp ne i8 %19, 0, !dbg !1037
  br i1 %20, label %21, label %22, !dbg !1041

21:                                               ; preds = %12
  store i64 0, i64* %3, align 8, !dbg !1042
  br label %31, !dbg !1042

22:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %6, metadata !1043, metadata !DIExpression()), !dbg !1044
  %23 = load i64, i64* %4, align 8, !dbg !1045
  %24 = and i64 %23, -8, !dbg !1045
  %25 = inttoptr i64 %24 to i8*, !dbg !1045
  %26 = bitcast i8* %25 to %struct.fiobj_str_s*, !dbg !1045
  %27 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %26, i32 0, i32 2, !dbg !1046
  %28 = load i64, i64* %5, align 8, !dbg !1047
  call void @fio_str_capa_assert(%struct.fio_str_info_s* sret %6, %struct.fio_str_s* %27, i64 %28), !dbg !1048
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 0, !dbg !1049
  %30 = load i64, i64* %29, align 8, !dbg !1049
  store i64 %30, i64* %3, align 8, !dbg !1050
  br label %31, !dbg !1050

31:                                               ; preds = %22, %21
  %32 = load i64, i64* %3, align 8, !dbg !1051
  ret i64 %32, !dbg !1051
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_capa(i64 %0) #0 !dbg !1052 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1055, metadata !DIExpression()), !dbg !1056
  %3 = load i64, i64* %2, align 8, !dbg !1057
  %4 = call i64 @fiobj_type_is(i64 %3, i8 zeroext 40), !dbg !1057
  %5 = icmp ne i64 %4, 0, !dbg !1057
  br i1 %5, label %6, label %7, !dbg !1060

6:                                                ; preds = %1
  br label %8, !dbg !1060

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.fiobj_str_capa, i64 0, i64 0)) #11, !dbg !1057
  unreachable, !dbg !1057

8:                                                ; preds = %6
  %9 = load i64, i64* %2, align 8, !dbg !1061
  %10 = and i64 %9, -8, !dbg !1061
  %11 = inttoptr i64 %10 to i8*, !dbg !1061
  %12 = bitcast i8* %11 to %struct.fiobj_str_s*, !dbg !1061
  %13 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %12, i32 0, i32 2, !dbg !1062
  %14 = call i64 @fio_str_capa(%struct.fio_str_s* %13), !dbg !1063
  ret i64 %14, !dbg !1064
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str_capa(%struct.fio_str_s* %0) #0 !dbg !1065 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %3, metadata !1068, metadata !DIExpression()), !dbg !1069
  %4 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1070
  %5 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %4, i32 0, i32 1, !dbg !1072
  %6 = load i8, i8* %5, align 1, !dbg !1072
  %7 = icmp ne i8 %6, 0, !dbg !1070
  br i1 %7, label %8, label %9, !dbg !1073

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !1074
  br label %27, !dbg !1074

9:                                                ; preds = %1
  %10 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1075
  %11 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %10, i32 0, i32 0, !dbg !1076
  %12 = load i8, i8* %11, align 8, !dbg !1076
  %13 = zext i8 %12 to i32, !dbg !1075
  %14 = icmp ne i32 %13, 0, !dbg !1075
  br i1 %14, label %20, label %15, !dbg !1077

15:                                               ; preds = %9
  %16 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1078
  %17 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %16, i32 0, i32 6, !dbg !1079
  %18 = load i8*, i8** %17, align 8, !dbg !1079
  %19 = icmp ne i8* %18, null, !dbg !1078
  br i1 %19, label %21, label %20, !dbg !1080

20:                                               ; preds = %15, %9
  br label %25, !dbg !1080

21:                                               ; preds = %15
  %22 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1081
  %23 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %22, i32 0, i32 3, !dbg !1082
  %24 = load i64, i64* %23, align 8, !dbg !1082
  br label %25, !dbg !1080

25:                                               ; preds = %21, %20
  %26 = phi i64 [ sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), %20 ], [ %24, %21 ], !dbg !1080
  store i64 %26, i64* %2, align 8, !dbg !1083
  br label %27, !dbg !1083

27:                                               ; preds = %25, %8
  %28 = load i64, i64* %2, align 8, !dbg !1084
  ret i64 %28, !dbg !1084
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_str_resize(i64 %0, i64 %1) #0 !dbg !1085 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1088, metadata !DIExpression()), !dbg !1089
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1090, metadata !DIExpression()), !dbg !1091
  %6 = load i64, i64* %3, align 8, !dbg !1092
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 40), !dbg !1092
  %8 = icmp ne i64 %7, 0, !dbg !1092
  br i1 %8, label %9, label %10, !dbg !1095

9:                                                ; preds = %2
  br label %11, !dbg !1095

10:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_str_resize, i64 0, i64 0)) #11, !dbg !1092
  unreachable, !dbg !1092

11:                                               ; preds = %9
  %12 = load i64, i64* %3, align 8, !dbg !1096
  %13 = and i64 %12, -8, !dbg !1096
  %14 = inttoptr i64 %13 to i8*, !dbg !1096
  %15 = bitcast i8* %14 to %struct.fiobj_str_s*, !dbg !1096
  %16 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %15, i32 0, i32 2, !dbg !1097
  %17 = load i64, i64* %4, align 8, !dbg !1098
  call void @fio_str_resize(%struct.fio_str_info_s* sret %5, %struct.fio_str_s* %16, i64 %17), !dbg !1099
  %18 = load i64, i64* %3, align 8, !dbg !1100
  %19 = and i64 %18, -8, !dbg !1100
  %20 = inttoptr i64 %19 to i8*, !dbg !1100
  %21 = bitcast i8* %20 to %struct.fiobj_str_s*, !dbg !1100
  %22 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %21, i32 0, i32 1, !dbg !1101
  store i64 0, i64* %22, align 8, !dbg !1102
  ret void, !dbg !1103
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_str_compact(i64 %0) #0 !dbg !1104 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1105, metadata !DIExpression()), !dbg !1106
  %3 = load i64, i64* %2, align 8, !dbg !1107
  %4 = call i64 @fiobj_type_is(i64 %3, i8 zeroext 40), !dbg !1107
  %5 = icmp ne i64 %4, 0, !dbg !1107
  br i1 %5, label %6, label %7, !dbg !1110

6:                                                ; preds = %1
  br label %8, !dbg !1110

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 229, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.fiobj_str_compact, i64 0, i64 0)) #11, !dbg !1107
  unreachable, !dbg !1107

8:                                                ; preds = %6
  %9 = load i64, i64* %2, align 8, !dbg !1111
  %10 = and i64 %9, -8, !dbg !1111
  %11 = inttoptr i64 %10 to i8*, !dbg !1111
  %12 = bitcast i8* %11 to %struct.fiobj_str_s*, !dbg !1111
  %13 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %12, i32 0, i32 2, !dbg !1112
  call void @fio_str_compact(%struct.fio_str_s* %13), !dbg !1113
  ret void, !dbg !1114
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_compact(%struct.fio_str_s* %0) #0 !dbg !1115 {
  %2 = alloca %struct.fio_str_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_s, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %2, metadata !1116, metadata !DIExpression()), !dbg !1117
  %6 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1118
  %7 = icmp ne %struct.fio_str_s* %6, null, !dbg !1118
  br i1 %7, label %8, label %19, !dbg !1120

8:                                                ; preds = %1
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1121
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %9, i32 0, i32 0, !dbg !1122
  %11 = load i8, i8* %10, align 8, !dbg !1122
  %12 = zext i8 %11 to i32, !dbg !1121
  %13 = icmp ne i32 %12, 0, !dbg !1121
  br i1 %13, label %19, label %14, !dbg !1123

14:                                               ; preds = %8
  %15 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1124
  %16 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %15, i32 0, i32 6, !dbg !1125
  %17 = load i8*, i8** %16, align 8, !dbg !1125
  %18 = icmp ne i8* %17, null, !dbg !1124
  br i1 %18, label %20, label %19, !dbg !1126

19:                                               ; preds = %14, %8, %1
  br label %91, !dbg !1127

20:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1128, metadata !DIExpression()), !dbg !1129
  %21 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1130
  %22 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %21, i32 0, i32 4, !dbg !1132
  %23 = load i64, i64* %22, align 8, !dbg !1132
  %24 = icmp ult i64 %23, sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), !dbg !1133
  br i1 %24, label %25, label %26, !dbg !1134

25:                                               ; preds = %20
  br label %59, !dbg !1135

26:                                               ; preds = %20
  %27 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1136
  %28 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %27, i32 0, i32 6, !dbg !1137
  %29 = load i8*, i8** %28, align 8, !dbg !1137
  %30 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1138
  %31 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %30, i32 0, i32 4, !dbg !1139
  %32 = load i64, i64* %31, align 8, !dbg !1139
  %33 = add i64 %32, 1, !dbg !1140
  %34 = call i8* @fio_realloc(i8* %29, i64 %33), !dbg !1141
  %35 = ptrtoint i8* %34 to i64, !dbg !1141
  %36 = and i64 %35, 15, !dbg !1141
  %37 = icmp eq i64 %36, 0, !dbg !1141
  call void @llvm.assume(i1 %37), !dbg !1141
  store i8* %34, i8** %3, align 8, !dbg !1142
  %38 = load i8*, i8** %3, align 8, !dbg !1143
  %39 = icmp ne i8* %38, null, !dbg !1143
  br i1 %39, label %50, label %40, !dbg !1145

40:                                               ; preds = %26
  br label %41, !dbg !1146

41:                                               ; preds = %40
  %42 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1148
  %43 = icmp sle i32 1, %42, !dbg !1148
  br i1 %43, label %44, label %45, !dbg !1151

44:                                               ; preds = %41
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0)), !dbg !1152
  br label %45, !dbg !1152

45:                                               ; preds = %44, %41
  br label %46, !dbg !1151

46:                                               ; preds = %45
  %47 = call i32 @kill(i32 0, i32 2) #2, !dbg !1146
  %48 = call i32* @__errno_location() #10, !dbg !1146
  %49 = load i32, i32* %48, align 4, !dbg !1146
  call void @exit(i32 %49) #11, !dbg !1146
  unreachable, !dbg !1146

50:                                               ; preds = %26
  %51 = load i8*, i8** %3, align 8, !dbg !1154
  %52 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1155
  %53 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %52, i32 0, i32 6, !dbg !1156
  store i8* %51, i8** %53, align 8, !dbg !1157
  %54 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1158
  %55 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %54, i32 0, i32 4, !dbg !1159
  %56 = load i64, i64* %55, align 8, !dbg !1159
  %57 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1160
  %58 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %57, i32 0, i32 3, !dbg !1161
  store i64 %56, i64* %58, align 8, !dbg !1162
  br label %91, !dbg !1163

59:                                               ; preds = %25
  call void @llvm.dbg.label(metadata !1164), !dbg !1165
  %60 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1166
  %61 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %60, i32 0, i32 6, !dbg !1167
  %62 = load i8*, i8** %61, align 8, !dbg !1167
  store i8* %62, i8** %3, align 8, !dbg !1168
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1169, metadata !DIExpression()), !dbg !1170
  %63 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1171
  %64 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %63, i32 0, i32 4, !dbg !1172
  %65 = load i64, i64* %64, align 8, !dbg !1172
  store i64 %65, i64* %4, align 8, !dbg !1170
  %66 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1173
  %67 = bitcast %struct.fio_str_s* %5 to i8*, !dbg !1174
  call void @llvm.memset.p0i8.i64(i8* align 8 %67, i8 0, i64 48, i1 false), !dbg !1174
  %68 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %5, i32 0, i32 0, !dbg !1175
  %69 = load i64, i64* %4, align 8, !dbg !1176
  %70 = shl i64 %69, 1, !dbg !1177
  %71 = or i64 %70, 1, !dbg !1178
  %72 = and i64 %71, 255, !dbg !1179
  %73 = trunc i64 %72 to i8, !dbg !1180
  store i8 %73, i8* %68, align 8, !dbg !1175
  %74 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %5, i32 0, i32 1, !dbg !1175
  %75 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1181
  %76 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %75, i32 0, i32 1, !dbg !1182
  %77 = load i8, i8* %76, align 1, !dbg !1182
  store i8 %77, i8* %74, align 1, !dbg !1175
  %78 = bitcast %struct.fio_str_s* %66 to i8*, !dbg !1174
  %79 = bitcast %struct.fio_str_s* %5 to i8*, !dbg !1174
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 48, i1 false), !dbg !1174
  %80 = load i64, i64* %4, align 8, !dbg !1183
  %81 = icmp ne i64 %80, 0, !dbg !1183
  br i1 %81, label %82, label %89, !dbg !1185

82:                                               ; preds = %59
  %83 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1186
  %84 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %83, i32 0, i32 1, !dbg !1186
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !1186
  %86 = load i8*, i8** %3, align 8, !dbg !1188
  %87 = load i64, i64* %4, align 8, !dbg !1189
  %88 = add i64 %87, 1, !dbg !1190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %85, i8* align 1 %86, i64 %88, i1 false), !dbg !1191
  br label %89, !dbg !1192

89:                                               ; preds = %82, %59
  %90 = load i8*, i8** %3, align 8, !dbg !1193
  call void @fio_free(i8* %90), !dbg !1194
  br label %91, !dbg !1195

91:                                               ; preds = %89, %50, %19
  ret void, !dbg !1195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_str_clear(i64 %0) #0 !dbg !1196 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1197, metadata !DIExpression()), !dbg !1198
  %4 = load i64, i64* %2, align 8, !dbg !1199
  %5 = call i64 @fiobj_type_is(i64 %4, i8 zeroext 40), !dbg !1199
  %6 = icmp ne i64 %5, 0, !dbg !1199
  br i1 %6, label %7, label %8, !dbg !1202

7:                                                ; preds = %1
  br label %9, !dbg !1202

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 236, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.fiobj_str_clear, i64 0, i64 0)) #11, !dbg !1199
  unreachable, !dbg !1199

9:                                                ; preds = %7
  %10 = load i64, i64* %2, align 8, !dbg !1203
  %11 = and i64 %10, -8, !dbg !1203
  %12 = inttoptr i64 %11 to i8*, !dbg !1203
  %13 = bitcast i8* %12 to %struct.fiobj_str_s*, !dbg !1203
  %14 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %13, i32 0, i32 2, !dbg !1204
  call void @fio_str_resize(%struct.fio_str_info_s* sret %3, %struct.fio_str_s* %14, i64 0), !dbg !1205
  %15 = load i64, i64* %2, align 8, !dbg !1206
  %16 = and i64 %15, -8, !dbg !1206
  %17 = inttoptr i64 %16 to i8*, !dbg !1206
  %18 = bitcast i8* %17 to %struct.fiobj_str_s*, !dbg !1206
  %19 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %18, i32 0, i32 1, !dbg !1207
  store i64 0, i64* %19, align 8, !dbg !1208
  ret void, !dbg !1209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_write(i64 %0, i8* %1, i64 %2) #0 !dbg !1210 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1213, metadata !DIExpression()), !dbg !1214
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1217, metadata !DIExpression()), !dbg !1218
  %9 = load i64, i64* %5, align 8, !dbg !1219
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 40), !dbg !1219
  %11 = icmp ne i64 %10, 0, !dbg !1219
  br i1 %11, label %12, label %13, !dbg !1222

12:                                               ; preds = %3
  br label %14, !dbg !1222

13:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 246, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.fiobj_str_write, i64 0, i64 0)) #11, !dbg !1219
  unreachable, !dbg !1219

14:                                               ; preds = %12
  %15 = load i64, i64* %5, align 8, !dbg !1223
  %16 = and i64 %15, -8, !dbg !1223
  %17 = inttoptr i64 %16 to i8*, !dbg !1223
  %18 = bitcast i8* %17 to %struct.fiobj_str_s*, !dbg !1223
  %19 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %18, i32 0, i32 2, !dbg !1225
  %20 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %19, i32 0, i32 1, !dbg !1226
  %21 = load i8, i8* %20, align 1, !dbg !1226
  %22 = icmp ne i8 %21, 0, !dbg !1223
  br i1 %22, label %23, label %24, !dbg !1227

23:                                               ; preds = %14
  store i64 0, i64* %4, align 8, !dbg !1228
  br label %39, !dbg !1228

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8, !dbg !1229
  %26 = and i64 %25, -8, !dbg !1229
  %27 = inttoptr i64 %26 to i8*, !dbg !1229
  %28 = bitcast i8* %27 to %struct.fiobj_str_s*, !dbg !1229
  %29 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %28, i32 0, i32 1, !dbg !1230
  store i64 0, i64* %29, align 8, !dbg !1231
  %30 = load i64, i64* %5, align 8, !dbg !1232
  %31 = and i64 %30, -8, !dbg !1232
  %32 = inttoptr i64 %31 to i8*, !dbg !1232
  %33 = bitcast i8* %32 to %struct.fiobj_str_s*, !dbg !1232
  %34 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %33, i32 0, i32 2, !dbg !1233
  %35 = load i8*, i8** %6, align 8, !dbg !1234
  %36 = load i64, i64* %7, align 8, !dbg !1235
  call void @fio_str_write(%struct.fio_str_info_s* sret %8, %struct.fio_str_s* %34, i8* %35, i64 %36), !dbg !1236
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1, !dbg !1237
  %38 = load i64, i64* %37, align 8, !dbg !1237
  store i64 %38, i64* %4, align 8, !dbg !1238
  br label %39, !dbg !1238

39:                                               ; preds = %24, %23
  %40 = load i64, i64* %4, align 8, !dbg !1239
  ret i64 %40, !dbg !1239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_write_i(i64 %0, i64 %1) #0 !dbg !1240 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1246, metadata !DIExpression()), !dbg !1247
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1248, metadata !DIExpression()), !dbg !1249
  %7 = load i64, i64* %4, align 8, !dbg !1250
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 40), !dbg !1250
  %9 = icmp ne i64 %8, 0, !dbg !1250
  br i1 %9, label %10, label %11, !dbg !1253

10:                                               ; preds = %2
  br label %12, !dbg !1253

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 259, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.fiobj_str_write_i, i64 0, i64 0)) #11, !dbg !1250
  unreachable, !dbg !1250

12:                                               ; preds = %10
  %13 = load i64, i64* %4, align 8, !dbg !1254
  %14 = and i64 %13, -8, !dbg !1254
  %15 = inttoptr i64 %14 to i8*, !dbg !1254
  %16 = bitcast i8* %15 to %struct.fiobj_str_s*, !dbg !1254
  %17 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %16, i32 0, i32 2, !dbg !1256
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 1, !dbg !1257
  %19 = load i8, i8* %18, align 1, !dbg !1257
  %20 = icmp ne i8 %19, 0, !dbg !1254
  br i1 %20, label %21, label %22, !dbg !1258

21:                                               ; preds = %12
  store i64 0, i64* %3, align 8, !dbg !1259
  br label %36, !dbg !1259

22:                                               ; preds = %12
  %23 = load i64, i64* %4, align 8, !dbg !1260
  %24 = and i64 %23, -8, !dbg !1260
  %25 = inttoptr i64 %24 to i8*, !dbg !1260
  %26 = bitcast i8* %25 to %struct.fiobj_str_s*, !dbg !1260
  %27 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %26, i32 0, i32 1, !dbg !1261
  store i64 0, i64* %27, align 8, !dbg !1262
  %28 = load i64, i64* %4, align 8, !dbg !1263
  %29 = and i64 %28, -8, !dbg !1263
  %30 = inttoptr i64 %29 to i8*, !dbg !1263
  %31 = bitcast i8* %30 to %struct.fiobj_str_s*, !dbg !1263
  %32 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %31, i32 0, i32 2, !dbg !1264
  %33 = load i64, i64* %5, align 8, !dbg !1265
  call void @fio_str_write_i(%struct.fio_str_info_s* sret %6, %struct.fio_str_s* %32, i64 %33), !dbg !1266
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !1267
  %35 = load i64, i64* %34, align 8, !dbg !1267
  store i64 %35, i64* %3, align 8, !dbg !1268
  br label %36, !dbg !1268

36:                                               ; preds = %22, %21
  %37 = load i64, i64* %3, align 8, !dbg !1269
  ret i64 %37, !dbg !1269
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_write_i(%struct.fio_str_info_s* noalias sret %0, %struct.fio_str_s* %1, i64 %2) #0 !dbg !1270 {
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
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %4, metadata !1273, metadata !DIExpression()), !dbg !1274
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1275, metadata !DIExpression()), !dbg !1276
  %13 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1277
  %14 = icmp ne %struct.fio_str_s* %13, null, !dbg !1277
  br i1 %14, label %15, label %21, !dbg !1279

15:                                               ; preds = %3
  %16 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1280
  %17 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %16, i32 0, i32 1, !dbg !1281
  %18 = load i8, i8* %17, align 1, !dbg !1281
  %19 = zext i8 %18 to i32, !dbg !1280
  %20 = icmp ne i32 %19, 0, !dbg !1280
  br i1 %20, label %21, label %23, !dbg !1282

21:                                               ; preds = %15, %3
  %22 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1283
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %22), !dbg !1284
  br label %103, !dbg !1285

23:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %6, metadata !1286, metadata !DIExpression()), !dbg !1287
  %24 = load i64, i64* %5, align 8, !dbg !1288
  %25 = icmp ne i64 %24, 0, !dbg !1288
  br i1 %25, label %27, label %26, !dbg !1290

26:                                               ; preds = %23
  br label %88, !dbg !1291

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata [22 x i8]* %7, metadata !1292, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i64 0, i64* %8, align 8, !dbg !1298
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1299, metadata !DIExpression()), !dbg !1300
  %28 = load i64, i64* %5, align 8, !dbg !1301
  %29 = icmp slt i64 %28, 0, !dbg !1303
  %30 = zext i1 %29 to i32, !dbg !1303
  %31 = trunc i32 %30 to i8, !dbg !1304
  store i8 %31, i8* %9, align 1, !dbg !1305
  %32 = icmp ne i8 %31, 0, !dbg !1305
  br i1 %32, label %33, label %36, !dbg !1306

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8, !dbg !1307
  %35 = sub nsw i64 0, %34, !dbg !1309
  store i64 %35, i64* %5, align 8, !dbg !1310
  store i8 1, i8* %9, align 1, !dbg !1311
  br label %36, !dbg !1312

36:                                               ; preds = %33, %27
  br label %37, !dbg !1313

37:                                               ; preds = %40, %36
  %38 = load i64, i64* %5, align 8, !dbg !1314
  %39 = icmp ne i64 %38, 0, !dbg !1313
  br i1 %39, label %40, label %53, !dbg !1313

40:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1315, metadata !DIExpression()), !dbg !1317
  %41 = load i64, i64* %5, align 8, !dbg !1318
  %42 = sdiv i64 %41, 10, !dbg !1319
  store i64 %42, i64* %10, align 8, !dbg !1317
  %43 = load i64, i64* %5, align 8, !dbg !1320
  %44 = load i64, i64* %10, align 8, !dbg !1321
  %45 = mul i64 %44, 10, !dbg !1322
  %46 = sub i64 %43, %45, !dbg !1323
  %47 = add i64 48, %46, !dbg !1324
  %48 = trunc i64 %47 to i8, !dbg !1325
  %49 = load i64, i64* %8, align 8, !dbg !1326
  %50 = add i64 %49, 1, !dbg !1326
  store i64 %50, i64* %8, align 8, !dbg !1326
  %51 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 %49, !dbg !1327
  store i8 %48, i8* %51, align 1, !dbg !1328
  %52 = load i64, i64* %10, align 8, !dbg !1329
  store i64 %52, i64* %5, align 8, !dbg !1330
  br label %37, !dbg !1313, !llvm.loop !1331

53:                                               ; preds = %37
  %54 = load i8, i8* %9, align 1, !dbg !1333
  %55 = icmp ne i8 %54, 0, !dbg !1333
  br i1 %55, label %56, label %60, !dbg !1335

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8, !dbg !1336
  %58 = add i64 %57, 1, !dbg !1336
  store i64 %58, i64* %8, align 8, !dbg !1336
  %59 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 %57, !dbg !1338
  store i8 45, i8* %59, align 1, !dbg !1339
  br label %60, !dbg !1340

60:                                               ; preds = %56, %53
  %61 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1341
  %62 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1342
  %63 = call i64 @fio_str_len(%struct.fio_str_s* %62), !dbg !1343
  %64 = load i64, i64* %8, align 8, !dbg !1344
  %65 = add i64 %63, %64, !dbg !1345
  call void @fio_str_resize(%struct.fio_str_info_s* sret %11, %struct.fio_str_s* %61, i64 %65), !dbg !1346
  %66 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !1346
  %67 = bitcast %struct.fio_str_info_s* %11 to i8*, !dbg !1346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 24, i1 false), !dbg !1346
  br label %68, !dbg !1347

68:                                               ; preds = %71, %60
  %69 = load i64, i64* %8, align 8, !dbg !1348
  %70 = icmp ne i64 %69, 0, !dbg !1347
  br i1 %70, label %71, label %85, !dbg !1347

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8, !dbg !1349
  %73 = add i64 %72, -1, !dbg !1349
  store i64 %73, i64* %8, align 8, !dbg !1349
  %74 = load i64, i64* %8, align 8, !dbg !1351
  %75 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 %74, !dbg !1352
  %76 = load i8, i8* %75, align 1, !dbg !1352
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !1353
  %78 = load i8*, i8** %77, align 8, !dbg !1353
  %79 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !1354
  %80 = load i64, i64* %79, align 8, !dbg !1354
  %81 = load i64, i64* %8, align 8, !dbg !1355
  %82 = add i64 %81, 1, !dbg !1356
  %83 = sub i64 %80, %82, !dbg !1357
  %84 = getelementptr inbounds i8, i8* %78, i64 %83, !dbg !1358
  store i8 %76, i8* %84, align 1, !dbg !1359
  br label %68, !dbg !1347, !llvm.loop !1360

85:                                               ; preds = %68
  %86 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1362
  %87 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !1362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 24, i1 false), !dbg !1362
  br label %103, !dbg !1363

88:                                               ; preds = %26
  call void @llvm.dbg.label(metadata !1364), !dbg !1365
  %89 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1366
  %90 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1367
  %91 = call i64 @fio_str_len(%struct.fio_str_s* %90), !dbg !1368
  %92 = add i64 %91, 1, !dbg !1369
  call void @fio_str_resize(%struct.fio_str_info_s* sret %12, %struct.fio_str_s* %89, i64 %92), !dbg !1370
  %93 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !1370
  %94 = bitcast %struct.fio_str_info_s* %12 to i8*, !dbg !1370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false), !dbg !1370
  %95 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !1371
  %96 = load i8*, i8** %95, align 8, !dbg !1371
  %97 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !1372
  %98 = load i64, i64* %97, align 8, !dbg !1372
  %99 = sub i64 %98, 1, !dbg !1373
  %100 = getelementptr inbounds i8, i8* %96, i64 %99, !dbg !1374
  store i8 48, i8* %100, align 1, !dbg !1375
  %101 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1376
  %102 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !1376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 24, i1 false), !dbg !1376
  br label %103, !dbg !1377

103:                                              ; preds = %88, %85, %21
  ret void, !dbg !1378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_printf(i64 %0, i8* %1, ...) #0 !dbg !1379 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1382, metadata !DIExpression()), !dbg !1383
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1384, metadata !DIExpression()), !dbg !1385
  %8 = load i64, i64* %4, align 8, !dbg !1386
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 40), !dbg !1386
  %10 = icmp ne i64 %9, 0, !dbg !1386
  br i1 %10, label %11, label %12, !dbg !1389

11:                                               ; preds = %2
  br label %13, !dbg !1389

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 271, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.fiobj_str_printf, i64 0, i64 0)) #11, !dbg !1386
  unreachable, !dbg !1386

13:                                               ; preds = %11
  %14 = load i64, i64* %4, align 8, !dbg !1390
  %15 = and i64 %14, -8, !dbg !1390
  %16 = inttoptr i64 %15 to i8*, !dbg !1390
  %17 = bitcast i8* %16 to %struct.fiobj_str_s*, !dbg !1390
  %18 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %17, i32 0, i32 2, !dbg !1392
  %19 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %18, i32 0, i32 1, !dbg !1393
  %20 = load i8, i8* %19, align 1, !dbg !1393
  %21 = icmp ne i8 %20, 0, !dbg !1390
  br i1 %21, label %22, label %23, !dbg !1394

22:                                               ; preds = %13
  store i64 0, i64* %3, align 8, !dbg !1395
  br label %42, !dbg !1395

23:                                               ; preds = %13
  %24 = load i64, i64* %4, align 8, !dbg !1396
  %25 = and i64 %24, -8, !dbg !1396
  %26 = inttoptr i64 %25 to i8*, !dbg !1396
  %27 = bitcast i8* %26 to %struct.fiobj_str_s*, !dbg !1396
  %28 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %27, i32 0, i32 1, !dbg !1397
  store i64 0, i64* %28, align 8, !dbg !1398
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !1399, metadata !DIExpression()), !dbg !1400
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, !dbg !1401
  %30 = bitcast %struct.__va_list_tag* %29 to i8*, !dbg !1401
  call void @llvm.va_start(i8* %30), !dbg !1401
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %7, metadata !1402, metadata !DIExpression()), !dbg !1403
  %31 = load i64, i64* %4, align 8, !dbg !1404
  %32 = and i64 %31, -8, !dbg !1404
  %33 = inttoptr i64 %32 to i8*, !dbg !1404
  %34 = bitcast i8* %33 to %struct.fiobj_str_s*, !dbg !1404
  %35 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %34, i32 0, i32 2, !dbg !1405
  %36 = load i8*, i8** %5, align 8, !dbg !1406
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, !dbg !1407
  call void @fio_str_vprintf(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %35, i8* %36, %struct.__va_list_tag* %37), !dbg !1408
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, !dbg !1409
  %39 = bitcast %struct.__va_list_tag* %38 to i8*, !dbg !1409
  call void @llvm.va_end(i8* %39), !dbg !1409
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1410
  %41 = load i64, i64* %40, align 8, !dbg !1410
  store i64 %41, i64* %3, align 8, !dbg !1411
  br label %42, !dbg !1411

42:                                               ; preds = %23, %22
  %43 = load i64, i64* %3, align 8, !dbg !1412
  ret i64 %43, !dbg !1412
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_vprintf(%struct.fio_str_info_s* noalias sret %0, %struct.fio_str_s* %1, i8* %2, %struct.__va_list_tag* %3) #0 !dbg !1413 {
  %5 = alloca %struct.fio_str_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %5, metadata !1417, metadata !DIExpression()), !dbg !1418
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1419, metadata !DIExpression()), !dbg !1420
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %7, metadata !1421, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1423, metadata !DIExpression()), !dbg !1424
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1425
  %12 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !1425
  %13 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !1425
  %14 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !1425
  call void @llvm.va_copy(i8* %13, i8* %14), !dbg !1425
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1426, metadata !DIExpression()), !dbg !1427
  %15 = load i8*, i8** %6, align 8, !dbg !1428
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1429
  %17 = call i32 @vsnprintf(i8* null, i64 0, i8* %15, %struct.__va_list_tag* %16) #2, !dbg !1430
  store i32 %17, i32* %9, align 4, !dbg !1427
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1431
  %19 = bitcast %struct.__va_list_tag* %18 to i8*, !dbg !1431
  call void @llvm.va_end(i8* %19), !dbg !1431
  %20 = load i32, i32* %9, align 4, !dbg !1432
  %21 = icmp sle i32 %20, 0, !dbg !1434
  br i1 %21, label %22, label %24, !dbg !1435

22:                                               ; preds = %4
  %23 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !1436
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %23), !dbg !1437
  br label %47, !dbg !1438

24:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %10, metadata !1439, metadata !DIExpression()), !dbg !1440
  %25 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !1441
  %26 = load i32, i32* %9, align 4, !dbg !1442
  %27 = sext i32 %26 to i64, !dbg !1442
  %28 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !1443
  %29 = call i64 @fio_str_len(%struct.fio_str_s* %28), !dbg !1444
  %30 = add i64 %27, %29, !dbg !1445
  call void @fio_str_resize(%struct.fio_str_info_s* sret %10, %struct.fio_str_s* %25, i64 %30), !dbg !1446
  %31 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2, !dbg !1447
  %32 = load i8*, i8** %31, align 8, !dbg !1447
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1, !dbg !1448
  %34 = load i64, i64* %33, align 8, !dbg !1448
  %35 = load i32, i32* %9, align 4, !dbg !1449
  %36 = sext i32 %35 to i64, !dbg !1449
  %37 = sub i64 %34, %36, !dbg !1450
  %38 = getelementptr inbounds i8, i8* %32, i64 %37, !dbg !1451
  %39 = load i32, i32* %9, align 4, !dbg !1452
  %40 = add nsw i32 %39, 1, !dbg !1453
  %41 = sext i32 %40 to i64, !dbg !1452
  %42 = load i8*, i8** %6, align 8, !dbg !1454
  %43 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !1455
  %44 = call i32 @vsnprintf(i8* %38, i64 %41, i8* %42, %struct.__va_list_tag* %43) #2, !dbg !1456
  %45 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1457
  %46 = bitcast %struct.fio_str_info_s* %10 to i8*, !dbg !1457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 24, i1 false), !dbg !1457
  br label %47, !dbg !1458

47:                                               ; preds = %24, %22
  ret void, !dbg !1459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_vprintf(i64 %0, i8* %1, %struct.__va_list_tag* %2) #0 !dbg !1460 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1465, metadata !DIExpression()), !dbg !1466
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %7, metadata !1467, metadata !DIExpression()), !dbg !1468
  %9 = load i64, i64* %5, align 8, !dbg !1469
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 40), !dbg !1469
  %11 = icmp ne i64 %10, 0, !dbg !1469
  br i1 %11, label %12, label %13, !dbg !1472

12:                                               ; preds = %3
  br label %14, !dbg !1472

13:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.fiobj_str_vprintf, i64 0, i64 0)) #11, !dbg !1469
  unreachable, !dbg !1469

14:                                               ; preds = %12
  %15 = load i64, i64* %5, align 8, !dbg !1473
  %16 = and i64 %15, -8, !dbg !1473
  %17 = inttoptr i64 %16 to i8*, !dbg !1473
  %18 = bitcast i8* %17 to %struct.fiobj_str_s*, !dbg !1473
  %19 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %18, i32 0, i32 2, !dbg !1475
  %20 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %19, i32 0, i32 1, !dbg !1476
  %21 = load i8, i8* %20, align 1, !dbg !1476
  %22 = icmp ne i8 %21, 0, !dbg !1473
  br i1 %22, label %23, label %24, !dbg !1477

23:                                               ; preds = %14
  store i64 0, i64* %4, align 8, !dbg !1478
  br label %39, !dbg !1478

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8, !dbg !1479
  %26 = and i64 %25, -8, !dbg !1479
  %27 = inttoptr i64 %26 to i8*, !dbg !1479
  %28 = bitcast i8* %27 to %struct.fiobj_str_s*, !dbg !1479
  %29 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %28, i32 0, i32 1, !dbg !1480
  store i64 0, i64* %29, align 8, !dbg !1481
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %8, metadata !1482, metadata !DIExpression()), !dbg !1483
  %30 = load i64, i64* %5, align 8, !dbg !1484
  %31 = and i64 %30, -8, !dbg !1484
  %32 = inttoptr i64 %31 to i8*, !dbg !1484
  %33 = bitcast i8* %32 to %struct.fiobj_str_s*, !dbg !1484
  %34 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %33, i32 0, i32 2, !dbg !1485
  %35 = load i8*, i8** %6, align 8, !dbg !1486
  %36 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !1487
  call void @fio_str_vprintf(%struct.fio_str_info_s* sret %8, %struct.fio_str_s* %34, i8* %35, %struct.__va_list_tag* %36), !dbg !1488
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1, !dbg !1489
  %38 = load i64, i64* %37, align 8, !dbg !1489
  store i64 %38, i64* %4, align 8, !dbg !1490
  br label %39, !dbg !1490

39:                                               ; preds = %24, %23
  %40 = load i64, i64* %4, align 8, !dbg !1491
  ret i64 %40, !dbg !1491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_readfile(i64 %0, i8* %1, i64 %2, i64 %3) #0 !dbg !1492 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1495, metadata !DIExpression()), !dbg !1496
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1497, metadata !DIExpression()), !dbg !1498
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1499, metadata !DIExpression()), !dbg !1500
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1501, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %9, metadata !1503, metadata !DIExpression()), !dbg !1504
  %10 = load i64, i64* %5, align 8, !dbg !1505
  %11 = and i64 %10, -8, !dbg !1505
  %12 = inttoptr i64 %11 to i8*, !dbg !1505
  %13 = bitcast i8* %12 to %struct.fiobj_str_s*, !dbg !1505
  %14 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %13, i32 0, i32 2, !dbg !1506
  %15 = load i8*, i8** %6, align 8, !dbg !1507
  %16 = load i64, i64* %7, align 8, !dbg !1508
  %17 = load i64, i64* %8, align 8, !dbg !1509
  call void @fio_str_readfile(%struct.fio_str_info_s* sret %9, %struct.fio_str_s* %14, i8* %15, i64 %16, i64 %17), !dbg !1510
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1, !dbg !1511
  %19 = load i64, i64* %18, align 8, !dbg !1511
  ret i64 %19, !dbg !1512
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_readfile(%struct.fio_str_info_s* noalias sret %0, %struct.fio_str_s* %1, i8* %2, i64 %3, i64 %4) #0 !dbg !1513 {
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
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %6, metadata !1516, metadata !DIExpression()), !dbg !1517
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1518, metadata !DIExpression()), !dbg !1519
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i64 %4, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1524, metadata !DIExpression()), !dbg !1525
  %21 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1525
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false), !dbg !1525
  %22 = load i8*, i8** %7, align 8, !dbg !1526
  %23 = icmp eq i8* %22, null, !dbg !1528
  br i1 %23, label %27, label %24, !dbg !1529

24:                                               ; preds = %5
  %25 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8, !dbg !1530
  %26 = icmp ne %struct.fio_str_s* %25, null, !dbg !1530
  br i1 %26, label %28, label %27, !dbg !1531

27:                                               ; preds = %24, %5
  br label %198, !dbg !1532

28:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !1533, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i32 -1, i32* %11, align 4, !dbg !1573
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1574, metadata !DIExpression()), !dbg !1575
  store i8* null, i8** %12, align 8, !dbg !1575
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1576, metadata !DIExpression()), !dbg !1577
  store i64 0, i64* %13, align 8, !dbg !1577
  %29 = load i8*, i8** %7, align 8, !dbg !1578
  %30 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !1578
  %31 = load i8, i8* %30, align 1, !dbg !1578
  %32 = sext i8 %31 to i32, !dbg !1578
  %33 = icmp eq i32 %32, 126, !dbg !1580
  br i1 %33, label %34, label %117, !dbg !1581

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8, !dbg !1582
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1582
  %37 = load i8, i8* %36, align 1, !dbg !1582
  %38 = sext i8 %37 to i32, !dbg !1582
  %39 = icmp eq i32 %38, 47, !dbg !1583
  br i1 %39, label %46, label %40, !dbg !1584

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8, !dbg !1585
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1585
  %43 = load i8, i8* %42, align 1, !dbg !1585
  %44 = sext i8 %43 to i32, !dbg !1585
  %45 = icmp eq i32 %44, 92, !dbg !1586
  br i1 %45, label %46, label %117, !dbg !1587

46:                                               ; preds = %40, %34
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1588, metadata !DIExpression()), !dbg !1590
  %47 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !1591
  store i8* %47, i8** %14, align 8, !dbg !1590
  %48 = load i8*, i8** %14, align 8, !dbg !1592
  %49 = icmp ne i8* %48, null, !dbg !1592
  br i1 %49, label %50, label %116, !dbg !1594

50:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1595, metadata !DIExpression()), !dbg !1597
  %51 = load i8*, i8** %7, align 8, !dbg !1598
  %52 = call i64 @strlen(i8* %51) #12, !dbg !1599
  store i64 %52, i64* %15, align 8, !dbg !1597
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1600, metadata !DIExpression()), !dbg !1601
  %53 = load i8*, i8** %14, align 8, !dbg !1602
  %54 = call i64 @strlen(i8* %53) #12, !dbg !1603
  store i64 %54, i64* %16, align 8, !dbg !1601
  %55 = load i64, i64* %16, align 8, !dbg !1604
  %56 = load i64, i64* %15, align 8, !dbg !1606
  %57 = add i64 %55, %56, !dbg !1607
  %58 = icmp uge i64 %57, 65536, !dbg !1608
  br i1 %58, label %59, label %60, !dbg !1609

59:                                               ; preds = %50
  br label %198, !dbg !1610

60:                                               ; preds = %50
  %61 = load i8*, i8** %14, align 8, !dbg !1612
  %62 = load i64, i64* %16, align 8, !dbg !1614
  %63 = sub i64 %62, 1, !dbg !1615
  %64 = getelementptr inbounds i8, i8* %61, i64 %63, !dbg !1612
  %65 = load i8, i8* %64, align 1, !dbg !1612
  %66 = sext i8 %65 to i32, !dbg !1612
  %67 = icmp eq i32 %66, 47, !dbg !1616
  br i1 %67, label %76, label %68, !dbg !1617

68:                                               ; preds = %60
  %69 = load i8*, i8** %14, align 8, !dbg !1618
  %70 = load i64, i64* %16, align 8, !dbg !1619
  %71 = sub i64 %70, 1, !dbg !1620
  %72 = getelementptr inbounds i8, i8* %69, i64 %71, !dbg !1618
  %73 = load i8, i8* %72, align 1, !dbg !1618
  %74 = sext i8 %73 to i32, !dbg !1618
  %75 = icmp eq i32 %74, 92, !dbg !1621
  br i1 %75, label %76, label %79, !dbg !1622

76:                                               ; preds = %68, %60
  %77 = load i64, i64* %16, align 8, !dbg !1623
  %78 = add i64 %77, -1, !dbg !1623
  store i64 %78, i64* %16, align 8, !dbg !1623
  br label %79, !dbg !1623

79:                                               ; preds = %76, %68
  %80 = load i64, i64* %16, align 8, !dbg !1624
  %81 = load i64, i64* %15, align 8, !dbg !1625
  %82 = add i64 %80, %81, !dbg !1626
  %83 = sub i64 %82, 1, !dbg !1627
  store i64 %83, i64* %13, align 8, !dbg !1628
  %84 = load i64, i64* %13, align 8, !dbg !1629
  %85 = add i64 %84, 1, !dbg !1629
  %86 = call noalias i8* @fio_malloc(i64 %85), !dbg !1629
  %87 = ptrtoint i8* %86 to i64, !dbg !1629
  %88 = and i64 %87, 15, !dbg !1629
  %89 = icmp eq i64 %88, 0, !dbg !1629
  call void @llvm.assume(i1 %89), !dbg !1629
  store i8* %86, i8** %12, align 8, !dbg !1630
  %90 = load i8*, i8** %12, align 8, !dbg !1631
  %91 = icmp ne i8* %90, null, !dbg !1631
  br i1 %91, label %102, label %92, !dbg !1633

92:                                               ; preds = %79
  br label %93, !dbg !1634

93:                                               ; preds = %92
  %94 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1636
  %95 = icmp sle i32 1, %94, !dbg !1636
  br i1 %95, label %96, label %97, !dbg !1639

96:                                               ; preds = %93
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0)), !dbg !1640
  br label %97, !dbg !1640

97:                                               ; preds = %96, %93
  br label %98, !dbg !1639

98:                                               ; preds = %97
  %99 = call i32 @kill(i32 0, i32 2) #2, !dbg !1634
  %100 = call i32* @__errno_location() #10, !dbg !1634
  %101 = load i32, i32* %100, align 4, !dbg !1634
  call void @exit(i32 %101) #11, !dbg !1634
  unreachable, !dbg !1634

102:                                              ; preds = %79
  %103 = load i8*, i8** %12, align 8, !dbg !1642
  %104 = load i8*, i8** %14, align 8, !dbg !1643
  %105 = load i64, i64* %16, align 8, !dbg !1644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %103, i8* align 1 %104, i64 %105, i1 false), !dbg !1645
  %106 = load i8*, i8** %12, align 8, !dbg !1646
  %107 = load i64, i64* %16, align 8, !dbg !1647
  %108 = getelementptr inbounds i8, i8* %106, i64 %107, !dbg !1648
  %109 = load i8*, i8** %7, align 8, !dbg !1649
  %110 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1650
  %111 = load i64, i64* %15, align 8, !dbg !1651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %108, i8* align 1 %110, i64 %111, i1 false), !dbg !1652
  %112 = load i8*, i8** %12, align 8, !dbg !1653
  %113 = load i64, i64* %13, align 8, !dbg !1654
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !1653
  store i8 0, i8* %114, align 1, !dbg !1655
  %115 = load i8*, i8** %12, align 8, !dbg !1656
  store i8* %115, i8** %7, align 8, !dbg !1657
  br label %116, !dbg !1658

116:                                              ; preds = %102, %46
  br label %117, !dbg !1659

117:                                              ; preds = %116, %40, %28
  %118 = load i8*, i8** %7, align 8, !dbg !1660
  %119 = call i32 @stat(i8* %118, %struct.stat* %10) #2, !dbg !1662
  %120 = icmp ne i32 %119, 0, !dbg !1662
  br i1 %120, label %121, label %122, !dbg !1663

121:                                              ; preds = %117
  br label %196, !dbg !1664

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !1666
  %124 = load i64, i64* %123, align 8, !dbg !1666
  %125 = icmp sle i64 %124, 0, !dbg !1668
  br i1 %125, label %131, label %126, !dbg !1669

126:                                              ; preds = %122
  %127 = load i64, i64* %8, align 8, !dbg !1670
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !1671
  %129 = load i64, i64* %128, align 8, !dbg !1671
  %130 = icmp sge i64 %127, %129, !dbg !1672
  br i1 %130, label %131, label %135, !dbg !1673

131:                                              ; preds = %126, %122
  %132 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8, !dbg !1674
  call void @fio_str_info(%struct.fio_str_info_s* sret %17, %struct.fio_str_s* %132), !dbg !1676
  %133 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1676
  %134 = bitcast %struct.fio_str_info_s* %17 to i8*, !dbg !1676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 24, i1 false), !dbg !1676
  br label %196, !dbg !1677

135:                                              ; preds = %126
  %136 = load i8*, i8** %7, align 8, !dbg !1678
  %137 = call i32 (i8*, i32, ...) @open(i8* %136, i32 0), !dbg !1679
  store i32 %137, i32* %11, align 4, !dbg !1680
  %138 = load i32, i32* %11, align 4, !dbg !1681
  %139 = icmp eq i32 -1, %138, !dbg !1683
  br i1 %139, label %140, label %141, !dbg !1684

140:                                              ; preds = %135
  br label %196, !dbg !1685

141:                                              ; preds = %135
  %142 = load i64, i64* %8, align 8, !dbg !1686
  %143 = icmp slt i64 %142, 0, !dbg !1688
  br i1 %143, label %144, label %153, !dbg !1689

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !1690
  %146 = load i64, i64* %145, align 8, !dbg !1690
  %147 = load i64, i64* %8, align 8, !dbg !1692
  %148 = add nsw i64 %146, %147, !dbg !1693
  store i64 %148, i64* %8, align 8, !dbg !1694
  %149 = load i64, i64* %8, align 8, !dbg !1695
  %150 = icmp slt i64 %149, 0, !dbg !1697
  br i1 %150, label %151, label %152, !dbg !1698

151:                                              ; preds = %144
  store i64 0, i64* %8, align 8, !dbg !1699
  br label %152, !dbg !1700

152:                                              ; preds = %151, %144
  br label %153, !dbg !1701

153:                                              ; preds = %152, %141
  %154 = load i64, i64* %9, align 8, !dbg !1702
  %155 = icmp sle i64 %154, 0, !dbg !1704
  br i1 %155, label %163, label %156, !dbg !1705

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !1706
  %158 = load i64, i64* %157, align 8, !dbg !1706
  %159 = load i64, i64* %9, align 8, !dbg !1707
  %160 = load i64, i64* %8, align 8, !dbg !1708
  %161 = add nsw i64 %159, %160, !dbg !1709
  %162 = icmp slt i64 %158, %161, !dbg !1710
  br i1 %162, label %163, label %168, !dbg !1711

163:                                              ; preds = %156, %153
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !1712
  %165 = load i64, i64* %164, align 8, !dbg !1712
  %166 = load i64, i64* %8, align 8, !dbg !1713
  %167 = sub nsw i64 %165, %166, !dbg !1714
  store i64 %167, i64* %9, align 8, !dbg !1715
  br label %168, !dbg !1716

168:                                              ; preds = %163, %156
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1717, metadata !DIExpression()), !dbg !1718
  %169 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8, !dbg !1719
  %170 = call i64 @fio_str_len(%struct.fio_str_s* %169), !dbg !1720
  store i64 %170, i64* %18, align 8, !dbg !1718
  %171 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8, !dbg !1721
  %172 = load i64, i64* %18, align 8, !dbg !1722
  %173 = load i64, i64* %9, align 8, !dbg !1723
  %174 = add i64 %172, %173, !dbg !1724
  call void @fio_str_resize(%struct.fio_str_info_s* sret %19, %struct.fio_str_s* %171, i64 %174), !dbg !1725
  %175 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1725
  %176 = bitcast %struct.fio_str_info_s* %19 to i8*, !dbg !1725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %175, i8* align 8 %176, i64 24, i1 false), !dbg !1725
  %177 = load i32, i32* %11, align 4, !dbg !1726
  %178 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1728
  %179 = load i8*, i8** %178, align 8, !dbg !1728
  %180 = load i64, i64* %18, align 8, !dbg !1729
  %181 = getelementptr inbounds i8, i8* %179, i64 %180, !dbg !1730
  %182 = load i64, i64* %9, align 8, !dbg !1731
  %183 = load i64, i64* %8, align 8, !dbg !1732
  %184 = call i64 @pread(i32 %177, i8* %181, i64 %182, i64 %183), !dbg !1733
  %185 = load i64, i64* %9, align 8, !dbg !1734
  %186 = icmp ne i64 %184, %185, !dbg !1735
  br i1 %186, label %187, label %193, !dbg !1736

187:                                              ; preds = %168
  %188 = load %struct.fio_str_s*, %struct.fio_str_s** %6, align 8, !dbg !1737
  %189 = load i64, i64* %18, align 8, !dbg !1739
  call void @fio_str_resize(%struct.fio_str_info_s* sret %20, %struct.fio_str_s* %188, i64 %189), !dbg !1740
  %190 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1741
  store i8* null, i8** %190, align 8, !dbg !1742
  %191 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1743
  store i64 0, i64* %191, align 8, !dbg !1744
  %192 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1745
  store i64 0, i64* %192, align 8, !dbg !1746
  br label %193, !dbg !1747

193:                                              ; preds = %187, %168
  %194 = load i32, i32* %11, align 4, !dbg !1748
  %195 = call i32 @close(i32 %194), !dbg !1749
  br label %196, !dbg !1749

196:                                              ; preds = %193, %140, %131, %121
  call void @llvm.dbg.label(metadata !1750), !dbg !1751
  %197 = load i8*, i8** %12, align 8, !dbg !1752
  call void @fio_free(i8* %197), !dbg !1753
  br label %198, !dbg !1754

198:                                              ; preds = %196, %59, %27
  ret void, !dbg !1755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_concat(i64 %0, i64 %1) #0 !dbg !1756 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1759, metadata !DIExpression()), !dbg !1760
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1761, metadata !DIExpression()), !dbg !1762
  %8 = load i64, i64* %4, align 8, !dbg !1763
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 40), !dbg !1763
  %10 = icmp ne i64 %9, 0, !dbg !1763
  br i1 %10, label %11, label %12, !dbg !1766

11:                                               ; preds = %2
  br label %13, !dbg !1766

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 311, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.fiobj_str_concat, i64 0, i64 0)) #11, !dbg !1763
  unreachable, !dbg !1763

13:                                               ; preds = %11
  %14 = load i64, i64* %4, align 8, !dbg !1767
  %15 = and i64 %14, -8, !dbg !1767
  %16 = inttoptr i64 %15 to i8*, !dbg !1767
  %17 = bitcast i8* %16 to %struct.fiobj_str_s*, !dbg !1767
  %18 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %17, i32 0, i32 2, !dbg !1769
  %19 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %18, i32 0, i32 1, !dbg !1770
  %20 = load i8, i8* %19, align 1, !dbg !1770
  %21 = icmp ne i8 %20, 0, !dbg !1767
  br i1 %21, label %22, label %23, !dbg !1771

22:                                               ; preds = %13
  store i64 0, i64* %3, align 8, !dbg !1772
  br label %52, !dbg !1772

23:                                               ; preds = %13
  %24 = load i64, i64* %4, align 8, !dbg !1773
  %25 = and i64 %24, -8, !dbg !1773
  %26 = inttoptr i64 %25 to i8*, !dbg !1773
  %27 = bitcast i8* %26 to %struct.fiobj_str_s*, !dbg !1773
  %28 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %27, i32 0, i32 1, !dbg !1774
  store i64 0, i64* %28, align 8, !dbg !1775
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %6, metadata !1776, metadata !DIExpression()), !dbg !1777
  %29 = load i64, i64* %5, align 8, !dbg !1778
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %6, i64 %29), !dbg !1779
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !1780
  %31 = load i64, i64* %30, align 8, !dbg !1780
  %32 = icmp eq i64 %31, 0, !dbg !1782
  br i1 %32, label %33, label %40, !dbg !1783

33:                                               ; preds = %23
  %34 = load i64, i64* %4, align 8, !dbg !1784
  %35 = and i64 %34, -8, !dbg !1784
  %36 = inttoptr i64 %35 to i8*, !dbg !1784
  %37 = bitcast i8* %36 to %struct.fiobj_str_s*, !dbg !1784
  %38 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %37, i32 0, i32 2, !dbg !1785
  %39 = call i64 @fio_str_len(%struct.fio_str_s* %38), !dbg !1786
  store i64 %39, i64* %3, align 8, !dbg !1787
  br label %52, !dbg !1787

40:                                               ; preds = %23
  %41 = load i64, i64* %4, align 8, !dbg !1788
  %42 = and i64 %41, -8, !dbg !1788
  %43 = inttoptr i64 %42 to i8*, !dbg !1788
  %44 = bitcast i8* %43 to %struct.fiobj_str_s*, !dbg !1788
  %45 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %44, i32 0, i32 2, !dbg !1789
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !1790
  %47 = load i8*, i8** %46, align 8, !dbg !1790
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !1791
  %49 = load i64, i64* %48, align 8, !dbg !1791
  call void @fio_str_write(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %45, i8* %47, i64 %49), !dbg !1792
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1793
  %51 = load i64, i64* %50, align 8, !dbg !1793
  store i64 %51, i64* %3, align 8, !dbg !1794
  br label %52, !dbg !1794

52:                                               ; preds = %40, %33, %22
  %53 = load i64, i64* %3, align 8, !dbg !1795
  ret i64 %53, !dbg !1795
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !1796 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1797, metadata !DIExpression()), !dbg !1798
  %4 = load i64, i64* %3, align 8, !dbg !1799
  %5 = icmp ne i64 %4, 0, !dbg !1799
  br i1 %5, label %8, label %6, !dbg !1801

6:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1802, metadata !DIExpression()), !dbg !1804
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false), !dbg !1804
  br label %37, !dbg !1805

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !1806
  %10 = and i64 %9, 1, !dbg !1808
  %11 = icmp ne i64 %10, 0, !dbg !1808
  br i1 %11, label %12, label %15, !dbg !1809

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8, !dbg !1810
  %14 = ashr i64 %13, 1, !dbg !1811
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14), !dbg !1812
  br label %37, !dbg !1813

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8, !dbg !1814
  %17 = and i64 %16, 6, !dbg !1816
  %18 = icmp eq i64 %17, 6, !dbg !1817
  br i1 %18, label %19, label %31, !dbg !1818

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8, !dbg !1819
  %21 = trunc i64 %20 to i8, !dbg !1821
  %22 = zext i8 %21 to i32, !dbg !1821
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ], !dbg !1822

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1823, metadata !DIExpression()), !dbg !1826
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.15 to i8*), i64 24, i1 false), !dbg !1826
  br label %37, !dbg !1827

25:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1828, metadata !DIExpression()), !dbg !1830
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1830
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.17 to i8*), i64 24, i1 false), !dbg !1830
  br label %37, !dbg !1831

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1832, metadata !DIExpression()), !dbg !1834
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.19 to i8*), i64 24, i1 false), !dbg !1834
  br label %37, !dbg !1835

29:                                               ; preds = %19
  br label %30, !dbg !1836

30:                                               ; preds = %29
  br label %31, !dbg !1837

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8, !dbg !1838
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32), !dbg !1838
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6, !dbg !1839
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8, !dbg !1839
  %36 = load i64, i64* %3, align 8, !dbg !1840
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36), !dbg !1838
  br label %37, !dbg !1841

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void, !dbg !1842
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str_len(%struct.fio_str_s* %0) #0 !dbg !1843 {
  %2 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %2, metadata !1844, metadata !DIExpression()), !dbg !1845
  %3 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1846
  %4 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %3, i32 0, i32 0, !dbg !1847
  %5 = load i8, i8* %4, align 8, !dbg !1847
  %6 = zext i8 %5 to i32, !dbg !1846
  %7 = icmp ne i32 %6, 0, !dbg !1846
  br i1 %7, label %13, label %8, !dbg !1848

8:                                                ; preds = %1
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1849
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %9, i32 0, i32 6, !dbg !1850
  %11 = load i8*, i8** %10, align 8, !dbg !1850
  %12 = icmp ne i8* %11, null, !dbg !1849
  br i1 %12, label %20, label %13, !dbg !1851

13:                                               ; preds = %8, %1
  %14 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1852
  %15 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %14, i32 0, i32 0, !dbg !1853
  %16 = load i8, i8* %15, align 8, !dbg !1853
  %17 = zext i8 %16 to i32, !dbg !1852
  %18 = ashr i32 %17, 1, !dbg !1854
  %19 = sext i32 %18 to i64, !dbg !1855
  br label %24, !dbg !1851

20:                                               ; preds = %8
  %21 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1856
  %22 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %21, i32 0, i32 4, !dbg !1857
  %23 = load i64, i64* %22, align 8, !dbg !1857
  br label %24, !dbg !1851

24:                                               ; preds = %20, %13
  %25 = phi i64 [ %19, %13 ], [ %23, %20 ], !dbg !1851
  ret i64 %25, !dbg !1858
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_str_hash(i64 %0) #0 !dbg !1859 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1862, metadata !DIExpression()), !dbg !1863
  %5 = load i64, i64* %3, align 8, !dbg !1864
  %6 = call i64 @fiobj_type_is(i64 %5, i8 zeroext 40), !dbg !1864
  %7 = icmp ne i64 %6, 0, !dbg !1864
  br i1 %7, label %8, label %9, !dbg !1867

8:                                                ; preds = %1
  br label %10, !dbg !1867

9:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 325, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.fiobj_str_hash, i64 0, i64 0)) #11, !dbg !1864
  unreachable, !dbg !1864

10:                                               ; preds = %8
  %11 = load i64, i64* %3, align 8, !dbg !1868
  %12 = and i64 %11, -8, !dbg !1868
  %13 = inttoptr i64 %12 to i8*, !dbg !1868
  %14 = bitcast i8* %13 to %struct.fiobj_str_s*, !dbg !1868
  %15 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %14, i32 0, i32 1, !dbg !1870
  %16 = load i64, i64* %15, align 8, !dbg !1870
  %17 = icmp ne i64 %16, 0, !dbg !1868
  br i1 %17, label %18, label %25, !dbg !1871

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8, !dbg !1872
  %20 = and i64 %19, -8, !dbg !1872
  %21 = inttoptr i64 %20 to i8*, !dbg !1872
  %22 = bitcast i8* %21 to %struct.fiobj_str_s*, !dbg !1872
  %23 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %22, i32 0, i32 1, !dbg !1874
  %24 = load i64, i64* %23, align 8, !dbg !1874
  store i64 %24, i64* %2, align 8, !dbg !1875
  br label %47, !dbg !1875

25:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %4, metadata !1876, metadata !DIExpression()), !dbg !1877
  %26 = load i64, i64* %3, align 8, !dbg !1878
  %27 = and i64 %26, -8, !dbg !1878
  %28 = inttoptr i64 %27 to i8*, !dbg !1878
  %29 = bitcast i8* %28 to %struct.fiobj_str_s*, !dbg !1878
  %30 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %29, i32 0, i32 2, !dbg !1879
  call void @fio_str_info(%struct.fio_str_info_s* sret %4, %struct.fio_str_s* %30), !dbg !1880
  %31 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !1881
  %32 = load i8*, i8** %31, align 8, !dbg !1881
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1, !dbg !1882
  %34 = load i64, i64* %33, align 8, !dbg !1882
  %35 = call i64 @fiobj_hash_string(i8* %32, i64 %34), !dbg !1883
  %36 = load i64, i64* %3, align 8, !dbg !1884
  %37 = and i64 %36, -8, !dbg !1884
  %38 = inttoptr i64 %37 to i8*, !dbg !1884
  %39 = bitcast i8* %38 to %struct.fiobj_str_s*, !dbg !1884
  %40 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %39, i32 0, i32 1, !dbg !1885
  store i64 %35, i64* %40, align 8, !dbg !1886
  %41 = load i64, i64* %3, align 8, !dbg !1887
  %42 = and i64 %41, -8, !dbg !1887
  %43 = inttoptr i64 %42 to i8*, !dbg !1887
  %44 = bitcast i8* %43 to %struct.fiobj_str_s*, !dbg !1887
  %45 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %44, i32 0, i32 1, !dbg !1888
  %46 = load i64, i64* %45, align 8, !dbg !1888
  store i64 %46, i64* %2, align 8, !dbg !1889
  br label %47, !dbg !1889

47:                                               ; preds = %25, %18
  %48 = load i64, i64* %2, align 8, !dbg !1890
  ret i64 %48, !dbg !1890
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_info(%struct.fio_str_info_s* noalias sret %0, %struct.fio_str_s* %1) #0 !dbg !1891 {
  %3 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %3, metadata !1896, metadata !DIExpression()), !dbg !1897
  %4 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1898
  %5 = icmp ne %struct.fio_str_s* %4, null, !dbg !1898
  br i1 %5, label %10, label %6, !dbg !1900

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1901
  store i64 0, i64* %7, align 8, !dbg !1901
  %8 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1901
  store i64 0, i64* %8, align 8, !dbg !1901
  %9 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1901
  store i8* null, i8** %9, align 8, !dbg !1901
  br label %64, !dbg !1902

10:                                               ; preds = %2
  %11 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1903
  %12 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %11, i32 0, i32 0, !dbg !1904
  %13 = load i8, i8* %12, align 8, !dbg !1904
  %14 = zext i8 %13 to i32, !dbg !1903
  %15 = icmp ne i32 %14, 0, !dbg !1903
  br i1 %15, label %21, label %16, !dbg !1905

16:                                               ; preds = %10
  %17 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1906
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 6, !dbg !1907
  %19 = load i8*, i8** %18, align 8, !dbg !1907
  %20 = icmp ne i8* %19, null, !dbg !1906
  br i1 %20, label %41, label %21, !dbg !1908

21:                                               ; preds = %16, %10
  %22 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1909
  %23 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1910
  %24 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %23, i32 0, i32 1, !dbg !1911
  %25 = load i8, i8* %24, align 1, !dbg !1911
  %26 = zext i8 %25 to i32, !dbg !1910
  %27 = icmp ne i32 %26, 0, !dbg !1910
  %28 = zext i1 %27 to i64, !dbg !1910
  %29 = select i1 %27, i64 0, i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 1), i64 1) to i64)), i64 1), !dbg !1910
  store i64 %29, i64* %22, align 8, !dbg !1909
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1909
  %31 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1912
  %32 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %31, i32 0, i32 0, !dbg !1913
  %33 = load i8, i8* %32, align 8, !dbg !1913
  %34 = zext i8 %33 to i32, !dbg !1912
  %35 = ashr i32 %34, 1, !dbg !1914
  %36 = sext i32 %35 to i64, !dbg !1915
  store i64 %36, i64* %30, align 8, !dbg !1909
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1909
  %38 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1916
  %39 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %38, i32 0, i32 1, !dbg !1916
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1916
  store i8* %40, i8** %37, align 8, !dbg !1909
  br label %63, !dbg !1908

41:                                               ; preds = %16
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1917
  %43 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1918
  %44 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %43, i32 0, i32 1, !dbg !1919
  %45 = load i8, i8* %44, align 1, !dbg !1919
  %46 = zext i8 %45 to i32, !dbg !1918
  %47 = icmp ne i32 %46, 0, !dbg !1918
  br i1 %47, label %48, label %49, !dbg !1918

48:                                               ; preds = %41
  br label %53, !dbg !1918

49:                                               ; preds = %41
  %50 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1920
  %51 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %50, i32 0, i32 3, !dbg !1921
  %52 = load i64, i64* %51, align 8, !dbg !1921
  br label %53, !dbg !1918

53:                                               ; preds = %49, %48
  %54 = phi i64 [ 0, %48 ], [ %52, %49 ], !dbg !1918
  store i64 %54, i64* %42, align 8, !dbg !1917
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1917
  %56 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1922
  %57 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %56, i32 0, i32 4, !dbg !1923
  %58 = load i64, i64* %57, align 8, !dbg !1923
  store i64 %58, i64* %55, align 8, !dbg !1917
  %59 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1917
  %60 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !1924
  %61 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %60, i32 0, i32 6, !dbg !1925
  %62 = load i8*, i8** %61, align 8, !dbg !1925
  store i8* %62, i8** %59, align 8, !dbg !1917
  br label %63, !dbg !1908

63:                                               ; preds = %53, %21
  br label %64, !dbg !1926

64:                                               ; preds = %63, %6
  ret void, !dbg !1927
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_string(i8* %0, i64 %1) #0 !dbg !1928 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1931, metadata !DIExpression()), !dbg !1932
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1933, metadata !DIExpression()), !dbg !1934
  %5 = load i8*, i8** %3, align 8, !dbg !1935
  %6 = load i64, i64* %4, align 8, !dbg !1935
  %7 = call i64 @fio_siphash13(i8* %5, i64 %6, i64 ptrtoint (i64 (i64, i32 (i64, i8*)*, i8*)* @fiobj_each2 to i64), i64 ptrtoint (void (i64)* @fiobj_free_complex_object to i64)), !dbg !1935
  ret i64 %7, !dbg !1936
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_str_free(%struct.fio_str_s* %0) #0 !dbg !1937 {
  %2 = alloca %struct.fio_str_s*, align 8
  %3 = alloca %struct.fio_str_s, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %2, metadata !1940, metadata !DIExpression()), !dbg !1941
  %4 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1942
  %5 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %4, i32 0, i32 0, !dbg !1944
  %6 = load i8, i8* %5, align 8, !dbg !1944
  %7 = icmp ne i8 %6, 0, !dbg !1942
  br i1 %7, label %20, label %8, !dbg !1945

8:                                                ; preds = %1
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1946
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %9, i32 0, i32 5, !dbg !1947
  %11 = load void (i8*)*, void (i8*)** %10, align 8, !dbg !1947
  %12 = icmp ne void (i8*)* %11, null, !dbg !1946
  br i1 %12, label %13, label %20, !dbg !1948

13:                                               ; preds = %8
  %14 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1949
  %15 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %14, i32 0, i32 5, !dbg !1950
  %16 = load void (i8*)*, void (i8*)** %15, align 8, !dbg !1950
  %17 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1951
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 6, !dbg !1952
  %19 = load i8*, i8** %18, align 8, !dbg !1952
  call void %16(i8* %19), !dbg !1949
  br label %20, !dbg !1949

20:                                               ; preds = %13, %8, %1
  %21 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !1953
  %22 = bitcast %struct.fio_str_s* %3 to i8*, !dbg !1954
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 48, i1 false), !dbg !1954
  %23 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %3, i32 0, i32 0, !dbg !1954
  store i8 1, i8* %23, align 8, !dbg !1954
  %24 = bitcast %struct.fio_str_s* %21 to i8*, !dbg !1954
  %25 = bitcast %struct.fio_str_s* %3 to i8*, !dbg !1954
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 48, i1 false), !dbg !1954
  ret i32 0, !dbg !1955
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_str_iseq(%struct.fio_str_s* %0, %struct.fio_str_s* %1) #0 !dbg !1956 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_str_s*, align 8
  %5 = alloca %struct.fio_str_s*, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %4, metadata !1959, metadata !DIExpression()), !dbg !1960
  store %struct.fio_str_s* %1, %struct.fio_str_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %5, metadata !1961, metadata !DIExpression()), !dbg !1962
  %8 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1963
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !1965
  %10 = icmp eq %struct.fio_str_s* %8, %9, !dbg !1966
  br i1 %10, label %11, label %12, !dbg !1967

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !1968
  br label %40, !dbg !1968

12:                                               ; preds = %2
  %13 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1969
  %14 = icmp ne %struct.fio_str_s* %13, null, !dbg !1969
  br i1 %14, label %15, label %18, !dbg !1971

15:                                               ; preds = %12
  %16 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !1972
  %17 = icmp ne %struct.fio_str_s* %16, null, !dbg !1972
  br i1 %17, label %19, label %18, !dbg !1973

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4, !dbg !1974
  br label %40, !dbg !1974

19:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %6, metadata !1975, metadata !DIExpression()), !dbg !1976
  %20 = load %struct.fio_str_s*, %struct.fio_str_s** %4, align 8, !dbg !1977
  call void @fio_str_info(%struct.fio_str_info_s* sret %6, %struct.fio_str_s* %20), !dbg !1978
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %7, metadata !1979, metadata !DIExpression()), !dbg !1980
  %21 = load %struct.fio_str_s*, %struct.fio_str_s** %5, align 8, !dbg !1981
  call void @fio_str_info(%struct.fio_str_info_s* sret %7, %struct.fio_str_s* %21), !dbg !1982
  %22 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !1983
  %23 = load i64, i64* %22, align 8, !dbg !1983
  %24 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1984
  %25 = load i64, i64* %24, align 8, !dbg !1984
  %26 = icmp eq i64 %23, %25, !dbg !1985
  br i1 %26, label %27, label %37, !dbg !1986

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !1987
  %29 = load i8*, i8** %28, align 8, !dbg !1987
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !1988
  %31 = load i8*, i8** %30, align 8, !dbg !1988
  %32 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !1989
  %33 = load i64, i64* %32, align 8, !dbg !1989
  %34 = call i32 @memcmp(i8* %29, i8* %31, i64 %33) #12, !dbg !1990
  %35 = icmp ne i32 %34, 0, !dbg !1991
  %36 = xor i1 %35, true, !dbg !1991
  br label %37

37:                                               ; preds = %27, %19
  %38 = phi i1 [ false, %19 ], [ %36, %27 ], !dbg !1992
  %39 = zext i1 %38 to i32, !dbg !1986
  store i32 %39, i32* %3, align 4, !dbg !1993
  br label %40, !dbg !1993

40:                                               ; preds = %37, %18, %11
  %41 = load i32, i32* %3, align 4, !dbg !1994
  ret i32 %41, !dbg !1994
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_str_get_cstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !1995 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1996, metadata !DIExpression()), !dbg !1997
  %4 = load i64, i64* %3, align 8, !dbg !1998
  %5 = and i64 %4, -8, !dbg !1998
  %6 = inttoptr i64 %5 to i8*, !dbg !1998
  %7 = bitcast i8* %6 to %struct.fiobj_str_s*, !dbg !1998
  %8 = getelementptr inbounds %struct.fiobj_str_s, %struct.fiobj_str_s* %7, i32 0, i32 2, !dbg !1999
  call void @fio_str_info(%struct.fio_str_info_s* sret %0, %struct.fio_str_s* %8), !dbg !2000
  ret void, !dbg !2001
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_str_data(%struct.fio_str_s* %0) #0 !dbg !2002 {
  %2 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %0, %struct.fio_str_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %2, metadata !2005, metadata !DIExpression()), !dbg !2006
  %3 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !2007
  %4 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %3, i32 0, i32 0, !dbg !2008
  %5 = load i8, i8* %4, align 8, !dbg !2008
  %6 = zext i8 %5 to i32, !dbg !2007
  %7 = icmp ne i32 %6, 0, !dbg !2007
  br i1 %7, label %13, label %8, !dbg !2009

8:                                                ; preds = %1
  %9 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !2010
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %9, i32 0, i32 6, !dbg !2011
  %11 = load i8*, i8** %10, align 8, !dbg !2011
  %12 = icmp ne i8* %11, null, !dbg !2010
  br i1 %12, label %17, label %13, !dbg !2012

13:                                               ; preds = %8, %1
  %14 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !2013
  %15 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %14, i32 0, i32 1, !dbg !2013
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2013
  br label %21, !dbg !2012

17:                                               ; preds = %8
  %18 = load %struct.fio_str_s*, %struct.fio_str_s** %2, align 8, !dbg !2014
  %19 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %18, i32 0, i32 6, !dbg !2015
  %20 = load i8*, i8** %19, align 8, !dbg !2015
  br label %21, !dbg !2012

21:                                               ; preds = %17, %13
  %22 = phi i8* [ %16, %13 ], [ %20, %17 ], !dbg !2012
  ret i8* %22, !dbg !2016
}

declare dso_local i64 @fio_atol(i8**) #5

declare dso_local double @fio_atof(i8**) #5

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #5

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if2(i64 %0, i64 %1, i64 %2) #0 !dbg !2017 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2020, metadata !DIExpression()), !dbg !2021
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2022, metadata !DIExpression()), !dbg !2023
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2024, metadata !DIExpression()), !dbg !2025
  %7 = load i64, i64* %4, align 8, !dbg !2026
  %8 = call i64 @fio_ct_true(i64 %7), !dbg !2027
  %9 = trunc i64 %8 to i8, !dbg !2027
  %10 = load i64, i64* %5, align 8, !dbg !2028
  %11 = load i64, i64* %6, align 8, !dbg !2029
  %12 = call i64 @fio_ct_if(i8 zeroext %9, i64 %10, i64 %11), !dbg !2030
  ret i64 %12, !dbg !2031
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if(i8 zeroext %0, i64 %1, i64 %2) #0 !dbg !2032 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2035, metadata !DIExpression()), !dbg !2036
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2037, metadata !DIExpression()), !dbg !2038
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2039, metadata !DIExpression()), !dbg !2040
  %7 = load i64, i64* %6, align 8, !dbg !2041
  %8 = load i8, i8* %4, align 1, !dbg !2042
  %9 = zext i8 %8 to i32, !dbg !2042
  %10 = and i32 %9, 1, !dbg !2043
  %11 = sub nsw i32 0, %10, !dbg !2044
  %12 = sext i32 %11 to i64, !dbg !2045
  %13 = load i64, i64* %5, align 8, !dbg !2046
  %14 = load i64, i64* %6, align 8, !dbg !2047
  %15 = xor i64 %13, %14, !dbg !2048
  %16 = and i64 %12, %15, !dbg !2049
  %17 = xor i64 %7, %16, !dbg !2050
  ret i64 %17, !dbg !2051
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_true(i64 %0) #0 !dbg !2052 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2055, metadata !DIExpression()), !dbg !2056
  %3 = load i64, i64* %2, align 8, !dbg !2057
  %4 = load i64, i64* %2, align 8, !dbg !2058
  %5 = sub i64 0, %4, !dbg !2059
  %6 = or i64 %3, %5, !dbg !2060
  %7 = lshr i64 %6, 63, !dbg !2061
  ret i64 %7, !dbg !2062
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 !dbg !2063 {
  ret i64 6, !dbg !2064
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 !dbg !2065 {
  ret i64 22, !dbg !2066
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 !dbg !2067 {
  ret i64 38, !dbg !2068
}

declare dso_local i8* @fio_realloc(i8*, i64) #5

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #9

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #3

declare dso_local i32 @open(i8*, i32, ...) #5

declare dso_local i64 @pread(i32, i8*, i64, i64) #5

declare dso_local i32 @close(i32) #5

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !2069 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2073, metadata !DIExpression()), !dbg !2074
  %4 = load i64, i64* %3, align 8, !dbg !2075
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !2075
  %6 = zext i8 %5 to i32, !dbg !2075
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
  ], !dbg !2076

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2077
  br label %15, !dbg !2077

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2079
  br label %15, !dbg !2079

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2080
  br label %15, !dbg !2080

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2081
  br label %15, !dbg !2081

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2082
  br label %15, !dbg !2082

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2083
  br label %15, !dbg !2083

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2084
  br label %15, !dbg !2084

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2085
  br label %15, !dbg !2085

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2086
  ret %struct.fiobj_object_vtable_s* %16, !dbg !2086
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !2087 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2090, metadata !DIExpression()), !dbg !2091
  %4 = load i64, i64* %3, align 8, !dbg !2092
  %5 = icmp ne i64 %4, 0, !dbg !2092
  br i1 %5, label %7, label %6, !dbg !2094

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !2095
  br label %35, !dbg !2095

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !2096
  %9 = and i64 %8, 1, !dbg !2098
  %10 = icmp ne i64 %9, 0, !dbg !2098
  br i1 %10, label %11, label %12, !dbg !2099

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !2100
  br label %35, !dbg !2100

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !2101
  %14 = and i64 %13, 6, !dbg !2103
  %15 = icmp eq i64 %14, 6, !dbg !2104
  br i1 %15, label %16, label %19, !dbg !2105

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !2106
  %18 = trunc i64 %17 to i8, !dbg !2107
  store i8 %18, i8* %2, align 1, !dbg !2108
  br label %35, !dbg !2108

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !2109
  %21 = and i64 %20, 6, !dbg !2111
  %22 = icmp eq i64 %21, 2, !dbg !2112
  br i1 %22, label %23, label %24, !dbg !2113

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !2114
  br label %35, !dbg !2114

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !2115
  %26 = and i64 %25, 6, !dbg !2117
  %27 = icmp eq i64 %26, 4, !dbg !2118
  br i1 %27, label %28, label %29, !dbg !2119

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !2120
  br label %35, !dbg !2120

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !2121
  %31 = and i64 %30, -8, !dbg !2121
  %32 = inttoptr i64 %31 to i8*, !dbg !2121
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !2122
  %34 = load i8, i8* %33, align 1, !dbg !2122
  store i8 %34, i8* %2, align 1, !dbg !2123
  br label %35, !dbg !2123

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !2124
  ret i8 %36, !dbg !2124
}

declare dso_local i64 @fio_siphash13(i8*, i64, i64, i64) #5

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #5

declare dso_local void @fiobj_free_complex_object(i64) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!369, !370, !371}
!llvm.ident = !{!372}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIOBJECT_VTABLE_STRING", scope: !2, file: !3, line: 90, type: !308, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !238, globals: !294, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fiobj_str.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !{!5, !224}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 71, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!9 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "_SC_TIMERS", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "_SC_FSYNC", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "_SC_VERSION", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "_SC_2_VERSION", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "_SC_PII", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "_SC_PII_XTI", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "_SC_PII_OSI", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "_SC_POLL", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "_SC_SELECT", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60, isUnsigned: true)
!71 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61, isUnsigned: true)
!72 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62, isUnsigned: true)
!73 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63, isUnsigned: true)
!74 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64, isUnsigned: true)
!75 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65, isUnsigned: true)
!76 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66, isUnsigned: true)
!77 = !DIEnumerator(name: "_SC_THREADS", value: 67, isUnsigned: true)
!78 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68, isUnsigned: true)
!79 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69, isUnsigned: true)
!80 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70, isUnsigned: true)
!81 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71, isUnsigned: true)
!82 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72, isUnsigned: true)
!83 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73, isUnsigned: true)
!84 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74, isUnsigned: true)
!85 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75, isUnsigned: true)
!86 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76, isUnsigned: true)
!87 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77, isUnsigned: true)
!88 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78, isUnsigned: true)
!89 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79, isUnsigned: true)
!90 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80, isUnsigned: true)
!91 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81, isUnsigned: true)
!92 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82, isUnsigned: true)
!93 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83, isUnsigned: true)
!94 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84, isUnsigned: true)
!95 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85, isUnsigned: true)
!96 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86, isUnsigned: true)
!97 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87, isUnsigned: true)
!98 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88, isUnsigned: true)
!99 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89, isUnsigned: true)
!100 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90, isUnsigned: true)
!101 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91, isUnsigned: true)
!102 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92, isUnsigned: true)
!103 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93, isUnsigned: true)
!104 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94, isUnsigned: true)
!105 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95, isUnsigned: true)
!106 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96, isUnsigned: true)
!107 = !DIEnumerator(name: "_SC_2_UPE", value: 97, isUnsigned: true)
!108 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98, isUnsigned: true)
!109 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99, isUnsigned: true)
!110 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100, isUnsigned: true)
!111 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101, isUnsigned: true)
!112 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102, isUnsigned: true)
!113 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103, isUnsigned: true)
!114 = !DIEnumerator(name: "_SC_INT_MAX", value: 104, isUnsigned: true)
!115 = !DIEnumerator(name: "_SC_INT_MIN", value: 105, isUnsigned: true)
!116 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106, isUnsigned: true)
!117 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107, isUnsigned: true)
!118 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108, isUnsigned: true)
!119 = !DIEnumerator(name: "_SC_NZERO", value: 109, isUnsigned: true)
!120 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110, isUnsigned: true)
!121 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111, isUnsigned: true)
!122 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112, isUnsigned: true)
!123 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113, isUnsigned: true)
!124 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114, isUnsigned: true)
!125 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115, isUnsigned: true)
!126 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116, isUnsigned: true)
!127 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117, isUnsigned: true)
!128 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118, isUnsigned: true)
!129 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119, isUnsigned: true)
!130 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120, isUnsigned: true)
!131 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121, isUnsigned: true)
!132 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122, isUnsigned: true)
!133 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123, isUnsigned: true)
!134 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124, isUnsigned: true)
!135 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125, isUnsigned: true)
!136 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126, isUnsigned: true)
!137 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127, isUnsigned: true)
!138 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128, isUnsigned: true)
!139 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129, isUnsigned: true)
!140 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130, isUnsigned: true)
!141 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131, isUnsigned: true)
!142 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132, isUnsigned: true)
!143 = !DIEnumerator(name: "_SC_BARRIERS", value: 133, isUnsigned: true)
!144 = !DIEnumerator(name: "_SC_BASE", value: 134, isUnsigned: true)
!145 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135, isUnsigned: true)
!146 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136, isUnsigned: true)
!147 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137, isUnsigned: true)
!148 = !DIEnumerator(name: "_SC_CPUTIME", value: 138, isUnsigned: true)
!149 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139, isUnsigned: true)
!150 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140, isUnsigned: true)
!151 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141, isUnsigned: true)
!152 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142, isUnsigned: true)
!153 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143, isUnsigned: true)
!154 = !DIEnumerator(name: "_SC_FIFO", value: 144, isUnsigned: true)
!155 = !DIEnumerator(name: "_SC_PIPE", value: 145, isUnsigned: true)
!156 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146, isUnsigned: true)
!157 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147, isUnsigned: true)
!158 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148, isUnsigned: true)
!159 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149, isUnsigned: true)
!160 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150, isUnsigned: true)
!161 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151, isUnsigned: true)
!162 = !DIEnumerator(name: "_SC_NETWORKING", value: 152, isUnsigned: true)
!163 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153, isUnsigned: true)
!164 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154, isUnsigned: true)
!165 = !DIEnumerator(name: "_SC_REGEXP", value: 155, isUnsigned: true)
!166 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156, isUnsigned: true)
!167 = !DIEnumerator(name: "_SC_SHELL", value: 157, isUnsigned: true)
!168 = !DIEnumerator(name: "_SC_SIGNALS", value: 158, isUnsigned: true)
!169 = !DIEnumerator(name: "_SC_SPAWN", value: 159, isUnsigned: true)
!170 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160, isUnsigned: true)
!171 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161, isUnsigned: true)
!172 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162, isUnsigned: true)
!173 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163, isUnsigned: true)
!174 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164, isUnsigned: true)
!175 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165, isUnsigned: true)
!176 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166, isUnsigned: true)
!177 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167, isUnsigned: true)
!178 = !DIEnumerator(name: "_SC_2_PBS", value: 168, isUnsigned: true)
!179 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169, isUnsigned: true)
!180 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170, isUnsigned: true)
!181 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171, isUnsigned: true)
!182 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172, isUnsigned: true)
!183 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173, isUnsigned: true)
!184 = !DIEnumerator(name: "_SC_STREAMS", value: 174, isUnsigned: true)
!185 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175, isUnsigned: true)
!186 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176, isUnsigned: true)
!187 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177, isUnsigned: true)
!188 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178, isUnsigned: true)
!189 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179, isUnsigned: true)
!190 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180, isUnsigned: true)
!191 = !DIEnumerator(name: "_SC_TRACE", value: 181, isUnsigned: true)
!192 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182, isUnsigned: true)
!193 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183, isUnsigned: true)
!194 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184, isUnsigned: true)
!195 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185, isUnsigned: true)
!196 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186, isUnsigned: true)
!197 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187, isUnsigned: true)
!198 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188, isUnsigned: true)
!199 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189, isUnsigned: true)
!200 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190, isUnsigned: true)
!201 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191, isUnsigned: true)
!202 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192, isUnsigned: true)
!203 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193, isUnsigned: true)
!204 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194, isUnsigned: true)
!205 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195, isUnsigned: true)
!206 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196, isUnsigned: true)
!207 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197, isUnsigned: true)
!208 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198, isUnsigned: true)
!209 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199, isUnsigned: true)
!210 = !DIEnumerator(name: "_SC_IPV6", value: 235, isUnsigned: true)
!211 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236, isUnsigned: true)
!212 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237, isUnsigned: true)
!213 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238, isUnsigned: true)
!214 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239, isUnsigned: true)
!215 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240, isUnsigned: true)
!216 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241, isUnsigned: true)
!217 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242, isUnsigned: true)
!218 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243, isUnsigned: true)
!219 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244, isUnsigned: true)
!220 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245, isUnsigned: true)
!221 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246, isUnsigned: true)
!222 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247, isUnsigned: true)
!223 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !225, line: 50, baseType: !226, size: 8, elements: !227)
!225 = !DIFile(filename: "../include/fiobject.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!226 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!228 = !DIEnumerator(name: "FIOBJ_T_NUMBER", value: 1, isUnsigned: true)
!229 = !DIEnumerator(name: "FIOBJ_T_NULL", value: 6, isUnsigned: true)
!230 = !DIEnumerator(name: "FIOBJ_T_TRUE", value: 22, isUnsigned: true)
!231 = !DIEnumerator(name: "FIOBJ_T_FALSE", value: 38, isUnsigned: true)
!232 = !DIEnumerator(name: "FIOBJ_T_FLOAT", value: 39, isUnsigned: true)
!233 = !DIEnumerator(name: "FIOBJ_T_STRING", value: 40, isUnsigned: true)
!234 = !DIEnumerator(name: "FIOBJ_T_ARRAY", value: 41, isUnsigned: true)
!235 = !DIEnumerator(name: "FIOBJ_T_HASH", value: 42, isUnsigned: true)
!236 = !DIEnumerator(name: "FIOBJ_T_DATA", value: 43, isUnsigned: true)
!237 = !DIEnumerator(name: "FIOBJ_T_UNKNOWN", value: 44, isUnsigned: true)
!238 = !{!239, !242, !279, !281, !283, !285, !266, !286, !287, !288, !292, !251, !258}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !240, line: 90, baseType: !241)
!240 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!241 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_str_s", file: !3, line: 48, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 44, size: 512, elements: !245)
!245 = !{!246, !257, !260}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !244, file: !3, line: 45, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_header_s", file: !225, line: 332, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 327, size: 64, elements: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !225, line: 329, baseType: !251, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !225, line: 61, baseType: !224)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !248, file: !225, line: 331, baseType: !253, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !254, line: 26, baseType: !255)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !256, line: 42, baseType: !7)
!256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!257 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !244, file: !3, line: 46, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !254, line: 27, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !256, line: 45, baseType: !241)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !244, file: !3, line: 47, baseType: !261, size: 384, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_s", file: !262, line: 3409, baseType: !263)
!262 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 3390, size: 384, elements: !264)
!264 = !{!265, !268, !269, !273, !274, !275, !280}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "small", scope: !263, file: !262, line: 3394, baseType: !266, size: 8)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !254, line: 24, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !256, line: 38, baseType: !226)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !263, file: !262, line: 3395, baseType: !266, size: 8, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !263, file: !262, line: 3397, baseType: !270, size: 112, offset: 16)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 112, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 14)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !263, file: !262, line: 3401, baseType: !258, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !263, file: !262, line: 3402, baseType: !258, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !263, file: !262, line: 3403, baseType: !276, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !263, file: !262, line: 3404, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !284, line: 46, baseType: !241)
!284 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !225, line: 63, baseType: !239)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !289, line: 220, baseType: !290)
!289 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !256, line: 193, baseType: !291)
!291 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !289, line: 267, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !256, line: 206, baseType: !291)
!294 = !{!0, !295, !301, !304, !306}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "tmp", scope: !297, file: !3, line: 184, type: !243, isLocal: true, isDefinition: true)
!297 = distinct !DISubprogram(name: "fiobj_str_tmp", scope: !3, file: !3, line: 183, type: !298, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!287}
!300 = !{}
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !262, line: 433, type: !303, isLocal: false, isDefinition: true)
!303 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !262, line: 2433, type: !266, isLocal: false, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !262, line: 2434, type: !266, isLocal: false, isDefinition: true)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !225, line: 325, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 305, size: 576, elements: !311)
!311 = !{!312, !315, !323, !329, !334, !339, !347, !358, !363}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !310, file: !225, line: 307, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !310, file: !225, line: 309, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !287, !320, !279}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !287, !279}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !310, file: !225, line: 311, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!239, !328}
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !310, file: !225, line: 313, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!283, !328}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !310, file: !225, line: 315, baseType: !335, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!283, !328, !328}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !310, file: !225, line: 317, baseType: !340, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!283, !287, !283, !344, !279}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!303, !287, !279}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !310, file: !225, line: 320, baseType: !348, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !328}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !262, line: 287, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !262, line: 283, size: 192, elements: !354)
!354 = !{!355, !356, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !353, file: !262, line: 284, baseType: !283, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !353, file: !262, line: 285, baseType: !283, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !353, file: !262, line: 286, baseType: !281, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !310, file: !225, line: 322, baseType: !359, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!292, !328}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !310, file: !225, line: 324, baseType: !364, size: 64, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !328}
!368 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!369 = !{i32 7, !"Dwarf Version", i32 4}
!370 = !{i32 2, !"Debug Info Version", i32 3}
!371 = !{i32 1, !"wchar_size", i32 4}
!372 = !{!"clang version 10.0.0-4ubuntu1 "}
!373 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !262, file: !262, line: 437, type: !374, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !313, null}
!376 = !DILocalVariable(name: "format", arg: 1, scope: !373, file: !262, line: 437, type: !313)
!377 = !DILocation(line: 437, column: 28, scope: !373)
!378 = !DILocalVariable(name: "tmp___log", scope: !373, file: !262, line: 438, type: !379)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 16384, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 2048)
!382 = !DILocation(line: 438, column: 8, scope: !373)
!383 = !DILocalVariable(name: "argv", scope: !373, file: !262, line: 439, type: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !385, line: 52, baseType: !386)
!385 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !387, line: 32, baseType: !388)
!387 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !389)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !396)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !391)
!391 = !{!392, !393, !394, !395}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !390, file: !3, line: 439, baseType: !7, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !390, file: !3, line: 439, baseType: !7, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !390, file: !3, line: 439, baseType: !279, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !390, file: !3, line: 439, baseType: !279, size: 64, offset: 128)
!396 = !{!397}
!397 = !DISubrange(count: 1)
!398 = !DILocation(line: 439, column: 11, scope: !373)
!399 = !DILocation(line: 440, column: 3, scope: !373)
!400 = !DILocalVariable(name: "len___log", scope: !373, file: !262, line: 441, type: !303)
!401 = !DILocation(line: 441, column: 7, scope: !373)
!402 = !DILocation(line: 441, column: 29, scope: !373)
!403 = !DILocation(line: 441, column: 66, scope: !373)
!404 = !DILocation(line: 441, column: 74, scope: !373)
!405 = !DILocation(line: 441, column: 19, scope: !373)
!406 = !DILocation(line: 442, column: 3, scope: !373)
!407 = !DILocation(line: 443, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !373, file: !262, line: 443, column: 7)
!409 = !DILocation(line: 443, column: 17, scope: !408)
!410 = !DILocation(line: 443, column: 22, scope: !408)
!411 = !DILocation(line: 443, column: 25, scope: !408)
!412 = !DILocation(line: 443, column: 35, scope: !408)
!413 = !DILocation(line: 443, column: 7, scope: !373)
!414 = !DILocation(line: 444, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !262, line: 444, column: 9)
!416 = distinct !DILexicalBlock(scope: !408, file: !262, line: 443, column: 64)
!417 = !DILocation(line: 444, column: 19, scope: !415)
!418 = !DILocation(line: 444, column: 9, scope: !416)
!419 = !DILocation(line: 445, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !262, line: 444, column: 48)
!421 = !DILocation(line: 445, column: 24, scope: !420)
!422 = !DILocation(line: 445, column: 7, scope: !420)
!423 = !DILocation(line: 447, column: 17, scope: !420)
!424 = !DILocation(line: 448, column: 5, scope: !420)
!425 = !DILocation(line: 449, column: 65, scope: !426)
!426 = distinct !DILexicalBlock(scope: !415, file: !262, line: 448, column: 12)
!427 = !DILocation(line: 449, column: 7, scope: !426)
!428 = !DILocation(line: 450, column: 7, scope: !426)
!429 = !DILocation(line: 452, column: 3, scope: !416)
!430 = !DILocation(line: 453, column: 22, scope: !373)
!431 = !DILocation(line: 453, column: 3, scope: !373)
!432 = !DILocation(line: 453, column: 26, scope: !373)
!433 = !DILocation(line: 454, column: 13, scope: !373)
!434 = !DILocation(line: 454, column: 3, scope: !373)
!435 = !DILocation(line: 454, column: 24, scope: !373)
!436 = !DILocation(line: 455, column: 10, scope: !373)
!437 = !DILocation(line: 455, column: 21, scope: !373)
!438 = !DILocation(line: 455, column: 35, scope: !373)
!439 = !DILocation(line: 455, column: 3, scope: !373)
!440 = !DILocation(line: 456, column: 1, scope: !373)
!441 = distinct !DISubprogram(name: "fiobj_str_dealloc", scope: !3, file: !3, line: 64, type: !318, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!442 = !DILocalVariable(name: "o", arg: 1, scope: !441, file: !3, line: 64, type: !287)
!443 = !DILocation(line: 64, column: 37, scope: !441)
!444 = !DILocalVariable(name: "task", arg: 2, scope: !441, file: !3, line: 64, type: !320)
!445 = !DILocation(line: 64, column: 47, scope: !441)
!446 = !DILocalVariable(name: "arg", arg: 3, scope: !441, file: !3, line: 64, type: !279)
!447 = !DILocation(line: 64, column: 75, scope: !441)
!448 = !DILocation(line: 65, column: 17, scope: !441)
!449 = !DILocation(line: 65, column: 29, scope: !441)
!450 = !DILocation(line: 65, column: 3, scope: !441)
!451 = !DILocation(line: 66, column: 12, scope: !441)
!452 = !DILocation(line: 66, column: 3, scope: !441)
!453 = !DILocation(line: 67, column: 9, scope: !441)
!454 = !DILocation(line: 68, column: 9, scope: !441)
!455 = !DILocation(line: 69, column: 1, scope: !441)
!456 = distinct !DISubprogram(name: "fio_str2bool", scope: !3, file: !3, line: 84, type: !332, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!457 = !DILocalVariable(name: "o", arg: 1, scope: !456, file: !3, line: 84, type: !328)
!458 = !DILocation(line: 84, column: 40, scope: !456)
!459 = !DILocation(line: 85, column: 23, scope: !456)
!460 = !DILocation(line: 85, column: 35, scope: !456)
!461 = !DILocation(line: 85, column: 10, scope: !456)
!462 = !DILocation(line: 85, column: 40, scope: !456)
!463 = !DILocation(line: 85, column: 3, scope: !456)
!464 = distinct !DISubprogram(name: "fiobj_str_is_eq", scope: !3, file: !3, line: 71, type: !337, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!465 = !DILocalVariable(name: "self", arg: 1, scope: !464, file: !3, line: 71, type: !328)
!466 = !DILocation(line: 71, column: 43, scope: !464)
!467 = !DILocalVariable(name: "other", arg: 2, scope: !464, file: !3, line: 71, type: !328)
!468 = !DILocation(line: 71, column: 61, scope: !464)
!469 = !DILocation(line: 72, column: 24, scope: !464)
!470 = !DILocation(line: 72, column: 39, scope: !464)
!471 = !DILocation(line: 72, column: 45, scope: !464)
!472 = !DILocation(line: 72, column: 61, scope: !464)
!473 = !DILocation(line: 72, column: 10, scope: !464)
!474 = !DILocation(line: 72, column: 3, scope: !464)
!475 = distinct !DISubprogram(name: "fio_str2str", scope: !3, file: !3, line: 60, type: !350, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!476 = !DILocalVariable(name: "o", arg: 1, scope: !475, file: !3, line: 60, type: !328)
!477 = !DILocation(line: 60, column: 47, scope: !475)
!478 = !DILocation(line: 61, column: 29, scope: !475)
!479 = !DILocation(line: 61, column: 10, scope: !475)
!480 = !DILocation(line: 61, column: 3, scope: !475)
!481 = distinct !DISubprogram(name: "fio_str2i", scope: !3, file: !3, line: 75, type: !361, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!482 = !DILocalVariable(name: "o", arg: 1, scope: !481, file: !3, line: 75, type: !328)
!483 = !DILocation(line: 75, column: 39, scope: !481)
!484 = !DILocalVariable(name: "pos", scope: !481, file: !3, line: 76, type: !281)
!485 = !DILocation(line: 76, column: 9, scope: !481)
!486 = !DILocation(line: 76, column: 29, scope: !481)
!487 = !DILocation(line: 76, column: 41, scope: !481)
!488 = !DILocation(line: 76, column: 15, scope: !481)
!489 = !DILocation(line: 77, column: 10, scope: !481)
!490 = !DILocation(line: 77, column: 3, scope: !481)
!491 = distinct !DISubprogram(name: "fio_str2f", scope: !3, file: !3, line: 79, type: !366, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!492 = !DILocalVariable(name: "o", arg: 1, scope: !491, file: !3, line: 79, type: !328)
!493 = !DILocation(line: 79, column: 37, scope: !491)
!494 = !DILocalVariable(name: "pos", scope: !491, file: !3, line: 80, type: !281)
!495 = !DILocation(line: 80, column: 9, scope: !491)
!496 = !DILocation(line: 80, column: 29, scope: !491)
!497 = !DILocation(line: 80, column: 41, scope: !491)
!498 = !DILocation(line: 80, column: 15, scope: !491)
!499 = !DILocation(line: 81, column: 10, scope: !491)
!500 = !DILocation(line: 81, column: 3, scope: !491)
!501 = distinct !DISubprogram(name: "fiobj_str_buf", scope: !3, file: !3, line: 106, type: !502, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!502 = !DISubroutineType(types: !503)
!503 = !{!287, !283}
!504 = !DILocalVariable(name: "capa", arg: 1, scope: !501, file: !3, line: 106, type: !283)
!505 = !DILocation(line: 106, column: 28, scope: !501)
!506 = !DILocation(line: 107, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !501, file: !3, line: 107, column: 7)
!508 = !DILocation(line: 107, column: 7, scope: !501)
!509 = !DILocation(line: 108, column: 12, scope: !507)
!510 = !DILocation(line: 108, column: 17, scope: !507)
!511 = !DILocation(line: 108, column: 10, scope: !507)
!512 = !DILocation(line: 108, column: 5, scope: !507)
!513 = !DILocation(line: 110, column: 12, scope: !507)
!514 = !DILocation(line: 110, column: 10, scope: !507)
!515 = !DILocalVariable(name: "s", scope: !501, file: !3, line: 112, type: !242)
!516 = !DILocation(line: 112, column: 16, scope: !501)
!517 = !DILocation(line: 112, column: 20, scope: !501)
!518 = !DILocation(line: 113, column: 8, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 113, column: 7)
!520 = !DILexicalBlockFile(scope: !501, file: !3, discriminator: 0)
!521 = !DILocation(line: 113, column: 7, scope: !520)
!522 = !DILocation(line: 114, column: 5, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 113, column: 11)
!524 = !DILocation(line: 115, column: 10, scope: !523)
!525 = !DILocation(line: 115, column: 5, scope: !523)
!526 = !DILocation(line: 117, column: 4, scope: !520)
!527 = !DILocation(line: 117, column: 21, scope: !520)
!528 = !DILocation(line: 119, column: 11, scope: !520)
!529 = !DILocation(line: 123, column: 14, scope: !520)
!530 = !DILocation(line: 117, column: 8, scope: !520)
!531 = !DILocation(line: 125, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !520, file: !3, line: 125, column: 7)
!533 = !DILocation(line: 125, column: 7, scope: !520)
!534 = !DILocation(line: 126, column: 26, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !3, line: 125, column: 13)
!536 = !DILocation(line: 126, column: 29, scope: !535)
!537 = !DILocation(line: 126, column: 34, scope: !535)
!538 = !DILocation(line: 126, column: 5, scope: !535)
!539 = !DILocation(line: 127, column: 3, scope: !535)
!540 = !DILocation(line: 128, column: 22, scope: !520)
!541 = !DILocation(line: 128, column: 11, scope: !520)
!542 = !DILocation(line: 128, column: 24, scope: !520)
!543 = !DILocation(line: 128, column: 3, scope: !520)
!544 = distinct !DISubprogram(name: "fio_str_capa_assert", scope: !262, file: !262, line: 4005, type: !545, scopeLine: 4005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!545 = !DISubroutineType(types: !546)
!546 = !{!352, !285, !283}
!547 = !DILocalVariable(name: "s", arg: 1, scope: !544, file: !262, line: 4005, type: !285)
!548 = !DILocation(line: 4005, column: 56, scope: !544)
!549 = !DILocalVariable(name: "needed", arg: 2, scope: !544, file: !262, line: 4005, type: !283)
!550 = !DILocation(line: 4005, column: 66, scope: !544)
!551 = !DILocation(line: 4006, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !544, file: !262, line: 4006, column: 7)
!553 = !DILocation(line: 4006, column: 10, scope: !552)
!554 = !DILocation(line: 4006, column: 13, scope: !552)
!555 = !DILocation(line: 4006, column: 16, scope: !552)
!556 = !DILocation(line: 4006, column: 7, scope: !544)
!557 = !DILocation(line: 4007, column: 25, scope: !558)
!558 = distinct !DILexicalBlock(scope: !552, file: !262, line: 4006, column: 24)
!559 = !DILocation(line: 4007, column: 12, scope: !558)
!560 = !DILocation(line: 4007, column: 5, scope: !558)
!561 = !DILocalVariable(name: "tmp", scope: !544, file: !262, line: 4009, type: !281)
!562 = !DILocation(line: 4009, column: 9, scope: !544)
!563 = !DILocation(line: 4010, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !544, file: !262, line: 4010, column: 7)
!565 = !DILocation(line: 4010, column: 10, scope: !564)
!566 = !DILocation(line: 4010, column: 16, scope: !564)
!567 = !DILocation(line: 4010, column: 20, scope: !564)
!568 = !DILocation(line: 4010, column: 23, scope: !564)
!569 = !DILocation(line: 4010, column: 7, scope: !544)
!570 = !DILocation(line: 4011, column: 9, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !262, line: 4011, column: 9)
!572 = distinct !DILexicalBlock(scope: !564, file: !262, line: 4010, column: 29)
!573 = !DILocation(line: 4011, column: 16, scope: !571)
!574 = !DILocation(line: 4011, column: 9, scope: !572)
!575 = !DILocation(line: 4012, column: 30, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !262, line: 4011, column: 38)
!577 = !DILocation(line: 4013, column: 47, scope: !576)
!578 = !DILocation(line: 4013, column: 50, scope: !576)
!579 = !DILocation(line: 4013, column: 56, scope: !576)
!580 = !DILocation(line: 4013, column: 38, scope: !576)
!581 = !DILocation(line: 4014, column: 39, scope: !576)
!582 = !DILocation(line: 4012, column: 7, scope: !576)
!583 = !DILocation(line: 4016, column: 5, scope: !572)
!584 = !DILocation(line: 4018, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !544, file: !262, line: 4018, column: 7)
!586 = !DILocation(line: 4018, column: 16, scope: !585)
!587 = !DILocation(line: 4018, column: 19, scope: !585)
!588 = !DILocation(line: 4018, column: 14, scope: !585)
!589 = !DILocation(line: 4018, column: 7, scope: !544)
!590 = !DILocation(line: 4019, column: 28, scope: !591)
!591 = distinct !DILexicalBlock(scope: !585, file: !262, line: 4018, column: 25)
!592 = !DILocation(line: 4019, column: 37, scope: !591)
!593 = !DILocation(line: 4019, column: 40, scope: !591)
!594 = !DILocation(line: 4019, column: 53, scope: !591)
!595 = !DILocation(line: 4019, column: 56, scope: !591)
!596 = !DILocation(line: 4019, column: 69, scope: !591)
!597 = !DILocation(line: 4019, column: 72, scope: !591)
!598 = !DILocation(line: 4019, column: 5, scope: !591)
!599 = !DILocation(line: 4021, column: 12, scope: !544)
!600 = !DILocation(line: 4021, column: 10, scope: !544)
!601 = !DILocation(line: 4022, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !544, file: !262, line: 4022, column: 7)
!603 = !DILocation(line: 4022, column: 10, scope: !602)
!604 = !DILocation(line: 4022, column: 18, scope: !602)
!605 = !DILocation(line: 4022, column: 7, scope: !544)
!606 = !DILocation(line: 4023, column: 19, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !262, line: 4022, column: 31)
!608 = !DILocation(line: 4023, column: 9, scope: !607)
!609 = !DILocation(line: 4024, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !262, line: 4024, column: 5)
!611 = !DILocation(line: 4024, column: 5, scope: !607)
!612 = !DILocation(line: 4024, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !262, line: 4024, column: 5)
!614 = !DILocation(line: 4024, column: 5, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !262, line: 4024, column: 5)
!616 = distinct !DILexicalBlock(scope: !613, file: !262, line: 4024, column: 5)
!617 = !DILocation(line: 4024, column: 5, scope: !616)
!618 = !DILocation(line: 4024, column: 5, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !262, line: 4024, column: 5)
!620 = !DILocation(line: 4025, column: 3, scope: !607)
!621 = !DILocation(line: 4026, column: 19, scope: !622)
!622 = distinct !DILexicalBlock(scope: !602, file: !262, line: 4025, column: 10)
!623 = !DILocation(line: 4026, column: 9, scope: !622)
!624 = !DILocation(line: 4027, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !262, line: 4027, column: 5)
!626 = !DILocation(line: 4027, column: 5, scope: !622)
!627 = !DILocation(line: 4027, column: 5, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !262, line: 4027, column: 5)
!629 = !DILocation(line: 4027, column: 5, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !262, line: 4027, column: 5)
!631 = distinct !DILexicalBlock(scope: !628, file: !262, line: 4027, column: 5)
!632 = !DILocation(line: 4027, column: 5, scope: !631)
!633 = !DILocation(line: 4027, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !262, line: 4027, column: 5)
!635 = !DILocation(line: 4028, column: 12, scope: !622)
!636 = !DILocation(line: 4028, column: 17, scope: !622)
!637 = !DILocation(line: 4028, column: 20, scope: !622)
!638 = !DILocation(line: 4028, column: 26, scope: !622)
!639 = !DILocation(line: 4028, column: 29, scope: !622)
!640 = !DILocation(line: 4028, column: 33, scope: !622)
!641 = !DILocation(line: 4028, column: 5, scope: !622)
!642 = !DILocation(line: 4029, column: 9, scope: !643)
!643 = distinct !DILexicalBlock(scope: !622, file: !262, line: 4029, column: 9)
!644 = !DILocation(line: 4029, column: 12, scope: !643)
!645 = !DILocation(line: 4029, column: 9, scope: !622)
!646 = !DILocation(line: 4030, column: 7, scope: !643)
!647 = !DILocation(line: 4030, column: 10, scope: !643)
!648 = !DILocation(line: 4030, column: 18, scope: !643)
!649 = !DILocation(line: 4030, column: 21, scope: !643)
!650 = !DILocation(line: 4031, column: 5, scope: !622)
!651 = !DILocation(line: 4031, column: 8, scope: !622)
!652 = !DILocation(line: 4031, column: 16, scope: !622)
!653 = !DILocation(line: 4033, column: 13, scope: !544)
!654 = !DILocation(line: 4033, column: 3, scope: !544)
!655 = !DILocation(line: 4033, column: 6, scope: !544)
!656 = !DILocation(line: 4033, column: 11, scope: !544)
!657 = !DILocation(line: 4034, column: 13, scope: !544)
!658 = !DILocation(line: 4034, column: 3, scope: !544)
!659 = !DILocation(line: 4034, column: 6, scope: !544)
!660 = !DILocation(line: 4034, column: 11, scope: !544)
!661 = !DILocation(line: 4035, column: 3, scope: !544)
!662 = !DILocation(line: 4035, column: 6, scope: !544)
!663 = !DILocation(line: 4035, column: 11, scope: !544)
!664 = !DILocation(line: 4035, column: 19, scope: !544)
!665 = !DILocation(line: 4036, column: 26, scope: !544)
!666 = !DILocation(line: 4036, column: 35, scope: !544)
!667 = !DILocation(line: 4036, column: 38, scope: !544)
!668 = !DILocation(line: 4036, column: 51, scope: !544)
!669 = !DILocation(line: 4036, column: 54, scope: !544)
!670 = !DILocation(line: 4036, column: 67, scope: !544)
!671 = !DILocation(line: 4036, column: 70, scope: !544)
!672 = !DILocation(line: 4036, column: 3, scope: !544)
!673 = !DILabel(scope: !544, name: "is_small", file: !262, line: 4038)
!674 = !DILocation(line: 4038, column: 1, scope: !544)
!675 = !DILocation(line: 4040, column: 12, scope: !544)
!676 = !DILocation(line: 4040, column: 10, scope: !544)
!677 = !DILocation(line: 4041, column: 17, scope: !544)
!678 = !DILocation(line: 4041, column: 7, scope: !544)
!679 = !DILocation(line: 4042, column: 3, scope: !680)
!680 = distinct !DILexicalBlock(scope: !544, file: !262, line: 4042, column: 3)
!681 = !DILocation(line: 4042, column: 3, scope: !544)
!682 = !DILocation(line: 4042, column: 3, scope: !683)
!683 = distinct !DILexicalBlock(scope: !680, file: !262, line: 4042, column: 3)
!684 = !DILocation(line: 4042, column: 3, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !262, line: 4042, column: 3)
!686 = distinct !DILexicalBlock(scope: !683, file: !262, line: 4042, column: 3)
!687 = !DILocation(line: 4042, column: 3, scope: !686)
!688 = !DILocation(line: 4042, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !262, line: 4042, column: 3)
!690 = !DILocalVariable(name: "existing_len", scope: !544, file: !262, line: 4043, type: !691)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!692 = !DILocation(line: 4043, column: 16, scope: !544)
!693 = !DILocation(line: 4043, column: 41, scope: !544)
!694 = !DILocation(line: 4043, column: 44, scope: !544)
!695 = !DILocation(line: 4043, column: 50, scope: !544)
!696 = !DILocation(line: 4043, column: 56, scope: !544)
!697 = !DILocation(line: 4043, column: 31, scope: !544)
!698 = !DILocation(line: 4044, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !544, file: !262, line: 4044, column: 7)
!700 = !DILocation(line: 4044, column: 7, scope: !544)
!701 = !DILocation(line: 4045, column: 12, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !262, line: 4044, column: 21)
!703 = !DILocation(line: 4045, column: 17, scope: !702)
!704 = !DILocation(line: 4045, column: 40, scope: !702)
!705 = !DILocation(line: 4045, column: 53, scope: !702)
!706 = !DILocation(line: 4045, column: 5, scope: !702)
!707 = !DILocation(line: 4046, column: 3, scope: !702)
!708 = !DILocation(line: 4047, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !699, file: !262, line: 4046, column: 10)
!710 = !DILocation(line: 4047, column: 12, scope: !709)
!711 = !DILocation(line: 4050, column: 4, scope: !544)
!712 = !DILocation(line: 4050, column: 19, scope: !544)
!713 = !DILocation(line: 4052, column: 15, scope: !544)
!714 = !DILocation(line: 4053, column: 14, scope: !544)
!715 = !DILocation(line: 4055, column: 15, scope: !544)
!716 = !DILocation(line: 4050, column: 8, scope: !544)
!717 = !DILocation(line: 4067, column: 26, scope: !544)
!718 = !DILocation(line: 4067, column: 35, scope: !544)
!719 = !DILocation(line: 4067, column: 50, scope: !544)
!720 = !DILocation(line: 4067, column: 72, scope: !544)
!721 = !DILocation(line: 4067, column: 75, scope: !544)
!722 = !DILocation(line: 4067, column: 3, scope: !544)
!723 = !DILocation(line: 4068, column: 1, scope: !544)
!724 = distinct !DISubprogram(name: "fiobj_str_new", scope: !3, file: !3, line: 132, type: !725, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!725 = !DISubroutineType(types: !726)
!726 = !{!287, !313, !283}
!727 = !DILocalVariable(name: "str", arg: 1, scope: !724, file: !3, line: 132, type: !313)
!728 = !DILocation(line: 132, column: 33, scope: !724)
!729 = !DILocalVariable(name: "len", arg: 2, scope: !724, file: !3, line: 132, type: !283)
!730 = !DILocation(line: 132, column: 45, scope: !724)
!731 = !DILocalVariable(name: "s", scope: !724, file: !3, line: 133, type: !242)
!732 = !DILocation(line: 133, column: 16, scope: !724)
!733 = !DILocation(line: 133, column: 20, scope: !724)
!734 = !DILocation(line: 134, column: 8, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 134, column: 7)
!736 = !DILexicalBlockFile(scope: !724, file: !3, discriminator: 0)
!737 = !DILocation(line: 134, column: 7, scope: !736)
!738 = !DILocation(line: 135, column: 5, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !3, line: 134, column: 11)
!740 = !DILocation(line: 136, column: 10, scope: !739)
!741 = !DILocation(line: 136, column: 5, scope: !739)
!742 = !DILocation(line: 138, column: 4, scope: !736)
!743 = !DILocation(line: 138, column: 21, scope: !736)
!744 = !DILocation(line: 140, column: 11, scope: !736)
!745 = !DILocation(line: 144, column: 14, scope: !736)
!746 = !DILocation(line: 138, column: 8, scope: !736)
!747 = !DILocation(line: 146, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !736, file: !3, line: 146, column: 7)
!749 = !DILocation(line: 146, column: 11, scope: !748)
!750 = !DILocation(line: 146, column: 14, scope: !748)
!751 = !DILocation(line: 146, column: 7, scope: !736)
!752 = !DILocation(line: 147, column: 20, scope: !753)
!753 = distinct !DILexicalBlock(scope: !748, file: !3, line: 146, column: 19)
!754 = !DILocation(line: 147, column: 23, scope: !753)
!755 = !DILocation(line: 147, column: 28, scope: !753)
!756 = !DILocation(line: 147, column: 33, scope: !753)
!757 = !DILocation(line: 147, column: 5, scope: !753)
!758 = !DILocation(line: 148, column: 3, scope: !753)
!759 = !DILocation(line: 149, column: 22, scope: !736)
!760 = !DILocation(line: 149, column: 11, scope: !736)
!761 = !DILocation(line: 149, column: 24, scope: !736)
!762 = !DILocation(line: 149, column: 3, scope: !736)
!763 = distinct !DISubprogram(name: "fio_str_write", scope: !262, file: !262, line: 4323, type: !764, scopeLine: 4324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!764 = !DISubroutineType(types: !765)
!765 = !{!352, !285, !766, !283}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!768 = !DILocalVariable(name: "s", arg: 1, scope: !763, file: !262, line: 4323, type: !285)
!769 = !DILocation(line: 4323, column: 57, scope: !763)
!770 = !DILocalVariable(name: "src", arg: 2, scope: !763, file: !262, line: 4323, type: !766)
!771 = !DILocation(line: 4323, column: 72, scope: !763)
!772 = !DILocalVariable(name: "src_len", arg: 3, scope: !763, file: !262, line: 4324, type: !283)
!773 = !DILocation(line: 4324, column: 53, scope: !763)
!774 = !DILocation(line: 4325, column: 8, scope: !775)
!775 = distinct !DILexicalBlock(scope: !763, file: !262, line: 4325, column: 7)
!776 = !DILocation(line: 4325, column: 10, scope: !775)
!777 = !DILocation(line: 4325, column: 14, scope: !775)
!778 = !DILocation(line: 4325, column: 22, scope: !775)
!779 = !DILocation(line: 4325, column: 26, scope: !775)
!780 = !DILocation(line: 4325, column: 30, scope: !775)
!781 = !DILocation(line: 4325, column: 33, scope: !775)
!782 = !DILocation(line: 4325, column: 36, scope: !775)
!783 = !DILocation(line: 4325, column: 7, scope: !763)
!784 = !DILocation(line: 4326, column: 25, scope: !775)
!785 = !DILocation(line: 4326, column: 12, scope: !775)
!786 = !DILocation(line: 4326, column: 5, scope: !775)
!787 = !DILocalVariable(name: "state", scope: !763, file: !262, line: 4327, type: !352)
!788 = !DILocation(line: 4327, column: 18, scope: !763)
!789 = !DILocation(line: 4327, column: 41, scope: !763)
!790 = !DILocation(line: 4327, column: 44, scope: !763)
!791 = !DILocation(line: 4327, column: 66, scope: !763)
!792 = !DILocation(line: 4327, column: 54, scope: !763)
!793 = !DILocation(line: 4327, column: 52, scope: !763)
!794 = !DILocation(line: 4327, column: 26, scope: !763)
!795 = !DILocation(line: 4328, column: 16, scope: !763)
!796 = !DILocation(line: 4328, column: 30, scope: !763)
!797 = !DILocation(line: 4328, column: 36, scope: !763)
!798 = !DILocation(line: 4328, column: 34, scope: !763)
!799 = !DILocation(line: 4328, column: 21, scope: !763)
!800 = !DILocation(line: 4328, column: 46, scope: !763)
!801 = !DILocation(line: 4328, column: 51, scope: !763)
!802 = !DILocation(line: 4328, column: 3, scope: !763)
!803 = !DILocation(line: 4329, column: 10, scope: !763)
!804 = !DILocation(line: 4329, column: 3, scope: !763)
!805 = !DILocation(line: 4330, column: 1, scope: !763)
!806 = distinct !DISubprogram(name: "fiobj_str_move", scope: !3, file: !3, line: 162, type: !807, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!807 = !DISubroutineType(types: !808)
!808 = !{!287, !281, !283, !283}
!809 = !DILocalVariable(name: "str", arg: 1, scope: !806, file: !3, line: 162, type: !281)
!810 = !DILocation(line: 162, column: 28, scope: !806)
!811 = !DILocalVariable(name: "len", arg: 2, scope: !806, file: !3, line: 162, type: !283)
!812 = !DILocation(line: 162, column: 40, scope: !806)
!813 = !DILocalVariable(name: "capacity", arg: 3, scope: !806, file: !3, line: 162, type: !283)
!814 = !DILocation(line: 162, column: 52, scope: !806)
!815 = !DILocalVariable(name: "s", scope: !806, file: !3, line: 163, type: !242)
!816 = !DILocation(line: 163, column: 16, scope: !806)
!817 = !DILocation(line: 163, column: 20, scope: !806)
!818 = !DILocation(line: 164, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 164, column: 7)
!820 = !DILexicalBlockFile(scope: !806, file: !3, discriminator: 0)
!821 = !DILocation(line: 164, column: 7, scope: !820)
!822 = !DILocation(line: 165, column: 5, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 164, column: 11)
!824 = !DILocation(line: 166, column: 10, scope: !823)
!825 = !DILocation(line: 166, column: 5, scope: !823)
!826 = !DILocation(line: 168, column: 4, scope: !820)
!827 = !DILocation(line: 168, column: 21, scope: !820)
!828 = !DILocation(line: 170, column: 11, scope: !820)
!829 = !DILocation(line: 174, column: 14, scope: !820)
!830 = !DILocation(line: 168, column: 8, scope: !820)
!831 = !DILocation(line: 176, column: 22, scope: !820)
!832 = !DILocation(line: 176, column: 11, scope: !820)
!833 = !DILocation(line: 176, column: 24, scope: !820)
!834 = !DILocation(line: 176, column: 3, scope: !820)
!835 = !DILocation(line: 192, column: 18, scope: !297)
!836 = !DILocation(line: 193, column: 3, scope: !297)
!837 = !DILocation(line: 194, column: 3, scope: !297)
!838 = distinct !DISubprogram(name: "fio_str_resize", scope: !262, file: !262, line: 3925, type: !545, scopeLine: 3925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!839 = !DILocalVariable(name: "s", arg: 1, scope: !838, file: !262, line: 3925, type: !285)
!840 = !DILocation(line: 3925, column: 58, scope: !838)
!841 = !DILocalVariable(name: "size", arg: 2, scope: !838, file: !262, line: 3925, type: !283)
!842 = !DILocation(line: 3925, column: 68, scope: !838)
!843 = !DILocation(line: 3926, column: 8, scope: !844)
!844 = distinct !DILexicalBlock(scope: !838, file: !262, line: 3926, column: 7)
!845 = !DILocation(line: 3926, column: 10, scope: !844)
!846 = !DILocation(line: 3926, column: 13, scope: !844)
!847 = !DILocation(line: 3926, column: 16, scope: !844)
!848 = !DILocation(line: 3926, column: 7, scope: !838)
!849 = !DILocation(line: 3927, column: 25, scope: !850)
!850 = distinct !DILexicalBlock(scope: !844, file: !262, line: 3926, column: 24)
!851 = !DILocation(line: 3927, column: 12, scope: !850)
!852 = !DILocation(line: 3927, column: 5, scope: !850)
!853 = !DILocation(line: 3929, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !838, file: !262, line: 3929, column: 7)
!855 = !DILocation(line: 3929, column: 10, scope: !854)
!856 = !DILocation(line: 3929, column: 16, scope: !854)
!857 = !DILocation(line: 3929, column: 20, scope: !854)
!858 = !DILocation(line: 3929, column: 23, scope: !854)
!859 = !DILocation(line: 3929, column: 7, scope: !838)
!860 = !DILocation(line: 3930, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !262, line: 3930, column: 9)
!862 = distinct !DILexicalBlock(scope: !854, file: !262, line: 3929, column: 29)
!863 = !DILocation(line: 3930, column: 14, scope: !861)
!864 = !DILocation(line: 3930, column: 9, scope: !862)
!865 = !DILocation(line: 3931, column: 30, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !262, line: 3930, column: 36)
!867 = !DILocation(line: 3931, column: 35, scope: !866)
!868 = !DILocation(line: 3931, column: 41, scope: !866)
!869 = !DILocation(line: 3931, column: 46, scope: !866)
!870 = !DILocation(line: 3931, column: 18, scope: !866)
!871 = !DILocation(line: 3931, column: 7, scope: !866)
!872 = !DILocation(line: 3931, column: 10, scope: !866)
!873 = !DILocation(line: 3931, column: 16, scope: !866)
!874 = !DILocation(line: 3932, column: 7, scope: !866)
!875 = !DILocation(line: 3932, column: 29, scope: !866)
!876 = !DILocation(line: 3932, column: 35, scope: !866)
!877 = !DILocation(line: 3933, column: 30, scope: !866)
!878 = !DILocation(line: 3934, column: 38, scope: !866)
!879 = !DILocation(line: 3935, column: 39, scope: !866)
!880 = !DILocation(line: 3933, column: 7, scope: !866)
!881 = !DILocation(line: 3937, column: 5, scope: !862)
!882 = !DILocation(line: 3937, column: 8, scope: !862)
!883 = !DILocation(line: 3937, column: 14, scope: !862)
!884 = !DILocation(line: 3938, column: 25, scope: !862)
!885 = !DILocation(line: 3938, column: 28, scope: !862)
!886 = !DILocation(line: 3938, column: 5, scope: !862)
!887 = !DILocation(line: 3939, column: 5, scope: !862)
!888 = !DILocation(line: 3941, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !838, file: !262, line: 3941, column: 7)
!890 = !DILocation(line: 3941, column: 15, scope: !889)
!891 = !DILocation(line: 3941, column: 18, scope: !889)
!892 = !DILocation(line: 3941, column: 12, scope: !889)
!893 = !DILocation(line: 3941, column: 7, scope: !838)
!894 = !DILocation(line: 3942, column: 36, scope: !895)
!895 = distinct !DILexicalBlock(scope: !889, file: !262, line: 3941, column: 24)
!896 = !DILocation(line: 3942, column: 39, scope: !895)
!897 = !DILocation(line: 3942, column: 25, scope: !895)
!898 = !DILocation(line: 3942, column: 48, scope: !895)
!899 = !DILocation(line: 3942, column: 51, scope: !895)
!900 = !DILocation(line: 3942, column: 57, scope: !895)
!901 = !DILocation(line: 3942, column: 60, scope: !895)
!902 = !DILocation(line: 3942, column: 14, scope: !895)
!903 = !DILocation(line: 3942, column: 5, scope: !895)
!904 = !DILocation(line: 3942, column: 8, scope: !895)
!905 = !DILocation(line: 3942, column: 12, scope: !895)
!906 = !DILocation(line: 3943, column: 25, scope: !895)
!907 = !DILocation(line: 3943, column: 28, scope: !895)
!908 = !DILocation(line: 3943, column: 5, scope: !895)
!909 = !DILocation(line: 3944, column: 3, scope: !895)
!910 = !DILabel(scope: !838, name: "big", file: !262, line: 3946)
!911 = !DILocation(line: 3946, column: 1, scope: !838)
!912 = !DILocation(line: 3947, column: 12, scope: !838)
!913 = !DILocation(line: 3947, column: 3, scope: !838)
!914 = !DILocation(line: 3947, column: 6, scope: !838)
!915 = !DILocation(line: 3947, column: 10, scope: !838)
!916 = !DILocation(line: 3948, column: 3, scope: !838)
!917 = !DILocation(line: 3948, column: 6, scope: !838)
!918 = !DILocation(line: 3948, column: 11, scope: !838)
!919 = !DILocation(line: 3948, column: 17, scope: !838)
!920 = !DILocation(line: 3949, column: 26, scope: !838)
!921 = !DILocation(line: 3949, column: 35, scope: !838)
!922 = !DILocation(line: 3949, column: 38, scope: !838)
!923 = !DILocation(line: 3949, column: 51, scope: !838)
!924 = !DILocation(line: 3949, column: 65, scope: !838)
!925 = !DILocation(line: 3949, column: 68, scope: !838)
!926 = !DILocation(line: 3949, column: 3, scope: !838)
!927 = !DILocation(line: 3950, column: 1, scope: !838)
!928 = distinct !DISubprogram(name: "fiobj_str_freeze", scope: !3, file: !3, line: 198, type: !929, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !287}
!931 = !DILocalVariable(name: "str", arg: 1, scope: !928, file: !3, line: 198, type: !287)
!932 = !DILocation(line: 198, column: 29, scope: !928)
!933 = !DILocation(line: 199, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !928, file: !3, line: 199, column: 7)
!935 = !DILocation(line: 199, column: 7, scope: !928)
!936 = !DILocation(line: 200, column: 21, scope: !934)
!937 = !DILocation(line: 200, column: 35, scope: !934)
!938 = !DILocation(line: 200, column: 5, scope: !934)
!939 = !DILocation(line: 201, column: 1, scope: !928)
!940 = distinct !DISubprogram(name: "fiobj_type_is", scope: !225, file: !225, line: 269, type: !941, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!941 = !DISubroutineType(types: !942)
!942 = !{!283, !287, !251}
!943 = !DILocalVariable(name: "o", arg: 1, scope: !940, file: !225, line: 269, type: !287)
!944 = !DILocation(line: 269, column: 39, scope: !940)
!945 = !DILocalVariable(name: "type", arg: 2, scope: !940, file: !225, line: 269, type: !251)
!946 = !DILocation(line: 269, column: 58, scope: !940)
!947 = !DILocation(line: 270, column: 11, scope: !940)
!948 = !DILocation(line: 270, column: 3, scope: !940)
!949 = !DILocation(line: 272, column: 13, scope: !950)
!950 = distinct !DILexicalBlock(scope: !940, file: !225, line: 270, column: 17)
!951 = !DILocation(line: 272, column: 15, scope: !950)
!952 = !DILocation(line: 272, column: 39, scope: !950)
!953 = !DILocation(line: 273, column: 32, scope: !950)
!954 = !DILocation(line: 273, column: 13, scope: !950)
!955 = !DILocation(line: 273, column: 12, scope: !950)
!956 = !DILocation(line: 273, column: 38, scope: !950)
!957 = !DILocation(line: 272, column: 12, scope: !950)
!958 = !DILocation(line: 272, column: 5, scope: !950)
!959 = !DILocation(line: 275, column: 13, scope: !950)
!960 = !DILocation(line: 275, column: 15, scope: !950)
!961 = !DILocation(line: 275, column: 18, scope: !950)
!962 = !DILocation(line: 275, column: 23, scope: !950)
!963 = !DILocation(line: 275, column: 20, scope: !950)
!964 = !DILocation(line: 275, column: 12, scope: !950)
!965 = !DILocation(line: 275, column: 5, scope: !950)
!966 = !DILocation(line: 277, column: 12, scope: !950)
!967 = !DILocation(line: 277, column: 17, scope: !950)
!968 = !DILocation(line: 277, column: 14, scope: !950)
!969 = !DILocation(line: 277, column: 5, scope: !950)
!970 = !DILocation(line: 279, column: 12, scope: !950)
!971 = !DILocation(line: 279, column: 17, scope: !950)
!972 = !DILocation(line: 279, column: 14, scope: !950)
!973 = !DILocation(line: 279, column: 5, scope: !950)
!974 = !DILocation(line: 281, column: 38, scope: !950)
!975 = !DILocation(line: 281, column: 40, scope: !950)
!976 = !DILocation(line: 281, column: 64, scope: !950)
!977 = !DILocation(line: 281, column: 69, scope: !950)
!978 = !DILocation(line: 282, column: 14, scope: !950)
!979 = !DILocation(line: 282, column: 16, scope: !950)
!980 = !DILocation(line: 282, column: 43, scope: !950)
!981 = !DILocation(line: 282, column: 68, scope: !950)
!982 = !DILocation(line: 281, column: 12, scope: !950)
!983 = !DILocation(line: 281, column: 5, scope: !950)
!984 = !DILocation(line: 287, column: 16, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !225, line: 286, column: 29)
!986 = distinct !DILexicalBlock(scope: !950, file: !225, line: 286, column: 9)
!987 = !DILocation(line: 287, column: 18, scope: !985)
!988 = !DILocation(line: 287, column: 42, scope: !985)
!989 = !DILocation(line: 287, column: 47, scope: !985)
!990 = !DILocation(line: 288, column: 16, scope: !985)
!991 = !DILocation(line: 288, column: 18, scope: !985)
!992 = !DILocation(line: 288, column: 45, scope: !985)
!993 = !DILocation(line: 0, scope: !985)
!994 = !DILocation(line: 287, column: 14, scope: !985)
!995 = !DILocation(line: 287, column: 7, scope: !985)
!996 = !DILocation(line: 295, column: 12, scope: !950)
!997 = !DILocation(line: 295, column: 34, scope: !950)
!998 = !DILocation(line: 296, column: 32, scope: !950)
!999 = !DILocation(line: 296, column: 12, scope: !950)
!1000 = !DILocation(line: 296, column: 52, scope: !950)
!1001 = !DILocation(line: 296, column: 49, scope: !950)
!1002 = !DILocation(line: 0, scope: !950)
!1003 = !DILocation(line: 295, column: 5, scope: !950)
!1004 = !DILocation(line: 298, column: 10, scope: !940)
!1005 = !DILocation(line: 298, column: 32, scope: !940)
!1006 = !DILocation(line: 298, column: 55, scope: !940)
!1007 = !DILocation(line: 298, column: 35, scope: !940)
!1008 = !DILocation(line: 298, column: 75, scope: !940)
!1009 = !DILocation(line: 298, column: 72, scope: !940)
!1010 = !DILocation(line: 0, scope: !940)
!1011 = !DILocation(line: 298, column: 3, scope: !940)
!1012 = !DILocation(line: 299, column: 1, scope: !940)
!1013 = distinct !DISubprogram(name: "fio_str_freeze", scope: !262, file: !262, line: 4548, type: !1014, scopeLine: 4548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !285}
!1016 = !DILocalVariable(name: "s", arg: 1, scope: !1013, file: !262, line: 4548, type: !285)
!1017 = !DILocation(line: 4548, column: 48, scope: !1013)
!1018 = !DILocation(line: 4549, column: 8, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1013, file: !262, line: 4549, column: 7)
!1020 = !DILocation(line: 4549, column: 7, scope: !1013)
!1021 = !DILocation(line: 4550, column: 5, scope: !1019)
!1022 = !DILocation(line: 4551, column: 3, scope: !1013)
!1023 = !DILocation(line: 4551, column: 6, scope: !1013)
!1024 = !DILocation(line: 4551, column: 13, scope: !1013)
!1025 = !DILocation(line: 4552, column: 1, scope: !1013)
!1026 = distinct !DISubprogram(name: "fiobj_str_capa_assert", scope: !3, file: !3, line: 204, type: !1027, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!283, !287, !283}
!1029 = !DILocalVariable(name: "str", arg: 1, scope: !1026, file: !3, line: 204, type: !287)
!1030 = !DILocation(line: 204, column: 36, scope: !1026)
!1031 = !DILocalVariable(name: "size", arg: 2, scope: !1026, file: !3, line: 204, type: !283)
!1032 = !DILocation(line: 204, column: 48, scope: !1026)
!1033 = !DILocation(line: 206, column: 3, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 206, column: 3)
!1035 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 206, column: 3)
!1036 = !DILocation(line: 206, column: 3, scope: !1035)
!1037 = !DILocation(line: 207, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 207, column: 7)
!1039 = !DILocation(line: 207, column: 21, scope: !1038)
!1040 = !DILocation(line: 207, column: 25, scope: !1038)
!1041 = !DILocation(line: 207, column: 7, scope: !1026)
!1042 = !DILocation(line: 208, column: 5, scope: !1038)
!1043 = !DILocalVariable(name: "state", scope: !1026, file: !3, line: 209, type: !352)
!1044 = !DILocation(line: 209, column: 18, scope: !1026)
!1045 = !DILocation(line: 209, column: 47, scope: !1026)
!1046 = !DILocation(line: 209, column: 61, scope: !1026)
!1047 = !DILocation(line: 209, column: 66, scope: !1026)
!1048 = !DILocation(line: 209, column: 26, scope: !1026)
!1049 = !DILocation(line: 210, column: 16, scope: !1026)
!1050 = !DILocation(line: 210, column: 3, scope: !1026)
!1051 = !DILocation(line: 211, column: 1, scope: !1026)
!1052 = distinct !DISubprogram(name: "fiobj_str_capa", scope: !3, file: !3, line: 214, type: !1053, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!283, !287}
!1055 = !DILocalVariable(name: "str", arg: 1, scope: !1052, file: !3, line: 214, type: !287)
!1056 = !DILocation(line: 214, column: 29, scope: !1052)
!1057 = !DILocation(line: 215, column: 3, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 215, column: 3)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 215, column: 3)
!1060 = !DILocation(line: 215, column: 3, scope: !1059)
!1061 = !DILocation(line: 216, column: 24, scope: !1052)
!1062 = !DILocation(line: 216, column: 38, scope: !1052)
!1063 = !DILocation(line: 216, column: 10, scope: !1052)
!1064 = !DILocation(line: 216, column: 3, scope: !1052)
!1065 = distinct !DISubprogram(name: "fio_str_capa", scope: !262, file: !262, line: 3907, type: !1066, scopeLine: 3907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!283, !285}
!1068 = !DILocalVariable(name: "s", arg: 1, scope: !1065, file: !262, line: 3907, type: !285)
!1069 = !DILocation(line: 3907, column: 48, scope: !1065)
!1070 = !DILocation(line: 3908, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1065, file: !262, line: 3908, column: 7)
!1072 = !DILocation(line: 3908, column: 10, scope: !1071)
!1073 = !DILocation(line: 3908, column: 7, scope: !1065)
!1074 = !DILocation(line: 3909, column: 5, scope: !1071)
!1075 = !DILocation(line: 3910, column: 11, scope: !1065)
!1076 = !DILocation(line: 3910, column: 14, scope: !1065)
!1077 = !DILocation(line: 3910, column: 20, scope: !1065)
!1078 = !DILocation(line: 3910, column: 24, scope: !1065)
!1079 = !DILocation(line: 3910, column: 27, scope: !1065)
!1080 = !DILocation(line: 3910, column: 10, scope: !1065)
!1081 = !DILocation(line: 3910, column: 62, scope: !1065)
!1082 = !DILocation(line: 3910, column: 65, scope: !1065)
!1083 = !DILocation(line: 3910, column: 3, scope: !1065)
!1084 = !DILocation(line: 3911, column: 1, scope: !1065)
!1085 = distinct !DISubprogram(name: "fiobj_str_resize", scope: !3, file: !3, line: 220, type: !1086, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !287, !283}
!1088 = !DILocalVariable(name: "str", arg: 1, scope: !1085, file: !3, line: 220, type: !287)
!1089 = !DILocation(line: 220, column: 29, scope: !1085)
!1090 = !DILocalVariable(name: "size", arg: 2, scope: !1085, file: !3, line: 220, type: !283)
!1091 = !DILocation(line: 220, column: 41, scope: !1085)
!1092 = !DILocation(line: 221, column: 3, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 221, column: 3)
!1094 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 221, column: 3)
!1095 = !DILocation(line: 221, column: 3, scope: !1094)
!1096 = !DILocation(line: 222, column: 19, scope: !1085)
!1097 = !DILocation(line: 222, column: 33, scope: !1085)
!1098 = !DILocation(line: 222, column: 38, scope: !1085)
!1099 = !DILocation(line: 222, column: 3, scope: !1085)
!1100 = !DILocation(line: 223, column: 3, scope: !1085)
!1101 = !DILocation(line: 223, column: 17, scope: !1085)
!1102 = !DILocation(line: 223, column: 22, scope: !1085)
!1103 = !DILocation(line: 224, column: 3, scope: !1085)
!1104 = distinct !DISubprogram(name: "fiobj_str_compact", scope: !3, file: !3, line: 228, type: !929, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1105 = !DILocalVariable(name: "str", arg: 1, scope: !1104, file: !3, line: 228, type: !287)
!1106 = !DILocation(line: 228, column: 30, scope: !1104)
!1107 = !DILocation(line: 229, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 229, column: 3)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 229, column: 3)
!1110 = !DILocation(line: 229, column: 3, scope: !1109)
!1111 = !DILocation(line: 230, column: 20, scope: !1104)
!1112 = !DILocation(line: 230, column: 34, scope: !1104)
!1113 = !DILocation(line: 230, column: 3, scope: !1104)
!1114 = !DILocation(line: 231, column: 3, scope: !1104)
!1115 = distinct !DISubprogram(name: "fio_str_compact", scope: !262, file: !262, line: 4071, type: !1014, scopeLine: 4071, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1116 = !DILocalVariable(name: "s", arg: 1, scope: !1115, file: !262, line: 4071, type: !285)
!1117 = !DILocation(line: 4071, column: 42, scope: !1115)
!1118 = !DILocation(line: 4072, column: 8, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !262, line: 4072, column: 7)
!1120 = !DILocation(line: 4072, column: 10, scope: !1119)
!1121 = !DILocation(line: 4072, column: 14, scope: !1119)
!1122 = !DILocation(line: 4072, column: 17, scope: !1119)
!1123 = !DILocation(line: 4072, column: 23, scope: !1119)
!1124 = !DILocation(line: 4072, column: 27, scope: !1119)
!1125 = !DILocation(line: 4072, column: 30, scope: !1119)
!1126 = !DILocation(line: 4072, column: 7, scope: !1115)
!1127 = !DILocation(line: 4073, column: 5, scope: !1119)
!1128 = !DILocalVariable(name: "tmp", scope: !1115, file: !262, line: 4074, type: !281)
!1129 = !DILocation(line: 4074, column: 9, scope: !1115)
!1130 = !DILocation(line: 4075, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1115, file: !262, line: 4075, column: 7)
!1132 = !DILocation(line: 4075, column: 10, scope: !1131)
!1133 = !DILocation(line: 4075, column: 14, scope: !1131)
!1134 = !DILocation(line: 4075, column: 7, scope: !1115)
!1135 = !DILocation(line: 4076, column: 5, scope: !1131)
!1136 = !DILocation(line: 4077, column: 21, scope: !1115)
!1137 = !DILocation(line: 4077, column: 24, scope: !1115)
!1138 = !DILocation(line: 4077, column: 30, scope: !1115)
!1139 = !DILocation(line: 4077, column: 33, scope: !1115)
!1140 = !DILocation(line: 4077, column: 37, scope: !1115)
!1141 = !DILocation(line: 4077, column: 9, scope: !1115)
!1142 = !DILocation(line: 4077, column: 7, scope: !1115)
!1143 = !DILocation(line: 4078, column: 3, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1115, file: !262, line: 4078, column: 3)
!1145 = !DILocation(line: 4078, column: 3, scope: !1115)
!1146 = !DILocation(line: 4078, column: 3, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !262, line: 4078, column: 3)
!1148 = !DILocation(line: 4078, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !262, line: 4078, column: 3)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !262, line: 4078, column: 3)
!1151 = !DILocation(line: 4078, column: 3, scope: !1150)
!1152 = !DILocation(line: 4078, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !262, line: 4078, column: 3)
!1154 = !DILocation(line: 4079, column: 13, scope: !1115)
!1155 = !DILocation(line: 4079, column: 3, scope: !1115)
!1156 = !DILocation(line: 4079, column: 6, scope: !1115)
!1157 = !DILocation(line: 4079, column: 11, scope: !1115)
!1158 = !DILocation(line: 4080, column: 13, scope: !1115)
!1159 = !DILocation(line: 4080, column: 16, scope: !1115)
!1160 = !DILocation(line: 4080, column: 3, scope: !1115)
!1161 = !DILocation(line: 4080, column: 6, scope: !1115)
!1162 = !DILocation(line: 4080, column: 11, scope: !1115)
!1163 = !DILocation(line: 4081, column: 3, scope: !1115)
!1164 = !DILabel(scope: !1115, name: "shrink2small", file: !262, line: 4083)
!1165 = !DILocation(line: 4083, column: 1, scope: !1115)
!1166 = !DILocation(line: 4085, column: 9, scope: !1115)
!1167 = !DILocation(line: 4085, column: 12, scope: !1115)
!1168 = !DILocation(line: 4085, column: 7, scope: !1115)
!1169 = !DILocalVariable(name: "len", scope: !1115, file: !262, line: 4086, type: !283)
!1170 = !DILocation(line: 4086, column: 10, scope: !1115)
!1171 = !DILocation(line: 4086, column: 16, scope: !1115)
!1172 = !DILocation(line: 4086, column: 19, scope: !1115)
!1173 = !DILocation(line: 4087, column: 4, scope: !1115)
!1174 = !DILocation(line: 4087, column: 8, scope: !1115)
!1175 = !DILocation(line: 4087, column: 19, scope: !1115)
!1176 = !DILocation(line: 4087, column: 41, scope: !1115)
!1177 = !DILocation(line: 4087, column: 45, scope: !1115)
!1178 = !DILocation(line: 4087, column: 51, scope: !1115)
!1179 = !DILocation(line: 4087, column: 56, scope: !1115)
!1180 = !DILocation(line: 4087, column: 29, scope: !1115)
!1181 = !DILocation(line: 4088, column: 30, scope: !1115)
!1182 = !DILocation(line: 4088, column: 33, scope: !1115)
!1183 = !DILocation(line: 4089, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1115, file: !262, line: 4089, column: 7)
!1185 = !DILocation(line: 4089, column: 7, scope: !1115)
!1186 = !DILocation(line: 4090, column: 12, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !262, line: 4089, column: 12)
!1188 = !DILocation(line: 4090, column: 35, scope: !1187)
!1189 = !DILocation(line: 4090, column: 40, scope: !1187)
!1190 = !DILocation(line: 4090, column: 44, scope: !1187)
!1191 = !DILocation(line: 4090, column: 5, scope: !1187)
!1192 = !DILocation(line: 4091, column: 3, scope: !1187)
!1193 = !DILocation(line: 4092, column: 12, scope: !1115)
!1194 = !DILocation(line: 4092, column: 3, scope: !1115)
!1195 = !DILocation(line: 4093, column: 1, scope: !1115)
!1196 = distinct !DISubprogram(name: "fiobj_str_clear", scope: !3, file: !3, line: 235, type: !929, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1197 = !DILocalVariable(name: "str", arg: 1, scope: !1196, file: !3, line: 235, type: !287)
!1198 = !DILocation(line: 235, column: 28, scope: !1196)
!1199 = !DILocation(line: 236, column: 3, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 236, column: 3)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 236, column: 3)
!1202 = !DILocation(line: 236, column: 3, scope: !1201)
!1203 = !DILocation(line: 237, column: 19, scope: !1196)
!1204 = !DILocation(line: 237, column: 33, scope: !1196)
!1205 = !DILocation(line: 237, column: 3, scope: !1196)
!1206 = !DILocation(line: 238, column: 3, scope: !1196)
!1207 = !DILocation(line: 238, column: 17, scope: !1196)
!1208 = !DILocation(line: 238, column: 22, scope: !1196)
!1209 = !DILocation(line: 239, column: 1, scope: !1196)
!1210 = distinct !DISubprogram(name: "fiobj_str_write", scope: !3, file: !3, line: 245, type: !1211, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!283, !287, !313, !283}
!1213 = !DILocalVariable(name: "dest", arg: 1, scope: !1210, file: !3, line: 245, type: !287)
!1214 = !DILocation(line: 245, column: 30, scope: !1210)
!1215 = !DILocalVariable(name: "data", arg: 2, scope: !1210, file: !3, line: 245, type: !313)
!1216 = !DILocation(line: 245, column: 48, scope: !1210)
!1217 = !DILocalVariable(name: "len", arg: 3, scope: !1210, file: !3, line: 245, type: !283)
!1218 = !DILocation(line: 245, column: 61, scope: !1210)
!1219 = !DILocation(line: 246, column: 3, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 246, column: 3)
!1221 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 246, column: 3)
!1222 = !DILocation(line: 246, column: 3, scope: !1221)
!1223 = !DILocation(line: 247, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 247, column: 7)
!1225 = !DILocation(line: 247, column: 22, scope: !1224)
!1226 = !DILocation(line: 247, column: 26, scope: !1224)
!1227 = !DILocation(line: 247, column: 7, scope: !1210)
!1228 = !DILocation(line: 248, column: 5, scope: !1224)
!1229 = !DILocation(line: 249, column: 3, scope: !1210)
!1230 = !DILocation(line: 249, column: 18, scope: !1210)
!1231 = !DILocation(line: 249, column: 23, scope: !1210)
!1232 = !DILocation(line: 250, column: 25, scope: !1210)
!1233 = !DILocation(line: 250, column: 40, scope: !1210)
!1234 = !DILocation(line: 250, column: 45, scope: !1210)
!1235 = !DILocation(line: 250, column: 51, scope: !1210)
!1236 = !DILocation(line: 250, column: 10, scope: !1210)
!1237 = !DILocation(line: 250, column: 56, scope: !1210)
!1238 = !DILocation(line: 250, column: 3, scope: !1210)
!1239 = !DILocation(line: 251, column: 1, scope: !1210)
!1240 = distinct !DISubprogram(name: "fiobj_str_write_i", scope: !3, file: !3, line: 258, type: !1241, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!283, !287, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1244, line: 27, baseType: !1245)
!1244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !256, line: 44, baseType: !291)
!1246 = !DILocalVariable(name: "dest", arg: 1, scope: !1240, file: !3, line: 258, type: !287)
!1247 = !DILocation(line: 258, column: 32, scope: !1240)
!1248 = !DILocalVariable(name: "num", arg: 2, scope: !1240, file: !3, line: 258, type: !1243)
!1249 = !DILocation(line: 258, column: 46, scope: !1240)
!1250 = !DILocation(line: 259, column: 3, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 259, column: 3)
!1252 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 259, column: 3)
!1253 = !DILocation(line: 259, column: 3, scope: !1252)
!1254 = !DILocation(line: 260, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 260, column: 7)
!1256 = !DILocation(line: 260, column: 22, scope: !1255)
!1257 = !DILocation(line: 260, column: 26, scope: !1255)
!1258 = !DILocation(line: 260, column: 7, scope: !1240)
!1259 = !DILocation(line: 261, column: 5, scope: !1255)
!1260 = !DILocation(line: 262, column: 3, scope: !1240)
!1261 = !DILocation(line: 262, column: 18, scope: !1240)
!1262 = !DILocation(line: 262, column: 23, scope: !1240)
!1263 = !DILocation(line: 263, column: 27, scope: !1240)
!1264 = !DILocation(line: 263, column: 42, scope: !1240)
!1265 = !DILocation(line: 263, column: 47, scope: !1240)
!1266 = !DILocation(line: 263, column: 10, scope: !1240)
!1267 = !DILocation(line: 263, column: 52, scope: !1240)
!1268 = !DILocation(line: 263, column: 3, scope: !1240)
!1269 = !DILocation(line: 264, column: 1, scope: !1240)
!1270 = distinct !DISubprogram(name: "fio_str_write_i", scope: !262, file: !262, line: 4335, type: !1271, scopeLine: 4335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!352, !285, !1243}
!1273 = !DILocalVariable(name: "s", arg: 1, scope: !1270, file: !262, line: 4335, type: !285)
!1274 = !DILocation(line: 4335, column: 59, scope: !1270)
!1275 = !DILocalVariable(name: "num", arg: 2, scope: !1270, file: !262, line: 4335, type: !1243)
!1276 = !DILocation(line: 4335, column: 70, scope: !1270)
!1277 = !DILocation(line: 4336, column: 8, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1270, file: !262, line: 4336, column: 7)
!1279 = !DILocation(line: 4336, column: 10, scope: !1278)
!1280 = !DILocation(line: 4336, column: 13, scope: !1278)
!1281 = !DILocation(line: 4336, column: 16, scope: !1278)
!1282 = !DILocation(line: 4336, column: 7, scope: !1270)
!1283 = !DILocation(line: 4337, column: 25, scope: !1278)
!1284 = !DILocation(line: 4337, column: 12, scope: !1278)
!1285 = !DILocation(line: 4337, column: 5, scope: !1278)
!1286 = !DILocalVariable(name: "i", scope: !1270, file: !262, line: 4338, type: !352)
!1287 = !DILocation(line: 4338, column: 18, scope: !1270)
!1288 = !DILocation(line: 4339, column: 8, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1270, file: !262, line: 4339, column: 7)
!1290 = !DILocation(line: 4339, column: 7, scope: !1270)
!1291 = !DILocation(line: 4340, column: 5, scope: !1289)
!1292 = !DILocalVariable(name: "buf", scope: !1270, file: !262, line: 4341, type: !1293)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 176, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 22)
!1296 = !DILocation(line: 4341, column: 8, scope: !1270)
!1297 = !DILocalVariable(name: "l", scope: !1270, file: !262, line: 4342, type: !258)
!1298 = !DILocation(line: 4342, column: 12, scope: !1270)
!1299 = !DILocalVariable(name: "neg", scope: !1270, file: !262, line: 4343, type: !266)
!1300 = !DILocation(line: 4343, column: 11, scope: !1270)
!1301 = !DILocation(line: 4344, column: 15, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1270, file: !262, line: 4344, column: 7)
!1303 = !DILocation(line: 4344, column: 19, scope: !1302)
!1304 = !DILocation(line: 4344, column: 14, scope: !1302)
!1305 = !DILocation(line: 4344, column: 12, scope: !1302)
!1306 = !DILocation(line: 4344, column: 7, scope: !1270)
!1307 = !DILocation(line: 4345, column: 15, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !262, line: 4344, column: 26)
!1309 = !DILocation(line: 4345, column: 13, scope: !1308)
!1310 = !DILocation(line: 4345, column: 9, scope: !1308)
!1311 = !DILocation(line: 4346, column: 9, scope: !1308)
!1312 = !DILocation(line: 4347, column: 3, scope: !1308)
!1313 = !DILocation(line: 4348, column: 3, scope: !1270)
!1314 = !DILocation(line: 4348, column: 10, scope: !1270)
!1315 = !DILocalVariable(name: "t", scope: !1316, file: !262, line: 4349, type: !258)
!1316 = distinct !DILexicalBlock(scope: !1270, file: !262, line: 4348, column: 15)
!1317 = !DILocation(line: 4349, column: 14, scope: !1316)
!1318 = !DILocation(line: 4349, column: 18, scope: !1316)
!1319 = !DILocation(line: 4349, column: 22, scope: !1316)
!1320 = !DILocation(line: 4350, column: 23, scope: !1316)
!1321 = !DILocation(line: 4350, column: 30, scope: !1316)
!1322 = !DILocation(line: 4350, column: 32, scope: !1316)
!1323 = !DILocation(line: 4350, column: 27, scope: !1316)
!1324 = !DILocation(line: 4350, column: 20, scope: !1316)
!1325 = !DILocation(line: 4350, column: 16, scope: !1316)
!1326 = !DILocation(line: 4350, column: 10, scope: !1316)
!1327 = !DILocation(line: 4350, column: 5, scope: !1316)
!1328 = !DILocation(line: 4350, column: 14, scope: !1316)
!1329 = !DILocation(line: 4351, column: 11, scope: !1316)
!1330 = !DILocation(line: 4351, column: 9, scope: !1316)
!1331 = distinct !{!1331, !1313, !1332}
!1332 = !DILocation(line: 4352, column: 3, scope: !1270)
!1333 = !DILocation(line: 4353, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1270, file: !262, line: 4353, column: 7)
!1335 = !DILocation(line: 4353, column: 7, scope: !1270)
!1336 = !DILocation(line: 4354, column: 10, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !262, line: 4353, column: 12)
!1338 = !DILocation(line: 4354, column: 5, scope: !1337)
!1339 = !DILocation(line: 4354, column: 14, scope: !1337)
!1340 = !DILocation(line: 4355, column: 3, scope: !1337)
!1341 = !DILocation(line: 4356, column: 22, scope: !1270)
!1342 = !DILocation(line: 4356, column: 37, scope: !1270)
!1343 = !DILocation(line: 4356, column: 25, scope: !1270)
!1344 = !DILocation(line: 4356, column: 42, scope: !1270)
!1345 = !DILocation(line: 4356, column: 40, scope: !1270)
!1346 = !DILocation(line: 4356, column: 7, scope: !1270)
!1347 = !DILocation(line: 4358, column: 3, scope: !1270)
!1348 = !DILocation(line: 4358, column: 10, scope: !1270)
!1349 = !DILocation(line: 4359, column: 5, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1270, file: !262, line: 4358, column: 13)
!1351 = !DILocation(line: 4360, column: 35, scope: !1350)
!1352 = !DILocation(line: 4360, column: 31, scope: !1350)
!1353 = !DILocation(line: 4360, column: 7, scope: !1350)
!1354 = !DILocation(line: 4360, column: 14, scope: !1350)
!1355 = !DILocation(line: 4360, column: 21, scope: !1350)
!1356 = !DILocation(line: 4360, column: 23, scope: !1350)
!1357 = !DILocation(line: 4360, column: 18, scope: !1350)
!1358 = !DILocation(line: 4360, column: 5, scope: !1350)
!1359 = !DILocation(line: 4360, column: 29, scope: !1350)
!1360 = distinct !{!1360, !1347, !1361}
!1361 = !DILocation(line: 4361, column: 3, scope: !1270)
!1362 = !DILocation(line: 4362, column: 10, scope: !1270)
!1363 = !DILocation(line: 4362, column: 3, scope: !1270)
!1364 = !DILabel(scope: !1270, name: "zero", file: !262, line: 4363)
!1365 = !DILocation(line: 4363, column: 1, scope: !1270)
!1366 = !DILocation(line: 4364, column: 22, scope: !1270)
!1367 = !DILocation(line: 4364, column: 37, scope: !1270)
!1368 = !DILocation(line: 4364, column: 25, scope: !1270)
!1369 = !DILocation(line: 4364, column: 40, scope: !1270)
!1370 = !DILocation(line: 4364, column: 7, scope: !1270)
!1371 = !DILocation(line: 4365, column: 5, scope: !1270)
!1372 = !DILocation(line: 4365, column: 12, scope: !1270)
!1373 = !DILocation(line: 4365, column: 16, scope: !1270)
!1374 = !DILocation(line: 4365, column: 3, scope: !1270)
!1375 = !DILocation(line: 4365, column: 21, scope: !1270)
!1376 = !DILocation(line: 4366, column: 10, scope: !1270)
!1377 = !DILocation(line: 4366, column: 3, scope: !1270)
!1378 = !DILocation(line: 4367, column: 1, scope: !1270)
!1379 = distinct !DISubprogram(name: "fiobj_str_printf", scope: !3, file: !3, line: 270, type: !1380, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!283, !287, !313, null}
!1382 = !DILocalVariable(name: "dest", arg: 1, scope: !1379, file: !3, line: 270, type: !287)
!1383 = !DILocation(line: 270, column: 31, scope: !1379)
!1384 = !DILocalVariable(name: "format", arg: 2, scope: !1379, file: !3, line: 270, type: !313)
!1385 = !DILocation(line: 270, column: 49, scope: !1379)
!1386 = !DILocation(line: 271, column: 3, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 271, column: 3)
!1388 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 271, column: 3)
!1389 = !DILocation(line: 271, column: 3, scope: !1388)
!1390 = !DILocation(line: 272, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 272, column: 7)
!1392 = !DILocation(line: 272, column: 22, scope: !1391)
!1393 = !DILocation(line: 272, column: 26, scope: !1391)
!1394 = !DILocation(line: 272, column: 7, scope: !1379)
!1395 = !DILocation(line: 273, column: 5, scope: !1391)
!1396 = !DILocation(line: 274, column: 3, scope: !1379)
!1397 = !DILocation(line: 274, column: 18, scope: !1379)
!1398 = !DILocation(line: 274, column: 23, scope: !1379)
!1399 = !DILocalVariable(name: "argv", scope: !1379, file: !3, line: 275, type: !384)
!1400 = !DILocation(line: 275, column: 11, scope: !1379)
!1401 = !DILocation(line: 276, column: 3, scope: !1379)
!1402 = !DILocalVariable(name: "state", scope: !1379, file: !3, line: 277, type: !352)
!1403 = !DILocation(line: 277, column: 18, scope: !1379)
!1404 = !DILocation(line: 277, column: 43, scope: !1379)
!1405 = !DILocation(line: 277, column: 58, scope: !1379)
!1406 = !DILocation(line: 277, column: 63, scope: !1379)
!1407 = !DILocation(line: 277, column: 71, scope: !1379)
!1408 = !DILocation(line: 277, column: 26, scope: !1379)
!1409 = !DILocation(line: 278, column: 3, scope: !1379)
!1410 = !DILocation(line: 279, column: 16, scope: !1379)
!1411 = !DILocation(line: 279, column: 3, scope: !1379)
!1412 = !DILocation(line: 280, column: 1, scope: !1379)
!1413 = distinct !DISubprogram(name: "fio_str_vprintf", scope: !262, file: !262, line: 4442, type: !1414, scopeLine: 4442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!352, !285, !313, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1417 = !DILocalVariable(name: "s", arg: 1, scope: !1413, file: !262, line: 4442, type: !285)
!1418 = !DILocation(line: 4442, column: 28, scope: !1413)
!1419 = !DILocalVariable(name: "format", arg: 2, scope: !1413, file: !262, line: 4442, type: !313)
!1420 = !DILocation(line: 4442, column: 43, scope: !1413)
!1421 = !DILocalVariable(name: "argv", arg: 3, scope: !1413, file: !262, line: 4442, type: !1416)
!1422 = !DILocation(line: 4442, column: 59, scope: !1413)
!1423 = !DILocalVariable(name: "argv_cpy", scope: !1413, file: !262, line: 4443, type: !384)
!1424 = !DILocation(line: 4443, column: 11, scope: !1413)
!1425 = !DILocation(line: 4444, column: 3, scope: !1413)
!1426 = !DILocalVariable(name: "len", scope: !1413, file: !262, line: 4445, type: !303)
!1427 = !DILocation(line: 4445, column: 7, scope: !1413)
!1428 = !DILocation(line: 4445, column: 32, scope: !1413)
!1429 = !DILocation(line: 4445, column: 40, scope: !1413)
!1430 = !DILocation(line: 4445, column: 13, scope: !1413)
!1431 = !DILocation(line: 4446, column: 3, scope: !1413)
!1432 = !DILocation(line: 4447, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1413, file: !262, line: 4447, column: 7)
!1434 = !DILocation(line: 4447, column: 11, scope: !1433)
!1435 = !DILocation(line: 4447, column: 7, scope: !1413)
!1436 = !DILocation(line: 4448, column: 25, scope: !1433)
!1437 = !DILocation(line: 4448, column: 12, scope: !1433)
!1438 = !DILocation(line: 4448, column: 5, scope: !1433)
!1439 = !DILocalVariable(name: "state", scope: !1413, file: !262, line: 4449, type: !352)
!1440 = !DILocation(line: 4449, column: 18, scope: !1413)
!1441 = !DILocation(line: 4449, column: 41, scope: !1413)
!1442 = !DILocation(line: 4449, column: 44, scope: !1413)
!1443 = !DILocation(line: 4449, column: 62, scope: !1413)
!1444 = !DILocation(line: 4449, column: 50, scope: !1413)
!1445 = !DILocation(line: 4449, column: 48, scope: !1413)
!1446 = !DILocation(line: 4449, column: 26, scope: !1413)
!1447 = !DILocation(line: 4450, column: 19, scope: !1413)
!1448 = !DILocation(line: 4450, column: 33, scope: !1413)
!1449 = !DILocation(line: 4450, column: 39, scope: !1413)
!1450 = !DILocation(line: 4450, column: 37, scope: !1413)
!1451 = !DILocation(line: 4450, column: 24, scope: !1413)
!1452 = !DILocation(line: 4450, column: 45, scope: !1413)
!1453 = !DILocation(line: 4450, column: 49, scope: !1413)
!1454 = !DILocation(line: 4450, column: 54, scope: !1413)
!1455 = !DILocation(line: 4450, column: 62, scope: !1413)
!1456 = !DILocation(line: 4450, column: 3, scope: !1413)
!1457 = !DILocation(line: 4451, column: 10, scope: !1413)
!1458 = !DILocation(line: 4451, column: 3, scope: !1413)
!1459 = !DILocation(line: 4452, column: 1, scope: !1413)
!1460 = distinct !DISubprogram(name: "fiobj_str_vprintf", scope: !3, file: !3, line: 282, type: !1461, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!283, !287, !313, !1416}
!1463 = !DILocalVariable(name: "dest", arg: 1, scope: !1460, file: !3, line: 282, type: !287)
!1464 = !DILocation(line: 282, column: 32, scope: !1460)
!1465 = !DILocalVariable(name: "format", arg: 2, scope: !1460, file: !3, line: 282, type: !313)
!1466 = !DILocation(line: 282, column: 50, scope: !1460)
!1467 = !DILocalVariable(name: "argv", arg: 3, scope: !1460, file: !3, line: 282, type: !1416)
!1468 = !DILocation(line: 282, column: 66, scope: !1460)
!1469 = !DILocation(line: 283, column: 3, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 283, column: 3)
!1471 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 283, column: 3)
!1472 = !DILocation(line: 283, column: 3, scope: !1471)
!1473 = !DILocation(line: 284, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 284, column: 7)
!1475 = !DILocation(line: 284, column: 22, scope: !1474)
!1476 = !DILocation(line: 284, column: 26, scope: !1474)
!1477 = !DILocation(line: 284, column: 7, scope: !1460)
!1478 = !DILocation(line: 285, column: 5, scope: !1474)
!1479 = !DILocation(line: 286, column: 3, scope: !1460)
!1480 = !DILocation(line: 286, column: 18, scope: !1460)
!1481 = !DILocation(line: 286, column: 23, scope: !1460)
!1482 = !DILocalVariable(name: "state", scope: !1460, file: !3, line: 287, type: !352)
!1483 = !DILocation(line: 287, column: 18, scope: !1460)
!1484 = !DILocation(line: 287, column: 43, scope: !1460)
!1485 = !DILocation(line: 287, column: 58, scope: !1460)
!1486 = !DILocation(line: 287, column: 63, scope: !1460)
!1487 = !DILocation(line: 287, column: 71, scope: !1460)
!1488 = !DILocation(line: 287, column: 26, scope: !1460)
!1489 = !DILocation(line: 288, column: 16, scope: !1460)
!1490 = !DILocation(line: 288, column: 3, scope: !1460)
!1491 = !DILocation(line: 289, column: 1, scope: !1460)
!1492 = distinct !DISubprogram(name: "fiobj_str_readfile", scope: !3, file: !3, line: 299, type: !1493, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!283, !287, !313, !292, !292}
!1495 = !DILocalVariable(name: "dest", arg: 1, scope: !1492, file: !3, line: 299, type: !287)
!1496 = !DILocation(line: 299, column: 33, scope: !1492)
!1497 = !DILocalVariable(name: "filename", arg: 2, scope: !1492, file: !3, line: 299, type: !313)
!1498 = !DILocation(line: 299, column: 51, scope: !1492)
!1499 = !DILocalVariable(name: "start_at", arg: 3, scope: !1492, file: !3, line: 299, type: !292)
!1500 = !DILocation(line: 299, column: 70, scope: !1492)
!1501 = !DILocalVariable(name: "limit", arg: 4, scope: !1492, file: !3, line: 300, type: !292)
!1502 = !DILocation(line: 300, column: 36, scope: !1492)
!1503 = !DILocalVariable(name: "state", scope: !1492, file: !3, line: 301, type: !352)
!1504 = !DILocation(line: 301, column: 18, scope: !1492)
!1505 = !DILocation(line: 302, column: 25, scope: !1492)
!1506 = !DILocation(line: 302, column: 40, scope: !1492)
!1507 = !DILocation(line: 302, column: 45, scope: !1492)
!1508 = !DILocation(line: 302, column: 55, scope: !1492)
!1509 = !DILocation(line: 302, column: 65, scope: !1492)
!1510 = !DILocation(line: 302, column: 7, scope: !1492)
!1511 = !DILocation(line: 303, column: 16, scope: !1492)
!1512 = !DILocation(line: 303, column: 3, scope: !1492)
!1513 = distinct !DISubprogram(name: "fio_str_readfile", scope: !262, file: !262, line: 4471, type: !1514, scopeLine: 4472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!352, !285, !313, !292, !292}
!1516 = !DILocalVariable(name: "s", arg: 1, scope: !1513, file: !262, line: 4471, type: !285)
!1517 = !DILocation(line: 4471, column: 53, scope: !1513)
!1518 = !DILocalVariable(name: "filename", arg: 2, scope: !1513, file: !262, line: 4471, type: !313)
!1519 = !DILocation(line: 4471, column: 68, scope: !1513)
!1520 = !DILocalVariable(name: "start_at", arg: 3, scope: !1513, file: !262, line: 4472, type: !292)
!1521 = !DILocation(line: 4472, column: 51, scope: !1513)
!1522 = !DILocalVariable(name: "limit", arg: 4, scope: !1513, file: !262, line: 4472, type: !292)
!1523 = !DILocation(line: 4472, column: 70, scope: !1513)
!1524 = !DILocalVariable(name: "state", scope: !1513, file: !262, line: 4473, type: !352)
!1525 = !DILocation(line: 4473, column: 18, scope: !1513)
!1526 = !DILocation(line: 4477, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1513, file: !262, line: 4477, column: 7)
!1528 = !DILocation(line: 4477, column: 16, scope: !1527)
!1529 = !DILocation(line: 4477, column: 24, scope: !1527)
!1530 = !DILocation(line: 4477, column: 28, scope: !1527)
!1531 = !DILocation(line: 4477, column: 7, scope: !1513)
!1532 = !DILocation(line: 4478, column: 5, scope: !1527)
!1533 = !DILocalVariable(name: "f_data", scope: !1513, file: !262, line: 4479, type: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1535, line: 46, size: 1152, elements: !1536)
!1535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1536 = !{!1537, !1539, !1541, !1543, !1545, !1547, !1549, !1550, !1551, !1553, !1555, !1557, !1565, !1566, !1567}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1534, file: !1535, line: 48, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !256, line: 145, baseType: !241)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1534, file: !1535, line: 53, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !256, line: 148, baseType: !241)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1534, file: !1535, line: 61, baseType: !1542, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !256, line: 151, baseType: !241)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1534, file: !1535, line: 62, baseType: !1544, size: 32, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !256, line: 150, baseType: !7)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1534, file: !1535, line: 64, baseType: !1546, size: 32, offset: 224)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !256, line: 146, baseType: !7)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1534, file: !1535, line: 65, baseType: !1548, size: 32, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !256, line: 147, baseType: !7)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1534, file: !1535, line: 67, baseType: !303, size: 32, offset: 288)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1534, file: !1535, line: 69, baseType: !1538, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1534, file: !1535, line: 74, baseType: !1552, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !256, line: 152, baseType: !291)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1534, file: !1535, line: 78, baseType: !1554, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !256, line: 174, baseType: !291)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1534, file: !1535, line: 80, baseType: !1556, size: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !256, line: 179, baseType: !291)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1534, file: !1535, line: 91, baseType: !1558, size: 128, offset: 576)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1559, line: 10, size: 128, elements: !1560)
!1559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1560 = !{!1561, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1558, file: !1559, line: 12, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !256, line: 160, baseType: !291)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1558, file: !1559, line: 16, baseType: !1564, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !256, line: 196, baseType: !291)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1534, file: !1535, line: 92, baseType: !1558, size: 128, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1534, file: !1535, line: 93, baseType: !1558, size: 128, offset: 832)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1534, file: !1535, line: 106, baseType: !1568, size: 192, offset: 960)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1564, size: 192, elements: !1569)
!1569 = !{!1570}
!1570 = !DISubrange(count: 3)
!1571 = !DILocation(line: 4479, column: 15, scope: !1513)
!1572 = !DILocalVariable(name: "file", scope: !1513, file: !262, line: 4480, type: !303)
!1573 = !DILocation(line: 4480, column: 7, scope: !1513)
!1574 = !DILocalVariable(name: "path", scope: !1513, file: !262, line: 4481, type: !281)
!1575 = !DILocation(line: 4481, column: 9, scope: !1513)
!1576 = !DILocalVariable(name: "path_len", scope: !1513, file: !262, line: 4482, type: !283)
!1577 = !DILocation(line: 4482, column: 10, scope: !1513)
!1578 = !DILocation(line: 4484, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1513, file: !262, line: 4484, column: 7)
!1580 = !DILocation(line: 4484, column: 19, scope: !1579)
!1581 = !DILocation(line: 4484, column: 26, scope: !1579)
!1582 = !DILocation(line: 4484, column: 30, scope: !1579)
!1583 = !DILocation(line: 4484, column: 42, scope: !1579)
!1584 = !DILocation(line: 4484, column: 49, scope: !1579)
!1585 = !DILocation(line: 4484, column: 52, scope: !1579)
!1586 = !DILocation(line: 4484, column: 64, scope: !1579)
!1587 = !DILocation(line: 4484, column: 7, scope: !1513)
!1588 = !DILocalVariable(name: "home", scope: !1589, file: !262, line: 4485, type: !281)
!1589 = distinct !DILexicalBlock(scope: !1579, file: !262, line: 4484, column: 74)
!1590 = !DILocation(line: 4485, column: 11, scope: !1589)
!1591 = !DILocation(line: 4485, column: 18, scope: !1589)
!1592 = !DILocation(line: 4486, column: 9, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !262, line: 4486, column: 9)
!1594 = !DILocation(line: 4486, column: 9, scope: !1589)
!1595 = !DILocalVariable(name: "filename_len", scope: !1596, file: !262, line: 4487, type: !283)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !262, line: 4486, column: 15)
!1597 = !DILocation(line: 4487, column: 14, scope: !1596)
!1598 = !DILocation(line: 4487, column: 36, scope: !1596)
!1599 = !DILocation(line: 4487, column: 29, scope: !1596)
!1600 = !DILocalVariable(name: "home_len", scope: !1596, file: !262, line: 4488, type: !283)
!1601 = !DILocation(line: 4488, column: 14, scope: !1596)
!1602 = !DILocation(line: 4488, column: 32, scope: !1596)
!1603 = !DILocation(line: 4488, column: 25, scope: !1596)
!1604 = !DILocation(line: 4489, column: 12, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1596, file: !262, line: 4489, column: 11)
!1606 = !DILocation(line: 4489, column: 23, scope: !1605)
!1607 = !DILocation(line: 4489, column: 21, scope: !1605)
!1608 = !DILocation(line: 4489, column: 37, scope: !1605)
!1609 = !DILocation(line: 4489, column: 11, scope: !1596)
!1610 = !DILocation(line: 4491, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1605, file: !262, line: 4489, column: 51)
!1612 = !DILocation(line: 4493, column: 11, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1596, file: !262, line: 4493, column: 11)
!1614 = !DILocation(line: 4493, column: 16, scope: !1613)
!1615 = !DILocation(line: 4493, column: 25, scope: !1613)
!1616 = !DILocation(line: 4493, column: 30, scope: !1613)
!1617 = !DILocation(line: 4493, column: 37, scope: !1613)
!1618 = !DILocation(line: 4493, column: 40, scope: !1613)
!1619 = !DILocation(line: 4493, column: 45, scope: !1613)
!1620 = !DILocation(line: 4493, column: 54, scope: !1613)
!1621 = !DILocation(line: 4493, column: 59, scope: !1613)
!1622 = !DILocation(line: 4493, column: 11, scope: !1596)
!1623 = !DILocation(line: 4494, column: 9, scope: !1613)
!1624 = !DILocation(line: 4495, column: 18, scope: !1596)
!1625 = !DILocation(line: 4495, column: 29, scope: !1596)
!1626 = !DILocation(line: 4495, column: 27, scope: !1596)
!1627 = !DILocation(line: 4495, column: 42, scope: !1596)
!1628 = !DILocation(line: 4495, column: 16, scope: !1596)
!1629 = !DILocation(line: 4496, column: 14, scope: !1596)
!1630 = !DILocation(line: 4496, column: 12, scope: !1596)
!1631 = !DILocation(line: 4497, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1596, file: !262, line: 4497, column: 7)
!1633 = !DILocation(line: 4497, column: 7, scope: !1596)
!1634 = !DILocation(line: 4497, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !262, line: 4497, column: 7)
!1636 = !DILocation(line: 4497, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !262, line: 4497, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !262, line: 4497, column: 7)
!1639 = !DILocation(line: 4497, column: 7, scope: !1638)
!1640 = !DILocation(line: 4497, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !262, line: 4497, column: 7)
!1642 = !DILocation(line: 4498, column: 14, scope: !1596)
!1643 = !DILocation(line: 4498, column: 20, scope: !1596)
!1644 = !DILocation(line: 4498, column: 26, scope: !1596)
!1645 = !DILocation(line: 4498, column: 7, scope: !1596)
!1646 = !DILocation(line: 4499, column: 14, scope: !1596)
!1647 = !DILocation(line: 4499, column: 21, scope: !1596)
!1648 = !DILocation(line: 4499, column: 19, scope: !1596)
!1649 = !DILocation(line: 4499, column: 31, scope: !1596)
!1650 = !DILocation(line: 4499, column: 40, scope: !1596)
!1651 = !DILocation(line: 4499, column: 45, scope: !1596)
!1652 = !DILocation(line: 4499, column: 7, scope: !1596)
!1653 = !DILocation(line: 4500, column: 7, scope: !1596)
!1654 = !DILocation(line: 4500, column: 12, scope: !1596)
!1655 = !DILocation(line: 4500, column: 22, scope: !1596)
!1656 = !DILocation(line: 4501, column: 18, scope: !1596)
!1657 = !DILocation(line: 4501, column: 16, scope: !1596)
!1658 = !DILocation(line: 4502, column: 5, scope: !1596)
!1659 = !DILocation(line: 4503, column: 3, scope: !1589)
!1660 = !DILocation(line: 4505, column: 12, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1513, file: !262, line: 4505, column: 7)
!1662 = !DILocation(line: 4505, column: 7, scope: !1661)
!1663 = !DILocation(line: 4505, column: 7, scope: !1513)
!1664 = !DILocation(line: 4506, column: 5, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !262, line: 4505, column: 32)
!1666 = !DILocation(line: 4509, column: 14, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1513, file: !262, line: 4509, column: 7)
!1668 = !DILocation(line: 4509, column: 22, scope: !1667)
!1669 = !DILocation(line: 4509, column: 27, scope: !1667)
!1670 = !DILocation(line: 4509, column: 30, scope: !1667)
!1671 = !DILocation(line: 4509, column: 49, scope: !1667)
!1672 = !DILocation(line: 4509, column: 39, scope: !1667)
!1673 = !DILocation(line: 4509, column: 7, scope: !1513)
!1674 = !DILocation(line: 4510, column: 26, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1667, file: !262, line: 4509, column: 58)
!1676 = !DILocation(line: 4510, column: 13, scope: !1675)
!1677 = !DILocation(line: 4511, column: 5, scope: !1675)
!1678 = !DILocation(line: 4514, column: 15, scope: !1513)
!1679 = !DILocation(line: 4514, column: 10, scope: !1513)
!1680 = !DILocation(line: 4514, column: 8, scope: !1513)
!1681 = !DILocation(line: 4515, column: 13, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1513, file: !262, line: 4515, column: 7)
!1683 = !DILocation(line: 4515, column: 10, scope: !1682)
!1684 = !DILocation(line: 4515, column: 7, scope: !1513)
!1685 = !DILocation(line: 4516, column: 5, scope: !1682)
!1686 = !DILocation(line: 4518, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1513, file: !262, line: 4518, column: 7)
!1688 = !DILocation(line: 4518, column: 16, scope: !1687)
!1689 = !DILocation(line: 4518, column: 7, scope: !1513)
!1690 = !DILocation(line: 4519, column: 23, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !262, line: 4518, column: 21)
!1692 = !DILocation(line: 4519, column: 33, scope: !1691)
!1693 = !DILocation(line: 4519, column: 31, scope: !1691)
!1694 = !DILocation(line: 4519, column: 14, scope: !1691)
!1695 = !DILocation(line: 4520, column: 9, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !262, line: 4520, column: 9)
!1697 = !DILocation(line: 4520, column: 18, scope: !1696)
!1698 = !DILocation(line: 4520, column: 9, scope: !1691)
!1699 = !DILocation(line: 4521, column: 16, scope: !1696)
!1700 = !DILocation(line: 4521, column: 7, scope: !1696)
!1701 = !DILocation(line: 4522, column: 3, scope: !1691)
!1702 = !DILocation(line: 4524, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1513, file: !262, line: 4524, column: 7)
!1704 = !DILocation(line: 4524, column: 13, scope: !1703)
!1705 = !DILocation(line: 4524, column: 18, scope: !1703)
!1706 = !DILocation(line: 4524, column: 28, scope: !1703)
!1707 = !DILocation(line: 4524, column: 39, scope: !1703)
!1708 = !DILocation(line: 4524, column: 47, scope: !1703)
!1709 = !DILocation(line: 4524, column: 45, scope: !1703)
!1710 = !DILocation(line: 4524, column: 36, scope: !1703)
!1711 = !DILocation(line: 4524, column: 7, scope: !1513)
!1712 = !DILocation(line: 4525, column: 20, scope: !1703)
!1713 = !DILocation(line: 4525, column: 30, scope: !1703)
!1714 = !DILocation(line: 4525, column: 28, scope: !1703)
!1715 = !DILocation(line: 4525, column: 11, scope: !1703)
!1716 = !DILocation(line: 4525, column: 5, scope: !1703)
!1717 = !DILocalVariable(name: "org_len", scope: !1513, file: !262, line: 4527, type: !691)
!1718 = !DILocation(line: 4527, column: 16, scope: !1513)
!1719 = !DILocation(line: 4527, column: 38, scope: !1513)
!1720 = !DILocation(line: 4527, column: 26, scope: !1513)
!1721 = !DILocation(line: 4528, column: 26, scope: !1513)
!1722 = !DILocation(line: 4528, column: 29, scope: !1513)
!1723 = !DILocation(line: 4528, column: 39, scope: !1513)
!1724 = !DILocation(line: 4528, column: 37, scope: !1513)
!1725 = !DILocation(line: 4528, column: 11, scope: !1513)
!1726 = !DILocation(line: 4529, column: 13, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1513, file: !262, line: 4529, column: 7)
!1728 = !DILocation(line: 4529, column: 25, scope: !1727)
!1729 = !DILocation(line: 4529, column: 32, scope: !1727)
!1730 = !DILocation(line: 4529, column: 30, scope: !1727)
!1731 = !DILocation(line: 4529, column: 41, scope: !1727)
!1732 = !DILocation(line: 4529, column: 48, scope: !1727)
!1733 = !DILocation(line: 4529, column: 7, scope: !1727)
!1734 = !DILocation(line: 4529, column: 70, scope: !1727)
!1735 = !DILocation(line: 4529, column: 58, scope: !1727)
!1736 = !DILocation(line: 4529, column: 7, scope: !1513)
!1737 = !DILocation(line: 4530, column: 20, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1727, file: !262, line: 4529, column: 77)
!1739 = !DILocation(line: 4530, column: 23, scope: !1738)
!1740 = !DILocation(line: 4530, column: 5, scope: !1738)
!1741 = !DILocation(line: 4531, column: 11, scope: !1738)
!1742 = !DILocation(line: 4531, column: 16, scope: !1738)
!1743 = !DILocation(line: 4532, column: 23, scope: !1738)
!1744 = !DILocation(line: 4532, column: 28, scope: !1738)
!1745 = !DILocation(line: 4532, column: 11, scope: !1738)
!1746 = !DILocation(line: 4532, column: 15, scope: !1738)
!1747 = !DILocation(line: 4533, column: 3, scope: !1738)
!1748 = !DILocation(line: 4534, column: 9, scope: !1513)
!1749 = !DILocation(line: 4534, column: 3, scope: !1513)
!1750 = !DILabel(scope: !1513, name: "finish", file: !262, line: 4535)
!1751 = !DILocation(line: 4535, column: 1, scope: !1513)
!1752 = !DILocation(line: 4536, column: 12, scope: !1513)
!1753 = !DILocation(line: 4536, column: 3, scope: !1513)
!1754 = !DILocation(line: 4537, column: 3, scope: !1513)
!1755 = !DILocation(line: 4543, column: 1, scope: !1513)
!1756 = distinct !DISubprogram(name: "fiobj_str_concat", scope: !3, file: !3, line: 310, type: !1757, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!283, !287, !287}
!1759 = !DILocalVariable(name: "dest", arg: 1, scope: !1756, file: !3, line: 310, type: !287)
!1760 = !DILocation(line: 310, column: 31, scope: !1756)
!1761 = !DILocalVariable(name: "obj", arg: 2, scope: !1756, file: !3, line: 310, type: !287)
!1762 = !DILocation(line: 310, column: 43, scope: !1756)
!1763 = !DILocation(line: 311, column: 3, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 311, column: 3)
!1765 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 311, column: 3)
!1766 = !DILocation(line: 311, column: 3, scope: !1765)
!1767 = !DILocation(line: 312, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 312, column: 7)
!1769 = !DILocation(line: 312, column: 22, scope: !1768)
!1770 = !DILocation(line: 312, column: 26, scope: !1768)
!1771 = !DILocation(line: 312, column: 7, scope: !1756)
!1772 = !DILocation(line: 313, column: 5, scope: !1768)
!1773 = !DILocation(line: 314, column: 3, scope: !1756)
!1774 = !DILocation(line: 314, column: 18, scope: !1756)
!1775 = !DILocation(line: 314, column: 23, scope: !1756)
!1776 = !DILocalVariable(name: "o", scope: !1756, file: !3, line: 315, type: !352)
!1777 = !DILocation(line: 315, column: 18, scope: !1756)
!1778 = !DILocation(line: 315, column: 37, scope: !1756)
!1779 = !DILocation(line: 315, column: 22, scope: !1756)
!1780 = !DILocation(line: 316, column: 9, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 316, column: 7)
!1782 = !DILocation(line: 316, column: 13, scope: !1781)
!1783 = !DILocation(line: 316, column: 7, scope: !1756)
!1784 = !DILocation(line: 317, column: 25, scope: !1781)
!1785 = !DILocation(line: 317, column: 40, scope: !1781)
!1786 = !DILocation(line: 317, column: 12, scope: !1781)
!1787 = !DILocation(line: 317, column: 5, scope: !1781)
!1788 = !DILocation(line: 318, column: 25, scope: !1756)
!1789 = !DILocation(line: 318, column: 40, scope: !1756)
!1790 = !DILocation(line: 318, column: 47, scope: !1756)
!1791 = !DILocation(line: 318, column: 55, scope: !1756)
!1792 = !DILocation(line: 318, column: 10, scope: !1756)
!1793 = !DILocation(line: 318, column: 60, scope: !1756)
!1794 = !DILocation(line: 318, column: 3, scope: !1756)
!1795 = !DILocation(line: 319, column: 1, scope: !1756)
!1796 = distinct !DISubprogram(name: "fiobj_obj2cstr", scope: !225, file: !225, line: 515, type: !350, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1797 = !DILocalVariable(name: "o", arg: 1, scope: !1796, file: !225, line: 515, type: !328)
!1798 = !DILocation(line: 515, column: 54, scope: !1796)
!1799 = !DILocation(line: 516, column: 8, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !225, line: 516, column: 7)
!1801 = !DILocation(line: 516, column: 7, scope: !1796)
!1802 = !DILocalVariable(name: "ret", scope: !1803, file: !225, line: 517, type: !352)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !225, line: 516, column: 11)
!1804 = !DILocation(line: 517, column: 20, scope: !1803)
!1805 = !DILocation(line: 518, column: 5, scope: !1803)
!1806 = !DILocation(line: 520, column: 7, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1796, file: !225, line: 520, column: 7)
!1808 = !DILocation(line: 520, column: 9, scope: !1807)
!1809 = !DILocation(line: 520, column: 7, scope: !1796)
!1810 = !DILocation(line: 521, column: 35, scope: !1807)
!1811 = !DILocation(line: 521, column: 38, scope: !1807)
!1812 = !DILocation(line: 521, column: 12, scope: !1807)
!1813 = !DILocation(line: 521, column: 5, scope: !1807)
!1814 = !DILocation(line: 522, column: 8, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1796, file: !225, line: 522, column: 7)
!1816 = !DILocation(line: 522, column: 10, scope: !1815)
!1817 = !DILocation(line: 522, column: 37, scope: !1815)
!1818 = !DILocation(line: 522, column: 7, scope: !1796)
!1819 = !DILocation(line: 523, column: 30, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !225, line: 522, column: 65)
!1821 = !DILocation(line: 523, column: 13, scope: !1820)
!1822 = !DILocation(line: 523, column: 5, scope: !1820)
!1823 = !DILocalVariable(name: "ret", scope: !1824, file: !225, line: 525, type: !352)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !225, line: 524, column: 24)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !225, line: 523, column: 33)
!1826 = !DILocation(line: 525, column: 22, scope: !1824)
!1827 = !DILocation(line: 526, column: 7, scope: !1824)
!1828 = !DILocalVariable(name: "ret", scope: !1829, file: !225, line: 529, type: !352)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !225, line: 528, column: 25)
!1830 = !DILocation(line: 529, column: 22, scope: !1829)
!1831 = !DILocation(line: 530, column: 7, scope: !1829)
!1832 = !DILocalVariable(name: "ret", scope: !1833, file: !225, line: 533, type: !352)
!1833 = distinct !DILexicalBlock(scope: !1825, file: !225, line: 532, column: 24)
!1834 = !DILocation(line: 533, column: 22, scope: !1833)
!1835 = !DILocation(line: 534, column: 7, scope: !1833)
!1836 = !DILocation(line: 537, column: 7, scope: !1825)
!1837 = !DILocation(line: 539, column: 3, scope: !1820)
!1838 = !DILocation(line: 540, column: 10, scope: !1796)
!1839 = !DILocation(line: 540, column: 28, scope: !1796)
!1840 = !DILocation(line: 540, column: 35, scope: !1796)
!1841 = !DILocation(line: 540, column: 3, scope: !1796)
!1842 = !DILocation(line: 541, column: 1, scope: !1796)
!1843 = distinct !DISubprogram(name: "fio_str_len", scope: !262, file: !262, line: 3897, type: !1066, scopeLine: 3897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1844 = !DILocalVariable(name: "s", arg: 1, scope: !1843, file: !262, line: 3897, type: !285)
!1845 = !DILocation(line: 3897, column: 47, scope: !1843)
!1846 = !DILocation(line: 3898, column: 11, scope: !1843)
!1847 = !DILocation(line: 3898, column: 14, scope: !1843)
!1848 = !DILocation(line: 3898, column: 20, scope: !1843)
!1849 = !DILocation(line: 3898, column: 24, scope: !1843)
!1850 = !DILocation(line: 3898, column: 27, scope: !1843)
!1851 = !DILocation(line: 3898, column: 10, scope: !1843)
!1852 = !DILocation(line: 3898, column: 36, scope: !1843)
!1853 = !DILocation(line: 3898, column: 39, scope: !1843)
!1854 = !DILocation(line: 3898, column: 45, scope: !1843)
!1855 = !DILocation(line: 3898, column: 35, scope: !1843)
!1856 = !DILocation(line: 3898, column: 53, scope: !1843)
!1857 = !DILocation(line: 3898, column: 56, scope: !1843)
!1858 = !DILocation(line: 3898, column: 3, scope: !1843)
!1859 = distinct !DISubprogram(name: "fiobj_str_hash", scope: !3, file: !3, line: 324, type: !1860, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!258, !287}
!1862 = !DILocalVariable(name: "o", arg: 1, scope: !1859, file: !3, line: 324, type: !287)
!1863 = !DILocation(line: 324, column: 31, scope: !1859)
!1864 = !DILocation(line: 325, column: 3, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 325, column: 3)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 325, column: 3)
!1867 = !DILocation(line: 325, column: 3, scope: !1866)
!1868 = !DILocation(line: 329, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 329, column: 7)
!1870 = !DILocation(line: 329, column: 19, scope: !1869)
!1871 = !DILocation(line: 329, column: 7, scope: !1859)
!1872 = !DILocation(line: 330, column: 12, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 329, column: 25)
!1874 = !DILocation(line: 330, column: 24, scope: !1873)
!1875 = !DILocation(line: 330, column: 5, scope: !1873)
!1876 = !DILocalVariable(name: "state", scope: !1859, file: !3, line: 332, type: !352)
!1877 = !DILocation(line: 332, column: 18, scope: !1859)
!1878 = !DILocation(line: 332, column: 40, scope: !1859)
!1879 = !DILocation(line: 332, column: 52, scope: !1859)
!1880 = !DILocation(line: 332, column: 26, scope: !1859)
!1881 = !DILocation(line: 333, column: 46, scope: !1859)
!1882 = !DILocation(line: 333, column: 58, scope: !1859)
!1883 = !DILocation(line: 333, column: 22, scope: !1859)
!1884 = !DILocation(line: 333, column: 3, scope: !1859)
!1885 = !DILocation(line: 333, column: 15, scope: !1859)
!1886 = !DILocation(line: 333, column: 20, scope: !1859)
!1887 = !DILocation(line: 334, column: 10, scope: !1859)
!1888 = !DILocation(line: 334, column: 22, scope: !1859)
!1889 = !DILocation(line: 334, column: 3, scope: !1859)
!1890 = !DILocation(line: 335, column: 1, scope: !1859)
!1891 = distinct !DISubprogram(name: "fio_str_info", scope: !262, file: !262, line: 3747, type: !1892, scopeLine: 3747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!352, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1896 = !DILocalVariable(name: "s", arg: 1, scope: !1891, file: !262, line: 3747, type: !1894)
!1897 = !DILocation(line: 3747, column: 62, scope: !1891)
!1898 = !DILocation(line: 3748, column: 8, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1891, file: !262, line: 3748, column: 7)
!1900 = !DILocation(line: 3748, column: 7, scope: !1891)
!1901 = !DILocation(line: 3749, column: 28, scope: !1899)
!1902 = !DILocation(line: 3749, column: 5, scope: !1899)
!1903 = !DILocation(line: 3750, column: 11, scope: !1891)
!1904 = !DILocation(line: 3750, column: 14, scope: !1891)
!1905 = !DILocation(line: 3750, column: 20, scope: !1891)
!1906 = !DILocation(line: 3750, column: 24, scope: !1891)
!1907 = !DILocation(line: 3750, column: 27, scope: !1891)
!1908 = !DILocation(line: 3750, column: 10, scope: !1891)
!1909 = !DILocation(line: 3751, column: 32, scope: !1891)
!1910 = !DILocation(line: 3752, column: 38, scope: !1891)
!1911 = !DILocation(line: 3752, column: 41, scope: !1891)
!1912 = !DILocation(line: 3753, column: 49, scope: !1891)
!1913 = !DILocation(line: 3753, column: 52, scope: !1891)
!1914 = !DILocation(line: 3753, column: 58, scope: !1891)
!1915 = !DILocation(line: 3753, column: 40, scope: !1891)
!1916 = !DILocation(line: 3754, column: 41, scope: !1891)
!1917 = !DILocation(line: 3755, column: 32, scope: !1891)
!1918 = !DILocation(line: 3755, column: 42, scope: !1891)
!1919 = !DILocation(line: 3755, column: 45, scope: !1891)
!1920 = !DILocation(line: 3755, column: 58, scope: !1891)
!1921 = !DILocation(line: 3755, column: 61, scope: !1891)
!1922 = !DILocation(line: 3756, column: 40, scope: !1891)
!1923 = !DILocation(line: 3756, column: 43, scope: !1891)
!1924 = !DILocation(line: 3757, column: 41, scope: !1891)
!1925 = !DILocation(line: 3757, column: 44, scope: !1891)
!1926 = !DILocation(line: 3750, column: 3, scope: !1891)
!1927 = !DILocation(line: 3758, column: 1, scope: !1891)
!1928 = distinct !DISubprogram(name: "fiobj_hash_string", scope: !225, file: !225, line: 560, type: !1929, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!258, !766, !283}
!1931 = !DILocalVariable(name: "data", arg: 1, scope: !1928, file: !225, line: 560, type: !766)
!1932 = !DILocation(line: 560, column: 51, scope: !1928)
!1933 = !DILocalVariable(name: "len", arg: 2, scope: !1928, file: !225, line: 560, type: !283)
!1934 = !DILocation(line: 560, column: 64, scope: !1928)
!1935 = !DILocation(line: 561, column: 10, scope: !1928)
!1936 = !DILocation(line: 561, column: 3, scope: !1928)
!1937 = distinct !DISubprogram(name: "fio_str_free", scope: !262, file: !262, line: 3820, type: !1938, scopeLine: 3820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!303, !285}
!1940 = !DILocalVariable(name: "s", arg: 1, scope: !1937, file: !262, line: 3820, type: !285)
!1941 = !DILocation(line: 3820, column: 45, scope: !1937)
!1942 = !DILocation(line: 3825, column: 8, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !262, line: 3825, column: 7)
!1944 = !DILocation(line: 3825, column: 11, scope: !1943)
!1945 = !DILocation(line: 3825, column: 17, scope: !1943)
!1946 = !DILocation(line: 3825, column: 20, scope: !1943)
!1947 = !DILocation(line: 3825, column: 23, scope: !1943)
!1948 = !DILocation(line: 3825, column: 7, scope: !1937)
!1949 = !DILocation(line: 3826, column: 5, scope: !1943)
!1950 = !DILocation(line: 3826, column: 8, scope: !1943)
!1951 = !DILocation(line: 3826, column: 16, scope: !1943)
!1952 = !DILocation(line: 3826, column: 19, scope: !1943)
!1953 = !DILocation(line: 3827, column: 4, scope: !1937)
!1954 = !DILocation(line: 3827, column: 8, scope: !1937)
!1955 = !DILocation(line: 3828, column: 3, scope: !1937)
!1956 = distinct !DISubprogram(name: "fio_str_iseq", scope: !262, file: !262, line: 4557, type: !1957, scopeLine: 4557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!303, !1894, !1894}
!1959 = !DILocalVariable(name: "str1", arg: 1, scope: !1956, file: !262, line: 4557, type: !1894)
!1960 = !DILocation(line: 4557, column: 51, scope: !1956)
!1961 = !DILocalVariable(name: "str2", arg: 2, scope: !1956, file: !262, line: 4557, type: !1894)
!1962 = !DILocation(line: 4557, column: 74, scope: !1956)
!1963 = !DILocation(line: 4558, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1956, file: !262, line: 4558, column: 7)
!1965 = !DILocation(line: 4558, column: 15, scope: !1964)
!1966 = !DILocation(line: 4558, column: 12, scope: !1964)
!1967 = !DILocation(line: 4558, column: 7, scope: !1956)
!1968 = !DILocation(line: 4559, column: 5, scope: !1964)
!1969 = !DILocation(line: 4560, column: 8, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1956, file: !262, line: 4560, column: 7)
!1971 = !DILocation(line: 4560, column: 13, scope: !1970)
!1972 = !DILocation(line: 4560, column: 17, scope: !1970)
!1973 = !DILocation(line: 4560, column: 7, scope: !1956)
!1974 = !DILocation(line: 4561, column: 5, scope: !1970)
!1975 = !DILocalVariable(name: "s1", scope: !1956, file: !262, line: 4562, type: !352)
!1976 = !DILocation(line: 4562, column: 18, scope: !1956)
!1977 = !DILocation(line: 4562, column: 36, scope: !1956)
!1978 = !DILocation(line: 4562, column: 23, scope: !1956)
!1979 = !DILocalVariable(name: "s2", scope: !1956, file: !262, line: 4563, type: !352)
!1980 = !DILocation(line: 4563, column: 18, scope: !1956)
!1981 = !DILocation(line: 4563, column: 36, scope: !1956)
!1982 = !DILocation(line: 4563, column: 23, scope: !1956)
!1983 = !DILocation(line: 4564, column: 14, scope: !1956)
!1984 = !DILocation(line: 4564, column: 24, scope: !1956)
!1985 = !DILocation(line: 4564, column: 18, scope: !1956)
!1986 = !DILocation(line: 4564, column: 28, scope: !1956)
!1987 = !DILocation(line: 4564, column: 42, scope: !1956)
!1988 = !DILocation(line: 4564, column: 51, scope: !1956)
!1989 = !DILocation(line: 4564, column: 60, scope: !1956)
!1990 = !DILocation(line: 4564, column: 32, scope: !1956)
!1991 = !DILocation(line: 4564, column: 31, scope: !1956)
!1992 = !DILocation(line: 0, scope: !1956)
!1993 = !DILocation(line: 4564, column: 3, scope: !1956)
!1994 = !DILocation(line: 4565, column: 1, scope: !1956)
!1995 = distinct !DISubprogram(name: "fiobj_str_get_cstr", scope: !3, file: !3, line: 52, type: !350, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!1996 = !DILocalVariable(name: "o", arg: 1, scope: !1995, file: !3, line: 52, type: !328)
!1997 = !DILocation(line: 52, column: 61, scope: !1995)
!1998 = !DILocation(line: 53, column: 24, scope: !1995)
!1999 = !DILocation(line: 53, column: 36, scope: !1995)
!2000 = !DILocation(line: 53, column: 10, scope: !1995)
!2001 = !DILocation(line: 53, column: 3, scope: !1995)
!2002 = distinct !DISubprogram(name: "fio_str_data", scope: !262, file: !262, line: 3902, type: !2003, scopeLine: 3902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!281, !285}
!2005 = !DILocalVariable(name: "s", arg: 1, scope: !2002, file: !262, line: 3902, type: !285)
!2006 = !DILocation(line: 3902, column: 47, scope: !2002)
!2007 = !DILocation(line: 3903, column: 11, scope: !2002)
!2008 = !DILocation(line: 3903, column: 14, scope: !2002)
!2009 = !DILocation(line: 3903, column: 20, scope: !2002)
!2010 = !DILocation(line: 3903, column: 24, scope: !2002)
!2011 = !DILocation(line: 3903, column: 27, scope: !2002)
!2012 = !DILocation(line: 3903, column: 10, scope: !2002)
!2013 = !DILocation(line: 3903, column: 35, scope: !2002)
!2014 = !DILocation(line: 3903, column: 59, scope: !2002)
!2015 = !DILocation(line: 3903, column: 62, scope: !2002)
!2016 = !DILocation(line: 3903, column: 3, scope: !2002)
!2017 = distinct !DISubprogram(name: "fio_ct_if2", scope: !262, file: !262, line: 2135, type: !2018, scopeLine: 2135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!239, !239, !239, !239}
!2020 = !DILocalVariable(name: "cond", arg: 1, scope: !2017, file: !262, line: 2135, type: !239)
!2021 = !DILocation(line: 2135, column: 48, scope: !2017)
!2022 = !DILocalVariable(name: "a", arg: 2, scope: !2017, file: !262, line: 2135, type: !239)
!2023 = !DILocation(line: 2135, column: 64, scope: !2017)
!2024 = !DILocalVariable(name: "b", arg: 3, scope: !2017, file: !262, line: 2135, type: !239)
!2025 = !DILocation(line: 2135, column: 77, scope: !2017)
!2026 = !DILocation(line: 2137, column: 32, scope: !2017)
!2027 = !DILocation(line: 2137, column: 20, scope: !2017)
!2028 = !DILocation(line: 2137, column: 39, scope: !2017)
!2029 = !DILocation(line: 2137, column: 42, scope: !2017)
!2030 = !DILocation(line: 2137, column: 10, scope: !2017)
!2031 = !DILocation(line: 2137, column: 3, scope: !2017)
!2032 = distinct !DISubprogram(name: "fio_ct_if", scope: !262, file: !262, line: 2129, type: !2033, scopeLine: 2129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!239, !266, !239, !239}
!2035 = !DILocalVariable(name: "cond", arg: 1, scope: !2032, file: !262, line: 2129, type: !266)
!2036 = !DILocation(line: 2129, column: 45, scope: !2032)
!2037 = !DILocalVariable(name: "a", arg: 2, scope: !2032, file: !262, line: 2129, type: !239)
!2038 = !DILocation(line: 2129, column: 61, scope: !2032)
!2039 = !DILocalVariable(name: "b", arg: 3, scope: !2032, file: !262, line: 2129, type: !239)
!2040 = !DILocation(line: 2129, column: 74, scope: !2032)
!2041 = !DILocation(line: 2131, column: 11, scope: !2032)
!2042 = !DILocation(line: 2131, column: 22, scope: !2032)
!2043 = !DILocation(line: 2131, column: 27, scope: !2032)
!2044 = !DILocation(line: 2131, column: 19, scope: !2032)
!2045 = !DILocation(line: 2131, column: 16, scope: !2032)
!2046 = !DILocation(line: 2131, column: 36, scope: !2032)
!2047 = !DILocation(line: 2131, column: 40, scope: !2032)
!2048 = !DILocation(line: 2131, column: 38, scope: !2032)
!2049 = !DILocation(line: 2131, column: 33, scope: !2032)
!2050 = !DILocation(line: 2131, column: 13, scope: !2032)
!2051 = !DILocation(line: 2131, column: 3, scope: !2032)
!2052 = distinct !DISubprogram(name: "fio_ct_true", scope: !262, file: !262, line: 2117, type: !2053, scopeLine: 2117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!239, !239}
!2055 = !DILocalVariable(name: "cond", arg: 1, scope: !2052, file: !262, line: 2117, type: !239)
!2056 = !DILocation(line: 2117, column: 49, scope: !2052)
!2057 = !DILocation(line: 2119, column: 12, scope: !2052)
!2058 = !DILocation(line: 2119, column: 24, scope: !2052)
!2059 = !DILocation(line: 2119, column: 22, scope: !2052)
!2060 = !DILocation(line: 2119, column: 17, scope: !2052)
!2061 = !DILocation(line: 2119, column: 31, scope: !2052)
!2062 = !DILocation(line: 2119, column: 3, scope: !2052)
!2063 = distinct !DISubprogram(name: "fiobj_null", scope: !225, file: !225, line: 87, type: !298, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2064 = !DILocation(line: 87, column: 37, scope: !2063)
!2065 = distinct !DISubprogram(name: "fiobj_true", scope: !225, file: !225, line: 88, type: !298, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2066 = !DILocation(line: 88, column: 37, scope: !2065)
!2067 = distinct !DISubprogram(name: "fiobj_false", scope: !225, file: !225, line: 89, type: !298, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2068 = !DILocation(line: 89, column: 38, scope: !2067)
!2069 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !225, file: !225, line: 344, type: !2070, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!2072, !287}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!2073 = !DILocalVariable(name: "o", arg: 1, scope: !2069, file: !225, line: 344, type: !287)
!2074 = !DILocation(line: 344, column: 65, scope: !2069)
!2075 = !DILocation(line: 345, column: 11, scope: !2069)
!2076 = !DILocation(line: 345, column: 3, scope: !2069)
!2077 = !DILocation(line: 347, column: 5, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2069, file: !225, line: 345, column: 26)
!2079 = !DILocation(line: 349, column: 5, scope: !2078)
!2080 = !DILocation(line: 351, column: 5, scope: !2078)
!2081 = !DILocation(line: 353, column: 5, scope: !2078)
!2082 = !DILocation(line: 355, column: 5, scope: !2078)
!2083 = !DILocation(line: 357, column: 5, scope: !2078)
!2084 = !DILocation(line: 362, column: 5, scope: !2078)
!2085 = !DILocation(line: 364, column: 3, scope: !2069)
!2086 = !DILocation(line: 365, column: 1, scope: !2069)
!2087 = distinct !DISubprogram(name: "fiobj_type", scope: !225, file: !225, line: 250, type: !2088, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !300)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!251, !287}
!2090 = !DILocalVariable(name: "o", arg: 1, scope: !2087, file: !225, line: 250, type: !287)
!2091 = !DILocation(line: 250, column: 45, scope: !2087)
!2092 = !DILocation(line: 251, column: 8, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !225, line: 251, column: 7)
!2094 = !DILocation(line: 251, column: 7, scope: !2087)
!2095 = !DILocation(line: 252, column: 5, scope: !2093)
!2096 = !DILocation(line: 253, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2087, file: !225, line: 253, column: 7)
!2098 = !DILocation(line: 253, column: 9, scope: !2097)
!2099 = !DILocation(line: 253, column: 7, scope: !2087)
!2100 = !DILocation(line: 254, column: 5, scope: !2097)
!2101 = !DILocation(line: 255, column: 8, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2087, file: !225, line: 255, column: 7)
!2103 = !DILocation(line: 255, column: 10, scope: !2102)
!2104 = !DILocation(line: 255, column: 37, scope: !2102)
!2105 = !DILocation(line: 255, column: 7, scope: !2087)
!2106 = !DILocation(line: 256, column: 29, scope: !2102)
!2107 = !DILocation(line: 256, column: 12, scope: !2102)
!2108 = !DILocation(line: 256, column: 5, scope: !2102)
!2109 = !DILocation(line: 258, column: 8, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2087, file: !225, line: 257, column: 7)
!2111 = !DILocation(line: 258, column: 10, scope: !2110)
!2112 = !DILocation(line: 258, column: 37, scope: !2110)
!2113 = !DILocation(line: 257, column: 7, scope: !2087)
!2114 = !DILocation(line: 259, column: 5, scope: !2110)
!2115 = !DILocation(line: 260, column: 30, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2087, file: !225, line: 260, column: 7)
!2117 = !DILocation(line: 260, column: 32, scope: !2116)
!2118 = !DILocation(line: 260, column: 59, scope: !2116)
!2119 = !DILocation(line: 260, column: 7, scope: !2087)
!2120 = !DILocation(line: 261, column: 5, scope: !2116)
!2121 = !DILocation(line: 262, column: 30, scope: !2087)
!2122 = !DILocation(line: 262, column: 10, scope: !2087)
!2123 = !DILocation(line: 262, column: 3, scope: !2087)
!2124 = !DILocation(line: 263, column: 1, scope: !2087)
