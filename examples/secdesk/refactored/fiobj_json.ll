; ModuleID = 'fiobj_json.c'
source_filename = "fiobj_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !0
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !80
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !82
@JSON_SEPERATOR = internal constant <{ [45 x i8], [211 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\01", [211 x i8] zeroinitializer }>, align 16, !dbg !84
@string_seek_stop = internal constant <{ [93 x i8], [163 x i8] }> <{ [93 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [163 x i8] zeroinitializer }>, align 16, !dbg !89
@is_hex = internal constant <{ [103 x i8], [153 x i8] }> <{ [103 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\00\00\00\00\00\00\00\0B\0C\0D\0E\0F\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\0C\0D\0E\0F\10", [153 x i8] zeroinitializer }>, align 16, !dbg !91
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.8 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.10 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.12 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4920\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"WARNING: (JSON parsing) malformed JSON, ignoring dangling Hash key.\00", align 1
@JSON_NUMERAL = internal constant <{ [121 x i8], [134 x i8] }> <{ [121 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [134 x i8] zeroinitializer }>, align 16, !dbg !93
@fio_json_stack_s___const_invalid_object = internal constant i64 0, align 8, !dbg !98
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
@hex_chars = internal constant [16 x i8] c"0123456789ABCDEF", align 16, !dbg !101

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !112 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !119, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !124, metadata !DIExpression()), !dbg !139
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !140
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !140
  call void @llvm.va_start(i8* %7), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %5, metadata !141, metadata !DIExpression()), !dbg !142
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !143
  %9 = load i8*, i8** %2, align 8, !dbg !144
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !145
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !146
  store i32 %11, i32* %5, align 4, !dbg !142
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !147
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !147
  call void @llvm.va_end(i8* %13), !dbg !147
  %14 = load i32, i32* %5, align 4, !dbg !148
  %15 = icmp sle i32 %14, 0, !dbg !150
  br i1 %15, label %19, label %16, !dbg !151

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !152
  %18 = icmp sge i32 %17, 2046, !dbg !153
  br i1 %18, label %19, label %29, !dbg !154

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !155
  %21 = icmp sge i32 %20, 2046, !dbg !158
  br i1 %21, label %22, label %25, !dbg !159

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !160
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !163
  store i32 2041, i32* %5, align 4, !dbg !164
  br label %28, !dbg !165

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !166
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !168
  br label %42, !dbg !169

28:                                               ; preds = %22
  br label %29, !dbg !170

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !171
  %31 = add nsw i32 %30, 1, !dbg !171
  store i32 %31, i32* %5, align 4, !dbg !171
  %32 = sext i32 %30 to i64, !dbg !172
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !172
  store i8 10, i8* %33, align 1, !dbg !173
  %34 = load i32, i32* %5, align 4, !dbg !174
  %35 = sext i32 %34 to i64, !dbg !175
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !175
  store i8 48, i8* %36, align 1, !dbg !176
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !177
  %38 = load i32, i32* %5, align 4, !dbg !178
  %39 = sext i32 %38 to i64, !dbg !178
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !179
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !180
  br label %42, !dbg !181

42:                                               ; preds = %29, %25
  ret void, !dbg !181
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
define dso_local i64 @fiobj_json2obj(i64* %0, i8* %1, i64 %2) #0 !dbg !182 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fiobj_json_parser_s, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !187, metadata !DIExpression()), !dbg !188
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !189, metadata !DIExpression()), !dbg !190
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata %struct.fiobj_json_parser_s* %7, metadata !193, metadata !DIExpression()), !dbg !194
  %9 = bitcast %struct.fiobj_json_parser_s* %7 to i8*, !dbg !194
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 72, i1 false), !dbg !194
  call void @llvm.dbg.declare(metadata i64* %8, metadata !195, metadata !DIExpression()), !dbg !196
  %10 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 0, !dbg !197
  %11 = load i8*, i8** %5, align 8, !dbg !198
  %12 = load i64, i64* %6, align 8, !dbg !199
  %13 = call i64 @fio_json_parse(%struct.json_parser_s* %10, i8* %11, i64 %12), !dbg !200
  store i64 %13, i64* %8, align 8, !dbg !196
  %14 = load i64, i64* %8, align 8, !dbg !201
  %15 = icmp ne i64 %14, 0, !dbg !201
  br i1 %15, label %16, label %22, !dbg !203

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 0, !dbg !204
  %18 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %17, i32 0, i32 1, !dbg !205
  %19 = load i8, i8* %18, align 4, !dbg !205
  %20 = zext i8 %19 to i32, !dbg !206
  %21 = icmp ne i32 %20, 0, !dbg !206
  br i1 %21, label %22, label %26, !dbg !207

22:                                               ; preds = %16, %3
  %23 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 4, !dbg !208
  %24 = call i64 @fio_json_stack_get(%struct.fio_json_stack_s* %23, i64 0), !dbg !210
  call void @fiobj_free(i64 %24), !dbg !211
  %25 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 2, !dbg !212
  store i64 0, i64* %25, align 8, !dbg !213
  br label %26, !dbg !214

26:                                               ; preds = %22, %16
  %27 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 4, !dbg !215
  call void @fio_json_stack_free(%struct.fio_json_stack_s* %27), !dbg !216
  %28 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 1, !dbg !217
  %29 = load i64, i64* %28, align 8, !dbg !217
  call void @fiobj_free(i64 %29), !dbg !218
  %30 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 2, !dbg !219
  %31 = load i64, i64* %30, align 8, !dbg !219
  %32 = load i64*, i64** %4, align 8, !dbg !220
  store i64 %31, i64* %32, align 8, !dbg !221
  %33 = load i64, i64* %8, align 8, !dbg !222
  ret i64 %33, !dbg !223
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_json_parse(%struct.json_parser_s* %0, i8* %1, i64 %2) #0 !dbg !224 {
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
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %5, metadata !228, metadata !DIExpression()), !dbg !229
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !230, metadata !DIExpression()), !dbg !231
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !232, metadata !DIExpression()), !dbg !233
  %18 = load i64, i64* %7, align 8, !dbg !234
  %19 = icmp ne i64 %18, 0, !dbg !234
  br i1 %19, label %20, label %23, !dbg !236

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8, !dbg !237
  %22 = icmp ne i8* %21, null, !dbg !237
  br i1 %22, label %24, label %23, !dbg !238

23:                                               ; preds = %20, %3
  store i64 0, i64* %4, align 8, !dbg !239
  br label %514, !dbg !239

24:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i8** %8, metadata !240, metadata !DIExpression()), !dbg !241
  %25 = load i8*, i8** %6, align 8, !dbg !242
  store i8* %25, i8** %8, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata i8** %9, metadata !243, metadata !DIExpression()), !dbg !244
  %26 = load i8*, i8** %8, align 8, !dbg !245
  %27 = load i64, i64* %7, align 8, !dbg !246
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !247
  store i8* %28, i8** %9, align 8, !dbg !244
  br label %29, !dbg !248

29:                                               ; preds = %501, %24
  br label %30, !dbg !249

30:                                               ; preds = %44, %29
  %31 = load i8*, i8** %8, align 8, !dbg !251
  %32 = load i8*, i8** %9, align 8, !dbg !252
  %33 = icmp ult i8* %31, %32, !dbg !253
  br i1 %33, label %34, label %42, !dbg !254

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8, !dbg !255
  %36 = load i8, i8* %35, align 1, !dbg !256
  %37 = zext i8 %36 to i64, !dbg !257
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [45 x i8], [211 x i8] }>* @JSON_SEPERATOR to [256 x i8]*), i64 0, i64 %37, !dbg !257
  %39 = load i8, i8* %38, align 1, !dbg !257
  %40 = zext i8 %39 to i32, !dbg !257
  %41 = icmp ne i32 %40, 0, !dbg !254
  br label %42

42:                                               ; preds = %34, %30
  %43 = phi i1 [ false, %30 ], [ %41, %34 ], !dbg !258
  br i1 %43, label %44, label %47, !dbg !249

44:                                               ; preds = %42
  %45 = load i8*, i8** %8, align 8, !dbg !259
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !259
  store i8* %46, i8** %8, align 8, !dbg !259
  br label %30, !dbg !249, !llvm.loop !260

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8, !dbg !262
  %49 = load i8*, i8** %9, align 8, !dbg !264
  %50 = icmp eq i8* %48, %49, !dbg !265
  br i1 %50, label %51, label %52, !dbg !266

51:                                               ; preds = %47
  br label %506, !dbg !267

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8, !dbg !268
  %54 = load i8, i8* %53, align 1, !dbg !269
  %55 = zext i8 %54 to i32, !dbg !269
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
  ], !dbg !270

56:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i8** %10, metadata !271, metadata !DIExpression()), !dbg !274
  %57 = load i8*, i8** %8, align 8, !dbg !275
  %58 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !276
  store i8* %58, i8** %10, align 8, !dbg !274
  %59 = load i8*, i8** %9, align 8, !dbg !277
  %60 = call i32 @seek2eos(i8** %10, i8* %59), !dbg !279
  %61 = icmp eq i32 %60, 0, !dbg !280
  br i1 %61, label %62, label %63, !dbg !281

62:                                               ; preds = %56
  br label %506, !dbg !282

63:                                               ; preds = %56
  %64 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !283
  %65 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %64, i32 0, i32 2, !dbg !285
  %66 = load i8, i8* %65, align 1, !dbg !285
  %67 = icmp ne i8 %66, 0, !dbg !283
  br i1 %67, label %68, label %113, !dbg !286

68:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata i8** %11, metadata !287, metadata !DIExpression()), !dbg !289
  %69 = load i8*, i8** %10, align 8, !dbg !290
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !291
  store i8* %70, i8** %11, align 8, !dbg !289
  br label %71, !dbg !292

71:                                               ; preds = %85, %68
  %72 = load i8*, i8** %11, align 8, !dbg !293
  %73 = load i8*, i8** %9, align 8, !dbg !294
  %74 = icmp ult i8* %72, %73, !dbg !295
  br i1 %74, label %75, label %83, !dbg !296

75:                                               ; preds = %71
  %76 = load i8*, i8** %11, align 8, !dbg !297
  %77 = load i8, i8* %76, align 1, !dbg !298
  %78 = zext i8 %77 to i64, !dbg !299
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [45 x i8], [211 x i8] }>* @JSON_SEPERATOR to [256 x i8]*), i64 0, i64 %78, !dbg !299
  %80 = load i8, i8* %79, align 1, !dbg !299
  %81 = zext i8 %80 to i32, !dbg !299
  %82 = icmp ne i32 %81, 0, !dbg !296
  br label %83

83:                                               ; preds = %75, %71
  %84 = phi i1 [ false, %71 ], [ %82, %75 ], !dbg !300
  br i1 %84, label %85, label %88, !dbg !292

85:                                               ; preds = %83
  %86 = load i8*, i8** %11, align 8, !dbg !301
  %87 = getelementptr inbounds i8, i8* %86, i32 1, !dbg !301
  store i8* %87, i8** %11, align 8, !dbg !301
  br label %71, !dbg !292, !llvm.loop !302

88:                                               ; preds = %83
  %89 = load i8*, i8** %11, align 8, !dbg !304
  %90 = load i8*, i8** %9, align 8, !dbg !306
  %91 = icmp uge i8* %89, %90, !dbg !307
  br i1 %91, label %92, label %93, !dbg !308

92:                                               ; preds = %88
  br label %506, !dbg !309

93:                                               ; preds = %88
  %94 = load i8*, i8** %11, align 8, !dbg !310
  %95 = load i8, i8* %94, align 1, !dbg !312
  %96 = zext i8 %95 to i32, !dbg !312
  %97 = icmp ne i32 %96, 58, !dbg !313
  br i1 %97, label %98, label %99, !dbg !314

98:                                               ; preds = %93
  br label %512, !dbg !315

99:                                               ; preds = %93
  %100 = load i8*, i8** %8, align 8, !dbg !316
  %101 = getelementptr inbounds i8, i8* %100, i32 1, !dbg !316
  store i8* %101, i8** %8, align 8, !dbg !316
  %102 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !317
  %103 = load i8*, i8** %8, align 8, !dbg !318
  %104 = load i8*, i8** %10, align 8, !dbg !319
  %105 = load i8*, i8** %8, align 8, !dbg !320
  %106 = ptrtoint i8* %104 to i64, !dbg !321
  %107 = ptrtoint i8* %105 to i64, !dbg !321
  %108 = sub i64 %106, %107, !dbg !321
  call void @fio_json_on_string(%struct.json_parser_s* %102, i8* %103, i64 %108), !dbg !322
  %109 = load i8*, i8** %11, align 8, !dbg !323
  %110 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !324
  store i8* %110, i8** %8, align 8, !dbg !325
  %111 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !326
  %112 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %111, i32 0, i32 2, !dbg !327
  store i8 0, i8* %112, align 1, !dbg !328
  br label %501, !dbg !329

113:                                              ; preds = %63
  %114 = load i8*, i8** %8, align 8, !dbg !330
  %115 = getelementptr inbounds i8, i8* %114, i32 1, !dbg !330
  store i8* %115, i8** %8, align 8, !dbg !330
  %116 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !332
  %117 = load i8*, i8** %8, align 8, !dbg !333
  %118 = load i8*, i8** %10, align 8, !dbg !334
  %119 = load i8*, i8** %8, align 8, !dbg !335
  %120 = ptrtoint i8* %118 to i64, !dbg !336
  %121 = ptrtoint i8* %119 to i64, !dbg !336
  %122 = sub i64 %120, %121, !dbg !336
  call void @fio_json_on_string(%struct.json_parser_s* %116, i8* %117, i64 %122), !dbg !337
  %123 = load i8*, i8** %10, align 8, !dbg !338
  %124 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !339
  store i8* %124, i8** %8, align 8, !dbg !340
  br label %125

125:                                              ; preds = %113
  br label %485, !dbg !341

126:                                              ; preds = %52
  %127 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !342
  %128 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %127, i32 0, i32 2, !dbg !344
  %129 = load i8, i8* %128, align 1, !dbg !344
  %130 = icmp ne i8 %129, 0, !dbg !342
  br i1 %130, label %131, label %132, !dbg !345

131:                                              ; preds = %126
  br label %512, !dbg !346

132:                                              ; preds = %126
  %133 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !348
  %134 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %133, i32 0, i32 1, !dbg !349
  %135 = load i8, i8* %134, align 4, !dbg !350
  %136 = add i8 %135, 1, !dbg !350
  store i8 %136, i8* %134, align 4, !dbg !350
  %137 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !351
  %138 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %137, i32 0, i32 1, !dbg !353
  %139 = load i8, i8* %138, align 4, !dbg !353
  %140 = zext i8 %139 to i32, !dbg !351
  %141 = icmp sge i32 %140, 32, !dbg !354
  br i1 %141, label %142, label %143, !dbg !355

142:                                              ; preds = %132
  br label %512, !dbg !356

143:                                              ; preds = %132
  %144 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !357
  %145 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %144, i32 0, i32 0, !dbg !358
  %146 = load i32, i32* %145, align 4, !dbg !358
  %147 = shl i32 %146, 1, !dbg !359
  %148 = or i32 %147, 1, !dbg !360
  %149 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !361
  %150 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %149, i32 0, i32 0, !dbg !362
  store i32 %148, i32* %150, align 4, !dbg !363
  %151 = load i8*, i8** %8, align 8, !dbg !364
  %152 = getelementptr inbounds i8, i8* %151, i32 1, !dbg !364
  store i8* %152, i8** %8, align 8, !dbg !364
  %153 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !365
  %154 = call i32 @fio_json_on_start_object(%struct.json_parser_s* %153), !dbg !367
  %155 = icmp ne i32 %154, 0, !dbg !367
  br i1 %155, label %156, label %157, !dbg !368

156:                                              ; preds = %143
  br label %512, !dbg !369

157:                                              ; preds = %143
  br label %485, !dbg !370

158:                                              ; preds = %52
  %159 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !371
  %160 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %159, i32 0, i32 0, !dbg !373
  %161 = load i32, i32* %160, align 4, !dbg !373
  %162 = and i32 %161, 1, !dbg !374
  %163 = icmp eq i32 %162, 0, !dbg !375
  br i1 %163, label %164, label %165, !dbg !376

164:                                              ; preds = %158
  br label %512, !dbg !377

165:                                              ; preds = %158
  %166 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !379
  %167 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %166, i32 0, i32 2, !dbg !381
  %168 = load i8, i8* %167, align 1, !dbg !381
  %169 = icmp ne i8 %168, 0, !dbg !379
  br i1 %169, label %172, label %170, !dbg !382

170:                                              ; preds = %165
  %171 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !383
  call void @fio_json_on_null(%struct.json_parser_s* %171), !dbg !385
  br label %172, !dbg !386

172:                                              ; preds = %170, %165
  %173 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !387
  %174 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %173, i32 0, i32 1, !dbg !388
  %175 = load i8, i8* %174, align 4, !dbg !389
  %176 = add i8 %175, -1, !dbg !389
  store i8 %176, i8* %174, align 4, !dbg !389
  %177 = load i8*, i8** %8, align 8, !dbg !390
  %178 = getelementptr inbounds i8, i8* %177, i32 1, !dbg !390
  store i8* %178, i8** %8, align 8, !dbg !390
  %179 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !391
  %180 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %179, i32 0, i32 0, !dbg !392
  %181 = load i32, i32* %180, align 4, !dbg !392
  %182 = lshr i32 %181, 1, !dbg !393
  %183 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !394
  %184 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %183, i32 0, i32 0, !dbg !395
  store i32 %182, i32* %184, align 4, !dbg !396
  %185 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !397
  call void @fio_json_on_end_object(%struct.json_parser_s* %185), !dbg !398
  br label %485, !dbg !399

186:                                              ; preds = %52
  %187 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !400
  %188 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %187, i32 0, i32 2, !dbg !402
  %189 = load i8, i8* %188, align 1, !dbg !402
  %190 = icmp ne i8 %189, 0, !dbg !400
  br i1 %190, label %191, label %192, !dbg !403

191:                                              ; preds = %186
  br label %512, !dbg !404

192:                                              ; preds = %186
  %193 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !406
  %194 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %193, i32 0, i32 1, !dbg !407
  %195 = load i8, i8* %194, align 4, !dbg !408
  %196 = add i8 %195, 1, !dbg !408
  store i8 %196, i8* %194, align 4, !dbg !408
  %197 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !409
  %198 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %197, i32 0, i32 1, !dbg !411
  %199 = load i8, i8* %198, align 4, !dbg !411
  %200 = zext i8 %199 to i32, !dbg !409
  %201 = icmp sge i32 %200, 32, !dbg !412
  br i1 %201, label %202, label %203, !dbg !413

202:                                              ; preds = %192
  br label %512, !dbg !414

203:                                              ; preds = %192
  %204 = load i8*, i8** %8, align 8, !dbg !415
  %205 = getelementptr inbounds i8, i8* %204, i32 1, !dbg !415
  store i8* %205, i8** %8, align 8, !dbg !415
  %206 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !416
  %207 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %206, i32 0, i32 0, !dbg !417
  %208 = load i32, i32* %207, align 4, !dbg !417
  %209 = shl i32 %208, 1, !dbg !418
  %210 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !419
  %211 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %210, i32 0, i32 0, !dbg !420
  store i32 %209, i32* %211, align 4, !dbg !421
  %212 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !422
  %213 = call i32 @fio_json_on_start_array(%struct.json_parser_s* %212), !dbg !424
  %214 = icmp ne i32 %213, 0, !dbg !424
  br i1 %214, label %215, label %216, !dbg !425

215:                                              ; preds = %203
  br label %512, !dbg !426

216:                                              ; preds = %203
  br label %485, !dbg !427

217:                                              ; preds = %52
  %218 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !428
  %219 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %218, i32 0, i32 0, !dbg !430
  %220 = load i32, i32* %219, align 4, !dbg !430
  %221 = and i32 %220, 1, !dbg !431
  %222 = icmp ne i32 %221, 0, !dbg !431
  br i1 %222, label %223, label %224, !dbg !432

223:                                              ; preds = %217
  br label %512, !dbg !433

224:                                              ; preds = %217
  %225 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !434
  %226 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %225, i32 0, i32 1, !dbg !435
  %227 = load i8, i8* %226, align 4, !dbg !436
  %228 = add i8 %227, -1, !dbg !436
  store i8 %228, i8* %226, align 4, !dbg !436
  %229 = load i8*, i8** %8, align 8, !dbg !437
  %230 = getelementptr inbounds i8, i8* %229, i32 1, !dbg !437
  store i8* %230, i8** %8, align 8, !dbg !437
  %231 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !438
  %232 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %231, i32 0, i32 0, !dbg !439
  %233 = load i32, i32* %232, align 4, !dbg !439
  %234 = lshr i32 %233, 1, !dbg !440
  %235 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !441
  %236 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %235, i32 0, i32 0, !dbg !442
  store i32 %234, i32* %236, align 4, !dbg !443
  %237 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !444
  call void @fio_json_on_end_array(%struct.json_parser_s* %237), !dbg !445
  br label %485, !dbg !446

238:                                              ; preds = %52
  %239 = load i8*, i8** %8, align 8, !dbg !447
  %240 = getelementptr inbounds i8, i8* %239, i64 3, !dbg !449
  %241 = load i8*, i8** %9, align 8, !dbg !450
  %242 = icmp uge i8* %240, %241, !dbg !451
  br i1 %242, label %243, label %244, !dbg !452

243:                                              ; preds = %238
  br label %506, !dbg !453

244:                                              ; preds = %238
  %245 = load i8*, i8** %8, align 8, !dbg !454
  %246 = getelementptr inbounds i8, i8* %245, i64 1, !dbg !454
  %247 = load i8, i8* %246, align 1, !dbg !454
  %248 = zext i8 %247 to i32, !dbg !454
  %249 = icmp eq i32 %248, 114, !dbg !456
  br i1 %249, label %250, label %264, !dbg !457

250:                                              ; preds = %244
  %251 = load i8*, i8** %8, align 8, !dbg !458
  %252 = getelementptr inbounds i8, i8* %251, i64 2, !dbg !458
  %253 = load i8, i8* %252, align 1, !dbg !458
  %254 = zext i8 %253 to i32, !dbg !458
  %255 = icmp eq i32 %254, 117, !dbg !459
  br i1 %255, label %256, label %264, !dbg !460

256:                                              ; preds = %250
  %257 = load i8*, i8** %8, align 8, !dbg !461
  %258 = getelementptr inbounds i8, i8* %257, i64 3, !dbg !461
  %259 = load i8, i8* %258, align 1, !dbg !461
  %260 = zext i8 %259 to i32, !dbg !461
  %261 = icmp eq i32 %260, 101, !dbg !462
  br i1 %261, label %262, label %264, !dbg !463

262:                                              ; preds = %256
  %263 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !464
  call void @fio_json_on_true(%struct.json_parser_s* %263), !dbg !465
  br label %265, !dbg !465

264:                                              ; preds = %256, %250, %244
  br label %512, !dbg !466

265:                                              ; preds = %262
  %266 = load i8*, i8** %8, align 8, !dbg !467
  %267 = getelementptr inbounds i8, i8* %266, i64 4, !dbg !467
  store i8* %267, i8** %8, align 8, !dbg !467
  br label %485, !dbg !468

268:                                              ; preds = %52, %52
  %269 = load i8*, i8** %8, align 8, !dbg !469
  %270 = getelementptr inbounds i8, i8* %269, i64 2, !dbg !471
  %271 = load i8*, i8** %9, align 8, !dbg !472
  %272 = icmp ule i8* %270, %271, !dbg !473
  br i1 %272, label %273, label %288, !dbg !474

273:                                              ; preds = %268
  %274 = load i8*, i8** %8, align 8, !dbg !475
  %275 = getelementptr inbounds i8, i8* %274, i64 1, !dbg !475
  %276 = load i8, i8* %275, align 1, !dbg !475
  %277 = zext i8 %276 to i32, !dbg !475
  %278 = or i32 %277, 32, !dbg !476
  %279 = icmp eq i32 %278, 97, !dbg !477
  br i1 %279, label %280, label %288, !dbg !478

280:                                              ; preds = %273
  %281 = load i8*, i8** %8, align 8, !dbg !479
  %282 = getelementptr inbounds i8, i8* %281, i64 2, !dbg !479
  %283 = load i8, i8* %282, align 1, !dbg !479
  %284 = zext i8 %283 to i32, !dbg !479
  %285 = or i32 %284, 32, !dbg !480
  %286 = icmp eq i32 %285, 110, !dbg !481
  br i1 %286, label %287, label %288, !dbg !482

287:                                              ; preds = %280
  br label %360, !dbg !483

288:                                              ; preds = %280, %273, %268
  %289 = load i8*, i8** %8, align 8, !dbg !484
  %290 = getelementptr inbounds i8, i8* %289, i64 3, !dbg !486
  %291 = load i8*, i8** %9, align 8, !dbg !487
  %292 = icmp uge i8* %290, %291, !dbg !488
  br i1 %292, label %293, label %294, !dbg !489

293:                                              ; preds = %288
  br label %506, !dbg !490

294:                                              ; preds = %288
  %295 = load i8*, i8** %8, align 8, !dbg !491
  %296 = getelementptr inbounds i8, i8* %295, i64 1, !dbg !491
  %297 = load i8, i8* %296, align 1, !dbg !491
  %298 = zext i8 %297 to i32, !dbg !491
  %299 = icmp eq i32 %298, 117, !dbg !493
  br i1 %299, label %300, label %314, !dbg !494

300:                                              ; preds = %294
  %301 = load i8*, i8** %8, align 8, !dbg !495
  %302 = getelementptr inbounds i8, i8* %301, i64 2, !dbg !495
  %303 = load i8, i8* %302, align 1, !dbg !495
  %304 = zext i8 %303 to i32, !dbg !495
  %305 = icmp eq i32 %304, 108, !dbg !496
  br i1 %305, label %306, label %314, !dbg !497

306:                                              ; preds = %300
  %307 = load i8*, i8** %8, align 8, !dbg !498
  %308 = getelementptr inbounds i8, i8* %307, i64 3, !dbg !498
  %309 = load i8, i8* %308, align 1, !dbg !498
  %310 = zext i8 %309 to i32, !dbg !498
  %311 = icmp eq i32 %310, 108, !dbg !499
  br i1 %311, label %312, label %314, !dbg !500

312:                                              ; preds = %306
  %313 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !501
  call void @fio_json_on_null(%struct.json_parser_s* %313), !dbg !502
  br label %315, !dbg !502

314:                                              ; preds = %306, %300, %294
  br label %512, !dbg !503

315:                                              ; preds = %312
  %316 = load i8*, i8** %8, align 8, !dbg !504
  %317 = getelementptr inbounds i8, i8* %316, i64 4, !dbg !504
  store i8* %317, i8** %8, align 8, !dbg !504
  br label %485, !dbg !505

318:                                              ; preds = %52
  %319 = load i8*, i8** %8, align 8, !dbg !506
  %320 = getelementptr inbounds i8, i8* %319, i64 4, !dbg !508
  %321 = load i8*, i8** %9, align 8, !dbg !509
  %322 = icmp uge i8* %320, %321, !dbg !510
  br i1 %322, label %323, label %324, !dbg !511

323:                                              ; preds = %318
  br label %506, !dbg !512

324:                                              ; preds = %318
  %325 = load i8*, i8** %8, align 8, !dbg !513
  %326 = getelementptr inbounds i8, i8* %325, i64 4, !dbg !515
  %327 = load i8*, i8** %9, align 8, !dbg !516
  %328 = icmp ult i8* %326, %327, !dbg !517
  br i1 %328, label %329, label %355, !dbg !518

329:                                              ; preds = %324
  %330 = load i8*, i8** %8, align 8, !dbg !519
  %331 = getelementptr inbounds i8, i8* %330, i64 1, !dbg !519
  %332 = load i8, i8* %331, align 1, !dbg !519
  %333 = zext i8 %332 to i32, !dbg !519
  %334 = icmp eq i32 %333, 97, !dbg !520
  br i1 %334, label %335, label %355, !dbg !521

335:                                              ; preds = %329
  %336 = load i8*, i8** %8, align 8, !dbg !522
  %337 = getelementptr inbounds i8, i8* %336, i64 2, !dbg !522
  %338 = load i8, i8* %337, align 1, !dbg !522
  %339 = zext i8 %338 to i32, !dbg !522
  %340 = icmp eq i32 %339, 108, !dbg !523
  br i1 %340, label %341, label %355, !dbg !524

341:                                              ; preds = %335
  %342 = load i8*, i8** %8, align 8, !dbg !525
  %343 = getelementptr inbounds i8, i8* %342, i64 3, !dbg !525
  %344 = load i8, i8* %343, align 1, !dbg !525
  %345 = zext i8 %344 to i32, !dbg !525
  %346 = icmp eq i32 %345, 115, !dbg !526
  br i1 %346, label %347, label %355, !dbg !527

347:                                              ; preds = %341
  %348 = load i8*, i8** %8, align 8, !dbg !528
  %349 = getelementptr inbounds i8, i8* %348, i64 4, !dbg !528
  %350 = load i8, i8* %349, align 1, !dbg !528
  %351 = zext i8 %350 to i32, !dbg !528
  %352 = icmp eq i32 %351, 101, !dbg !529
  br i1 %352, label %353, label %355, !dbg !530

353:                                              ; preds = %347
  %354 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !531
  call void @fio_json_on_false(%struct.json_parser_s* %354), !dbg !532
  br label %356, !dbg !532

355:                                              ; preds = %347, %341, %335, %329, %324
  br label %512, !dbg !533

356:                                              ; preds = %353
  %357 = load i8*, i8** %8, align 8, !dbg !534
  %358 = getelementptr inbounds i8, i8* %357, i64 5, !dbg !534
  store i8* %358, i8** %8, align 8, !dbg !534
  br label %485, !dbg !535

359:                                              ; preds = %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52, %52
  br label %360, !dbg !535

360:                                              ; preds = %359, %287
  call void @llvm.dbg.label(metadata !536), !dbg !537
  call void @llvm.dbg.declare(metadata i8** %12, metadata !538, metadata !DIExpression()), !dbg !540
  %361 = load i8*, i8** %8, align 8, !dbg !541
  store i8* %361, i8** %12, align 8, !dbg !540
  call void @llvm.dbg.declare(metadata i64* %13, metadata !542, metadata !DIExpression()), !dbg !544
  %362 = call i64 @fio_atol(i8** %12), !dbg !545
  store i64 %362, i64* %13, align 8, !dbg !544
  %363 = load i8*, i8** %12, align 8, !dbg !546
  %364 = load i8*, i8** %9, align 8, !dbg !548
  %365 = icmp ugt i8* %363, %364, !dbg !549
  br i1 %365, label %366, label %367, !dbg !550

366:                                              ; preds = %360
  br label %506, !dbg !551

367:                                              ; preds = %360
  %368 = load i8*, i8** %12, align 8, !dbg !552
  %369 = icmp ne i8* %368, null, !dbg !552
  br i1 %369, label %370, label %378, !dbg !554

370:                                              ; preds = %367
  %371 = load i8*, i8** %12, align 8, !dbg !555
  %372 = load i8, i8* %371, align 1, !dbg !556
  %373 = zext i8 %372 to i64, !dbg !557
  %374 = getelementptr inbounds [255 x i8], [255 x i8]* bitcast (<{ [121 x i8], [134 x i8] }>* @JSON_NUMERAL to [255 x i8]*), i64 0, i64 %373, !dbg !557
  %375 = load i8, i8* %374, align 1, !dbg !557
  %376 = zext i8 %375 to i32, !dbg !557
  %377 = icmp ne i32 %376, 0, !dbg !557
  br i1 %377, label %378, label %401, !dbg !558

378:                                              ; preds = %370, %367
  %379 = load i8*, i8** %8, align 8, !dbg !559
  store i8* %379, i8** %12, align 8, !dbg !561
  call void @llvm.dbg.declare(metadata double* %14, metadata !562, metadata !DIExpression()), !dbg !564
  %380 = call double @fio_atof(i8** %12), !dbg !565
  store double %380, double* %14, align 8, !dbg !564
  %381 = load i8*, i8** %12, align 8, !dbg !566
  %382 = load i8*, i8** %9, align 8, !dbg !568
  %383 = icmp ugt i8* %381, %382, !dbg !569
  br i1 %383, label %384, label %385, !dbg !570

384:                                              ; preds = %378
  br label %506, !dbg !571

385:                                              ; preds = %378
  %386 = load i8*, i8** %12, align 8, !dbg !572
  %387 = icmp ne i8* %386, null, !dbg !572
  br i1 %387, label %388, label %396, !dbg !574

388:                                              ; preds = %385
  %389 = load i8*, i8** %12, align 8, !dbg !575
  %390 = load i8, i8* %389, align 1, !dbg !576
  %391 = zext i8 %390 to i64, !dbg !577
  %392 = getelementptr inbounds [255 x i8], [255 x i8]* bitcast (<{ [121 x i8], [134 x i8] }>* @JSON_NUMERAL to [255 x i8]*), i64 0, i64 %391, !dbg !577
  %393 = load i8, i8* %392, align 1, !dbg !577
  %394 = zext i8 %393 to i32, !dbg !577
  %395 = icmp ne i32 %394, 0, !dbg !577
  br i1 %395, label %396, label %397, !dbg !578

396:                                              ; preds = %388, %385
  br label %512, !dbg !579

397:                                              ; preds = %388
  %398 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !580
  %399 = load double, double* %14, align 8, !dbg !581
  call void @fio_json_on_float(%struct.json_parser_s* %398, double %399), !dbg !582
  %400 = load i8*, i8** %12, align 8, !dbg !583
  store i8* %400, i8** %8, align 8, !dbg !584
  br label %405, !dbg !585

401:                                              ; preds = %370
  %402 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !586
  %403 = load i64, i64* %13, align 8, !dbg !588
  call void @fio_json_on_number(%struct.json_parser_s* %402, i64 %403), !dbg !589
  %404 = load i8*, i8** %12, align 8, !dbg !590
  store i8* %404, i8** %8, align 8, !dbg !591
  br label %405

405:                                              ; preds = %401, %397
  br label %485, !dbg !592

406:                                              ; preds = %52
  call void @llvm.dbg.declare(metadata i8** %15, metadata !593, metadata !DIExpression()), !dbg !595
  %407 = load i8*, i8** %8, align 8, !dbg !596
  %408 = load i8*, i8** %9, align 8, !dbg !597
  %409 = load i8*, i8** %8, align 8, !dbg !598
  %410 = ptrtoint i8* %408 to i64, !dbg !599
  %411 = ptrtoint i8* %409 to i64, !dbg !599
  %412 = sub i64 %410, %411, !dbg !599
  %413 = call i8* @memchr(i8* %407, i32 10, i64 %412) #10, !dbg !600
  store i8* %413, i8** %15, align 8, !dbg !595
  %414 = load i8*, i8** %15, align 8, !dbg !601
  %415 = icmp ne i8* %414, null, !dbg !601
  br i1 %415, label %417, label %416, !dbg !603

416:                                              ; preds = %406
  br label %506, !dbg !604

417:                                              ; preds = %406
  %418 = load i8*, i8** %15, align 8, !dbg !605
  %419 = getelementptr inbounds i8, i8* %418, i64 1, !dbg !606
  store i8* %419, i8** %8, align 8, !dbg !607
  br label %501, !dbg !608

420:                                              ; preds = %52
  %421 = load i8*, i8** %8, align 8, !dbg !609
  %422 = getelementptr inbounds i8, i8* %421, i64 1, !dbg !609
  %423 = load i8, i8* %422, align 1, !dbg !609
  %424 = zext i8 %423 to i32, !dbg !609
  %425 = icmp eq i32 %424, 42, !dbg !611
  br i1 %425, label %426, label %461, !dbg !612

426:                                              ; preds = %420
  %427 = load i8*, i8** %8, align 8, !dbg !613
  %428 = getelementptr inbounds i8, i8* %427, i64 4, !dbg !616
  %429 = load i8*, i8** %9, align 8, !dbg !617
  %430 = icmp ugt i8* %428, %429, !dbg !618
  br i1 %430, label %431, label %432, !dbg !619

431:                                              ; preds = %426
  br label %506, !dbg !620

432:                                              ; preds = %426
  call void @llvm.dbg.declare(metadata i8** %16, metadata !621, metadata !DIExpression()), !dbg !622
  %433 = load i8*, i8** %8, align 8, !dbg !623
  %434 = getelementptr inbounds i8, i8* %433, i64 3, !dbg !624
  store i8* %434, i8** %16, align 8, !dbg !622
  br label %435, !dbg !625

435:                                              ; preds = %452, %432
  %436 = load i8*, i8** %16, align 8, !dbg !626
  %437 = load i8*, i8** %9, align 8, !dbg !628
  %438 = load i8*, i8** %16, align 8, !dbg !629
  %439 = ptrtoint i8* %437 to i64, !dbg !630
  %440 = ptrtoint i8* %438 to i64, !dbg !630
  %441 = sub i64 %439, %440, !dbg !630
  %442 = call i8* @memchr(i8* %436, i32 47, i64 %441) #10, !dbg !631
  store i8* %442, i8** %16, align 8, !dbg !632
  br label %443, !dbg !633

443:                                              ; preds = %435
  %444 = load i8*, i8** %16, align 8, !dbg !634
  %445 = icmp ne i8* %444, null, !dbg !634
  br i1 %445, label %446, label %452, !dbg !635

446:                                              ; preds = %443
  %447 = load i8*, i8** %16, align 8, !dbg !636
  %448 = getelementptr inbounds i8, i8* %447, i64 -1, !dbg !636
  %449 = load i8, i8* %448, align 1, !dbg !636
  %450 = zext i8 %449 to i32, !dbg !636
  %451 = icmp ne i32 %450, 42, !dbg !637
  br label %452

452:                                              ; preds = %446, %443
  %453 = phi i1 [ false, %443 ], [ %451, %446 ], !dbg !638
  br i1 %453, label %435, label %454, !dbg !633, !llvm.loop !639

454:                                              ; preds = %452
  %455 = load i8*, i8** %16, align 8, !dbg !641
  %456 = icmp ne i8* %455, null, !dbg !641
  br i1 %456, label %458, label %457, !dbg !643

457:                                              ; preds = %454
  br label %506, !dbg !644

458:                                              ; preds = %454
  %459 = load i8*, i8** %16, align 8, !dbg !645
  %460 = getelementptr inbounds i8, i8* %459, i64 1, !dbg !646
  store i8* %460, i8** %8, align 8, !dbg !647
  br label %483, !dbg !648

461:                                              ; preds = %420
  %462 = load i8*, i8** %8, align 8, !dbg !649
  %463 = getelementptr inbounds i8, i8* %462, i64 1, !dbg !649
  %464 = load i8, i8* %463, align 1, !dbg !649
  %465 = zext i8 %464 to i32, !dbg !649
  %466 = icmp eq i32 %465, 47, !dbg !651
  br i1 %466, label %467, label %481, !dbg !652

467:                                              ; preds = %461
  call void @llvm.dbg.declare(metadata i8** %17, metadata !653, metadata !DIExpression()), !dbg !655
  %468 = load i8*, i8** %8, align 8, !dbg !656
  %469 = load i8*, i8** %9, align 8, !dbg !657
  %470 = load i8*, i8** %8, align 8, !dbg !658
  %471 = ptrtoint i8* %469 to i64, !dbg !659
  %472 = ptrtoint i8* %470 to i64, !dbg !659
  %473 = sub i64 %471, %472, !dbg !659
  %474 = call i8* @memchr(i8* %468, i32 10, i64 %473) #10, !dbg !660
  store i8* %474, i8** %17, align 8, !dbg !655
  %475 = load i8*, i8** %17, align 8, !dbg !661
  %476 = icmp ne i8* %475, null, !dbg !661
  br i1 %476, label %478, label %477, !dbg !663

477:                                              ; preds = %467
  br label %506, !dbg !664

478:                                              ; preds = %467
  %479 = load i8*, i8** %17, align 8, !dbg !665
  %480 = getelementptr inbounds i8, i8* %479, i64 1, !dbg !666
  store i8* %480, i8** %8, align 8, !dbg !667
  br label %482, !dbg !668

481:                                              ; preds = %461
  br label %512, !dbg !669

482:                                              ; preds = %478
  br label %483

483:                                              ; preds = %482, %458
  br label %501, !dbg !670

484:                                              ; preds = %52
  br label %512, !dbg !671

485:                                              ; preds = %405, %356, %315, %265, %224, %216, %172, %157, %125
  %486 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !672
  %487 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %486, i32 0, i32 1, !dbg !674
  %488 = load i8, i8* %487, align 4, !dbg !674
  %489 = zext i8 %488 to i32, !dbg !672
  %490 = icmp eq i32 %489, 0, !dbg !675
  br i1 %490, label %491, label %493, !dbg !676

491:                                              ; preds = %485
  %492 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !677
  call void @fio_json_on_json(%struct.json_parser_s* %492), !dbg !679
  br label %506, !dbg !680

493:                                              ; preds = %485
  %494 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !681
  %495 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %494, i32 0, i32 0, !dbg !682
  %496 = load i32, i32* %495, align 4, !dbg !682
  %497 = and i32 %496, 1, !dbg !683
  %498 = trunc i32 %497 to i8, !dbg !684
  %499 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !685
  %500 = getelementptr inbounds %struct.json_parser_s, %struct.json_parser_s* %499, i32 0, i32 2, !dbg !686
  store i8 %498, i8* %500, align 1, !dbg !687
  br label %501, !dbg !688

501:                                              ; preds = %493, %483, %417, %99
  %502 = load i8*, i8** %8, align 8, !dbg !689
  %503 = load i8*, i8** %9, align 8, !dbg !690
  %504 = icmp ult i8* %502, %503, !dbg !691
  br i1 %504, label %29, label %505, !dbg !688, !llvm.loop !692

505:                                              ; preds = %501
  br label %506, !dbg !688

506:                                              ; preds = %505, %491, %477, %457, %431, %416, %384, %366, %323, %293, %243, %92, %62, %51
  call void @llvm.dbg.label(metadata !694), !dbg !695
  %507 = load i8*, i8** %8, align 8, !dbg !696
  %508 = ptrtoint i8* %507 to i64, !dbg !697
  %509 = load i8*, i8** %6, align 8, !dbg !698
  %510 = ptrtoint i8* %509 to i64, !dbg !699
  %511 = sub i64 %508, %510, !dbg !700
  store i64 %511, i64* %4, align 8, !dbg !701
  br label %514, !dbg !701

512:                                              ; preds = %484, %481, %396, %355, %314, %264, %223, %215, %202, %191, %164, %156, %142, %131, %98
  call void @llvm.dbg.label(metadata !702), !dbg !703
  %513 = load %struct.json_parser_s*, %struct.json_parser_s** %5, align 8, !dbg !704
  call void @fio_json_on_error(%struct.json_parser_s* %513), !dbg !705
  store i64 0, i64* %4, align 8, !dbg !706
  br label %514, !dbg !706

514:                                              ; preds = %512, %506, %23
  %515 = load i64, i64* %4, align 8, !dbg !707
  ret i64 %515, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_free(i64 %0) #0 !dbg !708 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !711, metadata !DIExpression()), !dbg !712
  %5 = load i64, i64* %2, align 8, !dbg !713
  %6 = icmp ne i64 %5, 0, !dbg !713
  br i1 %6, label %7, label %15, !dbg !713

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !713
  %9 = and i64 %8, 1, !dbg !713
  %10 = icmp eq i64 %9, 0, !dbg !713
  br i1 %10, label %11, label %15, !dbg !713

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !713
  %13 = and i64 %12, 6, !dbg !713
  %14 = icmp ne i64 %13, 6, !dbg !713
  br i1 %14, label %16, label %15, !dbg !715

15:                                               ; preds = %11, %7, %1
  br label %50, !dbg !716

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8, !dbg !717
  %18 = and i64 %17, -8, !dbg !717
  %19 = inttoptr i64 %18 to i8*, !dbg !717
  %20 = bitcast i8* %19 to %struct.fiobj_object_header_s*, !dbg !717
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1, !dbg !717
  store i32 1, i32* %3, align 4, !dbg !717
  %22 = load i32, i32* %3, align 4, !dbg !717
  %23 = atomicrmw sub i32* %21, i32 %22 seq_cst, !dbg !717
  %24 = sub i32 %23, %22, !dbg !717
  store i32 %24, i32* %4, align 4, !dbg !717
  %25 = load i32, i32* %4, align 4, !dbg !717
  %26 = icmp ne i32 %25, 0, !dbg !717
  br i1 %26, label %27, label %28, !dbg !719

27:                                               ; preds = %16
  br label %50, !dbg !720

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8, !dbg !721
  %30 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %29), !dbg !721
  %31 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %30, i32 0, i32 5, !dbg !723
  %32 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %31, align 8, !dbg !723
  %33 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %32, null, !dbg !721
  br i1 %33, label %34, label %44, !dbg !724

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8, !dbg !725
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35), !dbg !725
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 2, !dbg !726
  %38 = load i64 (i64)*, i64 (i64)** %37, align 8, !dbg !726
  %39 = load i64, i64* %2, align 8, !dbg !727
  %40 = call i64 %38(i64 %39), !dbg !725
  %41 = icmp ne i64 %40, 0, !dbg !725
  br i1 %41, label %42, label %44, !dbg !728

42:                                               ; preds = %34
  %43 = load i64, i64* %2, align 8, !dbg !729
  call void @fiobj_free_complex_object(i64 %43), !dbg !730
  br label %50, !dbg !730

44:                                               ; preds = %34, %28
  %45 = load i64, i64* %2, align 8, !dbg !731
  %46 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %45), !dbg !731
  %47 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %46, i32 0, i32 1, !dbg !732
  %48 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %47, align 8, !dbg !732
  %49 = load i64, i64* %2, align 8, !dbg !733
  call void %48(i64 %49, void (i64, i8*)* null, i8* null), !dbg !731
  br label %50

50:                                               ; preds = %15, %27, %44, %42
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_json_stack_get(%struct.fio_json_stack_s* %0, i64 %1) #0 !dbg !735 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_json_stack_s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_json_stack_s** %4, metadata !739, metadata !DIExpression()), !dbg !740
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !741, metadata !DIExpression()), !dbg !742
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !743
  %7 = icmp ne %struct.fio_json_stack_s* %6, null, !dbg !743
  br i1 %7, label %10, label %8, !dbg !745

8:                                                ; preds = %2
  %9 = load i64, i64* @fio_json_stack_s___const_invalid_object, align 8, !dbg !746
  store i64 %9, i64* %3, align 8, !dbg !747
  br label %36, !dbg !747

10:                                               ; preds = %2
  %11 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !748
  %12 = load i64, i64* %5, align 8, !dbg !749
  %13 = call i64 @fio_json_stack___rel2absolute(%struct.fio_json_stack_s* %11, i64 %12), !dbg !750
  store i64 %13, i64* %5, align 8, !dbg !751
  %14 = load i64, i64* %5, align 8, !dbg !752
  %15 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !754
  %16 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %15, i32 0, i32 1, !dbg !755
  %17 = load i64, i64* %16, align 8, !dbg !755
  %18 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !756
  %19 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %18, i32 0, i32 0, !dbg !757
  %20 = load i64, i64* %19, align 8, !dbg !757
  %21 = sub i64 %17, %20, !dbg !758
  %22 = icmp uge i64 %14, %21, !dbg !759
  br i1 %22, label %23, label %25, !dbg !760

23:                                               ; preds = %10
  %24 = load i64, i64* @fio_json_stack_s___const_invalid_object, align 8, !dbg !761
  store i64 %24, i64* %3, align 8, !dbg !762
  br label %36, !dbg !762

25:                                               ; preds = %10
  %26 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !763
  %27 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %26, i32 0, i32 3, !dbg !764
  %28 = load i64*, i64** %27, align 8, !dbg !764
  %29 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !765
  %30 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %29, i32 0, i32 0, !dbg !766
  %31 = load i64, i64* %30, align 8, !dbg !766
  %32 = getelementptr inbounds i64, i64* %28, i64 %31, !dbg !767
  %33 = load i64, i64* %5, align 8, !dbg !768
  %34 = getelementptr inbounds i64, i64* %32, i64 %33, !dbg !769
  %35 = load i64, i64* %34, align 8, !dbg !769
  store i64 %35, i64* %3, align 8, !dbg !770
  br label %36, !dbg !770

36:                                               ; preds = %25, %23, %8
  %37 = load i64, i64* %3, align 8, !dbg !771
  ret i64 %37, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_stack_free(%struct.fio_json_stack_s* %0) #0 !dbg !772 {
  %2 = alloca %struct.fio_json_stack_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_json_stack_s, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_json_stack_s** %2, metadata !775, metadata !DIExpression()), !dbg !776
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8, !dbg !777
  %7 = icmp ne %struct.fio_json_stack_s* %6, null, !dbg !777
  br i1 %7, label %8, label %33, !dbg !779

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %3, metadata !780, metadata !DIExpression()), !dbg !783
  %9 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8, !dbg !784
  %10 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %9, i32 0, i32 1, !dbg !785
  %11 = load i64, i64* %10, align 8, !dbg !785
  store i64 %11, i64* %3, align 8, !dbg !783
  call void @llvm.dbg.declare(metadata i64* %4, metadata !786, metadata !DIExpression()), !dbg !788
  %12 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8, !dbg !789
  %13 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %12, i32 0, i32 0, !dbg !790
  %14 = load i64, i64* %13, align 8, !dbg !790
  store i64 %14, i64* %4, align 8, !dbg !788
  br label %15, !dbg !791

15:                                               ; preds = %20, %8
  %16 = load i64, i64* %4, align 8, !dbg !792
  %17 = load i64, i64* %3, align 8, !dbg !794
  %18 = icmp ult i64 %16, %17, !dbg !795
  br i1 %18, label %19, label %23, !dbg !796

19:                                               ; preds = %15
  br label %20, !dbg !797

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8, !dbg !799
  %22 = add i64 %21, 1, !dbg !799
  store i64 %22, i64* %4, align 8, !dbg !799
  br label %15, !dbg !800, !llvm.loop !801

23:                                               ; preds = %15
  %24 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8, !dbg !803
  %25 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %24, i32 0, i32 3, !dbg !803
  %26 = load i64*, i64** %25, align 8, !dbg !803
  %27 = bitcast i64* %26 to i8*, !dbg !803
  call void @fio_free(i8* %27), !dbg !803
  %28 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8, !dbg !804
  %29 = bitcast %struct.fio_json_stack_s* %5 to i8*, !dbg !805
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false), !dbg !805
  %30 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %5, i32 0, i32 2, !dbg !806
  store i64 0, i64* %30, align 8, !dbg !806
  %31 = bitcast %struct.fio_json_stack_s* %28 to i8*, !dbg !805
  %32 = bitcast %struct.fio_json_stack_s* %5 to i8*, !dbg !805
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false), !dbg !805
  br label %33, !dbg !807

33:                                               ; preds = %23, %1
  ret void, !dbg !808
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_update_json(i64 %0, i8* %1, i64 %2) #0 !dbg !809 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fiobj_json_parser_s, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !812, metadata !DIExpression()), !dbg !813
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !814, metadata !DIExpression()), !dbg !815
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !816, metadata !DIExpression()), !dbg !817
  %10 = load i64, i64* %5, align 8, !dbg !818
  %11 = icmp ne i64 %10, 0, !dbg !818
  br i1 %11, label %13, label %12, !dbg !820

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8, !dbg !821
  br label %34, !dbg !821

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.fiobj_json_parser_s* %8, metadata !822, metadata !DIExpression()), !dbg !823
  %14 = bitcast %struct.fiobj_json_parser_s* %8 to i8*, !dbg !823
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 72, i1 false), !dbg !823
  %15 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 2, !dbg !824
  store i64 0, i64* %15, align 8, !dbg !824
  %16 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 3, !dbg !824
  %17 = load i64, i64* %5, align 8, !dbg !825
  store i64 %17, i64* %16, align 8, !dbg !824
  call void @llvm.dbg.declare(metadata i64* %9, metadata !826, metadata !DIExpression()), !dbg !827
  %18 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 0, !dbg !828
  %19 = load i8*, i8** %6, align 8, !dbg !829
  %20 = load i64, i64* %7, align 8, !dbg !830
  %21 = call i64 @fio_json_parse(%struct.json_parser_s* %18, i8* %19, i64 %20), !dbg !831
  store i64 %21, i64* %9, align 8, !dbg !827
  %22 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 4, !dbg !832
  call void @fio_json_stack_free(%struct.fio_json_stack_s* %22), !dbg !833
  %23 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 1, !dbg !834
  %24 = load i64, i64* %23, align 8, !dbg !834
  call void @fiobj_free(i64 %24), !dbg !835
  %25 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 2, !dbg !836
  %26 = load i64, i64* %25, align 8, !dbg !836
  %27 = load i64, i64* %5, align 8, !dbg !838
  %28 = icmp ne i64 %26, %27, !dbg !839
  br i1 %28, label %29, label %32, !dbg !840

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 2, !dbg !841
  %31 = load i64, i64* %30, align 8, !dbg !841
  call void @fiobj_free(i64 %31), !dbg !842
  br label %32, !dbg !842

32:                                               ; preds = %29, %13
  %33 = load i64, i64* %9, align 8, !dbg !843
  store i64 %33, i64* %4, align 8, !dbg !844
  br label %34, !dbg !844

34:                                               ; preds = %32, %12
  %35 = load i64, i64* %4, align 8, !dbg !845
  ret i64 %35, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_obj2json2(i64 %0, i64 %1, i8 zeroext %2) #0 !dbg !846 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.fio_json_stack_s, align 8
  %9 = alloca %struct.obj2json_data_s, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !849, metadata !DIExpression()), !dbg !850
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !851, metadata !DIExpression()), !dbg !852
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !853, metadata !DIExpression()), !dbg !854
  %10 = load i64, i64* %5, align 8, !dbg !855
  %11 = icmp ne i64 %10, 0, !dbg !855
  br i1 %11, label %12, label %17, !dbg !855

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8, !dbg !855
  %14 = call i64 @fiobj_type_is(i64 %13, i8 zeroext 40), !dbg !855
  %15 = icmp ne i64 %14, 0, !dbg !855
  br i1 %15, label %16, label %17, !dbg !858

16:                                               ; preds = %12
  br label %18, !dbg !858

17:                                               ; preds = %12, %3
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 419, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.fiobj_obj2json2, i64 0, i64 0)) #11, !dbg !855
  unreachable, !dbg !855

18:                                               ; preds = %16
  %19 = load i64, i64* %6, align 8, !dbg !859
  %20 = icmp ne i64 %19, 0, !dbg !859
  br i1 %20, label %24, label %21, !dbg !861

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8, !dbg !862
  %23 = call i64 @fiobj_str_write(i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4), !dbg !864
  store i64 0, i64* %4, align 8, !dbg !865
  br label %62, !dbg !865

24:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.fio_json_stack_s* %8, metadata !866, metadata !DIExpression()), !dbg !867
  %25 = bitcast %struct.fio_json_stack_s* %8 to i8*, !dbg !867
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false), !dbg !867
  call void @llvm.dbg.declare(metadata %struct.obj2json_data_s* %9, metadata !868, metadata !DIExpression()), !dbg !877
  %26 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 0, !dbg !878
  %27 = load i64, i64* %5, align 8, !dbg !879
  store i64 %27, i64* %26, align 8, !dbg !878
  %28 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 1, !dbg !878
  store i64 0, i64* %28, align 8, !dbg !878
  %29 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 2, !dbg !878
  store %struct.fio_json_stack_s* %8, %struct.fio_json_stack_s** %29, align 8, !dbg !878
  %30 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 3, !dbg !878
  store i64 1, i64* %30, align 8, !dbg !878
  %31 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %9, i32 0, i32 4, !dbg !878
  %32 = load i8, i8* %7, align 1, !dbg !880
  store i8 %32, i8* %31, align 8, !dbg !878
  %33 = load i64, i64* %6, align 8, !dbg !881
  %34 = icmp ne i64 %33, 0, !dbg !881
  br i1 %34, label %35, label %52, !dbg !883

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8, !dbg !884
  %37 = icmp ne i64 %36, 0, !dbg !884
  br i1 %37, label %38, label %52, !dbg !884

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8, !dbg !884
  %40 = and i64 %39, 1, !dbg !884
  %41 = icmp eq i64 %40, 0, !dbg !884
  br i1 %41, label %42, label %52, !dbg !884

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8, !dbg !884
  %44 = and i64 %43, 6, !dbg !884
  %45 = icmp ne i64 %44, 6, !dbg !884
  br i1 %45, label %46, label %52, !dbg !885

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8, !dbg !886
  %48 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %47), !dbg !886
  %49 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %48, i32 0, i32 5, !dbg !887
  %50 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %49, align 8, !dbg !887
  %51 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %50, null, !dbg !886
  br i1 %51, label %57, label %52, !dbg !888

52:                                               ; preds = %46, %42, %38, %35, %24
  %53 = load i64, i64* %6, align 8, !dbg !889
  %54 = bitcast %struct.obj2json_data_s* %9 to i8*, !dbg !891
  %55 = call i32 @fiobj_obj2json_task(i64 %53, i8* %54), !dbg !892
  %56 = load i64, i64* %5, align 8, !dbg !893
  store i64 %56, i64* %4, align 8, !dbg !894
  br label %62, !dbg !894

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8, !dbg !895
  %59 = bitcast %struct.obj2json_data_s* %9 to i8*, !dbg !896
  %60 = call i64 @fiobj_each2(i64 %58, i32 (i64, i8*)* @fiobj_obj2json_task, i8* %59), !dbg !897
  call void @fio_json_stack_free(%struct.fio_json_stack_s* %8), !dbg !898
  %61 = load i64, i64* %5, align 8, !dbg !899
  store i64 %61, i64* %4, align 8, !dbg !900
  br label %62, !dbg !900

62:                                               ; preds = %57, %52, %21
  %63 = load i64, i64* %4, align 8, !dbg !901
  ret i64 %63, !dbg !901
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64 %0, i8 zeroext %1) #0 !dbg !902 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !905, metadata !DIExpression()), !dbg !906
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !907, metadata !DIExpression()), !dbg !908
  %6 = load i8, i8* %5, align 1, !dbg !909
  %7 = zext i8 %6 to i32, !dbg !909
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
  ], !dbg !910

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !911
  %10 = and i64 %9, 1, !dbg !913
  %11 = icmp ne i64 %10, 0, !dbg !913
  br i1 %11, label %19, label %12, !dbg !914

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8, !dbg !915
  %14 = inttoptr i64 %13 to i8*, !dbg !916
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !917
  %16 = load i8, i8* %15, align 1, !dbg !917
  %17 = zext i8 %16 to i32, !dbg !917
  %18 = icmp eq i32 %17, 1, !dbg !918
  br label %19, !dbg !914

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32, !dbg !914
  %22 = sext i32 %21 to i64, !dbg !919
  store i64 %22, i64* %3, align 8, !dbg !920
  br label %121, !dbg !920

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8, !dbg !921
  %25 = icmp ne i64 %24, 0, !dbg !921
  br i1 %25, label %26, label %30, !dbg !922

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !923
  %28 = call i64 @fiobj_null(), !dbg !924
  %29 = icmp eq i64 %27, %28, !dbg !925
  br label %30, !dbg !922

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !922
  %33 = sext i32 %32 to i64, !dbg !926
  store i64 %33, i64* %3, align 8, !dbg !927
  br label %121, !dbg !927

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8, !dbg !928
  %36 = call i64 @fiobj_true(), !dbg !929
  %37 = icmp eq i64 %35, %36, !dbg !930
  %38 = zext i1 %37 to i32, !dbg !930
  %39 = sext i32 %38 to i64, !dbg !928
  store i64 %39, i64* %3, align 8, !dbg !931
  br label %121, !dbg !931

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8, !dbg !932
  %42 = call i64 @fiobj_false(), !dbg !933
  %43 = icmp eq i64 %41, %42, !dbg !934
  %44 = zext i1 %43 to i32, !dbg !934
  %45 = sext i32 %44 to i64, !dbg !932
  store i64 %45, i64* %3, align 8, !dbg !935
  br label %121, !dbg !935

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8, !dbg !936
  %48 = and i64 %47, 1, !dbg !937
  %49 = icmp eq i64 %48, 0, !dbg !938
  br i1 %49, label %50, label %54, !dbg !939

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8, !dbg !940
  %52 = and i64 %51, 6, !dbg !941
  %53 = icmp eq i64 %52, 2, !dbg !942
  br i1 %53, label %55, label %54, !dbg !943

54:                                               ; preds = %50, %46
  br label %55, !dbg !943

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32, !dbg !943
  %58 = sext i32 %57 to i64, !dbg !944
  store i64 %58, i64* %3, align 8, !dbg !945
  br label %121, !dbg !945

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8, !dbg !946
  %61 = and i64 %60, 1, !dbg !949
  %62 = icmp eq i64 %61, 0, !dbg !950
  br i1 %62, label %63, label %67, !dbg !951

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8, !dbg !952
  %65 = and i64 %64, 6, !dbg !953
  %66 = icmp eq i64 %65, 4, !dbg !954
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ], !dbg !955
  %69 = zext i1 %68 to i32, !dbg !951
  %70 = sext i32 %69 to i64, !dbg !956
  store i64 %70, i64* %3, align 8, !dbg !957
  br label %121, !dbg !957

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8, !dbg !958
  %73 = icmp ne i64 %72, 0, !dbg !958
  br i1 %73, label %74, label %92, !dbg !958

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8, !dbg !958
  %76 = and i64 %75, 1, !dbg !958
  %77 = icmp eq i64 %76, 0, !dbg !958
  br i1 %77, label %78, label %92, !dbg !958

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8, !dbg !958
  %80 = and i64 %79, 6, !dbg !958
  %81 = icmp ne i64 %80, 6, !dbg !958
  br i1 %81, label %82, label %92, !dbg !959

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8, !dbg !960
  %84 = and i64 %83, -8, !dbg !960
  %85 = inttoptr i64 %84 to i8*, !dbg !960
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !961
  %87 = load i8, i8* %86, align 1, !dbg !961
  %88 = zext i8 %87 to i32, !dbg !961
  %89 = load i8, i8* %5, align 1, !dbg !962
  %90 = zext i8 %89 to i32, !dbg !962
  %91 = icmp eq i32 %88, %90, !dbg !963
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ], !dbg !964
  %94 = zext i1 %93 to i32, !dbg !959
  %95 = sext i32 %94 to i64, !dbg !958
  store i64 %95, i64* %3, align 8, !dbg !965
  br label %121, !dbg !965

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8, !dbg !966
  %98 = icmp ne i64 %97, 0, !dbg !966
  br i1 %98, label %99, label %117, !dbg !966

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8, !dbg !966
  %101 = and i64 %100, 1, !dbg !966
  %102 = icmp eq i64 %101, 0, !dbg !966
  br i1 %102, label %103, label %117, !dbg !966

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !966
  %105 = and i64 %104, 6, !dbg !966
  %106 = icmp ne i64 %105, 6, !dbg !966
  br i1 %106, label %107, label %117, !dbg !967

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8, !dbg !968
  %109 = and i64 %108, -8, !dbg !968
  %110 = inttoptr i64 %109 to i8*, !dbg !968
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !969
  %112 = load i8, i8* %111, align 1, !dbg !969
  %113 = zext i8 %112 to i32, !dbg !969
  %114 = load i8, i8* %5, align 1, !dbg !970
  %115 = zext i8 %114 to i32, !dbg !970
  %116 = icmp eq i32 %113, %115, !dbg !971
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ], !dbg !972
  %119 = zext i1 %118 to i32, !dbg !967
  %120 = sext i32 %119 to i64, !dbg !966
  store i64 %120, i64* %3, align 8, !dbg !973
  br label %121, !dbg !973

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8, !dbg !974
  ret i64 %122, !dbg !974
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !975 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1036, metadata !DIExpression()), !dbg !1037
  %4 = load i64, i64* %3, align 8, !dbg !1038
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !1038
  %6 = zext i8 %5 to i32, !dbg !1038
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
  ], !dbg !1039

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1040
  br label %15, !dbg !1040

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1042
  br label %15, !dbg !1042

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1043
  br label %15, !dbg !1043

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1044
  br label %15, !dbg !1044

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1045
  br label %15, !dbg !1045

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1046
  br label %15, !dbg !1046

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1047
  br label %15, !dbg !1047

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1048
  br label %15, !dbg !1048

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1049
  ret %struct.fiobj_object_vtable_s* %16, !dbg !1049
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_obj2json_task(i64 %0, i8* %1) #0 !dbg !1050 {
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
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1051, metadata !DIExpression()), !dbg !1052
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1053, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.declare(metadata %struct.obj2json_data_s** %5, metadata !1055, metadata !DIExpression()), !dbg !1057
  %12 = load i8*, i8** %4, align 8, !dbg !1058
  %13 = bitcast i8* %12 to %struct.obj2json_data_s*, !dbg !1058
  store %struct.obj2json_data_s* %13, %struct.obj2json_data_s** %5, align 8, !dbg !1057
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1059, metadata !DIExpression()), !dbg !1060
  store i8 1, i8* %6, align 1, !dbg !1060
  %14 = call i64 @fiobj_hash_key_in_loop(), !dbg !1061
  %15 = icmp ne i64 %14, 0, !dbg !1061
  br i1 %15, label %16, label %25, !dbg !1063

16:                                               ; preds = %2
  %17 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1064
  %18 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %17, i32 0, i32 0, !dbg !1066
  %19 = load i64, i64* %18, align 8, !dbg !1066
  %20 = call i64 @fiobj_hash_key_in_loop(), !dbg !1067
  call void @write_safe_str(i64 %19, i64 %20), !dbg !1068
  %21 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1069
  %22 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %21, i32 0, i32 0, !dbg !1070
  %23 = load i64, i64* %22, align 8, !dbg !1070
  %24 = call i64 @fiobj_str_write(i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 1), !dbg !1071
  br label %25, !dbg !1072

25:                                               ; preds = %16, %2
  %26 = load i64, i64* %3, align 8, !dbg !1073
  %27 = call zeroext i8 @fiobj_type(i64 %26), !dbg !1073
  %28 = zext i8 %27 to i32, !dbg !1073
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
  ], !dbg !1074

29:                                               ; preds = %25, %25, %25, %25, %25
  %30 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1075
  %31 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %30, i32 0, i32 0, !dbg !1075
  %32 = load i64, i64* %31, align 8, !dbg !1075
  %33 = load i64, i64* %3, align 8, !dbg !1075
  %34 = call i64 @fiobj_str_concat(i64 %32, i64 %33), !dbg !1075
  %35 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1077
  %36 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %35, i32 0, i32 3, !dbg !1078
  %37 = load i64, i64* %36, align 8, !dbg !1079
  %38 = add i64 %37, -1, !dbg !1079
  store i64 %38, i64* %36, align 8, !dbg !1079
  br label %108, !dbg !1080

39:                                               ; preds = %25, %25, %25
  %40 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1081
  %41 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %40, i32 0, i32 0, !dbg !1082
  %42 = load i64, i64* %41, align 8, !dbg !1082
  %43 = load i64, i64* %3, align 8, !dbg !1083
  call void @write_safe_str(i64 %42, i64 %43), !dbg !1084
  %44 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1085
  %45 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %44, i32 0, i32 3, !dbg !1086
  %46 = load i64, i64* %45, align 8, !dbg !1087
  %47 = add i64 %46, -1, !dbg !1087
  store i64 %47, i64* %45, align 8, !dbg !1087
  br label %108, !dbg !1088

48:                                               ; preds = %25
  %49 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1089
  %50 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %49, i32 0, i32 3, !dbg !1090
  %51 = load i64, i64* %50, align 8, !dbg !1091
  %52 = add i64 %51, -1, !dbg !1091
  store i64 %52, i64* %50, align 8, !dbg !1091
  %53 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1092
  %54 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %53, i32 0, i32 2, !dbg !1093
  %55 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %54, align 8, !dbg !1093
  %56 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1094
  %57 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %56, i32 0, i32 1, !dbg !1095
  %58 = load i64, i64* %57, align 8, !dbg !1095
  %59 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %55, i64 %58), !dbg !1096
  %60 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1097
  %61 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %60, i32 0, i32 2, !dbg !1098
  %62 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %61, align 8, !dbg !1098
  %63 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1099
  %64 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %63, i32 0, i32 3, !dbg !1100
  %65 = load i64, i64* %64, align 8, !dbg !1100
  %66 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %62, i64 %65), !dbg !1101
  %67 = load i64, i64* %3, align 8, !dbg !1102
  %68 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1103
  %69 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %68, i32 0, i32 1, !dbg !1104
  store i64 %67, i64* %69, align 8, !dbg !1105
  %70 = load i64, i64* %3, align 8, !dbg !1106
  %71 = call i64 @fiobj_ary_count(i64 %70), !dbg !1107
  %72 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1108
  %73 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %72, i32 0, i32 3, !dbg !1109
  store i64 %71, i64* %73, align 8, !dbg !1110
  %74 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1111
  %75 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %74, i32 0, i32 0, !dbg !1112
  %76 = load i64, i64* %75, align 8, !dbg !1112
  %77 = call i64 @fiobj_str_write(i64 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1), !dbg !1113
  store i8 0, i8* %6, align 1, !dbg !1114
  br label %108, !dbg !1115

78:                                               ; preds = %25
  %79 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1116
  %80 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %79, i32 0, i32 3, !dbg !1117
  %81 = load i64, i64* %80, align 8, !dbg !1118
  %82 = add i64 %81, -1, !dbg !1118
  store i64 %82, i64* %80, align 8, !dbg !1118
  %83 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1119
  %84 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %83, i32 0, i32 2, !dbg !1120
  %85 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %84, align 8, !dbg !1120
  %86 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1121
  %87 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %86, i32 0, i32 1, !dbg !1122
  %88 = load i64, i64* %87, align 8, !dbg !1122
  %89 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %85, i64 %88), !dbg !1123
  %90 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1124
  %91 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %90, i32 0, i32 2, !dbg !1125
  %92 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %91, align 8, !dbg !1125
  %93 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1126
  %94 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %93, i32 0, i32 3, !dbg !1127
  %95 = load i64, i64* %94, align 8, !dbg !1127
  %96 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %92, i64 %95), !dbg !1128
  %97 = load i64, i64* %3, align 8, !dbg !1129
  %98 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1130
  %99 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %98, i32 0, i32 1, !dbg !1131
  store i64 %97, i64* %99, align 8, !dbg !1132
  %100 = load i64, i64* %3, align 8, !dbg !1133
  %101 = call i64 @fiobj_hash_count(i64 %100), !dbg !1134
  %102 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1135
  %103 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %102, i32 0, i32 3, !dbg !1136
  store i64 %101, i64* %103, align 8, !dbg !1137
  %104 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1138
  %105 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %104, i32 0, i32 0, !dbg !1139
  %106 = load i64, i64* %105, align 8, !dbg !1139
  %107 = call i64 @fiobj_str_write(i64 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1), !dbg !1140
  store i8 0, i8* %6, align 1, !dbg !1141
  br label %108, !dbg !1142

108:                                              ; preds = %25, %78, %48, %39, %29
  %109 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1143
  %110 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %109, i32 0, i32 4, !dbg !1145
  %111 = load i8, i8* %110, align 8, !dbg !1145
  %112 = icmp ne i8 %111, 0, !dbg !1143
  br i1 %112, label %113, label %232, !dbg !1146

113:                                              ; preds = %108
  %114 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1147
  %115 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %114, i32 0, i32 0, !dbg !1149
  %116 = load i64, i64* %115, align 8, !dbg !1149
  %117 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1150
  %118 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %117, i32 0, i32 0, !dbg !1151
  %119 = load i64, i64* %118, align 8, !dbg !1151
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %119), !dbg !1152
  %120 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1153
  %121 = load i64, i64* %120, align 8, !dbg !1153
  %122 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1154
  %123 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %122, i32 0, i32 2, !dbg !1155
  %124 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %123, align 8, !dbg !1155
  %125 = call i64 @fio_json_stack_count(%struct.fio_json_stack_s* %124), !dbg !1156
  %126 = mul i64 %125, 5, !dbg !1157
  %127 = add i64 %121, %126, !dbg !1158
  %128 = call i64 @fiobj_str_capa_assert(i64 %116, i64 %127), !dbg !1159
  br label %129, !dbg !1160

129:                                              ; preds = %157, %113
  %130 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1161
  %131 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %130, i32 0, i32 3, !dbg !1162
  %132 = load i64, i64* %131, align 8, !dbg !1162
  %133 = icmp ne i64 %132, 0, !dbg !1161
  br i1 %133, label %139, label %134, !dbg !1163

134:                                              ; preds = %129
  %135 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1164
  %136 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %135, i32 0, i32 1, !dbg !1165
  %137 = load i64, i64* %136, align 8, !dbg !1165
  %138 = icmp ne i64 %137, 0, !dbg !1163
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ], !dbg !1166
  br i1 %140, label %141, label %174, !dbg !1160

141:                                              ; preds = %139
  %142 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1167
  %143 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %142, i32 0, i32 1, !dbg !1167
  %144 = load i64, i64* %143, align 8, !dbg !1167
  %145 = call i64 @fiobj_type_is(i64 %144, i8 zeroext 42), !dbg !1167
  %146 = icmp ne i64 %145, 0, !dbg !1167
  br i1 %146, label %147, label %152, !dbg !1170

147:                                              ; preds = %141
  %148 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1171
  %149 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %148, i32 0, i32 0, !dbg !1173
  %150 = load i64, i64* %149, align 8, !dbg !1173
  %151 = call i64 @fiobj_str_write(i64 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64 1), !dbg !1174
  br label %157, !dbg !1175

152:                                              ; preds = %141
  %153 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1176
  %154 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %153, i32 0, i32 0, !dbg !1178
  %155 = load i64, i64* %154, align 8, !dbg !1178
  %156 = call i64 @fiobj_str_write(i64 %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1), !dbg !1179
  br label %157

157:                                              ; preds = %152, %147
  store i8 1, i8* %6, align 1, !dbg !1180
  %158 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1181
  %159 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %158, i32 0, i32 3, !dbg !1182
  store i64 0, i64* %159, align 8, !dbg !1183
  %160 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1184
  %161 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %160, i32 0, i32 2, !dbg !1185
  %162 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %161, align 8, !dbg !1185
  %163 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1186
  %164 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %163, i32 0, i32 3, !dbg !1187
  %165 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %162, i64* %164), !dbg !1188
  %166 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1189
  %167 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %166, i32 0, i32 1, !dbg !1190
  store i64 0, i64* %167, align 8, !dbg !1191
  %168 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1192
  %169 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %168, i32 0, i32 2, !dbg !1193
  %170 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %169, align 8, !dbg !1193
  %171 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1194
  %172 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %171, i32 0, i32 1, !dbg !1195
  %173 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %170, i64* %172), !dbg !1196
  br label %129, !dbg !1160, !llvm.loop !1197

174:                                              ; preds = %139
  %175 = load i8, i8* %6, align 1, !dbg !1199
  %176 = zext i8 %175 to i32, !dbg !1199
  %177 = icmp ne i32 %176, 0, !dbg !1199
  br i1 %177, label %178, label %231, !dbg !1201

178:                                              ; preds = %174
  %179 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1202
  %180 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %179, i32 0, i32 1, !dbg !1203
  %181 = load i64, i64* %180, align 8, !dbg !1203
  %182 = icmp ne i64 %181, 0, !dbg !1202
  br i1 %182, label %183, label %231, !dbg !1204

183:                                              ; preds = %178
  %184 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1205
  %185 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %184, i32 0, i32 0, !dbg !1207
  %186 = load i64, i64* %185, align 8, !dbg !1207
  %187 = call i64 @fiobj_str_write(i64 %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i64 2), !dbg !1208
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1209, metadata !DIExpression()), !dbg !1210
  %188 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1211
  %189 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %188, i32 0, i32 2, !dbg !1212
  %190 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %189, align 8, !dbg !1212
  %191 = call i64 @fio_json_stack_count(%struct.fio_json_stack_s* %190), !dbg !1213
  %192 = sub i64 %191, 1, !dbg !1214
  store i64 %192, i64* %8, align 8, !dbg !1210
  %193 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1215
  %194 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %193, i32 0, i32 0, !dbg !1216
  %195 = load i64, i64* %194, align 8, !dbg !1216
  %196 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1217
  %197 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %196, i32 0, i32 0, !dbg !1218
  %198 = load i64, i64* %197, align 8, !dbg !1218
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %9, i64 %198), !dbg !1219
  %199 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1, !dbg !1220
  %200 = load i64, i64* %199, align 8, !dbg !1220
  %201 = load i64, i64* %8, align 8, !dbg !1221
  %202 = mul i64 %201, 2, !dbg !1222
  %203 = add i64 %200, %202, !dbg !1223
  %204 = call i64 @fiobj_str_capa_assert(i64 %195, i64 %203), !dbg !1224
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %10, metadata !1225, metadata !DIExpression()), !dbg !1226
  %205 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1227
  %206 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %205, i32 0, i32 0, !dbg !1228
  %207 = load i64, i64* %206, align 8, !dbg !1228
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %207), !dbg !1229
  br label %208, !dbg !1230

208:                                              ; preds = %212, %183
  %209 = load i64, i64* %8, align 8, !dbg !1231
  %210 = add i64 %209, -1, !dbg !1231
  store i64 %210, i64* %8, align 8, !dbg !1231
  %211 = icmp ne i64 %209, 0, !dbg !1230
  br i1 %211, label %212, label %225, !dbg !1230

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2, !dbg !1232
  %214 = load i8*, i8** %213, align 8, !dbg !1232
  %215 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1, !dbg !1234
  %216 = load i64, i64* %215, align 8, !dbg !1235
  %217 = add i64 %216, 1, !dbg !1235
  store i64 %217, i64* %215, align 8, !dbg !1235
  %218 = getelementptr inbounds i8, i8* %214, i64 %216, !dbg !1236
  store i8 32, i8* %218, align 1, !dbg !1237
  %219 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2, !dbg !1238
  %220 = load i8*, i8** %219, align 8, !dbg !1238
  %221 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1, !dbg !1239
  %222 = load i64, i64* %221, align 8, !dbg !1240
  %223 = add i64 %222, 1, !dbg !1240
  store i64 %223, i64* %221, align 8, !dbg !1240
  %224 = getelementptr inbounds i8, i8* %220, i64 %222, !dbg !1241
  store i8 32, i8* %224, align 1, !dbg !1242
  br label %208, !dbg !1230, !llvm.loop !1243

225:                                              ; preds = %208
  %226 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1245
  %227 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %226, i32 0, i32 0, !dbg !1246
  %228 = load i64, i64* %227, align 8, !dbg !1246
  %229 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1, !dbg !1247
  %230 = load i64, i64* %229, align 8, !dbg !1247
  call void @fiobj_str_resize(i64 %228, i64 %230), !dbg !1248
  br label %231, !dbg !1249

231:                                              ; preds = %225, %178, %174
  br label %308, !dbg !1250

232:                                              ; preds = %108
  %233 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1251
  %234 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %233, i32 0, i32 0, !dbg !1253
  %235 = load i64, i64* %234, align 8, !dbg !1253
  %236 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1254
  %237 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %236, i32 0, i32 0, !dbg !1255
  %238 = load i64, i64* %237, align 8, !dbg !1255
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %238), !dbg !1256
  %239 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1, !dbg !1257
  %240 = load i64, i64* %239, align 8, !dbg !1257
  %241 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1258
  %242 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %241, i32 0, i32 2, !dbg !1259
  %243 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %242, align 8, !dbg !1259
  %244 = call i64 @fio_json_stack_count(%struct.fio_json_stack_s* %243), !dbg !1260
  %245 = shl i64 %244, 1, !dbg !1261
  %246 = add i64 %240, %245, !dbg !1262
  %247 = call i64 @fiobj_str_capa_assert(i64 %235, i64 %246), !dbg !1263
  br label %248, !dbg !1264

248:                                              ; preds = %276, %232
  %249 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1265
  %250 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %249, i32 0, i32 3, !dbg !1266
  %251 = load i64, i64* %250, align 8, !dbg !1266
  %252 = icmp ne i64 %251, 0, !dbg !1265
  br i1 %252, label %258, label %253, !dbg !1267

253:                                              ; preds = %248
  %254 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1268
  %255 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %254, i32 0, i32 1, !dbg !1269
  %256 = load i64, i64* %255, align 8, !dbg !1269
  %257 = icmp ne i64 %256, 0, !dbg !1267
  br label %258

258:                                              ; preds = %253, %248
  %259 = phi i1 [ false, %248 ], [ %257, %253 ], !dbg !1270
  br i1 %259, label %260, label %293, !dbg !1264

260:                                              ; preds = %258
  %261 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1271
  %262 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %261, i32 0, i32 1, !dbg !1271
  %263 = load i64, i64* %262, align 8, !dbg !1271
  %264 = call i64 @fiobj_type_is(i64 %263, i8 zeroext 42), !dbg !1271
  %265 = icmp ne i64 %264, 0, !dbg !1271
  br i1 %265, label %266, label %271, !dbg !1274

266:                                              ; preds = %260
  %267 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1275
  %268 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %267, i32 0, i32 0, !dbg !1277
  %269 = load i64, i64* %268, align 8, !dbg !1277
  %270 = call i64 @fiobj_str_write(i64 %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64 1), !dbg !1278
  br label %276, !dbg !1279

271:                                              ; preds = %260
  %272 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1280
  %273 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %272, i32 0, i32 0, !dbg !1282
  %274 = load i64, i64* %273, align 8, !dbg !1282
  %275 = call i64 @fiobj_str_write(i64 %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1), !dbg !1283
  br label %276

276:                                              ; preds = %271, %266
  store i8 1, i8* %6, align 1, !dbg !1284
  %277 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1285
  %278 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %277, i32 0, i32 3, !dbg !1286
  store i64 0, i64* %278, align 8, !dbg !1287
  %279 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1288
  %280 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %279, i32 0, i32 1, !dbg !1289
  store i64 0, i64* %280, align 8, !dbg !1290
  %281 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1291
  %282 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %281, i32 0, i32 2, !dbg !1292
  %283 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %282, align 8, !dbg !1292
  %284 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1293
  %285 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %284, i32 0, i32 3, !dbg !1294
  %286 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %283, i64* %285), !dbg !1295
  %287 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1296
  %288 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %287, i32 0, i32 2, !dbg !1297
  %289 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %288, align 8, !dbg !1297
  %290 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1298
  %291 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %290, i32 0, i32 1, !dbg !1299
  %292 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %289, i64* %291), !dbg !1300
  br label %248, !dbg !1264, !llvm.loop !1301

293:                                              ; preds = %258
  %294 = load i8, i8* %6, align 1, !dbg !1303
  %295 = zext i8 %294 to i32, !dbg !1303
  %296 = icmp ne i32 %295, 0, !dbg !1303
  br i1 %296, label %297, label %307, !dbg !1305

297:                                              ; preds = %293
  %298 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1306
  %299 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %298, i32 0, i32 1, !dbg !1307
  %300 = load i64, i64* %299, align 8, !dbg !1307
  %301 = icmp ne i64 %300, 0, !dbg !1306
  br i1 %301, label %302, label %307, !dbg !1308

302:                                              ; preds = %297
  %303 = load %struct.obj2json_data_s*, %struct.obj2json_data_s** %5, align 8, !dbg !1309
  %304 = getelementptr inbounds %struct.obj2json_data_s, %struct.obj2json_data_s* %303, i32 0, i32 0, !dbg !1311
  %305 = load i64, i64* %304, align 8, !dbg !1311
  %306 = call i64 @fiobj_str_write(i64 %305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1), !dbg !1312
  br label %307, !dbg !1313

307:                                              ; preds = %302, %297, %293
  br label %308

308:                                              ; preds = %307, %231
  ret i32 0, !dbg !1314
}

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_obj2json(i64 %0, i8 zeroext %1) #0 !dbg !1315 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1318, metadata !DIExpression()), !dbg !1319
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1320, metadata !DIExpression()), !dbg !1321
  %5 = call i64 @fiobj_str_buf(i64 128), !dbg !1322
  %6 = load i64, i64* %3, align 8, !dbg !1323
  %7 = load i8, i8* %4, align 1, !dbg !1324
  %8 = call i64 @fiobj_obj2json2(i64 %5, i64 %6, i8 zeroext %7), !dbg !1325
  ret i64 %8, !dbg !1326
}

declare dso_local i64 @fiobj_str_buf(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek2eos(i8** %0, i8* %1) #0 !dbg !1327 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1332, metadata !DIExpression()), !dbg !1333
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1334, metadata !DIExpression()), !dbg !1335
  br label %6, !dbg !1336

6:                                                ; preds = %23, %2
  %7 = load i8**, i8*** %4, align 8, !dbg !1337
  %8 = load i8*, i8** %7, align 8, !dbg !1338
  %9 = load i8*, i8** %5, align 8, !dbg !1339
  %10 = icmp ult i8* %8, %9, !dbg !1340
  br i1 %10, label %11, label %27, !dbg !1336

11:                                               ; preds = %6
  %12 = load i8**, i8*** %4, align 8, !dbg !1341
  %13 = load i8*, i8** %5, align 8, !dbg !1344
  %14 = call i32 @seek2marker(i8** %12, i8* %13), !dbg !1345
  %15 = icmp ne i32 %14, 0, !dbg !1345
  br i1 %15, label %16, label %23, !dbg !1346

16:                                               ; preds = %11
  %17 = load i8**, i8*** %4, align 8, !dbg !1347
  %18 = load i8*, i8** %17, align 8, !dbg !1348
  %19 = load i8, i8* %18, align 1, !dbg !1349
  %20 = zext i8 %19 to i32, !dbg !1349
  %21 = icmp eq i32 %20, 34, !dbg !1350
  br i1 %21, label %22, label %23, !dbg !1351

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4, !dbg !1352
  br label %28, !dbg !1352

23:                                               ; preds = %16, %11
  %24 = load i8**, i8*** %4, align 8, !dbg !1353
  %25 = load i8*, i8** %24, align 8, !dbg !1354
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !1354
  store i8* %26, i8** %24, align 8, !dbg !1354
  br label %6, !dbg !1336, !llvm.loop !1355

27:                                               ; preds = %6
  store i32 0, i32* %3, align 4, !dbg !1357
  br label %28, !dbg !1357

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %3, align 4, !dbg !1358
  ret i32 %29, !dbg !1358
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_string(%struct.json_parser_s* %0, i8* %1, i64 %2) #0 !dbg !1359 {
  %4 = alloca %struct.json_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %4, metadata !1362, metadata !DIExpression()), !dbg !1363
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1366, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1368, metadata !DIExpression()), !dbg !1369
  %9 = load i64, i64* %6, align 8, !dbg !1370
  %10 = call i64 @fiobj_str_buf(i64 %9), !dbg !1371
  store i64 %10, i64* %7, align 8, !dbg !1369
  %11 = load i64, i64* %7, align 8, !dbg !1372
  %12 = load i64, i64* %7, align 8, !dbg !1373
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %12), !dbg !1374
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2, !dbg !1375
  %14 = load i8*, i8** %13, align 8, !dbg !1375
  %15 = load i8*, i8** %5, align 8, !dbg !1376
  %16 = load i64, i64* %6, align 8, !dbg !1377
  %17 = call i64 @fio_json_unescape_str(i8* %14, i8* %15, i64 %16), !dbg !1378
  call void @fiobj_str_resize(i64 %11, i64 %17), !dbg !1379
  %18 = load %struct.json_parser_s*, %struct.json_parser_s** %4, align 8, !dbg !1380
  %19 = bitcast %struct.json_parser_s* %18 to %struct.fiobj_json_parser_s*, !dbg !1381
  %20 = load i64, i64* %7, align 8, !dbg !1382
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %19, i64 %20), !dbg !1383
  ret void, !dbg !1384
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_json_on_start_object(%struct.json_parser_s* %0) #0 !dbg !1385 {
  %2 = alloca %struct.json_parser_s*, align 8
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  %4 = alloca i64, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %2, metadata !1388, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.declare(metadata %struct.fiobj_json_parser_s** %3, metadata !1390, metadata !DIExpression()), !dbg !1391
  %5 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8, !dbg !1392
  %6 = bitcast %struct.json_parser_s* %5 to %struct.fiobj_json_parser_s*, !dbg !1393
  store %struct.fiobj_json_parser_s* %6, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1391
  %7 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1394
  %8 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 3, !dbg !1396
  %9 = load i64, i64* %8, align 8, !dbg !1396
  %10 = icmp ne i64 %9, 0, !dbg !1394
  br i1 %10, label %11, label %25, !dbg !1397

11:                                               ; preds = %1
  %12 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1398
  %13 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %12, i32 0, i32 4, !dbg !1400
  %14 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1401
  %15 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %14, i32 0, i32 2, !dbg !1402
  %16 = load i64, i64* %15, align 8, !dbg !1402
  %17 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %13, i64 %16), !dbg !1403
  %18 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1404
  %19 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %18, i32 0, i32 3, !dbg !1405
  %20 = load i64, i64* %19, align 8, !dbg !1405
  %21 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1406
  %22 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %21, i32 0, i32 2, !dbg !1407
  store i64 %20, i64* %22, align 8, !dbg !1408
  %23 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1409
  %24 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %23, i32 0, i32 3, !dbg !1410
  store i64 0, i64* %24, align 8, !dbg !1411
  br label %38, !dbg !1412

25:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1413, metadata !DIExpression()), !dbg !1415
  %26 = call i64 @fiobj_hash_new(), !dbg !1416
  store i64 %26, i64* %4, align 8, !dbg !1415
  %27 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1417
  %28 = load i64, i64* %4, align 8, !dbg !1418
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %27, i64 %28), !dbg !1419
  %29 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1420
  %30 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %29, i32 0, i32 4, !dbg !1421
  %31 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1422
  %32 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %31, i32 0, i32 2, !dbg !1423
  %33 = load i64, i64* %32, align 8, !dbg !1423
  %34 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %30, i64 %33), !dbg !1424
  %35 = load i64, i64* %4, align 8, !dbg !1425
  %36 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1426
  %37 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %36, i32 0, i32 2, !dbg !1427
  store i64 %35, i64* %37, align 8, !dbg !1428
  br label %38

38:                                               ; preds = %25, %11
  %39 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1429
  %40 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %39, i32 0, i32 5, !dbg !1430
  store i8 1, i8* %40, align 8, !dbg !1431
  ret i32 0, !dbg !1432
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_null(%struct.json_parser_s* %0) #0 !dbg !1433 {
  %2 = alloca %struct.json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %2, metadata !1436, metadata !DIExpression()), !dbg !1437
  %3 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8, !dbg !1438
  %4 = bitcast %struct.json_parser_s* %3 to %struct.fiobj_json_parser_s*, !dbg !1439
  %5 = call i64 @fiobj_null(), !dbg !1440
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %4, i64 %5), !dbg !1441
  ret void, !dbg !1442
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_end_object(%struct.json_parser_s* %0) #0 !dbg !1443 {
  %2 = alloca %struct.json_parser_s*, align 8
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %2, metadata !1444, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.declare(metadata %struct.fiobj_json_parser_s** %3, metadata !1446, metadata !DIExpression()), !dbg !1447
  %4 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8, !dbg !1448
  %5 = bitcast %struct.json_parser_s* %4 to %struct.fiobj_json_parser_s*, !dbg !1449
  store %struct.fiobj_json_parser_s* %5, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1447
  %6 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1450
  %7 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %6, i32 0, i32 1, !dbg !1452
  %8 = load i64, i64* %7, align 8, !dbg !1452
  %9 = icmp ne i64 %8, 0, !dbg !1450
  br i1 %9, label %10, label %22, !dbg !1453

10:                                               ; preds = %1
  br label %11, !dbg !1454

11:                                               ; preds = %10
  %12 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1456
  %13 = icmp sle i32 3, %12, !dbg !1456
  br i1 %13, label %14, label %15, !dbg !1459

14:                                               ; preds = %11
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0)), !dbg !1460
  br label %15, !dbg !1460

15:                                               ; preds = %14, %11
  br label %16, !dbg !1459

16:                                               ; preds = %15
  %17 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1462
  %18 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %17, i32 0, i32 1, !dbg !1463
  %19 = load i64, i64* %18, align 8, !dbg !1463
  call void @fiobj_free(i64 %19), !dbg !1464
  %20 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1465
  %21 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %20, i32 0, i32 1, !dbg !1466
  store i64 0, i64* %21, align 8, !dbg !1467
  br label %22, !dbg !1468

22:                                               ; preds = %16, %1
  %23 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1469
  %24 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %23, i32 0, i32 2, !dbg !1470
  store i64 0, i64* %24, align 8, !dbg !1471
  %25 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1472
  %26 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %25, i32 0, i32 4, !dbg !1473
  %27 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1474
  %28 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %27, i32 0, i32 2, !dbg !1475
  %29 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %26, i64* %28), !dbg !1476
  %30 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1477
  %31 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %30, i32 0, i32 2, !dbg !1477
  %32 = load i64, i64* %31, align 8, !dbg !1477
  %33 = call i64 @fiobj_type_is(i64 %32, i8 zeroext 42), !dbg !1477
  %34 = trunc i64 %33 to i8, !dbg !1477
  %35 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1478
  %36 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %35, i32 0, i32 5, !dbg !1479
  store i8 %34, i8* %36, align 8, !dbg !1480
  ret void, !dbg !1481
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_json_on_start_array(%struct.json_parser_s* %0) #0 !dbg !1482 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.json_parser_s*, align 8
  %4 = alloca %struct.fiobj_json_parser_s*, align 8
  %5 = alloca i64, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %3, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.declare(metadata %struct.fiobj_json_parser_s** %4, metadata !1485, metadata !DIExpression()), !dbg !1486
  %6 = load %struct.json_parser_s*, %struct.json_parser_s** %3, align 8, !dbg !1487
  %7 = bitcast %struct.json_parser_s* %6 to %struct.fiobj_json_parser_s*, !dbg !1488
  store %struct.fiobj_json_parser_s* %7, %struct.fiobj_json_parser_s** %4, align 8, !dbg !1486
  %8 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8, !dbg !1489
  %9 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 3, !dbg !1491
  %10 = load i64, i64* %9, align 8, !dbg !1491
  %11 = icmp ne i64 %10, 0, !dbg !1489
  br i1 %11, label %12, label %13, !dbg !1492

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1493
  br label %28, !dbg !1493

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1494, metadata !DIExpression()), !dbg !1495
  %14 = call i64 @fiobj_ary_new(), !dbg !1496
  store i64 %14, i64* %5, align 8, !dbg !1495
  %15 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8, !dbg !1497
  %16 = load i64, i64* %5, align 8, !dbg !1498
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %15, i64 %16), !dbg !1499
  %17 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8, !dbg !1500
  %18 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %17, i32 0, i32 4, !dbg !1501
  %19 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8, !dbg !1502
  %20 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %19, i32 0, i32 2, !dbg !1503
  %21 = load i64, i64* %20, align 8, !dbg !1503
  %22 = call i32 @fio_json_stack_push(%struct.fio_json_stack_s* %18, i64 %21), !dbg !1504
  %23 = load i64, i64* %5, align 8, !dbg !1505
  %24 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8, !dbg !1506
  %25 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %24, i32 0, i32 2, !dbg !1507
  store i64 %23, i64* %25, align 8, !dbg !1508
  %26 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %4, align 8, !dbg !1509
  %27 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %26, i32 0, i32 5, !dbg !1510
  store i8 0, i8* %27, align 8, !dbg !1511
  store i32 0, i32* %2, align 4, !dbg !1512
  br label %28, !dbg !1512

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %2, align 4, !dbg !1513
  ret i32 %29, !dbg !1513
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_end_array(%struct.json_parser_s* %0) #0 !dbg !1514 {
  %2 = alloca %struct.json_parser_s*, align 8
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %2, metadata !1515, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.declare(metadata %struct.fiobj_json_parser_s** %3, metadata !1517, metadata !DIExpression()), !dbg !1518
  %4 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8, !dbg !1519
  %5 = bitcast %struct.json_parser_s* %4 to %struct.fiobj_json_parser_s*, !dbg !1520
  store %struct.fiobj_json_parser_s* %5, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1518
  %6 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1521
  %7 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %6, i32 0, i32 2, !dbg !1522
  store i64 0, i64* %7, align 8, !dbg !1523
  %8 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1524
  %9 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %8, i32 0, i32 4, !dbg !1525
  %10 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1526
  %11 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %10, i32 0, i32 2, !dbg !1527
  %12 = call i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %9, i64* %11), !dbg !1528
  %13 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1529
  %14 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %13, i32 0, i32 2, !dbg !1529
  %15 = load i64, i64* %14, align 8, !dbg !1529
  %16 = call i64 @fiobj_type_is(i64 %15, i8 zeroext 42), !dbg !1529
  %17 = trunc i64 %16 to i8, !dbg !1529
  %18 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1530
  %19 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %18, i32 0, i32 5, !dbg !1531
  store i8 %17, i8* %19, align 8, !dbg !1532
  ret void, !dbg !1533
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_true(%struct.json_parser_s* %0) #0 !dbg !1534 {
  %2 = alloca %struct.json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %2, metadata !1535, metadata !DIExpression()), !dbg !1536
  %3 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8, !dbg !1537
  %4 = bitcast %struct.json_parser_s* %3 to %struct.fiobj_json_parser_s*, !dbg !1538
  %5 = call i64 @fiobj_true(), !dbg !1539
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %4, i64 %5), !dbg !1540
  ret void, !dbg !1541
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_false(%struct.json_parser_s* %0) #0 !dbg !1542 {
  %2 = alloca %struct.json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %2, metadata !1543, metadata !DIExpression()), !dbg !1544
  %3 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8, !dbg !1545
  %4 = bitcast %struct.json_parser_s* %3 to %struct.fiobj_json_parser_s*, !dbg !1546
  %5 = call i64 @fiobj_false(), !dbg !1547
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %4, i64 %5), !dbg !1548
  ret void, !dbg !1549
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i64 @fio_atol(i8**) #5

declare dso_local double @fio_atof(i8**) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_float(%struct.json_parser_s* %0, double %1) #0 !dbg !1550 {
  %3 = alloca %struct.json_parser_s*, align 8
  %4 = alloca double, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %3, metadata !1553, metadata !DIExpression()), !dbg !1554
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1555, metadata !DIExpression()), !dbg !1556
  %5 = load %struct.json_parser_s*, %struct.json_parser_s** %3, align 8, !dbg !1557
  %6 = bitcast %struct.json_parser_s* %5 to %struct.fiobj_json_parser_s*, !dbg !1558
  %7 = load double, double* %4, align 8, !dbg !1559
  %8 = call i64 @fiobj_float_new(double %7), !dbg !1560
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %6, i64 %8), !dbg !1561
  ret void, !dbg !1562
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_number(%struct.json_parser_s* %0, i64 %1) #0 !dbg !1563 {
  %3 = alloca %struct.json_parser_s*, align 8
  %4 = alloca i64, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %3, metadata !1566, metadata !DIExpression()), !dbg !1567
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1568, metadata !DIExpression()), !dbg !1569
  %5 = load %struct.json_parser_s*, %struct.json_parser_s** %3, align 8, !dbg !1570
  %6 = bitcast %struct.json_parser_s* %5 to %struct.fiobj_json_parser_s*, !dbg !1571
  %7 = load i64, i64* %4, align 8, !dbg !1572
  %8 = call i64 @fiobj_num_new(i64 %7), !dbg !1573
  call void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %6, i64 %8), !dbg !1574
  ret void, !dbg !1575
}

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_json(%struct.json_parser_s* %0) #0 !dbg !1576 {
  %2 = alloca %struct.json_parser_s*, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %2, metadata !1577, metadata !DIExpression()), !dbg !1578
  %3 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8, !dbg !1579
  ret void, !dbg !1580
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_on_error(%struct.json_parser_s* %0) #0 !dbg !1581 {
  %2 = alloca %struct.json_parser_s*, align 8
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  %4 = alloca %struct.fiobj_json_parser_s, align 8
  store %struct.json_parser_s* %0, %struct.json_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.json_parser_s** %2, metadata !1582, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.declare(metadata %struct.fiobj_json_parser_s** %3, metadata !1584, metadata !DIExpression()), !dbg !1585
  %5 = load %struct.json_parser_s*, %struct.json_parser_s** %2, align 8, !dbg !1586
  %6 = bitcast %struct.json_parser_s* %5 to %struct.fiobj_json_parser_s*, !dbg !1587
  store %struct.fiobj_json_parser_s* %6, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1585
  %7 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1588
  %8 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %7, i32 0, i32 4, !dbg !1589
  %9 = call i64 @fio_json_stack_get(%struct.fio_json_stack_s* %8, i64 0), !dbg !1590
  call void @fiobj_free(i64 %9), !dbg !1591
  %10 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1592
  %11 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %10, i32 0, i32 1, !dbg !1593
  %12 = load i64, i64* %11, align 8, !dbg !1593
  call void @fiobj_free(i64 %12), !dbg !1594
  %13 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1595
  %14 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %13, i32 0, i32 4, !dbg !1596
  call void @fio_json_stack_free(%struct.fio_json_stack_s* %14), !dbg !1597
  %15 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1598
  %16 = bitcast %struct.fiobj_json_parser_s* %4 to i8*, !dbg !1599
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 72, i1 false), !dbg !1599
  %17 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %4, i32 0, i32 2, !dbg !1600
  store i64 0, i64* %17, align 8, !dbg !1600
  %18 = bitcast %struct.fiobj_json_parser_s* %15 to i8*, !dbg !1599
  %19 = bitcast %struct.fiobj_json_parser_s* %4 to i8*, !dbg !1599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 72, i1 false), !dbg !1599
  ret void, !dbg !1601
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek2marker(i8** %0, i8* %1) #0 !dbg !1602 {
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
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1603, metadata !DIExpression()), !dbg !1604
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1605, metadata !DIExpression()), !dbg !1606
  %14 = load i8**, i8*** %4, align 8, !dbg !1607
  %15 = load i8*, i8** %14, align 8, !dbg !1609
  %16 = load i8, i8* %15, align 1, !dbg !1610
  %17 = zext i8 %16 to i64, !dbg !1611
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %17, !dbg !1611
  %19 = load i8, i8* %18, align 1, !dbg !1611
  %20 = icmp ne i8 %19, 0, !dbg !1611
  br i1 %20, label %21, label %22, !dbg !1612

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !1613
  br label %189, !dbg !1613

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8, !dbg !1614
  %24 = ptrtoint i8* %23 to i64, !dbg !1616
  %25 = load i8**, i8*** %4, align 8, !dbg !1617
  %26 = load i8*, i8** %25, align 8, !dbg !1618
  %27 = ptrtoint i8* %26 to i64, !dbg !1619
  %28 = and i64 %27, -8, !dbg !1620
  %29 = add i64 8, %28, !dbg !1621
  %30 = icmp ule i64 %24, %29, !dbg !1622
  br i1 %30, label %31, label %32, !dbg !1623

31:                                               ; preds = %22
  br label %110, !dbg !1624

32:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1625, metadata !DIExpression()), !dbg !1629
  %33 = load i8**, i8*** %4, align 8, !dbg !1630
  %34 = load i8*, i8** %33, align 8, !dbg !1631
  %35 = ptrtoint i8* %34 to i64, !dbg !1632
  %36 = and i64 %35, -8, !dbg !1633
  %37 = add i64 %36, 8, !dbg !1634
  %38 = inttoptr i64 %37 to i8*, !dbg !1635
  store i8* %38, i8** %6, align 8, !dbg !1629
  %39 = load i8*, i8** %5, align 8, !dbg !1636
  %40 = load i8*, i8** %6, align 8, !dbg !1638
  %41 = icmp uge i8* %39, %40, !dbg !1639
  br i1 %41, label %42, label %62, !dbg !1640

42:                                               ; preds = %32
  br label %43, !dbg !1641

43:                                               ; preds = %57, %42
  %44 = load i8**, i8*** %4, align 8, !dbg !1643
  %45 = load i8*, i8** %44, align 8, !dbg !1644
  %46 = load i8*, i8** %6, align 8, !dbg !1645
  %47 = icmp ult i8* %45, %46, !dbg !1646
  br i1 %47, label %48, label %61, !dbg !1641

48:                                               ; preds = %43
  %49 = load i8**, i8*** %4, align 8, !dbg !1647
  %50 = load i8*, i8** %49, align 8, !dbg !1650
  %51 = load i8, i8* %50, align 1, !dbg !1651
  %52 = zext i8 %51 to i64, !dbg !1652
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %52, !dbg !1652
  %54 = load i8, i8* %53, align 1, !dbg !1652
  %55 = icmp ne i8 %54, 0, !dbg !1652
  br i1 %55, label %56, label %57, !dbg !1653

56:                                               ; preds = %48
  store i32 1, i32* %3, align 4, !dbg !1654
  br label %189, !dbg !1654

57:                                               ; preds = %48
  %58 = load i8**, i8*** %4, align 8, !dbg !1655
  %59 = load i8*, i8** %58, align 8, !dbg !1656
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1656
  store i8* %60, i8** %58, align 8, !dbg !1656
  br label %43, !dbg !1641, !llvm.loop !1657

61:                                               ; preds = %43
  br label %62, !dbg !1659

62:                                               ; preds = %61, %32
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1660, metadata !DIExpression()), !dbg !1661
  %63 = load i8*, i8** %5, align 8, !dbg !1662
  %64 = ptrtoint i8* %63 to i64, !dbg !1663
  %65 = and i64 %64, -8, !dbg !1664
  %66 = inttoptr i64 %65 to i8*, !dbg !1665
  store i8* %66, i8** %7, align 8, !dbg !1661
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1666, metadata !DIExpression()), !dbg !1667
  store i64 2459565876494606882, i64* %8, align 8, !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i64 6655295901103053916, i64* %9, align 8, !dbg !1669
  br label %67, !dbg !1670

67:                                               ; preds = %105, %62
  %68 = load i8**, i8*** %4, align 8, !dbg !1671
  %69 = load i8*, i8** %68, align 8, !dbg !1674
  %70 = load i8*, i8** %7, align 8, !dbg !1675
  %71 = icmp ult i8* %69, %70, !dbg !1676
  br i1 %71, label %72, label %109, !dbg !1677

72:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1678, metadata !DIExpression()), !dbg !1681
  %73 = load i8**, i8*** %4, align 8, !dbg !1682
  %74 = load i8*, i8** %73, align 8, !dbg !1683
  %75 = bitcast i8* %74 to i64*, !dbg !1684
  %76 = load i64, i64* %75, align 8, !dbg !1684
  %77 = load i64, i64* %8, align 8, !dbg !1685
  %78 = xor i64 %76, %77, !dbg !1686
  %79 = xor i64 %78, -1, !dbg !1687
  store i64 %79, i64* %10, align 8, !dbg !1681
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1688, metadata !DIExpression()), !dbg !1689
  %80 = load i64, i64* %10, align 8, !dbg !1690
  %81 = and i64 %80, 9187201950435737471, !dbg !1691
  %82 = add i64 %81, 72340172838076673, !dbg !1692
  %83 = load i64, i64* %10, align 8, !dbg !1693
  %84 = and i64 %83, -9187201950435737472, !dbg !1694
  %85 = and i64 %82, %84, !dbg !1695
  store i64 %85, i64* %11, align 8, !dbg !1689
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1696, metadata !DIExpression()), !dbg !1697
  %86 = load i8**, i8*** %4, align 8, !dbg !1698
  %87 = load i8*, i8** %86, align 8, !dbg !1699
  %88 = bitcast i8* %87 to i64*, !dbg !1700
  %89 = load i64, i64* %88, align 8, !dbg !1700
  %90 = load i64, i64* %9, align 8, !dbg !1701
  %91 = xor i64 %89, %90, !dbg !1702
  %92 = xor i64 %91, -1, !dbg !1703
  store i64 %92, i64* %12, align 8, !dbg !1697
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1704, metadata !DIExpression()), !dbg !1705
  %93 = load i64, i64* %12, align 8, !dbg !1706
  %94 = and i64 %93, 9187201950435737471, !dbg !1707
  %95 = add i64 %94, 72340172838076673, !dbg !1708
  %96 = load i64, i64* %12, align 8, !dbg !1709
  %97 = and i64 %96, -9187201950435737472, !dbg !1710
  %98 = and i64 %95, %97, !dbg !1711
  store i64 %98, i64* %13, align 8, !dbg !1705
  %99 = load i64, i64* %11, align 8, !dbg !1712
  %100 = load i64, i64* %13, align 8, !dbg !1714
  %101 = or i64 %99, %100, !dbg !1715
  %102 = icmp ne i64 %101, 0, !dbg !1715
  br i1 %102, label %103, label %104, !dbg !1716

103:                                              ; preds = %72
  br label %109, !dbg !1717

104:                                              ; preds = %72
  br label %105, !dbg !1719

105:                                              ; preds = %104
  %106 = load i8**, i8*** %4, align 8, !dbg !1720
  %107 = load i8*, i8** %106, align 8, !dbg !1721
  %108 = getelementptr inbounds i8, i8* %107, i64 8, !dbg !1721
  store i8* %108, i8** %106, align 8, !dbg !1721
  br label %67, !dbg !1722, !llvm.loop !1723

109:                                              ; preds = %103, %67
  br label %110, !dbg !1725

110:                                              ; preds = %109, %31
  call void @llvm.dbg.label(metadata !1726), !dbg !1727
  %111 = load i8**, i8*** %4, align 8, !dbg !1728
  %112 = load i8*, i8** %111, align 8, !dbg !1730
  %113 = getelementptr inbounds i8, i8* %112, i64 4, !dbg !1731
  %114 = load i8*, i8** %5, align 8, !dbg !1732
  %115 = icmp ule i8* %113, %114, !dbg !1733
  br i1 %115, label %116, label %169, !dbg !1734

116:                                              ; preds = %110
  %117 = load i8**, i8*** %4, align 8, !dbg !1735
  %118 = load i8*, i8** %117, align 8, !dbg !1738
  %119 = getelementptr inbounds i8, i8* %118, i64 0, !dbg !1739
  %120 = load i8, i8* %119, align 1, !dbg !1739
  %121 = zext i8 %120 to i64, !dbg !1740
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %121, !dbg !1740
  %123 = load i8, i8* %122, align 1, !dbg !1740
  %124 = icmp ne i8 %123, 0, !dbg !1740
  br i1 %124, label %125, label %126, !dbg !1741

125:                                              ; preds = %116
  store i32 1, i32* %3, align 4, !dbg !1742
  br label %189, !dbg !1742

126:                                              ; preds = %116
  %127 = load i8**, i8*** %4, align 8, !dbg !1744
  %128 = load i8*, i8** %127, align 8, !dbg !1746
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !1747
  %130 = load i8, i8* %129, align 1, !dbg !1747
  %131 = zext i8 %130 to i64, !dbg !1748
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %131, !dbg !1748
  %133 = load i8, i8* %132, align 1, !dbg !1748
  %134 = icmp ne i8 %133, 0, !dbg !1748
  br i1 %134, label %135, label %139, !dbg !1749

135:                                              ; preds = %126
  %136 = load i8**, i8*** %4, align 8, !dbg !1750
  %137 = load i8*, i8** %136, align 8, !dbg !1752
  %138 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !1752
  store i8* %138, i8** %136, align 8, !dbg !1752
  store i32 1, i32* %3, align 4, !dbg !1753
  br label %189, !dbg !1753

139:                                              ; preds = %126
  %140 = load i8**, i8*** %4, align 8, !dbg !1754
  %141 = load i8*, i8** %140, align 8, !dbg !1756
  %142 = getelementptr inbounds i8, i8* %141, i64 2, !dbg !1757
  %143 = load i8, i8* %142, align 1, !dbg !1757
  %144 = zext i8 %143 to i64, !dbg !1758
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %144, !dbg !1758
  %146 = load i8, i8* %145, align 1, !dbg !1758
  %147 = icmp ne i8 %146, 0, !dbg !1758
  br i1 %147, label %148, label %152, !dbg !1759

148:                                              ; preds = %139
  %149 = load i8**, i8*** %4, align 8, !dbg !1760
  %150 = load i8*, i8** %149, align 8, !dbg !1762
  %151 = getelementptr inbounds i8, i8* %150, i64 2, !dbg !1762
  store i8* %151, i8** %149, align 8, !dbg !1762
  store i32 1, i32* %3, align 4, !dbg !1763
  br label %189, !dbg !1763

152:                                              ; preds = %139
  %153 = load i8**, i8*** %4, align 8, !dbg !1764
  %154 = load i8*, i8** %153, align 8, !dbg !1766
  %155 = getelementptr inbounds i8, i8* %154, i64 3, !dbg !1767
  %156 = load i8, i8* %155, align 1, !dbg !1767
  %157 = zext i8 %156 to i64, !dbg !1768
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %157, !dbg !1768
  %159 = load i8, i8* %158, align 1, !dbg !1768
  %160 = icmp ne i8 %159, 0, !dbg !1768
  br i1 %160, label %161, label %165, !dbg !1769

161:                                              ; preds = %152
  %162 = load i8**, i8*** %4, align 8, !dbg !1770
  %163 = load i8*, i8** %162, align 8, !dbg !1772
  %164 = getelementptr inbounds i8, i8* %163, i64 3, !dbg !1772
  store i8* %164, i8** %162, align 8, !dbg !1772
  store i32 1, i32* %3, align 4, !dbg !1773
  br label %189, !dbg !1773

165:                                              ; preds = %152
  %166 = load i8**, i8*** %4, align 8, !dbg !1774
  %167 = load i8*, i8** %166, align 8, !dbg !1775
  %168 = getelementptr inbounds i8, i8* %167, i64 4, !dbg !1775
  store i8* %168, i8** %166, align 8, !dbg !1775
  br label %169, !dbg !1776

169:                                              ; preds = %165, %110
  br label %170, !dbg !1777

170:                                              ; preds = %184, %169
  %171 = load i8**, i8*** %4, align 8, !dbg !1778
  %172 = load i8*, i8** %171, align 8, !dbg !1779
  %173 = load i8*, i8** %5, align 8, !dbg !1780
  %174 = icmp ult i8* %172, %173, !dbg !1781
  br i1 %174, label %175, label %188, !dbg !1777

175:                                              ; preds = %170
  %176 = load i8**, i8*** %4, align 8, !dbg !1782
  %177 = load i8*, i8** %176, align 8, !dbg !1785
  %178 = load i8, i8* %177, align 1, !dbg !1786
  %179 = zext i8 %178 to i64, !dbg !1787
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [93 x i8], [163 x i8] }>* @string_seek_stop to [256 x i8]*), i64 0, i64 %179, !dbg !1787
  %181 = load i8, i8* %180, align 1, !dbg !1787
  %182 = icmp ne i8 %181, 0, !dbg !1787
  br i1 %182, label %183, label %184, !dbg !1788

183:                                              ; preds = %175
  store i32 1, i32* %3, align 4, !dbg !1789
  br label %189, !dbg !1789

184:                                              ; preds = %175
  %185 = load i8**, i8*** %4, align 8, !dbg !1790
  %186 = load i8*, i8** %185, align 8, !dbg !1791
  %187 = getelementptr inbounds i8, i8* %186, i32 1, !dbg !1791
  store i8* %187, i8** %185, align 8, !dbg !1791
  br label %170, !dbg !1777, !llvm.loop !1792

188:                                              ; preds = %170
  store i32 0, i32* %3, align 4, !dbg !1794
  br label %189, !dbg !1794

189:                                              ; preds = %188, %183, %161, %148, %135, %125, %56, %21
  %190 = load i32, i32* %3, align 4, !dbg !1795
  ret i32 %190, !dbg !1795
}

declare dso_local void @fiobj_str_resize(i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_json_unescape_str(i8* %0, i8* %1, i64 %2) #0 !dbg !1796 {
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1799, metadata !DIExpression()), !dbg !1800
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1801, metadata !DIExpression()), !dbg !1802
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1803, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1805, metadata !DIExpression()), !dbg !1806
  %15 = load i8*, i8** %5, align 8, !dbg !1807
  store i8* %15, i8** %7, align 8, !dbg !1806
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1808, metadata !DIExpression()), !dbg !1809
  %16 = load i8*, i8** %7, align 8, !dbg !1810
  %17 = load i64, i64* %6, align 8, !dbg !1811
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !1812
  store i8* %18, i8** %8, align 8, !dbg !1809
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1813, metadata !DIExpression()), !dbg !1814
  %19 = load i8*, i8** %4, align 8, !dbg !1815
  store i8* %19, i8** %9, align 8, !dbg !1814
  br label %20, !dbg !1816

20:                                               ; preds = %82, %3
  %21 = load i8*, i8** %7, align 8, !dbg !1817
  %22 = load i8*, i8** %8, align 8, !dbg !1818
  %23 = icmp ult i8* %21, %22, !dbg !1819
  br i1 %23, label %24, label %83, !dbg !1816

24:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1820, metadata !DIExpression()), !dbg !1822
  %25 = load i8*, i8** %8, align 8, !dbg !1823
  %26 = getelementptr inbounds i8, i8* %25, i64 -7, !dbg !1824
  store i8* %26, i8** %10, align 8, !dbg !1822
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1825, metadata !DIExpression()), !dbg !1826
  store i64 6655295901103053916, i64* %11, align 8, !dbg !1826
  br label %27, !dbg !1827

27:                                               ; preds = %48, %24
  %28 = load i8*, i8** %7, align 8, !dbg !1828
  %29 = load i8*, i8** %10, align 8, !dbg !1829
  %30 = icmp ult i8* %28, %29, !dbg !1830
  br i1 %30, label %31, label %58, !dbg !1827

31:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1831, metadata !DIExpression()), !dbg !1833
  %32 = load i8*, i8** %7, align 8, !dbg !1834
  %33 = bitcast i8* %32 to i64*, !dbg !1835
  %34 = load i64, i64* %33, align 8, !dbg !1835
  %35 = load i64, i64* %11, align 8, !dbg !1836
  %36 = xor i64 %34, %35, !dbg !1837
  %37 = xor i64 %36, -1, !dbg !1838
  store i64 %37, i64* %12, align 8, !dbg !1833
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1839, metadata !DIExpression()), !dbg !1840
  %38 = load i64, i64* %12, align 8, !dbg !1841
  %39 = and i64 %38, 9187201950435737471, !dbg !1842
  %40 = add i64 %39, 72340172838076673, !dbg !1843
  store i64 %40, i64* %13, align 8, !dbg !1840
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1844, metadata !DIExpression()), !dbg !1845
  %41 = load i64, i64* %12, align 8, !dbg !1846
  %42 = and i64 %41, -9187201950435737472, !dbg !1847
  store i64 %42, i64* %14, align 8, !dbg !1845
  %43 = load i64, i64* %13, align 8, !dbg !1848
  %44 = load i64, i64* %14, align 8, !dbg !1850
  %45 = and i64 %43, %44, !dbg !1851
  %46 = icmp ne i64 %45, 0, !dbg !1851
  br i1 %46, label %47, label %48, !dbg !1852

47:                                               ; preds = %31
  br label %58, !dbg !1853

48:                                               ; preds = %31
  %49 = load i8*, i8** %7, align 8, !dbg !1855
  %50 = bitcast i8* %49 to i64*, !dbg !1856
  %51 = load i64, i64* %50, align 8, !dbg !1856
  %52 = load i8*, i8** %9, align 8, !dbg !1857
  %53 = bitcast i8* %52 to i64*, !dbg !1858
  store i64 %51, i64* %53, align 8, !dbg !1859
  %54 = load i8*, i8** %7, align 8, !dbg !1860
  %55 = getelementptr inbounds i8, i8* %54, i64 8, !dbg !1860
  store i8* %55, i8** %7, align 8, !dbg !1860
  %56 = load i8*, i8** %9, align 8, !dbg !1861
  %57 = getelementptr inbounds i8, i8* %56, i64 8, !dbg !1861
  store i8* %57, i8** %9, align 8, !dbg !1861
  br label %27, !dbg !1827, !llvm.loop !1862

58:                                               ; preds = %47, %27
  br label %59, !dbg !1864

59:                                               ; preds = %69, %58
  %60 = load i8*, i8** %7, align 8, !dbg !1865
  %61 = load i8*, i8** %8, align 8, !dbg !1866
  %62 = icmp ult i8* %60, %61, !dbg !1867
  br i1 %62, label %63, label %77, !dbg !1864

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8, !dbg !1868
  %65 = load i8, i8* %64, align 1, !dbg !1871
  %66 = zext i8 %65 to i32, !dbg !1871
  %67 = icmp eq i32 %66, 92, !dbg !1872
  br i1 %67, label %68, label %69, !dbg !1873

68:                                               ; preds = %63
  br label %77, !dbg !1874

69:                                               ; preds = %63
  %70 = load i8*, i8** %7, align 8, !dbg !1875
  %71 = load i8, i8* %70, align 1, !dbg !1876
  %72 = load i8*, i8** %9, align 8, !dbg !1877
  store i8 %71, i8* %72, align 1, !dbg !1878
  %73 = load i8*, i8** %7, align 8, !dbg !1879
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !1879
  store i8* %74, i8** %7, align 8, !dbg !1879
  %75 = load i8*, i8** %9, align 8, !dbg !1880
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !1880
  store i8* %76, i8** %9, align 8, !dbg !1880
  br label %59, !dbg !1864, !llvm.loop !1881

77:                                               ; preds = %68, %59
  %78 = load i8*, i8** %7, align 8, !dbg !1883
  %79 = load i8*, i8** %8, align 8, !dbg !1885
  %80 = icmp uge i8* %78, %79, !dbg !1886
  br i1 %80, label %81, label %82, !dbg !1887

81:                                               ; preds = %77
  br label %84, !dbg !1888

82:                                               ; preds = %77
  call void @fio_json_unescape_str_internal(i8** %9, i8** %7), !dbg !1889
  br label %20, !dbg !1816, !llvm.loop !1890

83:                                               ; preds = %20
  br label %84, !dbg !1816

84:                                               ; preds = %83, %81
  call void @llvm.dbg.label(metadata !1892), !dbg !1893
  %85 = load i8*, i8** %9, align 8, !dbg !1894
  %86 = ptrtoint i8* %85 to i64, !dbg !1895
  %87 = load i8*, i8** %4, align 8, !dbg !1896
  %88 = ptrtoint i8* %87 to i64, !dbg !1897
  %89 = sub i64 %86, %88, !dbg !1898
  ret i64 %89, !dbg !1899
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !1900 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1901, metadata !DIExpression()), !dbg !1902
  %4 = load i64, i64* %3, align 8, !dbg !1903
  %5 = icmp ne i64 %4, 0, !dbg !1903
  br i1 %5, label %8, label %6, !dbg !1905

6:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1906, metadata !DIExpression()), !dbg !1908
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1908
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false), !dbg !1908
  br label %37, !dbg !1909

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !1910
  %10 = and i64 %9, 1, !dbg !1912
  %11 = icmp ne i64 %10, 0, !dbg !1912
  br i1 %11, label %12, label %15, !dbg !1913

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8, !dbg !1914
  %14 = ashr i64 %13, 1, !dbg !1915
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14), !dbg !1916
  br label %37, !dbg !1917

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8, !dbg !1918
  %17 = and i64 %16, 6, !dbg !1920
  %18 = icmp eq i64 %17, 6, !dbg !1921
  br i1 %18, label %19, label %31, !dbg !1922

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8, !dbg !1923
  %21 = trunc i64 %20 to i8, !dbg !1925
  %22 = zext i8 %21 to i32, !dbg !1925
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ], !dbg !1926

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1927, metadata !DIExpression()), !dbg !1930
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.8 to i8*), i64 24, i1 false), !dbg !1930
  br label %37, !dbg !1931

25:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1932, metadata !DIExpression()), !dbg !1934
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.10 to i8*), i64 24, i1 false), !dbg !1934
  br label %37, !dbg !1935

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1936, metadata !DIExpression()), !dbg !1938
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.12 to i8*), i64 24, i1 false), !dbg !1938
  br label %37, !dbg !1939

29:                                               ; preds = %19
  br label %30, !dbg !1940

30:                                               ; preds = %29
  br label %31, !dbg !1941

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8, !dbg !1942
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32), !dbg !1942
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6, !dbg !1943
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8, !dbg !1943
  %36 = load i64, i64* %3, align 8, !dbg !1944
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36), !dbg !1942
  br label %37, !dbg !1945

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void, !dbg !1946
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_json_add2parser(%struct.fiobj_json_parser_s* %0, i64 %1) #0 !dbg !1947 {
  %3 = alloca %struct.fiobj_json_parser_s*, align 8
  %4 = alloca i64, align 8
  store %struct.fiobj_json_parser_s* %0, %struct.fiobj_json_parser_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fiobj_json_parser_s** %3, metadata !1950, metadata !DIExpression()), !dbg !1951
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1952, metadata !DIExpression()), !dbg !1953
  %5 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1954
  %6 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %5, i32 0, i32 2, !dbg !1956
  %7 = load i64, i64* %6, align 8, !dbg !1956
  %8 = icmp ne i64 %7, 0, !dbg !1954
  br i1 %8, label %9, label %44, !dbg !1957

9:                                                ; preds = %2
  %10 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1958
  %11 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %10, i32 0, i32 5, !dbg !1961
  %12 = load i8, i8* %11, align 8, !dbg !1961
  %13 = icmp ne i8 %12, 0, !dbg !1958
  br i1 %13, label %14, label %38, !dbg !1962

14:                                               ; preds = %9
  %15 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1963
  %16 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %15, i32 0, i32 1, !dbg !1966
  %17 = load i64, i64* %16, align 8, !dbg !1966
  %18 = icmp ne i64 %17, 0, !dbg !1963
  br i1 %18, label %19, label %33, !dbg !1967

19:                                               ; preds = %14
  %20 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1968
  %21 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %20, i32 0, i32 2, !dbg !1970
  %22 = load i64, i64* %21, align 8, !dbg !1970
  %23 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1971
  %24 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %23, i32 0, i32 1, !dbg !1972
  %25 = load i64, i64* %24, align 8, !dbg !1972
  %26 = load i64, i64* %4, align 8, !dbg !1973
  %27 = call i32 @fiobj_hash_set(i64 %22, i64 %25, i64 %26), !dbg !1974
  %28 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1975
  %29 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %28, i32 0, i32 1, !dbg !1976
  %30 = load i64, i64* %29, align 8, !dbg !1976
  call void @fiobj_free(i64 %30), !dbg !1977
  %31 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1978
  %32 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %31, i32 0, i32 1, !dbg !1979
  store i64 0, i64* %32, align 8, !dbg !1980
  br label %37, !dbg !1981

33:                                               ; preds = %14
  %34 = load i64, i64* %4, align 8, !dbg !1982
  %35 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1984
  %36 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %35, i32 0, i32 1, !dbg !1985
  store i64 %34, i64* %36, align 8, !dbg !1986
  br label %37

37:                                               ; preds = %33, %19
  br label %43, !dbg !1987

38:                                               ; preds = %9
  %39 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1988
  %40 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %39, i32 0, i32 2, !dbg !1990
  %41 = load i64, i64* %40, align 8, !dbg !1990
  %42 = load i64, i64* %4, align 8, !dbg !1991
  call void @fiobj_ary_push(i64 %41, i64 %42), !dbg !1992
  br label %43

43:                                               ; preds = %38, %37
  br label %48, !dbg !1993

44:                                               ; preds = %2
  %45 = load i64, i64* %4, align 8, !dbg !1994
  %46 = load %struct.fiobj_json_parser_s*, %struct.fiobj_json_parser_s** %3, align 8, !dbg !1996
  %47 = getelementptr inbounds %struct.fiobj_json_parser_s, %struct.fiobj_json_parser_s* %46, i32 0, i32 2, !dbg !1997
  store i64 %45, i64* %47, align 8, !dbg !1998
  br label %48

48:                                               ; preds = %44, %43
  ret void, !dbg !1999
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_unescape_str_internal(i8** %0, i8** %1) #0 !dbg !2000 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2004, metadata !DIExpression()), !dbg !2005
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2006, metadata !DIExpression()), !dbg !2007
  %6 = load i8**, i8*** %4, align 8, !dbg !2008
  %7 = load i8*, i8** %6, align 8, !dbg !2009
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2009
  store i8* %8, i8** %6, align 8, !dbg !2009
  %9 = load i8**, i8*** %4, align 8, !dbg !2010
  %10 = load i8*, i8** %9, align 8, !dbg !2011
  %11 = load i8, i8* %10, align 1, !dbg !2012
  %12 = zext i8 %11 to i32, !dbg !2012
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
  ], !dbg !2013

13:                                               ; preds = %2
  %14 = load i8**, i8*** %3, align 8, !dbg !2014
  %15 = load i8*, i8** %14, align 8, !dbg !2016
  store i8 8, i8* %15, align 1, !dbg !2017
  %16 = load i8**, i8*** %4, align 8, !dbg !2018
  %17 = load i8*, i8** %16, align 8, !dbg !2019
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !2019
  store i8* %18, i8** %16, align 8, !dbg !2019
  %19 = load i8**, i8*** %3, align 8, !dbg !2020
  %20 = load i8*, i8** %19, align 8, !dbg !2021
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !2021
  store i8* %21, i8** %19, align 8, !dbg !2021
  br label %365, !dbg !2022

22:                                               ; preds = %2
  %23 = load i8**, i8*** %3, align 8, !dbg !2023
  %24 = load i8*, i8** %23, align 8, !dbg !2024
  store i8 12, i8* %24, align 1, !dbg !2025
  %25 = load i8**, i8*** %4, align 8, !dbg !2026
  %26 = load i8*, i8** %25, align 8, !dbg !2027
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2027
  store i8* %27, i8** %25, align 8, !dbg !2027
  %28 = load i8**, i8*** %3, align 8, !dbg !2028
  %29 = load i8*, i8** %28, align 8, !dbg !2029
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !2029
  store i8* %30, i8** %28, align 8, !dbg !2029
  br label %365, !dbg !2030

31:                                               ; preds = %2
  %32 = load i8**, i8*** %3, align 8, !dbg !2031
  %33 = load i8*, i8** %32, align 8, !dbg !2032
  store i8 10, i8* %33, align 1, !dbg !2033
  %34 = load i8**, i8*** %4, align 8, !dbg !2034
  %35 = load i8*, i8** %34, align 8, !dbg !2035
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !2035
  store i8* %36, i8** %34, align 8, !dbg !2035
  %37 = load i8**, i8*** %3, align 8, !dbg !2036
  %38 = load i8*, i8** %37, align 8, !dbg !2037
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2037
  store i8* %39, i8** %37, align 8, !dbg !2037
  br label %365, !dbg !2038

40:                                               ; preds = %2
  %41 = load i8**, i8*** %3, align 8, !dbg !2039
  %42 = load i8*, i8** %41, align 8, !dbg !2040
  store i8 13, i8* %42, align 1, !dbg !2041
  %43 = load i8**, i8*** %4, align 8, !dbg !2042
  %44 = load i8*, i8** %43, align 8, !dbg !2043
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !2043
  store i8* %45, i8** %43, align 8, !dbg !2043
  %46 = load i8**, i8*** %3, align 8, !dbg !2044
  %47 = load i8*, i8** %46, align 8, !dbg !2045
  %48 = getelementptr inbounds i8, i8* %47, i32 1, !dbg !2045
  store i8* %48, i8** %46, align 8, !dbg !2045
  br label %365, !dbg !2046

49:                                               ; preds = %2
  %50 = load i8**, i8*** %3, align 8, !dbg !2047
  %51 = load i8*, i8** %50, align 8, !dbg !2048
  store i8 9, i8* %51, align 1, !dbg !2049
  %52 = load i8**, i8*** %4, align 8, !dbg !2050
  %53 = load i8*, i8** %52, align 8, !dbg !2051
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !2051
  store i8* %54, i8** %52, align 8, !dbg !2051
  %55 = load i8**, i8*** %3, align 8, !dbg !2052
  %56 = load i8*, i8** %55, align 8, !dbg !2053
  %57 = getelementptr inbounds i8, i8* %56, i32 1, !dbg !2053
  store i8* %57, i8** %55, align 8, !dbg !2053
  br label %365, !dbg !2054

58:                                               ; preds = %2
  %59 = load i8**, i8*** %4, align 8, !dbg !2055
  %60 = load i8*, i8** %59, align 8, !dbg !2058
  %61 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2059
  %62 = load i8, i8* %61, align 1, !dbg !2059
  %63 = zext i8 %62 to i64, !dbg !2060
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %63, !dbg !2060
  %65 = load i8, i8* %64, align 1, !dbg !2060
  %66 = zext i8 %65 to i32, !dbg !2060
  %67 = icmp ne i32 %66, 0, !dbg !2060
  br i1 %67, label %68, label %260, !dbg !2061

68:                                               ; preds = %58
  %69 = load i8**, i8*** %4, align 8, !dbg !2062
  %70 = load i8*, i8** %69, align 8, !dbg !2063
  %71 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !2064
  %72 = load i8, i8* %71, align 1, !dbg !2064
  %73 = zext i8 %72 to i64, !dbg !2065
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %73, !dbg !2065
  %75 = load i8, i8* %74, align 1, !dbg !2065
  %76 = zext i8 %75 to i32, !dbg !2065
  %77 = icmp ne i32 %76, 0, !dbg !2065
  br i1 %77, label %78, label %260, !dbg !2066

78:                                               ; preds = %68
  %79 = load i8**, i8*** %4, align 8, !dbg !2067
  %80 = load i8*, i8** %79, align 8, !dbg !2068
  %81 = getelementptr inbounds i8, i8* %80, i64 3, !dbg !2069
  %82 = load i8, i8* %81, align 1, !dbg !2069
  %83 = zext i8 %82 to i64, !dbg !2070
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %83, !dbg !2070
  %85 = load i8, i8* %84, align 1, !dbg !2070
  %86 = zext i8 %85 to i32, !dbg !2070
  %87 = icmp ne i32 %86, 0, !dbg !2070
  br i1 %87, label %88, label %260, !dbg !2071

88:                                               ; preds = %78
  %89 = load i8**, i8*** %4, align 8, !dbg !2072
  %90 = load i8*, i8** %89, align 8, !dbg !2073
  %91 = getelementptr inbounds i8, i8* %90, i64 4, !dbg !2074
  %92 = load i8, i8* %91, align 1, !dbg !2074
  %93 = zext i8 %92 to i64, !dbg !2075
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %93, !dbg !2075
  %95 = load i8, i8* %94, align 1, !dbg !2075
  %96 = zext i8 %95 to i32, !dbg !2075
  %97 = icmp ne i32 %96, 0, !dbg !2075
  br i1 %97, label %98, label %260, !dbg !2076

98:                                               ; preds = %88
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2077, metadata !DIExpression()), !dbg !2079
  %99 = load i8**, i8*** %4, align 8, !dbg !2080
  %100 = load i8*, i8** %99, align 8, !dbg !2081
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !2082
  %102 = load i8, i8* %101, align 1, !dbg !2082
  %103 = zext i8 %102 to i64, !dbg !2083
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %103, !dbg !2083
  %105 = load i8, i8* %104, align 1, !dbg !2083
  %106 = zext i8 %105 to i32, !dbg !2083
  %107 = sub nsw i32 %106, 1, !dbg !2084
  %108 = shl i32 %107, 4, !dbg !2085
  %109 = load i8**, i8*** %4, align 8, !dbg !2086
  %110 = load i8*, i8** %109, align 8, !dbg !2087
  %111 = getelementptr inbounds i8, i8* %110, i64 2, !dbg !2088
  %112 = load i8, i8* %111, align 1, !dbg !2088
  %113 = zext i8 %112 to i64, !dbg !2089
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %113, !dbg !2089
  %115 = load i8, i8* %114, align 1, !dbg !2089
  %116 = zext i8 %115 to i32, !dbg !2089
  %117 = sub nsw i32 %116, 1, !dbg !2090
  %118 = or i32 %108, %117, !dbg !2091
  %119 = shl i32 %118, 8, !dbg !2092
  %120 = load i8**, i8*** %4, align 8, !dbg !2093
  %121 = load i8*, i8** %120, align 8, !dbg !2094
  %122 = getelementptr inbounds i8, i8* %121, i64 3, !dbg !2095
  %123 = load i8, i8* %122, align 1, !dbg !2095
  %124 = zext i8 %123 to i64, !dbg !2096
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %124, !dbg !2096
  %126 = load i8, i8* %125, align 1, !dbg !2096
  %127 = zext i8 %126 to i32, !dbg !2096
  %128 = sub nsw i32 %127, 1, !dbg !2097
  %129 = shl i32 %128, 4, !dbg !2098
  %130 = load i8**, i8*** %4, align 8, !dbg !2099
  %131 = load i8*, i8** %130, align 8, !dbg !2100
  %132 = getelementptr inbounds i8, i8* %131, i64 4, !dbg !2101
  %133 = load i8, i8* %132, align 1, !dbg !2101
  %134 = zext i8 %133 to i64, !dbg !2102
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %134, !dbg !2102
  %136 = load i8, i8* %135, align 1, !dbg !2102
  %137 = zext i8 %136 to i32, !dbg !2102
  %138 = sub nsw i32 %137, 1, !dbg !2103
  %139 = or i32 %129, %138, !dbg !2104
  %140 = or i32 %119, %139, !dbg !2105
  store i32 %140, i32* %5, align 4, !dbg !2079
  %141 = load i8**, i8*** %4, align 8, !dbg !2106
  %142 = load i8*, i8** %141, align 8, !dbg !2108
  %143 = getelementptr inbounds i8, i8* %142, i64 5, !dbg !2109
  %144 = load i8, i8* %143, align 1, !dbg !2109
  %145 = zext i8 %144 to i32, !dbg !2109
  %146 = icmp eq i32 %145, 92, !dbg !2110
  br i1 %146, label %147, label %248, !dbg !2111

147:                                              ; preds = %98
  %148 = load i8**, i8*** %4, align 8, !dbg !2112
  %149 = load i8*, i8** %148, align 8, !dbg !2113
  %150 = getelementptr inbounds i8, i8* %149, i64 6, !dbg !2114
  %151 = load i8, i8* %150, align 1, !dbg !2114
  %152 = zext i8 %151 to i32, !dbg !2114
  %153 = icmp eq i32 %152, 117, !dbg !2115
  br i1 %153, label %154, label %248, !dbg !2116

154:                                              ; preds = %147
  %155 = load i8**, i8*** %4, align 8, !dbg !2117
  %156 = load i8*, i8** %155, align 8, !dbg !2118
  %157 = getelementptr inbounds i8, i8* %156, i64 7, !dbg !2119
  %158 = load i8, i8* %157, align 1, !dbg !2119
  %159 = zext i8 %158 to i64, !dbg !2120
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %159, !dbg !2120
  %161 = load i8, i8* %160, align 1, !dbg !2120
  %162 = zext i8 %161 to i32, !dbg !2120
  %163 = icmp ne i32 %162, 0, !dbg !2120
  br i1 %163, label %164, label %248, !dbg !2121

164:                                              ; preds = %154
  %165 = load i8**, i8*** %4, align 8, !dbg !2122
  %166 = load i8*, i8** %165, align 8, !dbg !2123
  %167 = getelementptr inbounds i8, i8* %166, i64 8, !dbg !2124
  %168 = load i8, i8* %167, align 1, !dbg !2124
  %169 = zext i8 %168 to i64, !dbg !2125
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %169, !dbg !2125
  %171 = load i8, i8* %170, align 1, !dbg !2125
  %172 = zext i8 %171 to i32, !dbg !2125
  %173 = icmp ne i32 %172, 0, !dbg !2125
  br i1 %173, label %174, label %248, !dbg !2126

174:                                              ; preds = %164
  %175 = load i8**, i8*** %4, align 8, !dbg !2127
  %176 = load i8*, i8** %175, align 8, !dbg !2128
  %177 = getelementptr inbounds i8, i8* %176, i64 9, !dbg !2129
  %178 = load i8, i8* %177, align 1, !dbg !2129
  %179 = zext i8 %178 to i64, !dbg !2130
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %179, !dbg !2130
  %181 = load i8, i8* %180, align 1, !dbg !2130
  %182 = zext i8 %181 to i32, !dbg !2130
  %183 = icmp ne i32 %182, 0, !dbg !2130
  br i1 %183, label %184, label %248, !dbg !2131

184:                                              ; preds = %174
  %185 = load i8**, i8*** %4, align 8, !dbg !2132
  %186 = load i8*, i8** %185, align 8, !dbg !2133
  %187 = getelementptr inbounds i8, i8* %186, i64 10, !dbg !2134
  %188 = load i8, i8* %187, align 1, !dbg !2134
  %189 = zext i8 %188 to i64, !dbg !2135
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %189, !dbg !2135
  %191 = load i8, i8* %190, align 1, !dbg !2135
  %192 = zext i8 %191 to i32, !dbg !2135
  %193 = icmp ne i32 %192, 0, !dbg !2135
  br i1 %193, label %194, label %248, !dbg !2136

194:                                              ; preds = %184
  %195 = load i32, i32* %5, align 4, !dbg !2137
  %196 = and i32 %195, 1023, !dbg !2139
  %197 = shl i32 %196, 10, !dbg !2140
  store i32 %197, i32* %5, align 4, !dbg !2141
  %198 = load i8**, i8*** %4, align 8, !dbg !2142
  %199 = load i8*, i8** %198, align 8, !dbg !2143
  %200 = getelementptr inbounds i8, i8* %199, i64 7, !dbg !2144
  %201 = load i8, i8* %200, align 1, !dbg !2144
  %202 = zext i8 %201 to i64, !dbg !2145
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %202, !dbg !2145
  %204 = load i8, i8* %203, align 1, !dbg !2145
  %205 = zext i8 %204 to i32, !dbg !2145
  %206 = sub nsw i32 %205, 1, !dbg !2146
  %207 = shl i32 %206, 4, !dbg !2147
  %208 = load i8**, i8*** %4, align 8, !dbg !2148
  %209 = load i8*, i8** %208, align 8, !dbg !2149
  %210 = getelementptr inbounds i8, i8* %209, i64 8, !dbg !2150
  %211 = load i8, i8* %210, align 1, !dbg !2150
  %212 = zext i8 %211 to i64, !dbg !2151
  %213 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %212, !dbg !2151
  %214 = load i8, i8* %213, align 1, !dbg !2151
  %215 = zext i8 %214 to i32, !dbg !2151
  %216 = sub nsw i32 %215, 1, !dbg !2152
  %217 = or i32 %207, %216, !dbg !2153
  %218 = shl i32 %217, 8, !dbg !2154
  %219 = load i8**, i8*** %4, align 8, !dbg !2155
  %220 = load i8*, i8** %219, align 8, !dbg !2156
  %221 = getelementptr inbounds i8, i8* %220, i64 9, !dbg !2157
  %222 = load i8, i8* %221, align 1, !dbg !2157
  %223 = zext i8 %222 to i64, !dbg !2158
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %223, !dbg !2158
  %225 = load i8, i8* %224, align 1, !dbg !2158
  %226 = zext i8 %225 to i32, !dbg !2158
  %227 = sub nsw i32 %226, 1, !dbg !2159
  %228 = shl i32 %227, 4, !dbg !2160
  %229 = load i8**, i8*** %4, align 8, !dbg !2161
  %230 = load i8*, i8** %229, align 8, !dbg !2162
  %231 = getelementptr inbounds i8, i8* %230, i64 10, !dbg !2163
  %232 = load i8, i8* %231, align 1, !dbg !2163
  %233 = zext i8 %232 to i64, !dbg !2164
  %234 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %233, !dbg !2164
  %235 = load i8, i8* %234, align 1, !dbg !2164
  %236 = zext i8 %235 to i32, !dbg !2164
  %237 = sub nsw i32 %236, 1, !dbg !2165
  %238 = or i32 %228, %237, !dbg !2166
  %239 = or i32 %218, %238, !dbg !2167
  %240 = and i32 %239, 1023, !dbg !2168
  %241 = load i32, i32* %5, align 4, !dbg !2169
  %242 = or i32 %241, %240, !dbg !2169
  store i32 %242, i32* %5, align 4, !dbg !2169
  %243 = load i32, i32* %5, align 4, !dbg !2170
  %244 = add i32 %243, 65536, !dbg !2170
  store i32 %244, i32* %5, align 4, !dbg !2170
  %245 = load i8**, i8*** %4, align 8, !dbg !2171
  %246 = load i8*, i8** %245, align 8, !dbg !2172
  %247 = getelementptr inbounds i8, i8* %246, i64 6, !dbg !2172
  store i8* %247, i8** %245, align 8, !dbg !2172
  br label %248, !dbg !2173

248:                                              ; preds = %194, %184, %174, %164, %154, %147, %98
  %249 = load i8**, i8*** %3, align 8, !dbg !2174
  %250 = load i8*, i8** %249, align 8, !dbg !2175
  %251 = load i32, i32* %5, align 4, !dbg !2176
  %252 = call i32 @utf8_from_u32(i8* %250, i32 %251), !dbg !2177
  %253 = load i8**, i8*** %3, align 8, !dbg !2178
  %254 = load i8*, i8** %253, align 8, !dbg !2179
  %255 = sext i32 %252 to i64, !dbg !2179
  %256 = getelementptr inbounds i8, i8* %254, i64 %255, !dbg !2179
  store i8* %256, i8** %253, align 8, !dbg !2179
  %257 = load i8**, i8*** %4, align 8, !dbg !2180
  %258 = load i8*, i8** %257, align 8, !dbg !2181
  %259 = getelementptr inbounds i8, i8* %258, i64 5, !dbg !2181
  store i8* %259, i8** %257, align 8, !dbg !2181
  br label %365, !dbg !2182

260:                                              ; preds = %88, %78, %68, %58
  br label %353, !dbg !2183

261:                                              ; preds = %2
  %262 = load i8**, i8*** %4, align 8, !dbg !2184
  %263 = load i8*, i8** %262, align 8, !dbg !2187
  %264 = getelementptr inbounds i8, i8* %263, i64 1, !dbg !2188
  %265 = load i8, i8* %264, align 1, !dbg !2188
  %266 = zext i8 %265 to i64, !dbg !2189
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %266, !dbg !2189
  %268 = load i8, i8* %267, align 1, !dbg !2189
  %269 = zext i8 %268 to i32, !dbg !2189
  %270 = icmp ne i32 %269, 0, !dbg !2189
  br i1 %270, label %271, label %311, !dbg !2190

271:                                              ; preds = %261
  %272 = load i8**, i8*** %4, align 8, !dbg !2191
  %273 = load i8*, i8** %272, align 8, !dbg !2192
  %274 = getelementptr inbounds i8, i8* %273, i64 2, !dbg !2193
  %275 = load i8, i8* %274, align 1, !dbg !2193
  %276 = zext i8 %275 to i64, !dbg !2194
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %276, !dbg !2194
  %278 = load i8, i8* %277, align 1, !dbg !2194
  %279 = zext i8 %278 to i32, !dbg !2194
  %280 = icmp ne i32 %279, 0, !dbg !2194
  br i1 %280, label %281, label %311, !dbg !2195

281:                                              ; preds = %271
  %282 = load i8**, i8*** %4, align 8, !dbg !2196
  %283 = load i8*, i8** %282, align 8, !dbg !2198
  %284 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !2199
  %285 = load i8, i8* %284, align 1, !dbg !2199
  %286 = zext i8 %285 to i64, !dbg !2200
  %287 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %286, !dbg !2200
  %288 = load i8, i8* %287, align 1, !dbg !2200
  %289 = zext i8 %288 to i32, !dbg !2200
  %290 = sub nsw i32 %289, 1, !dbg !2201
  %291 = shl i32 %290, 4, !dbg !2202
  %292 = load i8**, i8*** %4, align 8, !dbg !2203
  %293 = load i8*, i8** %292, align 8, !dbg !2204
  %294 = getelementptr inbounds i8, i8* %293, i64 2, !dbg !2205
  %295 = load i8, i8* %294, align 1, !dbg !2205
  %296 = zext i8 %295 to i64, !dbg !2206
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @is_hex to [256 x i8]*), i64 0, i64 %296, !dbg !2206
  %298 = load i8, i8* %297, align 1, !dbg !2206
  %299 = zext i8 %298 to i32, !dbg !2206
  %300 = sub nsw i32 %299, 1, !dbg !2207
  %301 = or i32 %291, %300, !dbg !2208
  %302 = trunc i32 %301 to i8, !dbg !2209
  %303 = load i8**, i8*** %3, align 8, !dbg !2210
  %304 = load i8*, i8** %303, align 8, !dbg !2211
  store i8 %302, i8* %304, align 1, !dbg !2212
  %305 = load i8**, i8*** %3, align 8, !dbg !2213
  %306 = load i8*, i8** %305, align 8, !dbg !2214
  %307 = getelementptr inbounds i8, i8* %306, i32 1, !dbg !2214
  store i8* %307, i8** %305, align 8, !dbg !2214
  %308 = load i8**, i8*** %4, align 8, !dbg !2215
  %309 = load i8*, i8** %308, align 8, !dbg !2216
  %310 = getelementptr inbounds i8, i8* %309, i64 3, !dbg !2216
  store i8* %310, i8** %308, align 8, !dbg !2216
  br label %365, !dbg !2217

311:                                              ; preds = %271, %261
  br label %353, !dbg !2218

312:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %313 = load i8**, i8*** %4, align 8, !dbg !2219
  %314 = load i8*, i8** %313, align 8, !dbg !2222
  %315 = getelementptr inbounds i8, i8* %314, i64 1, !dbg !2223
  %316 = load i8, i8* %315, align 1, !dbg !2223
  %317 = zext i8 %316 to i32, !dbg !2223
  %318 = icmp sge i32 %317, 48, !dbg !2224
  br i1 %318, label %319, label %350, !dbg !2225

319:                                              ; preds = %312
  %320 = load i8**, i8*** %4, align 8, !dbg !2226
  %321 = load i8*, i8** %320, align 8, !dbg !2227
  %322 = getelementptr inbounds i8, i8* %321, i64 1, !dbg !2228
  %323 = load i8, i8* %322, align 1, !dbg !2228
  %324 = zext i8 %323 to i32, !dbg !2228
  %325 = icmp sle i32 %324, 55, !dbg !2229
  br i1 %325, label %326, label %350, !dbg !2230

326:                                              ; preds = %319
  %327 = load i8**, i8*** %4, align 8, !dbg !2231
  %328 = load i8*, i8** %327, align 8, !dbg !2233
  %329 = getelementptr inbounds i8, i8* %328, i64 0, !dbg !2234
  %330 = load i8, i8* %329, align 1, !dbg !2234
  %331 = zext i8 %330 to i32, !dbg !2234
  %332 = sub nsw i32 %331, 48, !dbg !2235
  %333 = shl i32 %332, 3, !dbg !2236
  %334 = load i8**, i8*** %4, align 8, !dbg !2237
  %335 = load i8*, i8** %334, align 8, !dbg !2238
  %336 = getelementptr inbounds i8, i8* %335, i64 1, !dbg !2239
  %337 = load i8, i8* %336, align 1, !dbg !2239
  %338 = zext i8 %337 to i32, !dbg !2239
  %339 = sub nsw i32 %338, 48, !dbg !2240
  %340 = or i32 %333, %339, !dbg !2241
  %341 = trunc i32 %340 to i8, !dbg !2242
  %342 = load i8**, i8*** %3, align 8, !dbg !2243
  %343 = load i8*, i8** %342, align 8, !dbg !2244
  store i8 %341, i8* %343, align 1, !dbg !2245
  %344 = load i8**, i8*** %3, align 8, !dbg !2246
  %345 = load i8*, i8** %344, align 8, !dbg !2247
  %346 = getelementptr inbounds i8, i8* %345, i32 1, !dbg !2247
  store i8* %346, i8** %344, align 8, !dbg !2247
  %347 = load i8**, i8*** %4, align 8, !dbg !2248
  %348 = load i8*, i8** %347, align 8, !dbg !2249
  %349 = getelementptr inbounds i8, i8* %348, i64 2, !dbg !2249
  store i8* %349, i8** %347, align 8, !dbg !2249
  br label %365, !dbg !2250

350:                                              ; preds = %319, %312
  br label %353, !dbg !2251

351:                                              ; preds = %2, %2, %2
  br label %352, !dbg !2252

352:                                              ; preds = %2, %351
  br label %353, !dbg !2252

353:                                              ; preds = %352, %350, %311, %260
  call void @llvm.dbg.label(metadata !2253), !dbg !2254
  %354 = load i8**, i8*** %4, align 8, !dbg !2255
  %355 = load i8*, i8** %354, align 8, !dbg !2256
  %356 = load i8, i8* %355, align 1, !dbg !2257
  %357 = load i8**, i8*** %3, align 8, !dbg !2258
  %358 = load i8*, i8** %357, align 8, !dbg !2259
  store i8 %356, i8* %358, align 1, !dbg !2260
  %359 = load i8**, i8*** %4, align 8, !dbg !2261
  %360 = load i8*, i8** %359, align 8, !dbg !2262
  %361 = getelementptr inbounds i8, i8* %360, i32 1, !dbg !2262
  store i8* %361, i8** %359, align 8, !dbg !2262
  %362 = load i8**, i8*** %3, align 8, !dbg !2263
  %363 = load i8*, i8** %362, align 8, !dbg !2264
  %364 = getelementptr inbounds i8, i8* %363, i32 1, !dbg !2264
  store i8* %364, i8** %362, align 8, !dbg !2264
  br label %365, !dbg !2265

365:                                              ; preds = %13, %22, %31, %40, %49, %248, %281, %353, %326
  ret void, !dbg !2266
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_from_u32(i8* %0, i32 %1) #0 !dbg !2267 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2270, metadata !DIExpression()), !dbg !2271
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2272, metadata !DIExpression()), !dbg !2273
  %6 = load i32, i32* %5, align 4, !dbg !2274
  %7 = icmp ule i32 %6, 127, !dbg !2276
  br i1 %7, label %8, label %12, !dbg !2277

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4, !dbg !2278
  %10 = trunc i32 %9 to i8, !dbg !2278
  %11 = load i8*, i8** %4, align 8, !dbg !2280
  store i8 %10, i8* %11, align 1, !dbg !2281
  store i32 1, i32* %3, align 4, !dbg !2282
  br label %81, !dbg !2282

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4, !dbg !2283
  %14 = icmp ule i32 %13, 2047, !dbg !2285
  br i1 %14, label %15, label %28, !dbg !2286

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4, !dbg !2287
  %17 = lshr i32 %16, 6, !dbg !2289
  %18 = or i32 192, %17, !dbg !2290
  %19 = trunc i32 %18 to i8, !dbg !2291
  %20 = load i8*, i8** %4, align 8, !dbg !2292
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !2292
  store i8* %21, i8** %4, align 8, !dbg !2292
  store i8 %19, i8* %20, align 1, !dbg !2293
  %22 = load i32, i32* %5, align 4, !dbg !2294
  %23 = and i32 %22, 63, !dbg !2295
  %24 = or i32 128, %23, !dbg !2296
  %25 = trunc i32 %24 to i8, !dbg !2297
  %26 = load i8*, i8** %4, align 8, !dbg !2298
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2298
  store i8* %27, i8** %4, align 8, !dbg !2298
  store i8 %25, i8* %26, align 1, !dbg !2299
  store i32 2, i32* %3, align 4, !dbg !2300
  br label %81, !dbg !2300

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4, !dbg !2301
  %30 = icmp ule i32 %29, 65535, !dbg !2303
  br i1 %30, label %31, label %51, !dbg !2304

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4, !dbg !2305
  %33 = lshr i32 %32, 12, !dbg !2307
  %34 = or i32 224, %33, !dbg !2308
  %35 = trunc i32 %34 to i8, !dbg !2309
  %36 = load i8*, i8** %4, align 8, !dbg !2310
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !2310
  store i8* %37, i8** %4, align 8, !dbg !2310
  store i8 %35, i8* %36, align 1, !dbg !2311
  %38 = load i32, i32* %5, align 4, !dbg !2312
  %39 = lshr i32 %38, 6, !dbg !2313
  %40 = and i32 %39, 63, !dbg !2314
  %41 = or i32 128, %40, !dbg !2315
  %42 = trunc i32 %41 to i8, !dbg !2316
  %43 = load i8*, i8** %4, align 8, !dbg !2317
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !2317
  store i8* %44, i8** %4, align 8, !dbg !2317
  store i8 %42, i8* %43, align 1, !dbg !2318
  %45 = load i32, i32* %5, align 4, !dbg !2319
  %46 = and i32 %45, 63, !dbg !2320
  %47 = or i32 128, %46, !dbg !2321
  %48 = trunc i32 %47 to i8, !dbg !2322
  %49 = load i8*, i8** %4, align 8, !dbg !2323
  %50 = getelementptr inbounds i8, i8* %49, i32 1, !dbg !2323
  store i8* %50, i8** %4, align 8, !dbg !2323
  store i8 %48, i8* %49, align 1, !dbg !2324
  store i32 3, i32* %3, align 4, !dbg !2325
  br label %81, !dbg !2325

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4, !dbg !2326
  %55 = lshr i32 %54, 18, !dbg !2327
  %56 = and i32 %55, 7, !dbg !2328
  %57 = or i32 240, %56, !dbg !2329
  %58 = trunc i32 %57 to i8, !dbg !2330
  %59 = load i8*, i8** %4, align 8, !dbg !2331
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !2331
  store i8* %60, i8** %4, align 8, !dbg !2331
  store i8 %58, i8* %59, align 1, !dbg !2332
  %61 = load i32, i32* %5, align 4, !dbg !2333
  %62 = lshr i32 %61, 12, !dbg !2334
  %63 = and i32 %62, 63, !dbg !2335
  %64 = or i32 128, %63, !dbg !2336
  %65 = trunc i32 %64 to i8, !dbg !2337
  %66 = load i8*, i8** %4, align 8, !dbg !2338
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !2338
  store i8* %67, i8** %4, align 8, !dbg !2338
  store i8 %65, i8* %66, align 1, !dbg !2339
  %68 = load i32, i32* %5, align 4, !dbg !2340
  %69 = lshr i32 %68, 6, !dbg !2341
  %70 = and i32 %69, 63, !dbg !2342
  %71 = or i32 128, %70, !dbg !2343
  %72 = trunc i32 %71 to i8, !dbg !2344
  %73 = load i8*, i8** %4, align 8, !dbg !2345
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !2345
  store i8* %74, i8** %4, align 8, !dbg !2345
  store i8 %72, i8* %73, align 1, !dbg !2346
  %75 = load i32, i32* %5, align 4, !dbg !2347
  %76 = and i32 %75, 63, !dbg !2348
  %77 = or i32 128, %76, !dbg !2349
  %78 = trunc i32 %77 to i8, !dbg !2350
  %79 = load i8*, i8** %4, align 8, !dbg !2351
  %80 = getelementptr inbounds i8, i8* %79, i32 1, !dbg !2351
  store i8* %80, i8** %4, align 8, !dbg !2351
  store i8 %78, i8* %79, align 1, !dbg !2352
  store i32 4, i32* %3, align 4, !dbg !2353
  br label %81, !dbg !2353

81:                                               ; preds = %53, %31, %15, %8
  %82 = load i32, i32* %3, align 4, !dbg !2354
  ret i32 %82, !dbg !2354
}

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #5

declare dso_local i32 @fiobj_hash_set(i64, i64, i64) #5

declare dso_local void @fiobj_ary_push(i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_json_stack_push(%struct.fio_json_stack_s* %0, i64 %1) #0 !dbg !2355 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_json_stack_s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_json_stack_s** %4, metadata !2358, metadata !DIExpression()), !dbg !2359
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2360, metadata !DIExpression()), !dbg !2361
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2362
  %7 = icmp ne %struct.fio_json_stack_s* %6, null, !dbg !2362
  br i1 %7, label %9, label %8, !dbg !2364

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !2365
  br label %45, !dbg !2365

9:                                                ; preds = %2
  %10 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2366
  %11 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %10, i32 0, i32 2, !dbg !2368
  %12 = load i64, i64* %11, align 8, !dbg !2368
  %13 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2369
  %14 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %13, i32 0, i32 1, !dbg !2370
  %15 = load i64, i64* %14, align 8, !dbg !2370
  %16 = icmp ule i64 %12, %15, !dbg !2371
  br i1 %16, label %17, label %19, !dbg !2372

17:                                               ; preds = %9
  %18 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2373
  call void @fio_json_stack___require_on_top(%struct.fio_json_stack_s* %18, i64 5), !dbg !2374
  br label %19, !dbg !2374

19:                                               ; preds = %17, %9
  %20 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2375
  %21 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %20, i32 0, i32 0, !dbg !2377
  %22 = load i64, i64* %21, align 8, !dbg !2377
  %23 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2378
  %24 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %23, i32 0, i32 1, !dbg !2379
  %25 = load i64, i64* %24, align 8, !dbg !2379
  %26 = icmp eq i64 %22, %25, !dbg !2380
  br i1 %26, label %27, label %32, !dbg !2381

27:                                               ; preds = %19
  %28 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2382
  %29 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %28, i32 0, i32 1, !dbg !2383
  store i64 0, i64* %29, align 8, !dbg !2384
  %30 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2385
  %31 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %30, i32 0, i32 0, !dbg !2386
  store i64 0, i64* %31, align 8, !dbg !2387
  br label %32, !dbg !2385

32:                                               ; preds = %27, %19
  %33 = load i64, i64* %5, align 8, !dbg !2388
  %34 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2388
  %35 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %34, i32 0, i32 3, !dbg !2388
  %36 = load i64*, i64** %35, align 8, !dbg !2388
  %37 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2388
  %38 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %37, i32 0, i32 1, !dbg !2388
  %39 = load i64, i64* %38, align 8, !dbg !2388
  %40 = getelementptr inbounds i64, i64* %36, i64 %39, !dbg !2388
  store i64 %33, i64* %40, align 8, !dbg !2388
  %41 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2389
  %42 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %41, i32 0, i32 1, !dbg !2390
  %43 = load i64, i64* %42, align 8, !dbg !2391
  %44 = add i64 %43, 1, !dbg !2391
  store i64 %44, i64* %42, align 8, !dbg !2391
  store i32 0, i32* %3, align 4, !dbg !2392
  br label %45, !dbg !2392

45:                                               ; preds = %32, %8
  %46 = load i32, i32* %3, align 4, !dbg !2393
  ret i32 %46, !dbg !2393
}

declare dso_local i64 @fiobj_hash_new() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_json_stack___require_on_top(%struct.fio_json_stack_s* %0, i64 %1) #0 !dbg !2394 {
  %3 = alloca %struct.fio_json_stack_s*, align 8
  %4 = alloca i64, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_json_stack_s** %3, metadata !2397, metadata !DIExpression()), !dbg !2398
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2399, metadata !DIExpression()), !dbg !2400
  %5 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8, !dbg !2401
  %6 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %5, i32 0, i32 1, !dbg !2403
  %7 = load i64, i64* %6, align 8, !dbg !2403
  %8 = load i64, i64* %4, align 8, !dbg !2404
  %9 = add i64 %7, %8, !dbg !2405
  %10 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8, !dbg !2406
  %11 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %10, i32 0, i32 2, !dbg !2407
  %12 = load i64, i64* %11, align 8, !dbg !2407
  %13 = icmp ult i64 %9, %12, !dbg !2408
  br i1 %13, label %14, label %15, !dbg !2409

14:                                               ; preds = %2
  br label %58, !dbg !2410

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8, !dbg !2411
  %17 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8, !dbg !2411
  %18 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %17, i32 0, i32 1, !dbg !2411
  %19 = load i64, i64* %18, align 8, !dbg !2411
  %20 = add i64 %16, %19, !dbg !2411
  %21 = and i64 %20, -2, !dbg !2411
  %22 = add i64 %21, 2, !dbg !2411
  store i64 %22, i64* %4, align 8, !dbg !2412
  %23 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8, !dbg !2413
  %24 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %23, i32 0, i32 3, !dbg !2413
  %25 = load i64*, i64** %24, align 8, !dbg !2413
  %26 = bitcast i64* %25 to i8*, !dbg !2413
  %27 = load i64, i64* %4, align 8, !dbg !2413
  %28 = mul i64 %27, 8, !dbg !2413
  %29 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8, !dbg !2413
  %30 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %29, i32 0, i32 1, !dbg !2413
  %31 = load i64, i64* %30, align 8, !dbg !2413
  %32 = mul i64 %31, 8, !dbg !2413
  %33 = call i8* @fio_realloc2(i8* %26, i64 %28, i64 %32), !dbg !2413
  %34 = ptrtoint i8* %33 to i64, !dbg !2413
  %35 = and i64 %34, 15, !dbg !2413
  %36 = icmp eq i64 %35, 0, !dbg !2413
  call void @llvm.assume(i1 %36), !dbg !2413
  %37 = bitcast i8* %33 to i64*, !dbg !2413
  %38 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8, !dbg !2414
  %39 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %38, i32 0, i32 3, !dbg !2415
  store i64* %37, i64** %39, align 8, !dbg !2416
  %40 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8, !dbg !2417
  %41 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %40, i32 0, i32 3, !dbg !2417
  %42 = load i64*, i64** %41, align 8, !dbg !2417
  %43 = icmp ne i64* %42, null, !dbg !2417
  br i1 %43, label %54, label %44, !dbg !2419

44:                                               ; preds = %15
  br label %45, !dbg !2420

45:                                               ; preds = %44
  %46 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !2422
  %47 = icmp sle i32 1, %46, !dbg !2422
  br i1 %47, label %48, label %49, !dbg !2425

48:                                               ; preds = %45
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0)), !dbg !2426
  br label %49, !dbg !2426

49:                                               ; preds = %48, %45
  br label %50, !dbg !2425

50:                                               ; preds = %49
  %51 = call i32 @kill(i32 0, i32 2) #2, !dbg !2420
  %52 = call i32* @__errno_location() #12, !dbg !2420
  %53 = load i32, i32* %52, align 4, !dbg !2420
  call void @exit(i32 %53) #11, !dbg !2420
  unreachable, !dbg !2420

54:                                               ; preds = %15
  %55 = load i64, i64* %4, align 8, !dbg !2428
  %56 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %3, align 8, !dbg !2429
  %57 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %56, i32 0, i32 2, !dbg !2430
  store i64 %55, i64* %57, align 8, !dbg !2431
  br label %58, !dbg !2432

58:                                               ; preds = %54, %14
  ret void, !dbg !2432
}

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 !dbg !2433 {
  ret i64 6, !dbg !2436
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_json_stack_pop(%struct.fio_json_stack_s* %0, i64* %1) #0 !dbg !2437 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_json_stack_s*, align 8
  %5 = alloca i64*, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_json_stack_s** %4, metadata !2440, metadata !DIExpression()), !dbg !2441
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !2442, metadata !DIExpression()), !dbg !2443
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2444
  %7 = call i64 @fio_json_stack_count(%struct.fio_json_stack_s* %6), !dbg !2446
  %8 = icmp ne i64 %7, 0, !dbg !2446
  br i1 %8, label %10, label %9, !dbg !2447

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !2448
  br label %28, !dbg !2448

10:                                               ; preds = %2
  %11 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2449
  %12 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %11, i32 0, i32 1, !dbg !2450
  %13 = load i64, i64* %12, align 8, !dbg !2451
  %14 = add i64 %13, -1, !dbg !2451
  store i64 %14, i64* %12, align 8, !dbg !2451
  %15 = load i64*, i64** %5, align 8, !dbg !2452
  %16 = icmp ne i64* %15, null, !dbg !2452
  br i1 %16, label %17, label %27, !dbg !2454

17:                                               ; preds = %10
  %18 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2455
  %19 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %18, i32 0, i32 3, !dbg !2455
  %20 = load i64*, i64** %19, align 8, !dbg !2455
  %21 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2455
  %22 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %21, i32 0, i32 1, !dbg !2455
  %23 = load i64, i64* %22, align 8, !dbg !2455
  %24 = getelementptr inbounds i64, i64* %20, i64 %23, !dbg !2455
  %25 = load i64, i64* %24, align 8, !dbg !2455
  %26 = load i64*, i64** %5, align 8, !dbg !2455
  store i64 %25, i64* %26, align 8, !dbg !2455
  br label %27, !dbg !2455

27:                                               ; preds = %17, %10
  store i32 0, i32* %3, align 4, !dbg !2456
  br label %28, !dbg !2456

28:                                               ; preds = %27, %9
  %29 = load i32, i32* %3, align 4, !dbg !2457
  ret i32 %29, !dbg !2457
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_json_stack_count(%struct.fio_json_stack_s* %0) #0 !dbg !2458 {
  %2 = alloca %struct.fio_json_stack_s*, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_json_stack_s** %2, metadata !2461, metadata !DIExpression()), !dbg !2462
  %3 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8, !dbg !2463
  %4 = icmp ne %struct.fio_json_stack_s* %3, null, !dbg !2463
  br i1 %4, label %5, label %13, !dbg !2463

5:                                                ; preds = %1
  %6 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8, !dbg !2464
  %7 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %6, i32 0, i32 1, !dbg !2465
  %8 = load i64, i64* %7, align 8, !dbg !2465
  %9 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %2, align 8, !dbg !2466
  %10 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %9, i32 0, i32 0, !dbg !2467
  %11 = load i64, i64* %10, align 8, !dbg !2467
  %12 = sub i64 %8, %11, !dbg !2468
  br label %14, !dbg !2463

13:                                               ; preds = %1
  br label %14, !dbg !2463

14:                                               ; preds = %13, %5
  %15 = phi i64 [ %12, %5 ], [ 0, %13 ], !dbg !2463
  ret i64 %15, !dbg !2469
}

declare dso_local i64 @fiobj_ary_new() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 !dbg !2470 {
  ret i64 22, !dbg !2471
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 !dbg !2472 {
  ret i64 38, !dbg !2473
}

declare dso_local i64 @fiobj_float_new(double) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_num_new(i64 %0) #0 !dbg !2474 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2478, metadata !DIExpression()), !dbg !2479
  %6 = load i64, i64* %3, align 8, !dbg !2480
  %7 = and i64 %6, -4611686018427387904, !dbg !2482
  %8 = icmp eq i64 %7, 0, !dbg !2483
  br i1 %8, label %13, label %9, !dbg !2484

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !2485
  %11 = and i64 %10, -4611686018427387904, !dbg !2486
  %12 = icmp eq i64 %11, -4611686018427387904, !dbg !2487
  br i1 %12, label %13, label %23, !dbg !2488

13:                                               ; preds = %9, %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2489, metadata !DIExpression()), !dbg !2492
  %14 = load i64, i64* %3, align 8, !dbg !2493
  %15 = and i64 %14, 9223372036854775807, !dbg !2494
  store i64 %15, i64* %4, align 8, !dbg !2492
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2495, metadata !DIExpression()), !dbg !2496
  %16 = load i64, i64* %3, align 8, !dbg !2497
  %17 = and i64 %16, -9223372036854775808, !dbg !2498
  store i64 %17, i64* %5, align 8, !dbg !2496
  %18 = load i64, i64* %4, align 8, !dbg !2499
  %19 = shl i64 %18, 1, !dbg !2500
  %20 = load i64, i64* %5, align 8, !dbg !2501
  %21 = or i64 %19, %20, !dbg !2502
  %22 = or i64 %21, 1, !dbg !2503
  store i64 %22, i64* %2, align 8, !dbg !2504
  br label %26, !dbg !2504

23:                                               ; preds = %9
  %24 = load i64, i64* %3, align 8, !dbg !2505
  %25 = call i64 @fiobj_num_new_bignum(i64 %24), !dbg !2506
  store i64 %25, i64* %2, align 8, !dbg !2507
  br label %26, !dbg !2507

26:                                               ; preds = %23, %13
  %27 = load i64, i64* %2, align 8, !dbg !2508
  ret i64 %27, !dbg !2508
}

declare dso_local i64 @fiobj_num_new_bignum(i64) #5

declare dso_local void @fiobj_free_complex_object(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_json_stack___rel2absolute(%struct.fio_json_stack_s* %0, i64 %1) #0 !dbg !2509 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_json_stack_s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_json_stack_s* %0, %struct.fio_json_stack_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_json_stack_s** %4, metadata !2512, metadata !DIExpression()), !dbg !2513
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2514, metadata !DIExpression()), !dbg !2515
  %6 = load i64, i64* %5, align 8, !dbg !2516
  %7 = icmp sge i64 %6, 0, !dbg !2518
  br i1 %7, label %8, label %10, !dbg !2519

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !2520
  store i64 %9, i64* %3, align 8, !dbg !2521
  br label %25, !dbg !2521

10:                                               ; preds = %2
  %11 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2522
  %12 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %11, i32 0, i32 1, !dbg !2523
  %13 = load i64, i64* %12, align 8, !dbg !2523
  %14 = load %struct.fio_json_stack_s*, %struct.fio_json_stack_s** %4, align 8, !dbg !2524
  %15 = getelementptr inbounds %struct.fio_json_stack_s, %struct.fio_json_stack_s* %14, i32 0, i32 0, !dbg !2525
  %16 = load i64, i64* %15, align 8, !dbg !2525
  %17 = sub i64 %13, %16, !dbg !2526
  %18 = load i64, i64* %5, align 8, !dbg !2527
  %19 = add i64 %18, %17, !dbg !2527
  store i64 %19, i64* %5, align 8, !dbg !2527
  %20 = load i64, i64* %5, align 8, !dbg !2528
  %21 = icmp sge i64 %20, 0, !dbg !2530
  br i1 %21, label %22, label %24, !dbg !2531

22:                                               ; preds = %10
  %23 = load i64, i64* %5, align 8, !dbg !2532
  store i64 %23, i64* %3, align 8, !dbg !2533
  br label %25, !dbg !2533

24:                                               ; preds = %10
  store i64 0, i64* %3, align 8, !dbg !2534
  br label %25, !dbg !2534

25:                                               ; preds = %24, %22, %8
  %26 = load i64, i64* %3, align 8, !dbg !2535
  ret i64 %26, !dbg !2535
}

declare dso_local void @fio_free(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !2536 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2539, metadata !DIExpression()), !dbg !2540
  %4 = load i64, i64* %3, align 8, !dbg !2541
  %5 = icmp ne i64 %4, 0, !dbg !2541
  br i1 %5, label %7, label %6, !dbg !2543

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !2544
  br label %35, !dbg !2544

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !2545
  %9 = and i64 %8, 1, !dbg !2547
  %10 = icmp ne i64 %9, 0, !dbg !2547
  br i1 %10, label %11, label %12, !dbg !2548

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !2549
  br label %35, !dbg !2549

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !2550
  %14 = and i64 %13, 6, !dbg !2552
  %15 = icmp eq i64 %14, 6, !dbg !2553
  br i1 %15, label %16, label %19, !dbg !2554

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !2555
  %18 = trunc i64 %17 to i8, !dbg !2556
  store i8 %18, i8* %2, align 1, !dbg !2557
  br label %35, !dbg !2557

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !2558
  %21 = and i64 %20, 6, !dbg !2560
  %22 = icmp eq i64 %21, 2, !dbg !2561
  br i1 %22, label %23, label %24, !dbg !2562

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !2563
  br label %35, !dbg !2563

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !2564
  %26 = and i64 %25, 6, !dbg !2566
  %27 = icmp eq i64 %26, 4, !dbg !2567
  br i1 %27, label %28, label %29, !dbg !2568

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !2569
  br label %35, !dbg !2569

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !2570
  %31 = and i64 %30, -8, !dbg !2570
  %32 = inttoptr i64 %31 to i8*, !dbg !2570
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !2571
  %34 = load i8, i8* %33, align 1, !dbg !2571
  store i8 %34, i8* %2, align 1, !dbg !2572
  br label %35, !dbg !2572

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !2573
  ret i8 %36, !dbg !2573
}

declare dso_local i64 @fiobj_hash_key_in_loop() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_safe_str(i64 %0, i64 %1) #0 !dbg !2574 {
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
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2577, metadata !DIExpression()), !dbg !2578
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2579, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %5, metadata !2581, metadata !DIExpression()), !dbg !2582
  %16 = load i64, i64* %4, align 8, !dbg !2583
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %16), !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %6, metadata !2585, metadata !DIExpression()), !dbg !2586
  %17 = load i64, i64* %3, align 8, !dbg !2587
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %6, i64 %17), !dbg !2588
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !2589
  %19 = load i8*, i8** %18, align 8, !dbg !2589
  %20 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !2590
  %21 = load i64, i64* %20, align 8, !dbg !2590
  %22 = getelementptr inbounds i8, i8* %19, i64 %21, !dbg !2591
  store i8 34, i8* %22, align 1, !dbg !2592
  %23 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !2593
  %24 = load i64, i64* %23, align 8, !dbg !2594
  %25 = add i64 %24, 1, !dbg !2594
  store i64 %25, i64* %23, align 8, !dbg !2594
  %26 = load i64, i64* %3, align 8, !dbg !2595
  %27 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !2596
  %28 = load i64, i64* %27, align 8, !dbg !2596
  call void @fiobj_str_resize(i64 %26, i64 %28), !dbg !2597
  %29 = load i64, i64* %3, align 8, !dbg !2598
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %29), !dbg !2599
  %30 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !2599
  %31 = bitcast %struct.fio_str_info_s* %7 to i8*, !dbg !2599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false), !dbg !2599
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2600, metadata !DIExpression()), !dbg !2602
  %32 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2, !dbg !2603
  %33 = load i8*, i8** %32, align 8, !dbg !2603
  store i8* %33, i8** %8, align 8, !dbg !2602
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2604, metadata !DIExpression()), !dbg !2605
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1, !dbg !2606
  %35 = load i64, i64* %34, align 8, !dbg !2606
  store i64 %35, i64* %9, align 8, !dbg !2605
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2607, metadata !DIExpression()), !dbg !2608
  %36 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !2609
  %37 = load i64, i64* %36, align 8, !dbg !2609
  store i64 %37, i64* %10, align 8, !dbg !2608
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2610, metadata !DIExpression()), !dbg !2611
  store i64 0, i64* %11, align 8, !dbg !2611
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2612, metadata !DIExpression()), !dbg !2613
  %38 = load i64, i64* %3, align 8, !dbg !2614
  %39 = call i64 @fiobj_str_capa(i64 %38), !dbg !2615
  store i64 %39, i64* %12, align 8, !dbg !2613
  %40 = load i64, i64* %12, align 8, !dbg !2616
  %41 = load i64, i64* %10, align 8, !dbg !2618
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1, !dbg !2619
  %43 = load i64, i64* %42, align 8, !dbg !2619
  %44 = add i64 %41, %43, !dbg !2620
  %45 = add i64 %44, 64, !dbg !2621
  %46 = icmp ule i64 %40, %45, !dbg !2622
  br i1 %46, label %47, label %58, !dbg !2623

47:                                               ; preds = %2
  %48 = load i64, i64* %3, align 8, !dbg !2624
  %49 = load i64, i64* %10, align 8, !dbg !2628
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1, !dbg !2629
  %51 = load i64, i64* %50, align 8, !dbg !2629
  %52 = add i64 %49, %51, !dbg !2630
  %53 = add i64 %52, 64, !dbg !2631
  %54 = call i64 @fiobj_str_capa_assert(i64 %48, i64 %53), !dbg !2632
  store i64 %54, i64* %12, align 8, !dbg !2633
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %13, metadata !2634, metadata !DIExpression()), !dbg !2635
  %55 = load i64, i64* %3, align 8, !dbg !2636
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %13, i64 %55), !dbg !2637
  %56 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !2638
  %57 = bitcast %struct.fio_str_info_s* %13 to i8*, !dbg !2638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false), !dbg !2638
  br label %58, !dbg !2639

58:                                               ; preds = %47, %2
  br label %59, !dbg !2640

59:                                               ; preds = %267, %58
  %60 = load i64, i64* %9, align 8, !dbg !2641
  %61 = icmp ne i64 %60, 0, !dbg !2640
  br i1 %61, label %62, label %268, !dbg !2640

62:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2642, metadata !DIExpression()), !dbg !2645
  %63 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !2646
  %64 = load i8*, i8** %63, align 8, !dbg !2646
  store i8* %64, i8** %14, align 8, !dbg !2645
  br label %65, !dbg !2647

65:                                               ; preds = %88, %62
  %66 = load i64, i64* %9, align 8, !dbg !2648
  %67 = icmp ne i64 %66, 0, !dbg !2648
  br i1 %67, label %68, label %86, !dbg !2649

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8, !dbg !2650
  %70 = getelementptr inbounds i8, i8* %69, i64 0, !dbg !2650
  %71 = load i8, i8* %70, align 1, !dbg !2650
  %72 = zext i8 %71 to i32, !dbg !2650
  %73 = icmp sgt i32 %72, 32, !dbg !2651
  br i1 %73, label %74, label %86, !dbg !2652

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8, !dbg !2653
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !2653
  %77 = load i8, i8* %76, align 1, !dbg !2653
  %78 = zext i8 %77 to i32, !dbg !2653
  %79 = icmp ne i32 %78, 34, !dbg !2654
  br i1 %79, label %80, label %86, !dbg !2655

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8, !dbg !2656
  %82 = getelementptr inbounds i8, i8* %81, i64 0, !dbg !2656
  %83 = load i8, i8* %82, align 1, !dbg !2656
  %84 = zext i8 %83 to i32, !dbg !2656
  %85 = icmp ne i32 %84, 92, !dbg !2657
  br label %86

86:                                               ; preds = %80, %74, %68, %65
  %87 = phi i1 [ false, %74 ], [ false, %68 ], [ false, %65 ], [ %85, %80 ], !dbg !2658
  br i1 %87, label %88, label %98, !dbg !2647

88:                                               ; preds = %86
  %89 = load i64, i64* %9, align 8, !dbg !2659
  %90 = add i64 %89, -1, !dbg !2659
  store i64 %90, i64* %9, align 8, !dbg !2659
  %91 = load i8*, i8** %8, align 8, !dbg !2661
  %92 = getelementptr inbounds i8, i8* %91, i32 1, !dbg !2661
  store i8* %92, i8** %8, align 8, !dbg !2661
  %93 = load i8, i8* %91, align 1, !dbg !2662
  %94 = load i8*, i8** %14, align 8, !dbg !2663
  %95 = load i64, i64* %10, align 8, !dbg !2664
  %96 = add i64 %95, 1, !dbg !2664
  store i64 %96, i64* %10, align 8, !dbg !2664
  %97 = getelementptr inbounds i8, i8* %94, i64 %95, !dbg !2663
  store i8 %93, i8* %97, align 1, !dbg !2665
  br label %65, !dbg !2647, !llvm.loop !2666

98:                                               ; preds = %86
  %99 = load i64, i64* %9, align 8, !dbg !2668
  %100 = icmp ne i64 %99, 0, !dbg !2668
  br i1 %100, label %102, label %101, !dbg !2670

101:                                              ; preds = %98
  br label %268, !dbg !2671

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8, !dbg !2672
  %104 = getelementptr inbounds i8, i8* %103, i64 0, !dbg !2672
  %105 = load i8, i8* %104, align 1, !dbg !2672
  %106 = zext i8 %105 to i32, !dbg !2672
  switch i32 %106, label %176 [
    i32 8, label %107
    i32 12, label %118
    i32 10, label %129
    i32 13, label %140
    i32 9, label %151
    i32 34, label %162
    i32 92, label %162
    i32 47, label %162
  ], !dbg !2673

107:                                              ; preds = %102
  %108 = load i8*, i8** %14, align 8, !dbg !2674
  %109 = load i64, i64* %10, align 8, !dbg !2676
  %110 = add i64 %109, 1, !dbg !2676
  store i64 %110, i64* %10, align 8, !dbg !2676
  %111 = getelementptr inbounds i8, i8* %108, i64 %109, !dbg !2674
  store i8 92, i8* %111, align 1, !dbg !2677
  %112 = load i8*, i8** %14, align 8, !dbg !2678
  %113 = load i64, i64* %10, align 8, !dbg !2679
  %114 = add i64 %113, 1, !dbg !2679
  store i64 %114, i64* %10, align 8, !dbg !2679
  %115 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !2678
  store i8 98, i8* %115, align 1, !dbg !2680
  %116 = load i64, i64* %11, align 8, !dbg !2681
  %117 = add i64 %116, 1, !dbg !2681
  store i64 %117, i64* %11, align 8, !dbg !2681
  br label %234, !dbg !2682

118:                                              ; preds = %102
  %119 = load i8*, i8** %14, align 8, !dbg !2683
  %120 = load i64, i64* %10, align 8, !dbg !2684
  %121 = add i64 %120, 1, !dbg !2684
  store i64 %121, i64* %10, align 8, !dbg !2684
  %122 = getelementptr inbounds i8, i8* %119, i64 %120, !dbg !2683
  store i8 92, i8* %122, align 1, !dbg !2685
  %123 = load i8*, i8** %14, align 8, !dbg !2686
  %124 = load i64, i64* %10, align 8, !dbg !2687
  %125 = add i64 %124, 1, !dbg !2687
  store i64 %125, i64* %10, align 8, !dbg !2687
  %126 = getelementptr inbounds i8, i8* %123, i64 %124, !dbg !2686
  store i8 102, i8* %126, align 1, !dbg !2688
  %127 = load i64, i64* %11, align 8, !dbg !2689
  %128 = add i64 %127, 1, !dbg !2689
  store i64 %128, i64* %11, align 8, !dbg !2689
  br label %234, !dbg !2690

129:                                              ; preds = %102
  %130 = load i8*, i8** %14, align 8, !dbg !2691
  %131 = load i64, i64* %10, align 8, !dbg !2692
  %132 = add i64 %131, 1, !dbg !2692
  store i64 %132, i64* %10, align 8, !dbg !2692
  %133 = getelementptr inbounds i8, i8* %130, i64 %131, !dbg !2691
  store i8 92, i8* %133, align 1, !dbg !2693
  %134 = load i8*, i8** %14, align 8, !dbg !2694
  %135 = load i64, i64* %10, align 8, !dbg !2695
  %136 = add i64 %135, 1, !dbg !2695
  store i64 %136, i64* %10, align 8, !dbg !2695
  %137 = getelementptr inbounds i8, i8* %134, i64 %135, !dbg !2694
  store i8 110, i8* %137, align 1, !dbg !2696
  %138 = load i64, i64* %11, align 8, !dbg !2697
  %139 = add i64 %138, 1, !dbg !2697
  store i64 %139, i64* %11, align 8, !dbg !2697
  br label %234, !dbg !2698

140:                                              ; preds = %102
  %141 = load i8*, i8** %14, align 8, !dbg !2699
  %142 = load i64, i64* %10, align 8, !dbg !2700
  %143 = add i64 %142, 1, !dbg !2700
  store i64 %143, i64* %10, align 8, !dbg !2700
  %144 = getelementptr inbounds i8, i8* %141, i64 %142, !dbg !2699
  store i8 92, i8* %144, align 1, !dbg !2701
  %145 = load i8*, i8** %14, align 8, !dbg !2702
  %146 = load i64, i64* %10, align 8, !dbg !2703
  %147 = add i64 %146, 1, !dbg !2703
  store i64 %147, i64* %10, align 8, !dbg !2703
  %148 = getelementptr inbounds i8, i8* %145, i64 %146, !dbg !2702
  store i8 114, i8* %148, align 1, !dbg !2704
  %149 = load i64, i64* %11, align 8, !dbg !2705
  %150 = add i64 %149, 1, !dbg !2705
  store i64 %150, i64* %11, align 8, !dbg !2705
  br label %234, !dbg !2706

151:                                              ; preds = %102
  %152 = load i8*, i8** %14, align 8, !dbg !2707
  %153 = load i64, i64* %10, align 8, !dbg !2708
  %154 = add i64 %153, 1, !dbg !2708
  store i64 %154, i64* %10, align 8, !dbg !2708
  %155 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !2707
  store i8 92, i8* %155, align 1, !dbg !2709
  %156 = load i8*, i8** %14, align 8, !dbg !2710
  %157 = load i64, i64* %10, align 8, !dbg !2711
  %158 = add i64 %157, 1, !dbg !2711
  store i64 %158, i64* %10, align 8, !dbg !2711
  %159 = getelementptr inbounds i8, i8* %156, i64 %157, !dbg !2710
  store i8 116, i8* %159, align 1, !dbg !2712
  %160 = load i64, i64* %11, align 8, !dbg !2713
  %161 = add i64 %160, 1, !dbg !2713
  store i64 %161, i64* %11, align 8, !dbg !2713
  br label %234, !dbg !2714

162:                                              ; preds = %102, %102, %102
  %163 = load i8*, i8** %14, align 8, !dbg !2715
  %164 = load i64, i64* %10, align 8, !dbg !2716
  %165 = add i64 %164, 1, !dbg !2716
  store i64 %165, i64* %10, align 8, !dbg !2716
  %166 = getelementptr inbounds i8, i8* %163, i64 %164, !dbg !2715
  store i8 92, i8* %166, align 1, !dbg !2717
  %167 = load i8*, i8** %8, align 8, !dbg !2718
  %168 = getelementptr inbounds i8, i8* %167, i64 0, !dbg !2718
  %169 = load i8, i8* %168, align 1, !dbg !2718
  %170 = load i8*, i8** %14, align 8, !dbg !2719
  %171 = load i64, i64* %10, align 8, !dbg !2720
  %172 = add i64 %171, 1, !dbg !2720
  store i64 %172, i64* %10, align 8, !dbg !2720
  %173 = getelementptr inbounds i8, i8* %170, i64 %171, !dbg !2719
  store i8 %169, i8* %173, align 1, !dbg !2721
  %174 = load i64, i64* %11, align 8, !dbg !2722
  %175 = add i64 %174, 1, !dbg !2722
  store i64 %175, i64* %11, align 8, !dbg !2722
  br label %234, !dbg !2723

176:                                              ; preds = %102
  %177 = load i8*, i8** %8, align 8, !dbg !2724
  %178 = getelementptr inbounds i8, i8* %177, i64 0, !dbg !2724
  %179 = load i8, i8* %178, align 1, !dbg !2724
  %180 = zext i8 %179 to i32, !dbg !2724
  %181 = icmp sle i32 %180, 31, !dbg !2726
  br i1 %181, label %182, label %225, !dbg !2727

182:                                              ; preds = %176
  %183 = load i8*, i8** %14, align 8, !dbg !2728
  %184 = load i64, i64* %10, align 8, !dbg !2730
  %185 = add i64 %184, 1, !dbg !2730
  store i64 %185, i64* %10, align 8, !dbg !2730
  %186 = getelementptr inbounds i8, i8* %183, i64 %184, !dbg !2728
  store i8 92, i8* %186, align 1, !dbg !2731
  %187 = load i8*, i8** %14, align 8, !dbg !2732
  %188 = load i64, i64* %10, align 8, !dbg !2733
  %189 = add i64 %188, 1, !dbg !2733
  store i64 %189, i64* %10, align 8, !dbg !2733
  %190 = getelementptr inbounds i8, i8* %187, i64 %188, !dbg !2732
  store i8 117, i8* %190, align 1, !dbg !2734
  %191 = load i8*, i8** %14, align 8, !dbg !2735
  %192 = load i64, i64* %10, align 8, !dbg !2736
  %193 = add i64 %192, 1, !dbg !2736
  store i64 %193, i64* %10, align 8, !dbg !2736
  %194 = getelementptr inbounds i8, i8* %191, i64 %192, !dbg !2735
  store i8 48, i8* %194, align 1, !dbg !2737
  %195 = load i8*, i8** %14, align 8, !dbg !2738
  %196 = load i64, i64* %10, align 8, !dbg !2739
  %197 = add i64 %196, 1, !dbg !2739
  store i64 %197, i64* %10, align 8, !dbg !2739
  %198 = getelementptr inbounds i8, i8* %195, i64 %196, !dbg !2738
  store i8 48, i8* %198, align 1, !dbg !2740
  %199 = load i8*, i8** %8, align 8, !dbg !2741
  %200 = getelementptr inbounds i8, i8* %199, i64 0, !dbg !2741
  %201 = load i8, i8* %200, align 1, !dbg !2741
  %202 = zext i8 %201 to i32, !dbg !2741
  %203 = ashr i32 %202, 4, !dbg !2742
  %204 = sext i32 %203 to i64, !dbg !2743
  %205 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %204, !dbg !2743
  %206 = load i8, i8* %205, align 1, !dbg !2743
  %207 = load i8*, i8** %14, align 8, !dbg !2744
  %208 = load i64, i64* %10, align 8, !dbg !2745
  %209 = add i64 %208, 1, !dbg !2745
  store i64 %209, i64* %10, align 8, !dbg !2745
  %210 = getelementptr inbounds i8, i8* %207, i64 %208, !dbg !2744
  store i8 %206, i8* %210, align 1, !dbg !2746
  %211 = load i8*, i8** %8, align 8, !dbg !2747
  %212 = getelementptr inbounds i8, i8* %211, i64 0, !dbg !2747
  %213 = load i8, i8* %212, align 1, !dbg !2747
  %214 = zext i8 %213 to i32, !dbg !2747
  %215 = and i32 %214, 15, !dbg !2748
  %216 = sext i32 %215 to i64, !dbg !2749
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %216, !dbg !2749
  %218 = load i8, i8* %217, align 1, !dbg !2749
  %219 = load i8*, i8** %14, align 8, !dbg !2750
  %220 = load i64, i64* %10, align 8, !dbg !2751
  %221 = add i64 %220, 1, !dbg !2751
  store i64 %221, i64* %10, align 8, !dbg !2751
  %222 = getelementptr inbounds i8, i8* %219, i64 %220, !dbg !2750
  store i8 %218, i8* %222, align 1, !dbg !2752
  %223 = load i64, i64* %11, align 8, !dbg !2753
  %224 = add i64 %223, 4, !dbg !2753
  store i64 %224, i64* %11, align 8, !dbg !2753
  br label %233, !dbg !2754

225:                                              ; preds = %176
  %226 = load i8*, i8** %8, align 8, !dbg !2755
  %227 = getelementptr inbounds i8, i8* %226, i64 0, !dbg !2755
  %228 = load i8, i8* %227, align 1, !dbg !2755
  %229 = load i8*, i8** %14, align 8, !dbg !2756
  %230 = load i64, i64* %10, align 8, !dbg !2757
  %231 = add i64 %230, 1, !dbg !2757
  store i64 %231, i64* %10, align 8, !dbg !2757
  %232 = getelementptr inbounds i8, i8* %229, i64 %230, !dbg !2756
  store i8 %228, i8* %232, align 1, !dbg !2758
  br label %233

233:                                              ; preds = %225, %182
  br label %234, !dbg !2759

234:                                              ; preds = %233, %162, %151, %140, %129, %118, %107
  %235 = load i8*, i8** %8, align 8, !dbg !2760
  %236 = getelementptr inbounds i8, i8* %235, i32 1, !dbg !2760
  store i8* %236, i8** %8, align 8, !dbg !2760
  %237 = load i64, i64* %9, align 8, !dbg !2761
  %238 = add i64 %237, -1, !dbg !2761
  store i64 %238, i64* %9, align 8, !dbg !2761
  %239 = load i64, i64* %11, align 8, !dbg !2762
  %240 = icmp uge i64 %239, 48, !dbg !2764
  br i1 %240, label %241, label %267, !dbg !2765

241:                                              ; preds = %234
  %242 = load i64, i64* %12, align 8, !dbg !2766
  %243 = load i64, i64* %10, align 8, !dbg !2767
  %244 = load i64, i64* %9, align 8, !dbg !2768
  %245 = add i64 %243, %244, !dbg !2769
  %246 = add i64 %245, 64, !dbg !2770
  %247 = icmp ule i64 %242, %246, !dbg !2771
  br i1 %247, label %248, label %267, !dbg !2772

248:                                              ; preds = %241
  %249 = load i8*, i8** %14, align 8, !dbg !2773
  %250 = load i64, i64* %10, align 8, !dbg !2775
  %251 = getelementptr inbounds i8, i8* %249, i64 %250, !dbg !2773
  store i8 0, i8* %251, align 1, !dbg !2776
  %252 = load i64, i64* %3, align 8, !dbg !2777
  %253 = load i64, i64* %10, align 8, !dbg !2778
  call void @fiobj_str_resize(i64 %252, i64 %253), !dbg !2779
  %254 = load i64, i64* %3, align 8, !dbg !2780
  %255 = load i64, i64* %10, align 8, !dbg !2781
  %256 = load i64, i64* %9, align 8, !dbg !2782
  %257 = add i64 %255, %256, !dbg !2783
  %258 = add i64 %257, 64, !dbg !2784
  %259 = call i64 @fiobj_str_capa_assert(i64 %254, i64 %258), !dbg !2785
  %260 = load i64, i64* %3, align 8, !dbg !2786
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %15, i64 %260), !dbg !2787
  %261 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !2787
  %262 = bitcast %struct.fio_str_info_s* %15 to i8*, !dbg !2787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 24, i1 false), !dbg !2787
  %263 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !2788
  %264 = load i8*, i8** %263, align 8, !dbg !2788
  store i8* %264, i8** %14, align 8, !dbg !2789
  %265 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 0, !dbg !2790
  %266 = load i64, i64* %265, align 8, !dbg !2790
  store i64 %266, i64* %12, align 8, !dbg !2791
  store i64 0, i64* %11, align 8, !dbg !2792
  br label %267, !dbg !2793

267:                                              ; preds = %248, %241, %234
  br label %59, !dbg !2640, !llvm.loop !2794

268:                                              ; preds = %101, %59
  %269 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !2796
  %270 = load i8*, i8** %269, align 8, !dbg !2796
  %271 = load i64, i64* %10, align 8, !dbg !2797
  %272 = add i64 %271, 1, !dbg !2797
  store i64 %272, i64* %10, align 8, !dbg !2797
  %273 = getelementptr inbounds i8, i8* %270, i64 %271, !dbg !2798
  store i8 34, i8* %273, align 1, !dbg !2799
  %274 = load i64, i64* %3, align 8, !dbg !2800
  %275 = load i64, i64* %10, align 8, !dbg !2801
  call void @fiobj_str_resize(i64 %274, i64 %275), !dbg !2802
  ret void, !dbg !2803
}

declare dso_local i64 @fiobj_str_concat(i64, i64) #5

declare dso_local i64 @fiobj_ary_count(i64) #5

declare dso_local i64 @fiobj_hash_count(i64) #5

declare dso_local i64 @fiobj_str_capa_assert(i64, i64) #5

declare dso_local i64 @fiobj_str_capa(i64) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind willreturn }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!108, !109, !110}
!llvm.ident = !{!111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !57, line: 433, type: !107, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !79, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fiobj_json.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 50, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "../include/fiobject.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "FIOBJ_T_NUMBER", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "FIOBJ_T_NULL", value: 6, isUnsigned: true)
!11 = !DIEnumerator(name: "FIOBJ_T_TRUE", value: 22, isUnsigned: true)
!12 = !DIEnumerator(name: "FIOBJ_T_FALSE", value: 38, isUnsigned: true)
!13 = !DIEnumerator(name: "FIOBJ_T_FLOAT", value: 39, isUnsigned: true)
!14 = !DIEnumerator(name: "FIOBJ_T_STRING", value: 40, isUnsigned: true)
!15 = !DIEnumerator(name: "FIOBJ_T_ARRAY", value: 41, isUnsigned: true)
!16 = !DIEnumerator(name: "FIOBJ_T_HASH", value: 42, isUnsigned: true)
!17 = !DIEnumerator(name: "FIOBJ_T_DATA", value: 43, isUnsigned: true)
!18 = !DIEnumerator(name: "FIOBJ_T_UNKNOWN", value: 44, isUnsigned: true)
!19 = !{!20, !25, !28, !31, !33, !36, !66, !68, !52, !69, !75, !76, !77, !29}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 38, baseType: !7)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !26, line: 90, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !27)
!32 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !27)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_json_parser_s", file: !3, line: 43, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 36, size: 576, elements: !39)
!39 = !{!40, !51, !53, !54, !55, !65}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !38, file: !3, line: 37, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_parser_s", file: !42, line: 57, baseType: !43)
!42 = !DIFile(filename: "../include/fio_json_parser.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 50, size: 64, elements: !44)
!44 = !{!45, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !43, file: !42, line: 52, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 26, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 42, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !43, file: !42, line: 54, baseType: !21, size: 8, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !43, file: !42, line: 56, baseType: !21, size: 8, offset: 40)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !38, file: !3, line: 38, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !6, line: 63, baseType: !25)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !38, file: !3, line: 39, baseType: !52, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !38, file: !3, line: 40, baseType: !52, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !38, file: !3, line: 41, baseType: !56, size: 256, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_json_stack_s", file: !57, line: 4724, baseType: !58)
!57 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_json_stack_s", file: !57, line: 4878, size: 256, elements: !59)
!59 = !{!60, !61, !62, !63}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !58, file: !57, line: 4879, baseType: !31, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !58, file: !57, line: 4880, baseType: !31, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !58, file: !57, line: 4881, baseType: !31, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "arry", scope: !58, file: !57, line: 4882, baseType: !64, size: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "is_hash", scope: !38, file: !3, line: 42, baseType: !21, size: 8, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !26, line: 87, baseType: !67)
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !6, line: 61, baseType: !5)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_header_s", file: !6, line: 332, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 327, size: 64, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !6, line: 329, baseType: !68, size: 8)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !71, file: !6, line: 331, baseType: !46, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!79 = !{!0, !80, !82, !84, !89, !91, !93, !98, !101}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !57, line: 2433, type: !21, isLocal: false, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !57, line: 2434, type: !21, isLocal: false, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "JSON_SEPERATOR", scope: !2, file: !42, line: 121, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2048, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 256)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "string_seek_stop", scope: !2, file: !42, line: 176, type: !86, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "is_hex", scope: !2, file: !42, line: 157, type: !86, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "JSON_NUMERAL", scope: !2, file: !42, line: 140, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2040, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 255)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "fio_json_stack_s___const_invalid_object", scope: !2, file: !57, line: 4667, type: !100, isLocal: true, isDefinition: true)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "hex_chars", scope: !2, file: !42, line: 154, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !105)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!105 = !{!106}
!106 = !DISubrange(count: 16)
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !{i32 7, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = !{!"clang version 10.0.0-4ubuntu1 "}
!112 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !57, file: !57, line: 437, type: !113, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, null}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!116 = !{}
!117 = !DILocalVariable(name: "format", arg: 1, scope: !112, file: !57, line: 437, type: !115)
!118 = !DILocation(line: 437, column: 28, scope: !112)
!119 = !DILocalVariable(name: "tmp___log", scope: !112, file: !57, line: 438, type: !120)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16384, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 2048)
!123 = !DILocation(line: 438, column: 8, scope: !112)
!124 = !DILocalVariable(name: "argv", scope: !112, file: !57, line: 439, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !126, line: 52, baseType: !127)
!126 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !128, line: 32, baseType: !129)
!128 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !130)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 192, elements: !137)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !132)
!132 = !{!133, !134, !135, !136}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !131, file: !3, line: 439, baseType: !48, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !131, file: !3, line: 439, baseType: !48, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !131, file: !3, line: 439, baseType: !75, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !131, file: !3, line: 439, baseType: !75, size: 64, offset: 128)
!137 = !{!138}
!138 = !DISubrange(count: 1)
!139 = !DILocation(line: 439, column: 11, scope: !112)
!140 = !DILocation(line: 440, column: 3, scope: !112)
!141 = !DILocalVariable(name: "len___log", scope: !112, file: !57, line: 441, type: !107)
!142 = !DILocation(line: 441, column: 7, scope: !112)
!143 = !DILocation(line: 441, column: 29, scope: !112)
!144 = !DILocation(line: 441, column: 66, scope: !112)
!145 = !DILocation(line: 441, column: 74, scope: !112)
!146 = !DILocation(line: 441, column: 19, scope: !112)
!147 = !DILocation(line: 442, column: 3, scope: !112)
!148 = !DILocation(line: 443, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !112, file: !57, line: 443, column: 7)
!150 = !DILocation(line: 443, column: 17, scope: !149)
!151 = !DILocation(line: 443, column: 22, scope: !149)
!152 = !DILocation(line: 443, column: 25, scope: !149)
!153 = !DILocation(line: 443, column: 35, scope: !149)
!154 = !DILocation(line: 443, column: 7, scope: !112)
!155 = !DILocation(line: 444, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !57, line: 444, column: 9)
!157 = distinct !DILexicalBlock(scope: !149, file: !57, line: 443, column: 64)
!158 = !DILocation(line: 444, column: 19, scope: !156)
!159 = !DILocation(line: 444, column: 9, scope: !157)
!160 = !DILocation(line: 445, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !57, line: 444, column: 48)
!162 = !DILocation(line: 445, column: 24, scope: !161)
!163 = !DILocation(line: 445, column: 7, scope: !161)
!164 = !DILocation(line: 447, column: 17, scope: !161)
!165 = !DILocation(line: 448, column: 5, scope: !161)
!166 = !DILocation(line: 449, column: 65, scope: !167)
!167 = distinct !DILexicalBlock(scope: !156, file: !57, line: 448, column: 12)
!168 = !DILocation(line: 449, column: 7, scope: !167)
!169 = !DILocation(line: 450, column: 7, scope: !167)
!170 = !DILocation(line: 452, column: 3, scope: !157)
!171 = !DILocation(line: 453, column: 22, scope: !112)
!172 = !DILocation(line: 453, column: 3, scope: !112)
!173 = !DILocation(line: 453, column: 26, scope: !112)
!174 = !DILocation(line: 454, column: 13, scope: !112)
!175 = !DILocation(line: 454, column: 3, scope: !112)
!176 = !DILocation(line: 454, column: 24, scope: !112)
!177 = !DILocation(line: 455, column: 10, scope: !112)
!178 = !DILocation(line: 455, column: 21, scope: !112)
!179 = !DILocation(line: 455, column: 35, scope: !112)
!180 = !DILocation(line: 455, column: 3, scope: !112)
!181 = !DILocation(line: 456, column: 1, scope: !112)
!182 = distinct !DISubprogram(name: "fiobj_json2obj", scope: !3, file: !3, line: 377, type: !183, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!183 = !DISubroutineType(types: !184)
!184 = !{!31, !64, !185, !31}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!187 = !DILocalVariable(name: "pobj", arg: 1, scope: !182, file: !3, line: 377, type: !64)
!188 = !DILocation(line: 377, column: 30, scope: !182)
!189 = !DILocalVariable(name: "data", arg: 2, scope: !182, file: !3, line: 377, type: !185)
!190 = !DILocation(line: 377, column: 48, scope: !182)
!191 = !DILocalVariable(name: "len", arg: 3, scope: !182, file: !3, line: 377, type: !31)
!192 = !DILocation(line: 377, column: 61, scope: !182)
!193 = !DILocalVariable(name: "p", scope: !182, file: !3, line: 378, type: !37)
!194 = !DILocation(line: 378, column: 23, scope: !182)
!195 = !DILocalVariable(name: "consumed", scope: !182, file: !3, line: 379, type: !31)
!196 = !DILocation(line: 379, column: 10, scope: !182)
!197 = !DILocation(line: 379, column: 39, scope: !182)
!198 = !DILocation(line: 379, column: 42, scope: !182)
!199 = !DILocation(line: 379, column: 48, scope: !182)
!200 = !DILocation(line: 379, column: 21, scope: !182)
!201 = !DILocation(line: 380, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !182, file: !3, line: 380, column: 7)
!203 = !DILocation(line: 380, column: 17, scope: !202)
!204 = !DILocation(line: 380, column: 22, scope: !202)
!205 = !DILocation(line: 380, column: 24, scope: !202)
!206 = !DILocation(line: 380, column: 20, scope: !202)
!207 = !DILocation(line: 380, column: 7, scope: !182)
!208 = !DILocation(line: 381, column: 38, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !3, line: 380, column: 31)
!210 = !DILocation(line: 381, column: 16, scope: !209)
!211 = !DILocation(line: 381, column: 5, scope: !209)
!212 = !DILocation(line: 382, column: 7, scope: !209)
!213 = !DILocation(line: 382, column: 11, scope: !209)
!214 = !DILocation(line: 383, column: 3, scope: !209)
!215 = !DILocation(line: 384, column: 26, scope: !182)
!216 = !DILocation(line: 384, column: 3, scope: !182)
!217 = !DILocation(line: 385, column: 16, scope: !182)
!218 = !DILocation(line: 385, column: 3, scope: !182)
!219 = !DILocation(line: 386, column: 13, scope: !182)
!220 = !DILocation(line: 386, column: 4, scope: !182)
!221 = !DILocation(line: 386, column: 9, scope: !182)
!222 = !DILocation(line: 387, column: 10, scope: !182)
!223 = !DILocation(line: 387, column: 3, scope: !182)
!224 = distinct !DISubprogram(name: "fio_json_parse", scope: !42, file: !42, line: 311, type: !225, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!225 = !DISubroutineType(types: !226)
!226 = !{!31, !227, !115, !31}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!228 = !DILocalVariable(name: "parser", arg: 1, scope: !224, file: !42, line: 311, type: !227)
!229 = !DILocation(line: 311, column: 31, scope: !224)
!230 = !DILocalVariable(name: "buffer", arg: 2, scope: !224, file: !42, line: 311, type: !115)
!231 = !DILocation(line: 311, column: 51, scope: !224)
!232 = !DILocalVariable(name: "length", arg: 3, scope: !224, file: !42, line: 311, type: !31)
!233 = !DILocation(line: 311, column: 66, scope: !224)
!234 = !DILocation(line: 312, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !224, file: !42, line: 312, column: 7)
!236 = !DILocation(line: 312, column: 15, scope: !235)
!237 = !DILocation(line: 312, column: 19, scope: !235)
!238 = !DILocation(line: 312, column: 7, scope: !224)
!239 = !DILocation(line: 313, column: 5, scope: !235)
!240 = !DILocalVariable(name: "pos", scope: !224, file: !42, line: 314, type: !20)
!241 = !DILocation(line: 314, column: 12, scope: !224)
!242 = !DILocation(line: 314, column: 29, scope: !224)
!243 = !DILocalVariable(name: "limit", scope: !224, file: !42, line: 315, type: !77)
!244 = !DILocation(line: 315, column: 18, scope: !224)
!245 = !DILocation(line: 315, column: 26, scope: !224)
!246 = !DILocation(line: 315, column: 32, scope: !224)
!247 = !DILocation(line: 315, column: 30, scope: !224)
!248 = !DILocation(line: 316, column: 3, scope: !224)
!249 = !DILocation(line: 317, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !224, file: !42, line: 316, column: 6)
!251 = !DILocation(line: 317, column: 12, scope: !250)
!252 = !DILocation(line: 317, column: 18, scope: !250)
!253 = !DILocation(line: 317, column: 16, scope: !250)
!254 = !DILocation(line: 317, column: 24, scope: !250)
!255 = !DILocation(line: 317, column: 43, scope: !250)
!256 = !DILocation(line: 317, column: 42, scope: !250)
!257 = !DILocation(line: 317, column: 27, scope: !250)
!258 = !DILocation(line: 0, scope: !250)
!259 = !DILocation(line: 318, column: 7, scope: !250)
!260 = distinct !{!260, !249, !261}
!261 = !DILocation(line: 318, column: 9, scope: !250)
!262 = !DILocation(line: 319, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !250, file: !42, line: 319, column: 9)
!264 = !DILocation(line: 319, column: 16, scope: !263)
!265 = !DILocation(line: 319, column: 13, scope: !263)
!266 = !DILocation(line: 319, column: 9, scope: !250)
!267 = !DILocation(line: 320, column: 7, scope: !263)
!268 = !DILocation(line: 321, column: 14, scope: !250)
!269 = !DILocation(line: 321, column: 13, scope: !250)
!270 = !DILocation(line: 321, column: 5, scope: !250)
!271 = !DILocalVariable(name: "tmp", scope: !272, file: !42, line: 323, type: !20)
!272 = distinct !DILexicalBlock(scope: !273, file: !42, line: 322, column: 15)
!273 = distinct !DILexicalBlock(scope: !250, file: !42, line: 321, column: 19)
!274 = !DILocation(line: 323, column: 16, scope: !272)
!275 = !DILocation(line: 323, column: 22, scope: !272)
!276 = !DILocation(line: 323, column: 26, scope: !272)
!277 = !DILocation(line: 324, column: 26, scope: !278)
!278 = distinct !DILexicalBlock(scope: !272, file: !42, line: 324, column: 11)
!279 = !DILocation(line: 324, column: 11, scope: !278)
!280 = !DILocation(line: 324, column: 33, scope: !278)
!281 = !DILocation(line: 324, column: 11, scope: !272)
!282 = !DILocation(line: 325, column: 9, scope: !278)
!283 = !DILocation(line: 326, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !272, file: !42, line: 326, column: 11)
!285 = !DILocation(line: 326, column: 19, scope: !284)
!286 = !DILocation(line: 326, column: 11, scope: !272)
!287 = !DILocalVariable(name: "key", scope: !288, file: !42, line: 327, type: !20)
!288 = distinct !DILexicalBlock(scope: !284, file: !42, line: 326, column: 24)
!289 = !DILocation(line: 327, column: 18, scope: !288)
!290 = !DILocation(line: 327, column: 24, scope: !288)
!291 = !DILocation(line: 327, column: 28, scope: !288)
!292 = !DILocation(line: 328, column: 9, scope: !288)
!293 = !DILocation(line: 328, column: 16, scope: !288)
!294 = !DILocation(line: 328, column: 22, scope: !288)
!295 = !DILocation(line: 328, column: 20, scope: !288)
!296 = !DILocation(line: 328, column: 28, scope: !288)
!297 = !DILocation(line: 328, column: 47, scope: !288)
!298 = !DILocation(line: 328, column: 46, scope: !288)
!299 = !DILocation(line: 328, column: 31, scope: !288)
!300 = !DILocation(line: 0, scope: !288)
!301 = !DILocation(line: 329, column: 11, scope: !288)
!302 = distinct !{!302, !292, !303}
!303 = !DILocation(line: 329, column: 13, scope: !288)
!304 = !DILocation(line: 330, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !288, file: !42, line: 330, column: 13)
!306 = !DILocation(line: 330, column: 20, scope: !305)
!307 = !DILocation(line: 330, column: 17, scope: !305)
!308 = !DILocation(line: 330, column: 13, scope: !288)
!309 = !DILocation(line: 331, column: 11, scope: !305)
!310 = !DILocation(line: 332, column: 14, scope: !311)
!311 = distinct !DILexicalBlock(scope: !288, file: !42, line: 332, column: 13)
!312 = !DILocation(line: 332, column: 13, scope: !311)
!313 = !DILocation(line: 332, column: 18, scope: !311)
!314 = !DILocation(line: 332, column: 13, scope: !288)
!315 = !DILocation(line: 333, column: 11, scope: !311)
!316 = !DILocation(line: 334, column: 9, scope: !288)
!317 = !DILocation(line: 335, column: 28, scope: !288)
!318 = !DILocation(line: 335, column: 36, scope: !288)
!319 = !DILocation(line: 335, column: 53, scope: !288)
!320 = !DILocation(line: 335, column: 59, scope: !288)
!321 = !DILocation(line: 335, column: 57, scope: !288)
!322 = !DILocation(line: 335, column: 9, scope: !288)
!323 = !DILocation(line: 336, column: 15, scope: !288)
!324 = !DILocation(line: 336, column: 19, scope: !288)
!325 = !DILocation(line: 336, column: 13, scope: !288)
!326 = !DILocation(line: 337, column: 9, scope: !288)
!327 = !DILocation(line: 337, column: 17, scope: !288)
!328 = !DILocation(line: 337, column: 21, scope: !288)
!329 = !DILocation(line: 338, column: 9, scope: !288)
!330 = !DILocation(line: 340, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !284, file: !42, line: 339, column: 14)
!332 = !DILocation(line: 341, column: 28, scope: !331)
!333 = !DILocation(line: 341, column: 36, scope: !331)
!334 = !DILocation(line: 341, column: 53, scope: !331)
!335 = !DILocation(line: 341, column: 59, scope: !331)
!336 = !DILocation(line: 341, column: 57, scope: !331)
!337 = !DILocation(line: 341, column: 9, scope: !331)
!338 = !DILocation(line: 342, column: 15, scope: !331)
!339 = !DILocation(line: 342, column: 19, scope: !331)
!340 = !DILocation(line: 342, column: 13, scope: !331)
!341 = !DILocation(line: 344, column: 7, scope: !272)
!342 = !DILocation(line: 347, column: 11, scope: !343)
!343 = distinct !DILexicalBlock(scope: !273, file: !42, line: 347, column: 11)
!344 = !DILocation(line: 347, column: 19, scope: !343)
!345 = !DILocation(line: 347, column: 11, scope: !273)
!346 = !DILocation(line: 351, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !42, line: 347, column: 24)
!348 = !DILocation(line: 353, column: 9, scope: !273)
!349 = !DILocation(line: 353, column: 17, scope: !273)
!350 = !DILocation(line: 353, column: 7, scope: !273)
!351 = !DILocation(line: 354, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !273, file: !42, line: 354, column: 11)
!353 = !DILocation(line: 354, column: 19, scope: !352)
!354 = !DILocation(line: 354, column: 25, scope: !352)
!355 = !DILocation(line: 354, column: 11, scope: !273)
!356 = !DILocation(line: 355, column: 9, scope: !352)
!357 = !DILocation(line: 356, column: 23, scope: !273)
!358 = !DILocation(line: 356, column: 31, scope: !273)
!359 = !DILocation(line: 356, column: 36, scope: !273)
!360 = !DILocation(line: 356, column: 42, scope: !273)
!361 = !DILocation(line: 356, column: 7, scope: !273)
!362 = !DILocation(line: 356, column: 15, scope: !273)
!363 = !DILocation(line: 356, column: 20, scope: !273)
!364 = !DILocation(line: 357, column: 7, scope: !273)
!365 = !DILocation(line: 358, column: 36, scope: !366)
!366 = distinct !DILexicalBlock(scope: !273, file: !42, line: 358, column: 11)
!367 = !DILocation(line: 358, column: 11, scope: !366)
!368 = !DILocation(line: 358, column: 11, scope: !273)
!369 = !DILocation(line: 359, column: 9, scope: !366)
!370 = !DILocation(line: 360, column: 7, scope: !273)
!371 = !DILocation(line: 362, column: 12, scope: !372)
!372 = distinct !DILexicalBlock(scope: !273, file: !42, line: 362, column: 11)
!373 = !DILocation(line: 362, column: 20, scope: !372)
!374 = !DILocation(line: 362, column: 25, scope: !372)
!375 = !DILocation(line: 362, column: 30, scope: !372)
!376 = !DILocation(line: 362, column: 11, scope: !273)
!377 = !DILocation(line: 366, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !372, file: !42, line: 362, column: 36)
!379 = !DILocation(line: 368, column: 12, scope: !380)
!380 = distinct !DILexicalBlock(scope: !273, file: !42, line: 368, column: 11)
!381 = !DILocation(line: 368, column: 20, scope: !380)
!382 = !DILocation(line: 368, column: 11, scope: !273)
!383 = !DILocation(line: 373, column: 26, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !42, line: 368, column: 25)
!385 = !DILocation(line: 373, column: 9, scope: !384)
!386 = !DILocation(line: 374, column: 7, scope: !384)
!387 = !DILocation(line: 375, column: 9, scope: !273)
!388 = !DILocation(line: 375, column: 17, scope: !273)
!389 = !DILocation(line: 375, column: 7, scope: !273)
!390 = !DILocation(line: 376, column: 7, scope: !273)
!391 = !DILocation(line: 377, column: 23, scope: !273)
!392 = !DILocation(line: 377, column: 31, scope: !273)
!393 = !DILocation(line: 377, column: 36, scope: !273)
!394 = !DILocation(line: 377, column: 7, scope: !273)
!395 = !DILocation(line: 377, column: 15, scope: !273)
!396 = !DILocation(line: 377, column: 20, scope: !273)
!397 = !DILocation(line: 378, column: 30, scope: !273)
!398 = !DILocation(line: 378, column: 7, scope: !273)
!399 = !DILocation(line: 379, column: 7, scope: !273)
!400 = !DILocation(line: 381, column: 11, scope: !401)
!401 = distinct !DILexicalBlock(scope: !273, file: !42, line: 381, column: 11)
!402 = !DILocation(line: 381, column: 19, scope: !401)
!403 = !DILocation(line: 381, column: 11, scope: !273)
!404 = !DILocation(line: 385, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !42, line: 381, column: 24)
!406 = !DILocation(line: 387, column: 9, scope: !273)
!407 = !DILocation(line: 387, column: 17, scope: !273)
!408 = !DILocation(line: 387, column: 7, scope: !273)
!409 = !DILocation(line: 388, column: 11, scope: !410)
!410 = distinct !DILexicalBlock(scope: !273, file: !42, line: 388, column: 11)
!411 = !DILocation(line: 388, column: 19, scope: !410)
!412 = !DILocation(line: 388, column: 25, scope: !410)
!413 = !DILocation(line: 388, column: 11, scope: !273)
!414 = !DILocation(line: 389, column: 9, scope: !410)
!415 = !DILocation(line: 390, column: 7, scope: !273)
!416 = !DILocation(line: 391, column: 23, scope: !273)
!417 = !DILocation(line: 391, column: 31, scope: !273)
!418 = !DILocation(line: 391, column: 36, scope: !273)
!419 = !DILocation(line: 391, column: 7, scope: !273)
!420 = !DILocation(line: 391, column: 15, scope: !273)
!421 = !DILocation(line: 391, column: 20, scope: !273)
!422 = !DILocation(line: 392, column: 35, scope: !423)
!423 = distinct !DILexicalBlock(scope: !273, file: !42, line: 392, column: 11)
!424 = !DILocation(line: 392, column: 11, scope: !423)
!425 = !DILocation(line: 392, column: 11, scope: !273)
!426 = !DILocation(line: 393, column: 9, scope: !423)
!427 = !DILocation(line: 394, column: 7, scope: !273)
!428 = !DILocation(line: 396, column: 12, scope: !429)
!429 = distinct !DILexicalBlock(scope: !273, file: !42, line: 396, column: 11)
!430 = !DILocation(line: 396, column: 20, scope: !429)
!431 = !DILocation(line: 396, column: 25, scope: !429)
!432 = !DILocation(line: 396, column: 11, scope: !273)
!433 = !DILocation(line: 397, column: 9, scope: !429)
!434 = !DILocation(line: 398, column: 9, scope: !273)
!435 = !DILocation(line: 398, column: 17, scope: !273)
!436 = !DILocation(line: 398, column: 7, scope: !273)
!437 = !DILocation(line: 399, column: 7, scope: !273)
!438 = !DILocation(line: 400, column: 23, scope: !273)
!439 = !DILocation(line: 400, column: 31, scope: !273)
!440 = !DILocation(line: 400, column: 36, scope: !273)
!441 = !DILocation(line: 400, column: 7, scope: !273)
!442 = !DILocation(line: 400, column: 15, scope: !273)
!443 = !DILocation(line: 400, column: 20, scope: !273)
!444 = !DILocation(line: 401, column: 29, scope: !273)
!445 = !DILocation(line: 401, column: 7, scope: !273)
!446 = !DILocation(line: 402, column: 7, scope: !273)
!447 = !DILocation(line: 404, column: 11, scope: !448)
!448 = distinct !DILexicalBlock(scope: !273, file: !42, line: 404, column: 11)
!449 = !DILocation(line: 404, column: 15, scope: !448)
!450 = !DILocation(line: 404, column: 22, scope: !448)
!451 = !DILocation(line: 404, column: 19, scope: !448)
!452 = !DILocation(line: 404, column: 11, scope: !273)
!453 = !DILocation(line: 405, column: 9, scope: !448)
!454 = !DILocation(line: 406, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !273, file: !42, line: 406, column: 11)
!456 = !DILocation(line: 406, column: 18, scope: !455)
!457 = !DILocation(line: 406, column: 25, scope: !455)
!458 = !DILocation(line: 406, column: 28, scope: !455)
!459 = !DILocation(line: 406, column: 35, scope: !455)
!460 = !DILocation(line: 406, column: 42, scope: !455)
!461 = !DILocation(line: 406, column: 45, scope: !455)
!462 = !DILocation(line: 406, column: 52, scope: !455)
!463 = !DILocation(line: 406, column: 11, scope: !273)
!464 = !DILocation(line: 407, column: 26, scope: !455)
!465 = !DILocation(line: 407, column: 9, scope: !455)
!466 = !DILocation(line: 409, column: 9, scope: !455)
!467 = !DILocation(line: 410, column: 11, scope: !273)
!468 = !DILocation(line: 411, column: 7, scope: !273)
!469 = !DILocation(line: 414, column: 11, scope: !470)
!470 = distinct !DILexicalBlock(scope: !273, file: !42, line: 414, column: 11)
!471 = !DILocation(line: 414, column: 15, scope: !470)
!472 = !DILocation(line: 414, column: 22, scope: !470)
!473 = !DILocation(line: 414, column: 19, scope: !470)
!474 = !DILocation(line: 414, column: 28, scope: !470)
!475 = !DILocation(line: 414, column: 32, scope: !470)
!476 = !DILocation(line: 414, column: 39, scope: !470)
!477 = !DILocation(line: 414, column: 45, scope: !470)
!478 = !DILocation(line: 414, column: 52, scope: !470)
!479 = !DILocation(line: 414, column: 56, scope: !470)
!480 = !DILocation(line: 414, column: 63, scope: !470)
!481 = !DILocation(line: 414, column: 69, scope: !470)
!482 = !DILocation(line: 414, column: 11, scope: !273)
!483 = !DILocation(line: 415, column: 9, scope: !470)
!484 = !DILocation(line: 416, column: 11, scope: !485)
!485 = distinct !DILexicalBlock(scope: !273, file: !42, line: 416, column: 11)
!486 = !DILocation(line: 416, column: 15, scope: !485)
!487 = !DILocation(line: 416, column: 22, scope: !485)
!488 = !DILocation(line: 416, column: 19, scope: !485)
!489 = !DILocation(line: 416, column: 11, scope: !273)
!490 = !DILocation(line: 417, column: 9, scope: !485)
!491 = !DILocation(line: 418, column: 11, scope: !492)
!492 = distinct !DILexicalBlock(scope: !273, file: !42, line: 418, column: 11)
!493 = !DILocation(line: 418, column: 18, scope: !492)
!494 = !DILocation(line: 418, column: 25, scope: !492)
!495 = !DILocation(line: 418, column: 28, scope: !492)
!496 = !DILocation(line: 418, column: 35, scope: !492)
!497 = !DILocation(line: 418, column: 42, scope: !492)
!498 = !DILocation(line: 418, column: 45, scope: !492)
!499 = !DILocation(line: 418, column: 52, scope: !492)
!500 = !DILocation(line: 418, column: 11, scope: !273)
!501 = !DILocation(line: 419, column: 26, scope: !492)
!502 = !DILocation(line: 419, column: 9, scope: !492)
!503 = !DILocation(line: 421, column: 9, scope: !492)
!504 = !DILocation(line: 422, column: 11, scope: !273)
!505 = !DILocation(line: 423, column: 7, scope: !273)
!506 = !DILocation(line: 425, column: 11, scope: !507)
!507 = distinct !DILexicalBlock(scope: !273, file: !42, line: 425, column: 11)
!508 = !DILocation(line: 425, column: 15, scope: !507)
!509 = !DILocation(line: 425, column: 22, scope: !507)
!510 = !DILocation(line: 425, column: 19, scope: !507)
!511 = !DILocation(line: 425, column: 11, scope: !273)
!512 = !DILocation(line: 426, column: 9, scope: !507)
!513 = !DILocation(line: 427, column: 11, scope: !514)
!514 = distinct !DILexicalBlock(scope: !273, file: !42, line: 427, column: 11)
!515 = !DILocation(line: 427, column: 15, scope: !514)
!516 = !DILocation(line: 427, column: 21, scope: !514)
!517 = !DILocation(line: 427, column: 19, scope: !514)
!518 = !DILocation(line: 427, column: 27, scope: !514)
!519 = !DILocation(line: 427, column: 30, scope: !514)
!520 = !DILocation(line: 427, column: 37, scope: !514)
!521 = !DILocation(line: 427, column: 44, scope: !514)
!522 = !DILocation(line: 427, column: 47, scope: !514)
!523 = !DILocation(line: 427, column: 54, scope: !514)
!524 = !DILocation(line: 427, column: 61, scope: !514)
!525 = !DILocation(line: 427, column: 64, scope: !514)
!526 = !DILocation(line: 427, column: 71, scope: !514)
!527 = !DILocation(line: 427, column: 78, scope: !514)
!528 = !DILocation(line: 428, column: 11, scope: !514)
!529 = !DILocation(line: 428, column: 18, scope: !514)
!530 = !DILocation(line: 427, column: 11, scope: !273)
!531 = !DILocation(line: 429, column: 27, scope: !514)
!532 = !DILocation(line: 429, column: 9, scope: !514)
!533 = !DILocation(line: 431, column: 9, scope: !514)
!534 = !DILocation(line: 432, column: 11, scope: !273)
!535 = !DILocation(line: 433, column: 7, scope: !273)
!536 = !DILabel(scope: !273, name: "numeral", file: !42, line: 451)
!537 = !DILocation(line: 451, column: 5, scope: !273)
!538 = !DILocalVariable(name: "tmp", scope: !539, file: !42, line: 452, type: !20)
!539 = distinct !DILexicalBlock(scope: !273, file: !42, line: 451, column: 15)
!540 = !DILocation(line: 452, column: 16, scope: !539)
!541 = !DILocation(line: 452, column: 22, scope: !539)
!542 = !DILocalVariable(name: "i", scope: !539, file: !42, line: 453, type: !543)
!543 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!544 = !DILocation(line: 453, column: 17, scope: !539)
!545 = !DILocation(line: 453, column: 21, scope: !539)
!546 = !DILocation(line: 454, column: 11, scope: !547)
!547 = distinct !DILexicalBlock(scope: !539, file: !42, line: 454, column: 11)
!548 = !DILocation(line: 454, column: 17, scope: !547)
!549 = !DILocation(line: 454, column: 15, scope: !547)
!550 = !DILocation(line: 454, column: 11, scope: !539)
!551 = !DILocation(line: 455, column: 9, scope: !547)
!552 = !DILocation(line: 456, column: 12, scope: !553)
!553 = distinct !DILexicalBlock(scope: !539, file: !42, line: 456, column: 11)
!554 = !DILocation(line: 456, column: 16, scope: !553)
!555 = !DILocation(line: 456, column: 33, scope: !553)
!556 = !DILocation(line: 456, column: 32, scope: !553)
!557 = !DILocation(line: 456, column: 19, scope: !553)
!558 = !DILocation(line: 456, column: 11, scope: !539)
!559 = !DILocation(line: 457, column: 15, scope: !560)
!560 = distinct !DILexicalBlock(scope: !553, file: !42, line: 456, column: 39)
!561 = !DILocation(line: 457, column: 13, scope: !560)
!562 = !DILocalVariable(name: "f", scope: !560, file: !42, line: 458, type: !563)
!563 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!564 = !DILocation(line: 458, column: 16, scope: !560)
!565 = !DILocation(line: 458, column: 20, scope: !560)
!566 = !DILocation(line: 459, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !560, file: !42, line: 459, column: 13)
!568 = !DILocation(line: 459, column: 19, scope: !567)
!569 = !DILocation(line: 459, column: 17, scope: !567)
!570 = !DILocation(line: 459, column: 13, scope: !560)
!571 = !DILocation(line: 460, column: 11, scope: !567)
!572 = !DILocation(line: 461, column: 14, scope: !573)
!573 = distinct !DILexicalBlock(scope: !560, file: !42, line: 461, column: 13)
!574 = !DILocation(line: 461, column: 18, scope: !573)
!575 = !DILocation(line: 461, column: 35, scope: !573)
!576 = !DILocation(line: 461, column: 34, scope: !573)
!577 = !DILocation(line: 461, column: 21, scope: !573)
!578 = !DILocation(line: 461, column: 13, scope: !560)
!579 = !DILocation(line: 462, column: 11, scope: !573)
!580 = !DILocation(line: 463, column: 27, scope: !560)
!581 = !DILocation(line: 463, column: 35, scope: !560)
!582 = !DILocation(line: 463, column: 9, scope: !560)
!583 = !DILocation(line: 464, column: 15, scope: !560)
!584 = !DILocation(line: 464, column: 13, scope: !560)
!585 = !DILocation(line: 465, column: 7, scope: !560)
!586 = !DILocation(line: 466, column: 28, scope: !587)
!587 = distinct !DILexicalBlock(scope: !553, file: !42, line: 465, column: 14)
!588 = !DILocation(line: 466, column: 36, scope: !587)
!589 = !DILocation(line: 466, column: 9, scope: !587)
!590 = !DILocation(line: 467, column: 15, scope: !587)
!591 = !DILocation(line: 467, column: 13, scope: !587)
!592 = !DILocation(line: 469, column: 7, scope: !539)
!593 = !DILocalVariable(name: "tmp", scope: !594, file: !42, line: 473, type: !20)
!594 = distinct !DILexicalBlock(scope: !273, file: !42, line: 472, column: 5)
!595 = !DILocation(line: 473, column: 16, scope: !594)
!596 = !DILocation(line: 473, column: 29, scope: !594)
!597 = !DILocation(line: 473, column: 52, scope: !594)
!598 = !DILocation(line: 473, column: 60, scope: !594)
!599 = !DILocation(line: 473, column: 58, scope: !594)
!600 = !DILocation(line: 473, column: 22, scope: !594)
!601 = !DILocation(line: 474, column: 12, scope: !602)
!602 = distinct !DILexicalBlock(scope: !594, file: !42, line: 474, column: 11)
!603 = !DILocation(line: 474, column: 11, scope: !594)
!604 = !DILocation(line: 475, column: 9, scope: !602)
!605 = !DILocation(line: 476, column: 13, scope: !594)
!606 = !DILocation(line: 476, column: 17, scope: !594)
!607 = !DILocation(line: 476, column: 11, scope: !594)
!608 = !DILocation(line: 477, column: 7, scope: !594)
!609 = !DILocation(line: 481, column: 11, scope: !610)
!610 = distinct !DILexicalBlock(scope: !273, file: !42, line: 481, column: 11)
!611 = !DILocation(line: 481, column: 18, scope: !610)
!612 = !DILocation(line: 481, column: 11, scope: !273)
!613 = !DILocation(line: 482, column: 13, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !42, line: 482, column: 13)
!615 = distinct !DILexicalBlock(scope: !610, file: !42, line: 481, column: 26)
!616 = !DILocation(line: 482, column: 17, scope: !614)
!617 = !DILocation(line: 482, column: 23, scope: !614)
!618 = !DILocation(line: 482, column: 21, scope: !614)
!619 = !DILocation(line: 482, column: 13, scope: !615)
!620 = !DILocation(line: 483, column: 11, scope: !614)
!621 = !DILocalVariable(name: "tmp", scope: !615, file: !42, line: 484, type: !20)
!622 = !DILocation(line: 484, column: 18, scope: !615)
!623 = !DILocation(line: 484, column: 24, scope: !615)
!624 = !DILocation(line: 484, column: 28, scope: !615)
!625 = !DILocation(line: 485, column: 9, scope: !615)
!626 = !DILocation(line: 486, column: 24, scope: !627)
!627 = distinct !DILexicalBlock(scope: !615, file: !42, line: 485, column: 12)
!628 = !DILocation(line: 486, column: 46, scope: !627)
!629 = !DILocation(line: 486, column: 54, scope: !627)
!630 = !DILocation(line: 486, column: 52, scope: !627)
!631 = !DILocation(line: 486, column: 17, scope: !627)
!632 = !DILocation(line: 486, column: 15, scope: !627)
!633 = !DILocation(line: 487, column: 9, scope: !627)
!634 = !DILocation(line: 487, column: 18, scope: !615)
!635 = !DILocation(line: 487, column: 22, scope: !615)
!636 = !DILocation(line: 487, column: 25, scope: !615)
!637 = !DILocation(line: 487, column: 33, scope: !615)
!638 = !DILocation(line: 0, scope: !615)
!639 = distinct !{!639, !625, !640}
!640 = !DILocation(line: 487, column: 39, scope: !615)
!641 = !DILocation(line: 488, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !615, file: !42, line: 488, column: 13)
!643 = !DILocation(line: 488, column: 13, scope: !615)
!644 = !DILocation(line: 489, column: 11, scope: !642)
!645 = !DILocation(line: 490, column: 15, scope: !615)
!646 = !DILocation(line: 490, column: 19, scope: !615)
!647 = !DILocation(line: 490, column: 13, scope: !615)
!648 = !DILocation(line: 491, column: 7, scope: !615)
!649 = !DILocation(line: 491, column: 18, scope: !650)
!650 = distinct !DILexicalBlock(scope: !610, file: !42, line: 491, column: 18)
!651 = !DILocation(line: 491, column: 25, scope: !650)
!652 = !DILocation(line: 491, column: 18, scope: !610)
!653 = !DILocalVariable(name: "tmp", scope: !654, file: !42, line: 492, type: !20)
!654 = distinct !DILexicalBlock(scope: !650, file: !42, line: 491, column: 33)
!655 = !DILocation(line: 492, column: 18, scope: !654)
!656 = !DILocation(line: 492, column: 31, scope: !654)
!657 = !DILocation(line: 492, column: 54, scope: !654)
!658 = !DILocation(line: 492, column: 62, scope: !654)
!659 = !DILocation(line: 492, column: 60, scope: !654)
!660 = !DILocation(line: 492, column: 24, scope: !654)
!661 = !DILocation(line: 493, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !654, file: !42, line: 493, column: 13)
!663 = !DILocation(line: 493, column: 13, scope: !654)
!664 = !DILocation(line: 494, column: 11, scope: !662)
!665 = !DILocation(line: 495, column: 15, scope: !654)
!666 = !DILocation(line: 495, column: 19, scope: !654)
!667 = !DILocation(line: 495, column: 13, scope: !654)
!668 = !DILocation(line: 496, column: 7, scope: !654)
!669 = !DILocation(line: 497, column: 9, scope: !650)
!670 = !DILocation(line: 498, column: 7, scope: !273)
!671 = !DILocation(line: 501, column: 7, scope: !273)
!672 = !DILocation(line: 503, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !250, file: !42, line: 503, column: 9)
!674 = !DILocation(line: 503, column: 17, scope: !673)
!675 = !DILocation(line: 503, column: 23, scope: !673)
!676 = !DILocation(line: 503, column: 9, scope: !250)
!677 = !DILocation(line: 504, column: 24, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !42, line: 503, column: 29)
!679 = !DILocation(line: 504, column: 7, scope: !678)
!680 = !DILocation(line: 505, column: 7, scope: !678)
!681 = !DILocation(line: 507, column: 20, scope: !250)
!682 = !DILocation(line: 507, column: 28, scope: !250)
!683 = !DILocation(line: 507, column: 33, scope: !250)
!684 = !DILocation(line: 507, column: 19, scope: !250)
!685 = !DILocation(line: 507, column: 5, scope: !250)
!686 = !DILocation(line: 507, column: 13, scope: !250)
!687 = !DILocation(line: 507, column: 17, scope: !250)
!688 = !DILocation(line: 508, column: 3, scope: !250)
!689 = !DILocation(line: 508, column: 12, scope: !224)
!690 = !DILocation(line: 508, column: 18, scope: !224)
!691 = !DILocation(line: 508, column: 16, scope: !224)
!692 = distinct !{!692, !248, !693}
!693 = !DILocation(line: 508, column: 23, scope: !224)
!694 = !DILabel(scope: !224, name: "stop", file: !42, line: 509)
!695 = !DILocation(line: 509, column: 1, scope: !224)
!696 = !DILocation(line: 510, column: 30, scope: !224)
!697 = !DILocation(line: 510, column: 19, scope: !224)
!698 = !DILocation(line: 510, column: 47, scope: !224)
!699 = !DILocation(line: 510, column: 36, scope: !224)
!700 = !DILocation(line: 510, column: 34, scope: !224)
!701 = !DILocation(line: 510, column: 3, scope: !224)
!702 = !DILabel(scope: !224, name: "error", file: !42, line: 511)
!703 = !DILocation(line: 511, column: 1, scope: !224)
!704 = !DILocation(line: 512, column: 21, scope: !224)
!705 = !DILocation(line: 512, column: 3, scope: !224)
!706 = !DILocation(line: 513, column: 3, scope: !224)
!707 = !DILocation(line: 514, column: 1, scope: !224)
!708 = distinct !DISubprogram(name: "fiobj_free", scope: !6, file: !6, line: 446, type: !709, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !52}
!711 = !DILocalVariable(name: "o", arg: 1, scope: !708, file: !6, line: 446, type: !52)
!712 = !DILocation(line: 446, column: 34, scope: !708)
!713 = !DILocation(line: 447, column: 8, scope: !714)
!714 = distinct !DILexicalBlock(scope: !708, file: !6, line: 447, column: 7)
!715 = !DILocation(line: 447, column: 7, scope: !708)
!716 = !DILocation(line: 448, column: 5, scope: !714)
!717 = !DILocation(line: 449, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !708, file: !6, line: 449, column: 7)
!719 = !DILocation(line: 449, column: 7, scope: !708)
!720 = !DILocation(line: 450, column: 5, scope: !718)
!721 = !DILocation(line: 451, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !708, file: !6, line: 451, column: 7)
!723 = !DILocation(line: 451, column: 25, scope: !722)
!724 = !DILocation(line: 451, column: 30, scope: !722)
!725 = !DILocation(line: 451, column: 33, scope: !722)
!726 = !DILocation(line: 451, column: 51, scope: !722)
!727 = !DILocation(line: 451, column: 57, scope: !722)
!728 = !DILocation(line: 451, column: 7, scope: !708)
!729 = !DILocation(line: 452, column: 31, scope: !722)
!730 = !DILocation(line: 452, column: 5, scope: !722)
!731 = !DILocation(line: 454, column: 5, scope: !722)
!732 = !DILocation(line: 454, column: 23, scope: !722)
!733 = !DILocation(line: 454, column: 31, scope: !722)
!734 = !DILocation(line: 455, column: 1, scope: !708)
!735 = distinct !DISubprogram(name: "fio_json_stack_get", scope: !57, file: !57, line: 5036, type: !736, scopeLine: 5036, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!736 = !DISubroutineType(types: !737)
!737 = !{!52, !738, !66}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!739 = !DILocalVariable(name: "ary", arg: 1, scope: !735, file: !57, line: 5036, type: !738)
!740 = !DILocation(line: 5036, column: 58, scope: !735)
!741 = !DILocalVariable(name: "index", arg: 2, scope: !735, file: !57, line: 5036, type: !66)
!742 = !DILocation(line: 5036, column: 72, scope: !735)
!743 = !DILocation(line: 5037, column: 8, scope: !744)
!744 = distinct !DILexicalBlock(scope: !735, file: !57, line: 5037, column: 7)
!745 = !DILocation(line: 5037, column: 7, scope: !735)
!746 = !DILocation(line: 5038, column: 12, scope: !744)
!747 = !DILocation(line: 5038, column: 5, scope: !744)
!748 = !DILocation(line: 5039, column: 36, scope: !735)
!749 = !DILocation(line: 5039, column: 41, scope: !735)
!750 = !DILocation(line: 5039, column: 11, scope: !735)
!751 = !DILocation(line: 5039, column: 9, scope: !735)
!752 = !DILocation(line: 5040, column: 15, scope: !753)
!753 = distinct !DILexicalBlock(scope: !735, file: !57, line: 5040, column: 7)
!754 = !DILocation(line: 5040, column: 24, scope: !753)
!755 = !DILocation(line: 5040, column: 29, scope: !753)
!756 = !DILocation(line: 5040, column: 35, scope: !753)
!757 = !DILocation(line: 5040, column: 40, scope: !753)
!758 = !DILocation(line: 5040, column: 33, scope: !753)
!759 = !DILocation(line: 5040, column: 21, scope: !753)
!760 = !DILocation(line: 5040, column: 7, scope: !735)
!761 = !DILocation(line: 5041, column: 12, scope: !753)
!762 = !DILocation(line: 5041, column: 5, scope: !753)
!763 = !DILocation(line: 5042, column: 11, scope: !735)
!764 = !DILocation(line: 5042, column: 16, scope: !735)
!765 = !DILocation(line: 5042, column: 23, scope: !735)
!766 = !DILocation(line: 5042, column: 28, scope: !735)
!767 = !DILocation(line: 5042, column: 21, scope: !735)
!768 = !DILocation(line: 5042, column: 35, scope: !735)
!769 = !DILocation(line: 5042, column: 10, scope: !735)
!770 = !DILocation(line: 5042, column: 3, scope: !735)
!771 = !DILocation(line: 5043, column: 1, scope: !735)
!772 = distinct !DISubprogram(name: "fio_json_stack_free", scope: !57, file: !57, line: 4889, type: !773, scopeLine: 4889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !738}
!775 = !DILocalVariable(name: "ary", arg: 1, scope: !772, file: !57, line: 4889, type: !738)
!776 = !DILocation(line: 4889, column: 52, scope: !772)
!777 = !DILocation(line: 4890, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !772, file: !57, line: 4890, column: 7)
!779 = !DILocation(line: 4890, column: 7, scope: !772)
!780 = !DILocalVariable(name: "count", scope: !781, file: !57, line: 4891, type: !782)
!781 = distinct !DILexicalBlock(scope: !778, file: !57, line: 4890, column: 12)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!783 = !DILocation(line: 4891, column: 18, scope: !781)
!784 = !DILocation(line: 4891, column: 26, scope: !781)
!785 = !DILocation(line: 4891, column: 31, scope: !781)
!786 = !DILocalVariable(name: "i", scope: !787, file: !57, line: 4892, type: !31)
!787 = distinct !DILexicalBlock(scope: !781, file: !57, line: 4892, column: 5)
!788 = !DILocation(line: 4892, column: 17, scope: !787)
!789 = !DILocation(line: 4892, column: 21, scope: !787)
!790 = !DILocation(line: 4892, column: 26, scope: !787)
!791 = !DILocation(line: 4892, column: 10, scope: !787)
!792 = !DILocation(line: 4892, column: 33, scope: !793)
!793 = distinct !DILexicalBlock(scope: !787, file: !57, line: 4892, column: 5)
!794 = !DILocation(line: 4892, column: 37, scope: !793)
!795 = !DILocation(line: 4892, column: 35, scope: !793)
!796 = !DILocation(line: 4892, column: 5, scope: !787)
!797 = !DILocation(line: 4894, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !57, line: 4892, column: 49)
!799 = !DILocation(line: 4892, column: 44, scope: !793)
!800 = !DILocation(line: 4892, column: 5, scope: !793)
!801 = distinct !{!801, !796, !802}
!802 = !DILocation(line: 4894, column: 5, scope: !787)
!803 = !DILocation(line: 4895, column: 5, scope: !781)
!804 = !DILocation(line: 4896, column: 6, scope: !781)
!805 = !DILocation(line: 4896, column: 12, scope: !781)
!806 = !DILocation(line: 4896, column: 25, scope: !781)
!807 = !DILocation(line: 4897, column: 3, scope: !781)
!808 = !DILocation(line: 4898, column: 1, scope: !772)
!809 = distinct !DISubprogram(name: "fiobj_hash_update_json", scope: !3, file: !3, line: 402, type: !810, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!810 = !DISubroutineType(types: !811)
!811 = !{!31, !52, !185, !31}
!812 = !DILocalVariable(name: "hash", arg: 1, scope: !809, file: !3, line: 402, type: !52)
!813 = !DILocation(line: 402, column: 37, scope: !809)
!814 = !DILocalVariable(name: "data", arg: 2, scope: !809, file: !3, line: 402, type: !185)
!815 = !DILocation(line: 402, column: 55, scope: !809)
!816 = !DILocalVariable(name: "len", arg: 3, scope: !809, file: !3, line: 402, type: !31)
!817 = !DILocation(line: 402, column: 68, scope: !809)
!818 = !DILocation(line: 403, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !809, file: !3, line: 403, column: 7)
!820 = !DILocation(line: 403, column: 7, scope: !809)
!821 = !DILocation(line: 404, column: 5, scope: !819)
!822 = !DILocalVariable(name: "p", scope: !809, file: !3, line: 405, type: !37)
!823 = !DILocation(line: 405, column: 23, scope: !809)
!824 = !DILocation(line: 405, column: 27, scope: !809)
!825 = !DILocation(line: 405, column: 60, scope: !809)
!826 = !DILocalVariable(name: "consumed", scope: !809, file: !3, line: 406, type: !31)
!827 = !DILocation(line: 406, column: 10, scope: !809)
!828 = !DILocation(line: 406, column: 39, scope: !809)
!829 = !DILocation(line: 406, column: 42, scope: !809)
!830 = !DILocation(line: 406, column: 48, scope: !809)
!831 = !DILocation(line: 406, column: 21, scope: !809)
!832 = !DILocation(line: 407, column: 26, scope: !809)
!833 = !DILocation(line: 407, column: 3, scope: !809)
!834 = !DILocation(line: 408, column: 16, scope: !809)
!835 = !DILocation(line: 408, column: 3, scope: !809)
!836 = !DILocation(line: 409, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !809, file: !3, line: 409, column: 7)
!838 = !DILocation(line: 409, column: 16, scope: !837)
!839 = !DILocation(line: 409, column: 13, scope: !837)
!840 = !DILocation(line: 409, column: 7, scope: !809)
!841 = !DILocation(line: 410, column: 18, scope: !837)
!842 = !DILocation(line: 410, column: 5, scope: !837)
!843 = !DILocation(line: 411, column: 10, scope: !809)
!844 = !DILocation(line: 411, column: 3, scope: !809)
!845 = !DILocation(line: 412, column: 1, scope: !809)
!846 = distinct !DISubprogram(name: "fiobj_obj2json2", scope: !3, file: !3, line: 418, type: !847, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!847 = !DISubroutineType(types: !848)
!848 = !{!52, !52, !52, !21}
!849 = !DILocalVariable(name: "dest", arg: 1, scope: !846, file: !3, line: 418, type: !52)
!850 = !DILocation(line: 418, column: 29, scope: !846)
!851 = !DILocalVariable(name: "o", arg: 2, scope: !846, file: !3, line: 418, type: !52)
!852 = !DILocation(line: 418, column: 41, scope: !846)
!853 = !DILocalVariable(name: "pretty", arg: 3, scope: !846, file: !3, line: 418, type: !21)
!854 = !DILocation(line: 418, column: 52, scope: !846)
!855 = !DILocation(line: 419, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 419, column: 3)
!857 = distinct !DILexicalBlock(scope: !846, file: !3, line: 419, column: 3)
!858 = !DILocation(line: 419, column: 3, scope: !857)
!859 = !DILocation(line: 420, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !846, file: !3, line: 420, column: 7)
!861 = !DILocation(line: 420, column: 7, scope: !846)
!862 = !DILocation(line: 421, column: 21, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 420, column: 11)
!864 = !DILocation(line: 421, column: 5, scope: !863)
!865 = !DILocation(line: 422, column: 5, scope: !863)
!866 = !DILocalVariable(name: "stack", scope: !846, file: !3, line: 424, type: !56)
!867 = !DILocation(line: 424, column: 20, scope: !846)
!868 = !DILocalVariable(name: "data", scope: !846, file: !3, line: 425, type: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "obj2json_data_s", file: !3, line: 267, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 261, size: 320, elements: !871)
!871 = !{!872, !873, !874, !875, !876}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !870, file: !3, line: 262, baseType: !52, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !870, file: !3, line: 263, baseType: !52, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !870, file: !3, line: 264, baseType: !738, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !870, file: !3, line: 265, baseType: !25, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pretty", scope: !870, file: !3, line: 266, baseType: !21, size: 8, offset: 256)
!877 = !DILocation(line: 425, column: 19, scope: !846)
!878 = !DILocation(line: 425, column: 26, scope: !846)
!879 = !DILocation(line: 426, column: 15, scope: !846)
!880 = !DILocation(line: 428, column: 17, scope: !846)
!881 = !DILocation(line: 431, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !846, file: !3, line: 431, column: 7)
!883 = !DILocation(line: 431, column: 10, scope: !882)
!884 = !DILocation(line: 431, column: 14, scope: !882)
!885 = !DILocation(line: 431, column: 36, scope: !882)
!886 = !DILocation(line: 431, column: 40, scope: !882)
!887 = !DILocation(line: 431, column: 58, scope: !882)
!888 = !DILocation(line: 431, column: 7, scope: !846)
!889 = !DILocation(line: 432, column: 25, scope: !890)
!890 = distinct !DILexicalBlock(scope: !882, file: !3, line: 431, column: 64)
!891 = !DILocation(line: 432, column: 28, scope: !890)
!892 = !DILocation(line: 432, column: 5, scope: !890)
!893 = !DILocation(line: 433, column: 12, scope: !890)
!894 = !DILocation(line: 433, column: 5, scope: !890)
!895 = !DILocation(line: 435, column: 15, scope: !846)
!896 = !DILocation(line: 435, column: 39, scope: !846)
!897 = !DILocation(line: 435, column: 3, scope: !846)
!898 = !DILocation(line: 436, column: 3, scope: !846)
!899 = !DILocation(line: 437, column: 10, scope: !846)
!900 = !DILocation(line: 437, column: 3, scope: !846)
!901 = !DILocation(line: 438, column: 1, scope: !846)
!902 = distinct !DISubprogram(name: "fiobj_type_is", scope: !6, file: !6, line: 269, type: !903, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!903 = !DISubroutineType(types: !904)
!904 = !{!31, !52, !68}
!905 = !DILocalVariable(name: "o", arg: 1, scope: !902, file: !6, line: 269, type: !52)
!906 = !DILocation(line: 269, column: 39, scope: !902)
!907 = !DILocalVariable(name: "type", arg: 2, scope: !902, file: !6, line: 269, type: !68)
!908 = !DILocation(line: 269, column: 58, scope: !902)
!909 = !DILocation(line: 270, column: 11, scope: !902)
!910 = !DILocation(line: 270, column: 3, scope: !902)
!911 = !DILocation(line: 272, column: 13, scope: !912)
!912 = distinct !DILexicalBlock(scope: !902, file: !6, line: 270, column: 17)
!913 = !DILocation(line: 272, column: 15, scope: !912)
!914 = !DILocation(line: 272, column: 39, scope: !912)
!915 = !DILocation(line: 273, column: 32, scope: !912)
!916 = !DILocation(line: 273, column: 13, scope: !912)
!917 = !DILocation(line: 273, column: 12, scope: !912)
!918 = !DILocation(line: 273, column: 38, scope: !912)
!919 = !DILocation(line: 272, column: 12, scope: !912)
!920 = !DILocation(line: 272, column: 5, scope: !912)
!921 = !DILocation(line: 275, column: 13, scope: !912)
!922 = !DILocation(line: 275, column: 15, scope: !912)
!923 = !DILocation(line: 275, column: 18, scope: !912)
!924 = !DILocation(line: 275, column: 23, scope: !912)
!925 = !DILocation(line: 275, column: 20, scope: !912)
!926 = !DILocation(line: 275, column: 12, scope: !912)
!927 = !DILocation(line: 275, column: 5, scope: !912)
!928 = !DILocation(line: 277, column: 12, scope: !912)
!929 = !DILocation(line: 277, column: 17, scope: !912)
!930 = !DILocation(line: 277, column: 14, scope: !912)
!931 = !DILocation(line: 277, column: 5, scope: !912)
!932 = !DILocation(line: 279, column: 12, scope: !912)
!933 = !DILocation(line: 279, column: 17, scope: !912)
!934 = !DILocation(line: 279, column: 14, scope: !912)
!935 = !DILocation(line: 279, column: 5, scope: !912)
!936 = !DILocation(line: 281, column: 38, scope: !912)
!937 = !DILocation(line: 281, column: 40, scope: !912)
!938 = !DILocation(line: 281, column: 64, scope: !912)
!939 = !DILocation(line: 281, column: 69, scope: !912)
!940 = !DILocation(line: 282, column: 14, scope: !912)
!941 = !DILocation(line: 282, column: 16, scope: !912)
!942 = !DILocation(line: 282, column: 43, scope: !912)
!943 = !DILocation(line: 282, column: 68, scope: !912)
!944 = !DILocation(line: 281, column: 12, scope: !912)
!945 = !DILocation(line: 281, column: 5, scope: !912)
!946 = !DILocation(line: 287, column: 16, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !6, line: 286, column: 29)
!948 = distinct !DILexicalBlock(scope: !912, file: !6, line: 286, column: 9)
!949 = !DILocation(line: 287, column: 18, scope: !947)
!950 = !DILocation(line: 287, column: 42, scope: !947)
!951 = !DILocation(line: 287, column: 47, scope: !947)
!952 = !DILocation(line: 288, column: 16, scope: !947)
!953 = !DILocation(line: 288, column: 18, scope: !947)
!954 = !DILocation(line: 288, column: 45, scope: !947)
!955 = !DILocation(line: 0, scope: !947)
!956 = !DILocation(line: 287, column: 14, scope: !947)
!957 = !DILocation(line: 287, column: 7, scope: !947)
!958 = !DILocation(line: 295, column: 12, scope: !912)
!959 = !DILocation(line: 295, column: 34, scope: !912)
!960 = !DILocation(line: 296, column: 32, scope: !912)
!961 = !DILocation(line: 296, column: 12, scope: !912)
!962 = !DILocation(line: 296, column: 52, scope: !912)
!963 = !DILocation(line: 296, column: 49, scope: !912)
!964 = !DILocation(line: 0, scope: !912)
!965 = !DILocation(line: 295, column: 5, scope: !912)
!966 = !DILocation(line: 298, column: 10, scope: !902)
!967 = !DILocation(line: 298, column: 32, scope: !902)
!968 = !DILocation(line: 298, column: 55, scope: !902)
!969 = !DILocation(line: 298, column: 35, scope: !902)
!970 = !DILocation(line: 298, column: 75, scope: !902)
!971 = !DILocation(line: 298, column: 72, scope: !902)
!972 = !DILocation(line: 0, scope: !902)
!973 = !DILocation(line: 298, column: 3, scope: !902)
!974 = !DILocation(line: 299, column: 1, scope: !902)
!975 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !6, file: !6, line: 344, type: !976, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!976 = !DISubroutineType(types: !977)
!977 = !{!978, !52}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !6, line: 325, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 305, size: 576, elements: !982)
!982 = !{!983, !984, !992, !997, !1002, !1007, !1015, !1026, !1031}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !981, file: !6, line: 307, baseType: !115, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !981, file: !6, line: 309, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !52, !989, !75}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !52, !75}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !981, file: !6, line: 311, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!25, !100}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !981, file: !6, line: 313, baseType: !998, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!31, !100}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !981, file: !6, line: 315, baseType: !1003, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!31, !100, !100}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !981, file: !6, line: 317, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!31, !52, !31, !1012, !75}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!107, !52, !75}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !981, file: !6, line: 320, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020, !100}
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !57, line: 287, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !57, line: 283, size: 192, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !1021, file: !57, line: 284, baseType: !31, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1021, file: !57, line: 285, baseType: !31, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1021, file: !57, line: 286, baseType: !29, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !981, file: !6, line: 322, baseType: !1027, size: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!66, !100}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !981, file: !6, line: 324, baseType: !1032, size: 64, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!563, !100}
!1036 = !DILocalVariable(name: "o", arg: 1, scope: !975, file: !6, line: 344, type: !52)
!1037 = !DILocation(line: 344, column: 65, scope: !975)
!1038 = !DILocation(line: 345, column: 11, scope: !975)
!1039 = !DILocation(line: 345, column: 3, scope: !975)
!1040 = !DILocation(line: 347, column: 5, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !975, file: !6, line: 345, column: 26)
!1042 = !DILocation(line: 349, column: 5, scope: !1041)
!1043 = !DILocation(line: 351, column: 5, scope: !1041)
!1044 = !DILocation(line: 353, column: 5, scope: !1041)
!1045 = !DILocation(line: 355, column: 5, scope: !1041)
!1046 = !DILocation(line: 357, column: 5, scope: !1041)
!1047 = !DILocation(line: 362, column: 5, scope: !1041)
!1048 = !DILocation(line: 364, column: 3, scope: !975)
!1049 = !DILocation(line: 365, column: 1, scope: !975)
!1050 = distinct !DISubprogram(name: "fiobj_obj2json_task", scope: !3, file: !3, line: 269, type: !1013, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1051 = !DILocalVariable(name: "o", arg: 1, scope: !1050, file: !3, line: 269, type: !52)
!1052 = !DILocation(line: 269, column: 38, scope: !1050)
!1053 = !DILocalVariable(name: "data_", arg: 2, scope: !1050, file: !3, line: 269, type: !75)
!1054 = !DILocation(line: 269, column: 47, scope: !1050)
!1055 = !DILocalVariable(name: "data", scope: !1050, file: !3, line: 270, type: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!1057 = !DILocation(line: 270, column: 20, scope: !1050)
!1058 = !DILocation(line: 270, column: 27, scope: !1050)
!1059 = !DILocalVariable(name: "add_seperator", scope: !1050, file: !3, line: 271, type: !21)
!1060 = !DILocation(line: 271, column: 11, scope: !1050)
!1061 = !DILocation(line: 272, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 272, column: 7)
!1063 = !DILocation(line: 272, column: 7, scope: !1050)
!1064 = !DILocation(line: 273, column: 20, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 272, column: 33)
!1066 = !DILocation(line: 273, column: 26, scope: !1065)
!1067 = !DILocation(line: 273, column: 32, scope: !1065)
!1068 = !DILocation(line: 273, column: 5, scope: !1065)
!1069 = !DILocation(line: 274, column: 21, scope: !1065)
!1070 = !DILocation(line: 274, column: 27, scope: !1065)
!1071 = !DILocation(line: 274, column: 5, scope: !1065)
!1072 = !DILocation(line: 275, column: 3, scope: !1065)
!1073 = !DILocation(line: 276, column: 11, scope: !1050)
!1074 = !DILocation(line: 276, column: 3, scope: !1050)
!1075 = !DILocation(line: 282, column: 5, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 276, column: 26)
!1077 = !DILocation(line: 283, column: 7, scope: !1076)
!1078 = !DILocation(line: 283, column: 13, scope: !1076)
!1079 = !DILocation(line: 283, column: 5, scope: !1076)
!1080 = !DILocation(line: 284, column: 5, scope: !1076)
!1081 = !DILocation(line: 289, column: 20, scope: !1076)
!1082 = !DILocation(line: 289, column: 26, scope: !1076)
!1083 = !DILocation(line: 289, column: 32, scope: !1076)
!1084 = !DILocation(line: 289, column: 5, scope: !1076)
!1085 = !DILocation(line: 290, column: 7, scope: !1076)
!1086 = !DILocation(line: 290, column: 13, scope: !1076)
!1087 = !DILocation(line: 290, column: 5, scope: !1076)
!1088 = !DILocation(line: 291, column: 5, scope: !1076)
!1089 = !DILocation(line: 294, column: 7, scope: !1076)
!1090 = !DILocation(line: 294, column: 13, scope: !1076)
!1091 = !DILocation(line: 294, column: 5, scope: !1076)
!1092 = !DILocation(line: 295, column: 25, scope: !1076)
!1093 = !DILocation(line: 295, column: 31, scope: !1076)
!1094 = !DILocation(line: 295, column: 38, scope: !1076)
!1095 = !DILocation(line: 295, column: 44, scope: !1076)
!1096 = !DILocation(line: 295, column: 5, scope: !1076)
!1097 = !DILocation(line: 296, column: 25, scope: !1076)
!1098 = !DILocation(line: 296, column: 31, scope: !1076)
!1099 = !DILocation(line: 296, column: 45, scope: !1076)
!1100 = !DILocation(line: 296, column: 51, scope: !1076)
!1101 = !DILocation(line: 296, column: 5, scope: !1076)
!1102 = !DILocation(line: 297, column: 20, scope: !1076)
!1103 = !DILocation(line: 297, column: 5, scope: !1076)
!1104 = !DILocation(line: 297, column: 11, scope: !1076)
!1105 = !DILocation(line: 297, column: 18, scope: !1076)
!1106 = !DILocation(line: 298, column: 35, scope: !1076)
!1107 = !DILocation(line: 298, column: 19, scope: !1076)
!1108 = !DILocation(line: 298, column: 5, scope: !1076)
!1109 = !DILocation(line: 298, column: 11, scope: !1076)
!1110 = !DILocation(line: 298, column: 17, scope: !1076)
!1111 = !DILocation(line: 299, column: 21, scope: !1076)
!1112 = !DILocation(line: 299, column: 27, scope: !1076)
!1113 = !DILocation(line: 299, column: 5, scope: !1076)
!1114 = !DILocation(line: 300, column: 19, scope: !1076)
!1115 = !DILocation(line: 301, column: 5, scope: !1076)
!1116 = !DILocation(line: 304, column: 7, scope: !1076)
!1117 = !DILocation(line: 304, column: 13, scope: !1076)
!1118 = !DILocation(line: 304, column: 5, scope: !1076)
!1119 = !DILocation(line: 305, column: 25, scope: !1076)
!1120 = !DILocation(line: 305, column: 31, scope: !1076)
!1121 = !DILocation(line: 305, column: 38, scope: !1076)
!1122 = !DILocation(line: 305, column: 44, scope: !1076)
!1123 = !DILocation(line: 305, column: 5, scope: !1076)
!1124 = !DILocation(line: 306, column: 25, scope: !1076)
!1125 = !DILocation(line: 306, column: 31, scope: !1076)
!1126 = !DILocation(line: 306, column: 45, scope: !1076)
!1127 = !DILocation(line: 306, column: 51, scope: !1076)
!1128 = !DILocation(line: 306, column: 5, scope: !1076)
!1129 = !DILocation(line: 307, column: 20, scope: !1076)
!1130 = !DILocation(line: 307, column: 5, scope: !1076)
!1131 = !DILocation(line: 307, column: 11, scope: !1076)
!1132 = !DILocation(line: 307, column: 18, scope: !1076)
!1133 = !DILocation(line: 308, column: 36, scope: !1076)
!1134 = !DILocation(line: 308, column: 19, scope: !1076)
!1135 = !DILocation(line: 308, column: 5, scope: !1076)
!1136 = !DILocation(line: 308, column: 11, scope: !1076)
!1137 = !DILocation(line: 308, column: 17, scope: !1076)
!1138 = !DILocation(line: 309, column: 21, scope: !1076)
!1139 = !DILocation(line: 309, column: 27, scope: !1076)
!1140 = !DILocation(line: 309, column: 5, scope: !1076)
!1141 = !DILocation(line: 310, column: 19, scope: !1076)
!1142 = !DILocation(line: 311, column: 5, scope: !1076)
!1143 = !DILocation(line: 313, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 313, column: 7)
!1145 = !DILocation(line: 313, column: 13, scope: !1144)
!1146 = !DILocation(line: 313, column: 7, scope: !1050)
!1147 = !DILocation(line: 314, column: 27, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 313, column: 21)
!1149 = !DILocation(line: 314, column: 33, scope: !1148)
!1150 = !DILocation(line: 315, column: 42, scope: !1148)
!1151 = !DILocation(line: 315, column: 48, scope: !1148)
!1152 = !DILocation(line: 315, column: 27, scope: !1148)
!1153 = !DILocation(line: 315, column: 54, scope: !1148)
!1154 = !DILocation(line: 316, column: 53, scope: !1148)
!1155 = !DILocation(line: 316, column: 59, scope: !1148)
!1156 = !DILocation(line: 316, column: 32, scope: !1148)
!1157 = !DILocation(line: 316, column: 66, scope: !1148)
!1158 = !DILocation(line: 315, column: 58, scope: !1148)
!1159 = !DILocation(line: 314, column: 5, scope: !1148)
!1160 = !DILocation(line: 317, column: 5, scope: !1148)
!1161 = !DILocation(line: 317, column: 13, scope: !1148)
!1162 = !DILocation(line: 317, column: 19, scope: !1148)
!1163 = !DILocation(line: 317, column: 25, scope: !1148)
!1164 = !DILocation(line: 317, column: 28, scope: !1148)
!1165 = !DILocation(line: 317, column: 34, scope: !1148)
!1166 = !DILocation(line: 0, scope: !1148)
!1167 = !DILocation(line: 318, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 318, column: 11)
!1169 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 317, column: 42)
!1170 = !DILocation(line: 318, column: 11, scope: !1169)
!1171 = !DILocation(line: 319, column: 25, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 318, column: 54)
!1173 = !DILocation(line: 319, column: 31, scope: !1172)
!1174 = !DILocation(line: 319, column: 9, scope: !1172)
!1175 = !DILocation(line: 320, column: 7, scope: !1172)
!1176 = !DILocation(line: 321, column: 25, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 320, column: 14)
!1178 = !DILocation(line: 321, column: 31, scope: !1177)
!1179 = !DILocation(line: 321, column: 9, scope: !1177)
!1180 = !DILocation(line: 323, column: 21, scope: !1169)
!1181 = !DILocation(line: 324, column: 7, scope: !1169)
!1182 = !DILocation(line: 324, column: 13, scope: !1169)
!1183 = !DILocation(line: 324, column: 19, scope: !1169)
!1184 = !DILocation(line: 325, column: 26, scope: !1169)
!1185 = !DILocation(line: 325, column: 32, scope: !1169)
!1186 = !DILocation(line: 325, column: 40, scope: !1169)
!1187 = !DILocation(line: 325, column: 46, scope: !1169)
!1188 = !DILocation(line: 325, column: 7, scope: !1169)
!1189 = !DILocation(line: 326, column: 7, scope: !1169)
!1190 = !DILocation(line: 326, column: 13, scope: !1169)
!1191 = !DILocation(line: 326, column: 20, scope: !1169)
!1192 = !DILocation(line: 327, column: 26, scope: !1169)
!1193 = !DILocation(line: 327, column: 32, scope: !1169)
!1194 = !DILocation(line: 327, column: 40, scope: !1169)
!1195 = !DILocation(line: 327, column: 46, scope: !1169)
!1196 = !DILocation(line: 327, column: 7, scope: !1169)
!1197 = distinct !{!1197, !1160, !1198}
!1198 = !DILocation(line: 328, column: 5, scope: !1148)
!1199 = !DILocation(line: 330, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 330, column: 9)
!1201 = !DILocation(line: 330, column: 23, scope: !1200)
!1202 = !DILocation(line: 330, column: 26, scope: !1200)
!1203 = !DILocation(line: 330, column: 32, scope: !1200)
!1204 = !DILocation(line: 330, column: 9, scope: !1148)
!1205 = !DILocation(line: 331, column: 23, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 330, column: 40)
!1207 = !DILocation(line: 331, column: 29, scope: !1206)
!1208 = !DILocation(line: 331, column: 7, scope: !1206)
!1209 = !DILocalVariable(name: "indent", scope: !1206, file: !3, line: 332, type: !25)
!1210 = !DILocation(line: 332, column: 17, scope: !1206)
!1211 = !DILocation(line: 332, column: 47, scope: !1206)
!1212 = !DILocation(line: 332, column: 53, scope: !1206)
!1213 = !DILocation(line: 332, column: 26, scope: !1206)
!1214 = !DILocation(line: 332, column: 60, scope: !1206)
!1215 = !DILocation(line: 333, column: 29, scope: !1206)
!1216 = !DILocation(line: 333, column: 35, scope: !1206)
!1217 = !DILocation(line: 334, column: 44, scope: !1206)
!1218 = !DILocation(line: 334, column: 50, scope: !1206)
!1219 = !DILocation(line: 334, column: 29, scope: !1206)
!1220 = !DILocation(line: 334, column: 56, scope: !1206)
!1221 = !DILocation(line: 334, column: 63, scope: !1206)
!1222 = !DILocation(line: 334, column: 70, scope: !1206)
!1223 = !DILocation(line: 334, column: 60, scope: !1206)
!1224 = !DILocation(line: 333, column: 7, scope: !1206)
!1225 = !DILocalVariable(name: "buf", scope: !1206, file: !3, line: 335, type: !1020)
!1226 = !DILocation(line: 335, column: 22, scope: !1206)
!1227 = !DILocation(line: 335, column: 43, scope: !1206)
!1228 = !DILocation(line: 335, column: 49, scope: !1206)
!1229 = !DILocation(line: 335, column: 28, scope: !1206)
!1230 = !DILocation(line: 336, column: 7, scope: !1206)
!1231 = !DILocation(line: 336, column: 20, scope: !1206)
!1232 = !DILocation(line: 337, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 336, column: 24)
!1234 = !DILocation(line: 337, column: 22, scope: !1233)
!1235 = !DILocation(line: 337, column: 25, scope: !1233)
!1236 = !DILocation(line: 337, column: 9, scope: !1233)
!1237 = !DILocation(line: 337, column: 29, scope: !1233)
!1238 = !DILocation(line: 338, column: 13, scope: !1233)
!1239 = !DILocation(line: 338, column: 22, scope: !1233)
!1240 = !DILocation(line: 338, column: 25, scope: !1233)
!1241 = !DILocation(line: 338, column: 9, scope: !1233)
!1242 = !DILocation(line: 338, column: 29, scope: !1233)
!1243 = distinct !{!1243, !1230, !1244}
!1244 = !DILocation(line: 339, column: 7, scope: !1206)
!1245 = !DILocation(line: 340, column: 24, scope: !1206)
!1246 = !DILocation(line: 340, column: 30, scope: !1206)
!1247 = !DILocation(line: 340, column: 40, scope: !1206)
!1248 = !DILocation(line: 340, column: 7, scope: !1206)
!1249 = !DILocation(line: 341, column: 5, scope: !1206)
!1250 = !DILocation(line: 342, column: 3, scope: !1148)
!1251 = !DILocation(line: 343, column: 27, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 342, column: 10)
!1253 = !DILocation(line: 343, column: 33, scope: !1252)
!1254 = !DILocation(line: 344, column: 42, scope: !1252)
!1255 = !DILocation(line: 344, column: 48, scope: !1252)
!1256 = !DILocation(line: 344, column: 27, scope: !1252)
!1257 = !DILocation(line: 344, column: 54, scope: !1252)
!1258 = !DILocation(line: 345, column: 53, scope: !1252)
!1259 = !DILocation(line: 345, column: 59, scope: !1252)
!1260 = !DILocation(line: 345, column: 32, scope: !1252)
!1261 = !DILocation(line: 345, column: 66, scope: !1252)
!1262 = !DILocation(line: 344, column: 58, scope: !1252)
!1263 = !DILocation(line: 343, column: 5, scope: !1252)
!1264 = !DILocation(line: 346, column: 5, scope: !1252)
!1265 = !DILocation(line: 346, column: 13, scope: !1252)
!1266 = !DILocation(line: 346, column: 19, scope: !1252)
!1267 = !DILocation(line: 346, column: 25, scope: !1252)
!1268 = !DILocation(line: 346, column: 28, scope: !1252)
!1269 = !DILocation(line: 346, column: 34, scope: !1252)
!1270 = !DILocation(line: 0, scope: !1252)
!1271 = !DILocation(line: 347, column: 11, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 347, column: 11)
!1273 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 346, column: 42)
!1274 = !DILocation(line: 347, column: 11, scope: !1273)
!1275 = !DILocation(line: 348, column: 25, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 347, column: 54)
!1277 = !DILocation(line: 348, column: 31, scope: !1276)
!1278 = !DILocation(line: 348, column: 9, scope: !1276)
!1279 = !DILocation(line: 349, column: 7, scope: !1276)
!1280 = !DILocation(line: 350, column: 25, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 349, column: 14)
!1282 = !DILocation(line: 350, column: 31, scope: !1281)
!1283 = !DILocation(line: 350, column: 9, scope: !1281)
!1284 = !DILocation(line: 352, column: 21, scope: !1273)
!1285 = !DILocation(line: 353, column: 7, scope: !1273)
!1286 = !DILocation(line: 353, column: 13, scope: !1273)
!1287 = !DILocation(line: 353, column: 19, scope: !1273)
!1288 = !DILocation(line: 354, column: 7, scope: !1273)
!1289 = !DILocation(line: 354, column: 13, scope: !1273)
!1290 = !DILocation(line: 354, column: 20, scope: !1273)
!1291 = !DILocation(line: 355, column: 26, scope: !1273)
!1292 = !DILocation(line: 355, column: 32, scope: !1273)
!1293 = !DILocation(line: 355, column: 40, scope: !1273)
!1294 = !DILocation(line: 355, column: 46, scope: !1273)
!1295 = !DILocation(line: 355, column: 7, scope: !1273)
!1296 = !DILocation(line: 356, column: 26, scope: !1273)
!1297 = !DILocation(line: 356, column: 32, scope: !1273)
!1298 = !DILocation(line: 356, column: 40, scope: !1273)
!1299 = !DILocation(line: 356, column: 46, scope: !1273)
!1300 = !DILocation(line: 356, column: 7, scope: !1273)
!1301 = distinct !{!1301, !1264, !1302}
!1302 = !DILocation(line: 357, column: 5, scope: !1252)
!1303 = !DILocation(line: 359, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 359, column: 9)
!1305 = !DILocation(line: 359, column: 23, scope: !1304)
!1306 = !DILocation(line: 359, column: 26, scope: !1304)
!1307 = !DILocation(line: 359, column: 32, scope: !1304)
!1308 = !DILocation(line: 359, column: 9, scope: !1252)
!1309 = !DILocation(line: 360, column: 23, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 359, column: 40)
!1311 = !DILocation(line: 360, column: 29, scope: !1310)
!1312 = !DILocation(line: 360, column: 7, scope: !1310)
!1313 = !DILocation(line: 361, column: 5, scope: !1310)
!1314 = !DILocation(line: 364, column: 3, scope: !1050)
!1315 = distinct !DISubprogram(name: "fiobj_obj2json", scope: !3, file: !3, line: 441, type: !1316, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!52, !52, !21}
!1318 = !DILocalVariable(name: "obj", arg: 1, scope: !1315, file: !3, line: 441, type: !52)
!1319 = !DILocation(line: 441, column: 28, scope: !1315)
!1320 = !DILocalVariable(name: "pretty", arg: 2, scope: !1315, file: !3, line: 441, type: !21)
!1321 = !DILocation(line: 441, column: 41, scope: !1315)
!1322 = !DILocation(line: 442, column: 26, scope: !1315)
!1323 = !DILocation(line: 442, column: 46, scope: !1315)
!1324 = !DILocation(line: 442, column: 51, scope: !1315)
!1325 = !DILocation(line: 442, column: 10, scope: !1315)
!1326 = !DILocation(line: 442, column: 3, scope: !1315)
!1327 = distinct !DISubprogram(name: "seek2eos", scope: !42, file: !42, line: 268, type: !1328, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!107, !1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!1332 = !DILocalVariable(name: "buffer", arg: 1, scope: !1327, file: !42, line: 268, type: !1330)
!1333 = !DILocation(line: 268, column: 38, scope: !1327)
!1334 = !DILocalVariable(name: "limit", arg: 2, scope: !1327, file: !42, line: 269, type: !1331)
!1335 = !DILocation(line: 269, column: 58, scope: !1327)
!1336 = !DILocation(line: 270, column: 3, scope: !1327)
!1337 = !DILocation(line: 270, column: 11, scope: !1327)
!1338 = !DILocation(line: 270, column: 10, scope: !1327)
!1339 = !DILocation(line: 270, column: 20, scope: !1327)
!1340 = !DILocation(line: 270, column: 18, scope: !1327)
!1341 = !DILocation(line: 271, column: 21, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !42, line: 271, column: 9)
!1343 = distinct !DILexicalBlock(scope: !1327, file: !42, line: 270, column: 27)
!1344 = !DILocation(line: 271, column: 29, scope: !1342)
!1345 = !DILocation(line: 271, column: 9, scope: !1342)
!1346 = !DILocation(line: 271, column: 36, scope: !1342)
!1347 = !DILocation(line: 271, column: 41, scope: !1342)
!1348 = !DILocation(line: 271, column: 40, scope: !1342)
!1349 = !DILocation(line: 271, column: 39, scope: !1342)
!1350 = !DILocation(line: 271, column: 48, scope: !1342)
!1351 = !DILocation(line: 271, column: 9, scope: !1343)
!1352 = !DILocation(line: 272, column: 7, scope: !1342)
!1353 = !DILocation(line: 273, column: 7, scope: !1343)
!1354 = !DILocation(line: 273, column: 15, scope: !1343)
!1355 = distinct !{!1355, !1336, !1356}
!1356 = !DILocation(line: 274, column: 3, scope: !1327)
!1357 = !DILocation(line: 275, column: 3, scope: !1327)
!1358 = !DILocation(line: 276, column: 1, scope: !1327)
!1359 = distinct !DISubprogram(name: "fio_json_on_string", scope: !3, file: !3, line: 88, type: !1360, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !227, !75, !31}
!1362 = !DILocalVariable(name: "p", arg: 1, scope: !1359, file: !3, line: 88, type: !227)
!1363 = !DILocation(line: 88, column: 47, scope: !1359)
!1364 = !DILocalVariable(name: "start", arg: 2, scope: !1359, file: !3, line: 88, type: !75)
!1365 = !DILocation(line: 88, column: 56, scope: !1359)
!1366 = !DILocalVariable(name: "length", arg: 3, scope: !1359, file: !3, line: 88, type: !31)
!1367 = !DILocation(line: 88, column: 70, scope: !1359)
!1368 = !DILocalVariable(name: "str", scope: !1359, file: !3, line: 89, type: !52)
!1369 = !DILocation(line: 89, column: 9, scope: !1359)
!1370 = !DILocation(line: 89, column: 29, scope: !1359)
!1371 = !DILocation(line: 89, column: 15, scope: !1359)
!1372 = !DILocation(line: 91, column: 7, scope: !1359)
!1373 = !DILocation(line: 91, column: 49, scope: !1359)
!1374 = !DILocation(line: 91, column: 34, scope: !1359)
!1375 = !DILocation(line: 91, column: 54, scope: !1359)
!1376 = !DILocation(line: 91, column: 60, scope: !1359)
!1377 = !DILocation(line: 91, column: 67, scope: !1359)
!1378 = !DILocation(line: 91, column: 12, scope: !1359)
!1379 = !DILocation(line: 90, column: 3, scope: !1359)
!1380 = !DILocation(line: 92, column: 48, scope: !1359)
!1381 = !DILocation(line: 92, column: 25, scope: !1359)
!1382 = !DILocation(line: 92, column: 51, scope: !1359)
!1383 = !DILocation(line: 92, column: 3, scope: !1359)
!1384 = !DILocation(line: 93, column: 1, scope: !1359)
!1385 = distinct !DISubprogram(name: "fio_json_on_start_object", scope: !3, file: !3, line: 95, type: !1386, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!107, !227}
!1388 = !DILocalVariable(name: "p", arg: 1, scope: !1385, file: !3, line: 95, type: !227)
!1389 = !DILocation(line: 95, column: 52, scope: !1385)
!1390 = !DILocalVariable(name: "pr", scope: !1385, file: !3, line: 96, type: !36)
!1391 = !DILocation(line: 96, column: 24, scope: !1385)
!1392 = !DILocation(line: 96, column: 52, scope: !1385)
!1393 = !DILocation(line: 96, column: 29, scope: !1385)
!1394 = !DILocation(line: 97, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 97, column: 7)
!1396 = !DILocation(line: 97, column: 11, scope: !1395)
!1397 = !DILocation(line: 97, column: 7, scope: !1385)
!1398 = !DILocation(line: 99, column: 26, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 97, column: 19)
!1400 = !DILocation(line: 99, column: 30, scope: !1399)
!1401 = !DILocation(line: 99, column: 37, scope: !1399)
!1402 = !DILocation(line: 99, column: 41, scope: !1399)
!1403 = !DILocation(line: 99, column: 5, scope: !1399)
!1404 = !DILocation(line: 100, column: 15, scope: !1399)
!1405 = !DILocation(line: 100, column: 19, scope: !1399)
!1406 = !DILocation(line: 100, column: 5, scope: !1399)
!1407 = !DILocation(line: 100, column: 9, scope: !1399)
!1408 = !DILocation(line: 100, column: 13, scope: !1399)
!1409 = !DILocation(line: 101, column: 5, scope: !1399)
!1410 = !DILocation(line: 101, column: 9, scope: !1399)
!1411 = !DILocation(line: 101, column: 16, scope: !1399)
!1412 = !DILocation(line: 102, column: 3, scope: !1399)
!1413 = !DILocalVariable(name: "hash", scope: !1414, file: !3, line: 103, type: !52)
!1414 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 102, column: 10)
!1415 = !DILocation(line: 103, column: 11, scope: !1414)
!1416 = !DILocation(line: 103, column: 18, scope: !1414)
!1417 = !DILocation(line: 104, column: 27, scope: !1414)
!1418 = !DILocation(line: 104, column: 31, scope: !1414)
!1419 = !DILocation(line: 104, column: 5, scope: !1414)
!1420 = !DILocation(line: 105, column: 26, scope: !1414)
!1421 = !DILocation(line: 105, column: 30, scope: !1414)
!1422 = !DILocation(line: 105, column: 37, scope: !1414)
!1423 = !DILocation(line: 105, column: 41, scope: !1414)
!1424 = !DILocation(line: 105, column: 5, scope: !1414)
!1425 = !DILocation(line: 106, column: 15, scope: !1414)
!1426 = !DILocation(line: 106, column: 5, scope: !1414)
!1427 = !DILocation(line: 106, column: 9, scope: !1414)
!1428 = !DILocation(line: 106, column: 13, scope: !1414)
!1429 = !DILocation(line: 108, column: 3, scope: !1385)
!1430 = !DILocation(line: 108, column: 7, scope: !1385)
!1431 = !DILocation(line: 108, column: 15, scope: !1385)
!1432 = !DILocation(line: 109, column: 3, scope: !1385)
!1433 = distinct !DISubprogram(name: "fio_json_on_null", scope: !3, file: !3, line: 68, type: !1434, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !227}
!1436 = !DILocalVariable(name: "p", arg: 1, scope: !1433, file: !3, line: 68, type: !227)
!1437 = !DILocation(line: 68, column: 45, scope: !1433)
!1438 = !DILocation(line: 69, column: 48, scope: !1433)
!1439 = !DILocation(line: 69, column: 25, scope: !1433)
!1440 = !DILocation(line: 69, column: 51, scope: !1433)
!1441 = !DILocation(line: 69, column: 3, scope: !1433)
!1442 = !DILocation(line: 70, column: 1, scope: !1433)
!1443 = distinct !DISubprogram(name: "fio_json_on_end_object", scope: !3, file: !3, line: 112, type: !1434, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1444 = !DILocalVariable(name: "p", arg: 1, scope: !1443, file: !3, line: 112, type: !227)
!1445 = !DILocation(line: 112, column: 51, scope: !1443)
!1446 = !DILocalVariable(name: "pr", scope: !1443, file: !3, line: 113, type: !36)
!1447 = !DILocation(line: 113, column: 24, scope: !1443)
!1448 = !DILocation(line: 113, column: 52, scope: !1443)
!1449 = !DILocation(line: 113, column: 29, scope: !1443)
!1450 = !DILocation(line: 114, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 114, column: 7)
!1452 = !DILocation(line: 114, column: 11, scope: !1451)
!1453 = !DILocation(line: 114, column: 7, scope: !1443)
!1454 = !DILocation(line: 115, column: 5, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 114, column: 16)
!1456 = !DILocation(line: 115, column: 5, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 115, column: 5)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 115, column: 5)
!1459 = !DILocation(line: 115, column: 5, scope: !1458)
!1460 = !DILocation(line: 115, column: 5, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 115, column: 5)
!1462 = !DILocation(line: 117, column: 16, scope: !1455)
!1463 = !DILocation(line: 117, column: 20, scope: !1455)
!1464 = !DILocation(line: 117, column: 5, scope: !1455)
!1465 = !DILocation(line: 118, column: 5, scope: !1455)
!1466 = !DILocation(line: 118, column: 9, scope: !1455)
!1467 = !DILocation(line: 118, column: 13, scope: !1455)
!1468 = !DILocation(line: 119, column: 3, scope: !1455)
!1469 = !DILocation(line: 120, column: 3, scope: !1443)
!1470 = !DILocation(line: 120, column: 7, scope: !1443)
!1471 = !DILocation(line: 120, column: 11, scope: !1443)
!1472 = !DILocation(line: 121, column: 23, scope: !1443)
!1473 = !DILocation(line: 121, column: 27, scope: !1443)
!1474 = !DILocation(line: 121, column: 35, scope: !1443)
!1475 = !DILocation(line: 121, column: 39, scope: !1443)
!1476 = !DILocation(line: 121, column: 3, scope: !1443)
!1477 = !DILocation(line: 122, column: 17, scope: !1443)
!1478 = !DILocation(line: 122, column: 3, scope: !1443)
!1479 = !DILocation(line: 122, column: 7, scope: !1443)
!1480 = !DILocation(line: 122, column: 15, scope: !1443)
!1481 = !DILocation(line: 123, column: 1, scope: !1443)
!1482 = distinct !DISubprogram(name: "fio_json_on_start_array", scope: !3, file: !3, line: 125, type: !1386, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1483 = !DILocalVariable(name: "p", arg: 1, scope: !1482, file: !3, line: 125, type: !227)
!1484 = !DILocation(line: 125, column: 51, scope: !1482)
!1485 = !DILocalVariable(name: "pr", scope: !1482, file: !3, line: 126, type: !36)
!1486 = !DILocation(line: 126, column: 24, scope: !1482)
!1487 = !DILocation(line: 126, column: 52, scope: !1482)
!1488 = !DILocation(line: 126, column: 29, scope: !1482)
!1489 = !DILocation(line: 127, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 127, column: 7)
!1491 = !DILocation(line: 127, column: 11, scope: !1490)
!1492 = !DILocation(line: 127, column: 7, scope: !1482)
!1493 = !DILocation(line: 128, column: 5, scope: !1490)
!1494 = !DILocalVariable(name: "ary", scope: !1482, file: !3, line: 129, type: !52)
!1495 = !DILocation(line: 129, column: 9, scope: !1482)
!1496 = !DILocation(line: 129, column: 15, scope: !1482)
!1497 = !DILocation(line: 130, column: 25, scope: !1482)
!1498 = !DILocation(line: 130, column: 29, scope: !1482)
!1499 = !DILocation(line: 130, column: 3, scope: !1482)
!1500 = !DILocation(line: 131, column: 24, scope: !1482)
!1501 = !DILocation(line: 131, column: 28, scope: !1482)
!1502 = !DILocation(line: 131, column: 35, scope: !1482)
!1503 = !DILocation(line: 131, column: 39, scope: !1482)
!1504 = !DILocation(line: 131, column: 3, scope: !1482)
!1505 = !DILocation(line: 132, column: 13, scope: !1482)
!1506 = !DILocation(line: 132, column: 3, scope: !1482)
!1507 = !DILocation(line: 132, column: 7, scope: !1482)
!1508 = !DILocation(line: 132, column: 11, scope: !1482)
!1509 = !DILocation(line: 133, column: 3, scope: !1482)
!1510 = !DILocation(line: 133, column: 7, scope: !1482)
!1511 = !DILocation(line: 133, column: 15, scope: !1482)
!1512 = !DILocation(line: 134, column: 3, scope: !1482)
!1513 = !DILocation(line: 135, column: 1, scope: !1482)
!1514 = distinct !DISubprogram(name: "fio_json_on_end_array", scope: !3, file: !3, line: 137, type: !1434, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1515 = !DILocalVariable(name: "p", arg: 1, scope: !1514, file: !3, line: 137, type: !227)
!1516 = !DILocation(line: 137, column: 50, scope: !1514)
!1517 = !DILocalVariable(name: "pr", scope: !1514, file: !3, line: 138, type: !36)
!1518 = !DILocation(line: 138, column: 24, scope: !1514)
!1519 = !DILocation(line: 138, column: 52, scope: !1514)
!1520 = !DILocation(line: 138, column: 29, scope: !1514)
!1521 = !DILocation(line: 139, column: 3, scope: !1514)
!1522 = !DILocation(line: 139, column: 7, scope: !1514)
!1523 = !DILocation(line: 139, column: 11, scope: !1514)
!1524 = !DILocation(line: 140, column: 23, scope: !1514)
!1525 = !DILocation(line: 140, column: 27, scope: !1514)
!1526 = !DILocation(line: 140, column: 35, scope: !1514)
!1527 = !DILocation(line: 140, column: 39, scope: !1514)
!1528 = !DILocation(line: 140, column: 3, scope: !1514)
!1529 = !DILocation(line: 141, column: 17, scope: !1514)
!1530 = !DILocation(line: 141, column: 3, scope: !1514)
!1531 = !DILocation(line: 141, column: 7, scope: !1514)
!1532 = !DILocation(line: 141, column: 15, scope: !1514)
!1533 = !DILocation(line: 142, column: 1, scope: !1514)
!1534 = distinct !DISubprogram(name: "fio_json_on_true", scope: !3, file: !3, line: 72, type: !1434, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1535 = !DILocalVariable(name: "p", arg: 1, scope: !1534, file: !3, line: 72, type: !227)
!1536 = !DILocation(line: 72, column: 45, scope: !1534)
!1537 = !DILocation(line: 73, column: 48, scope: !1534)
!1538 = !DILocation(line: 73, column: 25, scope: !1534)
!1539 = !DILocation(line: 73, column: 51, scope: !1534)
!1540 = !DILocation(line: 73, column: 3, scope: !1534)
!1541 = !DILocation(line: 74, column: 1, scope: !1534)
!1542 = distinct !DISubprogram(name: "fio_json_on_false", scope: !3, file: !3, line: 76, type: !1434, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1543 = !DILocalVariable(name: "p", arg: 1, scope: !1542, file: !3, line: 76, type: !227)
!1544 = !DILocation(line: 76, column: 46, scope: !1542)
!1545 = !DILocation(line: 77, column: 48, scope: !1542)
!1546 = !DILocation(line: 77, column: 25, scope: !1542)
!1547 = !DILocation(line: 77, column: 51, scope: !1542)
!1548 = !DILocation(line: 77, column: 3, scope: !1542)
!1549 = !DILocation(line: 78, column: 1, scope: !1542)
!1550 = distinct !DISubprogram(name: "fio_json_on_float", scope: !3, file: !3, line: 84, type: !1551, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !227, !563}
!1553 = !DILocalVariable(name: "p", arg: 1, scope: !1550, file: !3, line: 84, type: !227)
!1554 = !DILocation(line: 84, column: 46, scope: !1550)
!1555 = !DILocalVariable(name: "f", arg: 2, scope: !1550, file: !3, line: 84, type: !563)
!1556 = !DILocation(line: 84, column: 56, scope: !1550)
!1557 = !DILocation(line: 85, column: 48, scope: !1550)
!1558 = !DILocation(line: 85, column: 25, scope: !1550)
!1559 = !DILocation(line: 85, column: 67, scope: !1550)
!1560 = !DILocation(line: 85, column: 51, scope: !1550)
!1561 = !DILocation(line: 85, column: 3, scope: !1550)
!1562 = !DILocation(line: 86, column: 1, scope: !1550)
!1563 = distinct !DISubprogram(name: "fio_json_on_number", scope: !3, file: !3, line: 80, type: !1564, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !227, !543}
!1566 = !DILocalVariable(name: "p", arg: 1, scope: !1563, file: !3, line: 80, type: !227)
!1567 = !DILocation(line: 80, column: 47, scope: !1563)
!1568 = !DILocalVariable(name: "i", arg: 2, scope: !1563, file: !3, line: 80, type: !543)
!1569 = !DILocation(line: 80, column: 60, scope: !1563)
!1570 = !DILocation(line: 81, column: 48, scope: !1563)
!1571 = !DILocation(line: 81, column: 25, scope: !1563)
!1572 = !DILocation(line: 81, column: 65, scope: !1563)
!1573 = !DILocation(line: 81, column: 51, scope: !1563)
!1574 = !DILocation(line: 81, column: 3, scope: !1563)
!1575 = !DILocation(line: 82, column: 1, scope: !1563)
!1576 = distinct !DISubprogram(name: "fio_json_on_json", scope: !3, file: !3, line: 144, type: !1434, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1577 = !DILocalVariable(name: "p", arg: 1, scope: !1576, file: !3, line: 144, type: !227)
!1578 = !DILocation(line: 144, column: 45, scope: !1576)
!1579 = !DILocation(line: 148, column: 9, scope: !1576)
!1580 = !DILocation(line: 149, column: 1, scope: !1576)
!1581 = distinct !DISubprogram(name: "fio_json_on_error", scope: !3, file: !3, line: 151, type: !1434, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1582 = !DILocalVariable(name: "p", arg: 1, scope: !1581, file: !3, line: 151, type: !227)
!1583 = !DILocation(line: 151, column: 46, scope: !1581)
!1584 = !DILocalVariable(name: "pr", scope: !1581, file: !3, line: 152, type: !36)
!1585 = !DILocation(line: 152, column: 24, scope: !1581)
!1586 = !DILocation(line: 152, column: 52, scope: !1581)
!1587 = !DILocation(line: 152, column: 29, scope: !1581)
!1588 = !DILocation(line: 156, column: 41, scope: !1581)
!1589 = !DILocation(line: 156, column: 45, scope: !1581)
!1590 = !DILocation(line: 156, column: 21, scope: !1581)
!1591 = !DILocation(line: 156, column: 3, scope: !1581)
!1592 = !DILocation(line: 157, column: 14, scope: !1581)
!1593 = !DILocation(line: 157, column: 18, scope: !1581)
!1594 = !DILocation(line: 157, column: 3, scope: !1581)
!1595 = !DILocation(line: 158, column: 24, scope: !1581)
!1596 = !DILocation(line: 158, column: 28, scope: !1581)
!1597 = !DILocation(line: 158, column: 3, scope: !1581)
!1598 = !DILocation(line: 159, column: 4, scope: !1581)
!1599 = !DILocation(line: 159, column: 9, scope: !1581)
!1600 = !DILocation(line: 159, column: 30, scope: !1581)
!1601 = !DILocation(line: 160, column: 1, scope: !1581)
!1602 = distinct !DISubprogram(name: "seek2marker", scope: !42, file: !42, line: 196, type: !1328, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1603 = !DILocalVariable(name: "buffer", arg: 1, scope: !1602, file: !42, line: 196, type: !1330)
!1604 = !DILocation(line: 196, column: 41, scope: !1602)
!1605 = !DILocalVariable(name: "limit", arg: 2, scope: !1602, file: !42, line: 197, type: !1331)
!1606 = !DILocation(line: 197, column: 61, scope: !1602)
!1607 = !DILocation(line: 198, column: 26, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1602, file: !42, line: 198, column: 7)
!1609 = !DILocation(line: 198, column: 25, scope: !1608)
!1610 = !DILocation(line: 198, column: 24, scope: !1608)
!1611 = !DILocation(line: 198, column: 7, scope: !1608)
!1612 = !DILocation(line: 198, column: 7, scope: !1602)
!1613 = !DILocation(line: 199, column: 5, scope: !1608)
!1614 = !DILocation(line: 203, column: 18, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1602, file: !42, line: 203, column: 7)
!1616 = !DILocation(line: 203, column: 7, scope: !1615)
!1617 = !DILocation(line: 203, column: 44, scope: !1615)
!1618 = !DILocation(line: 203, column: 43, scope: !1615)
!1619 = !DILocation(line: 203, column: 32, scope: !1615)
!1620 = !DILocation(line: 203, column: 51, scope: !1615)
!1621 = !DILocation(line: 203, column: 29, scope: !1615)
!1622 = !DILocation(line: 203, column: 24, scope: !1615)
!1623 = !DILocation(line: 203, column: 7, scope: !1602)
!1624 = !DILocation(line: 204, column: 5, scope: !1615)
!1625 = !DILocalVariable(name: "alignment", scope: !1626, file: !42, line: 208, type: !77)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !42, line: 207, column: 5)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !42, line: 206, column: 10)
!1628 = distinct !DILexicalBlock(scope: !1602, file: !42, line: 206, column: 7)
!1629 = !DILocation(line: 208, column: 22, scope: !1626)
!1630 = !DILocation(line: 209, column: 37, scope: !1626)
!1631 = !DILocation(line: 209, column: 36, scope: !1626)
!1632 = !DILocation(line: 209, column: 24, scope: !1626)
!1633 = !DILocation(line: 209, column: 45, scope: !1626)
!1634 = !DILocation(line: 209, column: 64, scope: !1626)
!1635 = !DILocation(line: 209, column: 11, scope: !1626)
!1636 = !DILocation(line: 210, column: 11, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1626, file: !42, line: 210, column: 11)
!1638 = !DILocation(line: 210, column: 20, scope: !1637)
!1639 = !DILocation(line: 210, column: 17, scope: !1637)
!1640 = !DILocation(line: 210, column: 11, scope: !1626)
!1641 = !DILocation(line: 211, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1637, file: !42, line: 210, column: 31)
!1643 = !DILocation(line: 211, column: 17, scope: !1642)
!1644 = !DILocation(line: 211, column: 16, scope: !1642)
!1645 = !DILocation(line: 211, column: 26, scope: !1642)
!1646 = !DILocation(line: 211, column: 24, scope: !1642)
!1647 = !DILocation(line: 212, column: 34, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !42, line: 212, column: 15)
!1649 = distinct !DILexicalBlock(scope: !1642, file: !42, line: 211, column: 37)
!1650 = !DILocation(line: 212, column: 33, scope: !1648)
!1651 = !DILocation(line: 212, column: 32, scope: !1648)
!1652 = !DILocation(line: 212, column: 15, scope: !1648)
!1653 = !DILocation(line: 212, column: 15, scope: !1649)
!1654 = !DILocation(line: 213, column: 13, scope: !1648)
!1655 = !DILocation(line: 214, column: 12, scope: !1649)
!1656 = !DILocation(line: 214, column: 19, scope: !1649)
!1657 = distinct !{!1657, !1641, !1658}
!1658 = !DILocation(line: 215, column: 9, scope: !1642)
!1659 = !DILocation(line: 216, column: 7, scope: !1642)
!1660 = !DILocalVariable(name: "limit64", scope: !1627, file: !42, line: 218, type: !77)
!1661 = !DILocation(line: 218, column: 20, scope: !1627)
!1662 = !DILocation(line: 218, column: 53, scope: !1627)
!1663 = !DILocation(line: 218, column: 42, scope: !1627)
!1664 = !DILocation(line: 218, column: 59, scope: !1627)
!1665 = !DILocation(line: 218, column: 30, scope: !1627)
!1666 = !DILocalVariable(name: "wanted1", scope: !1627, file: !42, line: 222, type: !34)
!1667 = !DILocation(line: 222, column: 14, scope: !1627)
!1668 = !DILocalVariable(name: "wanted2", scope: !1627, file: !42, line: 223, type: !34)
!1669 = !DILocation(line: 223, column: 14, scope: !1627)
!1670 = !DILocation(line: 224, column: 5, scope: !1627)
!1671 = !DILocation(line: 224, column: 13, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !42, line: 224, column: 5)
!1673 = distinct !DILexicalBlock(scope: !1627, file: !42, line: 224, column: 5)
!1674 = !DILocation(line: 224, column: 12, scope: !1672)
!1675 = !DILocation(line: 224, column: 22, scope: !1672)
!1676 = !DILocation(line: 224, column: 20, scope: !1672)
!1677 = !DILocation(line: 224, column: 5, scope: !1673)
!1678 = !DILocalVariable(name: "eq1", scope: !1679, file: !42, line: 225, type: !1680)
!1679 = distinct !DILexicalBlock(scope: !1672, file: !42, line: 224, column: 45)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!1681 = !DILocation(line: 225, column: 22, scope: !1679)
!1682 = !DILocation(line: 225, column: 46, scope: !1679)
!1683 = !DILocation(line: 225, column: 45, scope: !1679)
!1684 = !DILocation(line: 225, column: 31, scope: !1679)
!1685 = !DILocation(line: 225, column: 57, scope: !1679)
!1686 = !DILocation(line: 225, column: 55, scope: !1679)
!1687 = !DILocation(line: 225, column: 28, scope: !1679)
!1688 = !DILocalVariable(name: "t1", scope: !1679, file: !42, line: 226, type: !1680)
!1689 = !DILocation(line: 226, column: 22, scope: !1679)
!1690 = !DILocation(line: 227, column: 13, scope: !1679)
!1691 = !DILocation(line: 227, column: 17, scope: !1679)
!1692 = !DILocation(line: 227, column: 42, scope: !1679)
!1693 = !DILocation(line: 228, column: 12, scope: !1679)
!1694 = !DILocation(line: 228, column: 16, scope: !1679)
!1695 = !DILocation(line: 227, column: 67, scope: !1679)
!1696 = !DILocalVariable(name: "eq2", scope: !1679, file: !42, line: 229, type: !1680)
!1697 = !DILocation(line: 229, column: 22, scope: !1679)
!1698 = !DILocation(line: 229, column: 46, scope: !1679)
!1699 = !DILocation(line: 229, column: 45, scope: !1679)
!1700 = !DILocation(line: 229, column: 31, scope: !1679)
!1701 = !DILocation(line: 229, column: 57, scope: !1679)
!1702 = !DILocation(line: 229, column: 55, scope: !1679)
!1703 = !DILocation(line: 229, column: 28, scope: !1679)
!1704 = !DILocalVariable(name: "t2", scope: !1679, file: !42, line: 230, type: !1680)
!1705 = !DILocation(line: 230, column: 22, scope: !1679)
!1706 = !DILocation(line: 231, column: 13, scope: !1679)
!1707 = !DILocation(line: 231, column: 17, scope: !1679)
!1708 = !DILocation(line: 231, column: 42, scope: !1679)
!1709 = !DILocation(line: 232, column: 12, scope: !1679)
!1710 = !DILocation(line: 232, column: 16, scope: !1679)
!1711 = !DILocation(line: 231, column: 67, scope: !1679)
!1712 = !DILocation(line: 233, column: 12, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1679, file: !42, line: 233, column: 11)
!1714 = !DILocation(line: 233, column: 17, scope: !1713)
!1715 = !DILocation(line: 233, column: 15, scope: !1713)
!1716 = !DILocation(line: 233, column: 11, scope: !1679)
!1717 = !DILocation(line: 234, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !42, line: 233, column: 22)
!1719 = !DILocation(line: 236, column: 5, scope: !1679)
!1720 = !DILocation(line: 224, column: 32, scope: !1672)
!1721 = !DILocation(line: 224, column: 39, scope: !1672)
!1722 = !DILocation(line: 224, column: 5, scope: !1672)
!1723 = distinct !{!1723, !1677, !1724}
!1724 = !DILocation(line: 236, column: 5, scope: !1673)
!1725 = !DILocation(line: 206, column: 7, scope: !1628)
!1726 = !DILabel(scope: !1602, name: "finish", file: !42, line: 239)
!1727 = !DILocation(line: 239, column: 1, scope: !1602)
!1728 = !DILocation(line: 241, column: 8, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1602, file: !42, line: 241, column: 7)
!1730 = !DILocation(line: 241, column: 7, scope: !1729)
!1731 = !DILocation(line: 241, column: 15, scope: !1729)
!1732 = !DILocation(line: 241, column: 22, scope: !1729)
!1733 = !DILocation(line: 241, column: 19, scope: !1729)
!1734 = !DILocation(line: 241, column: 7, scope: !1602)
!1735 = !DILocation(line: 242, column: 28, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !42, line: 242, column: 9)
!1737 = distinct !DILexicalBlock(scope: !1729, file: !42, line: 241, column: 29)
!1738 = !DILocation(line: 242, column: 27, scope: !1736)
!1739 = !DILocation(line: 242, column: 26, scope: !1736)
!1740 = !DILocation(line: 242, column: 9, scope: !1736)
!1741 = !DILocation(line: 242, column: 9, scope: !1737)
!1742 = !DILocation(line: 244, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1736, file: !42, line: 242, column: 41)
!1744 = !DILocation(line: 246, column: 28, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1737, file: !42, line: 246, column: 9)
!1746 = !DILocation(line: 246, column: 27, scope: !1745)
!1747 = !DILocation(line: 246, column: 26, scope: !1745)
!1748 = !DILocation(line: 246, column: 9, scope: !1745)
!1749 = !DILocation(line: 246, column: 9, scope: !1737)
!1750 = !DILocation(line: 247, column: 8, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1745, file: !42, line: 246, column: 41)
!1752 = !DILocation(line: 247, column: 15, scope: !1751)
!1753 = !DILocation(line: 248, column: 7, scope: !1751)
!1754 = !DILocation(line: 250, column: 28, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1737, file: !42, line: 250, column: 9)
!1756 = !DILocation(line: 250, column: 27, scope: !1755)
!1757 = !DILocation(line: 250, column: 26, scope: !1755)
!1758 = !DILocation(line: 250, column: 9, scope: !1755)
!1759 = !DILocation(line: 250, column: 9, scope: !1737)
!1760 = !DILocation(line: 251, column: 8, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1755, file: !42, line: 250, column: 41)
!1762 = !DILocation(line: 251, column: 15, scope: !1761)
!1763 = !DILocation(line: 252, column: 7, scope: !1761)
!1764 = !DILocation(line: 254, column: 28, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1737, file: !42, line: 254, column: 9)
!1766 = !DILocation(line: 254, column: 27, scope: !1765)
!1767 = !DILocation(line: 254, column: 26, scope: !1765)
!1768 = !DILocation(line: 254, column: 9, scope: !1765)
!1769 = !DILocation(line: 254, column: 9, scope: !1737)
!1770 = !DILocation(line: 255, column: 8, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1765, file: !42, line: 254, column: 41)
!1772 = !DILocation(line: 255, column: 15, scope: !1771)
!1773 = !DILocation(line: 256, column: 7, scope: !1771)
!1774 = !DILocation(line: 258, column: 6, scope: !1737)
!1775 = !DILocation(line: 258, column: 13, scope: !1737)
!1776 = !DILocation(line: 259, column: 3, scope: !1737)
!1777 = !DILocation(line: 260, column: 3, scope: !1602)
!1778 = !DILocation(line: 260, column: 11, scope: !1602)
!1779 = !DILocation(line: 260, column: 10, scope: !1602)
!1780 = !DILocation(line: 260, column: 20, scope: !1602)
!1781 = !DILocation(line: 260, column: 18, scope: !1602)
!1782 = !DILocation(line: 261, column: 28, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !42, line: 261, column: 9)
!1784 = distinct !DILexicalBlock(scope: !1602, file: !42, line: 260, column: 27)
!1785 = !DILocation(line: 261, column: 27, scope: !1783)
!1786 = !DILocation(line: 261, column: 26, scope: !1783)
!1787 = !DILocation(line: 261, column: 9, scope: !1783)
!1788 = !DILocation(line: 261, column: 9, scope: !1784)
!1789 = !DILocation(line: 262, column: 7, scope: !1783)
!1790 = !DILocation(line: 263, column: 7, scope: !1784)
!1791 = !DILocation(line: 263, column: 14, scope: !1784)
!1792 = distinct !{!1792, !1777, !1793}
!1793 = !DILocation(line: 264, column: 3, scope: !1602)
!1794 = !DILocation(line: 265, column: 3, scope: !1602)
!1795 = !DILocation(line: 266, column: 1, scope: !1602)
!1796 = distinct !DISubprogram(name: "fio_json_unescape_str", scope: !42, file: !42, line: 638, type: !1797, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!31, !75, !115, !31}
!1799 = !DILocalVariable(name: "dest", arg: 1, scope: !1796, file: !42, line: 638, type: !75)
!1800 = !DILocation(line: 638, column: 29, scope: !1796)
!1801 = !DILocalVariable(name: "source", arg: 2, scope: !1796, file: !42, line: 638, type: !115)
!1802 = !DILocation(line: 638, column: 47, scope: !1796)
!1803 = !DILocalVariable(name: "length", arg: 3, scope: !1796, file: !42, line: 638, type: !31)
!1804 = !DILocation(line: 638, column: 62, scope: !1796)
!1805 = !DILocalVariable(name: "reader", scope: !1796, file: !42, line: 639, type: !77)
!1806 = !DILocation(line: 639, column: 18, scope: !1796)
!1807 = !DILocation(line: 639, column: 38, scope: !1796)
!1808 = !DILocalVariable(name: "stop", scope: !1796, file: !42, line: 640, type: !77)
!1809 = !DILocation(line: 640, column: 18, scope: !1796)
!1810 = !DILocation(line: 640, column: 25, scope: !1796)
!1811 = !DILocation(line: 640, column: 34, scope: !1796)
!1812 = !DILocation(line: 640, column: 32, scope: !1796)
!1813 = !DILocalVariable(name: "writer", scope: !1796, file: !42, line: 641, type: !20)
!1814 = !DILocation(line: 641, column: 12, scope: !1796)
!1815 = !DILocation(line: 641, column: 32, scope: !1796)
!1816 = !DILocation(line: 643, column: 3, scope: !1796)
!1817 = !DILocation(line: 643, column: 10, scope: !1796)
!1818 = !DILocation(line: 643, column: 19, scope: !1796)
!1819 = !DILocation(line: 643, column: 17, scope: !1796)
!1820 = !DILocalVariable(name: "limit64", scope: !1821, file: !42, line: 656, type: !77)
!1821 = distinct !DILexicalBlock(scope: !1796, file: !42, line: 643, column: 25)
!1822 = !DILocation(line: 656, column: 20, scope: !1821)
!1823 = !DILocation(line: 656, column: 41, scope: !1821)
!1824 = !DILocation(line: 656, column: 46, scope: !1821)
!1825 = !DILocalVariable(name: "wanted1", scope: !1821, file: !42, line: 657, type: !34)
!1826 = !DILocation(line: 657, column: 14, scope: !1821)
!1827 = !DILocation(line: 658, column: 5, scope: !1821)
!1828 = !DILocation(line: 658, column: 12, scope: !1821)
!1829 = !DILocation(line: 658, column: 21, scope: !1821)
!1830 = !DILocation(line: 658, column: 19, scope: !1821)
!1831 = !DILocalVariable(name: "eq1", scope: !1832, file: !42, line: 659, type: !1680)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !42, line: 658, column: 30)
!1833 = !DILocation(line: 659, column: 22, scope: !1832)
!1834 = !DILocation(line: 659, column: 45, scope: !1832)
!1835 = !DILocation(line: 659, column: 31, scope: !1832)
!1836 = !DILocation(line: 659, column: 56, scope: !1832)
!1837 = !DILocation(line: 659, column: 54, scope: !1832)
!1838 = !DILocation(line: 659, column: 28, scope: !1832)
!1839 = !DILocalVariable(name: "t0", scope: !1832, file: !42, line: 660, type: !1680)
!1840 = !DILocation(line: 660, column: 22, scope: !1832)
!1841 = !DILocation(line: 660, column: 28, scope: !1832)
!1842 = !DILocation(line: 660, column: 32, scope: !1832)
!1843 = !DILocation(line: 660, column: 57, scope: !1832)
!1844 = !DILocalVariable(name: "t1", scope: !1832, file: !42, line: 661, type: !1680)
!1845 = !DILocation(line: 661, column: 22, scope: !1832)
!1846 = !DILocation(line: 661, column: 28, scope: !1832)
!1847 = !DILocation(line: 661, column: 32, scope: !1832)
!1848 = !DILocation(line: 662, column: 12, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1832, file: !42, line: 662, column: 11)
!1850 = !DILocation(line: 662, column: 17, scope: !1849)
!1851 = !DILocation(line: 662, column: 15, scope: !1849)
!1852 = !DILocation(line: 662, column: 11, scope: !1832)
!1853 = !DILocation(line: 663, column: 9, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !42, line: 662, column: 22)
!1855 = !DILocation(line: 665, column: 45, scope: !1832)
!1856 = !DILocation(line: 665, column: 31, scope: !1832)
!1857 = !DILocation(line: 665, column: 21, scope: !1832)
!1858 = !DILocation(line: 665, column: 7, scope: !1832)
!1859 = !DILocation(line: 665, column: 29, scope: !1832)
!1860 = !DILocation(line: 666, column: 14, scope: !1832)
!1861 = !DILocation(line: 667, column: 14, scope: !1832)
!1862 = distinct !{!1862, !1827, !1863}
!1863 = !DILocation(line: 668, column: 5, scope: !1821)
!1864 = !DILocation(line: 669, column: 5, scope: !1821)
!1865 = !DILocation(line: 669, column: 12, scope: !1821)
!1866 = !DILocation(line: 669, column: 21, scope: !1821)
!1867 = !DILocation(line: 669, column: 19, scope: !1821)
!1868 = !DILocation(line: 670, column: 12, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !42, line: 670, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1821, file: !42, line: 669, column: 27)
!1871 = !DILocation(line: 670, column: 11, scope: !1869)
!1872 = !DILocation(line: 670, column: 19, scope: !1869)
!1873 = !DILocation(line: 670, column: 11, scope: !1870)
!1874 = !DILocation(line: 671, column: 9, scope: !1869)
!1875 = !DILocation(line: 672, column: 18, scope: !1870)
!1876 = !DILocation(line: 672, column: 17, scope: !1870)
!1877 = !DILocation(line: 672, column: 8, scope: !1870)
!1878 = !DILocation(line: 672, column: 15, scope: !1870)
!1879 = !DILocation(line: 673, column: 7, scope: !1870)
!1880 = !DILocation(line: 674, column: 7, scope: !1870)
!1881 = distinct !{!1881, !1864, !1882}
!1882 = !DILocation(line: 675, column: 5, scope: !1821)
!1883 = !DILocation(line: 676, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1821, file: !42, line: 676, column: 9)
!1885 = !DILocation(line: 676, column: 19, scope: !1884)
!1886 = !DILocation(line: 676, column: 16, scope: !1884)
!1887 = !DILocation(line: 676, column: 9, scope: !1821)
!1888 = !DILocation(line: 677, column: 7, scope: !1884)
!1889 = !DILocation(line: 679, column: 5, scope: !1821)
!1890 = distinct !{!1890, !1816, !1891}
!1891 = !DILocation(line: 680, column: 3, scope: !1796)
!1892 = !DILabel(scope: !1796, name: "finish", file: !42, line: 681)
!1893 = !DILocation(line: 681, column: 1, scope: !1796)
!1894 = !DILocation(line: 682, column: 30, scope: !1796)
!1895 = !DILocation(line: 682, column: 19, scope: !1796)
!1896 = !DILocation(line: 682, column: 50, scope: !1796)
!1897 = !DILocation(line: 682, column: 39, scope: !1796)
!1898 = !DILocation(line: 682, column: 37, scope: !1796)
!1899 = !DILocation(line: 682, column: 3, scope: !1796)
!1900 = distinct !DISubprogram(name: "fiobj_obj2cstr", scope: !6, file: !6, line: 515, type: !1018, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1901 = !DILocalVariable(name: "o", arg: 1, scope: !1900, file: !6, line: 515, type: !100)
!1902 = !DILocation(line: 515, column: 54, scope: !1900)
!1903 = !DILocation(line: 516, column: 8, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !6, line: 516, column: 7)
!1905 = !DILocation(line: 516, column: 7, scope: !1900)
!1906 = !DILocalVariable(name: "ret", scope: !1907, file: !6, line: 517, type: !1020)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !6, line: 516, column: 11)
!1908 = !DILocation(line: 517, column: 20, scope: !1907)
!1909 = !DILocation(line: 518, column: 5, scope: !1907)
!1910 = !DILocation(line: 520, column: 7, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1900, file: !6, line: 520, column: 7)
!1912 = !DILocation(line: 520, column: 9, scope: !1911)
!1913 = !DILocation(line: 520, column: 7, scope: !1900)
!1914 = !DILocation(line: 521, column: 35, scope: !1911)
!1915 = !DILocation(line: 521, column: 38, scope: !1911)
!1916 = !DILocation(line: 521, column: 12, scope: !1911)
!1917 = !DILocation(line: 521, column: 5, scope: !1911)
!1918 = !DILocation(line: 522, column: 8, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1900, file: !6, line: 522, column: 7)
!1920 = !DILocation(line: 522, column: 10, scope: !1919)
!1921 = !DILocation(line: 522, column: 37, scope: !1919)
!1922 = !DILocation(line: 522, column: 7, scope: !1900)
!1923 = !DILocation(line: 523, column: 30, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1919, file: !6, line: 522, column: 65)
!1925 = !DILocation(line: 523, column: 13, scope: !1924)
!1926 = !DILocation(line: 523, column: 5, scope: !1924)
!1927 = !DILocalVariable(name: "ret", scope: !1928, file: !6, line: 525, type: !1020)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !6, line: 524, column: 24)
!1929 = distinct !DILexicalBlock(scope: !1924, file: !6, line: 523, column: 33)
!1930 = !DILocation(line: 525, column: 22, scope: !1928)
!1931 = !DILocation(line: 526, column: 7, scope: !1928)
!1932 = !DILocalVariable(name: "ret", scope: !1933, file: !6, line: 529, type: !1020)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !6, line: 528, column: 25)
!1934 = !DILocation(line: 529, column: 22, scope: !1933)
!1935 = !DILocation(line: 530, column: 7, scope: !1933)
!1936 = !DILocalVariable(name: "ret", scope: !1937, file: !6, line: 533, type: !1020)
!1937 = distinct !DILexicalBlock(scope: !1929, file: !6, line: 532, column: 24)
!1938 = !DILocation(line: 533, column: 22, scope: !1937)
!1939 = !DILocation(line: 534, column: 7, scope: !1937)
!1940 = !DILocation(line: 537, column: 7, scope: !1929)
!1941 = !DILocation(line: 539, column: 3, scope: !1924)
!1942 = !DILocation(line: 540, column: 10, scope: !1900)
!1943 = !DILocation(line: 540, column: 28, scope: !1900)
!1944 = !DILocation(line: 540, column: 35, scope: !1900)
!1945 = !DILocation(line: 540, column: 3, scope: !1900)
!1946 = !DILocation(line: 541, column: 1, scope: !1900)
!1947 = distinct !DISubprogram(name: "fiobj_json_add2parser", scope: !3, file: !3, line: 49, type: !1948, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !36, !52}
!1950 = !DILocalVariable(name: "p", arg: 1, scope: !1947, file: !3, line: 49, type: !36)
!1951 = !DILocation(line: 49, column: 63, scope: !1947)
!1952 = !DILocalVariable(name: "o", arg: 2, scope: !1947, file: !3, line: 49, type: !52)
!1953 = !DILocation(line: 49, column: 72, scope: !1947)
!1954 = !DILocation(line: 50, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 50, column: 7)
!1956 = !DILocation(line: 50, column: 10, scope: !1955)
!1957 = !DILocation(line: 50, column: 7, scope: !1947)
!1958 = !DILocation(line: 51, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 51, column: 9)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 50, column: 15)
!1961 = !DILocation(line: 51, column: 12, scope: !1959)
!1962 = !DILocation(line: 51, column: 9, scope: !1960)
!1963 = !DILocation(line: 52, column: 11, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 52, column: 11)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 51, column: 21)
!1966 = !DILocation(line: 52, column: 14, scope: !1964)
!1967 = !DILocation(line: 52, column: 11, scope: !1965)
!1968 = !DILocation(line: 53, column: 24, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 52, column: 19)
!1970 = !DILocation(line: 53, column: 27, scope: !1969)
!1971 = !DILocation(line: 53, column: 32, scope: !1969)
!1972 = !DILocation(line: 53, column: 35, scope: !1969)
!1973 = !DILocation(line: 53, column: 40, scope: !1969)
!1974 = !DILocation(line: 53, column: 9, scope: !1969)
!1975 = !DILocation(line: 54, column: 20, scope: !1969)
!1976 = !DILocation(line: 54, column: 23, scope: !1969)
!1977 = !DILocation(line: 54, column: 9, scope: !1969)
!1978 = !DILocation(line: 55, column: 9, scope: !1969)
!1979 = !DILocation(line: 55, column: 12, scope: !1969)
!1980 = !DILocation(line: 55, column: 16, scope: !1969)
!1981 = !DILocation(line: 56, column: 7, scope: !1969)
!1982 = !DILocation(line: 57, column: 18, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 56, column: 14)
!1984 = !DILocation(line: 57, column: 9, scope: !1983)
!1985 = !DILocation(line: 57, column: 12, scope: !1983)
!1986 = !DILocation(line: 57, column: 16, scope: !1983)
!1987 = !DILocation(line: 59, column: 5, scope: !1965)
!1988 = !DILocation(line: 60, column: 22, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 59, column: 12)
!1990 = !DILocation(line: 60, column: 25, scope: !1989)
!1991 = !DILocation(line: 60, column: 30, scope: !1989)
!1992 = !DILocation(line: 60, column: 7, scope: !1989)
!1993 = !DILocation(line: 62, column: 3, scope: !1960)
!1994 = !DILocation(line: 63, column: 14, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 62, column: 10)
!1996 = !DILocation(line: 63, column: 5, scope: !1995)
!1997 = !DILocation(line: 63, column: 8, scope: !1995)
!1998 = !DILocation(line: 63, column: 12, scope: !1995)
!1999 = !DILocation(line: 65, column: 1, scope: !1947)
!2000 = distinct !DISubprogram(name: "fio_json_unescape_str_internal", scope: !42, file: !42, line: 549, type: !2001, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1330, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2004 = !DILocalVariable(name: "dest", arg: 1, scope: !2000, file: !42, line: 549, type: !1330)
!2005 = !DILocation(line: 549, column: 42, scope: !2000)
!2006 = !DILocalVariable(name: "src", arg: 2, scope: !2000, file: !42, line: 549, type: !2003)
!2007 = !DILocation(line: 549, column: 64, scope: !2000)
!2008 = !DILocation(line: 550, column: 7, scope: !2000)
!2009 = !DILocation(line: 550, column: 3, scope: !2000)
!2010 = !DILocation(line: 551, column: 13, scope: !2000)
!2011 = !DILocation(line: 551, column: 12, scope: !2000)
!2012 = !DILocation(line: 551, column: 11, scope: !2000)
!2013 = !DILocation(line: 551, column: 3, scope: !2000)
!2014 = !DILocation(line: 553, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2000, file: !42, line: 551, column: 18)
!2016 = !DILocation(line: 553, column: 6, scope: !2015)
!2017 = !DILocation(line: 553, column: 12, scope: !2015)
!2018 = !DILocation(line: 554, column: 9, scope: !2015)
!2019 = !DILocation(line: 554, column: 5, scope: !2015)
!2020 = !DILocation(line: 555, column: 9, scope: !2015)
!2021 = !DILocation(line: 555, column: 5, scope: !2015)
!2022 = !DILocation(line: 556, column: 5, scope: !2015)
!2023 = !DILocation(line: 558, column: 7, scope: !2015)
!2024 = !DILocation(line: 558, column: 6, scope: !2015)
!2025 = !DILocation(line: 558, column: 12, scope: !2015)
!2026 = !DILocation(line: 559, column: 9, scope: !2015)
!2027 = !DILocation(line: 559, column: 5, scope: !2015)
!2028 = !DILocation(line: 560, column: 9, scope: !2015)
!2029 = !DILocation(line: 560, column: 5, scope: !2015)
!2030 = !DILocation(line: 561, column: 5, scope: !2015)
!2031 = !DILocation(line: 563, column: 7, scope: !2015)
!2032 = !DILocation(line: 563, column: 6, scope: !2015)
!2033 = !DILocation(line: 563, column: 12, scope: !2015)
!2034 = !DILocation(line: 564, column: 9, scope: !2015)
!2035 = !DILocation(line: 564, column: 5, scope: !2015)
!2036 = !DILocation(line: 565, column: 9, scope: !2015)
!2037 = !DILocation(line: 565, column: 5, scope: !2015)
!2038 = !DILocation(line: 566, column: 5, scope: !2015)
!2039 = !DILocation(line: 568, column: 7, scope: !2015)
!2040 = !DILocation(line: 568, column: 6, scope: !2015)
!2041 = !DILocation(line: 568, column: 12, scope: !2015)
!2042 = !DILocation(line: 569, column: 9, scope: !2015)
!2043 = !DILocation(line: 569, column: 5, scope: !2015)
!2044 = !DILocation(line: 570, column: 9, scope: !2015)
!2045 = !DILocation(line: 570, column: 5, scope: !2015)
!2046 = !DILocation(line: 571, column: 5, scope: !2015)
!2047 = !DILocation(line: 573, column: 7, scope: !2015)
!2048 = !DILocation(line: 573, column: 6, scope: !2015)
!2049 = !DILocation(line: 573, column: 12, scope: !2015)
!2050 = !DILocation(line: 574, column: 9, scope: !2015)
!2051 = !DILocation(line: 574, column: 5, scope: !2015)
!2052 = !DILocation(line: 575, column: 9, scope: !2015)
!2053 = !DILocation(line: 575, column: 5, scope: !2015)
!2054 = !DILocation(line: 576, column: 5, scope: !2015)
!2055 = !DILocation(line: 578, column: 18, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !42, line: 578, column: 9)
!2057 = distinct !DILexicalBlock(scope: !2015, file: !42, line: 577, column: 13)
!2058 = !DILocation(line: 578, column: 17, scope: !2056)
!2059 = !DILocation(line: 578, column: 16, scope: !2056)
!2060 = !DILocation(line: 578, column: 9, scope: !2056)
!2061 = !DILocation(line: 578, column: 27, scope: !2056)
!2062 = !DILocation(line: 578, column: 39, scope: !2056)
!2063 = !DILocation(line: 578, column: 38, scope: !2056)
!2064 = !DILocation(line: 578, column: 37, scope: !2056)
!2065 = !DILocation(line: 578, column: 30, scope: !2056)
!2066 = !DILocation(line: 578, column: 48, scope: !2056)
!2067 = !DILocation(line: 578, column: 60, scope: !2056)
!2068 = !DILocation(line: 578, column: 59, scope: !2056)
!2069 = !DILocation(line: 578, column: 58, scope: !2056)
!2070 = !DILocation(line: 578, column: 51, scope: !2056)
!2071 = !DILocation(line: 578, column: 69, scope: !2056)
!2072 = !DILocation(line: 579, column: 18, scope: !2056)
!2073 = !DILocation(line: 579, column: 17, scope: !2056)
!2074 = !DILocation(line: 579, column: 16, scope: !2056)
!2075 = !DILocation(line: 579, column: 9, scope: !2056)
!2076 = !DILocation(line: 578, column: 9, scope: !2057)
!2077 = !DILocalVariable(name: "t", scope: !2078, file: !42, line: 580, type: !46)
!2078 = distinct !DILexicalBlock(scope: !2056, file: !42, line: 579, column: 28)
!2079 = !DILocation(line: 580, column: 16, scope: !2078)
!2080 = !DILocation(line: 581, column: 24, scope: !2078)
!2081 = !DILocation(line: 581, column: 23, scope: !2078)
!2082 = !DILocation(line: 581, column: 22, scope: !2078)
!2083 = !DILocation(line: 581, column: 15, scope: !2078)
!2084 = !DILocation(line: 581, column: 33, scope: !2078)
!2085 = !DILocation(line: 581, column: 38, scope: !2078)
!2086 = !DILocation(line: 581, column: 56, scope: !2078)
!2087 = !DILocation(line: 581, column: 55, scope: !2078)
!2088 = !DILocation(line: 581, column: 54, scope: !2078)
!2089 = !DILocation(line: 581, column: 47, scope: !2078)
!2090 = !DILocation(line: 581, column: 65, scope: !2078)
!2091 = !DILocation(line: 581, column: 44, scope: !2078)
!2092 = !DILocation(line: 581, column: 71, scope: !2078)
!2093 = !DILocation(line: 582, column: 23, scope: !2078)
!2094 = !DILocation(line: 582, column: 22, scope: !2078)
!2095 = !DILocation(line: 582, column: 21, scope: !2078)
!2096 = !DILocation(line: 582, column: 14, scope: !2078)
!2097 = !DILocation(line: 582, column: 32, scope: !2078)
!2098 = !DILocation(line: 582, column: 37, scope: !2078)
!2099 = !DILocation(line: 582, column: 55, scope: !2078)
!2100 = !DILocation(line: 582, column: 54, scope: !2078)
!2101 = !DILocation(line: 582, column: 53, scope: !2078)
!2102 = !DILocation(line: 582, column: 46, scope: !2078)
!2103 = !DILocation(line: 582, column: 64, scope: !2078)
!2104 = !DILocation(line: 582, column: 43, scope: !2078)
!2105 = !DILocation(line: 581, column: 77, scope: !2078)
!2106 = !DILocation(line: 583, column: 13, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2078, file: !42, line: 583, column: 11)
!2108 = !DILocation(line: 583, column: 12, scope: !2107)
!2109 = !DILocation(line: 583, column: 11, scope: !2107)
!2110 = !DILocation(line: 583, column: 21, scope: !2107)
!2111 = !DILocation(line: 583, column: 29, scope: !2107)
!2112 = !DILocation(line: 583, column: 34, scope: !2107)
!2113 = !DILocation(line: 583, column: 33, scope: !2107)
!2114 = !DILocation(line: 583, column: 32, scope: !2107)
!2115 = !DILocation(line: 583, column: 42, scope: !2107)
!2116 = !DILocation(line: 583, column: 49, scope: !2107)
!2117 = !DILocation(line: 583, column: 61, scope: !2107)
!2118 = !DILocation(line: 583, column: 60, scope: !2107)
!2119 = !DILocation(line: 583, column: 59, scope: !2107)
!2120 = !DILocation(line: 583, column: 52, scope: !2107)
!2121 = !DILocation(line: 583, column: 70, scope: !2107)
!2122 = !DILocation(line: 584, column: 20, scope: !2107)
!2123 = !DILocation(line: 584, column: 19, scope: !2107)
!2124 = !DILocation(line: 584, column: 18, scope: !2107)
!2125 = !DILocation(line: 584, column: 11, scope: !2107)
!2126 = !DILocation(line: 584, column: 29, scope: !2107)
!2127 = !DILocation(line: 584, column: 41, scope: !2107)
!2128 = !DILocation(line: 584, column: 40, scope: !2107)
!2129 = !DILocation(line: 584, column: 39, scope: !2107)
!2130 = !DILocation(line: 584, column: 32, scope: !2107)
!2131 = !DILocation(line: 584, column: 50, scope: !2107)
!2132 = !DILocation(line: 584, column: 62, scope: !2107)
!2133 = !DILocation(line: 584, column: 61, scope: !2107)
!2134 = !DILocation(line: 584, column: 60, scope: !2107)
!2135 = !DILocation(line: 584, column: 53, scope: !2107)
!2136 = !DILocation(line: 583, column: 11, scope: !2078)
!2137 = !DILocation(line: 586, column: 14, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2107, file: !42, line: 584, column: 73)
!2139 = !DILocation(line: 586, column: 16, scope: !2138)
!2140 = !DILocation(line: 586, column: 26, scope: !2138)
!2141 = !DILocation(line: 586, column: 11, scope: !2138)
!2142 = !DILocation(line: 587, column: 29, scope: !2138)
!2143 = !DILocation(line: 587, column: 28, scope: !2138)
!2144 = !DILocation(line: 587, column: 27, scope: !2138)
!2145 = !DILocation(line: 587, column: 20, scope: !2138)
!2146 = !DILocation(line: 587, column: 38, scope: !2138)
!2147 = !DILocation(line: 587, column: 43, scope: !2138)
!2148 = !DILocation(line: 587, column: 61, scope: !2138)
!2149 = !DILocation(line: 587, column: 60, scope: !2138)
!2150 = !DILocation(line: 587, column: 59, scope: !2138)
!2151 = !DILocation(line: 587, column: 52, scope: !2138)
!2152 = !DILocation(line: 587, column: 70, scope: !2138)
!2153 = !DILocation(line: 587, column: 49, scope: !2138)
!2154 = !DILocation(line: 588, column: 17, scope: !2138)
!2155 = !DILocation(line: 589, column: 28, scope: !2138)
!2156 = !DILocation(line: 589, column: 27, scope: !2138)
!2157 = !DILocation(line: 589, column: 26, scope: !2138)
!2158 = !DILocation(line: 589, column: 19, scope: !2138)
!2159 = !DILocation(line: 589, column: 37, scope: !2138)
!2160 = !DILocation(line: 589, column: 42, scope: !2138)
!2161 = !DILocation(line: 589, column: 60, scope: !2138)
!2162 = !DILocation(line: 589, column: 59, scope: !2138)
!2163 = !DILocation(line: 589, column: 58, scope: !2138)
!2164 = !DILocation(line: 589, column: 51, scope: !2138)
!2165 = !DILocation(line: 589, column: 70, scope: !2138)
!2166 = !DILocation(line: 589, column: 48, scope: !2138)
!2167 = !DILocation(line: 588, column: 23, scope: !2138)
!2168 = !DILocation(line: 589, column: 77, scope: !2138)
!2169 = !DILocation(line: 587, column: 11, scope: !2138)
!2170 = !DILocation(line: 591, column: 11, scope: !2138)
!2171 = !DILocation(line: 592, column: 11, scope: !2138)
!2172 = !DILocation(line: 592, column: 16, scope: !2138)
!2173 = !DILocation(line: 593, column: 7, scope: !2138)
!2174 = !DILocation(line: 594, column: 31, scope: !2078)
!2175 = !DILocation(line: 594, column: 30, scope: !2078)
!2176 = !DILocation(line: 594, column: 37, scope: !2078)
!2177 = !DILocation(line: 594, column: 16, scope: !2078)
!2178 = !DILocation(line: 594, column: 8, scope: !2078)
!2179 = !DILocation(line: 594, column: 13, scope: !2078)
!2180 = !DILocation(line: 595, column: 8, scope: !2078)
!2181 = !DILocation(line: 595, column: 12, scope: !2078)
!2182 = !DILocation(line: 596, column: 7, scope: !2078)
!2183 = !DILocation(line: 598, column: 7, scope: !2056)
!2184 = !DILocation(line: 601, column: 18, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !42, line: 601, column: 9)
!2186 = distinct !DILexicalBlock(scope: !2015, file: !42, line: 600, column: 13)
!2187 = !DILocation(line: 601, column: 17, scope: !2185)
!2188 = !DILocation(line: 601, column: 16, scope: !2185)
!2189 = !DILocation(line: 601, column: 9, scope: !2185)
!2190 = !DILocation(line: 601, column: 27, scope: !2185)
!2191 = !DILocation(line: 601, column: 39, scope: !2185)
!2192 = !DILocation(line: 601, column: 38, scope: !2185)
!2193 = !DILocation(line: 601, column: 37, scope: !2185)
!2194 = !DILocation(line: 601, column: 30, scope: !2185)
!2195 = !DILocation(line: 601, column: 9, scope: !2186)
!2196 = !DILocation(line: 602, column: 27, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2185, file: !42, line: 601, column: 49)
!2198 = !DILocation(line: 602, column: 26, scope: !2197)
!2199 = !DILocation(line: 602, column: 25, scope: !2197)
!2200 = !DILocation(line: 602, column: 18, scope: !2197)
!2201 = !DILocation(line: 602, column: 36, scope: !2197)
!2202 = !DILocation(line: 602, column: 41, scope: !2197)
!2203 = !DILocation(line: 602, column: 59, scope: !2197)
!2204 = !DILocation(line: 602, column: 58, scope: !2197)
!2205 = !DILocation(line: 602, column: 57, scope: !2197)
!2206 = !DILocation(line: 602, column: 50, scope: !2197)
!2207 = !DILocation(line: 602, column: 68, scope: !2197)
!2208 = !DILocation(line: 602, column: 47, scope: !2197)
!2209 = !DILocation(line: 602, column: 16, scope: !2197)
!2210 = !DILocation(line: 602, column: 9, scope: !2197)
!2211 = !DILocation(line: 602, column: 8, scope: !2197)
!2212 = !DILocation(line: 602, column: 14, scope: !2197)
!2213 = !DILocation(line: 603, column: 11, scope: !2197)
!2214 = !DILocation(line: 603, column: 7, scope: !2197)
!2215 = !DILocation(line: 604, column: 9, scope: !2197)
!2216 = !DILocation(line: 604, column: 14, scope: !2197)
!2217 = !DILocation(line: 605, column: 7, scope: !2197)
!2218 = !DILocation(line: 607, column: 7, scope: !2185)
!2219 = !DILocation(line: 617, column: 11, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !42, line: 617, column: 9)
!2221 = distinct !DILexicalBlock(scope: !2015, file: !42, line: 616, column: 13)
!2222 = !DILocation(line: 617, column: 10, scope: !2220)
!2223 = !DILocation(line: 617, column: 9, scope: !2220)
!2224 = !DILocation(line: 617, column: 19, scope: !2220)
!2225 = !DILocation(line: 617, column: 26, scope: !2220)
!2226 = !DILocation(line: 617, column: 31, scope: !2220)
!2227 = !DILocation(line: 617, column: 30, scope: !2220)
!2228 = !DILocation(line: 617, column: 29, scope: !2220)
!2229 = !DILocation(line: 617, column: 39, scope: !2220)
!2230 = !DILocation(line: 617, column: 9, scope: !2221)
!2231 = !DILocation(line: 618, column: 20, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2220, file: !42, line: 617, column: 47)
!2233 = !DILocation(line: 618, column: 19, scope: !2232)
!2234 = !DILocation(line: 618, column: 18, scope: !2232)
!2235 = !DILocation(line: 618, column: 28, scope: !2232)
!2236 = !DILocation(line: 618, column: 35, scope: !2232)
!2237 = !DILocation(line: 618, column: 46, scope: !2232)
!2238 = !DILocation(line: 618, column: 45, scope: !2232)
!2239 = !DILocation(line: 618, column: 44, scope: !2232)
!2240 = !DILocation(line: 618, column: 54, scope: !2232)
!2241 = !DILocation(line: 618, column: 41, scope: !2232)
!2242 = !DILocation(line: 618, column: 16, scope: !2232)
!2243 = !DILocation(line: 618, column: 9, scope: !2232)
!2244 = !DILocation(line: 618, column: 8, scope: !2232)
!2245 = !DILocation(line: 618, column: 14, scope: !2232)
!2246 = !DILocation(line: 619, column: 11, scope: !2232)
!2247 = !DILocation(line: 619, column: 7, scope: !2232)
!2248 = !DILocation(line: 620, column: 9, scope: !2232)
!2249 = !DILocation(line: 620, column: 14, scope: !2232)
!2250 = !DILocation(line: 621, column: 7, scope: !2232)
!2251 = !DILocation(line: 623, column: 7, scope: !2220)
!2252 = !DILocation(line: 624, column: 3, scope: !2221)
!2253 = !DILabel(scope: !2015, name: "invalid_escape", file: !42, line: 630)
!2254 = !DILocation(line: 630, column: 3, scope: !2015)
!2255 = !DILocation(line: 631, column: 16, scope: !2015)
!2256 = !DILocation(line: 631, column: 15, scope: !2015)
!2257 = !DILocation(line: 631, column: 14, scope: !2015)
!2258 = !DILocation(line: 631, column: 7, scope: !2015)
!2259 = !DILocation(line: 631, column: 6, scope: !2015)
!2260 = !DILocation(line: 631, column: 12, scope: !2015)
!2261 = !DILocation(line: 632, column: 9, scope: !2015)
!2262 = !DILocation(line: 632, column: 5, scope: !2015)
!2263 = !DILocation(line: 633, column: 9, scope: !2015)
!2264 = !DILocation(line: 633, column: 5, scope: !2015)
!2265 = !DILocation(line: 634, column: 3, scope: !2015)
!2266 = !DILocation(line: 635, column: 1, scope: !2000)
!2267 = distinct !DISubprogram(name: "utf8_from_u32", scope: !42, file: !42, line: 527, type: !2268, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!107, !20, !46}
!2270 = !DILocalVariable(name: "dest", arg: 1, scope: !2267, file: !42, line: 527, type: !20)
!2271 = !DILocation(line: 527, column: 42, scope: !2267)
!2272 = !DILocalVariable(name: "u", arg: 2, scope: !2267, file: !42, line: 527, type: !46)
!2273 = !DILocation(line: 527, column: 57, scope: !2267)
!2274 = !DILocation(line: 528, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2267, file: !42, line: 528, column: 7)
!2276 = !DILocation(line: 528, column: 9, scope: !2275)
!2277 = !DILocation(line: 528, column: 7, scope: !2267)
!2278 = !DILocation(line: 529, column: 13, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2275, file: !42, line: 528, column: 17)
!2280 = !DILocation(line: 529, column: 6, scope: !2279)
!2281 = !DILocation(line: 529, column: 11, scope: !2279)
!2282 = !DILocation(line: 530, column: 5, scope: !2279)
!2283 = !DILocation(line: 531, column: 14, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2275, file: !42, line: 531, column: 14)
!2285 = !DILocation(line: 531, column: 16, scope: !2284)
!2286 = !DILocation(line: 531, column: 14, scope: !2275)
!2287 = !DILocation(line: 532, column: 24, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !42, line: 531, column: 25)
!2289 = !DILocation(line: 532, column: 26, scope: !2288)
!2290 = !DILocation(line: 532, column: 21, scope: !2288)
!2291 = !DILocation(line: 532, column: 17, scope: !2288)
!2292 = !DILocation(line: 532, column: 11, scope: !2288)
!2293 = !DILocation(line: 532, column: 15, scope: !2288)
!2294 = !DILocation(line: 533, column: 24, scope: !2288)
!2295 = !DILocation(line: 533, column: 26, scope: !2288)
!2296 = !DILocation(line: 533, column: 21, scope: !2288)
!2297 = !DILocation(line: 533, column: 17, scope: !2288)
!2298 = !DILocation(line: 533, column: 11, scope: !2288)
!2299 = !DILocation(line: 533, column: 15, scope: !2288)
!2300 = !DILocation(line: 534, column: 5, scope: !2288)
!2301 = !DILocation(line: 535, column: 14, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2284, file: !42, line: 535, column: 14)
!2303 = !DILocation(line: 535, column: 16, scope: !2302)
!2304 = !DILocation(line: 535, column: 14, scope: !2284)
!2305 = !DILocation(line: 536, column: 24, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !42, line: 535, column: 26)
!2307 = !DILocation(line: 536, column: 26, scope: !2306)
!2308 = !DILocation(line: 536, column: 21, scope: !2306)
!2309 = !DILocation(line: 536, column: 17, scope: !2306)
!2310 = !DILocation(line: 536, column: 11, scope: !2306)
!2311 = !DILocation(line: 536, column: 15, scope: !2306)
!2312 = !DILocation(line: 537, column: 25, scope: !2306)
!2313 = !DILocation(line: 537, column: 27, scope: !2306)
!2314 = !DILocation(line: 537, column: 33, scope: !2306)
!2315 = !DILocation(line: 537, column: 21, scope: !2306)
!2316 = !DILocation(line: 537, column: 17, scope: !2306)
!2317 = !DILocation(line: 537, column: 11, scope: !2306)
!2318 = !DILocation(line: 537, column: 15, scope: !2306)
!2319 = !DILocation(line: 538, column: 24, scope: !2306)
!2320 = !DILocation(line: 538, column: 26, scope: !2306)
!2321 = !DILocation(line: 538, column: 21, scope: !2306)
!2322 = !DILocation(line: 538, column: 17, scope: !2306)
!2323 = !DILocation(line: 538, column: 11, scope: !2306)
!2324 = !DILocation(line: 538, column: 15, scope: !2306)
!2325 = !DILocation(line: 539, column: 5, scope: !2306)
!2326 = !DILocation(line: 541, column: 23, scope: !2267)
!2327 = !DILocation(line: 541, column: 25, scope: !2267)
!2328 = !DILocation(line: 541, column: 32, scope: !2267)
!2329 = !DILocation(line: 541, column: 19, scope: !2267)
!2330 = !DILocation(line: 541, column: 15, scope: !2267)
!2331 = !DILocation(line: 541, column: 9, scope: !2267)
!2332 = !DILocation(line: 541, column: 13, scope: !2267)
!2333 = !DILocation(line: 542, column: 23, scope: !2267)
!2334 = !DILocation(line: 542, column: 25, scope: !2267)
!2335 = !DILocation(line: 542, column: 32, scope: !2267)
!2336 = !DILocation(line: 542, column: 19, scope: !2267)
!2337 = !DILocation(line: 542, column: 15, scope: !2267)
!2338 = !DILocation(line: 542, column: 9, scope: !2267)
!2339 = !DILocation(line: 542, column: 13, scope: !2267)
!2340 = !DILocation(line: 543, column: 23, scope: !2267)
!2341 = !DILocation(line: 543, column: 25, scope: !2267)
!2342 = !DILocation(line: 543, column: 31, scope: !2267)
!2343 = !DILocation(line: 543, column: 19, scope: !2267)
!2344 = !DILocation(line: 543, column: 15, scope: !2267)
!2345 = !DILocation(line: 543, column: 9, scope: !2267)
!2346 = !DILocation(line: 543, column: 13, scope: !2267)
!2347 = !DILocation(line: 544, column: 22, scope: !2267)
!2348 = !DILocation(line: 544, column: 24, scope: !2267)
!2349 = !DILocation(line: 544, column: 19, scope: !2267)
!2350 = !DILocation(line: 544, column: 15, scope: !2267)
!2351 = !DILocation(line: 544, column: 9, scope: !2267)
!2352 = !DILocation(line: 544, column: 13, scope: !2267)
!2353 = !DILocation(line: 545, column: 3, scope: !2267)
!2354 = !DILocation(line: 546, column: 1, scope: !2267)
!2355 = distinct !DISubprogram(name: "fio_json_stack_push", scope: !57, file: !57, line: 5114, type: !2356, scopeLine: 5114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!107, !738, !52}
!2358 = !DILocalVariable(name: "ary", arg: 1, scope: !2355, file: !57, line: 5114, type: !738)
!2359 = !DILocation(line: 5114, column: 50, scope: !2355)
!2360 = !DILocalVariable(name: "data", arg: 2, scope: !2355, file: !57, line: 5114, type: !52)
!2361 = !DILocation(line: 5114, column: 68, scope: !2355)
!2362 = !DILocation(line: 5115, column: 8, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2355, file: !57, line: 5115, column: 7)
!2364 = !DILocation(line: 5115, column: 7, scope: !2355)
!2365 = !DILocation(line: 5116, column: 5, scope: !2363)
!2366 = !DILocation(line: 5117, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2355, file: !57, line: 5117, column: 7)
!2368 = !DILocation(line: 5117, column: 12, scope: !2367)
!2369 = !DILocation(line: 5117, column: 20, scope: !2367)
!2370 = !DILocation(line: 5117, column: 25, scope: !2367)
!2371 = !DILocation(line: 5117, column: 17, scope: !2367)
!2372 = !DILocation(line: 5117, column: 7, scope: !2355)
!2373 = !DILocation(line: 5118, column: 32, scope: !2367)
!2374 = !DILocation(line: 5118, column: 5, scope: !2367)
!2375 = !DILocation(line: 5119, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2355, file: !57, line: 5119, column: 7)
!2377 = !DILocation(line: 5119, column: 12, scope: !2376)
!2378 = !DILocation(line: 5119, column: 21, scope: !2376)
!2379 = !DILocation(line: 5119, column: 26, scope: !2376)
!2380 = !DILocation(line: 5119, column: 18, scope: !2376)
!2381 = !DILocation(line: 5119, column: 7, scope: !2355)
!2382 = !DILocation(line: 5120, column: 18, scope: !2376)
!2383 = !DILocation(line: 5120, column: 23, scope: !2376)
!2384 = !DILocation(line: 5120, column: 27, scope: !2376)
!2385 = !DILocation(line: 5120, column: 5, scope: !2376)
!2386 = !DILocation(line: 5120, column: 10, scope: !2376)
!2387 = !DILocation(line: 5120, column: 16, scope: !2376)
!2388 = !DILocation(line: 5121, column: 3, scope: !2355)
!2389 = !DILocation(line: 5122, column: 5, scope: !2355)
!2390 = !DILocation(line: 5122, column: 10, scope: !2355)
!2391 = !DILocation(line: 5122, column: 3, scope: !2355)
!2392 = !DILocation(line: 5123, column: 3, scope: !2355)
!2393 = !DILocation(line: 5124, column: 1, scope: !2355)
!2394 = distinct !DISubprogram(name: "fio_json_stack___require_on_top", scope: !57, file: !57, line: 4912, type: !2395, scopeLine: 4912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !738, !31}
!2397 = !DILocalVariable(name: "ary", arg: 1, scope: !2394, file: !57, line: 4912, type: !738)
!2398 = !DILocation(line: 4912, column: 56, scope: !2394)
!2399 = !DILocalVariable(name: "len", arg: 2, scope: !2394, file: !57, line: 4912, type: !31)
!2400 = !DILocation(line: 4912, column: 68, scope: !2394)
!2401 = !DILocation(line: 4913, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2394, file: !57, line: 4913, column: 7)
!2403 = !DILocation(line: 4913, column: 12, scope: !2402)
!2404 = !DILocation(line: 4913, column: 18, scope: !2402)
!2405 = !DILocation(line: 4913, column: 16, scope: !2402)
!2406 = !DILocation(line: 4913, column: 24, scope: !2402)
!2407 = !DILocation(line: 4913, column: 29, scope: !2402)
!2408 = !DILocation(line: 4913, column: 22, scope: !2402)
!2409 = !DILocation(line: 4913, column: 7, scope: !2394)
!2410 = !DILocation(line: 4914, column: 5, scope: !2402)
!2411 = !DILocation(line: 4915, column: 9, scope: !2394)
!2412 = !DILocation(line: 4915, column: 7, scope: !2394)
!2413 = !DILocation(line: 4917, column: 15, scope: !2394)
!2414 = !DILocation(line: 4917, column: 3, scope: !2394)
!2415 = !DILocation(line: 4917, column: 8, scope: !2394)
!2416 = !DILocation(line: 4917, column: 13, scope: !2394)
!2417 = !DILocation(line: 4920, column: 3, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2394, file: !57, line: 4920, column: 3)
!2419 = !DILocation(line: 4920, column: 3, scope: !2394)
!2420 = !DILocation(line: 4920, column: 3, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2418, file: !57, line: 4920, column: 3)
!2422 = !DILocation(line: 4920, column: 3, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !57, line: 4920, column: 3)
!2424 = distinct !DILexicalBlock(scope: !2421, file: !57, line: 4920, column: 3)
!2425 = !DILocation(line: 4920, column: 3, scope: !2424)
!2426 = !DILocation(line: 4920, column: 3, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2423, file: !57, line: 4920, column: 3)
!2428 = !DILocation(line: 4921, column: 15, scope: !2394)
!2429 = !DILocation(line: 4921, column: 3, scope: !2394)
!2430 = !DILocation(line: 4921, column: 8, scope: !2394)
!2431 = !DILocation(line: 4921, column: 13, scope: !2394)
!2432 = !DILocation(line: 4922, column: 1, scope: !2394)
!2433 = distinct !DISubprogram(name: "fiobj_null", scope: !6, file: !6, line: 87, type: !2434, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!52}
!2436 = !DILocation(line: 87, column: 37, scope: !2433)
!2437 = distinct !DISubprogram(name: "fio_json_stack_pop", scope: !57, file: !57, line: 5134, type: !2438, scopeLine: 5134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!107, !738, !64}
!2440 = !DILocalVariable(name: "ary", arg: 1, scope: !2437, file: !57, line: 5134, type: !738)
!2441 = !DILocation(line: 5134, column: 49, scope: !2437)
!2442 = !DILocalVariable(name: "old", arg: 2, scope: !2437, file: !57, line: 5134, type: !64)
!2443 = !DILocation(line: 5134, column: 68, scope: !2437)
!2444 = !DILocation(line: 5135, column: 24, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2437, file: !57, line: 5135, column: 7)
!2446 = !DILocation(line: 5135, column: 8, scope: !2445)
!2447 = !DILocation(line: 5135, column: 7, scope: !2437)
!2448 = !DILocation(line: 5136, column: 5, scope: !2445)
!2449 = !DILocation(line: 5137, column: 5, scope: !2437)
!2450 = !DILocation(line: 5137, column: 10, scope: !2437)
!2451 = !DILocation(line: 5137, column: 3, scope: !2437)
!2452 = !DILocation(line: 5138, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2437, file: !57, line: 5138, column: 7)
!2454 = !DILocation(line: 5138, column: 7, scope: !2437)
!2455 = !DILocation(line: 5139, column: 5, scope: !2453)
!2456 = !DILocation(line: 5141, column: 3, scope: !2437)
!2457 = !DILocation(line: 5142, column: 1, scope: !2437)
!2458 = distinct !DISubprogram(name: "fio_json_stack_count", scope: !57, file: !57, line: 4953, type: !2459, scopeLine: 4953, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!31, !738}
!2461 = !DILocalVariable(name: "ary", arg: 1, scope: !2458, file: !57, line: 4953, type: !738)
!2462 = !DILocation(line: 4953, column: 54, scope: !2458)
!2463 = !DILocation(line: 4954, column: 10, scope: !2458)
!2464 = !DILocation(line: 4954, column: 17, scope: !2458)
!2465 = !DILocation(line: 4954, column: 22, scope: !2458)
!2466 = !DILocation(line: 4954, column: 28, scope: !2458)
!2467 = !DILocation(line: 4954, column: 33, scope: !2458)
!2468 = !DILocation(line: 4954, column: 26, scope: !2458)
!2469 = !DILocation(line: 4954, column: 3, scope: !2458)
!2470 = distinct !DISubprogram(name: "fiobj_true", scope: !6, file: !6, line: 88, type: !2434, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2471 = !DILocation(line: 88, column: 37, scope: !2470)
!2472 = distinct !DISubprogram(name: "fiobj_false", scope: !6, file: !6, line: 89, type: !2434, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2473 = !DILocation(line: 89, column: 38, scope: !2472)
!2474 = distinct !DISubprogram(name: "fiobj_num_new", scope: !2475, file: !2475, line: 106, type: !2476, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2475 = !DIFile(filename: "../include/fiobj_numbers.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!52, !66}
!2478 = !DILocalVariable(name: "num", arg: 1, scope: !2474, file: !2475, line: 106, type: !66)
!2479 = !DILocation(line: 106, column: 41, scope: !2474)
!2480 = !DILocation(line: 107, column: 20, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2474, file: !2475, line: 107, column: 7)
!2482 = !DILocation(line: 107, column: 24, scope: !2481)
!2483 = !DILocation(line: 108, column: 66, scope: !2481)
!2484 = !DILocation(line: 108, column: 72, scope: !2481)
!2485 = !DILocation(line: 109, column: 20, scope: !2481)
!2486 = !DILocation(line: 109, column: 24, scope: !2481)
!2487 = !DILocation(line: 110, column: 66, scope: !2481)
!2488 = !DILocation(line: 107, column: 7, scope: !2474)
!2489 = !DILocalVariable(name: "num_abs", scope: !2490, file: !2475, line: 112, type: !2491)
!2490 = distinct !DILexicalBlock(scope: !2481, file: !2475, line: 111, column: 66)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!2492 = !DILocation(line: 112, column: 21, scope: !2490)
!2493 = !DILocation(line: 112, column: 42, scope: !2490)
!2494 = !DILocation(line: 112, column: 46, scope: !2490)
!2495 = !DILocalVariable(name: "num_sign", scope: !2490, file: !2475, line: 113, type: !2491)
!2496 = !DILocation(line: 113, column: 21, scope: !2490)
!2497 = !DILocation(line: 113, column: 43, scope: !2490)
!2498 = !DILocation(line: 113, column: 47, scope: !2490)
!2499 = !DILocation(line: 114, column: 14, scope: !2490)
!2500 = !DILocation(line: 114, column: 22, scope: !2490)
!2501 = !DILocation(line: 114, column: 30, scope: !2490)
!2502 = !DILocation(line: 114, column: 28, scope: !2490)
!2503 = !DILocation(line: 114, column: 39, scope: !2490)
!2504 = !DILocation(line: 114, column: 5, scope: !2490)
!2505 = !DILocation(line: 116, column: 31, scope: !2474)
!2506 = !DILocation(line: 116, column: 10, scope: !2474)
!2507 = !DILocation(line: 116, column: 3, scope: !2474)
!2508 = !DILocation(line: 117, column: 1, scope: !2474)
!2509 = distinct !DISubprogram(name: "fio_json_stack___rel2absolute", scope: !57, file: !57, line: 4901, type: !2510, scopeLine: 4902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!66, !738, !66}
!2512 = !DILocalVariable(name: "ary", arg: 1, scope: !2509, file: !57, line: 4901, type: !738)
!2513 = !DILocation(line: 4901, column: 65, scope: !2509)
!2514 = !DILocalVariable(name: "index", arg: 2, scope: !2509, file: !57, line: 4902, type: !66)
!2515 = !DILocation(line: 4902, column: 60, scope: !2509)
!2516 = !DILocation(line: 4903, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2509, file: !57, line: 4903, column: 7)
!2518 = !DILocation(line: 4903, column: 13, scope: !2517)
!2519 = !DILocation(line: 4903, column: 7, scope: !2509)
!2520 = !DILocation(line: 4904, column: 12, scope: !2517)
!2521 = !DILocation(line: 4904, column: 5, scope: !2517)
!2522 = !DILocation(line: 4905, column: 12, scope: !2509)
!2523 = !DILocation(line: 4905, column: 17, scope: !2509)
!2524 = !DILocation(line: 4905, column: 23, scope: !2509)
!2525 = !DILocation(line: 4905, column: 28, scope: !2509)
!2526 = !DILocation(line: 4905, column: 21, scope: !2509)
!2527 = !DILocation(line: 4905, column: 9, scope: !2509)
!2528 = !DILocation(line: 4906, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2509, file: !57, line: 4906, column: 7)
!2530 = !DILocation(line: 4906, column: 13, scope: !2529)
!2531 = !DILocation(line: 4906, column: 7, scope: !2509)
!2532 = !DILocation(line: 4907, column: 12, scope: !2529)
!2533 = !DILocation(line: 4907, column: 5, scope: !2529)
!2534 = !DILocation(line: 4908, column: 3, scope: !2509)
!2535 = !DILocation(line: 4909, column: 1, scope: !2509)
!2536 = distinct !DISubprogram(name: "fiobj_type", scope: !6, file: !6, line: 250, type: !2537, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!68, !52}
!2539 = !DILocalVariable(name: "o", arg: 1, scope: !2536, file: !6, line: 250, type: !52)
!2540 = !DILocation(line: 250, column: 45, scope: !2536)
!2541 = !DILocation(line: 251, column: 8, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2536, file: !6, line: 251, column: 7)
!2543 = !DILocation(line: 251, column: 7, scope: !2536)
!2544 = !DILocation(line: 252, column: 5, scope: !2542)
!2545 = !DILocation(line: 253, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2536, file: !6, line: 253, column: 7)
!2547 = !DILocation(line: 253, column: 9, scope: !2546)
!2548 = !DILocation(line: 253, column: 7, scope: !2536)
!2549 = !DILocation(line: 254, column: 5, scope: !2546)
!2550 = !DILocation(line: 255, column: 8, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2536, file: !6, line: 255, column: 7)
!2552 = !DILocation(line: 255, column: 10, scope: !2551)
!2553 = !DILocation(line: 255, column: 37, scope: !2551)
!2554 = !DILocation(line: 255, column: 7, scope: !2536)
!2555 = !DILocation(line: 256, column: 29, scope: !2551)
!2556 = !DILocation(line: 256, column: 12, scope: !2551)
!2557 = !DILocation(line: 256, column: 5, scope: !2551)
!2558 = !DILocation(line: 258, column: 8, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2536, file: !6, line: 257, column: 7)
!2560 = !DILocation(line: 258, column: 10, scope: !2559)
!2561 = !DILocation(line: 258, column: 37, scope: !2559)
!2562 = !DILocation(line: 257, column: 7, scope: !2536)
!2563 = !DILocation(line: 259, column: 5, scope: !2559)
!2564 = !DILocation(line: 260, column: 30, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2536, file: !6, line: 260, column: 7)
!2566 = !DILocation(line: 260, column: 32, scope: !2565)
!2567 = !DILocation(line: 260, column: 59, scope: !2565)
!2568 = !DILocation(line: 260, column: 7, scope: !2536)
!2569 = !DILocation(line: 261, column: 5, scope: !2565)
!2570 = !DILocation(line: 262, column: 30, scope: !2536)
!2571 = !DILocation(line: 262, column: 10, scope: !2536)
!2572 = !DILocation(line: 262, column: 3, scope: !2536)
!2573 = !DILocation(line: 263, column: 1, scope: !2536)
!2574 = distinct !DISubprogram(name: "write_safe_str", scope: !3, file: !3, line: 167, type: !2575, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !52, !100}
!2577 = !DILocalVariable(name: "dest", arg: 1, scope: !2574, file: !3, line: 167, type: !52)
!2578 = !DILocation(line: 167, column: 34, scope: !2574)
!2579 = !DILocalVariable(name: "str", arg: 2, scope: !2574, file: !3, line: 167, type: !100)
!2580 = !DILocation(line: 167, column: 52, scope: !2574)
!2581 = !DILocalVariable(name: "s", scope: !2574, file: !3, line: 168, type: !1020)
!2582 = !DILocation(line: 168, column: 18, scope: !2574)
!2583 = !DILocation(line: 168, column: 37, scope: !2574)
!2584 = !DILocation(line: 168, column: 22, scope: !2574)
!2585 = !DILocalVariable(name: "t", scope: !2574, file: !3, line: 169, type: !1020)
!2586 = !DILocation(line: 169, column: 18, scope: !2574)
!2587 = !DILocation(line: 169, column: 37, scope: !2574)
!2588 = !DILocation(line: 169, column: 22, scope: !2574)
!2589 = !DILocation(line: 170, column: 5, scope: !2574)
!2590 = !DILocation(line: 170, column: 12, scope: !2574)
!2591 = !DILocation(line: 170, column: 3, scope: !2574)
!2592 = !DILocation(line: 170, column: 17, scope: !2574)
!2593 = !DILocation(line: 171, column: 5, scope: !2574)
!2594 = !DILocation(line: 171, column: 8, scope: !2574)
!2595 = !DILocation(line: 172, column: 20, scope: !2574)
!2596 = !DILocation(line: 172, column: 28, scope: !2574)
!2597 = !DILocation(line: 172, column: 3, scope: !2574)
!2598 = !DILocation(line: 173, column: 22, scope: !2574)
!2599 = !DILocation(line: 173, column: 7, scope: !2574)
!2600 = !DILocalVariable(name: "src", scope: !2574, file: !3, line: 174, type: !2601)
!2601 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!2602 = !DILocation(line: 174, column: 27, scope: !2574)
!2603 = !DILocation(line: 174, column: 52, scope: !2574)
!2604 = !DILocalVariable(name: "len", scope: !2574, file: !3, line: 175, type: !31)
!2605 = !DILocation(line: 175, column: 10, scope: !2574)
!2606 = !DILocation(line: 175, column: 18, scope: !2574)
!2607 = !DILocalVariable(name: "end", scope: !2574, file: !3, line: 176, type: !34)
!2608 = !DILocation(line: 176, column: 12, scope: !2574)
!2609 = !DILocation(line: 176, column: 20, scope: !2574)
!2610 = !DILocalVariable(name: "added", scope: !2574, file: !3, line: 178, type: !31)
!2611 = !DILocation(line: 178, column: 10, scope: !2574)
!2612 = !DILocalVariable(name: "capa", scope: !2574, file: !3, line: 179, type: !31)
!2613 = !DILocation(line: 179, column: 10, scope: !2574)
!2614 = !DILocation(line: 179, column: 32, scope: !2574)
!2615 = !DILocation(line: 179, column: 17, scope: !2574)
!2616 = !DILocation(line: 180, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 180, column: 7)
!2618 = !DILocation(line: 180, column: 15, scope: !2617)
!2619 = !DILocation(line: 180, column: 23, scope: !2617)
!2620 = !DILocation(line: 180, column: 19, scope: !2617)
!2621 = !DILocation(line: 180, column: 27, scope: !2617)
!2622 = !DILocation(line: 180, column: 12, scope: !2617)
!2623 = !DILocation(line: 180, column: 7, scope: !2574)
!2624 = !DILocation(line: 185, column: 36, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 184, column: 12)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 181, column: 9)
!2627 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 180, column: 33)
!2628 = !DILocation(line: 185, column: 43, scope: !2625)
!2629 = !DILocation(line: 185, column: 51, scope: !2625)
!2630 = !DILocation(line: 185, column: 47, scope: !2625)
!2631 = !DILocation(line: 185, column: 55, scope: !2625)
!2632 = !DILocation(line: 185, column: 14, scope: !2625)
!2633 = !DILocation(line: 185, column: 12, scope: !2625)
!2634 = !DILocalVariable(name: "tmp", scope: !2627, file: !3, line: 187, type: !1020)
!2635 = !DILocation(line: 187, column: 20, scope: !2627)
!2636 = !DILocation(line: 187, column: 41, scope: !2627)
!2637 = !DILocation(line: 187, column: 26, scope: !2627)
!2638 = !DILocation(line: 188, column: 9, scope: !2627)
!2639 = !DILocation(line: 189, column: 3, scope: !2627)
!2640 = !DILocation(line: 190, column: 3, scope: !2574)
!2641 = !DILocation(line: 190, column: 10, scope: !2574)
!2642 = !DILocalVariable(name: "writer", scope: !2643, file: !3, line: 191, type: !2644)
!2643 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 190, column: 15)
!2644 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!2645 = !DILocation(line: 191, column: 20, scope: !2643)
!2646 = !DILocation(line: 191, column: 39, scope: !2643)
!2647 = !DILocation(line: 192, column: 5, scope: !2643)
!2648 = !DILocation(line: 192, column: 12, scope: !2643)
!2649 = !DILocation(line: 192, column: 16, scope: !2643)
!2650 = !DILocation(line: 192, column: 19, scope: !2643)
!2651 = !DILocation(line: 192, column: 26, scope: !2643)
!2652 = !DILocation(line: 192, column: 31, scope: !2643)
!2653 = !DILocation(line: 192, column: 34, scope: !2643)
!2654 = !DILocation(line: 192, column: 41, scope: !2643)
!2655 = !DILocation(line: 192, column: 48, scope: !2643)
!2656 = !DILocation(line: 192, column: 51, scope: !2643)
!2657 = !DILocation(line: 192, column: 58, scope: !2643)
!2658 = !DILocation(line: 0, scope: !2643)
!2659 = !DILocation(line: 193, column: 10, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 192, column: 67)
!2661 = !DILocation(line: 194, column: 28, scope: !2660)
!2662 = !DILocation(line: 194, column: 23, scope: !2660)
!2663 = !DILocation(line: 194, column: 7, scope: !2660)
!2664 = !DILocation(line: 194, column: 17, scope: !2660)
!2665 = !DILocation(line: 194, column: 21, scope: !2660)
!2666 = distinct !{!2666, !2647, !2667}
!2667 = !DILocation(line: 195, column: 5, scope: !2643)
!2668 = !DILocation(line: 196, column: 10, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 196, column: 9)
!2670 = !DILocation(line: 196, column: 9, scope: !2643)
!2671 = !DILocation(line: 197, column: 7, scope: !2669)
!2672 = !DILocation(line: 198, column: 13, scope: !2643)
!2673 = !DILocation(line: 198, column: 5, scope: !2643)
!2674 = !DILocation(line: 200, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 198, column: 21)
!2676 = !DILocation(line: 200, column: 17, scope: !2675)
!2677 = !DILocation(line: 200, column: 21, scope: !2675)
!2678 = !DILocation(line: 201, column: 7, scope: !2675)
!2679 = !DILocation(line: 201, column: 17, scope: !2675)
!2680 = !DILocation(line: 201, column: 21, scope: !2675)
!2681 = !DILocation(line: 202, column: 12, scope: !2675)
!2682 = !DILocation(line: 203, column: 7, scope: !2675)
!2683 = !DILocation(line: 205, column: 7, scope: !2675)
!2684 = !DILocation(line: 205, column: 17, scope: !2675)
!2685 = !DILocation(line: 205, column: 21, scope: !2675)
!2686 = !DILocation(line: 206, column: 7, scope: !2675)
!2687 = !DILocation(line: 206, column: 17, scope: !2675)
!2688 = !DILocation(line: 206, column: 21, scope: !2675)
!2689 = !DILocation(line: 207, column: 12, scope: !2675)
!2690 = !DILocation(line: 208, column: 7, scope: !2675)
!2691 = !DILocation(line: 210, column: 7, scope: !2675)
!2692 = !DILocation(line: 210, column: 17, scope: !2675)
!2693 = !DILocation(line: 210, column: 21, scope: !2675)
!2694 = !DILocation(line: 211, column: 7, scope: !2675)
!2695 = !DILocation(line: 211, column: 17, scope: !2675)
!2696 = !DILocation(line: 211, column: 21, scope: !2675)
!2697 = !DILocation(line: 212, column: 12, scope: !2675)
!2698 = !DILocation(line: 213, column: 7, scope: !2675)
!2699 = !DILocation(line: 215, column: 7, scope: !2675)
!2700 = !DILocation(line: 215, column: 17, scope: !2675)
!2701 = !DILocation(line: 215, column: 21, scope: !2675)
!2702 = !DILocation(line: 216, column: 7, scope: !2675)
!2703 = !DILocation(line: 216, column: 17, scope: !2675)
!2704 = !DILocation(line: 216, column: 21, scope: !2675)
!2705 = !DILocation(line: 217, column: 12, scope: !2675)
!2706 = !DILocation(line: 218, column: 7, scope: !2675)
!2707 = !DILocation(line: 220, column: 7, scope: !2675)
!2708 = !DILocation(line: 220, column: 17, scope: !2675)
!2709 = !DILocation(line: 220, column: 21, scope: !2675)
!2710 = !DILocation(line: 221, column: 7, scope: !2675)
!2711 = !DILocation(line: 221, column: 17, scope: !2675)
!2712 = !DILocation(line: 221, column: 21, scope: !2675)
!2713 = !DILocation(line: 222, column: 12, scope: !2675)
!2714 = !DILocation(line: 223, column: 7, scope: !2675)
!2715 = !DILocation(line: 227, column: 7, scope: !2675)
!2716 = !DILocation(line: 227, column: 17, scope: !2675)
!2717 = !DILocation(line: 227, column: 21, scope: !2675)
!2718 = !DILocation(line: 228, column: 23, scope: !2675)
!2719 = !DILocation(line: 228, column: 7, scope: !2675)
!2720 = !DILocation(line: 228, column: 17, scope: !2675)
!2721 = !DILocation(line: 228, column: 21, scope: !2675)
!2722 = !DILocation(line: 229, column: 12, scope: !2675)
!2723 = !DILocation(line: 230, column: 7, scope: !2675)
!2724 = !DILocation(line: 232, column: 11, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 232, column: 11)
!2726 = !DILocation(line: 232, column: 18, scope: !2725)
!2727 = !DILocation(line: 232, column: 11, scope: !2675)
!2728 = !DILocation(line: 234, column: 9, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 232, column: 25)
!2730 = !DILocation(line: 234, column: 19, scope: !2729)
!2731 = !DILocation(line: 234, column: 23, scope: !2729)
!2732 = !DILocation(line: 235, column: 9, scope: !2729)
!2733 = !DILocation(line: 235, column: 19, scope: !2729)
!2734 = !DILocation(line: 235, column: 23, scope: !2729)
!2735 = !DILocation(line: 236, column: 9, scope: !2729)
!2736 = !DILocation(line: 236, column: 19, scope: !2729)
!2737 = !DILocation(line: 236, column: 23, scope: !2729)
!2738 = !DILocation(line: 237, column: 9, scope: !2729)
!2739 = !DILocation(line: 237, column: 19, scope: !2729)
!2740 = !DILocation(line: 237, column: 23, scope: !2729)
!2741 = !DILocation(line: 238, column: 35, scope: !2729)
!2742 = !DILocation(line: 238, column: 42, scope: !2729)
!2743 = !DILocation(line: 238, column: 25, scope: !2729)
!2744 = !DILocation(line: 238, column: 9, scope: !2729)
!2745 = !DILocation(line: 238, column: 19, scope: !2729)
!2746 = !DILocation(line: 238, column: 23, scope: !2729)
!2747 = !DILocation(line: 239, column: 35, scope: !2729)
!2748 = !DILocation(line: 239, column: 42, scope: !2729)
!2749 = !DILocation(line: 239, column: 25, scope: !2729)
!2750 = !DILocation(line: 239, column: 9, scope: !2729)
!2751 = !DILocation(line: 239, column: 19, scope: !2729)
!2752 = !DILocation(line: 239, column: 23, scope: !2729)
!2753 = !DILocation(line: 240, column: 15, scope: !2729)
!2754 = !DILocation(line: 241, column: 7, scope: !2729)
!2755 = !DILocation(line: 242, column: 25, scope: !2725)
!2756 = !DILocation(line: 242, column: 9, scope: !2725)
!2757 = !DILocation(line: 242, column: 19, scope: !2725)
!2758 = !DILocation(line: 242, column: 23, scope: !2725)
!2759 = !DILocation(line: 243, column: 7, scope: !2675)
!2760 = !DILocation(line: 245, column: 8, scope: !2643)
!2761 = !DILocation(line: 246, column: 8, scope: !2643)
!2762 = !DILocation(line: 247, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 247, column: 9)
!2764 = !DILocation(line: 247, column: 15, scope: !2763)
!2765 = !DILocation(line: 247, column: 21, scope: !2763)
!2766 = !DILocation(line: 247, column: 24, scope: !2763)
!2767 = !DILocation(line: 247, column: 32, scope: !2763)
!2768 = !DILocation(line: 247, column: 38, scope: !2763)
!2769 = !DILocation(line: 247, column: 36, scope: !2763)
!2770 = !DILocation(line: 247, column: 42, scope: !2763)
!2771 = !DILocation(line: 247, column: 29, scope: !2763)
!2772 = !DILocation(line: 247, column: 9, scope: !2643)
!2773 = !DILocation(line: 248, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 247, column: 48)
!2775 = !DILocation(line: 248, column: 14, scope: !2774)
!2776 = !DILocation(line: 248, column: 19, scope: !2774)
!2777 = !DILocation(line: 249, column: 24, scope: !2774)
!2778 = !DILocation(line: 249, column: 30, scope: !2774)
!2779 = !DILocation(line: 249, column: 7, scope: !2774)
!2780 = !DILocation(line: 250, column: 29, scope: !2774)
!2781 = !DILocation(line: 250, column: 36, scope: !2774)
!2782 = !DILocation(line: 250, column: 42, scope: !2774)
!2783 = !DILocation(line: 250, column: 40, scope: !2774)
!2784 = !DILocation(line: 250, column: 46, scope: !2774)
!2785 = !DILocation(line: 250, column: 7, scope: !2774)
!2786 = !DILocation(line: 251, column: 26, scope: !2774)
!2787 = !DILocation(line: 251, column: 11, scope: !2774)
!2788 = !DILocation(line: 252, column: 26, scope: !2774)
!2789 = !DILocation(line: 252, column: 14, scope: !2774)
!2790 = !DILocation(line: 253, column: 16, scope: !2774)
!2791 = !DILocation(line: 253, column: 12, scope: !2774)
!2792 = !DILocation(line: 254, column: 13, scope: !2774)
!2793 = !DILocation(line: 255, column: 5, scope: !2774)
!2794 = distinct !{!2794, !2640, !2795}
!2795 = !DILocation(line: 256, column: 3, scope: !2574)
!2796 = !DILocation(line: 257, column: 5, scope: !2574)
!2797 = !DILocation(line: 257, column: 13, scope: !2574)
!2798 = !DILocation(line: 257, column: 3, scope: !2574)
!2799 = !DILocation(line: 257, column: 17, scope: !2574)
!2800 = !DILocation(line: 258, column: 20, scope: !2574)
!2801 = !DILocation(line: 258, column: 26, scope: !2574)
!2802 = !DILocation(line: 258, column: 3, scope: !2574)
!2803 = !DILocation(line: 259, column: 1, scope: !2574)
