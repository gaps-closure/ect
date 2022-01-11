; ModuleID = './examples/secdesk/c/orange/fiobj_hash.mod.c'
source_filename = "./examples/secdesk/c/orange/fiobj_hash.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_hash_s = type { %struct.fiobj_object_header_s, %struct.fio_hash___s }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.fio_hash___s = type { i64, i64, i64, %struct.fio_hash____ordered_s_*, %struct.fio_hash____map_s_*, i8, i8, i8 }
%struct.fio_hash____ordered_s_ = type { i64, %struct.fio_hash___couplet_s }
%struct.fio_hash___couplet_s = type { i64, i64 }
%struct.fio_hash____map_s_ = type { i64, %struct.fio_hash____ordered_s_* }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"h && FIOBJ_TYPE_IS(h, FIOBJ_T_HASH)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"./examples/secdesk/c/orange/fiobj_hash.mod.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_rehash = private unnamed_addr constant [30 x i8] c"void fiobj_hash_rehash(FIOBJ)\00", align 1
@each_at_key = internal thread_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"o && FIOBJ_TYPE_IS(o, FIOBJ_T_HASH)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_count = private unnamed_addr constant [37 x i8] c"size_t fiobj_hash_count(const FIOBJ)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@FIOBJECT_VTABLE_HASH = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobj_hash_dealloc, i64 (i64)* @fiobj_hash_count, i64 (i64)* @fiobj_hash_is_true, i64 (i64, i64)* @fiobj_hash_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* @fiobj_hash_each1, void (%struct.fio_str_info_s*, i64)* @fiobject___noop_to_str, i64 (i64)* @fiobj_hash2num, double (i64)* @fiobject___noop_to_f }, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [80 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/orange/fiobj_hash.mod.c:162\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/orange/fiobj_hash.mod.c:177\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"hash && FIOBJ_TYPE_IS(hash, FIOBJ_T_HASH)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_capa = private unnamed_addr constant [36 x i8] c"size_t fiobj_hash_capa(const FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_set = private unnamed_addr constant [40 x i8] c"int fiobj_hash_set(FIOBJ, FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_pop = private unnamed_addr constant [37 x i8] c"FIOBJ fiobj_hash_pop(FIOBJ, FIOBJ *)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_replace = private unnamed_addr constant [46 x i8] c"FIOBJ fiobj_hash_replace(FIOBJ, FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_remove = private unnamed_addr constant [38 x i8] c"FIOBJ fiobj_hash_remove(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_remove2 = private unnamed_addr constant [42 x i8] c"FIOBJ fiobj_hash_remove2(FIOBJ, uint64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_get = private unnamed_addr constant [41 x i8] c"FIOBJ fiobj_hash_get(const FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_get2 = private unnamed_addr constant [45 x i8] c"FIOBJ fiobj_hash_get2(const FIOBJ, uint64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_haskey = private unnamed_addr constant [42 x i8] c"int fiobj_hash_haskey(const FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_clear = private unnamed_addr constant [35 x i8] c"void fiobj_hash_clear(const FIOBJ)\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [274 x i8] c"FATAL: facil.io Set / Hash Map has too many collisions (%zu/%zu).\0A\09\09this is a fatal implementation error,please report this issue at facio.io's open source project\0A\09\09Note: hash maps and sets should never reach this point.\0A\09\09They should be guarded against collision attacks.\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"FATAL ERROR: couldn't allocate memory for Set data\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"WARNING: (fio hash map) too many full collisions - under attack?\00", align 1
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@__PRETTY_FUNCTION__.fiobj_hash_each1 = private unnamed_addr constant [71 x i8] c"size_t fiobj_hash_each1(FIOBJ, size_t, int (*)(FIOBJ, void *), void *)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.13 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.15 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.17 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0) }, align 8

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
define dso_local void @fiobj_hash_rehash(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 42)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_rehash, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1
  call void @fio_hash___rehash(%struct.fio_hash___s* %16)
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
define internal void @fio_hash___rehash(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___s*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.fio_hash____ordered_s_*, align 8
  %5 = alloca %struct.fio_hash____ordered_s_*, align 8
  %6 = alloca %struct.fio_hash____map_s_*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  %7 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  call void @fio_hash____compact_ordered_array_(%struct.fio_hash___s* %7)
  %8 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %9 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %8, i32 0, i32 5
  store i8 0, i8* %9, align 8
  store i8 0, i8* %3, align 1
  br label %10

10:                                               ; preds = %71, %1
  %11 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %12 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %11, i32 0, i32 6
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sge i32 %14, 16
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load i8, i8* %3, align 1
  %18 = add i8 %17, 1
  store i8 %18, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %19, 3
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %23 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %22, i32 0, i32 5
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %30 = icmp sle i32 1, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %33 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %36 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.9, i64 0, i64 0), i64 %34, i64 %37)
  br label %38

38:                                               ; preds = %31, %28
  br label %39

39:                                               ; preds = %38
  call void @exit(i32 -1) #7
  unreachable

40:                                               ; preds = %21, %16, %10
  %41 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  call void @fio_hash____reallocate_set_mem_(%struct.fio_hash___s* %41)
  %42 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %43 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %42, i32 0, i32 3
  %44 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %43, align 8
  %45 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %46 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %44, i64 %47
  store %struct.fio_hash____ordered_s_* %48, %struct.fio_hash____ordered_s_** %4, align 8
  %49 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %50 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %49, i32 0, i32 3
  %51 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %50, align 8
  store %struct.fio_hash____ordered_s_* %51, %struct.fio_hash____ordered_s_** %5, align 8
  br label %52

52:                                               ; preds = %85, %40
  %53 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8
  %54 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %55 = icmp ult %struct.fio_hash____ordered_s_* %53, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %58 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8
  %59 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8
  %62 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %61, i32 0, i32 1
  %63 = bitcast %struct.fio_hash___couplet_s* %62 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %57, i64 %60, i64 %65, i64 %67)
  store %struct.fio_hash____map_s_* %68, %struct.fio_hash____map_s_** %6, align 8
  %69 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %6, align 8
  %70 = icmp ne %struct.fio_hash____map_s_* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %56
  %72 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %73 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %72, i32 0, i32 6
  %74 = load i8, i8* %73, align 1
  %75 = add i8 %74, 1
  store i8 %75, i8* %73, align 1
  br label %10

76:                                               ; preds = %56
  %77 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8
  %78 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %6, align 8
  %79 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %78, i32 0, i32 1
  store %struct.fio_hash____ordered_s_* %77, %struct.fio_hash____ordered_s_** %79, align 8
  %80 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8
  %81 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %6, align 8
  %84 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %76
  %86 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8
  %87 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %86, i32 1
  store %struct.fio_hash____ordered_s_* %87, %struct.fio_hash____ordered_s_** %5, align 8
  br label %52

88:                                               ; preds = %52
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_key_in_loop() #0 {
  %1 = load i64, i64* @each_at_key, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_count(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 42)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_count, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1
  %17 = call i64 @fio_hash___count(%struct.fio_hash___s* %16)
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___count(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  %3 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash2num(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_hash_count(i64 %3)
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_hash_dealloc(i64, void (i64, i8*)*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_hash____ordered_s_*, align 8
  store i64 %0, i64* %4, align 8
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = and i64 %8, -8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.fiobj_hash_s*
  %12 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %12, i32 0, i32 3
  %14 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %13, align 8
  store %struct.fio_hash____ordered_s_* %14, %struct.fio_hash____ordered_s_** %7, align 8
  br label %15

15:                                               ; preds = %62, %3
  %16 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %17 = icmp ne %struct.fio_hash____ordered_s_* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, -8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.fiobj_hash_s*
  %24 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %24, i32 0, i32 3
  %26 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %27, -8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.fiobj_hash_s*
  %31 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %26, i64 %33
  %35 = icmp ult %struct.fio_hash____ordered_s_* %19, %34
  br label %36

36:                                               ; preds = %18, %15
  %37 = phi i1 [ false, %15 ], [ %35, %18 ]
  br i1 %37, label %38, label %65

38:                                               ; preds = %36
  %39 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %40 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8
  %46 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %47 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %6, align 8
  call void %45(i64 %49, i8* %50)
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %53 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  call void @fiobj_free(i64 %55)
  %56 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %57 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %60 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %51
  %63 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %64 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %63, i32 1
  store %struct.fio_hash____ordered_s_* %64, %struct.fio_hash____ordered_s_** %7, align 8
  br label %15

65:                                               ; preds = %36
  %66 = load i64, i64* %4, align 8
  %67 = and i64 %66, -8
  %68 = inttoptr i64 %67 to i8*
  %69 = bitcast i8* %68 to %struct.fiobj_hash_s*
  %70 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %4, align 8
  %73 = and i64 %72, -8
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast i8* %74 to %struct.fiobj_hash_s*
  %76 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %75, i32 0, i32 1
  call void @fio_hash___free(%struct.fio_hash___s* %76)
  %77 = load i64, i64* %4, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i8*
  call void @fio_free(i8* %79)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_is_true(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @fiobj_hash_count(i64 %3)
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_is_eq(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, -8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.fiobj_hash_s*
  %10 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %9, i32 0, i32 1
  %11 = call i64 @fio_hash___count(%struct.fio_hash___s* %10)
  %12 = load i64, i64* %5, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1
  %17 = call i64 @fio_hash___count(%struct.fio_hash___s* %16)
  %18 = icmp ne i64 %11, %17
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
define internal i64 @fiobj_hash_each1(i64, i64, i32 (i64, i8*)*, i8*) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fio_hash___s*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @fiobj_type_is(i64 %16, i8 zeroext 42)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %21

20:                                               ; preds = %15, %4
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_each1, i64 0, i64 0)) #7
  unreachable

21:                                               ; preds = %19
  %22 = load i64, i64* @each_at_key, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, -8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.fiobj_hash_s*
  %27 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %26, i32 0, i32 1
  store %struct.fio_hash___s* %27, %struct.fio_hash___s** %10, align 8
  store i64 0, i64* %11, align 8
  %28 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %29 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %32 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %21
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %68, %35
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %40 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %37
  %44 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %45 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %44, i32 0, i32 3
  %46 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %46, i64 %47
  %49 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* @each_at_key, align 8
  %52 = load i32 (i64, i8*)*, i32 (i64, i8*)** %7, align 8
  %53 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %54 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %53, i32 0, i32 3
  %55 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %55, i64 %56
  %58 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 %52(i64 %60, i8* %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %153

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %37

71:                                               ; preds = %37
  br label %152

72:                                               ; preds = %21
  store i64 0, i64* %12, align 8
  br label %73

73:                                               ; preds = %102, %72
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %80 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i1 [ false, %73 ], [ %82, %77 ]
  br i1 %84, label %85, label %105

85:                                               ; preds = %83
  %86 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %87 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %86, i32 0, i32 3
  %88 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %88, i64 %89
  %91 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %6, align 8
  br label %101

98:                                               ; preds = %85
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %73

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %148, %105
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %109 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %107, %110
  br i1 %111, label %112, label %151

112:                                              ; preds = %106
  %113 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %114 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %113, i32 0, i32 3
  %115 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %115, i64 %116
  %118 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %148

123:                                              ; preds = %112
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %11, align 8
  %126 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %127 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %126, i32 0, i32 3
  %128 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %128, i64 %129
  %131 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* @each_at_key, align 8
  %134 = load i32 (i64, i8*)*, i32 (i64, i8*)** %7, align 8
  %135 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8
  %136 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %135, i32 0, i32 3
  %137 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %137, i64 %138
  %140 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 %134(i64 %142, i8* %143)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %147

146:                                              ; preds = %123
  br label %151

147:                                              ; preds = %123
  br label %148

148:                                              ; preds = %147, %122
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %12, align 8
  br label %106

151:                                              ; preds = %146, %106
  br label %152

152:                                              ; preds = %151, %71
  br label %153

153:                                              ; preds = %152, %64
  %154 = load i64, i64* %9, align 8
  store i64 %154, i64* @each_at_key, align 8
  %155 = load i64, i64* %11, align 8
  ret i64 %155
}

declare dso_local void @fiobject___noop_to_str(%struct.fio_str_info_s* sret, i64) #4

declare dso_local double @fiobject___noop_to_f(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_new() #0 {
  %1 = alloca %struct.fiobj_hash_s*, align 8
  %2 = alloca %struct.fiobj_hash_s, align 8
  %3 = call noalias i8* @fio_malloc(i64 56)
  %4 = ptrtoint i8* %3 to i64
  %5 = and i64 %4, 15
  %6 = icmp eq i64 %5, 0
  call void @llvm.assume(i1 %6)
  %7 = bitcast i8* %3 to %struct.fiobj_hash_s*
  store %struct.fiobj_hash_s* %7, %struct.fiobj_hash_s** %1, align 8
  %8 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %1, align 8
  %9 = icmp ne %struct.fiobj_hash_s* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %10
  %12 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %13 = icmp sle i32 1, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15
  %17 = call i32 @kill(i32 0, i32 2) #1
  %18 = call i32* @__errno_location() #8
  %19 = load i32, i32* %18, align 4
  call void @exit(i32 %19) #7
  unreachable

20:                                               ; preds = %0
  %21 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %1, align 8
  %22 = bitcast %struct.fiobj_hash_s* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 56, i1 false)
  %23 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %2, i32 0, i32 0
  %24 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %23, i32 0, i32 0
  store i8 42, i8* %24, align 8
  %25 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %23, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %2, i32 0, i32 1
  %27 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = bitcast %struct.fiobj_hash_s* %21 to i8*
  %29 = bitcast %struct.fiobj_hash_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 56, i1 false)
  %30 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %1, align 8
  %31 = ptrtoint %struct.fiobj_hash_s* %30 to i64
  %32 = or i64 %31, 4
  ret i64 %32
}

declare dso_local noalias i8* @fio_malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_new2(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_hash_s*, align 8
  %4 = alloca %struct.fiobj_hash_s, align 8
  store i64 %0, i64* %2, align 8
  %5 = call noalias i8* @fio_malloc(i64 56)
  %6 = ptrtoint i8* %5 to i64
  %7 = and i64 %6, 15
  %8 = icmp eq i64 %7, 0
  call void @llvm.assume(i1 %8)
  %9 = bitcast i8* %5 to %struct.fiobj_hash_s*
  store %struct.fiobj_hash_s* %9, %struct.fiobj_hash_s** %3, align 8
  %10 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %3, align 8
  %11 = icmp ne %struct.fiobj_hash_s* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %15 = icmp sle i32 1, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17
  %19 = call i32 @kill(i32 0, i32 2) #1
  %20 = call i32* @__errno_location() #8
  %21 = load i32, i32* %20, align 4
  call void @exit(i32 %21) #7
  unreachable

22:                                               ; preds = %1
  %23 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %3, align 8
  %24 = bitcast %struct.fiobj_hash_s* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 56, i1 false)
  %25 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %25, i32 0, i32 0
  store i8 42, i8* %26, align 8
  %27 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %25, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %4, i32 0, i32 1
  %29 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = bitcast %struct.fiobj_hash_s* %23 to i8*
  %31 = bitcast %struct.fiobj_hash_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 56, i1 false)
  %32 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %3, align 8
  %33 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %32, i32 0, i32 1
  %34 = load i64, i64* %2, align 8
  %35 = call i64 @fio_hash___capa_require(%struct.fio_hash___s* %33, i64 %34)
  %36 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %3, align 8
  %37 = ptrtoint %struct.fiobj_hash_s* %36 to i64
  %38 = or i64 %37, 4
  ret i64 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___capa_require(%struct.fio_hash___s*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_hash___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8
  %8 = call i64 @fio_hash___capa(%struct.fio_hash___s* %7)
  %9 = icmp ule i64 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8
  %12 = call i64 @fio_hash___capa(%struct.fio_hash___s* %11)
  store i64 %12, i64* %3, align 8
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8
  %15 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %14, i32 0, i32 6
  store i8 2, i8* %15, align 1
  br label %16

16:                                               ; preds = %25, %13
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8
  %19 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %18, i32 0, i32 6
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = icmp ugt i64 %17, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8
  %27 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %26, i32 0, i32 6
  %28 = load i8, i8* %27, align 1
  %29 = add i8 %28, 1
  store i8 %29, i8* %27, align 1
  br label %16

30:                                               ; preds = %16
  %31 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8
  call void @fio_hash___rehash(%struct.fio_hash___s* %31)
  %32 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8
  %33 = call i64 @fio_hash___capa(%struct.fio_hash___s* %32)
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %30, %10
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_capa(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 42)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_capa, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1
  %17 = call i64 @fio_hash___capa(%struct.fio_hash___s* %16)
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___capa(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  %3 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_hash_set(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @fiobj_type_is(i64 %10, i8 zeroext 42)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %15

14:                                               ; preds = %9, %3
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_set, i64 0, i64 0)) #7
  unreachable

15:                                               ; preds = %13
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @fiobj_type_is(i64 %16, i8 zeroext 40)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  call void @fiobj_str_freeze(i64 %20)
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i64, i64* %4, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.fiobj_hash_s*
  %26 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @fiobj_obj2hash(i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  call void @fio_hash___insert(%struct.fio_hash___s* %26, i64 %28, i64 %29, i64 %30, i64* null)
  %31 = load i64, i64* %6, align 8
  call void @fiobj_free(i64 %31)
  ret i32 0
}

declare dso_local void @fiobj_str_freeze(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash___insert(%struct.fio_hash___s*, i64, i64, i64, i64*) #0 {
  %6 = alloca %struct.fio_hash___s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.fio_hash___couplet_s, align 8
  %12 = alloca %struct.fio_hash___couplet_s, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %11, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %11, i32 0, i32 1
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %17, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = bitcast %struct.fio_hash___couplet_s* %11 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call { i64, i64 } @fio_hash____insert_or_overwrite_(%struct.fio_hash___s* %13, i64 %14, i64 %22, i64 %24, i32 1, i64* %19)
  %26 = bitcast %struct.fio_hash___couplet_s* %12 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = extractvalue { i64, i64 } %25, 0
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = extractvalue { i64, i64 } %25, 1
  store i64 %30, i64* %29, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_obj2hash(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @fiobj_type_is(i64 %5, i8 zeroext 40)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @fiobj_str_hash(i64 %9)
  store i64 %10, i64* %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, 6
  %21 = icmp ne i64 %20, 6
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %14, %11
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %2, align 8
  br label %31

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %4, i64 %25)
  %26 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @fio_siphash13(i8* %27, i64 %29, i64 ptrtoint (i64 (i64, i32 (i64, i8*)*, i8*)* @fiobj_each2 to i64), i64 ptrtoint (void (i64)* @fiobj_free_complex_object to i64))
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %24, %22, %8
  %32 = load i64, i64* %2, align 8
  ret i64 %32
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
define dso_local i64 @fiobj_hash_pop(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fio_hash___couplet_s, align 8
  %8 = alloca %struct.fio_hash___couplet_s, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @fiobj_type_is(i64 %12, i8 zeroext 42)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %17

16:                                               ; preds = %11, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 219, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_pop, i64 0, i64 0)) #7
  unreachable

17:                                               ; preds = %15
  %18 = load i64, i64* %4, align 8
  %19 = and i64 %18, -8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.fiobj_hash_s*
  %22 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %21, i32 0, i32 1
  %23 = call i64 @fio_hash___count(%struct.fio_hash___s* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %66

26:                                               ; preds = %17
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %27, -8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.fiobj_hash_s*
  %31 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %30, i32 0, i32 1
  %32 = call { i64, i64 } @fio_hash___last(%struct.fio_hash___s* %31)
  %33 = bitcast %struct.fio_hash___couplet_s* %7 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i64, i64 } %32, 0
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i64, i64 } %32, 1
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @fiobj_dup(i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %26
  %44 = load i64, i64* %4, align 8
  %45 = and i64 %44, -8
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.fiobj_hash_s*
  %48 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %47, i32 0, i32 1
  %49 = call { i64, i64 } @fio_hash___last(%struct.fio_hash___s* %48)
  %50 = bitcast %struct.fio_hash___couplet_s* %8 to { i64, i64 }*
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = extractvalue { i64, i64 } %49, 0
  store i64 %52, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = extractvalue { i64, i64 } %49, 1
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @fiobj_dup(i64 %56)
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %43, %26
  %60 = load i64, i64* %4, align 8
  %61 = and i64 %60, -8
  %62 = inttoptr i64 %61 to i8*
  %63 = bitcast i8* %62 to %struct.fiobj_hash_s*
  %64 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %63, i32 0, i32 1
  call void @fio_hash___pop(%struct.fio_hash___s* %64)
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %59, %25
  %67 = load i64, i64* %3, align 8
  ret i64 %67
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
define internal { i64, i64 } @fio_hash___last(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___couplet_s, align 8
  %3 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %3, align 8
  %4 = load %struct.fio_hash___s*, %struct.fio_hash___s** %3, align 8
  %5 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %4, i32 0, i32 3
  %6 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8
  %7 = icmp ne %struct.fio_hash____ordered_s_* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.fio_hash___s*, %struct.fio_hash___s** %3, align 8
  %10 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8, %1
  %14 = bitcast %struct.fio_hash___couplet_s* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  br label %27

15:                                               ; preds = %8
  %16 = load %struct.fio_hash___s*, %struct.fio_hash___s** %3, align 8
  %17 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %16, i32 0, i32 3
  %18 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %17, align 8
  %19 = load %struct.fio_hash___s*, %struct.fio_hash___s** %3, align 8
  %20 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %18, i64 %22
  %24 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %23, i32 0, i32 1
  %25 = bitcast %struct.fio_hash___couplet_s* %2 to i8*
  %26 = bitcast %struct.fio_hash___couplet_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  br label %27

27:                                               ; preds = %15, %13
  %28 = bitcast %struct.fio_hash___couplet_s* %2 to { i64, i64 }*
  %29 = load { i64, i64 }, { i64, i64 }* %28, align 8
  ret { i64, i64 } %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash___pop(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  %3 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %3, i32 0, i32 3
  %5 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %6 = icmp ne %struct.fio_hash____ordered_s_* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %9 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %99

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %17 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %16, i32 0, i32 3
  %18 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %17, align 8
  %19 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %20 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %18, i64 %22
  %24 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  call void @fiobj_free(i64 %26)
  %27 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %28 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %27, i32 0, i32 3
  %29 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %28, align 8
  %30 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %31 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %29, i64 %33
  %35 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %40 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %39, i32 0, i32 3
  %41 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %40, align 8
  %42 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %43 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %41, i64 %45
  %47 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  call void @fiobj_free(i64 %49)
  %50 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %51 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %50, i32 0, i32 3
  %52 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %51, align 8
  %53 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %54 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %52, i64 %56
  %58 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %63 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %62, i32 0, i32 3
  %64 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %63, align 8
  %65 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %66 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %64, i64 %68
  %70 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %72 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %97, %61
  %76 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %77 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %82 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %87 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %86, i32 0, i32 3
  %88 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %87, align 8
  %89 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %90 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %88, i64 %92
  %94 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br label %97

97:                                               ; preds = %85, %80
  %98 = phi i1 [ false, %80 ], [ %96, %85 ]
  br i1 %98, label %75, label %99

99:                                               ; preds = %12, %97
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_replace(i64, i64, i64) #0 {
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
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 42)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %16

15:                                               ; preds = %10, %3
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 240, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_replace, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  store i64 0, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.fiobj_hash_s*
  %21 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @fiobj_obj2hash(i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  call void @fio_hash___insert(%struct.fio_hash___s* %21, i64 %23, i64 %24, i64 %25, i64* %7)
  %26 = load i64, i64* %6, align 8
  call void @fiobj_free(i64 %26)
  %27 = load i64, i64* %7, align 8
  ret i64 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_remove(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 42)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %14

13:                                               ; preds = %8, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_remove, i64 0, i64 0)) #7
  unreachable

14:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.fiobj_hash_s*
  %19 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %18, i32 0, i32 1
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @fiobj_obj2hash(i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @fio_hash___remove(%struct.fio_hash___s* %19, i64 %21, i64 %22, i64* %5)
  %24 = load i64, i64* %5, align 8
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_hash___remove(%struct.fio_hash___s*, i64, i64, i64*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fio_hash___s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.fio_hash____map_s_*, align 8
  %11 = alloca %struct.fio_hash___couplet_s, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %11, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %11, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = bitcast %struct.fio_hash___couplet_s* %11 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %12, i64 %13, i64 %19, i64 %21)
  store %struct.fio_hash____map_s_* %22, %struct.fio_hash____map_s_** %10, align 8
  %23 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %24 = icmp ne %struct.fio_hash____map_s_* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %27 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %26, i32 0, i32 1
  %28 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %27, align 8
  %29 = icmp ne %struct.fio_hash____ordered_s_* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %4
  store i32 -1, i32* %5, align 4
  br label %123

31:                                               ; preds = %25
  %32 = load i64*, i64** %9, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %36 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %35, i32 0, i32 1
  %37 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %36, align 8
  %38 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @fiobj_dup(i64 %40)
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %34, %31
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %47 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %46, i32 0, i32 1
  %48 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %47, align 8
  %49 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  call void @fiobj_free(i64 %51)
  %52 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %53 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %52, i32 0, i32 1
  %54 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %53, align 8
  %55 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %60 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %59, i32 0, i32 1
  %61 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %60, align 8
  %62 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  call void @fiobj_free(i64 %64)
  %65 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %66 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %65, i32 0, i32 1
  %67 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %66, align 8
  %68 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %73 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %77 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %76, i32 0, i32 1
  %78 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %77, align 8
  %79 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %81 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %80, i32 0, i32 1
  %82 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %81, align 8
  %83 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %84 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %87 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %86, i32 0, i32 3
  %88 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %87, align 8
  %89 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %88, i64 %85
  %90 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %89, i64 -1
  %91 = icmp eq %struct.fio_hash____ordered_s_* %82, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %71
  %93 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %94 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %117, %92
  %96 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %97 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, -1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95
  %101 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %102 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %107 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %106, i32 0, i32 3
  %108 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %107, align 8
  %109 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8
  %110 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %108, i64 %112
  %114 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br label %117

117:                                              ; preds = %105, %100
  %118 = phi i1 [ false, %100 ], [ %116, %105 ]
  br i1 %118, label %95, label %119

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %119, %71
  %121 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %122 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %121, i32 0, i32 1
  store %struct.fio_hash____ordered_s_* null, %struct.fio_hash____ordered_s_** %122, align 8
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %120, %30
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_remove2(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 42)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %14

13:                                               ; preds = %8, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 262, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_remove2, i64 0, i64 0)) #7
  unreachable

14:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.fiobj_hash_s*
  %19 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %18, i32 0, i32 1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @fio_hash___remove(%struct.fio_hash___s* %19, i64 %20, i64 -1, i64* %5)
  %22 = load i64, i64* %5, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_hash_delete(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.fiobj_hash_s*
  %9 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @fiobj_obj2hash(i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @fio_hash___remove(%struct.fio_hash___s* %9, i64 %11, i64 %12, i64* null)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_hash_delete2(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.fiobj_hash_s*
  %9 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @fio_hash___remove(%struct.fio_hash___s* %9, i64 %10, i64 -1, i64* null)
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_get(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 42)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 298, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_get, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.fiobj_hash_s*
  %18 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %17, i32 0, i32 1
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @fiobj_obj2hash(i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @fio_hash___find(%struct.fio_hash___s* %18, i64 %20, i64 %21)
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___find(%struct.fio_hash___s*, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_hash___s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_hash____map_s_*, align 8
  %9 = alloca %struct.fio_hash___couplet_s, align 8
  %10 = alloca i64, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.fio_hash___s*, %struct.fio_hash___s** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %9, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %9, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = bitcast %struct.fio_hash___couplet_s* %9 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %11, i64 %12, i64 %18, i64 %20)
  store %struct.fio_hash____map_s_* %21, %struct.fio_hash____map_s_** %8, align 8
  %22 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %8, align 8
  %23 = icmp ne %struct.fio_hash____map_s_* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %8, align 8
  %26 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %25, i32 0, i32 1
  %27 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %26, align 8
  %28 = icmp ne %struct.fio_hash____ordered_s_* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %3
  %30 = bitcast i64* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false)
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %4, align 8
  br label %39

32:                                               ; preds = %24
  %33 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %8, align 8
  %34 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %33, i32 0, i32 1
  %35 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %34, align 8
  %36 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_get2(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 42)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_get2, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.fiobj_hash_s*
  %18 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %17, i32 0, i32 1
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @fio_hash___find(%struct.fio_hash___s* %18, i64 %19, i64 -1)
  ret i64 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_hash_haskey(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 42)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 321, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_haskey, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.fiobj_hash_s*
  %18 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %17, i32 0, i32 1
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @fiobj_obj2hash(i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @fio_hash___find(%struct.fio_hash___s* %18, i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_hash_clear(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 42)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_clear, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1
  call void @fio_hash___free(%struct.fio_hash___s* %16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash___free(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___s*, align 8
  %3 = alloca %struct.fio_hash____ordered_s_*, align 8
  %4 = alloca %struct.fio_hash____ordered_s_*, align 8
  %5 = alloca %struct.fio_hash___s, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  %6 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %6, i32 0, i32 3
  %8 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8
  %9 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %8, i64 %11
  store %struct.fio_hash____ordered_s_* %12, %struct.fio_hash____ordered_s_** %3, align 8
  %13 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %14 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %13, i32 0, i32 3
  %15 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %14, align 8
  %16 = icmp ne %struct.fio_hash____ordered_s_* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %1
  %18 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %19 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %18, i32 0, i32 3
  %20 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %19, align 8
  %21 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8
  %22 = icmp ne %struct.fio_hash____ordered_s_* %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  %24 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %25 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %24, i32 0, i32 3
  %26 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %25, align 8
  store %struct.fio_hash____ordered_s_* %26, %struct.fio_hash____ordered_s_** %4, align 8
  br label %27

27:                                               ; preds = %58, %23
  %28 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %29 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8
  %30 = icmp ult %struct.fio_hash____ordered_s_* %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %33 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %40 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  call void @fiobj_free(i64 %42)
  %43 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %44 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %49 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  call void @fiobj_free(i64 %51)
  %52 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %53 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %60 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %59, i32 1
  store %struct.fio_hash____ordered_s_* %60, %struct.fio_hash____ordered_s_** %4, align 8
  br label %27

61:                                               ; preds = %27
  br label %62

62:                                               ; preds = %61, %17, %1
  %63 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %64 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %63, i32 0, i32 4
  %65 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %64, align 8
  %66 = bitcast %struct.fio_hash____map_s_* %65 to i8*
  call void @fio_free(i8* %66)
  %67 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %68 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %67, i32 0, i32 3
  %69 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %68, align 8
  %70 = bitcast %struct.fio_hash____ordered_s_* %69 to i8*
  call void @fio_free(i8* %70)
  %71 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %72 = bitcast %struct.fio_hash___s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %72, i8 0, i64 48, i1 false)
  %73 = bitcast %struct.fio_hash___s* %71 to i8*
  %74 = bitcast %struct.fio_hash___s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 48, i1 false)
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
define internal void @fio_hash____compact_ordered_array_(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___s*, align 8
  %3 = alloca %struct.fio_hash____ordered_s_*, align 8
  %4 = alloca %struct.fio_hash____ordered_s_*, align 8
  %5 = alloca %struct.fio_hash____ordered_s_*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  %6 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %16 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %15, i32 0, i32 3
  %17 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %16, align 8
  store %struct.fio_hash____ordered_s_* %17, %struct.fio_hash____ordered_s_** %3, align 8
  %18 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %19 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %18, i32 0, i32 3
  %20 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %19, align 8
  store %struct.fio_hash____ordered_s_* %20, %struct.fio_hash____ordered_s_** %4, align 8
  %21 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %22 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %21, i32 0, i32 3
  %23 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %22, align 8
  %24 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %25 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %23, i64 %26
  store %struct.fio_hash____ordered_s_* %27, %struct.fio_hash____ordered_s_** %5, align 8
  br label %28

28:                                               ; preds = %50, %14
  %29 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8
  %30 = icmp ne %struct.fio_hash____ordered_s_* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8
  %33 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8
  %34 = icmp ult %struct.fio_hash____ordered_s_* %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %53

37:                                               ; preds = %35
  %38 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8
  %39 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %45 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8
  %46 = bitcast %struct.fio_hash____ordered_s_* %44 to i8*
  %47 = bitcast %struct.fio_hash____ordered_s_* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  %48 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %49 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %48, i32 1
  store %struct.fio_hash____ordered_s_* %49, %struct.fio_hash____ordered_s_** %4, align 8
  br label %50

50:                                               ; preds = %43, %42
  %51 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8
  %52 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %51, i32 1
  store %struct.fio_hash____ordered_s_* %52, %struct.fio_hash____ordered_s_** %3, align 8
  br label %28

53:                                               ; preds = %35
  %54 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8
  %55 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %56 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %55, i32 0, i32 3
  %57 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %56, align 8
  %58 = ptrtoint %struct.fio_hash____ordered_s_* %54 to i64
  %59 = ptrtoint %struct.fio_hash____ordered_s_* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 24
  %62 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %63 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %65 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %64, i32 0, i32 2
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %53, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash____reallocate_set_mem_(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___s*, align 8
  %3 = alloca i64, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  %4 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %5 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %4, i32 0, i32 6
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = zext i32 %7 to i64
  %9 = shl i64 1, %8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %11 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %10, i32 0, i32 4
  %12 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %11, align 8
  %13 = bitcast %struct.fio_hash____map_s_* %12 to i8*
  call void @fio_free(i8* %13)
  %14 = load i64, i64* %3, align 8
  %15 = call noalias i8* @fio_calloc(i64 16, i64 %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 15
  %18 = icmp eq i64 %17, 0
  call void @llvm.assume(i1 %18)
  %19 = bitcast i8* %15 to %struct.fio_hash____map_s_*
  %20 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %21 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %20, i32 0, i32 4
  store %struct.fio_hash____map_s_* %19, %struct.fio_hash____map_s_** %21, align 8
  %22 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %23 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %22, i32 0, i32 3
  %24 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %23, align 8
  %25 = bitcast %struct.fio_hash____ordered_s_* %24 to i8*
  %26 = load i64, i64* %3, align 8
  %27 = mul i64 %26, 24
  %28 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %29 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %30, 24
  %32 = call i8* @fio_realloc2(i8* %25, i64 %27, i64 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 %33, 15
  %35 = icmp eq i64 %34, 0
  call void @llvm.assume(i1 %35)
  %36 = bitcast i8* %32 to %struct.fio_hash____ordered_s_*
  %37 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %38 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %37, i32 0, i32 3
  store %struct.fio_hash____ordered_s_* %36, %struct.fio_hash____ordered_s_** %38, align 8
  %39 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %40 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %39, i32 0, i32 4
  %41 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %40, align 8
  %42 = icmp ne %struct.fio_hash____map_s_* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %1
  %44 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %45 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %44, i32 0, i32 3
  %46 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %45, align 8
  %47 = icmp ne %struct.fio_hash____ordered_s_* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %1
  call void @perror(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  %49 = call i32* @__errno_location() #8
  %50 = load i32, i32* %49, align 4
  call void @exit(i32 %50) #7
  unreachable

51:                                               ; preds = %43
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %54 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s*, i64, i64, i64) #0 {
  %5 = alloca %struct.fio_hash____map_s_*, align 8
  %6 = alloca %struct.fio_hash___couplet_s, align 8
  %7 = alloca %struct.fio_hash___s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fio_hash____map_s_*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = bitcast %struct.fio_hash___couplet_s* %6 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  store i64 %2, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  store i64 %3, i64* %18, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %7, align 8
  store i64 %1, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i64 -1, i64* %8, align 8
  br label %22

22:                                               ; preds = %21, %4
  %23 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %24 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %23, i32 0, i32 4
  %25 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %24, align 8
  %26 = icmp ne %struct.fio_hash____map_s_* %25, null
  br i1 %26, label %27, label %234

27:                                               ; preds = %22
  %28 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %29 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %28, i32 0, i32 5
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %35 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %38 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  call void @fio_hash___rehash(%struct.fio_hash___s* %42)
  br label %43

43:                                               ; preds = %41, %33, %27
  store i64 0, i64* %9, align 8
  %44 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %45 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %44, i32 0, i32 6
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = sub i64 %49, 1
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = lshr i64 %51, 0
  %53 = load i64, i64* %8, align 8
  %54 = shl i64 %53, 0
  %55 = or i64 %52, %54
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @fio_ct_if2(i64 0, i64 %56, i64 0)
  %58 = xor i64 %55, %57
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %61 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %60, i32 0, i32 6
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  %64 = and i64 %63, 63
  %65 = lshr i64 %59, %64
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %68 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %67, i32 0, i32 6
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 0, %70
  %72 = sext i32 %71 to i64
  %73 = and i64 %72, 63
  %74 = shl i64 %66, %73
  %75 = or i64 %65, %74
  %76 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %77 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %76, i32 0, i32 6
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i64
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @fio_ct_if2(i64 %79, i64 %80, i64 0)
  %82 = xor i64 %75, %81
  store i64 %82, i64* %14, align 8
  %83 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %84 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %83, i32 0, i32 4
  %85 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %11, align 8
  %88 = and i64 %86, %87
  %89 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %85, i64 %88
  store %struct.fio_hash____map_s_* %89, %struct.fio_hash____map_s_** %10, align 8
  %90 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %91 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 0, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %43
  %95 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  store %struct.fio_hash____map_s_* %95, %struct.fio_hash____map_s_** %5, align 8
  br label %235

96:                                               ; preds = %43
  %97 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %98 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %137

102:                                              ; preds = %96
  %103 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %104 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %103, i32 0, i32 1
  %105 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %104, align 8
  %106 = icmp ne %struct.fio_hash____ordered_s_* %105, null
  br i1 %106, label %107, label %130

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %6, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, -1
  br i1 %110, label %130, label %111

111:                                              ; preds = %107
  %112 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %113 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %112, i32 0, i32 1
  %114 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %113, align 8
  %115 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, -1
  br i1 %118, label %130, label %119

119:                                              ; preds = %111
  %120 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %121 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %120, i32 0, i32 1
  %122 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %121, align 8
  %123 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %6, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @fiobj_iseq(i64 %125, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119, %111, %107, %102
  %131 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  store %struct.fio_hash____map_s_* %131, %struct.fio_hash____map_s_** %5, align 8
  br label %235

132:                                              ; preds = %119
  %133 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %134 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %133, i32 0, i32 5
  store i8 1, i8* %134, align 8
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %9, align 8
  br label %137

137:                                              ; preds = %132, %96
  store i64 0, i64* %12, align 8
  %138 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %139 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ugt i64 %140, 384
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %148

143:                                              ; preds = %137
  %144 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %145 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = lshr i64 %146, 2
  br label %148

148:                                              ; preds = %143, %142
  %149 = phi i64 [ 96, %142 ], [ %147, %143 ]
  %150 = mul i64 11, %149
  store i64 %150, i64* %15, align 8
  br label %151

151:                                              ; preds = %232, %148
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %15, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %233

155:                                              ; preds = %151
  %156 = load i64, i64* %12, align 8
  %157 = add i64 %156, 11
  store i64 %157, i64* %12, align 8
  %158 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %159 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %158, i32 0, i32 4
  %160 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %159, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %161, %162
  %164 = load i64, i64* %11, align 8
  %165 = and i64 %163, %164
  %166 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %160, i64 %165
  store %struct.fio_hash____map_s_* %166, %struct.fio_hash____map_s_** %10, align 8
  %167 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %168 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 0, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %155
  %172 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  store %struct.fio_hash____map_s_* %172, %struct.fio_hash____map_s_** %5, align 8
  br label %235

173:                                              ; preds = %155
  %174 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %175 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %13, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %232

179:                                              ; preds = %173
  %180 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %181 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %180, i32 0, i32 1
  %182 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %181, align 8
  %183 = icmp ne %struct.fio_hash____ordered_s_* %182, null
  br i1 %183, label %184, label %207

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %6, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, -1
  br i1 %187, label %207, label %188

188:                                              ; preds = %184
  %189 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %190 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %189, i32 0, i32 1
  %191 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %190, align 8
  %192 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, -1
  br i1 %195, label %207, label %196

196:                                              ; preds = %188
  %197 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  %198 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %197, i32 0, i32 1
  %199 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %198, align 8
  %200 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %6, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @fiobj_iseq(i64 %202, i64 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %196, %188, %184, %179
  %208 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  store %struct.fio_hash____map_s_* %208, %struct.fio_hash____map_s_** %5, align 8
  br label %235

209:                                              ; preds = %196
  %210 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %211 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %210, i32 0, i32 5
  store i8 1, i8* %211, align 8
  %212 = load i64, i64* %9, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %9, align 8
  %214 = icmp uge i64 %213, 96
  br i1 %214, label %215, label %224

215:                                              ; preds = %209
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %218 = icmp sle i32 3, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0))
  br label %220

220:                                              ; preds = %219, %216
  br label %221

221:                                              ; preds = %220
  %222 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %223 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %222, i32 0, i32 7
  store i8 1, i8* %223, align 2
  br label %224

224:                                              ; preds = %221, %209
  %225 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8
  %226 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %225, i32 0, i32 7
  %227 = load i8, i8* %226, align 2
  %228 = icmp ne i8 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8
  store %struct.fio_hash____map_s_* %230, %struct.fio_hash____map_s_** %5, align 8
  br label %235

231:                                              ; preds = %224
  br label %232

232:                                              ; preds = %231, %173
  br label %151

233:                                              ; preds = %151
  br label %234

234:                                              ; preds = %233, %22
  store %struct.fio_hash____map_s_* null, %struct.fio_hash____map_s_** %5, align 8
  br label %235

235:                                              ; preds = %234, %229, %207, %171, %130, %94
  %236 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %5, align 8
  ret %struct.fio_hash____map_s_* %236
}

declare dso_local void @fio_free(i8*) #4

declare dso_local noalias i8* @fio_calloc(i64, i64) #4

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #4

declare dso_local void @perror(i8*) #4

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
define internal i32 @fiobj_iseq(i64, i64) #0 {
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
  br label %86

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
  br label %86

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
  br label %86

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
  br label %86

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
  br label %86

67:                                               ; preds = %57
  %68 = load i64, i64* %4, align 8
  %69 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %68)
  %70 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %69, i32 0, i32 5
  %71 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %70, align 8
  %72 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load i64, i64* %4, align 8
  %75 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %74)
  %76 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %75, i32 0, i32 2
  %77 = load i64 (i64)*, i64 (i64)** %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i64 %77(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @fiobj_iseq____internal_complex__(i64 %82, i64 %83)
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %73, %67
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %81, %66, %56, %39, %16, %9
  %87 = load i32, i32* %3, align 4
  ret i32 %87
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

declare dso_local i32 @fiobj_iseq____internal_complex__(i64, i64) #4

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
define internal { i64, i64 } @fio_hash____insert_or_overwrite_(%struct.fio_hash___s*, i64, i64, i64, i32, i64*) #0 {
  %7 = alloca %struct.fio_hash___couplet_s, align 8
  %8 = alloca %struct.fio_hash___couplet_s, align 8
  %9 = alloca %struct.fio_hash___s*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.fio_hash____map_s_*, align 8
  %14 = bitcast %struct.fio_hash___couplet_s* %8 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %3, i64* %16, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i64 -1, i64* %10, align 8
  br label %20

20:                                               ; preds = %19, %6
  %21 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %22 = call i64 @fio_hash___is_fragmented(%struct.fio_hash___s* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  call void @fio_hash___rehash(%struct.fio_hash___s* %25)
  br label %41

26:                                               ; preds = %20
  %27 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %28 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %31 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %36 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %35, i32 0, i32 6
  %37 = load i8, i8* %36, align 1
  %38 = add i8 %37, 1
  store i8 %38, i8* %36, align 1
  %39 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  call void @fio_hash___rehash(%struct.fio_hash___s* %39)
  br label %40

40:                                               ; preds = %34, %26
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = bitcast %struct.fio_hash___couplet_s* %8 to { i64, i64 }*
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %42, i64 %43, i64 %46, i64 %48)
  store %struct.fio_hash____map_s_* %49, %struct.fio_hash____map_s_** %13, align 8
  %50 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %51 = icmp ne %struct.fio_hash____map_s_* %50, null
  br i1 %51, label %108, label %52

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @fiobj_dup(i64 %55)
  %57 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %58 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %57, i32 0, i32 3
  %59 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %58, align 8
  %60 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %61 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %59, i64 %62
  %64 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %64, i32 0, i32 1
  store i64 %56, i64* %65, align 8
  %66 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @fiobj_dup(i64 %67)
  %69 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %70 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %69, i32 0, i32 3
  %71 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %70, align 8
  %72 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %73 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %71, i64 %74
  %76 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %76, i32 0, i32 0
  store i64 %68, i64* %77, align 8
  br label %78

78:                                               ; preds = %53
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %81 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %80, i32 0, i32 3
  %82 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %81, align 8
  %83 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %84 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %82, i64 %85
  %87 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %86, i32 0, i32 0
  store i64 %79, i64* %87, align 8
  %88 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %89 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %93 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  call void @fio_hash___rehash(%struct.fio_hash___s* %96)
  %97 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %98 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %97, i32 0, i32 3
  %99 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %98, align 8
  %100 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %101 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %99, i64 %103
  %105 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %104, i32 0, i32 1
  %106 = bitcast %struct.fio_hash___couplet_s* %7 to i8*
  %107 = bitcast %struct.fio_hash___couplet_s* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 16, i1 false)
  br label %226

108:                                              ; preds = %41
  %109 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %110 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %109, i32 0, i32 1
  %111 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %110, align 8
  %112 = icmp ne %struct.fio_hash____ordered_s_* %111, null
  br i1 %112, label %113, label %175

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  call void @fiobj_free(i64 %120)
  %121 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  call void @fiobj_free(i64 %125)
  %126 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %130 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %129, i32 0, i32 1
  %131 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %130, align 8
  %132 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %131, i32 0, i32 1
  %133 = bitcast %struct.fio_hash___couplet_s* %7 to i8*
  %134 = bitcast %struct.fio_hash___couplet_s* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 16, i1 false)
  br label %226

135:                                              ; preds = %113
  %136 = load i64*, i64** %12, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %140 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %139, i32 0, i32 1
  %141 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %140, align 8
  %142 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @fiobj_dup(i64 %144)
  %146 = load i64*, i64** %12, align 8
  store i64 %145, i64* %146, align 8
  br label %147

147:                                              ; preds = %138, %135
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %150 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %149, i32 0, i32 1
  %151 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %150, align 8
  %152 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  call void @fiobj_free(i64 %154)
  %155 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %156 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %155, i32 0, i32 1
  %157 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %156, align 8
  %158 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @fiobj_dup(i64 %162)
  %164 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %165 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %164, i32 0, i32 1
  %166 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %165, align 8
  %167 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %167, i32 0, i32 1
  store i64 %163, i64* %168, align 8
  %169 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %170 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %169, i32 0, i32 1
  %171 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %170, align 8
  %172 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %171, i32 0, i32 1
  %173 = bitcast %struct.fio_hash___couplet_s* %7 to i8*
  %174 = bitcast %struct.fio_hash___couplet_s* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 %174, i64 16, i1 false)
  br label %226

175:                                              ; preds = %108
  %176 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %177 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %176, i32 0, i32 3
  %178 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %177, align 8
  %179 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %180 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %178, i64 %181
  %183 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %184 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %183, i32 0, i32 1
  store %struct.fio_hash____ordered_s_* %182, %struct.fio_hash____ordered_s_** %184, align 8
  %185 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %186 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %186, align 8
  %189 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8
  %190 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %175
  %194 = load i64, i64* %10, align 8
  %195 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %196 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load i64, i64* %10, align 8
  %198 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %199 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %198, i32 0, i32 1
  %200 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %199, align 8
  %201 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %200, i32 0, i32 0
  store i64 %197, i64* %201, align 8
  br label %202

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @fiobj_dup(i64 %204)
  %206 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %207 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %206, i32 0, i32 1
  %208 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %207, align 8
  %209 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %209, i32 0, i32 1
  store i64 %205, i64* %210, align 8
  %211 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @fiobj_dup(i64 %212)
  %214 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %215 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %214, i32 0, i32 1
  %216 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %215, align 8
  %217 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %217, i32 0, i32 0
  store i64 %213, i64* %218, align 8
  br label %219

219:                                              ; preds = %202
  %220 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8
  %221 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %220, i32 0, i32 1
  %222 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %221, align 8
  %223 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %222, i32 0, i32 1
  %224 = bitcast %struct.fio_hash___couplet_s* %7 to i8*
  %225 = bitcast %struct.fio_hash___couplet_s* %223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 %225, i64 16, i1 false)
  br label %226

226:                                              ; preds = %219, %160, %128, %78
  %227 = bitcast %struct.fio_hash___couplet_s* %7 to { i64, i64 }*
  %228 = load { i64, i64 }, { i64, i64 }* %227, align 8
  ret { i64, i64 } %228
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___is_fragmented(%struct.fio_hash___s*) #0 {
  %2 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  %3 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %5, %8
  %10 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8
  %11 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %12, 1
  %14 = icmp ugt i64 %9, %13
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  ret i64 %16
}

declare dso_local i64 @fiobj_str_hash(i64) #4

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.13 to i8*), i64 24, i1 false)
  br label %37

25:                                               ; preds = %19
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.15 to i8*), i64 24, i1 false)
  br label %37

27:                                               ; preds = %19
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.17 to i8*), i64 24, i1 false)
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

declare dso_local i64 @fio_siphash13(i8*, i64, i64, i64) #4

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #4

declare dso_local void @fiobj_free_complex_object(i64) #4

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #4

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
