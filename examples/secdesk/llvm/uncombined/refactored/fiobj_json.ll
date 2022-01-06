; ModuleID = 'fiobj_json.c'
source_filename = "fiobj_json.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_json_parser_s = type { %struct.json_parser_s, i64, i64, i64, %struct.fio_json_stack_s, i8 }
%struct.json_parser_s = type { i32, i8, i8 }
%struct.fio_json_stack_s = type { i64, i64, i64, i64* }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.obj2json_data_s = type { i64, i64, %struct.fio_json_stack_s*, i64, i8 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"dest && FIOBJ_TYPE_IS(dest, FIOBJ_T_STRING)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fiobj_json.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_obj2json2 = private unnamed_addr constant [45 x i8] c"FIOBJ fiobj_obj2json2(FIOBJ, FIOBJ, uint8_t)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@JSON_SEPERATOR = internal constant <{ [45 x i8], [211 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\01", [211 x i8] zeroinitializer }>, align 16
@string_seek_stop = internal constant <{ [93 x i8], [163 x i8] }> <{ [93 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [163 x i8] zeroinitializer }>, align 16
@is_hex = internal constant <{ [103 x i8], [153 x i8] }> <{ [103 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\00\00\00\00\00\00\00\0B\0C\0D\0E\0F\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\0C\0D\0E\0F\10", [153 x i8] zeroinitializer }>, align 16
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.8 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.10 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.12 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4920\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"WARNING: (JSON parsing) malformed JSON, ignoring dangling Hash key.\00", align 1
@JSON_NUMERAL = internal constant <{ [121 x i8], [134 x i8] }> <{ [121 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [134 x i8] zeroinitializer }>, align 16
@fio_json_stack_s___const_invalid_object = internal constant i64 0, align 8
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@hex_chars = internal constant [16 x i8] c"0123456789ABCDEF", align 16

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
define dso_local i64 @fiobj_json2obj(i64*, i8*, i64) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fiobj_json_parser_s, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = bitcast %struct.fiobj_json_parser_s* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 72, i1 false)
  %10 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @fio_json_parse(%struct.json_parser_s* %10, i8* %11, i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 0
  %18 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 4
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %3
  %23 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 4
  %24 = call i64 @fio_json_stack_get(%struct.fio_json_stack_s* %23, i64 0)
  call void @fiobj_free(i64 %24)
  %25 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 2
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 4
  call void @fio_json_stack_free(%struct.fio_json_stack_s* %27)
  %28 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  call void @fiobj_free(i64 %29)
  %30 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %4, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  ret i64 %33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_json_parse(%struct.json_parser_s*, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.json_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %3
  store i64 0, i64* %4, align 8
  br label %514

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %501, %24
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [45 x i8], [211 x i8] }>* @JSON_SEPERATOR to [256 x i8]*), i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %34, %30
  %43 = phi i1 [ false, %30 ], [ %41, %34 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  br label %30

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %506

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  switch i32 %55, label %484 [
    i32 34, label %56
    i32 123, label %126
    i32 125, label %158
    i32 91, label %186
    i32 93, label %217
    i32 116, label %238
    i32 78, label %268
    i32 110, label %268
    i32 102, label %318
    i32 45, label %359
    i32 48, label %359
    i32 49, label %359
    i32 50, label %359
    i32 51, label %359
    i32 52, label %359
    i32 53, label %359
    i32 54, label %359
    i32 55, label %359
    i32 56, label %359
    i32 57, label %359
    i32 46, label %359
    i32 101, label %359
    i32 69, label %359
    i32 120, label %359
    i32 105, label %359
    i32 73, label %359
    i32 35, label %406
    i32 47, label %420
  ]

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @seek2eos(i8** %10, i8* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %506

63:                                               ; preds = %56
  %64 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %65 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %64, i32 0, i32 2
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %11, align 8
  br label %71

71:                                               ; preds = %85, %68
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i8*, i8** %11, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [45 x i8], [211 x i8] }>* @JSON_SEPERATOR to [256 x i8]*), i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %75, %71
  %84 = phi i1 [ false, %71 ], [ %82, %75 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %11, align 8
  br label %71

88:                                               ; preds = %83
  %89 = load i8*, i8** %11, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = icmp uge i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %506

93:                                               ; preds = %88
  %94 = load i8*, i8** %11, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 58
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %512

99:                                               ; preds = %93
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %8, align 8
  %102 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  call void @fio_json_on_string(%struct.json_parser_s* %102, i8* %103, i64 %108)
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8* %110, i8** %8, align 8
  %111 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %112 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %111, i32 0, i32 2
  store i8 0, i8* %112, align 1
  br label %501

113:                                              ; preds = %63
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  %116 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  call void @fio_json_on_string(%struct.json_parser_s* %116, i8* %117, i64 %122)
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %8, align 8
  br label %125

125:                                              ; preds = %113
  br label %485

126:                                              ; preds = %52
  %127 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %128 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %127, i32 0, i32 2
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %512

132:                                              ; preds = %126
  %133 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %134 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %133, i32 0, i32 1
  %135 = load i8, i8* %134, align 4
  %136 = add i8 %135, 1
  store i8 %136, i8* %134, align 4
  %137 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %138 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %137, i32 0, i32 1
  %139 = load i8, i8* %138, align 4
  %140 = zext i8 %139 to i32
  %141 = icmp sge i32 %140, 32
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %512

143:                                              ; preds = %132
  %144 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %145 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 1
  %148 = or i32 %147, 1
  %149 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %150 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %8, align 8
  %153 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %154 = call i32 @fio_json_on_start_object(%struct.json_parser_s* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %512

157:                                              ; preds = %143
  br label %485

158:                                              ; preds = %52
  %159 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %160 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %512

165:                                              ; preds = %158
  %166 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %167 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %166, i32 0, i32 2
  %168 = load i8, i8* %167, align 1
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %165
  %171 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  call void @fio_json_on_null(%struct.json_parser_s* %171)
  br label %172

172:                                              ; preds = %170, %165
  %173 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %174 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %173, i32 0, i32 1
  %175 = load i8, i8* %174, align 4
  %176 = add i8 %175, -1
  store i8 %176, i8* %174, align 4
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %8, align 8
  %179 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %180 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = lshr i32 %181, 1
  %183 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %184 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  call void @fio_json_on_end_object(%struct.json_parser_s* %185)
  br label %485

186:                                              ; preds = %52
  %187 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %188 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %187, i32 0, i32 2
  %189 = load i8, i8* %188, align 1
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %512

192:                                              ; preds = %186
  %193 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %194 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %193, i32 0, i32 1
  %195 = load i8, i8* %194, align 4
  %196 = add i8 %195, 1
  store i8 %196, i8* %194, align 4
  %197 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %198 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %197, i32 0, i32 1
  %199 = load i8, i8* %198, align 4
  %200 = zext i8 %199 to i32
  %201 = icmp sge i32 %200, 32
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  br label %512

203:                                              ; preds = %192
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %8, align 8
  %206 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %207 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 1
  %210 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %211 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 4
  %212 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %213 = call i32 @fio_json_on_start_array(%struct.json_parser_s* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  br label %512

216:                                              ; preds = %203
  br label %485

217:                                              ; preds = %52
  %218 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %219 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %512

224:                                              ; preds = %217
  %225 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %226 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %225, i32 0, i32 1
  %227 = load i8, i8* %226, align 4
  %228 = add i8 %227, -1
  store i8 %228, i8* %226, align 4
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %8, align 8
  %231 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %232 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = lshr i32 %233, 1
  %235 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %236 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  %237 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  call void @fio_json_on_end_array(%struct.json_parser_s* %237)
  br label %485

238:                                              ; preds = %52
  %239 = load i8*, i8** %8, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 3
  %241 = load i8*, i8** %9, align 8
  %242 = icmp uge i8* %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %506

244:                                              ; preds = %238
  %245 = load i8*, i8** %8, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = icmp eq i32 %248, 114
  br i1 %249, label %250, label %264

250:                                              ; preds = %244
  %251 = load i8*, i8** %8, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 2
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp eq i32 %254, 117
  br i1 %255, label %256, label %264

256:                                              ; preds = %250
  %257 = load i8*, i8** %8, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 3
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp eq i32 %260, 101
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  call void @fio_json_on_true(%struct.json_parser_s* %263)
  br label %265

264:                                              ; preds = %256, %250, %244
  br label %512

265:                                              ; preds = %262
  %266 = load i8*, i8** %8, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 4
  store i8* %267, i8** %8, align 8
  br label %485

268:                                              ; preds = %52, %52
  %269 = load i8*, i8** %8, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 2
  %271 = load i8*, i8** %9, align 8
  %272 = icmp ule i8* %270, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %268
  %274 = load i8*, i8** %8, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = or i32 %277, 32
  %279 = icmp eq i32 %278, 97
  br i1 %279, label %280, label %288

280:                                              ; preds = %273
  %281 = load i8*, i8** %8, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 2
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = or i32 %284, 32
  %286 = icmp eq i32 %285, 110
  br i1 %286, label %287, label %288

287:                                              ; preds = %280
  br label %360

288:                                              ; preds = %280, %273, %268
  %289 = load i8*, i8** %8, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 3
  %291 = load i8*, i8** %9, align 8
  %292 = icmp uge i8* %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  br label %506

294:                                              ; preds = %288
  %295 = load i8*, i8** %8, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = icmp eq i32 %298, 117
  br i1 %299, label %300, label %314

300:                                              ; preds = %294
  %301 = load i8*, i8** %8, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 2
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp eq i32 %304, 108
  br i1 %305, label %306, label %314

306:                                              ; preds = %300
  %307 = load i8*, i8** %8, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 3
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = icmp eq i32 %310, 108
  br i1 %311, label %312, label %314

312:                                              ; preds = %306
  %313 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  call void @fio_json_on_null(%struct.json_parser_s* %313)
  br label %315

314:                                              ; preds = %306, %300, %294
  br label %512

315:                                              ; preds = %312
  %316 = load i8*, i8** %8, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 4
  store i8* %317, i8** %8, align 8
  br label %485

318:                                              ; preds = %52
  %319 = load i8*, i8** %8, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 4
  %321 = load i8*, i8** %9, align 8
  %322 = icmp uge i8* %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  br label %506

324:                                              ; preds = %318
  %325 = load i8*, i8** %8, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 4
  %327 = load i8*, i8** %9, align 8
  %328 = icmp ult i8* %326, %327
  br i1 %328, label %329, label %355

329:                                              ; preds = %324
  %330 = load i8*, i8** %8, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 1
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = icmp eq i32 %333, 97
  br i1 %334, label %335, label %355

335:                                              ; preds = %329
  %336 = load i8*, i8** %8, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 2
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = icmp eq i32 %339, 108
  br i1 %340, label %341, label %355

341:                                              ; preds = %335
  %342 = load i8*, i8** %8, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 3
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp eq i32 %345, 115
  br i1 %346, label %347, label %355

347:                                              ; preds = %341
  %348 = load i8*, i8** %8, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 4
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i32
  %352 = icmp eq i32 %351, 101
  br i1 %352, label %353, label %355

353:                                              ; preds = %347
  %354 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  call void @fio_json_on_false(%struct.json_parser_s* %354)
  br label %356

355:                                              ; preds = %347, %341, %335, %329, %324
  br label %512

356:                                              ; preds = %353
  %357 = load i8*, i8** %8, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 5
  store i8* %358, i8** %8, align 8
  br label %485

359:                                              ; preds = %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52
  br label %360

360:                                              ; preds = %359, %287
  %361 = load i8*, i8** %8, align 8
  store i8* %361, i8** %12, align 8
  %362 = call i64 @fio_atol(i8** %12)
  store i64 %362, i64* %13, align 8
  %363 = load i8*, i8** %12, align 8
  %364 = load i8*, i8** %9, align 8
  %365 = icmp ugt i8* %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %360
  br label %506

367:                                              ; preds = %360
  %368 = load i8*, i8** %12, align 8
  %369 = icmp ne i8* %368, null
  br i1 %369, label %370, label %378

370:                                              ; preds = %367
  %371 = load i8*, i8** %12, align 8
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i64
  %374 = getelementptr inbounds [255 x i8], [255 x i8]* bitcast (<{ [121 x i8], [134 x i8] }>* @JSON_NUMERAL to [255 x i8]*), i64 0, i64 %373
  %375 = load i8, i8* %374, align 1
  %376 = zext i8 %375 to i32
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %401

378:                                              ; preds = %370, %367
  %379 = load i8*, i8** %8, align 8
  store i8* %379, i8** %12, align 8
  %380 = call double @fio_atof(i8** %12)
  store double %380, double* %14, align 8
  %381 = load i8*, i8** %12, align 8
  %382 = load i8*, i8** %9, align 8
  %383 = icmp ugt i8* %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %378
  br label %506

385:                                              ; preds = %378
  %386 = load i8*, i8** %12, align 8
  %387 = icmp ne i8* %386, null
  br i1 %387, label %388, label %396

388:                                              ; preds = %385
  %389 = load i8*, i8** %12, align 8
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i64
  %392 = getelementptr inbounds [255 x i8], [255 x i8]* bitcast (<{ [121 x i8], [134 x i8] }>* @JSON_NUMERAL to [255 x i8]*), i64 0, i64 %391
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i32
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %388, %385
  br label %512

397:                                              ; preds = %388
  %398 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %399 = load double, double* %14, align 8
  call void @fio_json_on_float(%struct.json_parser_s* %398, double %399)
  %400 = load i8*, i8** %12, align 8
  store i8* %400, i8** %8, align 8
  br label %405

401:                                              ; preds = %370
  %402 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %403 = load i64, i64* %13, align 8
  call void @fio_json_on_number(%struct.json_parser_s* %402, i64 %403)
  %404 = load i8*, i8** %12, align 8
  store i8* %404, i8** %8, align 8
  br label %405

405:                                              ; preds = %401, %397
  br label %485

406:                                              ; preds = %52
  %407 = load i8*, i8** %8, align 8
  %408 = load i8*, i8** %9, align 8
  %409 = load i8*, i8** %8, align 8
  %410 = ptrtoint i8* %408 to i64
  %411 = ptrtoint i8* %409 to i64
  %412 = sub i64 %410, %411
  %413 = call i8* @memchr(i8* %407, i32 10, i64 %412) #8
  store i8* %413, i8** %15, align 8
  %414 = load i8*, i8** %15, align 8
  %415 = icmp ne i8* %414, null
  br i1 %415, label %417, label %416

416:                                              ; preds = %406
  br label %506

417:                                              ; preds = %406
  %418 = load i8*, i8** %15, align 8
  %419 = getelementptr inbounds i8, i8* %418, i64 1
  store i8* %419, i8** %8, align 8
  br label %501

420:                                              ; preds = %52
  %421 = load i8*, i8** %8, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 1
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp eq i32 %424, 42
  br i1 %425, label %426, label %461

426:                                              ; preds = %420
  %427 = load i8*, i8** %8, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 4
  %429 = load i8*, i8** %9, align 8
  %430 = icmp ugt i8* %428, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %426
  br label %506

432:                                              ; preds = %426
  %433 = load i8*, i8** %8, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 3
  store i8* %434, i8** %16, align 8
  br label %435

435:                                              ; preds = %452, %432
  %436 = load i8*, i8** %16, align 8
  %437 = load i8*, i8** %9, align 8
  %438 = load i8*, i8** %16, align 8
  %439 = ptrtoint i8* %437 to i64
  %440 = ptrtoint i8* %438 to i64
  %441 = sub i64 %439, %440
  %442 = call i8* @memchr(i8* %436, i32 47, i64 %441) #8
  store i8* %442, i8** %16, align 8
  br label %443

443:                                              ; preds = %435
  %444 = load i8*, i8** %16, align 8
  %445 = icmp ne i8* %444, null
  br i1 %445, label %446, label %452

446:                                              ; preds = %443
  %447 = load i8*, i8** %16, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 -1
  %449 = load i8, i8* %448, align 1
  %450 = zext i8 %449 to i32
  %451 = icmp ne i32 %450, 42
  br label %452

452:                                              ; preds = %446, %443
  %453 = phi i1 [ false, %443 ], [ %451, %446 ]
  br i1 %453, label %435, label %454

454:                                              ; preds = %452
  %455 = load i8*, i8** %16, align 8
  %456 = icmp ne i8* %455, null
  br i1 %456, label %458, label %457

457:                                              ; preds = %454
  br label %506

458:                                              ; preds = %454
  %459 = load i8*, i8** %16, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 1
  store i8* %460, i8** %8, align 8
  br label %483

461:                                              ; preds = %420
  %462 = load i8*, i8** %8, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 1
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i32
  %466 = icmp eq i32 %465, 47
  br i1 %466, label %467, label %481

467:                                              ; preds = %461
  %468 = load i8*, i8** %8, align 8
  %469 = load i8*, i8** %9, align 8
  %470 = load i8*, i8** %8, align 8
  %471 = ptrtoint i8* %469 to i64
  %472 = ptrtoint i8* %470 to i64
  %473 = sub i64 %471, %472
  %474 = call i8* @memchr(i8* %468, i32 10, i64 %473) #8
  store i8* %474, i8** %17, align 8
  %475 = load i8*, i8** %17, align 8
  %476 = icmp ne i8* %475, null
  br i1 %476, label %478, label %477

477:                                              ; preds = %467
  br label %506

478:                                              ; preds = %467
  %479 = load i8*, i8** %17, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 1
  store i8* %480, i8** %8, align 8
  br label %482

481:                                              ; preds = %461
  br label %512

482:                                              ; preds = %478
  br label %483

483:                                              ; preds = %482, %458
  br label %501

484:                                              ; preds = %52
  br label %512

485:                                              ; preds = %405, %356, %315, %265, %224, %216, %172, %157, %125
  %486 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %487 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %486, i32 0, i32 1
  %488 = load i8, i8* %487, align 4
  %489 = zext i8 %488 to i32
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %493

491:                                              ; preds = %485
  %492 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  call void @fio_json_on_json(%struct.json_parser_s* %492)
  br label %506

493:                                              ; preds = %485
  %494 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %495 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = and i32 %496, 1
  %498 = trunc i32 %497 to i8
  %499 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  %500 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %499, i32 0, i32 2
  store i8 %498, i8* %500, align 1
  br label %501

501:                                              ; preds = %493, %483, %417, %99
  %502 = load i8*, i8** %8, align 8
  %503 = load i8*, i8** %9, align 8
  %504 = icmp ult i8* %502, %503
  br i1 %504, label %29, label %505

505:                                              ; preds = %501
  br label %506

506:                                              ; preds = %505, %491, %477, %457, %431, %416, %384, %366, %323, %293, %243, %92, %62, %51
  %507 = load i8*, i8** %8, align 8
  %508 = ptrtoint i8* %507 to i64
  %509 = load i8*, i8** %6, align 8
  %510 = ptrtoint i8* %509 to i64
  %511 = sub i64 %508, %510
  store i64 %511, i64* %4, align 8
  br label %514

512:                                              ; preds = %484, %481, %396, %355, %314, %264, %223, %215, %202, %191, %164, %156, %142, %131, %98
  %513 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8
  call void @fio_json_on_error(%struct.json_parser_s* %513)
  store i64 0, i64* %4, align 8
  br label %514

514:                                              ; preds = %512, %506, %23
  %515 = load i64, i64* %4, align 8
  ret i64 %515
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
define internal i64 @fio_json_stack_get(%struct.fio_json_stack_s*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_json_stack_s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %7 = icmp ne %struct.fio_json_stack_s* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @fio_json_stack_s___const_invalid_object, align 8
  store i64 %9, i64* %3, align 8
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @fio_json_stack___rel2absolute(%struct.fio_json_stack_s* %11, i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %16 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %19 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  %22 = icmp uge i64 %14, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = load i64, i64* @fio_json_stack_s___const_invalid_object, align 8
  store i64 %24, i64* %3, align 8
  br label %36

25:                                               ; preds = %10
  %26 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %27 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %30 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %25, %23, %8
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_stack_free(%struct.fio_json_stack_s*) #0 {
  %2 = alloca %struct.fio_json_stack_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_json_stack_s, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %2, align 8
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8
  %7 = icmp ne %struct.fio_json_stack_s* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8
  %13 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %12, i32 0, i32 0
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
  %24 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8
  %25 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = bitcast i64* %26 to i8*
  call void @fio_free(i8* %27)
  %28 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8
  %29 = bitcast %struct.fio_json_stack_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false)
  %30 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %5, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = bitcast %struct.fio_json_stack_s* %28 to i8*
  %32 = bitcast %struct.fio_json_stack_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  br label %33

33:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_update_json(i64, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fiobj_json_parser_s, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %34

13:                                               ; preds = %3
  %14 = bitcast %struct.fiobj_json_parser_s* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 72, i1 false)
  %15 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 3
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 0
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @fio_json_parse(%struct.json_parser_s* %18, i8* %19, i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 4
  call void @fio_json_stack_free(%struct.fio_json_stack_s* %22)
  %23 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  call void @fiobj_free(i64 %24)
  %25 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  call void @fiobj_free(i64 %31)
  br label %32

32:                                               ; preds = %29, %13
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %32, %12
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_obj2json2(i64, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.fio_json_stack_s, align 8
  %9 = alloca %struct.obj2json_data_s, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @fiobj_type_is(i64 %13, i8 zeroext 40)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %18

17:                                               ; preds = %12, %3
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 419, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.fiobj_obj2json2, i64 0, i64 0)) #9
  unreachable

18:                                               ; preds = %16
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @fiobj_str_write(i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4)
  store i64 0, i64* %4, align 8
  br label %62

24:                                               ; preds = %18
  %25 = bitcast %struct.fio_json_stack_s* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  %26 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 2
  store %struct.fio_json_stack_s* %8, %struct.fio_json_stack_s** %29, align 8
  %30 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 3
  store i64 1, i64* %30, align 8
  %31 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 4
  %32 = load i8, i8* %7, align 1
  store i8 %32, i8* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, 6
  %45 = icmp ne i64 %44, 6
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %47)
  %49 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %48, i32 0, i32 5
  %50 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %49, align 8
  %51 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46, %42, %38, %35, %24
  %53 = load i64, i64* %6, align 8
  %54 = bitcast %struct.obj2json_data_s* %9 to i8*
  %55 = call i32 @fiobj_obj2json_task(i64 %53, i8* %54)
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %4, align 8
  br label %62

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = bitcast %struct.obj2json_data_s* %9 to i8*
  %60 = call i64 @fiobj_each2(i64 %58, i32 (i64, i8*)* @fiobj_obj2json_task, i8* %59)
  call void @fio_json_stack_free(%struct.fio_json_stack_s* %8)
  %61 = load i64, i64* %5, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %57, %52, %21
  %63 = load i64, i64* %4, align 8
  ret i64 %63
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

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #4

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
define internal i32 @fiobj_obj2json_task(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obj2json_data_s*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  %10 = alloca %struct.fio_str_info_s, align 8
  %11 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.obj2json_data_s*
  store %struct.obj2json_data_s* %13, %struct.obj2json_data_s** %5, align 8
  store i8 1, i8* %6, align 1
  %14 = call i64 @fiobj_hash_key_in_loop()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %18 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @fiobj_hash_key_in_loop()
  call void @write_safe_str(i64 %19, i64 %20)
  %21 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %22 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @fiobj_str_write(i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 1)
  br label %25

25:                                               ; preds = %16, %2
  %26 = load i64, i64* %3, align 8
  %27 = call zeroext i8 @fiobj_type(i64 %26)
  %28 = zext i8 %27 to i32
  switch i32 %28, label %108 [
    i32 1, label %29
    i32 6, label %29
    i32 22, label %29
    i32 38, label %29
    i32 39, label %29
    i32 43, label %39
    i32 44, label %39
    i32 40, label %39
    i32 41, label %48
    i32 42, label %78
  ]

29:                                               ; preds = %25, %25, %25, %25, %25
  %30 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %31 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @fiobj_str_concat(i64 %32, i64 %33)
  %35 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %36 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %36, align 8
  br label %108

39:                                               ; preds = %25, %25, %25
  %40 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %41 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %3, align 8
  call void @write_safe_str(i64 %42, i64 %43)
  %44 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %45 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %45, align 8
  br label %108

48:                                               ; preds = %25
  %49 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %50 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %54 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %53, i32 0, i32 2
  %55 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %54, align 8
  %56 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %57 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %55, i64 %58)
  %60 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %61 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %60, i32 0, i32 2
  %62 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %61, align 8
  %63 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %64 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %62, i64 %65)
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %69 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %3, align 8
  %71 = call i64 @fiobj_ary_count(i64 %70)
  %72 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %73 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %75 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @fiobj_str_write(i64 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1)
  store i8 0, i8* %6, align 1
  br label %108

78:                                               ; preds = %25
  %79 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %80 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %84 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %83, i32 0, i32 2
  %85 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %84, align 8
  %86 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %87 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %85, i64 %88)
  %90 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %91 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %90, i32 0, i32 2
  %92 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %91, align 8
  %93 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %94 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %92, i64 %95)
  %97 = load i64, i64* %3, align 8
  %98 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %99 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @fiobj_hash_count(i64 %100)
  %102 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %103 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %105 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @fiobj_str_write(i64 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  store i8 0, i8* %6, align 1
  br label %108

108:                                              ; preds = %25, %78, %48, %39, %29
  %109 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %110 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %109, i32 0, i32 4
  %111 = load i8, i8* %110, align 8
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %232

113:                                              ; preds = %108
  %114 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %115 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %118 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %119)
  %120 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %123 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %122, i32 0, i32 2
  %124 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %123, align 8
  %125 = call i64 @fio_json_stack_count(%struct.fio_json_stack_s* %124)
  %126 = mul i64 %125, 5
  %127 = add i64 %121, %126
  %128 = call i64 @fiobj_str_capa_assert(i64 %116, i64 %127)
  br label %129

129:                                              ; preds = %157, %113
  %130 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %131 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %136 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  br i1 %140, label %141, label %174

141:                                              ; preds = %139
  %142 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %143 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @fiobj_type_is(i64 %144, i8 zeroext 42)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %149 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @fiobj_str_write(i64 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64 1)
  br label %157

152:                                              ; preds = %141
  %153 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %154 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @fiobj_str_write(i64 %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  br label %157

157:                                              ; preds = %152, %147
  store i8 1, i8* %6, align 1
  %158 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %159 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %158, i32 0, i32 3
  store i64 0, i64* %159, align 8
  %160 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %161 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %160, i32 0, i32 2
  %162 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %161, align 8
  %163 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %164 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %163, i32 0, i32 3
  %165 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %162, i64* %164)
  %166 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %167 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  %168 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %169 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %168, i32 0, i32 2
  %170 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %169, align 8
  %171 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %172 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %171, i32 0, i32 1
  %173 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %170, i64* %172)
  br label %129

174:                                              ; preds = %139
  %175 = load i8, i8* %6, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %231

178:                                              ; preds = %174
  %179 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %180 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %231

183:                                              ; preds = %178
  %184 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %185 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @fiobj_str_write(i64 %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i64 2)
  %188 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %189 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %188, i32 0, i32 2
  %190 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %189, align 8
  %191 = call i64 @fio_json_stack_count(%struct.fio_json_stack_s* %190)
  %192 = sub i64 %191, 1
  store i64 %192, i64* %8, align 8
  %193 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %194 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %197 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %9, i64 %198)
  %199 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %8, align 8
  %202 = mul i64 %201, 2
  %203 = add i64 %200, %202
  %204 = call i64 @fiobj_str_capa_assert(i64 %195, i64 %203)
  %205 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %206 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %207)
  br label %208

208:                                              ; preds = %212, %183
  %209 = load i64, i64* %8, align 8
  %210 = add i64 %209, -1
  store i64 %210, i64* %8, align 8
  %211 = icmp ne i64 %209, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %215, align 8
  %218 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 32, i8* %218, align 1
  %219 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %221, align 8
  %224 = getelementptr inbounds i8, i8* %220, i64 %222
  store i8 32, i8* %224, align 1
  br label %208

225:                                              ; preds = %208
  %226 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %227 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  call void @fiobj_str_resize(i64 %228, i64 %230)
  br label %231

231:                                              ; preds = %225, %178, %174
  br label %308

232:                                              ; preds = %108
  %233 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %234 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %237 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %238)
  %239 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %242 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %241, i32 0, i32 2
  %243 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %242, align 8
  %244 = call i64 @fio_json_stack_count(%struct.fio_json_stack_s* %243)
  %245 = shl i64 %244, 1
  %246 = add i64 %240, %245
  %247 = call i64 @fiobj_str_capa_assert(i64 %235, i64 %246)
  br label %248

248:                                              ; preds = %276, %232
  %249 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %250 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %248
  %254 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %255 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br label %258

258:                                              ; preds = %253, %248
  %259 = phi i1 [ false, %248 ], [ %257, %253 ]
  br i1 %259, label %260, label %293

260:                                              ; preds = %258
  %261 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %262 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @fiobj_type_is(i64 %263, i8 zeroext 42)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %260
  %267 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %268 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @fiobj_str_write(i64 %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64 1)
  br label %276

271:                                              ; preds = %260
  %272 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %273 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i64 @fiobj_str_write(i64 %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  br label %276

276:                                              ; preds = %271, %266
  store i8 1, i8* %6, align 1
  %277 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %278 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %277, i32 0, i32 3
  store i64 0, i64* %278, align 8
  %279 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %280 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %279, i32 0, i32 1
  store i64 0, i64* %280, align 8
  %281 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %282 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %281, i32 0, i32 2
  %283 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %282, align 8
  %284 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %285 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %284, i32 0, i32 3
  %286 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %283, i64* %285)
  %287 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %288 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %287, i32 0, i32 2
  %289 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %288, align 8
  %290 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %291 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %290, i32 0, i32 1
  %292 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %289, i64* %291)
  br label %248

293:                                              ; preds = %258
  %294 = load i8, i8* %6, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %293
  %298 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %299 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8
  %304 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i64 @fiobj_str_write(i64 %305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  br label %307

307:                                              ; preds = %302, %297, %293
  br label %308

308:                                              ; preds = %307, %231
  ret i32 0
}

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_obj2json(i64, i8 zeroext) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = call i64 @fiobj_str_buf(i64 128)
  %6 = load i64, i64* %3, align 8
  %7 = load i8, i8* %4, align 1
  %8 = call i64 @fiobj_obj2json2(i64 %5, i64 %6, i8 zeroext %7)
  ret i64 %8
}

declare dso_local i64 @fiobj_str_buf(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek2eos(i8**, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @seek2marker(i8** %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 34
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %28

23:                                               ; preds = %16, %11
  %24 = load i8**, i8*** %4, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %26, i8** %24, align 8
  br label %6

27:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_string(%struct.json_parser_s*, i8*, i64) #0 {
  %4 = alloca %struct.json_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @fiobj_str_buf(i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %12)
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @fio_json_unescape_str(i8* %14, i8* %15, i64 %16)
  call void @fiobj_str_resize(i64 %11, i64 %17)
  %18 = load %struct.json_parser_s*, %struct.json_parser_s** %4, align 8
  %19 = bitcast %struct.json_parser_s* %18 to %struct.fiobj_json_parser_s*
  %20 = load i64, i64* %7, align 8
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %19, i64 %20)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_json_on_start_object(%struct.json_parser_s*) #0 {
  %2 = alloca %struct.json_parser_s*, align 8
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  %4 = alloca i64, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  %5 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8
  %6 = bitcast %struct.json_parser_s* %5 to %struct.fiobj_json_parser_s*
  store %struct.fiobj_json_parser_s* %6, %struct.fiobj_json_parser_s** %3, align 8
  %7 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %8 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %13 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %12, i32 0, i32 4
  %14 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %15 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %13, i64 %16)
  %18 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %19 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %22 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %24 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  br label %38

25:                                               ; preds = %1
  %26 = call i64 @fiobj_hash_new()
  store i64 %26, i64* %4, align 8
  %27 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %28 = load i64, i64* %4, align 8
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %27, i64 %28)
  %29 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %30 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %29, i32 0, i32 4
  %31 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %32 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %30, i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %37 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %25, %11
  %39 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %40 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %39, i32 0, i32 5
  store i8 1, i8* %40, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_null(%struct.json_parser_s*) #0 {
  %2 = alloca %struct.json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  %3 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8
  %4 = bitcast %struct.json_parser_s* %3 to %struct.fiobj_json_parser_s*
  %5 = call i64 @fiobj_null()
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %4, i64 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_end_object(%struct.json_parser_s*) #0 {
  %2 = alloca %struct.json_parser_s*, align 8
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  %4 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8
  %5 = bitcast %struct.json_parser_s* %4 to %struct.fiobj_json_parser_s*
  store %struct.fiobj_json_parser_s* %5, %struct.fiobj_json_parser_s** %3, align 8
  %6 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %7 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10
  %12 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %13 = icmp sle i32 3, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %18 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  call void @fiobj_free(i64 %19)
  %20 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %21 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %24 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %26 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %25, i32 0, i32 4
  %27 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %28 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %27, i32 0, i32 2
  %29 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %26, i64* %28)
  %30 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %31 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @fiobj_type_is(i64 %32, i8 zeroext 42)
  %34 = trunc i64 %33 to i8
  %35 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %36 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %35, i32 0, i32 5
  store i8 %34, i8* %36, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_json_on_start_array(%struct.json_parser_s*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.json_parser_s*, align 8
  %4 = alloca %struct.fiobj_json_parser_s*, align 8
  %5 = alloca i64, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %3, align 8
  %6 = load %struct.json_parser_s*, %struct.json_parser_s** %3, align 8
  %7 = bitcast %struct.json_parser_s* %6 to %struct.fiobj_json_parser_s*
  store %struct.fiobj_json_parser_s* %7, %struct.fiobj_json_parser_s** %4, align 8
  %8 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8
  %9 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = call i64 @fiobj_ary_new()
  store i64 %14, i64* %5, align 8
  %15 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8
  %16 = load i64, i64* %5, align 8
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %15, i64 %16)
  %17 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8
  %18 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %17, i32 0, i32 4
  %19 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8
  %20 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %18, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8
  %25 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8
  %27 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %26, i32 0, i32 5
  store i8 0, i8* %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_end_array(%struct.json_parser_s*) #0 {
  %2 = alloca %struct.json_parser_s*, align 8
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  %4 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8
  %5 = bitcast %struct.json_parser_s* %4 to %struct.fiobj_json_parser_s*
  store %struct.fiobj_json_parser_s* %5, %struct.fiobj_json_parser_s** %3, align 8
  %6 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %7 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %9 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 4
  %10 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %11 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %10, i32 0, i32 2
  %12 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %9, i64* %11)
  %13 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %14 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @fiobj_type_is(i64 %15, i8 zeroext 42)
  %17 = trunc i64 %16 to i8
  %18 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %19 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %18, i32 0, i32 5
  store i8 %17, i8* %19, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_true(%struct.json_parser_s*) #0 {
  %2 = alloca %struct.json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  %3 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8
  %4 = bitcast %struct.json_parser_s* %3 to %struct.fiobj_json_parser_s*
  %5 = call i64 @fiobj_true()
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %4, i64 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_false(%struct.json_parser_s*) #0 {
  %2 = alloca %struct.json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  %3 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8
  %4 = bitcast %struct.json_parser_s* %3 to %struct.fiobj_json_parser_s*
  %5 = call i64 @fiobj_false()
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %4, i64 %5)
  ret void
}

declare dso_local i64 @fio_atol(i8**) #4

declare dso_local double @fio_atof(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_float(%struct.json_parser_s*, double) #0 {
  %3 = alloca %struct.json_parser_s*, align 8
  %4 = alloca double, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %struct.json_parser_s*, %struct.json_parser_s** %3, align 8
  %6 = bitcast %struct.json_parser_s* %5 to %struct.fiobj_json_parser_s*
  %7 = load double, double* %4, align 8
  %8 = call i64 @fiobj_float_new(double %7)
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %6, i64 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_number(%struct.json_parser_s*, i64) #0 {
  %3 = alloca %struct.json_parser_s*, align 8
  %4 = alloca i64, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.json_parser_s*, %struct.json_parser_s** %3, align 8
  %6 = bitcast %struct.json_parser_s* %5 to %struct.fiobj_json_parser_s*
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @fiobj_num_new(i64 %7)
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %6, i64 %8)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_json(%struct.json_parser_s*) #0 {
  %2 = alloca %struct.json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  %3 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_error(%struct.json_parser_s*) #0 {
  %2 = alloca %struct.json_parser_s*, align 8
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  %4 = alloca %struct.fiobj_json_parser_s, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  %5 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8
  %6 = bitcast %struct.json_parser_s* %5 to %struct.fiobj_json_parser_s*
  store %struct.fiobj_json_parser_s* %6, %struct.fiobj_json_parser_s** %3, align 8
  %7 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %8 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 4
  %9 = call i64 @fio_json_stack_get(%struct.fio_json_stack_s* %8, i64 0)
  call void @fiobj_free(i64 %9)
  %10 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %11 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  call void @fiobj_free(i64 %12)
  %13 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %14 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %13, i32 0, i32 4
  call void @fio_json_stack_free(%struct.fio_json_stack_s* %14)
  %15 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %16 = bitcast %struct.fiobj_json_parser_s* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 72, i1 false)
  %17 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %4, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = bitcast %struct.fiobj_json_parser_s* %15 to i8*
  %19 = bitcast %struct.fiobj_json_parser_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 72, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek2marker(i8**, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %189

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, -8
  %29 = add i64 8, %28
  %30 = icmp ule i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %110

32:                                               ; preds = %22
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 %35, -8
  %37 = add i64 %36, 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp uge i8* %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i8**, i8*** %4, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i8**, i8*** %4, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %189

57:                                               ; preds = %48
  %58 = load i8**, i8*** %4, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %58, align 8
  br label %43

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %32
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = and i64 %64, -8
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %7, align 8
  store i64 2459565876494606882, i64* %8, align 8
  store i64 6655295901103053916, i64* %9, align 8
  br label %67

67:                                               ; preds = %105, %62
  %68 = load i8**, i8*** %4, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ult i8* %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %67
  %73 = load i8**, i8*** %4, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = xor i64 %76, %77
  %79 = xor i64 %78, -1
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = and i64 %80, 9187201950435737471
  %82 = add i64 %81, 72340172838076673
  %83 = load i64, i64* %10, align 8
  %84 = and i64 %83, -9187201950435737472
  %85 = and i64 %82, %84
  store i64 %85, i64* %11, align 8
  %86 = load i8**, i8*** %4, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = bitcast i8* %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = xor i64 %89, %90
  %92 = xor i64 %91, -1
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = and i64 %93, 9187201950435737471
  %95 = add i64 %94, 72340172838076673
  %96 = load i64, i64* %12, align 8
  %97 = and i64 %96, -9187201950435737472
  %98 = and i64 %95, %97
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %13, align 8
  %101 = or i64 %99, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %72
  br label %109

104:                                              ; preds = %72
  br label %105

105:                                              ; preds = %104
  %106 = load i8**, i8*** %4, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  store i8* %108, i8** %106, align 8
  br label %67

109:                                              ; preds = %103, %67
  br label %110

110:                                              ; preds = %109, %31
  %111 = load i8**, i8*** %4, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = load i8*, i8** %5, align 8
  %115 = icmp ule i8* %113, %114
  br i1 %115, label %116, label %169

116:                                              ; preds = %110
  %117 = load i8**, i8*** %4, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %189

126:                                              ; preds = %116
  %127 = load i8**, i8*** %4, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load i8**, i8*** %4, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  store i8* %138, i8** %136, align 8
  store i32 1, i32* %3, align 4
  br label %189

139:                                              ; preds = %126
  %140 = load i8**, i8*** %4, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load i8**, i8*** %4, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  store i8* %151, i8** %149, align 8
  store i32 1, i32* %3, align 4
  br label %189

152:                                              ; preds = %139
  %153 = load i8**, i8*** %4, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %152
  %162 = load i8**, i8*** %4, align 8
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 3
  store i8* %164, i8** %162, align 8
  store i32 1, i32* %3, align 4
  br label %189

165:                                              ; preds = %152
  %166 = load i8**, i8*** %4, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 4
  store i8* %168, i8** %166, align 8
  br label %169

169:                                              ; preds = %165, %110
  br label %170

170:                                              ; preds = %184, %169
  %171 = load i8**, i8*** %4, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = icmp ult i8* %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %170
  %176 = load i8**, i8*** %4, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = icmp ne i8 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  store i32 1, i32* %3, align 4
  br label %189

184:                                              ; preds = %175
  %185 = load i8**, i8*** %4, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %185, align 8
  br label %170

188:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %188, %183, %161, %148, %135, %125, %56, %21
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local void @fiobj_str_resize(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_json_unescape_str(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %82, %3
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 -7
  store i8* %26, i8** %10, align 8
  store i64 6655295901103053916, i64* %11, align 8
  br label %27

27:                                               ; preds = %48, %24
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = xor i64 %34, %35
  %37 = xor i64 %36, -1
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = and i64 %38, 9187201950435737471
  %40 = add i64 %39, 72340172838076673
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %12, align 8
  %42 = and i64 %41, -9187201950435737472
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %58

48:                                               ; preds = %31
  %49 = load i8*, i8** %7, align 8
  %50 = bitcast i8* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = bitcast i8* %52 to i64*
  store i64 %51, i64* %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  store i8* %57, i8** %9, align 8
  br label %27

58:                                               ; preds = %47, %27
  br label %59

59:                                               ; preds = %69, %58
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 92
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %77

69:                                               ; preds = %63
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %9, align 8
  store i8 %71, i8* %72, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  br label %59

77:                                               ; preds = %68, %59
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = icmp uge i8* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %84

82:                                               ; preds = %77
  call void @fio_json_unescape_str_internal(i8** %9, i8** %7)
  br label %20

83:                                               ; preds = %20
  br label %84

84:                                               ; preds = %83, %81
  %85 = load i8*, i8** %9, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i8*, i8** %4, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = sub i64 %86, %88
  ret i64 %89
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.8 to i8*), i64 24, i1 false)
  br label %37

25:                                               ; preds = %19
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.10 to i8*), i64 24, i1 false)
  br label %37

27:                                               ; preds = %19
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.12 to i8*), i64 24, i1 false)
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
define internal void @fiobj_json_add2parser(%struct.fiobj_json_parser_s*, i64) #0 {
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  %4 = alloca i64, align 8
  store %struct.fiobj_json_parser_s* %0, %struct.fiobj_json_parser_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %6 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %11 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %10, i32 0, i32 5
  %12 = load i8, i8* %11, align 8
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %16 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %21 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %24 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @fiobj_hash_set(i64 %22, i64 %25, i64 %26)
  %28 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %29 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  call void @fiobj_free(i64 %30)
  %31 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %32 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %37

33:                                               ; preds = %14
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %36 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %19
  br label %43

38:                                               ; preds = %9
  %39 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %40 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  call void @fiobj_ary_push(i64 %41, i64 %42)
  br label %43

43:                                               ; preds = %38, %37
  br label %48

44:                                               ; preds = %2
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8
  %47 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %43
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_unescape_str_internal(i8**, i8**) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %6, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %352 [
    i32 98, label %13
    i32 102, label %22
    i32 110, label %31
    i32 114, label %40
    i32 116, label %49
    i32 117, label %58
    i32 120, label %261
    i32 48, label %312
    i32 49, label %312
    i32 50, label %312
    i32 51, label %312
    i32 52, label %312
    i32 53, label %312
    i32 54, label %312
    i32 55, label %312
    i32 34, label %351
    i32 92, label %351
    i32 47, label %351
  ]

13:                                               ; preds = %2
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  store i8 8, i8* %15, align 1
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %16, align 8
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %19, align 8
  br label %365

22:                                               ; preds = %2
  %23 = load i8**, i8*** %3, align 8
  %24 = load i8*, i8** %23, align 8
  store i8 12, i8* %24, align 1
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %25, align 8
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  br label %365

31:                                               ; preds = %2
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  store i8 10, i8* %33, align 1
  %34 = load i8**, i8*** %4, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  %37 = load i8**, i8*** %3, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  br label %365

40:                                               ; preds = %2
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  store i8 13, i8* %42, align 1
  %43 = load i8**, i8*** %4, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  %46 = load i8**, i8*** %3, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  br label %365

49:                                               ; preds = %2
  %50 = load i8**, i8*** %3, align 8
  %51 = load i8*, i8** %50, align 8
  store i8 9, i8* %51, align 1
  %52 = load i8**, i8*** %4, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %52, align 8
  %55 = load i8**, i8*** %3, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %55, align 8
  br label %365

58:                                               ; preds = %2
  %59 = load i8**, i8*** %4, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %260

68:                                               ; preds = %58
  %69 = load i8**, i8*** %4, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %260

78:                                               ; preds = %68
  %79 = load i8**, i8*** %4, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %260

88:                                               ; preds = %78
  %89 = load i8**, i8*** %4, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %260

98:                                               ; preds = %88
  %99 = load i8**, i8*** %4, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %106, 1
  %108 = shl i32 %107, 4
  %109 = load i8**, i8*** %4, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %116, 1
  %118 = or i32 %108, %117
  %119 = shl i32 %118, 8
  %120 = load i8**, i8*** %4, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = sub nsw i32 %127, 1
  %129 = shl i32 %128, 4
  %130 = load i8**, i8*** %4, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 4
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %137, 1
  %139 = or i32 %129, %138
  %140 = or i32 %119, %139
  store i32 %140, i32* %5, align 4
  %141 = load i8**, i8*** %4, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 5
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 92
  br i1 %146, label %147, label %248

147:                                              ; preds = %98
  %148 = load i8**, i8*** %4, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 6
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 117
  br i1 %153, label %154, label %248

154:                                              ; preds = %147
  %155 = load i8**, i8*** %4, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 7
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %248

164:                                              ; preds = %154
  %165 = load i8**, i8*** %4, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 8
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %248

174:                                              ; preds = %164
  %175 = load i8**, i8*** %4, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 9
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %248

184:                                              ; preds = %174
  %185 = load i8**, i8*** %4, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 10
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i64
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %248

194:                                              ; preds = %184
  %195 = load i32, i32* %5, align 4
  %196 = and i32 %195, 1023
  %197 = shl i32 %196, 10
  store i32 %197, i32* %5, align 4
  %198 = load i8**, i8*** %4, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 7
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = sub nsw i32 %205, 1
  %207 = shl i32 %206, 4
  %208 = load i8**, i8*** %4, align 8
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 8
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = sub nsw i32 %215, 1
  %217 = or i32 %207, %216
  %218 = shl i32 %217, 8
  %219 = load i8**, i8*** %4, align 8
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 9
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = sub nsw i32 %226, 1
  %228 = shl i32 %227, 4
  %229 = load i8**, i8*** %4, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 10
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i64
  %234 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = sub nsw i32 %236, 1
  %238 = or i32 %228, %237
  %239 = or i32 %218, %238
  %240 = and i32 %239, 1023
  %241 = load i32, i32* %5, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* %5, align 4
  %244 = add i32 %243, 65536
  store i32 %244, i32* %5, align 4
  %245 = load i8**, i8*** %4, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 6
  store i8* %247, i8** %245, align 8
  br label %248

248:                                              ; preds = %194, %184, %174, %164, %154, %147, %98
  %249 = load i8**, i8*** %3, align 8
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @utf8_from_u32(i8* %250, i32 %251)
  %253 = load i8**, i8*** %3, align 8
  %254 = load i8*, i8** %253, align 8
  %255 = sext i32 %252 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %253, align 8
  %257 = load i8**, i8*** %4, align 8
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 5
  store i8* %259, i8** %257, align 8
  br label %365

260:                                              ; preds = %88, %78, %68, %58
  br label %353

261:                                              ; preds = %2
  %262 = load i8**, i8*** %4, align 8
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %311

271:                                              ; preds = %261
  %272 = load i8**, i8*** %4, align 8
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 2
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %311

281:                                              ; preds = %271
  %282 = load i8**, i8*** %4, align 8
  %283 = load i8*, i8** %282, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 1
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i64
  %287 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = sub nsw i32 %289, 1
  %291 = shl i32 %290, 4
  %292 = load i8**, i8*** %4, align 8
  %293 = load i8*, i8** %292, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 2
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i64
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = sub nsw i32 %299, 1
  %301 = or i32 %291, %300
  %302 = trunc i32 %301 to i8
  %303 = load i8**, i8*** %3, align 8
  %304 = load i8*, i8** %303, align 8
  store i8 %302, i8* %304, align 1
  %305 = load i8**, i8*** %3, align 8
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %305, align 8
  %308 = load i8**, i8*** %4, align 8
  %309 = load i8*, i8** %308, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 3
  store i8* %310, i8** %308, align 8
  br label %365

311:                                              ; preds = %271, %261
  br label %353

312:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %313 = load i8**, i8*** %4, align 8
  %314 = load i8*, i8** %313, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 1
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = icmp sge i32 %317, 48
  br i1 %318, label %319, label %350

319:                                              ; preds = %312
  %320 = load i8**, i8*** %4, align 8
  %321 = load i8*, i8** %320, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 1
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp sle i32 %324, 55
  br i1 %325, label %326, label %350

326:                                              ; preds = %319
  %327 = load i8**, i8*** %4, align 8
  %328 = load i8*, i8** %327, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 0
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = sub nsw i32 %331, 48
  %333 = shl i32 %332, 3
  %334 = load i8**, i8*** %4, align 8
  %335 = load i8*, i8** %334, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 1
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i32
  %339 = sub nsw i32 %338, 48
  %340 = or i32 %333, %339
  %341 = trunc i32 %340 to i8
  %342 = load i8**, i8*** %3, align 8
  %343 = load i8*, i8** %342, align 8
  store i8 %341, i8* %343, align 1
  %344 = load i8**, i8*** %3, align 8
  %345 = load i8*, i8** %344, align 8
  %346 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %346, i8** %344, align 8
  %347 = load i8**, i8*** %4, align 8
  %348 = load i8*, i8** %347, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 2
  store i8* %349, i8** %347, align 8
  br label %365

350:                                              ; preds = %319, %312
  br label %353

351:                                              ; preds = %2, %2, %2
  br label %352

352:                                              ; preds = %2, %351
  br label %353

353:                                              ; preds = %352, %350, %311, %260
  %354 = load i8**, i8*** %4, align 8
  %355 = load i8*, i8** %354, align 8
  %356 = load i8, i8* %355, align 1
  %357 = load i8**, i8*** %3, align 8
  %358 = load i8*, i8** %357, align 8
  store i8 %356, i8* %358, align 1
  %359 = load i8**, i8*** %4, align 8
  %360 = load i8*, i8** %359, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %359, align 8
  %362 = load i8**, i8*** %3, align 8
  %363 = load i8*, i8** %362, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %362, align 8
  br label %365

365:                                              ; preds = %13, %22, %31, %40, %49, %248, %281, %353, %326
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_from_u32(i8*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ule i32 %6, 127
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %4, align 8
  store i8 %10, i8* %11, align 1
  store i32 1, i32* %3, align 4
  br label %81

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ule i32 %13, 2047
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = lshr i32 %16, 6
  %18 = or i32 192, %17
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  store i8 %19, i8* %20, align 1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 63
  %24 = or i32 128, %23
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  store i8 %25, i8* %26, align 1
  store i32 2, i32* %3, align 4
  br label %81

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = icmp ule i32 %29, 65535
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = lshr i32 %32, 12
  %34 = or i32 224, %33
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i32, i32* %5, align 4
  %39 = lshr i32 %38, 6
  %40 = and i32 %39, 63
  %41 = or i32 128, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 63
  %47 = or i32 128, %46
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %4, align 8
  store i8 %48, i8* %49, align 1
  store i32 3, i32* %3, align 4
  br label %81

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = lshr i32 %54, 18
  %56 = and i32 %55, 7
  %57 = or i32 240, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i32, i32* %5, align 4
  %62 = lshr i32 %61, 12
  %63 = and i32 %62, 63
  %64 = or i32 128, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %5, align 4
  %69 = lshr i32 %68, 6
  %70 = and i32 %69, 63
  %71 = or i32 128, %70
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  store i8 %72, i8* %73, align 1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 63
  %77 = or i32 128, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %4, align 8
  store i8 %78, i8* %79, align 1
  store i32 4, i32* %3, align 4
  br label %81

81:                                               ; preds = %53, %31, %15, %8
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #4

declare dso_local i32 @fiobj_hash_set(i64, i64, i64) #4

declare dso_local void @fiobj_ary_push(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_json_stack_push(%struct.fio_json_stack_s*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_json_stack_s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %7 = icmp ne %struct.fio_json_stack_s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

9:                                                ; preds = %2
  %10 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %11 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %14 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  call void @fio_json_stack___require_on_top(%struct.fio_json_stack_s* %18, i64 5)
  br label %19

19:                                               ; preds = %17, %9
  %20 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %21 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %24 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %29 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %31 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %35 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %38 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  store i64 %33, i64* %40, align 8
  %41 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %42 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %8
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @fiobj_hash_new() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_stack___require_on_top(%struct.fio_json_stack_s*, i64) #0 {
  %3 = alloca %struct.fio_json_stack_s*, align 8
  %4 = alloca i64, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8
  %6 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %7, %8
  %10 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8
  %11 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %58

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8
  %18 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  %21 = and i64 %20, -2
  %22 = add i64 %21, 2
  store i64 %22, i64* %4, align 8
  %23 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8
  %24 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i64, i64* %4, align 8
  %28 = mul i64 %27, 8
  %29 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8
  %30 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 8
  %33 = call i8* @fio_realloc2(i8* %26, i64 %28, i64 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 15
  %36 = icmp eq i64 %35, 0
  call void @llvm.assume(i1 %36)
  %37 = bitcast i8* %33 to i64*
  %38 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8
  %39 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %38, i32 0, i32 3
  store i64* %37, i64** %39, align 8
  %40 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8
  %41 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %40, i32 0, i32 3
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
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0))
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @kill(i32 0, i32 2) #1
  %52 = call i32* @__errno_location() #10
  %53 = load i32, i32* %52, align 4
  call void @exit(i32 %53) #9
  unreachable

54:                                               ; preds = %15
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8
  %57 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %14
  ret void
}

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 {
  ret i64 6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_json_stack_pop(%struct.fio_json_stack_s*, i64*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_json_stack_s*, align 8
  %5 = alloca i64*, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %7 = call i64 @fio_json_stack_count(%struct.fio_json_stack_s* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %12 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %19 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %22 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %21, i32 0, i32 1
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
define internal i64 @fio_json_stack_count(%struct.fio_json_stack_s*) #0 {
  %2 = alloca %struct.fio_json_stack_s*, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %2, align 8
  %3 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8
  %4 = icmp ne %struct.fio_json_stack_s* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %8, %11
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i64 [ %12, %5 ], [ 0, %13 ]
  ret i64 %15
}

declare dso_local i64 @fiobj_ary_new() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 {
  ret i64 22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 {
  ret i64 38
}

declare dso_local i64 @fiobj_float_new(double) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_num_new(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, -4611686018427387904
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, -4611686018427387904
  %12 = icmp eq i64 %11, -4611686018427387904
  br i1 %12, label %13, label %23

13:                                               ; preds = %9, %1
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 9223372036854775807
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, -9223372036854775808
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = shl i64 %18, 1
  %20 = load i64, i64* %5, align 8
  %21 = or i64 %19, %20
  %22 = or i64 %21, 1
  store i64 %22, i64* %2, align 8
  br label %26

23:                                               ; preds = %9
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @fiobj_num_new_bignum(i64 %24)
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %23, %13
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i64 @fiobj_num_new_bignum(i64) #4

declare dso_local void @fiobj_free_complex_object(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_json_stack___rel2absolute(%struct.fio_json_stack_s*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_json_stack_s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %3, align 8
  br label %25

10:                                               ; preds = %2
  %11 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %12 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8
  %15 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %14, i32 0, i32 0
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

declare dso_local void @fio_free(i8*) #4

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

declare dso_local i64 @fiobj_hash_key_in_loop() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_safe_str(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fio_str_info_s, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %16)
  %17 = load i64, i64* %3, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %6, i64 %17)
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 34, i8* %22, align 1
  %23 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  call void @fiobj_str_resize(i64 %26, i64 %28)
  %29 = load i64, i64* %3, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %29)
  %30 = bitcast %struct.fio_str_info_s* %6 to i8*
  %31 = bitcast %struct.fio_str_info_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @fiobj_str_capa(i64 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %41, %43
  %45 = add i64 %44, 64
  %46 = icmp ule i64 %40, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %2
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %49, %51
  %53 = add i64 %52, 64
  %54 = call i64 @fiobj_str_capa_assert(i64 %48, i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %3, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %13, i64 %55)
  %56 = bitcast %struct.fio_str_info_s* %6 to i8*
  %57 = bitcast %struct.fio_str_info_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  br label %58

58:                                               ; preds = %47, %2
  br label %59

59:                                               ; preds = %267, %58
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %268

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %14, align 8
  br label %65

65:                                               ; preds = %88, %62
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sgt i32 %72, 32
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %78, 34
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %84, 92
  br label %86

86:                                               ; preds = %80, %74, %68, %65
  %87 = phi i1 [ false, %74 ], [ false, %68 ], [ false, %65 ], [ %85, %80 ]
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %9, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  %93 = load i8, i8* %91, align 1
  %94 = load i8*, i8** %14, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  %97 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 %93, i8* %97, align 1
  br label %65

98:                                               ; preds = %86
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %268

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  switch i32 %106, label %176 [
    i32 8, label %107
    i32 12, label %118
    i32 10, label %129
    i32 13, label %140
    i32 9, label %151
    i32 34, label %162
    i32 92, label %162
    i32 47, label %162
  ]

107:                                              ; preds = %102
  %108 = load i8*, i8** %14, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %10, align 8
  %111 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 92, i8* %111, align 1
  %112 = load i8*, i8** %14, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  %115 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8 98, i8* %115, align 1
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %234

118:                                              ; preds = %102
  %119 = load i8*, i8** %14, align 8
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %10, align 8
  %122 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 92, i8* %122, align 1
  %123 = load i8*, i8** %14, align 8
  %124 = load i64, i64* %10, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %10, align 8
  %126 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 102, i8* %126, align 1
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %11, align 8
  br label %234

129:                                              ; preds = %102
  %130 = load i8*, i8** %14, align 8
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %10, align 8
  %133 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8 92, i8* %133, align 1
  %134 = load i8*, i8** %14, align 8
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %10, align 8
  %137 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 110, i8* %137, align 1
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %11, align 8
  br label %234

140:                                              ; preds = %102
  %141 = load i8*, i8** %14, align 8
  %142 = load i64, i64* %10, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %10, align 8
  %144 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8 92, i8* %144, align 1
  %145 = load i8*, i8** %14, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %10, align 8
  %148 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8 114, i8* %148, align 1
  %149 = load i64, i64* %11, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %11, align 8
  br label %234

151:                                              ; preds = %102
  %152 = load i8*, i8** %14, align 8
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %10, align 8
  %155 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8 92, i8* %155, align 1
  %156 = load i8*, i8** %14, align 8
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  %159 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8 116, i8* %159, align 1
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %11, align 8
  br label %234

162:                                              ; preds = %102, %102, %102
  %163 = load i8*, i8** %14, align 8
  %164 = load i64, i64* %10, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %10, align 8
  %166 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8 92, i8* %166, align 1
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %14, align 8
  %171 = load i64, i64* %10, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %10, align 8
  %173 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8 %169, i8* %173, align 1
  %174 = load i64, i64* %11, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %11, align 8
  br label %234

176:                                              ; preds = %102
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp sle i32 %180, 31
  br i1 %181, label %182, label %225

182:                                              ; preds = %176
  %183 = load i8*, i8** %14, align 8
  %184 = load i64, i64* %10, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %10, align 8
  %186 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8 92, i8* %186, align 1
  %187 = load i8*, i8** %14, align 8
  %188 = load i64, i64* %10, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %10, align 8
  %190 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8 117, i8* %190, align 1
  %191 = load i8*, i8** %14, align 8
  %192 = load i64, i64* %10, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %10, align 8
  %194 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8 48, i8* %194, align 1
  %195 = load i8*, i8** %14, align 8
  %196 = load i64, i64* %10, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %10, align 8
  %198 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8 48, i8* %198, align 1
  %199 = load i8*, i8** %8, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = ashr i32 %202, 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = load i8*, i8** %14, align 8
  %208 = load i64, i64* %10, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %10, align 8
  %210 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8 %206, i8* %210, align 1
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = and i32 %214, 15
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = load i8*, i8** %14, align 8
  %220 = load i64, i64* %10, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %10, align 8
  %222 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8 %218, i8* %222, align 1
  %223 = load i64, i64* %11, align 8
  %224 = add i64 %223, 4
  store i64 %224, i64* %11, align 8
  br label %233

225:                                              ; preds = %176
  %226 = load i8*, i8** %8, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 0
  %228 = load i8, i8* %227, align 1
  %229 = load i8*, i8** %14, align 8
  %230 = load i64, i64* %10, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %10, align 8
  %232 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 %228, i8* %232, align 1
  br label %233

233:                                              ; preds = %225, %182
  br label %234

234:                                              ; preds = %233, %162, %151, %140, %129, %118, %107
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %8, align 8
  %237 = load i64, i64* %9, align 8
  %238 = add i64 %237, -1
  store i64 %238, i64* %9, align 8
  %239 = load i64, i64* %11, align 8
  %240 = icmp uge i64 %239, 48
  br i1 %240, label %241, label %267

241:                                              ; preds = %234
  %242 = load i64, i64* %12, align 8
  %243 = load i64, i64* %10, align 8
  %244 = load i64, i64* %9, align 8
  %245 = add i64 %243, %244
  %246 = add i64 %245, 64
  %247 = icmp ule i64 %242, %246
  br i1 %247, label %248, label %267

248:                                              ; preds = %241
  %249 = load i8*, i8** %14, align 8
  %250 = load i64, i64* %10, align 8
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8 0, i8* %251, align 1
  %252 = load i64, i64* %3, align 8
  %253 = load i64, i64* %10, align 8
  call void @fiobj_str_resize(i64 %252, i64 %253)
  %254 = load i64, i64* %3, align 8
  %255 = load i64, i64* %10, align 8
  %256 = load i64, i64* %9, align 8
  %257 = add i64 %255, %256
  %258 = add i64 %257, 64
  %259 = call i64 @fiobj_str_capa_assert(i64 %254, i64 %258)
  %260 = load i64, i64* %3, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %15, i64 %260)
  %261 = bitcast %struct.fio_str_info_s* %6 to i8*
  %262 = bitcast %struct.fio_str_info_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 24, i1 false)
  %263 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  store i8* %264, i8** %14, align 8
  %265 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %267

267:                                              ; preds = %248, %241, %234
  br label %59

268:                                              ; preds = %101, %59
  %269 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %270 = load i8*, i8** %269, align 8
  %271 = load i64, i64* %10, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %10, align 8
  %273 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8 34, i8* %273, align 1
  %274 = load i64, i64* %3, align 8
  %275 = load i64, i64* %10, align 8
  call void @fiobj_str_resize(i64 %274, i64 %275)
  ret void
}

declare dso_local i64 @fiobj_str_concat(i64, i64) #4

declare dso_local i64 @fiobj_ary_count(i64) #4

declare dso_local i64 @fiobj_hash_count(i64) #4

declare dso_local i64 @fiobj_str_capa_assert(i64, i64) #4

declare dso_local i64 @fiobj_str_capa(i64) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
