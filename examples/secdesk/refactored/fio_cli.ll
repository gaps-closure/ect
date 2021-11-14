; ModuleID = 'fio_cli.c'
source_filename = "fio_cli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fio_cli_hash_s = type { i64, i64, i64, %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__map_s_*, i8, i8, i8 }
%struct.fio_cli_hash__ordered_s_ = type { i64, %struct.fio_cli_hash_couplet_s }
%struct.fio_cli_hash_couplet_s = type { %struct.cstr_s, i8* }
%struct.cstr_s = type { i64, i8* }
%struct.fio_cli_hash__map_s_ = type { i64, %struct.fio_cli_hash__ordered_s_* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fio_cli_parser_data_s = type { i32, i32, i32, i32, i32, i8**, i8*, i8** }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@fio_cli_start.run_once = internal global i8 0, align 1, !dbg !0
@fio_values = internal global %struct.fio_cli_hash_s zeroinitializer, align 8, !dbg !79
@fio_aliases = internal global %struct.fio_cli_hash_s zeroinitializer, align 8, !dbg !92
@fio_unnamed_count = internal global i64 0, align 8, !dbg !94
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !73
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !75
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !77
@.str.2 = private unnamed_addr constant [102 x i8] c"WARNING: CLI argument name conflict detected\0A         The following two directives conflict:\0A\09%s\0A\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"WARNING: (fio hash map) too many full collisions - under attack?\00", align 1
@.str.4 = private unnamed_addr constant [274 x i8] c"FATAL: facil.io Set / Hash Map has too many collisions (%zu/%zu).\0A\09\09this is a fatal implementation error,please report this issue at facio.io's open source project\0A\09\09Note: hash maps and sets should never reach this point.\0A\09\09They should be guarded against collision attacks.\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"FATAL ERROR: couldn't allocate memory for Set data\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\0A\0D\1B[31mError:\1B[0m unknown argument %.*s %s %s\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"with value\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"(empty)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"This application accepts any of the following possible arguments:\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"\0A\1B[4m%s\1B[0m\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c" \1B[1m%.*s\1B[0m\1B[2m <>\1B[0m\09%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c" \1B[1m%.*s\1B[0m   \09%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c" \1B[1m%.*s\1B[0m\1B[2m ##\1B[0m\09%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c" \1B[1m%.*s\1B[0m\1B[2m <>\1B[0m%*s\09(same as \1B[1m%.*s\1B[0m)\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c" \1B[1m%.*s\1B[0m   %*s\09(same as \1B[1m%.*s\1B[0m)\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c" \1B[1m%.*s\1B[0m\1B[2m ##\1B[0m%*s\09(same as \1B[1m%.*s\1B[0m)\0A\00", align 1
@.str.26 = private unnamed_addr constant [138 x i8] c"\0AUse any of the following input formats:\0A\09-arg <value>\09-arg=<value>\09-arg<value>\0A\0AUse the -h, -help or -? to get this information again.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !103 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !113, metadata !DIExpression()), !dbg !128
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !129
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !129
  call void @llvm.va_start(i8* %7), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %5, metadata !130, metadata !DIExpression()), !dbg !131
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !132
  %9 = load i8*, i8** %2, align 8, !dbg !133
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !134
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !135
  store i32 %11, i32* %5, align 4, !dbg !131
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !136
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !136
  call void @llvm.va_end(i8* %13), !dbg !136
  %14 = load i32, i32* %5, align 4, !dbg !137
  %15 = icmp sle i32 %14, 0, !dbg !139
  br i1 %15, label %19, label %16, !dbg !140

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !141
  %18 = icmp sge i32 %17, 2046, !dbg !142
  br i1 %18, label %19, label %29, !dbg !143

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !144
  %21 = icmp sge i32 %20, 2046, !dbg !147
  br i1 %21, label %22, label %25, !dbg !148

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !149
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !152
  store i32 2041, i32* %5, align 4, !dbg !153
  br label %28, !dbg !154

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !155
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !157
  br label %42, !dbg !158

28:                                               ; preds = %22
  br label %29, !dbg !159

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !160
  %31 = add nsw i32 %30, 1, !dbg !160
  store i32 %31, i32* %5, align 4, !dbg !160
  %32 = sext i32 %30 to i64, !dbg !161
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !161
  store i8 10, i8* %33, align 1, !dbg !162
  %34 = load i32, i32* %5, align 4, !dbg !163
  %35 = sext i32 %34 to i64, !dbg !164
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !164
  store i8 48, i8* %36, align 1, !dbg !165
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !166
  %38 = load i32, i32* %5, align 4, !dbg !167
  %39 = sext i32 %38 to i64, !dbg !167
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !168
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !169
  br label %42, !dbg !170

42:                                               ; preds = %29, %25
  ret void, !dbg !170
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
define dso_local void @fio_cli_start(i32 %0, i8** %1, i32 %2, i32 %3, i8* %4, i8** %5) #0 !dbg !2 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.fio_cli_parser_data_s, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.cstr_s, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.cstr_s, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !171, metadata !DIExpression()), !dbg !172
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !173, metadata !DIExpression()), !dbg !174
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !175, metadata !DIExpression()), !dbg !176
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !177, metadata !DIExpression()), !dbg !178
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !179, metadata !DIExpression()), !dbg !180
  store i8** %5, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !181, metadata !DIExpression()), !dbg !182
  %19 = call i32 @fio_trylock(i8* @fio_cli_start.run_once), !dbg !183
  %20 = icmp ne i32 %19, 0, !dbg !183
  br i1 %20, label %22, label %21, !dbg !185

21:                                               ; preds = %6
  call void @fio_state_callback_add(i32 12, void (i8*)* @fio_cli_end_promise, i8* null), !dbg !186
  br label %22, !dbg !186

22:                                               ; preds = %21, %6
  %23 = load i32, i32* %10, align 4, !dbg !187
  %24 = icmp sge i32 %23, 0, !dbg !189
  br i1 %24, label %25, label %31, !dbg !190

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4, !dbg !191
  %27 = load i32, i32* %9, align 4, !dbg !192
  %28 = icmp slt i32 %26, %27, !dbg !193
  br i1 %28, label %29, label %31, !dbg !194

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4, !dbg !195
  store i32 %30, i32* %10, align 4, !dbg !196
  br label %31, !dbg !197

31:                                               ; preds = %29, %25, %22
  call void @llvm.dbg.declare(metadata %struct.fio_cli_parser_data_s* %13, metadata !198, metadata !DIExpression()), !dbg !210
  %32 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 0, !dbg !211
  %33 = load i32, i32* %9, align 4, !dbg !212
  store i32 %33, i32* %32, align 8, !dbg !211
  %34 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 1, !dbg !211
  %35 = load i32, i32* %10, align 4, !dbg !213
  store i32 %35, i32* %34, align 4, !dbg !211
  %36 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2, !dbg !211
  store i32 0, i32* %36, align 8, !dbg !211
  %37 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 3, !dbg !211
  store i32 0, i32* %37, align 4, !dbg !211
  %38 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 4, !dbg !211
  %39 = load i32, i32* %7, align 4, !dbg !214
  store i32 %39, i32* %38, align 8, !dbg !211
  %40 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 5, !dbg !211
  %41 = load i8**, i8*** %8, align 8, !dbg !215
  store i8** %41, i8*** %40, align 8, !dbg !211
  %42 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 6, !dbg !211
  %43 = load i8*, i8** %11, align 8, !dbg !216
  store i8* %43, i8** %42, align 8, !dbg !211
  %44 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 7, !dbg !211
  %45 = load i8**, i8*** %12, align 8, !dbg !217
  store i8** %45, i8*** %44, align 8, !dbg !211
  %46 = call i64 @fio_cli_hash_count(%struct.fio_cli_hash_s* @fio_values), !dbg !218
  %47 = icmp ne i64 %46, 0, !dbg !218
  br i1 %47, label %48, label %49, !dbg !220

48:                                               ; preds = %31
  call void @fio_cli_end(), !dbg !221
  br label %49, !dbg !223

49:                                               ; preds = %48, %31
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !224, metadata !DIExpression()), !dbg !225
  %50 = load i8**, i8*** %12, align 8, !dbg !226
  store i8** %50, i8*** %14, align 8, !dbg !225
  br label %51, !dbg !227

51:                                               ; preds = %75, %59, %49
  %52 = load i8**, i8*** %14, align 8, !dbg !228
  %53 = load i8*, i8** %52, align 8, !dbg !229
  %54 = icmp ne i8* %53, null, !dbg !227
  br i1 %54, label %55, label %78, !dbg !227

55:                                               ; preds = %51
  %56 = load i8**, i8*** %14, align 8, !dbg !230
  %57 = load i8*, i8** %56, align 8, !dbg !232
  %58 = ptrtoint i8* %57 to i64, !dbg !233
  switch i64 %58, label %62 [
    i64 1, label %59
    i64 2, label %59
    i64 3, label %59
    i64 4, label %59
    i64 5, label %59
  ], !dbg !234

59:                                               ; preds = %55, %55, %55, %55, %55
  %60 = load i8**, i8*** %14, align 8, !dbg !235
  %61 = getelementptr inbounds i8*, i8** %60, i32 1, !dbg !235
  store i8** %61, i8*** %14, align 8, !dbg !235
  br label %51, !dbg !237, !llvm.loop !238

62:                                               ; preds = %55
  %63 = load i8**, i8*** %14, align 8, !dbg !240
  %64 = getelementptr inbounds i8*, i8** %63, i64 1, !dbg !240
  %65 = load i8*, i8** %64, align 8, !dbg !240
  %66 = icmp ne i8* %65, inttoptr (i64 4 to i8*), !dbg !242
  br i1 %66, label %67, label %75, !dbg !243

67:                                               ; preds = %62
  %68 = load i8**, i8*** %14, align 8, !dbg !244
  %69 = getelementptr inbounds i8*, i8** %68, i64 1, !dbg !244
  %70 = load i8*, i8** %69, align 8, !dbg !244
  %71 = icmp ne i8* %70, inttoptr (i64 5 to i8*), !dbg !245
  br i1 %71, label %72, label %75, !dbg !246

72:                                               ; preds = %67
  %73 = load i8**, i8*** %14, align 8, !dbg !247
  %74 = load i8*, i8** %73, align 8, !dbg !248
  call void @fio_cli_map_line2alias(i8* %74), !dbg !249
  br label %75, !dbg !249

75:                                               ; preds = %72, %67, %62
  %76 = load i8**, i8*** %14, align 8, !dbg !250
  %77 = getelementptr inbounds i8*, i8** %76, i32 1, !dbg !250
  store i8** %77, i8*** %14, align 8, !dbg !250
  br label %51, !dbg !227, !llvm.loop !238

78:                                               ; preds = %51
  br label %79, !dbg !251

79:                                               ; preds = %160, %78
  %80 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2, !dbg !252
  %81 = load i32, i32* %80, align 8, !dbg !253
  %82 = add nsw i32 %81, 1, !dbg !253
  store i32 %82, i32* %80, align 8, !dbg !253
  %83 = load i32, i32* %7, align 4, !dbg !254
  %84 = icmp slt i32 %82, %83, !dbg !255
  br i1 %84, label %85, label %168, !dbg !251

85:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata i8** %15, metadata !256, metadata !DIExpression()), !dbg !258
  store i8* null, i8** %15, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %16, metadata !259, metadata !DIExpression()), !dbg !260
  %86 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0, !dbg !261
  %87 = load i8**, i8*** %8, align 8, !dbg !262
  %88 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2, !dbg !263
  %89 = load i32, i32* %88, align 8, !dbg !263
  %90 = sext i32 %89 to i64, !dbg !262
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90, !dbg !262
  %92 = load i8*, i8** %91, align 8, !dbg !262
  %93 = call i64 @strlen(i8* %92) #10, !dbg !264
  store i64 %93, i64* %86, align 8, !dbg !261
  %94 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 1, !dbg !261
  %95 = load i8**, i8*** %8, align 8, !dbg !265
  %96 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2, !dbg !266
  %97 = load i32, i32* %96, align 8, !dbg !266
  %98 = sext i32 %97 to i64, !dbg !265
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98, !dbg !265
  %100 = load i8*, i8** %99, align 8, !dbg !265
  store i8* %100, i8** %94, align 8, !dbg !261
  %101 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2, !dbg !267
  %102 = load i32, i32* %101, align 8, !dbg !267
  %103 = add nsw i32 %102, 1, !dbg !269
  %104 = load i32, i32* %7, align 4, !dbg !270
  %105 = icmp slt i32 %103, %104, !dbg !271
  br i1 %105, label %106, label %114, !dbg !272

106:                                              ; preds = %85
  %107 = load i8**, i8*** %8, align 8, !dbg !273
  %108 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2, !dbg !275
  %109 = load i32, i32* %108, align 8, !dbg !275
  %110 = add nsw i32 %109, 1, !dbg !276
  %111 = sext i32 %110 to i64, !dbg !273
  %112 = getelementptr inbounds i8*, i8** %107, i64 %111, !dbg !273
  %113 = load i8*, i8** %112, align 8, !dbg !273
  store i8* %113, i8** %15, align 8, !dbg !277
  br label %114, !dbg !278

114:                                              ; preds = %106, %85
  call void @llvm.dbg.declare(metadata i8** %17, metadata !279, metadata !DIExpression()), !dbg !280
  store i8* null, i8** %17, align 8, !dbg !280
  br label %115, !dbg !281

115:                                              ; preds = %135, %114
  %116 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0, !dbg !282
  %117 = load i64, i64* %116, align 8, !dbg !282
  %118 = icmp ne i64 %117, 0, !dbg !283
  br i1 %118, label %119, label %133, !dbg !284

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 1, !dbg !285
  %121 = load i8*, i8** %120, align 8, !dbg !285
  %122 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0, !dbg !285
  %123 = load i64, i64* %122, align 8, !dbg !285
  %124 = call i64 @fio_risky_hash(i8* %121, i64 %123, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64)), !dbg !285
  %125 = bitcast %struct.cstr_s* %16 to { i64, i8* }*, !dbg !286
  %126 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %125, i32 0, i32 0, !dbg !286
  %127 = load i64, i64* %126, align 8, !dbg !286
  %128 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %125, i32 0, i32 1, !dbg !286
  %129 = load i8*, i8** %128, align 8, !dbg !286
  %130 = call i8* @fio_cli_hash_find(%struct.fio_cli_hash_s* @fio_aliases, i64 %124, i64 %127, i8* %129), !dbg !286
  store i8* %130, i8** %17, align 8, !dbg !287
  %131 = icmp ne i8* %130, null, !dbg !288
  %132 = xor i1 %131, true, !dbg !288
  br label %133

133:                                              ; preds = %119, %115
  %134 = phi i1 [ false, %115 ], [ %132, %119 ], !dbg !289
  br i1 %134, label %135, label %144, !dbg !281

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0, !dbg !290
  %137 = load i64, i64* %136, align 8, !dbg !292
  %138 = add i64 %137, -1, !dbg !292
  store i64 %138, i64* %136, align 8, !dbg !292
  %139 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 1, !dbg !293
  %140 = load i8*, i8** %139, align 8, !dbg !293
  %141 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0, !dbg !294
  %142 = load i64, i64* %141, align 8, !dbg !294
  %143 = getelementptr inbounds i8, i8* %140, i64 %142, !dbg !295
  store i8* %143, i8** %15, align 8, !dbg !296
  br label %115, !dbg !281, !llvm.loop !297

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0, !dbg !299
  %146 = load i64, i64* %145, align 8, !dbg !299
  %147 = icmp ne i64 %146, 0, !dbg !301
  br i1 %147, label %148, label %160, !dbg !302

148:                                              ; preds = %144
  %149 = load i8*, i8** %15, align 8, !dbg !303
  %150 = icmp ne i8* %149, null, !dbg !303
  br i1 %150, label %151, label %160, !dbg !304

151:                                              ; preds = %148
  %152 = load i8*, i8** %15, align 8, !dbg !305
  %153 = getelementptr inbounds i8, i8* %152, i64 0, !dbg !305
  %154 = load i8, i8* %153, align 1, !dbg !305
  %155 = sext i8 %154 to i32, !dbg !305
  %156 = icmp eq i32 %155, 61, !dbg !306
  br i1 %156, label %157, label %160, !dbg !307

157:                                              ; preds = %151
  %158 = load i8*, i8** %15, align 8, !dbg !308
  %159 = getelementptr inbounds i8, i8* %158, i32 1, !dbg !308
  store i8* %159, i8** %15, align 8, !dbg !308
  br label %160, !dbg !310

160:                                              ; preds = %157, %151, %148, %144
  %161 = load i8*, i8** %15, align 8, !dbg !311
  %162 = load i8*, i8** %17, align 8, !dbg !312
  %163 = bitcast %struct.cstr_s* %16 to { i64, i8* }*, !dbg !313
  %164 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %163, i32 0, i32 0, !dbg !313
  %165 = load i64, i64* %164, align 8, !dbg !313
  %166 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %163, i32 0, i32 1, !dbg !313
  %167 = load i8*, i8** %166, align 8, !dbg !313
  call void @fio_cli_set_arg(i64 %165, i8* %167, i8* %161, i8* %162, %struct.fio_cli_parser_data_s* %13), !dbg !313
  br label %79, !dbg !251, !llvm.loop !314

168:                                              ; preds = %79
  call void @fio_cli_hash_free(%struct.fio_cli_hash_s* @fio_aliases), !dbg !316
  %169 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 3, !dbg !317
  %170 = load i32, i32* %169, align 4, !dbg !317
  %171 = sext i32 %170 to i64, !dbg !318
  store i64 %171, i64* @fio_unnamed_count, align 8, !dbg !319
  %172 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 3, !dbg !320
  %173 = load i32, i32* %172, align 4, !dbg !320
  %174 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 0, !dbg !322
  %175 = load i32, i32* %174, align 8, !dbg !322
  %176 = icmp slt i32 %173, %175, !dbg !323
  br i1 %176, label %177, label %185, !dbg !324

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %18, i32 0, i32 0, !dbg !325
  store i64 0, i64* %178, align 8, !dbg !325
  %179 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %18, i32 0, i32 1, !dbg !325
  store i8* null, i8** %179, align 8, !dbg !325
  %180 = bitcast %struct.cstr_s* %18 to { i64, i8* }*, !dbg !326
  %181 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %180, i32 0, i32 0, !dbg !326
  %182 = load i64, i64* %181, align 8, !dbg !326
  %183 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %180, i32 0, i32 1, !dbg !326
  %184 = load i8*, i8** %183, align 8, !dbg !326
  call void @fio_cli_set_arg(i64 %182, i8* %184, i8* null, i8* null, %struct.fio_cli_parser_data_s* %13), !dbg !326
  br label %185, !dbg !326

185:                                              ; preds = %177, %168
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_trylock(i8* %0) #0 !dbg !328 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !332, metadata !DIExpression()), !dbg !333
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !334, !srcloc !335
  call void @llvm.dbg.declare(metadata i8* %3, metadata !336, metadata !DIExpression()), !dbg !337
  %6 = load i8*, i8** %2, align 8, !dbg !338
  store i8 1, i8* %4, align 1, !dbg !338
  %7 = load i8, i8* %4, align 1, !dbg !338
  %8 = atomicrmw volatile xchg i8* %6, i8 %7 seq_cst, !dbg !338
  store i8 %8, i8* %5, align 1, !dbg !338
  %9 = load i8, i8* %5, align 1, !dbg !338
  store volatile i8 %9, i8* %3, align 1, !dbg !337
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !339, !srcloc !340
  %10 = load volatile i8, i8* %3, align 1, !dbg !341
  %11 = zext i8 %10 to i32, !dbg !341
  ret i32 %11, !dbg !342
}

declare dso_local void @fio_state_callback_add(i32, void (i8*)*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_end_promise(i8* %0) #0 !dbg !343 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !346, metadata !DIExpression()), !dbg !347
  call void @fio_cli_end(), !dbg !348
  %3 = load i8*, i8** %2, align 8, !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_cli_hash_count(%struct.fio_cli_hash_s* %0) #0 !dbg !351 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %2, metadata !356, metadata !DIExpression()), !dbg !357
  %3 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !358
  %4 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %3, i32 0, i32 0, !dbg !359
  %5 = load i64, i64* %4, align 8, !dbg !359
  ret i64 %5, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fio_cli_end() #0 !dbg !361 {
  call void @fio_cli_hash_free(%struct.fio_cli_hash_s* @fio_values), !dbg !364
  call void @fio_cli_hash_free(%struct.fio_cli_hash_s* @fio_aliases), !dbg !365
  store i64 0, i64* @fio_unnamed_count, align 8, !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_map_line2alias(i8* %0) #0 !dbg !368 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cstr_s, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %3, metadata !373, metadata !DIExpression()), !dbg !374
  %5 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !375
  store i64 0, i64* %5, align 8, !dbg !375
  %6 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !375
  %7 = load i8*, i8** %2, align 8, !dbg !376
  store i8* %7, i8** %6, align 8, !dbg !375
  br label %8, !dbg !377

8:                                                ; preds = %108, %1
  %9 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !378
  %10 = load i8*, i8** %9, align 8, !dbg !378
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !379
  %12 = load i8, i8* %11, align 1, !dbg !379
  %13 = sext i8 %12 to i32, !dbg !379
  %14 = icmp eq i32 %13, 45, !dbg !380
  br i1 %14, label %15, label %115, !dbg !377

15:                                               ; preds = %8
  br label %16, !dbg !381

16:                                               ; preds = %45, %15
  %17 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !383
  %18 = load i8*, i8** %17, align 8, !dbg !383
  %19 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !384
  %20 = load i64, i64* %19, align 8, !dbg !384
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !385
  %22 = load i8, i8* %21, align 1, !dbg !385
  %23 = sext i8 %22 to i32, !dbg !385
  %24 = icmp ne i32 %23, 0, !dbg !385
  br i1 %24, label %25, label %43, !dbg !386

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !387
  %27 = load i8*, i8** %26, align 8, !dbg !387
  %28 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !388
  %29 = load i64, i64* %28, align 8, !dbg !388
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !389
  %31 = load i8, i8* %30, align 1, !dbg !389
  %32 = sext i8 %31 to i32, !dbg !389
  %33 = icmp ne i32 %32, 32, !dbg !390
  br i1 %33, label %34, label %43, !dbg !391

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !392
  %36 = load i8*, i8** %35, align 8, !dbg !392
  %37 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !393
  %38 = load i64, i64* %37, align 8, !dbg !393
  %39 = getelementptr inbounds i8, i8* %36, i64 %38, !dbg !394
  %40 = load i8, i8* %39, align 1, !dbg !394
  %41 = sext i8 %40 to i32, !dbg !394
  %42 = icmp ne i32 %41, 44, !dbg !395
  br label %43

43:                                               ; preds = %34, %25, %16
  %44 = phi i1 [ false, %25 ], [ false, %16 ], [ %42, %34 ], !dbg !396
  br i1 %44, label %45, label %49, !dbg !381

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !397
  %47 = load i64, i64* %46, align 8, !dbg !399
  %48 = add i64 %47, 1, !dbg !399
  store i64 %48, i64* %46, align 8, !dbg !399
  br label %16, !dbg !381, !llvm.loop !400

49:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata i8** %4, metadata !402, metadata !DIExpression()), !dbg !403
  store i8* null, i8** %4, align 8, !dbg !403
  %50 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !404
  %51 = load i8*, i8** %50, align 8, !dbg !404
  %52 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !404
  %53 = load i64, i64* %52, align 8, !dbg !404
  %54 = call i64 @fio_risky_hash(i8* %51, i64 %53, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64)), !dbg !404
  %55 = load i8*, i8** %2, align 8, !dbg !405
  %56 = bitcast %struct.cstr_s* %3 to { i64, i8* }*, !dbg !406
  %57 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %56, i32 0, i32 0, !dbg !406
  %58 = load i64, i64* %57, align 8, !dbg !406
  %59 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %56, i32 0, i32 1, !dbg !406
  %60 = load i8*, i8** %59, align 8, !dbg !406
  call void @fio_cli_hash_insert(%struct.fio_cli_hash_s* @fio_aliases, i64 %54, i64 %58, i8* %60, i8* %55, i8** %4), !dbg !406
  %61 = load i8*, i8** %4, align 8, !dbg !407
  %62 = icmp ne i8* %61, null, !dbg !407
  br i1 %62, label %63, label %72, !dbg !409

63:                                               ; preds = %49
  br label %64, !dbg !410

64:                                               ; preds = %63
  %65 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !412
  %66 = icmp sle i32 3, %65, !dbg !412
  br i1 %66, label %67, label %70, !dbg !415

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8, !dbg !416
  %69 = load i8*, i8** %2, align 8, !dbg !416
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69), !dbg !416
  br label %70, !dbg !416

70:                                               ; preds = %67, %64
  br label %71, !dbg !415

71:                                               ; preds = %70
  br label %72, !dbg !418

72:                                               ; preds = %71, %49
  br label %73, !dbg !419

73:                                               ; preds = %104, %72
  %74 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !420
  %75 = load i8*, i8** %74, align 8, !dbg !420
  %76 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !421
  %77 = load i64, i64* %76, align 8, !dbg !421
  %78 = getelementptr inbounds i8, i8* %75, i64 %77, !dbg !422
  %79 = load i8, i8* %78, align 1, !dbg !422
  %80 = sext i8 %79 to i32, !dbg !422
  %81 = icmp ne i32 %80, 0, !dbg !422
  br i1 %81, label %82, label %102, !dbg !423

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !424
  %84 = load i8*, i8** %83, align 8, !dbg !424
  %85 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !425
  %86 = load i64, i64* %85, align 8, !dbg !425
  %87 = getelementptr inbounds i8, i8* %84, i64 %86, !dbg !426
  %88 = load i8, i8* %87, align 1, !dbg !426
  %89 = sext i8 %88 to i32, !dbg !426
  %90 = icmp eq i32 %89, 32, !dbg !427
  br i1 %90, label %100, label %91, !dbg !428

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !429
  %93 = load i8*, i8** %92, align 8, !dbg !429
  %94 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !430
  %95 = load i64, i64* %94, align 8, !dbg !430
  %96 = getelementptr inbounds i8, i8* %93, i64 %95, !dbg !431
  %97 = load i8, i8* %96, align 1, !dbg !431
  %98 = sext i8 %97 to i32, !dbg !431
  %99 = icmp eq i32 %98, 44, !dbg !432
  br label %100, !dbg !428

100:                                              ; preds = %91, %82
  %101 = phi i1 [ true, %82 ], [ %99, %91 ]
  br label %102

102:                                              ; preds = %100, %73
  %103 = phi i1 [ false, %73 ], [ %101, %100 ], !dbg !396
  br i1 %103, label %104, label %108, !dbg !419

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !433
  %106 = load i64, i64* %105, align 8, !dbg !435
  %107 = add i64 %106, 1, !dbg !435
  store i64 %107, i64* %105, align 8, !dbg !435
  br label %73, !dbg !419, !llvm.loop !436

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !438
  %110 = load i64, i64* %109, align 8, !dbg !438
  %111 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1, !dbg !439
  %112 = load i8*, i8** %111, align 8, !dbg !440
  %113 = getelementptr inbounds i8, i8* %112, i64 %110, !dbg !440
  store i8* %113, i8** %111, align 8, !dbg !440
  %114 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0, !dbg !441
  store i64 0, i64* %114, align 8, !dbg !442
  br label %8, !dbg !377, !llvm.loop !443

115:                                              ; preds = %8
  ret void, !dbg !445
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_cli_hash_find(%struct.fio_cli_hash_s* %0, i64 %1, i64 %2, i8* %3) #0 !dbg !446 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cstr_s, align 8
  %7 = alloca %struct.fio_cli_hash_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_cli_hash__map_s_*, align 8
  %10 = alloca %struct.fio_cli_hash_couplet_s, align 8
  %11 = alloca i8*, align 8
  %12 = bitcast %struct.cstr_s* %6 to { i64, i8* }*
  %13 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 1
  store i8* %3, i8** %14, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %7, metadata !451, metadata !DIExpression()), !dbg !452
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %6, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__map_s_** %9, metadata !457, metadata !DIExpression()), !dbg !458
  %15 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !459
  %16 = load i64, i64* %8, align 8, !dbg !460
  %17 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %10, i32 0, i32 0, !dbg !461
  %18 = bitcast %struct.cstr_s* %17 to i8*, !dbg !462
  %19 = bitcast %struct.cstr_s* %6 to i8*, !dbg !462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false), !dbg !462
  %20 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %10, i32 0, i32 1, !dbg !461
  store i8* null, i8** %20, align 8, !dbg !461
  %21 = call %struct.fio_cli_hash__map_s_* @fio_cli_hash__find_map_pos_(%struct.fio_cli_hash_s* %15, i64 %16, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %10), !dbg !463
  store %struct.fio_cli_hash__map_s_* %21, %struct.fio_cli_hash__map_s_** %9, align 8, !dbg !458
  %22 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %9, align 8, !dbg !464
  %23 = icmp ne %struct.fio_cli_hash__map_s_* %22, null, !dbg !464
  br i1 %23, label %24, label %29, !dbg !466

24:                                               ; preds = %4
  %25 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %9, align 8, !dbg !467
  %26 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %25, i32 0, i32 1, !dbg !468
  %27 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %26, align 8, !dbg !468
  %28 = icmp ne %struct.fio_cli_hash__ordered_s_* %27, null, !dbg !467
  br i1 %28, label %32, label %29, !dbg !469

29:                                               ; preds = %24, %4
  call void @llvm.dbg.declare(metadata i8** %11, metadata !470, metadata !DIExpression()), !dbg !472
  %30 = bitcast i8** %11 to i8*, !dbg !473
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false), !dbg !473
  %31 = load i8*, i8** %11, align 8, !dbg !474
  store i8* %31, i8** %5, align 8, !dbg !475
  br label %39, !dbg !475

32:                                               ; preds = %24
  %33 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %9, align 8, !dbg !476
  %34 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %33, i32 0, i32 1, !dbg !477
  %35 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %34, align 8, !dbg !477
  %36 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %35, i32 0, i32 1, !dbg !478
  %37 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %36, i32 0, i32 1, !dbg !479
  %38 = load i8*, i8** %37, align 8, !dbg !479
  store i8* %38, i8** %5, align 8, !dbg !480
  br label %39, !dbg !480

39:                                               ; preds = %32, %29
  %40 = load i8*, i8** %5, align 8, !dbg !481
  ret i8* %40, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_risky_hash(i8* %0, i64 %1, i64 %2) #0 !dbg !482 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !487, metadata !DIExpression()), !dbg !488
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i8** %7, metadata !493, metadata !DIExpression()), !dbg !496
  %15 = load i8*, i8** %4, align 8, !dbg !497
  store i8* %15, i8** %7, align 8, !dbg !496
  call void @llvm.dbg.declare(metadata i64* %8, metadata !498, metadata !DIExpression()), !dbg !499
  %16 = load i64, i64* %6, align 8, !dbg !500
  %17 = xor i64 %16, -6119419677951424823, !dbg !501
  store i64 %17, i64* %8, align 8, !dbg !499
  call void @llvm.dbg.declare(metadata i64* %9, metadata !502, metadata !DIExpression()), !dbg !503
  %18 = load i64, i64* %6, align 8, !dbg !504
  %19 = xor i64 %18, -1, !dbg !505
  %20 = add i64 %19, -6119419677951424823, !dbg !506
  store i64 %20, i64* %9, align 8, !dbg !503
  call void @llvm.dbg.declare(metadata i64* %10, metadata !507, metadata !DIExpression()), !dbg !508
  %21 = load i64, i64* %6, align 8, !dbg !509
  %22 = shl i64 %21, 17, !dbg !509
  %23 = load i64, i64* %6, align 8, !dbg !509
  %24 = lshr i64 %23, 47, !dbg !509
  %25 = or i64 %22, %24, !dbg !509
  %26 = xor i64 %25, 5811556015681210993, !dbg !510
  store i64 %26, i64* %10, align 8, !dbg !508
  call void @llvm.dbg.declare(metadata i64* %11, metadata !511, metadata !DIExpression()), !dbg !512
  %27 = load i64, i64* %6, align 8, !dbg !513
  %28 = shl i64 %27, 33, !dbg !513
  %29 = load i64, i64* %6, align 8, !dbg !513
  %30 = lshr i64 %29, 31, !dbg !513
  %31 = or i64 %28, %30, !dbg !513
  %32 = add i64 %31, 6119419677951424822, !dbg !514
  store i64 %32, i64* %11, align 8, !dbg !512
  call void @llvm.dbg.declare(metadata i64* %12, metadata !515, metadata !DIExpression()), !dbg !517
  %33 = load i64, i64* %5, align 8, !dbg !518
  %34 = lshr i64 %33, 5, !dbg !519
  store i64 %34, i64* %12, align 8, !dbg !517
  br label %35, !dbg !520

35:                                               ; preds = %501, %3
  %36 = load i64, i64* %12, align 8, !dbg !521
  %37 = icmp ne i64 %36, 0, !dbg !523
  br i1 %37, label %38, label %504, !dbg !523

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8, !dbg !524
  %40 = getelementptr inbounds i8, i8* %39, i64 0, !dbg !524
  %41 = load i8, i8* %40, align 1, !dbg !524
  %42 = zext i8 %41 to i64, !dbg !524
  %43 = shl i64 %42, 56, !dbg !524
  %44 = load i8*, i8** %7, align 8, !dbg !524
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !524
  %46 = load i8, i8* %45, align 1, !dbg !524
  %47 = zext i8 %46 to i64, !dbg !524
  %48 = shl i64 %47, 48, !dbg !524
  %49 = or i64 %43, %48, !dbg !524
  %50 = load i8*, i8** %7, align 8, !dbg !524
  %51 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !524
  %52 = load i8, i8* %51, align 1, !dbg !524
  %53 = zext i8 %52 to i64, !dbg !524
  %54 = shl i64 %53, 40, !dbg !524
  %55 = or i64 %49, %54, !dbg !524
  %56 = load i8*, i8** %7, align 8, !dbg !524
  %57 = getelementptr inbounds i8, i8* %56, i64 3, !dbg !524
  %58 = load i8, i8* %57, align 1, !dbg !524
  %59 = zext i8 %58 to i64, !dbg !524
  %60 = shl i64 %59, 32, !dbg !524
  %61 = or i64 %55, %60, !dbg !524
  %62 = load i8*, i8** %7, align 8, !dbg !524
  %63 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !524
  %64 = load i8, i8* %63, align 1, !dbg !524
  %65 = zext i8 %64 to i64, !dbg !524
  %66 = shl i64 %65, 24, !dbg !524
  %67 = or i64 %61, %66, !dbg !524
  %68 = load i8*, i8** %7, align 8, !dbg !524
  %69 = getelementptr inbounds i8, i8* %68, i64 5, !dbg !524
  %70 = load i8, i8* %69, align 1, !dbg !524
  %71 = zext i8 %70 to i64, !dbg !524
  %72 = shl i64 %71, 16, !dbg !524
  %73 = or i64 %67, %72, !dbg !524
  %74 = load i8*, i8** %7, align 8, !dbg !524
  %75 = getelementptr inbounds i8, i8* %74, i64 6, !dbg !524
  %76 = load i8, i8* %75, align 1, !dbg !524
  %77 = zext i8 %76 to i64, !dbg !524
  %78 = shl i64 %77, 8, !dbg !524
  %79 = or i64 %73, %78, !dbg !524
  %80 = load i8*, i8** %7, align 8, !dbg !524
  %81 = getelementptr inbounds i8, i8* %80, i64 7, !dbg !524
  %82 = load i8, i8* %81, align 1, !dbg !524
  %83 = zext i8 %82 to i64, !dbg !524
  %84 = or i64 %79, %83, !dbg !524
  %85 = load i64, i64* %8, align 8, !dbg !524
  %86 = add i64 %85, %84, !dbg !524
  store i64 %86, i64* %8, align 8, !dbg !524
  %87 = load i64, i64* %8, align 8, !dbg !524
  %88 = shl i64 %87, 33, !dbg !524
  %89 = load i64, i64* %8, align 8, !dbg !524
  %90 = lshr i64 %89, 31, !dbg !524
  %91 = or i64 %88, %90, !dbg !524
  store i64 %91, i64* %8, align 8, !dbg !524
  %92 = load i8*, i8** %7, align 8, !dbg !524
  %93 = getelementptr inbounds i8, i8* %92, i64 0, !dbg !524
  %94 = load i8, i8* %93, align 1, !dbg !524
  %95 = zext i8 %94 to i64, !dbg !524
  %96 = shl i64 %95, 56, !dbg !524
  %97 = load i8*, i8** %7, align 8, !dbg !524
  %98 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !524
  %99 = load i8, i8* %98, align 1, !dbg !524
  %100 = zext i8 %99 to i64, !dbg !524
  %101 = shl i64 %100, 48, !dbg !524
  %102 = or i64 %96, %101, !dbg !524
  %103 = load i8*, i8** %7, align 8, !dbg !524
  %104 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !524
  %105 = load i8, i8* %104, align 1, !dbg !524
  %106 = zext i8 %105 to i64, !dbg !524
  %107 = shl i64 %106, 40, !dbg !524
  %108 = or i64 %102, %107, !dbg !524
  %109 = load i8*, i8** %7, align 8, !dbg !524
  %110 = getelementptr inbounds i8, i8* %109, i64 3, !dbg !524
  %111 = load i8, i8* %110, align 1, !dbg !524
  %112 = zext i8 %111 to i64, !dbg !524
  %113 = shl i64 %112, 32, !dbg !524
  %114 = or i64 %108, %113, !dbg !524
  %115 = load i8*, i8** %7, align 8, !dbg !524
  %116 = getelementptr inbounds i8, i8* %115, i64 4, !dbg !524
  %117 = load i8, i8* %116, align 1, !dbg !524
  %118 = zext i8 %117 to i64, !dbg !524
  %119 = shl i64 %118, 24, !dbg !524
  %120 = or i64 %114, %119, !dbg !524
  %121 = load i8*, i8** %7, align 8, !dbg !524
  %122 = getelementptr inbounds i8, i8* %121, i64 5, !dbg !524
  %123 = load i8, i8* %122, align 1, !dbg !524
  %124 = zext i8 %123 to i64, !dbg !524
  %125 = shl i64 %124, 16, !dbg !524
  %126 = or i64 %120, %125, !dbg !524
  %127 = load i8*, i8** %7, align 8, !dbg !524
  %128 = getelementptr inbounds i8, i8* %127, i64 6, !dbg !524
  %129 = load i8, i8* %128, align 1, !dbg !524
  %130 = zext i8 %129 to i64, !dbg !524
  %131 = shl i64 %130, 8, !dbg !524
  %132 = or i64 %126, %131, !dbg !524
  %133 = load i8*, i8** %7, align 8, !dbg !524
  %134 = getelementptr inbounds i8, i8* %133, i64 7, !dbg !524
  %135 = load i8, i8* %134, align 1, !dbg !524
  %136 = zext i8 %135 to i64, !dbg !524
  %137 = or i64 %132, %136, !dbg !524
  %138 = load i64, i64* %8, align 8, !dbg !524
  %139 = add i64 %138, %137, !dbg !524
  store i64 %139, i64* %8, align 8, !dbg !524
  %140 = load i64, i64* %8, align 8, !dbg !524
  %141 = mul i64 %140, -307863662270213829, !dbg !524
  store i64 %141, i64* %8, align 8, !dbg !524
  %142 = load i8*, i8** %7, align 8, !dbg !526
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !526
  %144 = getelementptr inbounds i8, i8* %143, i64 0, !dbg !526
  %145 = load i8, i8* %144, align 1, !dbg !526
  %146 = zext i8 %145 to i64, !dbg !526
  %147 = shl i64 %146, 56, !dbg !526
  %148 = load i8*, i8** %7, align 8, !dbg !526
  %149 = getelementptr inbounds i8, i8* %148, i64 8, !dbg !526
  %150 = getelementptr inbounds i8, i8* %149, i64 1, !dbg !526
  %151 = load i8, i8* %150, align 1, !dbg !526
  %152 = zext i8 %151 to i64, !dbg !526
  %153 = shl i64 %152, 48, !dbg !526
  %154 = or i64 %147, %153, !dbg !526
  %155 = load i8*, i8** %7, align 8, !dbg !526
  %156 = getelementptr inbounds i8, i8* %155, i64 8, !dbg !526
  %157 = getelementptr inbounds i8, i8* %156, i64 2, !dbg !526
  %158 = load i8, i8* %157, align 1, !dbg !526
  %159 = zext i8 %158 to i64, !dbg !526
  %160 = shl i64 %159, 40, !dbg !526
  %161 = or i64 %154, %160, !dbg !526
  %162 = load i8*, i8** %7, align 8, !dbg !526
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !526
  %164 = getelementptr inbounds i8, i8* %163, i64 3, !dbg !526
  %165 = load i8, i8* %164, align 1, !dbg !526
  %166 = zext i8 %165 to i64, !dbg !526
  %167 = shl i64 %166, 32, !dbg !526
  %168 = or i64 %161, %167, !dbg !526
  %169 = load i8*, i8** %7, align 8, !dbg !526
  %170 = getelementptr inbounds i8, i8* %169, i64 8, !dbg !526
  %171 = getelementptr inbounds i8, i8* %170, i64 4, !dbg !526
  %172 = load i8, i8* %171, align 1, !dbg !526
  %173 = zext i8 %172 to i64, !dbg !526
  %174 = shl i64 %173, 24, !dbg !526
  %175 = or i64 %168, %174, !dbg !526
  %176 = load i8*, i8** %7, align 8, !dbg !526
  %177 = getelementptr inbounds i8, i8* %176, i64 8, !dbg !526
  %178 = getelementptr inbounds i8, i8* %177, i64 5, !dbg !526
  %179 = load i8, i8* %178, align 1, !dbg !526
  %180 = zext i8 %179 to i64, !dbg !526
  %181 = shl i64 %180, 16, !dbg !526
  %182 = or i64 %175, %181, !dbg !526
  %183 = load i8*, i8** %7, align 8, !dbg !526
  %184 = getelementptr inbounds i8, i8* %183, i64 8, !dbg !526
  %185 = getelementptr inbounds i8, i8* %184, i64 6, !dbg !526
  %186 = load i8, i8* %185, align 1, !dbg !526
  %187 = zext i8 %186 to i64, !dbg !526
  %188 = shl i64 %187, 8, !dbg !526
  %189 = or i64 %182, %188, !dbg !526
  %190 = load i8*, i8** %7, align 8, !dbg !526
  %191 = getelementptr inbounds i8, i8* %190, i64 8, !dbg !526
  %192 = getelementptr inbounds i8, i8* %191, i64 7, !dbg !526
  %193 = load i8, i8* %192, align 1, !dbg !526
  %194 = zext i8 %193 to i64, !dbg !526
  %195 = or i64 %189, %194, !dbg !526
  %196 = load i64, i64* %9, align 8, !dbg !526
  %197 = add i64 %196, %195, !dbg !526
  store i64 %197, i64* %9, align 8, !dbg !526
  %198 = load i64, i64* %9, align 8, !dbg !526
  %199 = shl i64 %198, 33, !dbg !526
  %200 = load i64, i64* %9, align 8, !dbg !526
  %201 = lshr i64 %200, 31, !dbg !526
  %202 = or i64 %199, %201, !dbg !526
  store i64 %202, i64* %9, align 8, !dbg !526
  %203 = load i8*, i8** %7, align 8, !dbg !526
  %204 = getelementptr inbounds i8, i8* %203, i64 8, !dbg !526
  %205 = getelementptr inbounds i8, i8* %204, i64 0, !dbg !526
  %206 = load i8, i8* %205, align 1, !dbg !526
  %207 = zext i8 %206 to i64, !dbg !526
  %208 = shl i64 %207, 56, !dbg !526
  %209 = load i8*, i8** %7, align 8, !dbg !526
  %210 = getelementptr inbounds i8, i8* %209, i64 8, !dbg !526
  %211 = getelementptr inbounds i8, i8* %210, i64 1, !dbg !526
  %212 = load i8, i8* %211, align 1, !dbg !526
  %213 = zext i8 %212 to i64, !dbg !526
  %214 = shl i64 %213, 48, !dbg !526
  %215 = or i64 %208, %214, !dbg !526
  %216 = load i8*, i8** %7, align 8, !dbg !526
  %217 = getelementptr inbounds i8, i8* %216, i64 8, !dbg !526
  %218 = getelementptr inbounds i8, i8* %217, i64 2, !dbg !526
  %219 = load i8, i8* %218, align 1, !dbg !526
  %220 = zext i8 %219 to i64, !dbg !526
  %221 = shl i64 %220, 40, !dbg !526
  %222 = or i64 %215, %221, !dbg !526
  %223 = load i8*, i8** %7, align 8, !dbg !526
  %224 = getelementptr inbounds i8, i8* %223, i64 8, !dbg !526
  %225 = getelementptr inbounds i8, i8* %224, i64 3, !dbg !526
  %226 = load i8, i8* %225, align 1, !dbg !526
  %227 = zext i8 %226 to i64, !dbg !526
  %228 = shl i64 %227, 32, !dbg !526
  %229 = or i64 %222, %228, !dbg !526
  %230 = load i8*, i8** %7, align 8, !dbg !526
  %231 = getelementptr inbounds i8, i8* %230, i64 8, !dbg !526
  %232 = getelementptr inbounds i8, i8* %231, i64 4, !dbg !526
  %233 = load i8, i8* %232, align 1, !dbg !526
  %234 = zext i8 %233 to i64, !dbg !526
  %235 = shl i64 %234, 24, !dbg !526
  %236 = or i64 %229, %235, !dbg !526
  %237 = load i8*, i8** %7, align 8, !dbg !526
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !526
  %239 = getelementptr inbounds i8, i8* %238, i64 5, !dbg !526
  %240 = load i8, i8* %239, align 1, !dbg !526
  %241 = zext i8 %240 to i64, !dbg !526
  %242 = shl i64 %241, 16, !dbg !526
  %243 = or i64 %236, %242, !dbg !526
  %244 = load i8*, i8** %7, align 8, !dbg !526
  %245 = getelementptr inbounds i8, i8* %244, i64 8, !dbg !526
  %246 = getelementptr inbounds i8, i8* %245, i64 6, !dbg !526
  %247 = load i8, i8* %246, align 1, !dbg !526
  %248 = zext i8 %247 to i64, !dbg !526
  %249 = shl i64 %248, 8, !dbg !526
  %250 = or i64 %243, %249, !dbg !526
  %251 = load i8*, i8** %7, align 8, !dbg !526
  %252 = getelementptr inbounds i8, i8* %251, i64 8, !dbg !526
  %253 = getelementptr inbounds i8, i8* %252, i64 7, !dbg !526
  %254 = load i8, i8* %253, align 1, !dbg !526
  %255 = zext i8 %254 to i64, !dbg !526
  %256 = or i64 %250, %255, !dbg !526
  %257 = load i64, i64* %9, align 8, !dbg !526
  %258 = add i64 %257, %256, !dbg !526
  store i64 %258, i64* %9, align 8, !dbg !526
  %259 = load i64, i64* %9, align 8, !dbg !526
  %260 = mul i64 %259, -307863662270213829, !dbg !526
  store i64 %260, i64* %9, align 8, !dbg !526
  %261 = load i8*, i8** %7, align 8, !dbg !527
  %262 = getelementptr inbounds i8, i8* %261, i64 16, !dbg !527
  %263 = getelementptr inbounds i8, i8* %262, i64 0, !dbg !527
  %264 = load i8, i8* %263, align 1, !dbg !527
  %265 = zext i8 %264 to i64, !dbg !527
  %266 = shl i64 %265, 56, !dbg !527
  %267 = load i8*, i8** %7, align 8, !dbg !527
  %268 = getelementptr inbounds i8, i8* %267, i64 16, !dbg !527
  %269 = getelementptr inbounds i8, i8* %268, i64 1, !dbg !527
  %270 = load i8, i8* %269, align 1, !dbg !527
  %271 = zext i8 %270 to i64, !dbg !527
  %272 = shl i64 %271, 48, !dbg !527
  %273 = or i64 %266, %272, !dbg !527
  %274 = load i8*, i8** %7, align 8, !dbg !527
  %275 = getelementptr inbounds i8, i8* %274, i64 16, !dbg !527
  %276 = getelementptr inbounds i8, i8* %275, i64 2, !dbg !527
  %277 = load i8, i8* %276, align 1, !dbg !527
  %278 = zext i8 %277 to i64, !dbg !527
  %279 = shl i64 %278, 40, !dbg !527
  %280 = or i64 %273, %279, !dbg !527
  %281 = load i8*, i8** %7, align 8, !dbg !527
  %282 = getelementptr inbounds i8, i8* %281, i64 16, !dbg !527
  %283 = getelementptr inbounds i8, i8* %282, i64 3, !dbg !527
  %284 = load i8, i8* %283, align 1, !dbg !527
  %285 = zext i8 %284 to i64, !dbg !527
  %286 = shl i64 %285, 32, !dbg !527
  %287 = or i64 %280, %286, !dbg !527
  %288 = load i8*, i8** %7, align 8, !dbg !527
  %289 = getelementptr inbounds i8, i8* %288, i64 16, !dbg !527
  %290 = getelementptr inbounds i8, i8* %289, i64 4, !dbg !527
  %291 = load i8, i8* %290, align 1, !dbg !527
  %292 = zext i8 %291 to i64, !dbg !527
  %293 = shl i64 %292, 24, !dbg !527
  %294 = or i64 %287, %293, !dbg !527
  %295 = load i8*, i8** %7, align 8, !dbg !527
  %296 = getelementptr inbounds i8, i8* %295, i64 16, !dbg !527
  %297 = getelementptr inbounds i8, i8* %296, i64 5, !dbg !527
  %298 = load i8, i8* %297, align 1, !dbg !527
  %299 = zext i8 %298 to i64, !dbg !527
  %300 = shl i64 %299, 16, !dbg !527
  %301 = or i64 %294, %300, !dbg !527
  %302 = load i8*, i8** %7, align 8, !dbg !527
  %303 = getelementptr inbounds i8, i8* %302, i64 16, !dbg !527
  %304 = getelementptr inbounds i8, i8* %303, i64 6, !dbg !527
  %305 = load i8, i8* %304, align 1, !dbg !527
  %306 = zext i8 %305 to i64, !dbg !527
  %307 = shl i64 %306, 8, !dbg !527
  %308 = or i64 %301, %307, !dbg !527
  %309 = load i8*, i8** %7, align 8, !dbg !527
  %310 = getelementptr inbounds i8, i8* %309, i64 16, !dbg !527
  %311 = getelementptr inbounds i8, i8* %310, i64 7, !dbg !527
  %312 = load i8, i8* %311, align 1, !dbg !527
  %313 = zext i8 %312 to i64, !dbg !527
  %314 = or i64 %308, %313, !dbg !527
  %315 = load i64, i64* %10, align 8, !dbg !527
  %316 = add i64 %315, %314, !dbg !527
  store i64 %316, i64* %10, align 8, !dbg !527
  %317 = load i64, i64* %10, align 8, !dbg !527
  %318 = shl i64 %317, 33, !dbg !527
  %319 = load i64, i64* %10, align 8, !dbg !527
  %320 = lshr i64 %319, 31, !dbg !527
  %321 = or i64 %318, %320, !dbg !527
  store i64 %321, i64* %10, align 8, !dbg !527
  %322 = load i8*, i8** %7, align 8, !dbg !527
  %323 = getelementptr inbounds i8, i8* %322, i64 16, !dbg !527
  %324 = getelementptr inbounds i8, i8* %323, i64 0, !dbg !527
  %325 = load i8, i8* %324, align 1, !dbg !527
  %326 = zext i8 %325 to i64, !dbg !527
  %327 = shl i64 %326, 56, !dbg !527
  %328 = load i8*, i8** %7, align 8, !dbg !527
  %329 = getelementptr inbounds i8, i8* %328, i64 16, !dbg !527
  %330 = getelementptr inbounds i8, i8* %329, i64 1, !dbg !527
  %331 = load i8, i8* %330, align 1, !dbg !527
  %332 = zext i8 %331 to i64, !dbg !527
  %333 = shl i64 %332, 48, !dbg !527
  %334 = or i64 %327, %333, !dbg !527
  %335 = load i8*, i8** %7, align 8, !dbg !527
  %336 = getelementptr inbounds i8, i8* %335, i64 16, !dbg !527
  %337 = getelementptr inbounds i8, i8* %336, i64 2, !dbg !527
  %338 = load i8, i8* %337, align 1, !dbg !527
  %339 = zext i8 %338 to i64, !dbg !527
  %340 = shl i64 %339, 40, !dbg !527
  %341 = or i64 %334, %340, !dbg !527
  %342 = load i8*, i8** %7, align 8, !dbg !527
  %343 = getelementptr inbounds i8, i8* %342, i64 16, !dbg !527
  %344 = getelementptr inbounds i8, i8* %343, i64 3, !dbg !527
  %345 = load i8, i8* %344, align 1, !dbg !527
  %346 = zext i8 %345 to i64, !dbg !527
  %347 = shl i64 %346, 32, !dbg !527
  %348 = or i64 %341, %347, !dbg !527
  %349 = load i8*, i8** %7, align 8, !dbg !527
  %350 = getelementptr inbounds i8, i8* %349, i64 16, !dbg !527
  %351 = getelementptr inbounds i8, i8* %350, i64 4, !dbg !527
  %352 = load i8, i8* %351, align 1, !dbg !527
  %353 = zext i8 %352 to i64, !dbg !527
  %354 = shl i64 %353, 24, !dbg !527
  %355 = or i64 %348, %354, !dbg !527
  %356 = load i8*, i8** %7, align 8, !dbg !527
  %357 = getelementptr inbounds i8, i8* %356, i64 16, !dbg !527
  %358 = getelementptr inbounds i8, i8* %357, i64 5, !dbg !527
  %359 = load i8, i8* %358, align 1, !dbg !527
  %360 = zext i8 %359 to i64, !dbg !527
  %361 = shl i64 %360, 16, !dbg !527
  %362 = or i64 %355, %361, !dbg !527
  %363 = load i8*, i8** %7, align 8, !dbg !527
  %364 = getelementptr inbounds i8, i8* %363, i64 16, !dbg !527
  %365 = getelementptr inbounds i8, i8* %364, i64 6, !dbg !527
  %366 = load i8, i8* %365, align 1, !dbg !527
  %367 = zext i8 %366 to i64, !dbg !527
  %368 = shl i64 %367, 8, !dbg !527
  %369 = or i64 %362, %368, !dbg !527
  %370 = load i8*, i8** %7, align 8, !dbg !527
  %371 = getelementptr inbounds i8, i8* %370, i64 16, !dbg !527
  %372 = getelementptr inbounds i8, i8* %371, i64 7, !dbg !527
  %373 = load i8, i8* %372, align 1, !dbg !527
  %374 = zext i8 %373 to i64, !dbg !527
  %375 = or i64 %369, %374, !dbg !527
  %376 = load i64, i64* %10, align 8, !dbg !527
  %377 = add i64 %376, %375, !dbg !527
  store i64 %377, i64* %10, align 8, !dbg !527
  %378 = load i64, i64* %10, align 8, !dbg !527
  %379 = mul i64 %378, -307863662270213829, !dbg !527
  store i64 %379, i64* %10, align 8, !dbg !527
  %380 = load i8*, i8** %7, align 8, !dbg !528
  %381 = getelementptr inbounds i8, i8* %380, i64 24, !dbg !528
  %382 = getelementptr inbounds i8, i8* %381, i64 0, !dbg !528
  %383 = load i8, i8* %382, align 1, !dbg !528
  %384 = zext i8 %383 to i64, !dbg !528
  %385 = shl i64 %384, 56, !dbg !528
  %386 = load i8*, i8** %7, align 8, !dbg !528
  %387 = getelementptr inbounds i8, i8* %386, i64 24, !dbg !528
  %388 = getelementptr inbounds i8, i8* %387, i64 1, !dbg !528
  %389 = load i8, i8* %388, align 1, !dbg !528
  %390 = zext i8 %389 to i64, !dbg !528
  %391 = shl i64 %390, 48, !dbg !528
  %392 = or i64 %385, %391, !dbg !528
  %393 = load i8*, i8** %7, align 8, !dbg !528
  %394 = getelementptr inbounds i8, i8* %393, i64 24, !dbg !528
  %395 = getelementptr inbounds i8, i8* %394, i64 2, !dbg !528
  %396 = load i8, i8* %395, align 1, !dbg !528
  %397 = zext i8 %396 to i64, !dbg !528
  %398 = shl i64 %397, 40, !dbg !528
  %399 = or i64 %392, %398, !dbg !528
  %400 = load i8*, i8** %7, align 8, !dbg !528
  %401 = getelementptr inbounds i8, i8* %400, i64 24, !dbg !528
  %402 = getelementptr inbounds i8, i8* %401, i64 3, !dbg !528
  %403 = load i8, i8* %402, align 1, !dbg !528
  %404 = zext i8 %403 to i64, !dbg !528
  %405 = shl i64 %404, 32, !dbg !528
  %406 = or i64 %399, %405, !dbg !528
  %407 = load i8*, i8** %7, align 8, !dbg !528
  %408 = getelementptr inbounds i8, i8* %407, i64 24, !dbg !528
  %409 = getelementptr inbounds i8, i8* %408, i64 4, !dbg !528
  %410 = load i8, i8* %409, align 1, !dbg !528
  %411 = zext i8 %410 to i64, !dbg !528
  %412 = shl i64 %411, 24, !dbg !528
  %413 = or i64 %406, %412, !dbg !528
  %414 = load i8*, i8** %7, align 8, !dbg !528
  %415 = getelementptr inbounds i8, i8* %414, i64 24, !dbg !528
  %416 = getelementptr inbounds i8, i8* %415, i64 5, !dbg !528
  %417 = load i8, i8* %416, align 1, !dbg !528
  %418 = zext i8 %417 to i64, !dbg !528
  %419 = shl i64 %418, 16, !dbg !528
  %420 = or i64 %413, %419, !dbg !528
  %421 = load i8*, i8** %7, align 8, !dbg !528
  %422 = getelementptr inbounds i8, i8* %421, i64 24, !dbg !528
  %423 = getelementptr inbounds i8, i8* %422, i64 6, !dbg !528
  %424 = load i8, i8* %423, align 1, !dbg !528
  %425 = zext i8 %424 to i64, !dbg !528
  %426 = shl i64 %425, 8, !dbg !528
  %427 = or i64 %420, %426, !dbg !528
  %428 = load i8*, i8** %7, align 8, !dbg !528
  %429 = getelementptr inbounds i8, i8* %428, i64 24, !dbg !528
  %430 = getelementptr inbounds i8, i8* %429, i64 7, !dbg !528
  %431 = load i8, i8* %430, align 1, !dbg !528
  %432 = zext i8 %431 to i64, !dbg !528
  %433 = or i64 %427, %432, !dbg !528
  %434 = load i64, i64* %11, align 8, !dbg !528
  %435 = add i64 %434, %433, !dbg !528
  store i64 %435, i64* %11, align 8, !dbg !528
  %436 = load i64, i64* %11, align 8, !dbg !528
  %437 = shl i64 %436, 33, !dbg !528
  %438 = load i64, i64* %11, align 8, !dbg !528
  %439 = lshr i64 %438, 31, !dbg !528
  %440 = or i64 %437, %439, !dbg !528
  store i64 %440, i64* %11, align 8, !dbg !528
  %441 = load i8*, i8** %7, align 8, !dbg !528
  %442 = getelementptr inbounds i8, i8* %441, i64 24, !dbg !528
  %443 = getelementptr inbounds i8, i8* %442, i64 0, !dbg !528
  %444 = load i8, i8* %443, align 1, !dbg !528
  %445 = zext i8 %444 to i64, !dbg !528
  %446 = shl i64 %445, 56, !dbg !528
  %447 = load i8*, i8** %7, align 8, !dbg !528
  %448 = getelementptr inbounds i8, i8* %447, i64 24, !dbg !528
  %449 = getelementptr inbounds i8, i8* %448, i64 1, !dbg !528
  %450 = load i8, i8* %449, align 1, !dbg !528
  %451 = zext i8 %450 to i64, !dbg !528
  %452 = shl i64 %451, 48, !dbg !528
  %453 = or i64 %446, %452, !dbg !528
  %454 = load i8*, i8** %7, align 8, !dbg !528
  %455 = getelementptr inbounds i8, i8* %454, i64 24, !dbg !528
  %456 = getelementptr inbounds i8, i8* %455, i64 2, !dbg !528
  %457 = load i8, i8* %456, align 1, !dbg !528
  %458 = zext i8 %457 to i64, !dbg !528
  %459 = shl i64 %458, 40, !dbg !528
  %460 = or i64 %453, %459, !dbg !528
  %461 = load i8*, i8** %7, align 8, !dbg !528
  %462 = getelementptr inbounds i8, i8* %461, i64 24, !dbg !528
  %463 = getelementptr inbounds i8, i8* %462, i64 3, !dbg !528
  %464 = load i8, i8* %463, align 1, !dbg !528
  %465 = zext i8 %464 to i64, !dbg !528
  %466 = shl i64 %465, 32, !dbg !528
  %467 = or i64 %460, %466, !dbg !528
  %468 = load i8*, i8** %7, align 8, !dbg !528
  %469 = getelementptr inbounds i8, i8* %468, i64 24, !dbg !528
  %470 = getelementptr inbounds i8, i8* %469, i64 4, !dbg !528
  %471 = load i8, i8* %470, align 1, !dbg !528
  %472 = zext i8 %471 to i64, !dbg !528
  %473 = shl i64 %472, 24, !dbg !528
  %474 = or i64 %467, %473, !dbg !528
  %475 = load i8*, i8** %7, align 8, !dbg !528
  %476 = getelementptr inbounds i8, i8* %475, i64 24, !dbg !528
  %477 = getelementptr inbounds i8, i8* %476, i64 5, !dbg !528
  %478 = load i8, i8* %477, align 1, !dbg !528
  %479 = zext i8 %478 to i64, !dbg !528
  %480 = shl i64 %479, 16, !dbg !528
  %481 = or i64 %474, %480, !dbg !528
  %482 = load i8*, i8** %7, align 8, !dbg !528
  %483 = getelementptr inbounds i8, i8* %482, i64 24, !dbg !528
  %484 = getelementptr inbounds i8, i8* %483, i64 6, !dbg !528
  %485 = load i8, i8* %484, align 1, !dbg !528
  %486 = zext i8 %485 to i64, !dbg !528
  %487 = shl i64 %486, 8, !dbg !528
  %488 = or i64 %481, %487, !dbg !528
  %489 = load i8*, i8** %7, align 8, !dbg !528
  %490 = getelementptr inbounds i8, i8* %489, i64 24, !dbg !528
  %491 = getelementptr inbounds i8, i8* %490, i64 7, !dbg !528
  %492 = load i8, i8* %491, align 1, !dbg !528
  %493 = zext i8 %492 to i64, !dbg !528
  %494 = or i64 %488, %493, !dbg !528
  %495 = load i64, i64* %11, align 8, !dbg !528
  %496 = add i64 %495, %494, !dbg !528
  store i64 %496, i64* %11, align 8, !dbg !528
  %497 = load i64, i64* %11, align 8, !dbg !528
  %498 = mul i64 %497, -307863662270213829, !dbg !528
  store i64 %498, i64* %11, align 8, !dbg !528
  %499 = load i8*, i8** %7, align 8, !dbg !529
  %500 = getelementptr inbounds i8, i8* %499, i64 32, !dbg !529
  store i8* %500, i8** %7, align 8, !dbg !529
  br label %501, !dbg !530

501:                                              ; preds = %38
  %502 = load i64, i64* %12, align 8, !dbg !531
  %503 = add i64 %502, -1, !dbg !531
  store i64 %503, i64* %12, align 8, !dbg !531
  br label %35, !dbg !532, !llvm.loop !533

504:                                              ; preds = %35
  %505 = load i64, i64* %5, align 8, !dbg !535
  %506 = and i64 %505, 24, !dbg !536
  switch i64 %506, label %855 [
    i64 24, label %507
    i64 16, label %627
    i64 8, label %747
  ], !dbg !537

507:                                              ; preds = %504
  %508 = load i8*, i8** %7, align 8, !dbg !538
  %509 = getelementptr inbounds i8, i8* %508, i64 16, !dbg !538
  %510 = getelementptr inbounds i8, i8* %509, i64 0, !dbg !538
  %511 = load i8, i8* %510, align 1, !dbg !538
  %512 = zext i8 %511 to i64, !dbg !538
  %513 = shl i64 %512, 56, !dbg !538
  %514 = load i8*, i8** %7, align 8, !dbg !538
  %515 = getelementptr inbounds i8, i8* %514, i64 16, !dbg !538
  %516 = getelementptr inbounds i8, i8* %515, i64 1, !dbg !538
  %517 = load i8, i8* %516, align 1, !dbg !538
  %518 = zext i8 %517 to i64, !dbg !538
  %519 = shl i64 %518, 48, !dbg !538
  %520 = or i64 %513, %519, !dbg !538
  %521 = load i8*, i8** %7, align 8, !dbg !538
  %522 = getelementptr inbounds i8, i8* %521, i64 16, !dbg !538
  %523 = getelementptr inbounds i8, i8* %522, i64 2, !dbg !538
  %524 = load i8, i8* %523, align 1, !dbg !538
  %525 = zext i8 %524 to i64, !dbg !538
  %526 = shl i64 %525, 40, !dbg !538
  %527 = or i64 %520, %526, !dbg !538
  %528 = load i8*, i8** %7, align 8, !dbg !538
  %529 = getelementptr inbounds i8, i8* %528, i64 16, !dbg !538
  %530 = getelementptr inbounds i8, i8* %529, i64 3, !dbg !538
  %531 = load i8, i8* %530, align 1, !dbg !538
  %532 = zext i8 %531 to i64, !dbg !538
  %533 = shl i64 %532, 32, !dbg !538
  %534 = or i64 %527, %533, !dbg !538
  %535 = load i8*, i8** %7, align 8, !dbg !538
  %536 = getelementptr inbounds i8, i8* %535, i64 16, !dbg !538
  %537 = getelementptr inbounds i8, i8* %536, i64 4, !dbg !538
  %538 = load i8, i8* %537, align 1, !dbg !538
  %539 = zext i8 %538 to i64, !dbg !538
  %540 = shl i64 %539, 24, !dbg !538
  %541 = or i64 %534, %540, !dbg !538
  %542 = load i8*, i8** %7, align 8, !dbg !538
  %543 = getelementptr inbounds i8, i8* %542, i64 16, !dbg !538
  %544 = getelementptr inbounds i8, i8* %543, i64 5, !dbg !538
  %545 = load i8, i8* %544, align 1, !dbg !538
  %546 = zext i8 %545 to i64, !dbg !538
  %547 = shl i64 %546, 16, !dbg !538
  %548 = or i64 %541, %547, !dbg !538
  %549 = load i8*, i8** %7, align 8, !dbg !538
  %550 = getelementptr inbounds i8, i8* %549, i64 16, !dbg !538
  %551 = getelementptr inbounds i8, i8* %550, i64 6, !dbg !538
  %552 = load i8, i8* %551, align 1, !dbg !538
  %553 = zext i8 %552 to i64, !dbg !538
  %554 = shl i64 %553, 8, !dbg !538
  %555 = or i64 %548, %554, !dbg !538
  %556 = load i8*, i8** %7, align 8, !dbg !538
  %557 = getelementptr inbounds i8, i8* %556, i64 16, !dbg !538
  %558 = getelementptr inbounds i8, i8* %557, i64 7, !dbg !538
  %559 = load i8, i8* %558, align 1, !dbg !538
  %560 = zext i8 %559 to i64, !dbg !538
  %561 = or i64 %555, %560, !dbg !538
  %562 = load i64, i64* %10, align 8, !dbg !538
  %563 = add i64 %562, %561, !dbg !538
  store i64 %563, i64* %10, align 8, !dbg !538
  %564 = load i64, i64* %10, align 8, !dbg !538
  %565 = shl i64 %564, 33, !dbg !538
  %566 = load i64, i64* %10, align 8, !dbg !538
  %567 = lshr i64 %566, 31, !dbg !538
  %568 = or i64 %565, %567, !dbg !538
  store i64 %568, i64* %10, align 8, !dbg !538
  %569 = load i8*, i8** %7, align 8, !dbg !538
  %570 = getelementptr inbounds i8, i8* %569, i64 16, !dbg !538
  %571 = getelementptr inbounds i8, i8* %570, i64 0, !dbg !538
  %572 = load i8, i8* %571, align 1, !dbg !538
  %573 = zext i8 %572 to i64, !dbg !538
  %574 = shl i64 %573, 56, !dbg !538
  %575 = load i8*, i8** %7, align 8, !dbg !538
  %576 = getelementptr inbounds i8, i8* %575, i64 16, !dbg !538
  %577 = getelementptr inbounds i8, i8* %576, i64 1, !dbg !538
  %578 = load i8, i8* %577, align 1, !dbg !538
  %579 = zext i8 %578 to i64, !dbg !538
  %580 = shl i64 %579, 48, !dbg !538
  %581 = or i64 %574, %580, !dbg !538
  %582 = load i8*, i8** %7, align 8, !dbg !538
  %583 = getelementptr inbounds i8, i8* %582, i64 16, !dbg !538
  %584 = getelementptr inbounds i8, i8* %583, i64 2, !dbg !538
  %585 = load i8, i8* %584, align 1, !dbg !538
  %586 = zext i8 %585 to i64, !dbg !538
  %587 = shl i64 %586, 40, !dbg !538
  %588 = or i64 %581, %587, !dbg !538
  %589 = load i8*, i8** %7, align 8, !dbg !538
  %590 = getelementptr inbounds i8, i8* %589, i64 16, !dbg !538
  %591 = getelementptr inbounds i8, i8* %590, i64 3, !dbg !538
  %592 = load i8, i8* %591, align 1, !dbg !538
  %593 = zext i8 %592 to i64, !dbg !538
  %594 = shl i64 %593, 32, !dbg !538
  %595 = or i64 %588, %594, !dbg !538
  %596 = load i8*, i8** %7, align 8, !dbg !538
  %597 = getelementptr inbounds i8, i8* %596, i64 16, !dbg !538
  %598 = getelementptr inbounds i8, i8* %597, i64 4, !dbg !538
  %599 = load i8, i8* %598, align 1, !dbg !538
  %600 = zext i8 %599 to i64, !dbg !538
  %601 = shl i64 %600, 24, !dbg !538
  %602 = or i64 %595, %601, !dbg !538
  %603 = load i8*, i8** %7, align 8, !dbg !538
  %604 = getelementptr inbounds i8, i8* %603, i64 16, !dbg !538
  %605 = getelementptr inbounds i8, i8* %604, i64 5, !dbg !538
  %606 = load i8, i8* %605, align 1, !dbg !538
  %607 = zext i8 %606 to i64, !dbg !538
  %608 = shl i64 %607, 16, !dbg !538
  %609 = or i64 %602, %608, !dbg !538
  %610 = load i8*, i8** %7, align 8, !dbg !538
  %611 = getelementptr inbounds i8, i8* %610, i64 16, !dbg !538
  %612 = getelementptr inbounds i8, i8* %611, i64 6, !dbg !538
  %613 = load i8, i8* %612, align 1, !dbg !538
  %614 = zext i8 %613 to i64, !dbg !538
  %615 = shl i64 %614, 8, !dbg !538
  %616 = or i64 %609, %615, !dbg !538
  %617 = load i8*, i8** %7, align 8, !dbg !538
  %618 = getelementptr inbounds i8, i8* %617, i64 16, !dbg !538
  %619 = getelementptr inbounds i8, i8* %618, i64 7, !dbg !538
  %620 = load i8, i8* %619, align 1, !dbg !538
  %621 = zext i8 %620 to i64, !dbg !538
  %622 = or i64 %616, %621, !dbg !538
  %623 = load i64, i64* %10, align 8, !dbg !538
  %624 = add i64 %623, %622, !dbg !538
  store i64 %624, i64* %10, align 8, !dbg !538
  %625 = load i64, i64* %10, align 8, !dbg !538
  %626 = mul i64 %625, -307863662270213829, !dbg !538
  store i64 %626, i64* %10, align 8, !dbg !538
  br label %627, !dbg !538

627:                                              ; preds = %504, %507
  %628 = load i8*, i8** %7, align 8, !dbg !540
  %629 = getelementptr inbounds i8, i8* %628, i64 8, !dbg !540
  %630 = getelementptr inbounds i8, i8* %629, i64 0, !dbg !540
  %631 = load i8, i8* %630, align 1, !dbg !540
  %632 = zext i8 %631 to i64, !dbg !540
  %633 = shl i64 %632, 56, !dbg !540
  %634 = load i8*, i8** %7, align 8, !dbg !540
  %635 = getelementptr inbounds i8, i8* %634, i64 8, !dbg !540
  %636 = getelementptr inbounds i8, i8* %635, i64 1, !dbg !540
  %637 = load i8, i8* %636, align 1, !dbg !540
  %638 = zext i8 %637 to i64, !dbg !540
  %639 = shl i64 %638, 48, !dbg !540
  %640 = or i64 %633, %639, !dbg !540
  %641 = load i8*, i8** %7, align 8, !dbg !540
  %642 = getelementptr inbounds i8, i8* %641, i64 8, !dbg !540
  %643 = getelementptr inbounds i8, i8* %642, i64 2, !dbg !540
  %644 = load i8, i8* %643, align 1, !dbg !540
  %645 = zext i8 %644 to i64, !dbg !540
  %646 = shl i64 %645, 40, !dbg !540
  %647 = or i64 %640, %646, !dbg !540
  %648 = load i8*, i8** %7, align 8, !dbg !540
  %649 = getelementptr inbounds i8, i8* %648, i64 8, !dbg !540
  %650 = getelementptr inbounds i8, i8* %649, i64 3, !dbg !540
  %651 = load i8, i8* %650, align 1, !dbg !540
  %652 = zext i8 %651 to i64, !dbg !540
  %653 = shl i64 %652, 32, !dbg !540
  %654 = or i64 %647, %653, !dbg !540
  %655 = load i8*, i8** %7, align 8, !dbg !540
  %656 = getelementptr inbounds i8, i8* %655, i64 8, !dbg !540
  %657 = getelementptr inbounds i8, i8* %656, i64 4, !dbg !540
  %658 = load i8, i8* %657, align 1, !dbg !540
  %659 = zext i8 %658 to i64, !dbg !540
  %660 = shl i64 %659, 24, !dbg !540
  %661 = or i64 %654, %660, !dbg !540
  %662 = load i8*, i8** %7, align 8, !dbg !540
  %663 = getelementptr inbounds i8, i8* %662, i64 8, !dbg !540
  %664 = getelementptr inbounds i8, i8* %663, i64 5, !dbg !540
  %665 = load i8, i8* %664, align 1, !dbg !540
  %666 = zext i8 %665 to i64, !dbg !540
  %667 = shl i64 %666, 16, !dbg !540
  %668 = or i64 %661, %667, !dbg !540
  %669 = load i8*, i8** %7, align 8, !dbg !540
  %670 = getelementptr inbounds i8, i8* %669, i64 8, !dbg !540
  %671 = getelementptr inbounds i8, i8* %670, i64 6, !dbg !540
  %672 = load i8, i8* %671, align 1, !dbg !540
  %673 = zext i8 %672 to i64, !dbg !540
  %674 = shl i64 %673, 8, !dbg !540
  %675 = or i64 %668, %674, !dbg !540
  %676 = load i8*, i8** %7, align 8, !dbg !540
  %677 = getelementptr inbounds i8, i8* %676, i64 8, !dbg !540
  %678 = getelementptr inbounds i8, i8* %677, i64 7, !dbg !540
  %679 = load i8, i8* %678, align 1, !dbg !540
  %680 = zext i8 %679 to i64, !dbg !540
  %681 = or i64 %675, %680, !dbg !540
  %682 = load i64, i64* %9, align 8, !dbg !540
  %683 = add i64 %682, %681, !dbg !540
  store i64 %683, i64* %9, align 8, !dbg !540
  %684 = load i64, i64* %9, align 8, !dbg !540
  %685 = shl i64 %684, 33, !dbg !540
  %686 = load i64, i64* %9, align 8, !dbg !540
  %687 = lshr i64 %686, 31, !dbg !540
  %688 = or i64 %685, %687, !dbg !540
  store i64 %688, i64* %9, align 8, !dbg !540
  %689 = load i8*, i8** %7, align 8, !dbg !540
  %690 = getelementptr inbounds i8, i8* %689, i64 8, !dbg !540
  %691 = getelementptr inbounds i8, i8* %690, i64 0, !dbg !540
  %692 = load i8, i8* %691, align 1, !dbg !540
  %693 = zext i8 %692 to i64, !dbg !540
  %694 = shl i64 %693, 56, !dbg !540
  %695 = load i8*, i8** %7, align 8, !dbg !540
  %696 = getelementptr inbounds i8, i8* %695, i64 8, !dbg !540
  %697 = getelementptr inbounds i8, i8* %696, i64 1, !dbg !540
  %698 = load i8, i8* %697, align 1, !dbg !540
  %699 = zext i8 %698 to i64, !dbg !540
  %700 = shl i64 %699, 48, !dbg !540
  %701 = or i64 %694, %700, !dbg !540
  %702 = load i8*, i8** %7, align 8, !dbg !540
  %703 = getelementptr inbounds i8, i8* %702, i64 8, !dbg !540
  %704 = getelementptr inbounds i8, i8* %703, i64 2, !dbg !540
  %705 = load i8, i8* %704, align 1, !dbg !540
  %706 = zext i8 %705 to i64, !dbg !540
  %707 = shl i64 %706, 40, !dbg !540
  %708 = or i64 %701, %707, !dbg !540
  %709 = load i8*, i8** %7, align 8, !dbg !540
  %710 = getelementptr inbounds i8, i8* %709, i64 8, !dbg !540
  %711 = getelementptr inbounds i8, i8* %710, i64 3, !dbg !540
  %712 = load i8, i8* %711, align 1, !dbg !540
  %713 = zext i8 %712 to i64, !dbg !540
  %714 = shl i64 %713, 32, !dbg !540
  %715 = or i64 %708, %714, !dbg !540
  %716 = load i8*, i8** %7, align 8, !dbg !540
  %717 = getelementptr inbounds i8, i8* %716, i64 8, !dbg !540
  %718 = getelementptr inbounds i8, i8* %717, i64 4, !dbg !540
  %719 = load i8, i8* %718, align 1, !dbg !540
  %720 = zext i8 %719 to i64, !dbg !540
  %721 = shl i64 %720, 24, !dbg !540
  %722 = or i64 %715, %721, !dbg !540
  %723 = load i8*, i8** %7, align 8, !dbg !540
  %724 = getelementptr inbounds i8, i8* %723, i64 8, !dbg !540
  %725 = getelementptr inbounds i8, i8* %724, i64 5, !dbg !540
  %726 = load i8, i8* %725, align 1, !dbg !540
  %727 = zext i8 %726 to i64, !dbg !540
  %728 = shl i64 %727, 16, !dbg !540
  %729 = or i64 %722, %728, !dbg !540
  %730 = load i8*, i8** %7, align 8, !dbg !540
  %731 = getelementptr inbounds i8, i8* %730, i64 8, !dbg !540
  %732 = getelementptr inbounds i8, i8* %731, i64 6, !dbg !540
  %733 = load i8, i8* %732, align 1, !dbg !540
  %734 = zext i8 %733 to i64, !dbg !540
  %735 = shl i64 %734, 8, !dbg !540
  %736 = or i64 %729, %735, !dbg !540
  %737 = load i8*, i8** %7, align 8, !dbg !540
  %738 = getelementptr inbounds i8, i8* %737, i64 8, !dbg !540
  %739 = getelementptr inbounds i8, i8* %738, i64 7, !dbg !540
  %740 = load i8, i8* %739, align 1, !dbg !540
  %741 = zext i8 %740 to i64, !dbg !540
  %742 = or i64 %736, %741, !dbg !540
  %743 = load i64, i64* %9, align 8, !dbg !540
  %744 = add i64 %743, %742, !dbg !540
  store i64 %744, i64* %9, align 8, !dbg !540
  %745 = load i64, i64* %9, align 8, !dbg !540
  %746 = mul i64 %745, -307863662270213829, !dbg !540
  store i64 %746, i64* %9, align 8, !dbg !540
  br label %747, !dbg !540

747:                                              ; preds = %504, %627
  %748 = load i8*, i8** %7, align 8, !dbg !541
  %749 = getelementptr inbounds i8, i8* %748, i64 0, !dbg !541
  %750 = load i8, i8* %749, align 1, !dbg !541
  %751 = zext i8 %750 to i64, !dbg !541
  %752 = shl i64 %751, 56, !dbg !541
  %753 = load i8*, i8** %7, align 8, !dbg !541
  %754 = getelementptr inbounds i8, i8* %753, i64 1, !dbg !541
  %755 = load i8, i8* %754, align 1, !dbg !541
  %756 = zext i8 %755 to i64, !dbg !541
  %757 = shl i64 %756, 48, !dbg !541
  %758 = or i64 %752, %757, !dbg !541
  %759 = load i8*, i8** %7, align 8, !dbg !541
  %760 = getelementptr inbounds i8, i8* %759, i64 2, !dbg !541
  %761 = load i8, i8* %760, align 1, !dbg !541
  %762 = zext i8 %761 to i64, !dbg !541
  %763 = shl i64 %762, 40, !dbg !541
  %764 = or i64 %758, %763, !dbg !541
  %765 = load i8*, i8** %7, align 8, !dbg !541
  %766 = getelementptr inbounds i8, i8* %765, i64 3, !dbg !541
  %767 = load i8, i8* %766, align 1, !dbg !541
  %768 = zext i8 %767 to i64, !dbg !541
  %769 = shl i64 %768, 32, !dbg !541
  %770 = or i64 %764, %769, !dbg !541
  %771 = load i8*, i8** %7, align 8, !dbg !541
  %772 = getelementptr inbounds i8, i8* %771, i64 4, !dbg !541
  %773 = load i8, i8* %772, align 1, !dbg !541
  %774 = zext i8 %773 to i64, !dbg !541
  %775 = shl i64 %774, 24, !dbg !541
  %776 = or i64 %770, %775, !dbg !541
  %777 = load i8*, i8** %7, align 8, !dbg !541
  %778 = getelementptr inbounds i8, i8* %777, i64 5, !dbg !541
  %779 = load i8, i8* %778, align 1, !dbg !541
  %780 = zext i8 %779 to i64, !dbg !541
  %781 = shl i64 %780, 16, !dbg !541
  %782 = or i64 %776, %781, !dbg !541
  %783 = load i8*, i8** %7, align 8, !dbg !541
  %784 = getelementptr inbounds i8, i8* %783, i64 6, !dbg !541
  %785 = load i8, i8* %784, align 1, !dbg !541
  %786 = zext i8 %785 to i64, !dbg !541
  %787 = shl i64 %786, 8, !dbg !541
  %788 = or i64 %782, %787, !dbg !541
  %789 = load i8*, i8** %7, align 8, !dbg !541
  %790 = getelementptr inbounds i8, i8* %789, i64 7, !dbg !541
  %791 = load i8, i8* %790, align 1, !dbg !541
  %792 = zext i8 %791 to i64, !dbg !541
  %793 = or i64 %788, %792, !dbg !541
  %794 = load i64, i64* %8, align 8, !dbg !541
  %795 = add i64 %794, %793, !dbg !541
  store i64 %795, i64* %8, align 8, !dbg !541
  %796 = load i64, i64* %8, align 8, !dbg !541
  %797 = shl i64 %796, 33, !dbg !541
  %798 = load i64, i64* %8, align 8, !dbg !541
  %799 = lshr i64 %798, 31, !dbg !541
  %800 = or i64 %797, %799, !dbg !541
  store i64 %800, i64* %8, align 8, !dbg !541
  %801 = load i8*, i8** %7, align 8, !dbg !541
  %802 = getelementptr inbounds i8, i8* %801, i64 0, !dbg !541
  %803 = load i8, i8* %802, align 1, !dbg !541
  %804 = zext i8 %803 to i64, !dbg !541
  %805 = shl i64 %804, 56, !dbg !541
  %806 = load i8*, i8** %7, align 8, !dbg !541
  %807 = getelementptr inbounds i8, i8* %806, i64 1, !dbg !541
  %808 = load i8, i8* %807, align 1, !dbg !541
  %809 = zext i8 %808 to i64, !dbg !541
  %810 = shl i64 %809, 48, !dbg !541
  %811 = or i64 %805, %810, !dbg !541
  %812 = load i8*, i8** %7, align 8, !dbg !541
  %813 = getelementptr inbounds i8, i8* %812, i64 2, !dbg !541
  %814 = load i8, i8* %813, align 1, !dbg !541
  %815 = zext i8 %814 to i64, !dbg !541
  %816 = shl i64 %815, 40, !dbg !541
  %817 = or i64 %811, %816, !dbg !541
  %818 = load i8*, i8** %7, align 8, !dbg !541
  %819 = getelementptr inbounds i8, i8* %818, i64 3, !dbg !541
  %820 = load i8, i8* %819, align 1, !dbg !541
  %821 = zext i8 %820 to i64, !dbg !541
  %822 = shl i64 %821, 32, !dbg !541
  %823 = or i64 %817, %822, !dbg !541
  %824 = load i8*, i8** %7, align 8, !dbg !541
  %825 = getelementptr inbounds i8, i8* %824, i64 4, !dbg !541
  %826 = load i8, i8* %825, align 1, !dbg !541
  %827 = zext i8 %826 to i64, !dbg !541
  %828 = shl i64 %827, 24, !dbg !541
  %829 = or i64 %823, %828, !dbg !541
  %830 = load i8*, i8** %7, align 8, !dbg !541
  %831 = getelementptr inbounds i8, i8* %830, i64 5, !dbg !541
  %832 = load i8, i8* %831, align 1, !dbg !541
  %833 = zext i8 %832 to i64, !dbg !541
  %834 = shl i64 %833, 16, !dbg !541
  %835 = or i64 %829, %834, !dbg !541
  %836 = load i8*, i8** %7, align 8, !dbg !541
  %837 = getelementptr inbounds i8, i8* %836, i64 6, !dbg !541
  %838 = load i8, i8* %837, align 1, !dbg !541
  %839 = zext i8 %838 to i64, !dbg !541
  %840 = shl i64 %839, 8, !dbg !541
  %841 = or i64 %835, %840, !dbg !541
  %842 = load i8*, i8** %7, align 8, !dbg !541
  %843 = getelementptr inbounds i8, i8* %842, i64 7, !dbg !541
  %844 = load i8, i8* %843, align 1, !dbg !541
  %845 = zext i8 %844 to i64, !dbg !541
  %846 = or i64 %841, %845, !dbg !541
  %847 = load i64, i64* %8, align 8, !dbg !541
  %848 = add i64 %847, %846, !dbg !541
  store i64 %848, i64* %8, align 8, !dbg !541
  %849 = load i64, i64* %8, align 8, !dbg !541
  %850 = mul i64 %849, -307863662270213829, !dbg !541
  store i64 %850, i64* %8, align 8, !dbg !541
  %851 = load i64, i64* %5, align 8, !dbg !542
  %852 = and i64 %851, 24, !dbg !543
  %853 = load i8*, i8** %7, align 8, !dbg !544
  %854 = getelementptr inbounds i8, i8* %853, i64 %852, !dbg !544
  store i8* %854, i8** %7, align 8, !dbg !544
  br label %855, !dbg !545

855:                                              ; preds = %747, %504
  call void @llvm.dbg.declare(metadata i64* %13, metadata !546, metadata !DIExpression()), !dbg !547
  store i64 0, i64* %13, align 8, !dbg !547
  %856 = load i64, i64* %5, align 8, !dbg !548
  %857 = and i64 %856, 7, !dbg !549
  switch i64 %857, label %974 [
    i64 7, label %858
    i64 6, label %866
    i64 5, label %874
    i64 4, label %882
    i64 3, label %890
    i64 2, label %898
    i64 1, label %906
  ], !dbg !550

858:                                              ; preds = %855
  %859 = load i8*, i8** %7, align 8, !dbg !551
  %860 = getelementptr inbounds i8, i8* %859, i64 6, !dbg !551
  %861 = load i8, i8* %860, align 1, !dbg !551
  %862 = zext i8 %861 to i64, !dbg !553
  %863 = shl i64 %862, 8, !dbg !554
  %864 = load i64, i64* %13, align 8, !dbg !555
  %865 = or i64 %864, %863, !dbg !555
  store i64 %865, i64* %13, align 8, !dbg !555
  br label %866, !dbg !556

866:                                              ; preds = %855, %858
  %867 = load i8*, i8** %7, align 8, !dbg !557
  %868 = getelementptr inbounds i8, i8* %867, i64 5, !dbg !557
  %869 = load i8, i8* %868, align 1, !dbg !557
  %870 = zext i8 %869 to i64, !dbg !558
  %871 = shl i64 %870, 16, !dbg !559
  %872 = load i64, i64* %13, align 8, !dbg !560
  %873 = or i64 %872, %871, !dbg !560
  store i64 %873, i64* %13, align 8, !dbg !560
  br label %874, !dbg !561

874:                                              ; preds = %855, %866
  %875 = load i8*, i8** %7, align 8, !dbg !562
  %876 = getelementptr inbounds i8, i8* %875, i64 4, !dbg !562
  %877 = load i8, i8* %876, align 1, !dbg !562
  %878 = zext i8 %877 to i64, !dbg !563
  %879 = shl i64 %878, 24, !dbg !564
  %880 = load i64, i64* %13, align 8, !dbg !565
  %881 = or i64 %880, %879, !dbg !565
  store i64 %881, i64* %13, align 8, !dbg !565
  br label %882, !dbg !566

882:                                              ; preds = %855, %874
  %883 = load i8*, i8** %7, align 8, !dbg !567
  %884 = getelementptr inbounds i8, i8* %883, i64 3, !dbg !567
  %885 = load i8, i8* %884, align 1, !dbg !567
  %886 = zext i8 %885 to i64, !dbg !568
  %887 = shl i64 %886, 32, !dbg !569
  %888 = load i64, i64* %13, align 8, !dbg !570
  %889 = or i64 %888, %887, !dbg !570
  store i64 %889, i64* %13, align 8, !dbg !570
  br label %890, !dbg !571

890:                                              ; preds = %855, %882
  %891 = load i8*, i8** %7, align 8, !dbg !572
  %892 = getelementptr inbounds i8, i8* %891, i64 2, !dbg !572
  %893 = load i8, i8* %892, align 1, !dbg !572
  %894 = zext i8 %893 to i64, !dbg !573
  %895 = shl i64 %894, 40, !dbg !574
  %896 = load i64, i64* %13, align 8, !dbg !575
  %897 = or i64 %896, %895, !dbg !575
  store i64 %897, i64* %13, align 8, !dbg !575
  br label %898, !dbg !576

898:                                              ; preds = %855, %890
  %899 = load i8*, i8** %7, align 8, !dbg !577
  %900 = getelementptr inbounds i8, i8* %899, i64 1, !dbg !577
  %901 = load i8, i8* %900, align 1, !dbg !577
  %902 = zext i8 %901 to i64, !dbg !578
  %903 = shl i64 %902, 48, !dbg !579
  %904 = load i64, i64* %13, align 8, !dbg !580
  %905 = or i64 %904, %903, !dbg !580
  store i64 %905, i64* %13, align 8, !dbg !580
  br label %906, !dbg !581

906:                                              ; preds = %855, %898
  %907 = load i8*, i8** %7, align 8, !dbg !582
  %908 = getelementptr inbounds i8, i8* %907, i64 0, !dbg !582
  %909 = load i8, i8* %908, align 1, !dbg !582
  %910 = zext i8 %909 to i64, !dbg !583
  %911 = shl i64 %910, 56, !dbg !584
  %912 = load i64, i64* %13, align 8, !dbg !585
  %913 = or i64 %912, %911, !dbg !585
  store i64 %913, i64* %13, align 8, !dbg !585
  %914 = load i64, i64* %5, align 8, !dbg !586
  %915 = lshr i64 %914, 3, !dbg !587
  %916 = and i64 %915, 3, !dbg !588
  switch i64 %916, label %973 [
    i64 3, label %917
    i64 2, label %931
    i64 1, label %945
    i64 0, label %959
  ], !dbg !589

917:                                              ; preds = %906
  %918 = load i64, i64* %13, align 8, !dbg !590
  %919 = load i64, i64* %11, align 8, !dbg !590
  %920 = add i64 %919, %918, !dbg !590
  store i64 %920, i64* %11, align 8, !dbg !590
  %921 = load i64, i64* %11, align 8, !dbg !590
  %922 = shl i64 %921, 33, !dbg !590
  %923 = load i64, i64* %11, align 8, !dbg !590
  %924 = lshr i64 %923, 31, !dbg !590
  %925 = or i64 %922, %924, !dbg !590
  store i64 %925, i64* %11, align 8, !dbg !590
  %926 = load i64, i64* %13, align 8, !dbg !590
  %927 = load i64, i64* %11, align 8, !dbg !590
  %928 = add i64 %927, %926, !dbg !590
  store i64 %928, i64* %11, align 8, !dbg !590
  %929 = load i64, i64* %11, align 8, !dbg !590
  %930 = mul i64 %929, -307863662270213829, !dbg !590
  store i64 %930, i64* %11, align 8, !dbg !590
  br label %973, !dbg !592

931:                                              ; preds = %906
  %932 = load i64, i64* %13, align 8, !dbg !593
  %933 = load i64, i64* %10, align 8, !dbg !593
  %934 = add i64 %933, %932, !dbg !593
  store i64 %934, i64* %10, align 8, !dbg !593
  %935 = load i64, i64* %10, align 8, !dbg !593
  %936 = shl i64 %935, 33, !dbg !593
  %937 = load i64, i64* %10, align 8, !dbg !593
  %938 = lshr i64 %937, 31, !dbg !593
  %939 = or i64 %936, %938, !dbg !593
  store i64 %939, i64* %10, align 8, !dbg !593
  %940 = load i64, i64* %13, align 8, !dbg !593
  %941 = load i64, i64* %10, align 8, !dbg !593
  %942 = add i64 %941, %940, !dbg !593
  store i64 %942, i64* %10, align 8, !dbg !593
  %943 = load i64, i64* %10, align 8, !dbg !593
  %944 = mul i64 %943, -307863662270213829, !dbg !593
  store i64 %944, i64* %10, align 8, !dbg !593
  br label %973, !dbg !594

945:                                              ; preds = %906
  %946 = load i64, i64* %13, align 8, !dbg !595
  %947 = load i64, i64* %9, align 8, !dbg !595
  %948 = add i64 %947, %946, !dbg !595
  store i64 %948, i64* %9, align 8, !dbg !595
  %949 = load i64, i64* %9, align 8, !dbg !595
  %950 = shl i64 %949, 33, !dbg !595
  %951 = load i64, i64* %9, align 8, !dbg !595
  %952 = lshr i64 %951, 31, !dbg !595
  %953 = or i64 %950, %952, !dbg !595
  store i64 %953, i64* %9, align 8, !dbg !595
  %954 = load i64, i64* %13, align 8, !dbg !595
  %955 = load i64, i64* %9, align 8, !dbg !595
  %956 = add i64 %955, %954, !dbg !595
  store i64 %956, i64* %9, align 8, !dbg !595
  %957 = load i64, i64* %9, align 8, !dbg !595
  %958 = mul i64 %957, -307863662270213829, !dbg !595
  store i64 %958, i64* %9, align 8, !dbg !595
  br label %973, !dbg !596

959:                                              ; preds = %906
  %960 = load i64, i64* %13, align 8, !dbg !597
  %961 = load i64, i64* %8, align 8, !dbg !597
  %962 = add i64 %961, %960, !dbg !597
  store i64 %962, i64* %8, align 8, !dbg !597
  %963 = load i64, i64* %8, align 8, !dbg !597
  %964 = shl i64 %963, 33, !dbg !597
  %965 = load i64, i64* %8, align 8, !dbg !597
  %966 = lshr i64 %965, 31, !dbg !597
  %967 = or i64 %964, %966, !dbg !597
  store i64 %967, i64* %8, align 8, !dbg !597
  %968 = load i64, i64* %13, align 8, !dbg !597
  %969 = load i64, i64* %8, align 8, !dbg !597
  %970 = add i64 %969, %968, !dbg !597
  store i64 %970, i64* %8, align 8, !dbg !597
  %971 = load i64, i64* %8, align 8, !dbg !597
  %972 = mul i64 %971, -307863662270213829, !dbg !597
  store i64 %972, i64* %8, align 8, !dbg !597
  br label %973, !dbg !598

973:                                              ; preds = %906, %959, %945, %931, %917
  br label %974, !dbg !599

974:                                              ; preds = %973, %855
  call void @llvm.dbg.declare(metadata i64* %14, metadata !600, metadata !DIExpression()), !dbg !601
  %975 = load i64, i64* %8, align 8, !dbg !602
  %976 = shl i64 %975, 17, !dbg !602
  %977 = load i64, i64* %8, align 8, !dbg !602
  %978 = lshr i64 %977, 47, !dbg !602
  %979 = or i64 %976, %978, !dbg !602
  %980 = load i64, i64* %9, align 8, !dbg !603
  %981 = shl i64 %980, 13, !dbg !603
  %982 = load i64, i64* %9, align 8, !dbg !603
  %983 = lshr i64 %982, 51, !dbg !603
  %984 = or i64 %981, %983, !dbg !603
  %985 = add i64 %979, %984, !dbg !604
  %986 = load i64, i64* %10, align 8, !dbg !605
  %987 = shl i64 %986, 47, !dbg !605
  %988 = load i64, i64* %10, align 8, !dbg !605
  %989 = lshr i64 %988, 17, !dbg !605
  %990 = or i64 %987, %989, !dbg !605
  %991 = add i64 %985, %990, !dbg !606
  %992 = load i64, i64* %11, align 8, !dbg !607
  %993 = shl i64 %992, 57, !dbg !607
  %994 = load i64, i64* %11, align 8, !dbg !607
  %995 = lshr i64 %994, 7, !dbg !607
  %996 = or i64 %993, %995, !dbg !607
  %997 = add i64 %991, %996, !dbg !608
  store i64 %997, i64* %14, align 8, !dbg !601
  %998 = load i64, i64* %5, align 8, !dbg !609
  %999 = shl i64 %998, 33, !dbg !610
  %1000 = load i64, i64* %5, align 8, !dbg !611
  %1001 = xor i64 %1000, %999, !dbg !611
  store i64 %1001, i64* %5, align 8, !dbg !611
  %1002 = load i64, i64* %5, align 8, !dbg !612
  %1003 = load i64, i64* %14, align 8, !dbg !613
  %1004 = add i64 %1003, %1002, !dbg !613
  store i64 %1004, i64* %14, align 8, !dbg !613
  %1005 = load i64, i64* %8, align 8, !dbg !614
  %1006 = mul i64 %1005, -6119419677951424823, !dbg !615
  %1007 = load i64, i64* %14, align 8, !dbg !616
  %1008 = add i64 %1007, %1006, !dbg !616
  store i64 %1008, i64* %14, align 8, !dbg !616
  %1009 = load i64, i64* %14, align 8, !dbg !617
  %1010 = shl i64 %1009, 13, !dbg !617
  %1011 = load i64, i64* %14, align 8, !dbg !617
  %1012 = lshr i64 %1011, 51, !dbg !617
  %1013 = or i64 %1010, %1012, !dbg !617
  %1014 = load i64, i64* %14, align 8, !dbg !618
  %1015 = xor i64 %1014, %1013, !dbg !618
  store i64 %1015, i64* %14, align 8, !dbg !618
  %1016 = load i64, i64* %9, align 8, !dbg !619
  %1017 = mul i64 %1016, -6119419677951424823, !dbg !620
  %1018 = load i64, i64* %14, align 8, !dbg !621
  %1019 = add i64 %1018, %1017, !dbg !621
  store i64 %1019, i64* %14, align 8, !dbg !621
  %1020 = load i64, i64* %14, align 8, !dbg !622
  %1021 = shl i64 %1020, 29, !dbg !622
  %1022 = load i64, i64* %14, align 8, !dbg !622
  %1023 = lshr i64 %1022, 35, !dbg !622
  %1024 = or i64 %1021, %1023, !dbg !622
  %1025 = load i64, i64* %14, align 8, !dbg !623
  %1026 = xor i64 %1025, %1024, !dbg !623
  store i64 %1026, i64* %14, align 8, !dbg !623
  %1027 = load i64, i64* %10, align 8, !dbg !624
  %1028 = mul i64 %1027, -6119419677951424823, !dbg !625
  %1029 = load i64, i64* %14, align 8, !dbg !626
  %1030 = add i64 %1029, %1028, !dbg !626
  store i64 %1030, i64* %14, align 8, !dbg !626
  %1031 = load i64, i64* %14, align 8, !dbg !627
  %1032 = shl i64 %1031, 33, !dbg !627
  %1033 = load i64, i64* %14, align 8, !dbg !627
  %1034 = lshr i64 %1033, 31, !dbg !627
  %1035 = or i64 %1032, %1034, !dbg !627
  %1036 = load i64, i64* %14, align 8, !dbg !628
  %1037 = xor i64 %1036, %1035, !dbg !628
  store i64 %1037, i64* %14, align 8, !dbg !628
  %1038 = load i64, i64* %11, align 8, !dbg !629
  %1039 = mul i64 %1038, -6119419677951424823, !dbg !630
  %1040 = load i64, i64* %14, align 8, !dbg !631
  %1041 = add i64 %1040, %1039, !dbg !631
  store i64 %1041, i64* %14, align 8, !dbg !631
  %1042 = load i64, i64* %14, align 8, !dbg !632
  %1043 = shl i64 %1042, 51, !dbg !632
  %1044 = load i64, i64* %14, align 8, !dbg !632
  %1045 = lshr i64 %1044, 13, !dbg !632
  %1046 = or i64 %1043, %1045, !dbg !632
  %1047 = load i64, i64* %14, align 8, !dbg !633
  %1048 = xor i64 %1047, %1046, !dbg !633
  store i64 %1048, i64* %14, align 8, !dbg !633
  %1049 = load i64, i64* %14, align 8, !dbg !634
  %1050 = lshr i64 %1049, 29, !dbg !635
  %1051 = mul i64 %1050, -307863662270213829, !dbg !636
  %1052 = load i64, i64* %14, align 8, !dbg !637
  %1053 = xor i64 %1052, %1051, !dbg !637
  store i64 %1053, i64* %14, align 8, !dbg !637
  %1054 = load i64, i64* %14, align 8, !dbg !638
  ret i64 %1054, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_set_arg(i64 %0, i8* %1, i8* %2, i8* %3, %struct.fio_cli_parser_data_s* %4) #0 !dbg !640 {
  %6 = alloca %struct.cstr_s, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fio_cli_parser_data_s*, align 8
  %10 = alloca %struct.cstr_s, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cstr_s, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = bitcast %struct.cstr_s* %6 to { i64, i8* }*
  %22 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %21, i32 0, i32 0
  store i64 %0, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %21, i32 0, i32 1
  store i8* %1, i8** %23, align 8
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %6, metadata !644, metadata !DIExpression()), !dbg !645
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !646, metadata !DIExpression()), !dbg !647
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !648, metadata !DIExpression()), !dbg !649
  store %struct.fio_cli_parser_data_s* %4, %struct.fio_cli_parser_data_s** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_parser_data_s** %9, metadata !650, metadata !DIExpression()), !dbg !651
  %24 = load i8*, i8** %8, align 8, !dbg !652
  %25 = icmp ne i8* %24, null, !dbg !652
  br i1 %25, label %26, label %30, !dbg !654

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 0, !dbg !655
  %28 = load i64, i64* %27, align 8, !dbg !655
  %29 = icmp ne i64 %28, 0, !dbg !656
  br i1 %29, label %82, label %30, !dbg !657

30:                                               ; preds = %26, %5
  %31 = load i8*, i8** %7, align 8, !dbg !658
  %32 = icmp ne i8* %31, null, !dbg !658
  br i1 %32, label %34, label %33, !dbg !661

33:                                               ; preds = %30
  br label %288, !dbg !662

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8, !dbg !664
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !666
  %37 = icmp ne i32 %36, 0, !dbg !666
  br i1 %37, label %38, label %50, !dbg !667

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8, !dbg !668
  %40 = call i32 @strcasecmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !669
  %41 = icmp ne i32 %40, 0, !dbg !669
  br i1 %41, label %42, label %50, !dbg !670

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8, !dbg !671
  %44 = call i32 @strcasecmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !672
  %45 = icmp ne i32 %44, 0, !dbg !672
  br i1 %45, label %46, label %50, !dbg !673

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8, !dbg !674
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !675
  %49 = icmp ne i32 %48, 0, !dbg !675
  br i1 %49, label %51, label %50, !dbg !676

50:                                               ; preds = %46, %42, %38, %34
  br label %288, !dbg !677

51:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %10, metadata !679, metadata !DIExpression()), !dbg !680
  %52 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %10, i32 0, i32 0, !dbg !681
  %53 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !682
  %54 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %53, i32 0, i32 3, !dbg !683
  %55 = load i32, i32* %54, align 4, !dbg !684
  %56 = add nsw i32 %55, 1, !dbg !684
  store i32 %56, i32* %54, align 4, !dbg !684
  %57 = sext i32 %56 to i64, !dbg !684
  store i64 %57, i64* %52, align 8, !dbg !681
  %58 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %10, i32 0, i32 1, !dbg !681
  store i8* null, i8** %58, align 8, !dbg !681
  %59 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %10, i32 0, i32 0, !dbg !685
  %60 = load i64, i64* %59, align 8, !dbg !685
  %61 = load i8*, i8** %7, align 8, !dbg !686
  %62 = bitcast %struct.cstr_s* %10 to { i64, i8* }*, !dbg !687
  %63 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %62, i32 0, i32 0, !dbg !687
  %64 = load i64, i64* %63, align 8, !dbg !687
  %65 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %62, i32 0, i32 1, !dbg !687
  %66 = load i8*, i8** %65, align 8, !dbg !687
  call void @fio_cli_hash_insert(%struct.fio_cli_hash_s* @fio_values, i64 %60, i64 %64, i8* %66, i8* %61, i8** null), !dbg !687
  %67 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !688
  %68 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %67, i32 0, i32 1, !dbg !690
  %69 = load i32, i32* %68, align 4, !dbg !690
  %70 = icmp sge i32 %69, 0, !dbg !691
  br i1 %70, label %71, label %81, !dbg !692

71:                                               ; preds = %51
  %72 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !693
  %73 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %72, i32 0, i32 3, !dbg !694
  %74 = load i32, i32* %73, align 4, !dbg !694
  %75 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !695
  %76 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %75, i32 0, i32 1, !dbg !696
  %77 = load i32, i32* %76, align 4, !dbg !696
  %78 = icmp sgt i32 %74, %77, !dbg !697
  br i1 %78, label %79, label %81, !dbg !698

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 0, !dbg !699
  store i64 0, i64* %80, align 8, !dbg !701
  br label %259, !dbg !702

81:                                               ; preds = %71, %51
  br label %570, !dbg !703

82:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata i8** %11, metadata !704, metadata !DIExpression()), !dbg !705
  %83 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !706
  %84 = load i8*, i8** %8, align 8, !dbg !707
  %85 = call i8* @fio_cli_get_line_type(%struct.fio_cli_parser_data_s* %83, i8* %84), !dbg !708
  store i8* %85, i8** %11, align 8, !dbg !705
  %86 = load i8*, i8** %11, align 8, !dbg !709
  %87 = ptrtoint i8* %86 to i64, !dbg !710
  switch i64 %87, label %129 [
    i64 2, label %88
    i64 3, label %106
    i64 1, label %118
  ], !dbg !711

88:                                               ; preds = %82
  %89 = load i8*, i8** %7, align 8, !dbg !712
  %90 = icmp ne i8* %89, null, !dbg !712
  br i1 %90, label %91, label %105, !dbg !715

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8, !dbg !716
  %93 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !717
  %94 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %93, i32 0, i32 5, !dbg !718
  %95 = load i8**, i8*** %94, align 8, !dbg !718
  %96 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !719
  %97 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %96, i32 0, i32 2, !dbg !720
  %98 = load i32, i32* %97, align 8, !dbg !720
  %99 = add nsw i32 %98, 1, !dbg !721
  %100 = sext i32 %99 to i64, !dbg !717
  %101 = getelementptr inbounds i8*, i8** %95, i64 %100, !dbg !717
  %102 = load i8*, i8** %101, align 8, !dbg !717
  %103 = icmp ne i8* %92, %102, !dbg !722
  br i1 %103, label %104, label %105, !dbg !723

104:                                              ; preds = %91
  br label %259, !dbg !724

105:                                              ; preds = %91, %88
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8, !dbg !726
  br label %129, !dbg !727

106:                                              ; preds = %82
  %107 = load i8*, i8** %7, align 8, !dbg !728
  %108 = icmp ne i8* %107, null, !dbg !728
  br i1 %108, label %109, label %117, !dbg !730

109:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata i8** %12, metadata !731, metadata !DIExpression()), !dbg !733
  %110 = load i8*, i8** %7, align 8, !dbg !734
  store i8* %110, i8** %12, align 8, !dbg !733
  %111 = call i64 @fio_atol(i8** %12), !dbg !735
  %112 = load i8*, i8** %12, align 8, !dbg !736
  %113 = load i8, i8* %112, align 1, !dbg !738
  %114 = icmp ne i8 %113, 0, !dbg !738
  br i1 %114, label %115, label %116, !dbg !739

115:                                              ; preds = %109
  br label %259, !dbg !740

116:                                              ; preds = %109
  br label %117, !dbg !742

117:                                              ; preds = %116, %106
  br label %118, !dbg !728

118:                                              ; preds = %82, %117
  %119 = load i8*, i8** %7, align 8, !dbg !743
  %120 = icmp ne i8* %119, null, !dbg !743
  br i1 %120, label %122, label %121, !dbg !745

121:                                              ; preds = %118
  br label %259, !dbg !746

122:                                              ; preds = %118
  %123 = load i8*, i8** %7, align 8, !dbg !747
  %124 = getelementptr inbounds i8, i8* %123, i64 0, !dbg !747
  %125 = load i8, i8* %124, align 1, !dbg !747
  %126 = icmp ne i8 %125, 0, !dbg !747
  br i1 %126, label %128, label %127, !dbg !749

127:                                              ; preds = %122
  br label %229, !dbg !750

128:                                              ; preds = %122
  br label %129, !dbg !751

129:                                              ; preds = %82, %128, %105
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %13, metadata !752, metadata !DIExpression()), !dbg !754
  %130 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !755
  store i64 0, i64* %130, align 8, !dbg !755
  %131 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !755
  %132 = load i8*, i8** %8, align 8, !dbg !756
  store i8* %132, i8** %131, align 8, !dbg !755
  br label %133, !dbg !757

133:                                              ; preds = %221, %129
  %134 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !758
  %135 = load i8*, i8** %134, align 8, !dbg !758
  %136 = getelementptr inbounds i8, i8* %135, i64 0, !dbg !759
  %137 = load i8, i8* %136, align 1, !dbg !759
  %138 = sext i8 %137 to i32, !dbg !759
  %139 = icmp eq i32 %138, 45, !dbg !760
  br i1 %139, label %140, label %228, !dbg !757

140:                                              ; preds = %133
  br label %141, !dbg !761

141:                                              ; preds = %170, %140
  %142 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !763
  %143 = load i8*, i8** %142, align 8, !dbg !763
  %144 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !764
  %145 = load i64, i64* %144, align 8, !dbg !764
  %146 = getelementptr inbounds i8, i8* %143, i64 %145, !dbg !765
  %147 = load i8, i8* %146, align 1, !dbg !765
  %148 = sext i8 %147 to i32, !dbg !765
  %149 = icmp ne i32 %148, 0, !dbg !765
  br i1 %149, label %150, label %168, !dbg !766

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !767
  %152 = load i8*, i8** %151, align 8, !dbg !767
  %153 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !768
  %154 = load i64, i64* %153, align 8, !dbg !768
  %155 = getelementptr inbounds i8, i8* %152, i64 %154, !dbg !769
  %156 = load i8, i8* %155, align 1, !dbg !769
  %157 = sext i8 %156 to i32, !dbg !769
  %158 = icmp ne i32 %157, 32, !dbg !770
  br i1 %158, label %159, label %168, !dbg !771

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !772
  %161 = load i8*, i8** %160, align 8, !dbg !772
  %162 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !773
  %163 = load i64, i64* %162, align 8, !dbg !773
  %164 = getelementptr inbounds i8, i8* %161, i64 %163, !dbg !774
  %165 = load i8, i8* %164, align 1, !dbg !774
  %166 = sext i8 %165 to i32, !dbg !774
  %167 = icmp ne i32 %166, 44, !dbg !775
  br label %168

168:                                              ; preds = %159, %150, %141
  %169 = phi i1 [ false, %150 ], [ false, %141 ], [ %167, %159 ], !dbg !776
  br i1 %169, label %170, label %174, !dbg !761

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !777
  %172 = load i64, i64* %171, align 8, !dbg !779
  %173 = add i64 %172, 1, !dbg !779
  store i64 %173, i64* %171, align 8, !dbg !779
  br label %141, !dbg !761, !llvm.loop !780

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !782
  %176 = load i8*, i8** %175, align 8, !dbg !782
  %177 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !782
  %178 = load i64, i64* %177, align 8, !dbg !782
  %179 = call i64 @fio_risky_hash(i8* %176, i64 %178, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64)), !dbg !782
  %180 = load i8*, i8** %7, align 8, !dbg !783
  %181 = bitcast %struct.cstr_s* %13 to { i64, i8* }*, !dbg !784
  %182 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %181, i32 0, i32 0, !dbg !784
  %183 = load i64, i64* %182, align 8, !dbg !784
  %184 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %181, i32 0, i32 1, !dbg !784
  %185 = load i8*, i8** %184, align 8, !dbg !784
  call void @fio_cli_hash_insert(%struct.fio_cli_hash_s* @fio_values, i64 %179, i64 %183, i8* %185, i8* %180, i8** null), !dbg !784
  br label %186, !dbg !785

186:                                              ; preds = %217, %174
  %187 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !786
  %188 = load i8*, i8** %187, align 8, !dbg !786
  %189 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !787
  %190 = load i64, i64* %189, align 8, !dbg !787
  %191 = getelementptr inbounds i8, i8* %188, i64 %190, !dbg !788
  %192 = load i8, i8* %191, align 1, !dbg !788
  %193 = sext i8 %192 to i32, !dbg !788
  %194 = icmp ne i32 %193, 0, !dbg !788
  br i1 %194, label %195, label %215, !dbg !789

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !790
  %197 = load i8*, i8** %196, align 8, !dbg !790
  %198 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !791
  %199 = load i64, i64* %198, align 8, !dbg !791
  %200 = getelementptr inbounds i8, i8* %197, i64 %199, !dbg !792
  %201 = load i8, i8* %200, align 1, !dbg !792
  %202 = sext i8 %201 to i32, !dbg !792
  %203 = icmp eq i32 %202, 32, !dbg !793
  br i1 %203, label %213, label %204, !dbg !794

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !795
  %206 = load i8*, i8** %205, align 8, !dbg !795
  %207 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !796
  %208 = load i64, i64* %207, align 8, !dbg !796
  %209 = getelementptr inbounds i8, i8* %206, i64 %208, !dbg !797
  %210 = load i8, i8* %209, align 1, !dbg !797
  %211 = sext i8 %210 to i32, !dbg !797
  %212 = icmp eq i32 %211, 44, !dbg !798
  br label %213, !dbg !794

213:                                              ; preds = %204, %195
  %214 = phi i1 [ true, %195 ], [ %212, %204 ]
  br label %215

215:                                              ; preds = %213, %186
  %216 = phi i1 [ false, %186 ], [ %214, %213 ], !dbg !776
  br i1 %216, label %217, label %221, !dbg !785

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !799
  %219 = load i64, i64* %218, align 8, !dbg !801
  %220 = add i64 %219, 1, !dbg !801
  store i64 %220, i64* %218, align 8, !dbg !801
  br label %186, !dbg !785, !llvm.loop !802

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !804
  %223 = load i64, i64* %222, align 8, !dbg !804
  %224 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1, !dbg !805
  %225 = load i8*, i8** %224, align 8, !dbg !806
  %226 = getelementptr inbounds i8, i8* %225, i64 %223, !dbg !806
  store i8* %226, i8** %224, align 8, !dbg !806
  %227 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0, !dbg !807
  store i64 0, i64* %227, align 8, !dbg !808
  br label %133, !dbg !757, !llvm.loop !809

228:                                              ; preds = %133
  br label %229, !dbg !811

229:                                              ; preds = %228, %127
  call void @llvm.dbg.label(metadata !812), !dbg !813
  %230 = load i8*, i8** %7, align 8, !dbg !814
  %231 = icmp ne i8* %230, null, !dbg !814
  br i1 %231, label %232, label %258, !dbg !816

232:                                              ; preds = %229
  %233 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !817
  %234 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %233, i32 0, i32 2, !dbg !818
  %235 = load i32, i32* %234, align 8, !dbg !818
  %236 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !819
  %237 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %236, i32 0, i32 4, !dbg !820
  %238 = load i32, i32* %237, align 8, !dbg !820
  %239 = icmp slt i32 %235, %238, !dbg !821
  br i1 %239, label %240, label %258, !dbg !822

240:                                              ; preds = %232
  %241 = load i8*, i8** %7, align 8, !dbg !823
  %242 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !824
  %243 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %242, i32 0, i32 5, !dbg !825
  %244 = load i8**, i8*** %243, align 8, !dbg !825
  %245 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !826
  %246 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %245, i32 0, i32 2, !dbg !827
  %247 = load i32, i32* %246, align 8, !dbg !827
  %248 = add nsw i32 %247, 1, !dbg !828
  %249 = sext i32 %248 to i64, !dbg !824
  %250 = getelementptr inbounds i8*, i8** %244, i64 %249, !dbg !824
  %251 = load i8*, i8** %250, align 8, !dbg !824
  %252 = icmp eq i8* %241, %251, !dbg !829
  br i1 %252, label %253, label %258, !dbg !830

253:                                              ; preds = %240
  %254 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !831
  %255 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %254, i32 0, i32 2, !dbg !832
  %256 = load i32, i32* %255, align 8, !dbg !833
  %257 = add nsw i32 %256, 1, !dbg !833
  store i32 %257, i32* %255, align 8, !dbg !833
  br label %258, !dbg !833

258:                                              ; preds = %253, %240, %232, %229
  br label %570, !dbg !834

259:                                              ; preds = %121, %115, %104, %79
  call void @llvm.dbg.label(metadata !835), !dbg !836
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !837
  %261 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 0, !dbg !838
  %262 = load i64, i64* %261, align 8, !dbg !838
  %263 = trunc i64 %262 to i32, !dbg !839
  %264 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 1, !dbg !840
  %265 = load i8*, i8** %264, align 8, !dbg !840
  %266 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 0, !dbg !841
  %267 = load i64, i64* %266, align 8, !dbg !841
  %268 = icmp ne i64 %267, 0, !dbg !842
  %269 = zext i1 %268 to i64, !dbg !842
  %270 = select i1 %268, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !842
  %271 = load i8*, i8** %7, align 8, !dbg !843
  %272 = icmp ne i8* %271, null, !dbg !843
  br i1 %272, label %273, label %284, !dbg !843

273:                                              ; preds = %259
  %274 = load i8*, i8** %7, align 8, !dbg !844
  %275 = getelementptr inbounds i8, i8* %274, i64 0, !dbg !844
  %276 = load i8, i8* %275, align 1, !dbg !844
  %277 = sext i8 %276 to i32, !dbg !844
  %278 = icmp ne i32 %277, 0, !dbg !844
  br i1 %278, label %279, label %281, !dbg !844

279:                                              ; preds = %273
  %280 = load i8*, i8** %7, align 8, !dbg !845
  br label %282, !dbg !844

281:                                              ; preds = %273
  br label %282, !dbg !844

282:                                              ; preds = %281, %279
  %283 = phi i8* [ %280, %279 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %281 ], !dbg !844
  br label %285, !dbg !843

284:                                              ; preds = %259
  br label %285, !dbg !843

285:                                              ; preds = %284, %282
  %286 = phi i8* [ %283, %282 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %284 ], !dbg !843
  %287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %260, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %263, i8* %265, i8* %270, i8* %286), !dbg !846
  br label %288, !dbg !846

288:                                              ; preds = %285, %50, %33
  call void @llvm.dbg.label(metadata !847), !dbg !848
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !849
  %290 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !850
  %291 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %290, i32 0, i32 6, !dbg !851
  %292 = load i8*, i8** %291, align 8, !dbg !851
  %293 = icmp ne i8* %292, null, !dbg !850
  br i1 %293, label %294, label %298, !dbg !850

294:                                              ; preds = %288
  %295 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !852
  %296 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %295, i32 0, i32 6, !dbg !853
  %297 = load i8*, i8** %296, align 8, !dbg !853
  br label %299, !dbg !850

298:                                              ; preds = %288
  br label %299, !dbg !850

299:                                              ; preds = %298, %294
  %300 = phi i8* [ %297, %294 ], [ getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i64 0, i64 0), %298 ], !dbg !850
  %301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %300), !dbg !854
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !855, metadata !DIExpression()), !dbg !856
  %302 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8, !dbg !857
  %303 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %302, i32 0, i32 7, !dbg !858
  %304 = load i8**, i8*** %303, align 8, !dbg !858
  store i8** %304, i8*** %14, align 8, !dbg !856
  br label %305, !dbg !859

305:                                              ; preds = %564, %329, %321, %313, %299
  %306 = load i8**, i8*** %14, align 8, !dbg !860
  %307 = load i8*, i8** %306, align 8, !dbg !861
  %308 = icmp ne i8* %307, null, !dbg !859
  br i1 %308, label %309, label %567, !dbg !859

309:                                              ; preds = %305
  %310 = load i8**, i8*** %14, align 8, !dbg !862
  %311 = load i8*, i8** %310, align 8, !dbg !864
  %312 = ptrtoint i8* %311 to i64, !dbg !865
  switch i64 %312, label %316 [
    i64 1, label %313
    i64 2, label %313
    i64 3, label %313
    i64 4, label %313
    i64 5, label %313
  ], !dbg !866

313:                                              ; preds = %309, %309, %309, %309, %309
  %314 = load i8**, i8*** %14, align 8, !dbg !867
  %315 = getelementptr inbounds i8*, i8** %314, i32 1, !dbg !867
  store i8** %315, i8*** %14, align 8, !dbg !867
  br label %305, !dbg !869, !llvm.loop !870

316:                                              ; preds = %309
  store i8* inttoptr (i64 1 to i8*), i8** %11, align 8, !dbg !872
  %317 = load i8**, i8*** %14, align 8, !dbg !873
  %318 = getelementptr inbounds i8*, i8** %317, i64 1, !dbg !873
  %319 = load i8*, i8** %318, align 8, !dbg !873
  %320 = ptrtoint i8* %319 to i64, !dbg !874
  switch i64 %320, label %341 [
    i64 4, label %321
    i64 5, label %329
    i64 1, label %337
    i64 2, label %337
    i64 3, label %337
  ], !dbg !875

321:                                              ; preds = %316
  %322 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !876
  %323 = load i8**, i8*** %14, align 8, !dbg !878
  %324 = getelementptr inbounds i8*, i8** %323, i64 0, !dbg !878
  %325 = load i8*, i8** %324, align 8, !dbg !878
  %326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %322, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %325), !dbg !879
  %327 = load i8**, i8*** %14, align 8, !dbg !880
  %328 = getelementptr inbounds i8*, i8** %327, i64 2, !dbg !880
  store i8** %328, i8*** %14, align 8, !dbg !880
  br label %305, !dbg !881, !llvm.loop !870

329:                                              ; preds = %316
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !882
  %331 = load i8**, i8*** %14, align 8, !dbg !883
  %332 = getelementptr inbounds i8*, i8** %331, i64 0, !dbg !883
  %333 = load i8*, i8** %332, align 8, !dbg !883
  %334 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %330, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %333), !dbg !884
  %335 = load i8**, i8*** %14, align 8, !dbg !885
  %336 = getelementptr inbounds i8*, i8** %335, i64 2, !dbg !885
  store i8** %336, i8*** %14, align 8, !dbg !885
  br label %305, !dbg !886, !llvm.loop !870

337:                                              ; preds = %316, %316, %316
  %338 = load i8**, i8*** %14, align 8, !dbg !887
  %339 = getelementptr inbounds i8*, i8** %338, i64 1, !dbg !887
  %340 = load i8*, i8** %339, align 8, !dbg !887
  store i8* %340, i8** %11, align 8, !dbg !888
  br label %341, !dbg !889

341:                                              ; preds = %337, %316
  call void @llvm.dbg.declare(metadata i32* %15, metadata !890, metadata !DIExpression()), !dbg !891
  store i32 0, i32* %15, align 4, !dbg !891
  call void @llvm.dbg.declare(metadata i32* %16, metadata !892, metadata !DIExpression()), !dbg !893
  store i32 0, i32* %16, align 4, !dbg !893
  call void @llvm.dbg.declare(metadata i64* %17, metadata !894, metadata !DIExpression()), !dbg !895
  store i64 0, i64* %17, align 8, !dbg !895
  call void @llvm.dbg.declare(metadata i8** %18, metadata !896, metadata !DIExpression()), !dbg !898
  %342 = load i8**, i8*** %14, align 8, !dbg !899
  %343 = load i8*, i8** %342, align 8, !dbg !900
  store i8* %343, i8** %18, align 8, !dbg !898
  br label %344, !dbg !901

344:                                              ; preds = %415, %341
  %345 = load i8*, i8** %18, align 8, !dbg !902
  %346 = load i64, i64* %17, align 8, !dbg !903
  %347 = getelementptr inbounds i8, i8* %345, i64 %346, !dbg !902
  %348 = load i8, i8* %347, align 1, !dbg !902
  %349 = sext i8 %348 to i32, !dbg !902
  %350 = icmp eq i32 %349, 45, !dbg !904
  br i1 %350, label %351, label %416, !dbg !901

351:                                              ; preds = %344
  br label %352, !dbg !905

352:                                              ; preds = %381, %351
  %353 = load i8*, i8** %18, align 8, !dbg !907
  %354 = load i64, i64* %17, align 8, !dbg !908
  %355 = getelementptr inbounds i8, i8* %353, i64 %354, !dbg !907
  %356 = load i8, i8* %355, align 1, !dbg !907
  %357 = sext i8 %356 to i32, !dbg !907
  %358 = icmp ne i32 %357, 0, !dbg !907
  br i1 %358, label %359, label %373, !dbg !909

359:                                              ; preds = %352
  %360 = load i8*, i8** %18, align 8, !dbg !910
  %361 = load i64, i64* %17, align 8, !dbg !911
  %362 = getelementptr inbounds i8, i8* %360, i64 %361, !dbg !910
  %363 = load i8, i8* %362, align 1, !dbg !910
  %364 = sext i8 %363 to i32, !dbg !910
  %365 = icmp ne i32 %364, 32, !dbg !912
  br i1 %365, label %366, label %373, !dbg !913

366:                                              ; preds = %359
  %367 = load i8*, i8** %18, align 8, !dbg !914
  %368 = load i64, i64* %17, align 8, !dbg !915
  %369 = getelementptr inbounds i8, i8* %367, i64 %368, !dbg !914
  %370 = load i8, i8* %369, align 1, !dbg !914
  %371 = sext i8 %370 to i32, !dbg !914
  %372 = icmp ne i32 %371, 44, !dbg !916
  br label %373

373:                                              ; preds = %366, %359, %352
  %374 = phi i1 [ false, %359 ], [ false, %352 ], [ %372, %366 ], !dbg !917
  br i1 %374, label %375, label %384, !dbg !905

375:                                              ; preds = %373
  %376 = load i32, i32* %15, align 4, !dbg !918
  %377 = icmp ne i32 %376, 0, !dbg !918
  br i1 %377, label %381, label %378, !dbg !921

378:                                              ; preds = %375
  %379 = load i32, i32* %16, align 4, !dbg !922
  %380 = add nsw i32 %379, 1, !dbg !922
  store i32 %380, i32* %16, align 4, !dbg !922
  br label %381, !dbg !922

381:                                              ; preds = %378, %375
  %382 = load i64, i64* %17, align 8, !dbg !923
  %383 = add i64 %382, 1, !dbg !923
  store i64 %383, i64* %17, align 8, !dbg !923
  br label %352, !dbg !905, !llvm.loop !924

384:                                              ; preds = %373
  %385 = load i32, i32* %15, align 4, !dbg !926
  %386 = add nsw i32 %385, 1, !dbg !926
  store i32 %386, i32* %15, align 4, !dbg !926
  br label %387, !dbg !927

387:                                              ; preds = %412, %384
  %388 = load i8*, i8** %18, align 8, !dbg !928
  %389 = load i64, i64* %17, align 8, !dbg !929
  %390 = getelementptr inbounds i8, i8* %388, i64 %389, !dbg !928
  %391 = load i8, i8* %390, align 1, !dbg !928
  %392 = sext i8 %391 to i32, !dbg !928
  %393 = icmp ne i32 %392, 0, !dbg !928
  br i1 %393, label %394, label %410, !dbg !930

394:                                              ; preds = %387
  %395 = load i8*, i8** %18, align 8, !dbg !931
  %396 = load i64, i64* %17, align 8, !dbg !932
  %397 = getelementptr inbounds i8, i8* %395, i64 %396, !dbg !931
  %398 = load i8, i8* %397, align 1, !dbg !931
  %399 = sext i8 %398 to i32, !dbg !931
  %400 = icmp eq i32 %399, 32, !dbg !933
  br i1 %400, label %408, label %401, !dbg !934

401:                                              ; preds = %394
  %402 = load i8*, i8** %18, align 8, !dbg !935
  %403 = load i64, i64* %17, align 8, !dbg !936
  %404 = getelementptr inbounds i8, i8* %402, i64 %403, !dbg !935
  %405 = load i8, i8* %404, align 1, !dbg !935
  %406 = sext i8 %405 to i32, !dbg !935
  %407 = icmp eq i32 %406, 44, !dbg !937
  br label %408, !dbg !934

408:                                              ; preds = %401, %394
  %409 = phi i1 [ true, %394 ], [ %407, %401 ]
  br label %410

410:                                              ; preds = %408, %387
  %411 = phi i1 [ false, %387 ], [ %409, %408 ], !dbg !917
  br i1 %411, label %412, label %415, !dbg !927

412:                                              ; preds = %410
  %413 = load i64, i64* %17, align 8, !dbg !938
  %414 = add i64 %413, 1, !dbg !938
  store i64 %414, i64* %17, align 8, !dbg !938
  br label %387, !dbg !927, !llvm.loop !940

415:                                              ; preds = %410
  br label %344, !dbg !901, !llvm.loop !942

416:                                              ; preds = %344
  %417 = load i8*, i8** %11, align 8, !dbg !944
  %418 = ptrtoint i8* %417 to i64, !dbg !945
  switch i64 %418, label %443 [
    i64 1, label %419
    i64 2, label %427
    i64 3, label %435
  ], !dbg !946

419:                                              ; preds = %416
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !947
  %421 = load i32, i32* %16, align 4, !dbg !949
  %422 = load i8*, i8** %18, align 8, !dbg !950
  %423 = load i8*, i8** %18, align 8, !dbg !951
  %424 = load i64, i64* %17, align 8, !dbg !952
  %425 = getelementptr inbounds i8, i8* %423, i64 %424, !dbg !953
  %426 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %421, i8* %422, i8* %425), !dbg !954
  br label %443, !dbg !955

427:                                              ; preds = %416
  %428 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !956
  %429 = load i32, i32* %16, align 4, !dbg !957
  %430 = load i8*, i8** %18, align 8, !dbg !958
  %431 = load i8*, i8** %18, align 8, !dbg !959
  %432 = load i64, i64* %17, align 8, !dbg !960
  %433 = getelementptr inbounds i8, i8* %431, i64 %432, !dbg !961
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %428, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %429, i8* %430, i8* %433), !dbg !962
  br label %443, !dbg !963

435:                                              ; preds = %416
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !964
  %437 = load i32, i32* %16, align 4, !dbg !965
  %438 = load i8*, i8** %18, align 8, !dbg !966
  %439 = load i8*, i8** %18, align 8, !dbg !967
  %440 = load i64, i64* %17, align 8, !dbg !968
  %441 = getelementptr inbounds i8, i8* %439, i64 %440, !dbg !969
  %442 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %436, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %437, i8* %438, i8* %441), !dbg !970
  br label %443, !dbg !971

443:                                              ; preds = %416, %435, %427, %419
  %444 = load i32, i32* %16, align 4, !dbg !972
  %445 = sext i32 %444 to i64, !dbg !972
  store i64 %445, i64* %17, align 8, !dbg !973
  br label %446, !dbg !974

446:                                              ; preds = %471, %443
  %447 = load i8*, i8** %18, align 8, !dbg !975
  %448 = load i64, i64* %17, align 8, !dbg !976
  %449 = getelementptr inbounds i8, i8* %447, i64 %448, !dbg !975
  %450 = load i8, i8* %449, align 1, !dbg !975
  %451 = sext i8 %450 to i32, !dbg !975
  %452 = icmp ne i32 %451, 0, !dbg !975
  br i1 %452, label %453, label %469, !dbg !977

453:                                              ; preds = %446
  %454 = load i8*, i8** %18, align 8, !dbg !978
  %455 = load i64, i64* %17, align 8, !dbg !979
  %456 = getelementptr inbounds i8, i8* %454, i64 %455, !dbg !978
  %457 = load i8, i8* %456, align 1, !dbg !978
  %458 = sext i8 %457 to i32, !dbg !978
  %459 = icmp eq i32 %458, 32, !dbg !980
  br i1 %459, label %467, label %460, !dbg !981

460:                                              ; preds = %453
  %461 = load i8*, i8** %18, align 8, !dbg !982
  %462 = load i64, i64* %17, align 8, !dbg !983
  %463 = getelementptr inbounds i8, i8* %461, i64 %462, !dbg !982
  %464 = load i8, i8* %463, align 1, !dbg !982
  %465 = sext i8 %464 to i32, !dbg !982
  %466 = icmp eq i32 %465, 44, !dbg !984
  br label %467, !dbg !981

467:                                              ; preds = %460, %453
  %468 = phi i1 [ true, %453 ], [ %466, %460 ]
  br label %469

469:                                              ; preds = %467, %446
  %470 = phi i1 [ false, %446 ], [ %468, %467 ], !dbg !985
  br i1 %470, label %471, label %474, !dbg !974

471:                                              ; preds = %469
  %472 = load i64, i64* %17, align 8, !dbg !986
  %473 = add i64 %472, 1, !dbg !986
  store i64 %473, i64* %17, align 8, !dbg !986
  br label %446, !dbg !974, !llvm.loop !988

474:                                              ; preds = %469
  br label %475, !dbg !990

475:                                              ; preds = %563, %474
  %476 = load i8*, i8** %18, align 8, !dbg !991
  %477 = load i64, i64* %17, align 8, !dbg !992
  %478 = getelementptr inbounds i8, i8* %476, i64 %477, !dbg !991
  %479 = load i8, i8* %478, align 1, !dbg !991
  %480 = sext i8 %479 to i32, !dbg !991
  %481 = icmp eq i32 %480, 45, !dbg !993
  br i1 %481, label %482, label %564, !dbg !990

482:                                              ; preds = %475
  call void @llvm.dbg.declare(metadata i64* %19, metadata !994, metadata !DIExpression()), !dbg !997
  %483 = load i64, i64* %17, align 8, !dbg !998
  store i64 %483, i64* %19, align 8, !dbg !997
  br label %484, !dbg !999

484:                                              ; preds = %507, %482
  %485 = load i8*, i8** %18, align 8, !dbg !1000
  %486 = load i64, i64* %17, align 8, !dbg !1001
  %487 = getelementptr inbounds i8, i8* %485, i64 %486, !dbg !1000
  %488 = load i8, i8* %487, align 1, !dbg !1000
  %489 = sext i8 %488 to i32, !dbg !1000
  %490 = icmp ne i32 %489, 0, !dbg !1000
  br i1 %490, label %491, label %505, !dbg !1002

491:                                              ; preds = %484
  %492 = load i8*, i8** %18, align 8, !dbg !1003
  %493 = load i64, i64* %17, align 8, !dbg !1004
  %494 = getelementptr inbounds i8, i8* %492, i64 %493, !dbg !1003
  %495 = load i8, i8* %494, align 1, !dbg !1003
  %496 = sext i8 %495 to i32, !dbg !1003
  %497 = icmp ne i32 %496, 32, !dbg !1005
  br i1 %497, label %498, label %505, !dbg !1006

498:                                              ; preds = %491
  %499 = load i8*, i8** %18, align 8, !dbg !1007
  %500 = load i64, i64* %17, align 8, !dbg !1008
  %501 = getelementptr inbounds i8, i8* %499, i64 %500, !dbg !1007
  %502 = load i8, i8* %501, align 1, !dbg !1007
  %503 = sext i8 %502 to i32, !dbg !1007
  %504 = icmp ne i32 %503, 44, !dbg !1009
  br label %505

505:                                              ; preds = %498, %491, %484
  %506 = phi i1 [ false, %491 ], [ false, %484 ], [ %504, %498 ], !dbg !1010
  br i1 %506, label %507, label %510, !dbg !999

507:                                              ; preds = %505
  %508 = load i64, i64* %17, align 8, !dbg !1011
  %509 = add i64 %508, 1, !dbg !1011
  store i64 %509, i64* %17, align 8, !dbg !1011
  br label %484, !dbg !999, !llvm.loop !1013

510:                                              ; preds = %505
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1015, metadata !DIExpression()), !dbg !1016
  %511 = load i32, i32* %16, align 4, !dbg !1017
  %512 = sext i32 %511 to i64, !dbg !1017
  %513 = load i64, i64* %17, align 8, !dbg !1018
  %514 = load i64, i64* %19, align 8, !dbg !1019
  %515 = sub i64 %513, %514, !dbg !1020
  %516 = sub i64 %512, %515, !dbg !1021
  %517 = trunc i64 %516 to i32, !dbg !1017
  store i32 %517, i32* %20, align 4, !dbg !1016
  %518 = load i32, i32* %20, align 4, !dbg !1022
  %519 = icmp slt i32 %518, 0, !dbg !1024
  br i1 %519, label %520, label %521, !dbg !1025

520:                                              ; preds = %510
  store i32 0, i32* %20, align 4, !dbg !1026
  br label %521, !dbg !1027

521:                                              ; preds = %520, %510
  %522 = load i8*, i8** %11, align 8, !dbg !1028
  %523 = ptrtoint i8* %522 to i64, !dbg !1029
  switch i64 %523, label %563 [
    i64 1, label %524
    i64 2, label %537
    i64 3, label %550
  ], !dbg !1030

524:                                              ; preds = %521
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1031
  %526 = load i64, i64* %17, align 8, !dbg !1033
  %527 = load i64, i64* %19, align 8, !dbg !1034
  %528 = sub i64 %526, %527, !dbg !1035
  %529 = trunc i64 %528 to i32, !dbg !1036
  %530 = load i8*, i8** %18, align 8, !dbg !1037
  %531 = load i64, i64* %19, align 8, !dbg !1038
  %532 = getelementptr inbounds i8, i8* %530, i64 %531, !dbg !1039
  %533 = load i32, i32* %20, align 4, !dbg !1040
  %534 = load i32, i32* %16, align 4, !dbg !1041
  %535 = load i8*, i8** %18, align 8, !dbg !1042
  %536 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %525, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0), i32 %529, i8* %532, i32 %533, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %534, i8* %535), !dbg !1043
  br label %563, !dbg !1044

537:                                              ; preds = %521
  %538 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1045
  %539 = load i64, i64* %17, align 8, !dbg !1046
  %540 = load i64, i64* %19, align 8, !dbg !1047
  %541 = sub i64 %539, %540, !dbg !1048
  %542 = trunc i64 %541 to i32, !dbg !1049
  %543 = load i8*, i8** %18, align 8, !dbg !1050
  %544 = load i64, i64* %19, align 8, !dbg !1051
  %545 = getelementptr inbounds i8, i8* %543, i64 %544, !dbg !1052
  %546 = load i32, i32* %20, align 4, !dbg !1053
  %547 = load i32, i32* %16, align 4, !dbg !1054
  %548 = load i8*, i8** %18, align 8, !dbg !1055
  %549 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %538, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 %542, i8* %545, i32 %546, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %547, i8* %548), !dbg !1056
  br label %563, !dbg !1057

550:                                              ; preds = %521
  %551 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1058
  %552 = load i64, i64* %17, align 8, !dbg !1059
  %553 = load i64, i64* %19, align 8, !dbg !1060
  %554 = sub i64 %552, %553, !dbg !1061
  %555 = trunc i64 %554 to i32, !dbg !1062
  %556 = load i8*, i8** %18, align 8, !dbg !1063
  %557 = load i64, i64* %19, align 8, !dbg !1064
  %558 = getelementptr inbounds i8, i8* %556, i64 %557, !dbg !1065
  %559 = load i32, i32* %20, align 4, !dbg !1066
  %560 = load i32, i32* %16, align 4, !dbg !1067
  %561 = load i8*, i8** %18, align 8, !dbg !1068
  %562 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %551, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0), i32 %555, i8* %558, i32 %559, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %560, i8* %561), !dbg !1069
  br label %563, !dbg !1070

563:                                              ; preds = %521, %550, %537, %524
  br label %475, !dbg !990, !llvm.loop !1071

564:                                              ; preds = %475
  %565 = load i8**, i8*** %14, align 8, !dbg !1073
  %566 = getelementptr inbounds i8*, i8** %565, i32 1, !dbg !1073
  store i8** %566, i8*** %14, align 8, !dbg !1073
  br label %305, !dbg !859, !llvm.loop !870

567:                                              ; preds = %305
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1074
  %569 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %568, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.26, i64 0, i64 0)), !dbg !1075
  call void @fio_cli_end(), !dbg !1076
  call void @exit(i32 0) #11, !dbg !1077
  unreachable, !dbg !1077

570:                                              ; preds = %258, %81
  ret void, !dbg !1078
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash_free(%struct.fio_cli_hash_s* %0) #0 !dbg !1079 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  %3 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %4 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %5 = alloca %struct.fio_cli_hash_s, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %2, metadata !1082, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__ordered_s_** %3, metadata !1084, metadata !DIExpression()), !dbg !1088
  %6 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1089
  %7 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %6, i32 0, i32 3, !dbg !1090
  %8 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %7, align 8, !dbg !1090
  %9 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1091
  %10 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %9, i32 0, i32 2, !dbg !1092
  %11 = load i64, i64* %10, align 8, !dbg !1092
  %12 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %8, i64 %11, !dbg !1093
  store %struct.fio_cli_hash__ordered_s_* %12, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1088
  %13 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1094
  %14 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %13, i32 0, i32 3, !dbg !1096
  %15 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %14, align 8, !dbg !1096
  %16 = icmp ne %struct.fio_cli_hash__ordered_s_* %15, null, !dbg !1094
  br i1 %16, label %17, label %44, !dbg !1097

17:                                               ; preds = %1
  %18 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1098
  %19 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %18, i32 0, i32 3, !dbg !1099
  %20 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %19, align 8, !dbg !1099
  %21 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1100
  %22 = icmp ne %struct.fio_cli_hash__ordered_s_* %20, %21, !dbg !1101
  br i1 %22, label %23, label %44, !dbg !1102

23:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__ordered_s_** %4, metadata !1103, metadata !DIExpression()), !dbg !1106
  %24 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1107
  %25 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %24, i32 0, i32 3, !dbg !1108
  %26 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %25, align 8, !dbg !1108
  store %struct.fio_cli_hash__ordered_s_* %26, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1106
  br label %27, !dbg !1109

27:                                               ; preds = %40, %23
  %28 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1110
  %29 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1112
  %30 = icmp ult %struct.fio_cli_hash__ordered_s_* %28, %29, !dbg !1113
  br i1 %30, label %31, label %43, !dbg !1114

31:                                               ; preds = %27
  %32 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1115
  %33 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %32, i32 0, i32 0, !dbg !1115
  %34 = load i64, i64* %33, align 8, !dbg !1115
  %35 = icmp eq i64 0, %34, !dbg !1115
  br i1 %35, label %39, label %36, !dbg !1118

36:                                               ; preds = %31
  br label %37, !dbg !1119

37:                                               ; preds = %36
  br label %38, !dbg !1121

38:                                               ; preds = %37
  br label %39, !dbg !1123

39:                                               ; preds = %38, %31
  br label %40, !dbg !1124

40:                                               ; preds = %39
  %41 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1125
  %42 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %41, i32 1, !dbg !1125
  store %struct.fio_cli_hash__ordered_s_* %42, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1125
  br label %27, !dbg !1126, !llvm.loop !1127

43:                                               ; preds = %27
  br label %44, !dbg !1129

44:                                               ; preds = %43, %17, %1
  %45 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1130
  %46 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %45, i32 0, i32 4, !dbg !1130
  %47 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %46, align 8, !dbg !1130
  %48 = bitcast %struct.fio_cli_hash__map_s_* %47 to i8*, !dbg !1130
  call void @fio_free(i8* %48), !dbg !1130
  %49 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1131
  %50 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %49, i32 0, i32 3, !dbg !1131
  %51 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %50, align 8, !dbg !1131
  %52 = bitcast %struct.fio_cli_hash__ordered_s_* %51 to i8*, !dbg !1131
  call void @fio_free(i8* %52), !dbg !1131
  %53 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1132
  %54 = bitcast %struct.fio_cli_hash_s* %5 to i8*, !dbg !1133
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 48, i1 false), !dbg !1133
  %55 = bitcast %struct.fio_cli_hash_s* %53 to i8*, !dbg !1133
  %56 = bitcast %struct.fio_cli_hash_s* %5 to i8*, !dbg !1133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 48, i1 false), !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fio_cli_get(i8* %0) #0 !dbg !1135 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cstr_s, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1138, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %4, metadata !1140, metadata !DIExpression()), !dbg !1141
  %6 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 0, !dbg !1142
  %7 = load i8*, i8** %3, align 8, !dbg !1143
  %8 = call i64 @strlen(i8* %7) #10, !dbg !1144
  store i64 %8, i64* %6, align 8, !dbg !1142
  %9 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 1, !dbg !1142
  %10 = load i8*, i8** %3, align 8, !dbg !1145
  store i8* %10, i8** %9, align 8, !dbg !1142
  %11 = call i64 @fio_cli_hash_count(%struct.fio_cli_hash_s* @fio_values), !dbg !1146
  %12 = icmp ne i64 %11, 0, !dbg !1146
  br i1 %12, label %14, label %13, !dbg !1148

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !1149
  br label %27, !dbg !1149

14:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1151, metadata !DIExpression()), !dbg !1152
  %15 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 1, !dbg !1153
  %16 = load i8*, i8** %15, align 8, !dbg !1153
  %17 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 0, !dbg !1153
  %18 = load i64, i64* %17, align 8, !dbg !1153
  %19 = call i64 @fio_risky_hash(i8* %16, i64 %18, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64)), !dbg !1153
  %20 = bitcast %struct.cstr_s* %4 to { i64, i8* }*, !dbg !1154
  %21 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 0, !dbg !1154
  %22 = load i64, i64* %21, align 8, !dbg !1154
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 1, !dbg !1154
  %24 = load i8*, i8** %23, align 8, !dbg !1154
  %25 = call i8* @fio_cli_hash_find(%struct.fio_cli_hash_s* @fio_values, i64 %19, i64 %22, i8* %24), !dbg !1154
  store i8* %25, i8** %5, align 8, !dbg !1152
  %26 = load i8*, i8** %5, align 8, !dbg !1155
  store i8* %26, i8** %2, align 8, !dbg !1156
  br label %27, !dbg !1156

27:                                               ; preds = %14, %13
  %28 = load i8*, i8** %2, align 8, !dbg !1157
  ret i8* %28, !dbg !1157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fio_cli_get_i(i8* %0) #0 !dbg !1158 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1161, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1163, metadata !DIExpression()), !dbg !1164
  %6 = load i8*, i8** %3, align 8, !dbg !1165
  %7 = call i8* @fio_cli_get(i8* %6), !dbg !1166
  store i8* %7, i8** %4, align 8, !dbg !1164
  %8 = load i8*, i8** %4, align 8, !dbg !1167
  %9 = icmp ne i8* %8, null, !dbg !1167
  br i1 %9, label %11, label %10, !dbg !1169

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1170
  br label %15, !dbg !1170

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1171, metadata !DIExpression()), !dbg !1172
  %12 = call i64 @fio_atol(i8** %4), !dbg !1173
  %13 = trunc i64 %12 to i32, !dbg !1174
  store i32 %13, i32* %5, align 4, !dbg !1172
  %14 = load i32, i32* %5, align 4, !dbg !1175
  store i32 %14, i32* %2, align 4, !dbg !1176
  br label %15, !dbg !1176

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %2, align 4, !dbg !1177
  ret i32 %16, !dbg !1177
}

declare dso_local i64 @fio_atol(i8**) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fio_cli_unnamed_count() #0 !dbg !1178 {
  %1 = load i64, i64* @fio_unnamed_count, align 8, !dbg !1181
  %2 = trunc i64 %1 to i32, !dbg !1182
  ret i32 %2, !dbg !1183
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fio_cli_unnamed(i32 %0) #0 !dbg !1184 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cstr_s, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1187, metadata !DIExpression()), !dbg !1188
  %5 = call i64 @fio_cli_hash_count(%struct.fio_cli_hash_s* @fio_values), !dbg !1189
  %6 = icmp ne i64 %5, 0, !dbg !1189
  br i1 %6, label %7, label %10, !dbg !1191

7:                                                ; preds = %1
  %8 = load i64, i64* @fio_unnamed_count, align 8, !dbg !1192
  %9 = icmp ne i64 %8, 0, !dbg !1192
  br i1 %9, label %11, label %10, !dbg !1193

10:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8, !dbg !1194
  br label %26, !dbg !1194

11:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %4, metadata !1196, metadata !DIExpression()), !dbg !1197
  %12 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 0, !dbg !1198
  %13 = load i32, i32* %3, align 4, !dbg !1199
  %14 = add i32 %13, 1, !dbg !1200
  %15 = zext i32 %14 to i64, !dbg !1199
  store i64 %15, i64* %12, align 8, !dbg !1198
  %16 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 1, !dbg !1198
  store i8* null, i8** %16, align 8, !dbg !1198
  %17 = load i32, i32* %3, align 4, !dbg !1201
  %18 = add i32 %17, 1, !dbg !1202
  %19 = zext i32 %18 to i64, !dbg !1201
  %20 = bitcast %struct.cstr_s* %4 to { i64, i8* }*, !dbg !1203
  %21 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 0, !dbg !1203
  %22 = load i64, i64* %21, align 8, !dbg !1203
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 1, !dbg !1203
  %24 = load i8*, i8** %23, align 8, !dbg !1203
  %25 = call i8* @fio_cli_hash_find(%struct.fio_cli_hash_s* @fio_values, i64 %19, i64 %22, i8* %24), !dbg !1203
  store i8* %25, i8** %2, align 8, !dbg !1204
  br label %26, !dbg !1204

26:                                               ; preds = %11, %10
  %27 = load i8*, i8** %2, align 8, !dbg !1205
  ret i8* %27, !dbg !1205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fio_cli_set(i8* %0, i8* %1) #0 !dbg !1206 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cstr_s, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1211, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %5, metadata !1213, metadata !DIExpression()), !dbg !1214
  %6 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %5, i32 0, i32 0, !dbg !1215
  %7 = load i8*, i8** %3, align 8, !dbg !1216
  %8 = call i64 @strlen(i8* %7) #10, !dbg !1217
  store i64 %8, i64* %6, align 8, !dbg !1215
  %9 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %5, i32 0, i32 1, !dbg !1215
  %10 = load i8*, i8** %3, align 8, !dbg !1218
  store i8* %10, i8** %9, align 8, !dbg !1215
  %11 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %5, i32 0, i32 1, !dbg !1219
  %12 = load i8*, i8** %11, align 8, !dbg !1219
  %13 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %5, i32 0, i32 0, !dbg !1219
  %14 = load i64, i64* %13, align 8, !dbg !1219
  %15 = call i64 @fio_risky_hash(i8* %12, i64 %14, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64)), !dbg !1219
  %16 = load i8*, i8** %4, align 8, !dbg !1220
  %17 = bitcast %struct.cstr_s* %5 to { i64, i8* }*, !dbg !1221
  %18 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 0, !dbg !1221
  %19 = load i64, i64* %18, align 8, !dbg !1221
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1, !dbg !1221
  %21 = load i8*, i8** %20, align 8, !dbg !1221
  call void @fio_cli_hash_insert(%struct.fio_cli_hash_s* @fio_values, i64 %15, i64 %19, i8* %21, i8* %16, i8** null), !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash_insert(%struct.fio_cli_hash_s* %0, i64 %1, i64 %2, i8* %3, i8* %4, i8** %5) #0 !dbg !1223 {
  %7 = alloca %struct.cstr_s, align 8
  %8 = alloca %struct.fio_cli_hash_s*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.fio_cli_hash_couplet_s, align 8
  %13 = alloca %struct.fio_cli_hash_couplet_s, align 8
  %14 = bitcast %struct.cstr_s* %7 to { i64, i8* }*
  %15 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %14, i32 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %14, i32 0, i32 1
  store i8* %3, i8** %16, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %8, metadata !1226, metadata !DIExpression()), !dbg !1227
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1228, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.declare(metadata %struct.cstr_s* %7, metadata !1230, metadata !DIExpression()), !dbg !1231
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1232, metadata !DIExpression()), !dbg !1233
  store i8** %5, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !1234, metadata !DIExpression()), !dbg !1235
  %17 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %8, align 8, !dbg !1236
  %18 = load i64, i64* %9, align 8, !dbg !1237
  %19 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %12, i32 0, i32 0, !dbg !1238
  %20 = bitcast %struct.cstr_s* %19 to i8*, !dbg !1239
  %21 = bitcast %struct.cstr_s* %7 to i8*, !dbg !1239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false), !dbg !1239
  %22 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %12, i32 0, i32 1, !dbg !1238
  %23 = load i8*, i8** %10, align 8, !dbg !1240
  store i8* %23, i8** %22, align 8, !dbg !1238
  %24 = load i8**, i8*** %11, align 8, !dbg !1241
  call void @fio_cli_hash__insert_or_overwrite_(%struct.fio_cli_hash_couplet_s* sret %13, %struct.fio_cli_hash_s* %17, i64 %18, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %12, i32 1, i8** %24), !dbg !1242
  ret void, !dbg !1243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fio_cli_hash__map_s_* @fio_cli_hash__find_map_pos_(%struct.fio_cli_hash_s* %0, i64 %1, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %2) #0 !dbg !1244 {
  %4 = alloca %struct.fio_cli_hash__map_s_*, align 8
  %5 = alloca %struct.fio_cli_hash_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_cli_hash__map_s_*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %5, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1249, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_couplet_s* %2, metadata !1251, metadata !DIExpression()), !dbg !1252
  %14 = load i64, i64* %6, align 8, !dbg !1253
  %15 = icmp eq i64 %14, 0, !dbg !1253
  br i1 %15, label %16, label %17, !dbg !1255

16:                                               ; preds = %3
  store i64 -1, i64* %6, align 8, !dbg !1256
  br label %17, !dbg !1257

17:                                               ; preds = %16, %3
  %18 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1258
  %19 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %18, i32 0, i32 4, !dbg !1260
  %20 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %19, align 8, !dbg !1260
  %21 = icmp ne %struct.fio_cli_hash__map_s_* %20, null, !dbg !1258
  br i1 %21, label %22, label %271, !dbg !1261

22:                                               ; preds = %17
  %23 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1262
  %24 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %23, i32 0, i32 5, !dbg !1265
  %25 = load i8, i8* %24, align 8, !dbg !1265
  %26 = zext i8 %25 to i32, !dbg !1262
  %27 = icmp ne i32 %26, 0, !dbg !1262
  br i1 %27, label %28, label %38, !dbg !1266

28:                                               ; preds = %22
  %29 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1267
  %30 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %29, i32 0, i32 2, !dbg !1268
  %31 = load i64, i64* %30, align 8, !dbg !1268
  %32 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1269
  %33 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %32, i32 0, i32 0, !dbg !1270
  %34 = load i64, i64* %33, align 8, !dbg !1270
  %35 = icmp ne i64 %31, %34, !dbg !1271
  br i1 %35, label %36, label %38, !dbg !1272

36:                                               ; preds = %28
  %37 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1273
  call void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %37), !dbg !1275
  br label %38, !dbg !1276

38:                                               ; preds = %36, %28, %22
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i64 0, i64* %7, align 8, !dbg !1278
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__map_s_** %8, metadata !1279, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1281, metadata !DIExpression()), !dbg !1282
  %39 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1283
  %40 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %39, i32 0, i32 6, !dbg !1284
  %41 = load i8, i8* %40, align 1, !dbg !1284
  %42 = zext i8 %41 to i32, !dbg !1283
  %43 = zext i32 %42 to i64, !dbg !1285
  %44 = shl i64 1, %43, !dbg !1285
  %45 = sub i64 %44, 1, !dbg !1286
  store i64 %45, i64* %9, align 8, !dbg !1282
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1287, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1289, metadata !DIExpression()), !dbg !1290
  %46 = load i64, i64* %6, align 8, !dbg !1291
  %47 = lshr i64 %46, 0, !dbg !1291
  %48 = load i64, i64* %6, align 8, !dbg !1291
  %49 = shl i64 %48, 0, !dbg !1291
  %50 = or i64 %47, %49, !dbg !1291
  %51 = load i64, i64* %6, align 8, !dbg !1291
  %52 = call i64 @fio_ct_if2(i64 0, i64 %51, i64 0), !dbg !1291
  %53 = xor i64 %50, %52, !dbg !1291
  store i64 %53, i64* %11, align 8, !dbg !1290
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1292, metadata !DIExpression()), !dbg !1293
  %54 = load i64, i64* %6, align 8, !dbg !1294
  %55 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1294
  %56 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %55, i32 0, i32 6, !dbg !1294
  %57 = load i8, i8* %56, align 1, !dbg !1294
  %58 = zext i8 %57 to i64, !dbg !1294
  %59 = and i64 %58, 63, !dbg !1294
  %60 = lshr i64 %54, %59, !dbg !1294
  %61 = load i64, i64* %6, align 8, !dbg !1294
  %62 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1294
  %63 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %62, i32 0, i32 6, !dbg !1294
  %64 = load i8, i8* %63, align 1, !dbg !1294
  %65 = zext i8 %64 to i32, !dbg !1294
  %66 = sub nsw i32 0, %65, !dbg !1294
  %67 = sext i32 %66 to i64, !dbg !1294
  %68 = and i64 %67, 63, !dbg !1294
  %69 = shl i64 %61, %68, !dbg !1294
  %70 = or i64 %60, %69, !dbg !1294
  %71 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1294
  %72 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %71, i32 0, i32 6, !dbg !1294
  %73 = load i8, i8* %72, align 1, !dbg !1294
  %74 = zext i8 %73 to i64, !dbg !1294
  %75 = load i64, i64* %6, align 8, !dbg !1294
  %76 = call i64 @fio_ct_if2(i64 %74, i64 %75, i64 0), !dbg !1294
  %77 = xor i64 %70, %76, !dbg !1294
  store i64 %77, i64* %12, align 8, !dbg !1293
  %78 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1295
  %79 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %78, i32 0, i32 4, !dbg !1296
  %80 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %79, align 8, !dbg !1296
  %81 = load i64, i64* %12, align 8, !dbg !1297
  %82 = load i64, i64* %9, align 8, !dbg !1298
  %83 = and i64 %81, %82, !dbg !1299
  %84 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %80, i64 %83, !dbg !1300
  store %struct.fio_cli_hash__map_s_* %84, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1301
  %85 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1302
  %86 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %85, i32 0, i32 0, !dbg !1302
  %87 = load i64, i64* %86, align 8, !dbg !1302
  %88 = icmp eq i64 0, %87, !dbg !1302
  br i1 %88, label %89, label %91, !dbg !1304

89:                                               ; preds = %38
  %90 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1305
  store %struct.fio_cli_hash__map_s_* %90, %struct.fio_cli_hash__map_s_** %4, align 8, !dbg !1306
  br label %272, !dbg !1306

91:                                               ; preds = %38
  %92 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1307
  %93 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %92, i32 0, i32 0, !dbg !1307
  %94 = load i64, i64* %93, align 8, !dbg !1307
  %95 = load i64, i64* %11, align 8, !dbg !1307
  %96 = icmp eq i64 %94, %95, !dbg !1307
  br i1 %96, label %97, label %153, !dbg !1309

97:                                               ; preds = %91
  %98 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1310
  %99 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %98, i32 0, i32 1, !dbg !1313
  %100 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %99, align 8, !dbg !1313
  %101 = icmp ne %struct.fio_cli_hash__ordered_s_* %100, null, !dbg !1310
  br i1 %101, label %102, label %146, !dbg !1314

102:                                              ; preds = %97
  %103 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1315
  %104 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %103, i32 0, i32 1, !dbg !1315
  %105 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %104, align 8, !dbg !1315
  %106 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %105, i32 0, i32 1, !dbg !1315
  %107 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %106, i32 0, i32 0, !dbg !1315
  %108 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %107, i32 0, i32 0, !dbg !1315
  %109 = load i64, i64* %108, align 8, !dbg !1315
  %110 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0, !dbg !1315
  %111 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %110, i32 0, i32 0, !dbg !1315
  %112 = load i64, i64* %111, align 8, !dbg !1315
  %113 = icmp eq i64 %109, %112, !dbg !1315
  br i1 %113, label %114, label %148, !dbg !1315

114:                                              ; preds = %102
  %115 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1315
  %116 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %115, i32 0, i32 1, !dbg !1315
  %117 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %116, align 8, !dbg !1315
  %118 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %117, i32 0, i32 1, !dbg !1315
  %119 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %118, i32 0, i32 0, !dbg !1315
  %120 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %119, i32 0, i32 1, !dbg !1315
  %121 = load i8*, i8** %120, align 8, !dbg !1315
  %122 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0, !dbg !1315
  %123 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %122, i32 0, i32 1, !dbg !1315
  %124 = load i8*, i8** %123, align 8, !dbg !1315
  %125 = icmp eq i8* %121, %124, !dbg !1315
  br i1 %125, label %146, label %126, !dbg !1315

126:                                              ; preds = %114
  %127 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1315
  %128 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %127, i32 0, i32 1, !dbg !1315
  %129 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %128, align 8, !dbg !1315
  %130 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %129, i32 0, i32 1, !dbg !1315
  %131 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %130, i32 0, i32 0, !dbg !1315
  %132 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %131, i32 0, i32 1, !dbg !1315
  %133 = load i8*, i8** %132, align 8, !dbg !1315
  %134 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0, !dbg !1315
  %135 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %134, i32 0, i32 1, !dbg !1315
  %136 = load i8*, i8** %135, align 8, !dbg !1315
  %137 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1315
  %138 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %137, i32 0, i32 1, !dbg !1315
  %139 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %138, align 8, !dbg !1315
  %140 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %139, i32 0, i32 1, !dbg !1315
  %141 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %140, i32 0, i32 0, !dbg !1315
  %142 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %141, i32 0, i32 0, !dbg !1315
  %143 = load i64, i64* %142, align 8, !dbg !1315
  %144 = call i32 @memcmp(i8* %133, i8* %136, i64 %143) #10, !dbg !1315
  %145 = icmp ne i32 %144, 0, !dbg !1315
  br i1 %145, label %148, label %146, !dbg !1316

146:                                              ; preds = %126, %114, %97
  %147 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1317
  store %struct.fio_cli_hash__map_s_* %147, %struct.fio_cli_hash__map_s_** %4, align 8, !dbg !1318
  br label %272, !dbg !1318

148:                                              ; preds = %126, %102
  %149 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1319
  %150 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %149, i32 0, i32 5, !dbg !1320
  store i8 1, i8* %150, align 8, !dbg !1321
  %151 = load i64, i64* %7, align 8, !dbg !1322
  %152 = add i64 %151, 1, !dbg !1322
  store i64 %152, i64* %7, align 8, !dbg !1322
  br label %153, !dbg !1323

153:                                              ; preds = %148, %91
  store i64 0, i64* %10, align 8, !dbg !1324
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1325, metadata !DIExpression()), !dbg !1326
  %154 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1327
  %155 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %154, i32 0, i32 1, !dbg !1328
  %156 = load i64, i64* %155, align 8, !dbg !1328
  %157 = icmp ugt i64 %156, 384, !dbg !1329
  br i1 %157, label %158, label %159, !dbg !1327

158:                                              ; preds = %153
  br label %164, !dbg !1327

159:                                              ; preds = %153
  %160 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1330
  %161 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %160, i32 0, i32 1, !dbg !1331
  %162 = load i64, i64* %161, align 8, !dbg !1331
  %163 = lshr i64 %162, 2, !dbg !1332
  br label %164, !dbg !1327

164:                                              ; preds = %159, %158
  %165 = phi i64 [ 96, %158 ], [ %163, %159 ], !dbg !1327
  %166 = mul i64 11, %165, !dbg !1333
  store i64 %166, i64* %13, align 8, !dbg !1326
  br label %167, !dbg !1334

167:                                              ; preds = %269, %164
  %168 = load i64, i64* %10, align 8, !dbg !1335
  %169 = load i64, i64* %13, align 8, !dbg !1336
  %170 = icmp ult i64 %168, %169, !dbg !1337
  br i1 %170, label %171, label %270, !dbg !1334

171:                                              ; preds = %167
  %172 = load i64, i64* %10, align 8, !dbg !1338
  %173 = add i64 %172, 11, !dbg !1338
  store i64 %173, i64* %10, align 8, !dbg !1338
  %174 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1340
  %175 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %174, i32 0, i32 4, !dbg !1341
  %176 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %175, align 8, !dbg !1341
  %177 = load i64, i64* %12, align 8, !dbg !1342
  %178 = load i64, i64* %10, align 8, !dbg !1343
  %179 = add i64 %177, %178, !dbg !1344
  %180 = load i64, i64* %9, align 8, !dbg !1345
  %181 = and i64 %179, %180, !dbg !1346
  %182 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %176, i64 %181, !dbg !1347
  store %struct.fio_cli_hash__map_s_* %182, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1348
  %183 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1349
  %184 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %183, i32 0, i32 0, !dbg !1349
  %185 = load i64, i64* %184, align 8, !dbg !1349
  %186 = icmp eq i64 0, %185, !dbg !1349
  br i1 %186, label %187, label %189, !dbg !1351

187:                                              ; preds = %171
  %188 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1352
  store %struct.fio_cli_hash__map_s_* %188, %struct.fio_cli_hash__map_s_** %4, align 8, !dbg !1353
  br label %272, !dbg !1353

189:                                              ; preds = %171
  %190 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1354
  %191 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %190, i32 0, i32 0, !dbg !1354
  %192 = load i64, i64* %191, align 8, !dbg !1354
  %193 = load i64, i64* %11, align 8, !dbg !1354
  %194 = icmp eq i64 %192, %193, !dbg !1354
  br i1 %194, label %195, label %269, !dbg !1356

195:                                              ; preds = %189
  %196 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1357
  %197 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %196, i32 0, i32 1, !dbg !1360
  %198 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %197, align 8, !dbg !1360
  %199 = icmp ne %struct.fio_cli_hash__ordered_s_* %198, null, !dbg !1357
  br i1 %199, label %200, label %244, !dbg !1361

200:                                              ; preds = %195
  %201 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1362
  %202 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %201, i32 0, i32 1, !dbg !1362
  %203 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %202, align 8, !dbg !1362
  %204 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %203, i32 0, i32 1, !dbg !1362
  %205 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %204, i32 0, i32 0, !dbg !1362
  %206 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %205, i32 0, i32 0, !dbg !1362
  %207 = load i64, i64* %206, align 8, !dbg !1362
  %208 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0, !dbg !1362
  %209 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %208, i32 0, i32 0, !dbg !1362
  %210 = load i64, i64* %209, align 8, !dbg !1362
  %211 = icmp eq i64 %207, %210, !dbg !1362
  br i1 %211, label %212, label %246, !dbg !1362

212:                                              ; preds = %200
  %213 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1362
  %214 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %213, i32 0, i32 1, !dbg !1362
  %215 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %214, align 8, !dbg !1362
  %216 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %215, i32 0, i32 1, !dbg !1362
  %217 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %216, i32 0, i32 0, !dbg !1362
  %218 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %217, i32 0, i32 1, !dbg !1362
  %219 = load i8*, i8** %218, align 8, !dbg !1362
  %220 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0, !dbg !1362
  %221 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %220, i32 0, i32 1, !dbg !1362
  %222 = load i8*, i8** %221, align 8, !dbg !1362
  %223 = icmp eq i8* %219, %222, !dbg !1362
  br i1 %223, label %244, label %224, !dbg !1362

224:                                              ; preds = %212
  %225 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1362
  %226 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %225, i32 0, i32 1, !dbg !1362
  %227 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %226, align 8, !dbg !1362
  %228 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %227, i32 0, i32 1, !dbg !1362
  %229 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %228, i32 0, i32 0, !dbg !1362
  %230 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %229, i32 0, i32 1, !dbg !1362
  %231 = load i8*, i8** %230, align 8, !dbg !1362
  %232 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0, !dbg !1362
  %233 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %232, i32 0, i32 1, !dbg !1362
  %234 = load i8*, i8** %233, align 8, !dbg !1362
  %235 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1362
  %236 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %235, i32 0, i32 1, !dbg !1362
  %237 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %236, align 8, !dbg !1362
  %238 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %237, i32 0, i32 1, !dbg !1362
  %239 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %238, i32 0, i32 0, !dbg !1362
  %240 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %239, i32 0, i32 0, !dbg !1362
  %241 = load i64, i64* %240, align 8, !dbg !1362
  %242 = call i32 @memcmp(i8* %231, i8* %234, i64 %241) #10, !dbg !1362
  %243 = icmp ne i32 %242, 0, !dbg !1362
  br i1 %243, label %246, label %244, !dbg !1363

244:                                              ; preds = %224, %212, %195
  %245 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1364
  store %struct.fio_cli_hash__map_s_* %245, %struct.fio_cli_hash__map_s_** %4, align 8, !dbg !1365
  br label %272, !dbg !1365

246:                                              ; preds = %224, %200
  %247 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1366
  %248 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %247, i32 0, i32 5, !dbg !1367
  store i8 1, i8* %248, align 8, !dbg !1368
  %249 = load i64, i64* %7, align 8, !dbg !1369
  %250 = add i64 %249, 1, !dbg !1369
  store i64 %250, i64* %7, align 8, !dbg !1369
  %251 = icmp uge i64 %250, 96, !dbg !1371
  br i1 %251, label %252, label %261, !dbg !1372

252:                                              ; preds = %246
  br label %253, !dbg !1373

253:                                              ; preds = %252
  %254 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1375
  %255 = icmp sle i32 3, %254, !dbg !1375
  br i1 %255, label %256, label %257, !dbg !1378

256:                                              ; preds = %253
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0)), !dbg !1379
  br label %257, !dbg !1379

257:                                              ; preds = %256, %253
  br label %258, !dbg !1378

258:                                              ; preds = %257
  %259 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1381
  %260 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %259, i32 0, i32 7, !dbg !1382
  store i8 1, i8* %260, align 2, !dbg !1383
  br label %261, !dbg !1384

261:                                              ; preds = %258, %246
  %262 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8, !dbg !1385
  %263 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %262, i32 0, i32 7, !dbg !1387
  %264 = load i8, i8* %263, align 2, !dbg !1387
  %265 = icmp ne i8 %264, 0, !dbg !1385
  br i1 %265, label %266, label %268, !dbg !1388

266:                                              ; preds = %261
  %267 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8, !dbg !1389
  store %struct.fio_cli_hash__map_s_* %267, %struct.fio_cli_hash__map_s_** %4, align 8, !dbg !1391
  br label %272, !dbg !1391

268:                                              ; preds = %261
  br label %269, !dbg !1392

269:                                              ; preds = %268, %189
  br label %167, !dbg !1334, !llvm.loop !1393

270:                                              ; preds = %167
  br label %271, !dbg !1395

271:                                              ; preds = %270, %17
  store %struct.fio_cli_hash__map_s_* null, %struct.fio_cli_hash__map_s_** %4, align 8, !dbg !1396
  br label %272, !dbg !1396

272:                                              ; preds = %271, %266, %244, %187, %146, %89
  %273 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %4, align 8, !dbg !1397
  ret %struct.fio_cli_hash__map_s_* %273, !dbg !1397
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %0) #0 !dbg !1398 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %5 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %6 = alloca %struct.fio_cli_hash__map_s_*, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %2, metadata !1399, metadata !DIExpression()), !dbg !1400
  %7 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1401
  call void @fio_cli_hash__compact_ordered_array_(%struct.fio_cli_hash_s* %7), !dbg !1402
  %8 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1403
  %9 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %8, i32 0, i32 5, !dbg !1404
  store i8 0, i8* %9, align 8, !dbg !1405
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1406, metadata !DIExpression()), !dbg !1407
  store i8 0, i8* %3, align 1, !dbg !1407
  br label %10, !dbg !1408

10:                                               ; preds = %66, %1
  call void @llvm.dbg.label(metadata !1409), !dbg !1410
  %11 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1411
  %12 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %11, i32 0, i32 6, !dbg !1413
  %13 = load i8, i8* %12, align 1, !dbg !1413
  %14 = zext i8 %13 to i32, !dbg !1411
  %15 = icmp sge i32 %14, 16, !dbg !1414
  br i1 %15, label %16, label %40, !dbg !1415

16:                                               ; preds = %10
  %17 = load i8, i8* %3, align 1, !dbg !1416
  %18 = add i8 %17, 1, !dbg !1416
  store i8 %18, i8* %3, align 1, !dbg !1416
  %19 = zext i8 %18 to i32, !dbg !1416
  %20 = icmp sge i32 %19, 3, !dbg !1417
  br i1 %20, label %21, label %40, !dbg !1418

21:                                               ; preds = %16
  %22 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1419
  %23 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %22, i32 0, i32 5, !dbg !1420
  %24 = load i8, i8* %23, align 8, !dbg !1420
  %25 = zext i8 %24 to i32, !dbg !1419
  %26 = icmp ne i32 %25, 0, !dbg !1419
  br i1 %26, label %27, label %40, !dbg !1421

27:                                               ; preds = %21
  br label %28, !dbg !1422

28:                                               ; preds = %27
  %29 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1424
  %30 = icmp sle i32 1, %29, !dbg !1424
  br i1 %30, label %31, label %38, !dbg !1427

31:                                               ; preds = %28
  %32 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1428
  %33 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %32, i32 0, i32 2, !dbg !1428
  %34 = load i64, i64* %33, align 8, !dbg !1428
  %35 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1428
  %36 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %35, i32 0, i32 1, !dbg !1428
  %37 = load i64, i64* %36, align 8, !dbg !1428
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.4, i64 0, i64 0), i64 %34, i64 %37), !dbg !1428
  br label %38, !dbg !1428

38:                                               ; preds = %31, %28
  br label %39, !dbg !1427

39:                                               ; preds = %38
  call void @exit(i32 -1) #11, !dbg !1430
  unreachable, !dbg !1430

40:                                               ; preds = %21, %16, %10
  %41 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1431
  call void @fio_cli_hash__reallocate_set_mem_(%struct.fio_cli_hash_s* %41), !dbg !1432
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__ordered_s_** %4, metadata !1433, metadata !DIExpression()), !dbg !1435
  %42 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1436
  %43 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %42, i32 0, i32 3, !dbg !1437
  %44 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %43, align 8, !dbg !1437
  %45 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1438
  %46 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %45, i32 0, i32 2, !dbg !1439
  %47 = load i64, i64* %46, align 8, !dbg !1439
  %48 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %44, i64 %47, !dbg !1440
  store %struct.fio_cli_hash__ordered_s_* %48, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1435
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__ordered_s_** %5, metadata !1441, metadata !DIExpression()), !dbg !1443
  %49 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1444
  %50 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %49, i32 0, i32 3, !dbg !1445
  %51 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %50, align 8, !dbg !1445
  store %struct.fio_cli_hash__ordered_s_* %51, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1443
  br label %52, !dbg !1446

52:                                               ; preds = %80, %40
  %53 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1447
  %54 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1449
  %55 = icmp ult %struct.fio_cli_hash__ordered_s_* %53, %54, !dbg !1450
  br i1 %55, label %56, label %83, !dbg !1451

56:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__map_s_** %6, metadata !1452, metadata !DIExpression()), !dbg !1454
  %57 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1455
  %58 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1456
  %59 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %58, i32 0, i32 0, !dbg !1457
  %60 = load i64, i64* %59, align 8, !dbg !1457
  %61 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1458
  %62 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %61, i32 0, i32 1, !dbg !1459
  %63 = call %struct.fio_cli_hash__map_s_* @fio_cli_hash__find_map_pos_(%struct.fio_cli_hash_s* %57, i64 %60, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %62), !dbg !1460
  store %struct.fio_cli_hash__map_s_* %63, %struct.fio_cli_hash__map_s_** %6, align 8, !dbg !1454
  %64 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %6, align 8, !dbg !1461
  %65 = icmp ne %struct.fio_cli_hash__map_s_* %64, null, !dbg !1461
  br i1 %65, label %71, label %66, !dbg !1463

66:                                               ; preds = %56
  %67 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1464
  %68 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %67, i32 0, i32 6, !dbg !1466
  %69 = load i8, i8* %68, align 1, !dbg !1467
  %70 = add i8 %69, 1, !dbg !1467
  store i8 %70, i8* %68, align 1, !dbg !1467
  br label %10, !dbg !1468

71:                                               ; preds = %56
  %72 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1469
  %73 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %6, align 8, !dbg !1470
  %74 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %73, i32 0, i32 1, !dbg !1471
  store %struct.fio_cli_hash__ordered_s_* %72, %struct.fio_cli_hash__ordered_s_** %74, align 8, !dbg !1472
  %75 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1473
  %76 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %75, i32 0, i32 0, !dbg !1474
  %77 = load i64, i64* %76, align 8, !dbg !1474
  %78 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %6, align 8, !dbg !1475
  %79 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %78, i32 0, i32 0, !dbg !1476
  store i64 %77, i64* %79, align 8, !dbg !1477
  br label %80, !dbg !1478

80:                                               ; preds = %71
  %81 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1479
  %82 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %81, i32 1, !dbg !1479
  store %struct.fio_cli_hash__ordered_s_* %82, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1479
  br label %52, !dbg !1480, !llvm.loop !1481

83:                                               ; preds = %52
  ret void, !dbg !1483
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if2(i64 %0, i64 %1, i64 %2) #0 !dbg !1484 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1487, metadata !DIExpression()), !dbg !1488
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1489, metadata !DIExpression()), !dbg !1490
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1491, metadata !DIExpression()), !dbg !1492
  %7 = load i64, i64* %4, align 8, !dbg !1493
  %8 = call i64 @fio_ct_true(i64 %7), !dbg !1494
  %9 = trunc i64 %8 to i8, !dbg !1494
  %10 = load i64, i64* %5, align 8, !dbg !1495
  %11 = load i64, i64* %6, align 8, !dbg !1496
  %12 = call i64 @fio_ct_if(i8 zeroext %9, i64 %10, i64 %11), !dbg !1497
  ret i64 %12, !dbg !1498
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash__compact_ordered_array_(%struct.fio_cli_hash_s* %0) #0 !dbg !1499 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  %3 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %4 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %5 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %2, metadata !1500, metadata !DIExpression()), !dbg !1501
  %6 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1502
  %7 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %6, i32 0, i32 0, !dbg !1504
  %8 = load i64, i64* %7, align 8, !dbg !1504
  %9 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1505
  %10 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %9, i32 0, i32 2, !dbg !1506
  %11 = load i64, i64* %10, align 8, !dbg !1506
  %12 = icmp eq i64 %8, %11, !dbg !1507
  br i1 %12, label %13, label %14, !dbg !1508

13:                                               ; preds = %1
  br label %66, !dbg !1509

14:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__ordered_s_** %3, metadata !1510, metadata !DIExpression()), !dbg !1511
  %15 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1512
  %16 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %15, i32 0, i32 3, !dbg !1513
  %17 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %16, align 8, !dbg !1513
  store %struct.fio_cli_hash__ordered_s_* %17, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1511
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__ordered_s_** %4, metadata !1514, metadata !DIExpression()), !dbg !1515
  %18 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1516
  %19 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %18, i32 0, i32 3, !dbg !1517
  %20 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %19, align 8, !dbg !1517
  store %struct.fio_cli_hash__ordered_s_* %20, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1515
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__ordered_s_** %5, metadata !1518, metadata !DIExpression()), !dbg !1519
  %21 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1520
  %22 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %21, i32 0, i32 3, !dbg !1521
  %23 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %22, align 8, !dbg !1521
  %24 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1522
  %25 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %24, i32 0, i32 2, !dbg !1523
  %26 = load i64, i64* %25, align 8, !dbg !1523
  %27 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %23, i64 %26, !dbg !1524
  store %struct.fio_cli_hash__ordered_s_* %27, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1519
  br label %28, !dbg !1525

28:                                               ; preds = %50, %14
  %29 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1526
  %30 = icmp ne %struct.fio_cli_hash__ordered_s_* %29, null, !dbg !1526
  br i1 %30, label %31, label %35, !dbg !1529

31:                                               ; preds = %28
  %32 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1530
  %33 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8, !dbg !1531
  %34 = icmp ult %struct.fio_cli_hash__ordered_s_* %32, %33, !dbg !1532
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ], !dbg !1533
  br i1 %36, label %37, label %53, !dbg !1534

37:                                               ; preds = %35
  %38 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1535
  %39 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %38, i32 0, i32 0, !dbg !1535
  %40 = load i64, i64* %39, align 8, !dbg !1535
  %41 = icmp eq i64 %40, 0, !dbg !1535
  br i1 %41, label %42, label %43, !dbg !1538

42:                                               ; preds = %37
  br label %50, !dbg !1539

43:                                               ; preds = %37
  %44 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1541
  %45 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1542
  %46 = bitcast %struct.fio_cli_hash__ordered_s_* %44 to i8*, !dbg !1543
  %47 = bitcast %struct.fio_cli_hash__ordered_s_* %45 to i8*, !dbg !1543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 32, i1 false), !dbg !1543
  %48 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1544
  %49 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %48, i32 1, !dbg !1544
  store %struct.fio_cli_hash__ordered_s_* %49, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1544
  br label %50, !dbg !1545

50:                                               ; preds = %43, %42
  %51 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1546
  %52 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %51, i32 1, !dbg !1546
  store %struct.fio_cli_hash__ordered_s_* %52, %struct.fio_cli_hash__ordered_s_** %3, align 8, !dbg !1546
  br label %28, !dbg !1547, !llvm.loop !1548

53:                                               ; preds = %35
  %54 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8, !dbg !1550
  %55 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1551
  %56 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %55, i32 0, i32 3, !dbg !1552
  %57 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %56, align 8, !dbg !1552
  %58 = ptrtoint %struct.fio_cli_hash__ordered_s_* %54 to i64, !dbg !1553
  %59 = ptrtoint %struct.fio_cli_hash__ordered_s_* %57 to i64, !dbg !1553
  %60 = sub i64 %58, %59, !dbg !1553
  %61 = sdiv exact i64 %60, 32, !dbg !1553
  %62 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1554
  %63 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %62, i32 0, i32 0, !dbg !1555
  store i64 %61, i64* %63, align 8, !dbg !1556
  %64 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1557
  %65 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %64, i32 0, i32 2, !dbg !1558
  store i64 %61, i64* %65, align 8, !dbg !1559
  br label %66, !dbg !1560

66:                                               ; preds = %53, %13
  ret void, !dbg !1560
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash__reallocate_set_mem_(%struct.fio_cli_hash_s* %0) #0 !dbg !1561 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  %3 = alloca i64, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %2, metadata !1562, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1564, metadata !DIExpression()), !dbg !1565
  %4 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1566
  %5 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %4, i32 0, i32 6, !dbg !1567
  %6 = load i8, i8* %5, align 1, !dbg !1567
  %7 = zext i8 %6 to i32, !dbg !1566
  %8 = zext i32 %7 to i64, !dbg !1568
  %9 = shl i64 1, %8, !dbg !1568
  store i64 %9, i64* %3, align 8, !dbg !1565
  %10 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1569
  %11 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %10, i32 0, i32 4, !dbg !1569
  %12 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1569
  %13 = bitcast %struct.fio_cli_hash__map_s_* %12 to i8*, !dbg !1569
  call void @fio_free(i8* %13), !dbg !1569
  %14 = load i64, i64* %3, align 8, !dbg !1570
  %15 = call noalias i8* @fio_calloc(i64 16, i64 %14), !dbg !1570
  %16 = ptrtoint i8* %15 to i64, !dbg !1570
  %17 = and i64 %16, 15, !dbg !1570
  %18 = icmp eq i64 %17, 0, !dbg !1570
  call void @llvm.assume(i1 %18), !dbg !1570
  %19 = bitcast i8* %15 to %struct.fio_cli_hash__map_s_*, !dbg !1571
  %20 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1572
  %21 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %20, i32 0, i32 4, !dbg !1573
  store %struct.fio_cli_hash__map_s_* %19, %struct.fio_cli_hash__map_s_** %21, align 8, !dbg !1574
  %22 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1575
  %23 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %22, i32 0, i32 3, !dbg !1575
  %24 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %23, align 8, !dbg !1575
  %25 = bitcast %struct.fio_cli_hash__ordered_s_* %24 to i8*, !dbg !1575
  %26 = load i64, i64* %3, align 8, !dbg !1575
  %27 = mul i64 %26, 32, !dbg !1575
  %28 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1575
  %29 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %28, i32 0, i32 2, !dbg !1575
  %30 = load i64, i64* %29, align 8, !dbg !1575
  %31 = mul i64 %30, 32, !dbg !1575
  %32 = call i8* @fio_realloc2(i8* %25, i64 %27, i64 %31), !dbg !1575
  %33 = ptrtoint i8* %32 to i64, !dbg !1575
  %34 = and i64 %33, 15, !dbg !1575
  %35 = icmp eq i64 %34, 0, !dbg !1575
  call void @llvm.assume(i1 %35), !dbg !1575
  %36 = bitcast i8* %32 to %struct.fio_cli_hash__ordered_s_*, !dbg !1576
  %37 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1577
  %38 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %37, i32 0, i32 3, !dbg !1578
  store %struct.fio_cli_hash__ordered_s_* %36, %struct.fio_cli_hash__ordered_s_** %38, align 8, !dbg !1579
  %39 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1580
  %40 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %39, i32 0, i32 4, !dbg !1582
  %41 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %40, align 8, !dbg !1582
  %42 = icmp ne %struct.fio_cli_hash__map_s_* %41, null, !dbg !1580
  br i1 %42, label %43, label %48, !dbg !1583

43:                                               ; preds = %1
  %44 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1584
  %45 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %44, i32 0, i32 3, !dbg !1585
  %46 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %45, align 8, !dbg !1585
  %47 = icmp ne %struct.fio_cli_hash__ordered_s_* %46, null, !dbg !1584
  br i1 %47, label %51, label %48, !dbg !1586

48:                                               ; preds = %43, %1
  call void @perror(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0)), !dbg !1587
  %49 = call i32* @__errno_location() #12, !dbg !1589
  %50 = load i32, i32* %49, align 4, !dbg !1589
  call void @exit(i32 %50) #11, !dbg !1590
  unreachable, !dbg !1590

51:                                               ; preds = %43
  %52 = load i64, i64* %3, align 8, !dbg !1591
  %53 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1592
  %54 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %53, i32 0, i32 1, !dbg !1593
  store i64 %52, i64* %54, align 8, !dbg !1594
  ret void, !dbg !1595
}

declare dso_local void @fio_free(i8*) #5

declare dso_local noalias i8* @fio_calloc(i64, i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #5

declare dso_local void @perror(i8*) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if(i8 zeroext %0, i64 %1, i64 %2) #0 !dbg !1596 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1599, metadata !DIExpression()), !dbg !1600
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1601, metadata !DIExpression()), !dbg !1602
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1603, metadata !DIExpression()), !dbg !1604
  %7 = load i64, i64* %6, align 8, !dbg !1605
  %8 = load i8, i8* %4, align 1, !dbg !1606
  %9 = zext i8 %8 to i32, !dbg !1606
  %10 = and i32 %9, 1, !dbg !1607
  %11 = sub nsw i32 0, %10, !dbg !1608
  %12 = sext i32 %11 to i64, !dbg !1609
  %13 = load i64, i64* %5, align 8, !dbg !1610
  %14 = load i64, i64* %6, align 8, !dbg !1611
  %15 = xor i64 %13, %14, !dbg !1612
  %16 = and i64 %12, %15, !dbg !1613
  %17 = xor i64 %7, %16, !dbg !1614
  ret i64 %17, !dbg !1615
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_true(i64 %0) #0 !dbg !1616 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1619, metadata !DIExpression()), !dbg !1620
  %3 = load i64, i64* %2, align 8, !dbg !1621
  %4 = load i64, i64* %2, align 8, !dbg !1622
  %5 = sub i64 0, %4, !dbg !1623
  %6 = or i64 %3, %5, !dbg !1624
  %7 = lshr i64 %6, 63, !dbg !1625
  ret i64 %7, !dbg !1626
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_cli_get_line_type(%struct.fio_cli_parser_data_s* %0, i8* %1) #0 !dbg !1627 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fio_cli_parser_data_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.fio_cli_parser_data_s* %0, %struct.fio_cli_parser_data_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_parser_data_s** %4, metadata !1630, metadata !DIExpression()), !dbg !1631
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1632, metadata !DIExpression()), !dbg !1633
  %7 = load i8*, i8** %5, align 8, !dbg !1634
  %8 = icmp ne i8* %7, null, !dbg !1634
  br i1 %8, label %10, label %9, !dbg !1636

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1637
  br label %45, !dbg !1637

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1639, metadata !DIExpression()), !dbg !1640
  %11 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %4, align 8, !dbg !1641
  %12 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %11, i32 0, i32 7, !dbg !1642
  %13 = load i8**, i8*** %12, align 8, !dbg !1642
  store i8** %13, i8*** %6, align 8, !dbg !1640
  br label %14, !dbg !1643

14:                                               ; preds = %31, %22, %10
  %15 = load i8**, i8*** %6, align 8, !dbg !1644
  %16 = load i8*, i8** %15, align 8, !dbg !1645
  %17 = icmp ne i8* %16, null, !dbg !1643
  br i1 %17, label %18, label %34, !dbg !1643

18:                                               ; preds = %14
  %19 = load i8**, i8*** %6, align 8, !dbg !1646
  %20 = load i8*, i8** %19, align 8, !dbg !1648
  %21 = ptrtoint i8* %20 to i64, !dbg !1649
  switch i64 %21, label %25 [
    i64 1, label %22
    i64 2, label %22
    i64 3, label %22
    i64 4, label %22
    i64 5, label %22
  ], !dbg !1650

22:                                               ; preds = %18, %18, %18, %18, %18
  %23 = load i8**, i8*** %6, align 8, !dbg !1651
  %24 = getelementptr inbounds i8*, i8** %23, i32 1, !dbg !1651
  store i8** %24, i8*** %6, align 8, !dbg !1651
  br label %14, !dbg !1653, !llvm.loop !1654

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8, !dbg !1656
  %27 = load i8**, i8*** %6, align 8, !dbg !1658
  %28 = load i8*, i8** %27, align 8, !dbg !1659
  %29 = icmp eq i8* %26, %28, !dbg !1660
  br i1 %29, label %30, label %31, !dbg !1661

30:                                               ; preds = %25
  br label %35, !dbg !1662

31:                                               ; preds = %25
  %32 = load i8**, i8*** %6, align 8, !dbg !1664
  %33 = getelementptr inbounds i8*, i8** %32, i32 1, !dbg !1664
  store i8** %33, i8*** %6, align 8, !dbg !1664
  br label %14, !dbg !1643, !llvm.loop !1654

34:                                               ; preds = %14
  store i8* null, i8** %3, align 8, !dbg !1665
  br label %45, !dbg !1665

35:                                               ; preds = %30
  call void @llvm.dbg.label(metadata !1666), !dbg !1667
  %36 = load i8**, i8*** %6, align 8, !dbg !1668
  %37 = getelementptr inbounds i8*, i8** %36, i64 1, !dbg !1668
  %38 = load i8*, i8** %37, align 8, !dbg !1668
  %39 = ptrtoint i8* %38 to i64, !dbg !1669
  switch i64 %39, label %44 [
    i64 1, label %40
    i64 2, label %40
    i64 3, label %40
    i64 4, label %40
    i64 5, label %40
  ], !dbg !1670

40:                                               ; preds = %35, %35, %35, %35, %35
  %41 = load i8**, i8*** %6, align 8, !dbg !1671
  %42 = getelementptr inbounds i8*, i8** %41, i64 1, !dbg !1671
  %43 = load i8*, i8** %42, align 8, !dbg !1671
  store i8* %43, i8** %3, align 8, !dbg !1673
  br label %45, !dbg !1673

44:                                               ; preds = %35
  store i8* null, i8** %3, align 8, !dbg !1674
  br label %45, !dbg !1674

45:                                               ; preds = %44, %40, %34, %9
  %46 = load i8*, i8** %3, align 8, !dbg !1675
  ret i8* %46, !dbg !1675
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash__insert_or_overwrite_(%struct.fio_cli_hash_couplet_s* noalias sret %0, %struct.fio_cli_hash_s* %1, i64 %2, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %3, i32 %4, i8** %5) #0 !dbg !1676 {
  %7 = alloca %struct.fio_cli_hash_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.fio_cli_hash__map_s_*, align 8
  store %struct.fio_cli_hash_s* %1, %struct.fio_cli_hash_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %7, metadata !1679, metadata !DIExpression()), !dbg !1680
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_couplet_s* %3, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i32 %4, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1685, metadata !DIExpression()), !dbg !1686
  store i8** %5, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1687, metadata !DIExpression()), !dbg !1688
  %12 = load i64, i64* %8, align 8, !dbg !1689
  %13 = icmp eq i64 %12, 0, !dbg !1689
  br i1 %13, label %14, label %15, !dbg !1691

14:                                               ; preds = %6
  store i64 -1, i64* %8, align 8, !dbg !1692
  br label %15, !dbg !1693

15:                                               ; preds = %14, %6
  %16 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1694
  %17 = call i64 @fio_cli_hash_is_fragmented(%struct.fio_cli_hash_s* %16), !dbg !1696
  %18 = icmp ne i64 %17, 0, !dbg !1696
  br i1 %18, label %19, label %21, !dbg !1697

19:                                               ; preds = %15
  %20 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1698
  call void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %20), !dbg !1699
  br label %36, !dbg !1699

21:                                               ; preds = %15
  %22 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1700
  %23 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %22, i32 0, i32 2, !dbg !1702
  %24 = load i64, i64* %23, align 8, !dbg !1702
  %25 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1703
  %26 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %25, i32 0, i32 1, !dbg !1704
  %27 = load i64, i64* %26, align 8, !dbg !1704
  %28 = icmp uge i64 %24, %27, !dbg !1705
  br i1 %28, label %29, label %35, !dbg !1706

29:                                               ; preds = %21
  %30 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1707
  %31 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %30, i32 0, i32 6, !dbg !1709
  %32 = load i8, i8* %31, align 1, !dbg !1710
  %33 = add i8 %32, 1, !dbg !1710
  store i8 %33, i8* %31, align 1, !dbg !1710
  %34 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1711
  call void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %34), !dbg !1712
  br label %35, !dbg !1713

35:                                               ; preds = %29, %21
  br label %36

36:                                               ; preds = %35, %19
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash__map_s_** %11, metadata !1714, metadata !DIExpression()), !dbg !1715
  %37 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1716
  %38 = load i64, i64* %8, align 8, !dbg !1717
  %39 = call %struct.fio_cli_hash__map_s_* @fio_cli_hash__find_map_pos_(%struct.fio_cli_hash_s* %37, i64 %38, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %3), !dbg !1718
  store %struct.fio_cli_hash__map_s_* %39, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1715
  %40 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1719
  %41 = icmp ne %struct.fio_cli_hash__map_s_* %40, null, !dbg !1719
  br i1 %41, label %97, label %42, !dbg !1721

42:                                               ; preds = %36
  br label %43, !dbg !1722

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 1, !dbg !1724
  %45 = load i8*, i8** %44, align 8, !dbg !1724
  %46 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1724
  %47 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %46, i32 0, i32 3, !dbg !1724
  %48 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %47, align 8, !dbg !1724
  %49 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1724
  %50 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %49, i32 0, i32 2, !dbg !1724
  %51 = load i64, i64* %50, align 8, !dbg !1724
  %52 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %48, i64 %51, !dbg !1724
  %53 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %52, i32 0, i32 1, !dbg !1724
  %54 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %53, i32 0, i32 1, !dbg !1724
  store i8* %45, i8** %54, align 8, !dbg !1724
  %55 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1724
  %56 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %55, i32 0, i32 3, !dbg !1724
  %57 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %56, align 8, !dbg !1724
  %58 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1724
  %59 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %58, i32 0, i32 2, !dbg !1724
  %60 = load i64, i64* %59, align 8, !dbg !1724
  %61 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %57, i64 %60, !dbg !1724
  %62 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %61, i32 0, i32 1, !dbg !1724
  %63 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %62, i32 0, i32 0, !dbg !1724
  %64 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 0, !dbg !1724
  %65 = bitcast %struct.cstr_s* %63 to i8*, !dbg !1724
  %66 = bitcast %struct.cstr_s* %64 to i8*, !dbg !1724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false), !dbg !1724
  br label %67, !dbg !1724

67:                                               ; preds = %43
  %68 = load i64, i64* %8, align 8, !dbg !1726
  %69 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1727
  %70 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %69, i32 0, i32 3, !dbg !1728
  %71 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %70, align 8, !dbg !1728
  %72 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1729
  %73 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %72, i32 0, i32 2, !dbg !1730
  %74 = load i64, i64* %73, align 8, !dbg !1730
  %75 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %71, i64 %74, !dbg !1727
  %76 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %75, i32 0, i32 0, !dbg !1731
  store i64 %68, i64* %76, align 8, !dbg !1732
  %77 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1733
  %78 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %77, i32 0, i32 2, !dbg !1734
  %79 = load i64, i64* %78, align 8, !dbg !1735
  %80 = add i64 %79, 1, !dbg !1735
  store i64 %80, i64* %78, align 8, !dbg !1735
  %81 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1736
  %82 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %81, i32 0, i32 0, !dbg !1737
  %83 = load i64, i64* %82, align 8, !dbg !1738
  %84 = add i64 %83, 1, !dbg !1738
  store i64 %84, i64* %82, align 8, !dbg !1738
  %85 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1739
  call void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %85), !dbg !1740
  %86 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1741
  %87 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %86, i32 0, i32 3, !dbg !1742
  %88 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %87, align 8, !dbg !1742
  %89 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1743
  %90 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %89, i32 0, i32 2, !dbg !1744
  %91 = load i64, i64* %90, align 8, !dbg !1744
  %92 = sub i64 %91, 1, !dbg !1745
  %93 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %88, i64 %92, !dbg !1741
  %94 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %93, i32 0, i32 1, !dbg !1746
  %95 = bitcast %struct.fio_cli_hash_couplet_s* %0 to i8*, !dbg !1746
  %96 = bitcast %struct.fio_cli_hash_couplet_s* %94 to i8*, !dbg !1746
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 24, i1 false), !dbg !1746
  br label %189, !dbg !1747

97:                                               ; preds = %36
  %98 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1748
  %99 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %98, i32 0, i32 1, !dbg !1750
  %100 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %99, align 8, !dbg !1750
  %101 = icmp ne %struct.fio_cli_hash__ordered_s_* %100, null, !dbg !1748
  br i1 %101, label %102, label %139, !dbg !1751

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4, !dbg !1752
  %104 = icmp ne i32 %103, 0, !dbg !1752
  br i1 %104, label %114, label %105, !dbg !1755

105:                                              ; preds = %102
  br label %106, !dbg !1756

106:                                              ; preds = %105
  br label %107, !dbg !1758

107:                                              ; preds = %106
  %108 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1760
  %109 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %108, i32 0, i32 1, !dbg !1761
  %110 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %109, align 8, !dbg !1761
  %111 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %110, i32 0, i32 1, !dbg !1762
  %112 = bitcast %struct.fio_cli_hash_couplet_s* %0 to i8*, !dbg !1762
  %113 = bitcast %struct.fio_cli_hash_couplet_s* %111 to i8*, !dbg !1762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 24, i1 false), !dbg !1762
  br label %189, !dbg !1763

114:                                              ; preds = %102
  %115 = load i8**, i8*** %10, align 8, !dbg !1764
  %116 = icmp ne i8** %115, null, !dbg !1764
  br i1 %116, label %117, label %125, !dbg !1766

117:                                              ; preds = %114
  %118 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1767
  %119 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %118, i32 0, i32 1, !dbg !1767
  %120 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %119, align 8, !dbg !1767
  %121 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %120, i32 0, i32 1, !dbg !1767
  %122 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %121, i32 0, i32 1, !dbg !1767
  %123 = load i8*, i8** %122, align 8, !dbg !1767
  %124 = load i8**, i8*** %10, align 8, !dbg !1767
  store i8* %123, i8** %124, align 8, !dbg !1767
  br label %125, !dbg !1769

125:                                              ; preds = %117, %114
  %126 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 1, !dbg !1770
  %127 = load i8*, i8** %126, align 8, !dbg !1770
  %128 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1770
  %129 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %128, i32 0, i32 1, !dbg !1770
  %130 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %129, align 8, !dbg !1770
  %131 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %130, i32 0, i32 1, !dbg !1770
  %132 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %131, i32 0, i32 1, !dbg !1770
  store i8* %127, i8** %132, align 8, !dbg !1770
  %133 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1771
  %134 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %133, i32 0, i32 1, !dbg !1772
  %135 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %134, align 8, !dbg !1772
  %136 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %135, i32 0, i32 1, !dbg !1773
  %137 = bitcast %struct.fio_cli_hash_couplet_s* %0 to i8*, !dbg !1773
  %138 = bitcast %struct.fio_cli_hash_couplet_s* %136 to i8*, !dbg !1773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 24, i1 false), !dbg !1773
  br label %189, !dbg !1774

139:                                              ; preds = %97
  %140 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1775
  %141 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %140, i32 0, i32 3, !dbg !1777
  %142 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %141, align 8, !dbg !1777
  %143 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1778
  %144 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %143, i32 0, i32 2, !dbg !1779
  %145 = load i64, i64* %144, align 8, !dbg !1779
  %146 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %142, i64 %145, !dbg !1780
  %147 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1781
  %148 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %147, i32 0, i32 1, !dbg !1782
  store %struct.fio_cli_hash__ordered_s_* %146, %struct.fio_cli_hash__ordered_s_** %148, align 8, !dbg !1783
  %149 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1784
  %150 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %149, i32 0, i32 2, !dbg !1785
  %151 = load i64, i64* %150, align 8, !dbg !1786
  %152 = add i64 %151, 1, !dbg !1786
  store i64 %152, i64* %150, align 8, !dbg !1786
  %153 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8, !dbg !1787
  %154 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %153, i32 0, i32 0, !dbg !1788
  %155 = load i64, i64* %154, align 8, !dbg !1789
  %156 = add i64 %155, 1, !dbg !1789
  store i64 %156, i64* %154, align 8, !dbg !1789
  br label %157

157:                                              ; preds = %139
  %158 = load i64, i64* %8, align 8, !dbg !1790
  %159 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1791
  %160 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %159, i32 0, i32 0, !dbg !1792
  store i64 %158, i64* %160, align 8, !dbg !1793
  %161 = load i64, i64* %8, align 8, !dbg !1794
  %162 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1795
  %163 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %162, i32 0, i32 1, !dbg !1796
  %164 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %163, align 8, !dbg !1796
  %165 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %164, i32 0, i32 0, !dbg !1797
  store i64 %161, i64* %165, align 8, !dbg !1798
  br label %166, !dbg !1799

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 1, !dbg !1800
  %168 = load i8*, i8** %167, align 8, !dbg !1800
  %169 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1800
  %170 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %169, i32 0, i32 1, !dbg !1800
  %171 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %170, align 8, !dbg !1800
  %172 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %171, i32 0, i32 1, !dbg !1800
  %173 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %172, i32 0, i32 1, !dbg !1800
  store i8* %168, i8** %173, align 8, !dbg !1800
  %174 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1800
  %175 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %174, i32 0, i32 1, !dbg !1800
  %176 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %175, align 8, !dbg !1800
  %177 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %176, i32 0, i32 1, !dbg !1800
  %178 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %177, i32 0, i32 0, !dbg !1800
  %179 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 0, !dbg !1800
  %180 = bitcast %struct.cstr_s* %178 to i8*, !dbg !1800
  %181 = bitcast %struct.cstr_s* %179 to i8*, !dbg !1800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 16, i1 false), !dbg !1800
  br label %182, !dbg !1800

182:                                              ; preds = %166
  %183 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8, !dbg !1802
  %184 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %183, i32 0, i32 1, !dbg !1803
  %185 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %184, align 8, !dbg !1803
  %186 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %185, i32 0, i32 1, !dbg !1804
  %187 = bitcast %struct.fio_cli_hash_couplet_s* %0 to i8*, !dbg !1804
  %188 = bitcast %struct.fio_cli_hash_couplet_s* %186 to i8*, !dbg !1804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 24, i1 false), !dbg !1804
  br label %189, !dbg !1805

189:                                              ; preds = %182, %125, %107, %67
  ret void, !dbg !1806
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_cli_hash_is_fragmented(%struct.fio_cli_hash_s* %0) #0 !dbg !1807 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_cli_hash_s** %2, metadata !1808, metadata !DIExpression()), !dbg !1809
  %3 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1810
  %4 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %3, i32 0, i32 2, !dbg !1811
  %5 = load i64, i64* %4, align 8, !dbg !1811
  %6 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1812
  %7 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %6, i32 0, i32 0, !dbg !1813
  %8 = load i64, i64* %7, align 8, !dbg !1813
  %9 = sub i64 %5, %8, !dbg !1814
  %10 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8, !dbg !1815
  %11 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %10, i32 0, i32 0, !dbg !1816
  %12 = load i64, i64* %11, align 8, !dbg !1816
  %13 = lshr i64 %12, 1, !dbg !1817
  %14 = icmp ugt i64 %9, %13, !dbg !1818
  %15 = zext i1 %14 to i32, !dbg !1818
  %16 = sext i32 %15 to i64, !dbg !1819
  ret i64 %16, !dbg !1820
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind willreturn }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!99, !100, !101}
!llvm.ident = !{!102}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "run_once", scope: !2, file: !3, line: 313, type: !97, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "fio_cli_start", scope: !3, file: !3, line: 310, type: !4, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !96)
!3 = !DIFile(filename: "fio_cli.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !7, !6, !6, !8, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !31, globals: !72, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 1579, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!17 = !DIEnumerator(name: "FIO_CALL_ON_INITIALIZE", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "FIO_CALL_PRE_START", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "FIO_CALL_BEFORE_FORK", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "FIO_CALL_AFTER_FORK", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "FIO_CALL_IN_CHILD", value: 4, isUnsigned: true)
!22 = !DIEnumerator(name: "FIO_CALL_IN_MASTER", value: 5, isUnsigned: true)
!23 = !DIEnumerator(name: "FIO_CALL_ON_START", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "FIO_CALL_ON_IDLE", value: 7, isUnsigned: true)
!25 = !DIEnumerator(name: "FIO_CALL_ON_SHUTDOWN", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "FIO_CALL_ON_FINISH", value: 9, isUnsigned: true)
!27 = !DIEnumerator(name: "FIO_CALL_ON_PARENT_CRUSH", value: 10, isUnsigned: true)
!28 = !DIEnumerator(name: "FIO_CALL_ON_CHILD_CRUSH", value: 11, isUnsigned: true)
!29 = !DIEnumerator(name: "FIO_CALL_AT_EXIT", value: 12, isUnsigned: true)
!30 = !DIEnumerator(name: "FIO_CALL_NEVER", value: 13, isUnsigned: true)
!31 = !{!32, !33, !36, !37, !6, !42, !15, !43, !45, !46, !52, !68}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !34, line: 87, baseType: !35)
!34 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!35 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !38, line: 27, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !40, line: 45, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !41)
!44 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !34, line: 90, baseType: !41)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_cli_hash__map_s_", file: !14, line: 5823, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_cli_hash__map_s_", file: !14, line: 5820, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !48, file: !14, line: 5821, baseType: !45, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !48, file: !14, line: 5822, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_cli_hash__ordered_s_", file: !14, line: 5818, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_cli_hash__ordered_s_", file: !14, line: 5815, size: 256, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !54, file: !14, line: 5816, baseType: !45, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !54, file: !14, line: 5817, baseType: !58, size: 192, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_cli_hash_couplet_s", file: !14, line: 5598, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 5595, size: 192, elements: !60)
!60 = !{!61, !67}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !59, file: !14, line: 5596, baseType: !62, size: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "cstr_s", file: !3, line: 24, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 21, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !63, file: !3, line: 22, baseType: !43, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !63, file: !3, line: 23, baseType: !8, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !59, file: !14, line: 5597, baseType: !8, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !38, line: 24, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !40, line: 38, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !{!0, !73, !75, !77, !79, !92, !94}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !11, file: !14, line: 433, type: !6, isLocal: false, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !11, file: !14, line: 2433, type: !69, isLocal: false, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !11, file: !14, line: 2434, type: !69, isLocal: false, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "fio_values", scope: !11, file: !3, line: 35, type: !81, isLocal: true, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_cli_hash_s", file: !14, line: 5643, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_cli_hash_s", file: !14, line: 5826, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !82, file: !14, line: 5827, baseType: !45, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !82, file: !14, line: 5828, baseType: !45, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !82, file: !14, line: 5829, baseType: !45, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ordered", scope: !82, file: !14, line: 5830, baseType: !52, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !82, file: !14, line: 5831, baseType: !46, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "has_collisions", scope: !82, file: !14, line: 5832, baseType: !69, size: 8, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "used_bits", scope: !82, file: !14, line: 5833, baseType: !69, size: 8, offset: 328)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "under_attack", scope: !82, file: !14, line: 5834, baseType: !69, size: 8, offset: 336)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "fio_aliases", scope: !11, file: !3, line: 34, type: !81, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "fio_unnamed_count", scope: !11, file: !3, line: 36, type: !43, isLocal: true, isDefinition: true)
!96 = !{}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_lock_i", file: !14, line: 2060, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!99 = !{i32 7, !"Dwarf Version", i32 4}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{!"clang version 10.0.0-4ubuntu1 "}
!103 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !14, file: !14, line: 437, type: !104, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !96)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !8, null}
!106 = !DILocalVariable(name: "format", arg: 1, scope: !103, file: !14, line: 437, type: !8)
!107 = !DILocation(line: 437, column: 28, scope: !103)
!108 = !DILocalVariable(name: "tmp___log", scope: !103, file: !14, line: 438, type: !109)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16384, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 2048)
!112 = !DILocation(line: 438, column: 8, scope: !103)
!113 = !DILocalVariable(name: "argv", scope: !103, file: !14, line: 439, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !115, line: 52, baseType: !116)
!115 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !117, line: 32, baseType: !118)
!117 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !119)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 192, elements: !126)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !120, file: !3, line: 439, baseType: !15, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !120, file: !3, line: 439, baseType: !15, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !120, file: !3, line: 439, baseType: !32, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !120, file: !3, line: 439, baseType: !32, size: 64, offset: 128)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DILocation(line: 439, column: 11, scope: !103)
!129 = !DILocation(line: 440, column: 3, scope: !103)
!130 = !DILocalVariable(name: "len___log", scope: !103, file: !14, line: 441, type: !6)
!131 = !DILocation(line: 441, column: 7, scope: !103)
!132 = !DILocation(line: 441, column: 29, scope: !103)
!133 = !DILocation(line: 441, column: 66, scope: !103)
!134 = !DILocation(line: 441, column: 74, scope: !103)
!135 = !DILocation(line: 441, column: 19, scope: !103)
!136 = !DILocation(line: 442, column: 3, scope: !103)
!137 = !DILocation(line: 443, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !103, file: !14, line: 443, column: 7)
!139 = !DILocation(line: 443, column: 17, scope: !138)
!140 = !DILocation(line: 443, column: 22, scope: !138)
!141 = !DILocation(line: 443, column: 25, scope: !138)
!142 = !DILocation(line: 443, column: 35, scope: !138)
!143 = !DILocation(line: 443, column: 7, scope: !103)
!144 = !DILocation(line: 444, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !14, line: 444, column: 9)
!146 = distinct !DILexicalBlock(scope: !138, file: !14, line: 443, column: 64)
!147 = !DILocation(line: 444, column: 19, scope: !145)
!148 = !DILocation(line: 444, column: 9, scope: !146)
!149 = !DILocation(line: 445, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !14, line: 444, column: 48)
!151 = !DILocation(line: 445, column: 24, scope: !150)
!152 = !DILocation(line: 445, column: 7, scope: !150)
!153 = !DILocation(line: 447, column: 17, scope: !150)
!154 = !DILocation(line: 448, column: 5, scope: !150)
!155 = !DILocation(line: 449, column: 65, scope: !156)
!156 = distinct !DILexicalBlock(scope: !145, file: !14, line: 448, column: 12)
!157 = !DILocation(line: 449, column: 7, scope: !156)
!158 = !DILocation(line: 450, column: 7, scope: !156)
!159 = !DILocation(line: 452, column: 3, scope: !146)
!160 = !DILocation(line: 453, column: 22, scope: !103)
!161 = !DILocation(line: 453, column: 3, scope: !103)
!162 = !DILocation(line: 453, column: 26, scope: !103)
!163 = !DILocation(line: 454, column: 13, scope: !103)
!164 = !DILocation(line: 454, column: 3, scope: !103)
!165 = !DILocation(line: 454, column: 24, scope: !103)
!166 = !DILocation(line: 455, column: 10, scope: !103)
!167 = !DILocation(line: 455, column: 21, scope: !103)
!168 = !DILocation(line: 455, column: 35, scope: !103)
!169 = !DILocation(line: 455, column: 3, scope: !103)
!170 = !DILocation(line: 456, column: 1, scope: !103)
!171 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 310, type: !6)
!172 = !DILocation(line: 310, column: 36, scope: !2)
!173 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 310, type: !7)
!174 = !DILocation(line: 310, column: 54, scope: !2)
!175 = !DILocalVariable(name: "unnamed_min", arg: 3, scope: !2, file: !3, line: 310, type: !6)
!176 = !DILocation(line: 310, column: 66, scope: !2)
!177 = !DILocalVariable(name: "unnamed_max", arg: 4, scope: !2, file: !3, line: 311, type: !6)
!178 = !DILocation(line: 311, column: 36, scope: !2)
!179 = !DILocalVariable(name: "description", arg: 5, scope: !2, file: !3, line: 311, type: !8)
!180 = !DILocation(line: 311, column: 61, scope: !2)
!181 = !DILocalVariable(name: "names", arg: 6, scope: !2, file: !3, line: 312, type: !7)
!182 = !DILocation(line: 312, column: 45, scope: !2)
!183 = !DILocation(line: 314, column: 8, scope: !184)
!184 = distinct !DILexicalBlock(scope: !2, file: !3, line: 314, column: 7)
!185 = !DILocation(line: 314, column: 7, scope: !2)
!186 = !DILocation(line: 315, column: 5, scope: !184)
!187 = !DILocation(line: 316, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !2, file: !3, line: 316, column: 7)
!189 = !DILocation(line: 316, column: 19, scope: !188)
!190 = !DILocation(line: 316, column: 24, scope: !188)
!191 = !DILocation(line: 316, column: 27, scope: !188)
!192 = !DILocation(line: 316, column: 41, scope: !188)
!193 = !DILocation(line: 316, column: 39, scope: !188)
!194 = !DILocation(line: 316, column: 7, scope: !2)
!195 = !DILocation(line: 317, column: 19, scope: !188)
!196 = !DILocation(line: 317, column: 17, scope: !188)
!197 = !DILocation(line: 317, column: 5, scope: !188)
!198 = !DILocalVariable(name: "parser", scope: !2, file: !3, line: 318, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_cli_parser_data_s", file: !3, line: 47, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 38, size: 384, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed_min", scope: !200, file: !3, line: 39, baseType: !6, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed_max", scope: !200, file: !3, line: 40, baseType: !6, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !200, file: !3, line: 41, baseType: !6, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed_count", scope: !200, file: !3, line: 42, baseType: !6, size: 32, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !200, file: !3, line: 43, baseType: !6, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !200, file: !3, line: 44, baseType: !7, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !200, file: !3, line: 45, baseType: !8, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !200, file: !3, line: 46, baseType: !7, size: 64, offset: 320)
!210 = !DILocation(line: 318, column: 25, scope: !2)
!211 = !DILocation(line: 318, column: 34, scope: !2)
!212 = !DILocation(line: 319, column: 22, scope: !2)
!213 = !DILocation(line: 320, column: 22, scope: !2)
!214 = !DILocation(line: 322, column: 15, scope: !2)
!215 = !DILocation(line: 323, column: 15, scope: !2)
!216 = !DILocation(line: 321, column: 22, scope: !2)
!217 = !DILocation(line: 324, column: 16, scope: !2)
!218 = !DILocation(line: 328, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !2, file: !3, line: 328, column: 7)
!220 = !DILocation(line: 328, column: 7, scope: !2)
!221 = !DILocation(line: 329, column: 5, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 328, column: 40)
!223 = !DILocation(line: 330, column: 3, scope: !222)
!224 = !DILocalVariable(name: "line", scope: !2, file: !3, line: 334, type: !7)
!225 = !DILocation(line: 334, column: 16, scope: !2)
!226 = !DILocation(line: 334, column: 23, scope: !2)
!227 = !DILocation(line: 335, column: 3, scope: !2)
!228 = !DILocation(line: 335, column: 11, scope: !2)
!229 = !DILocation(line: 335, column: 10, scope: !2)
!230 = !DILocation(line: 336, column: 24, scope: !231)
!231 = distinct !DILexicalBlock(scope: !2, file: !3, line: 335, column: 17)
!232 = !DILocation(line: 336, column: 23, scope: !231)
!233 = !DILocation(line: 336, column: 13, scope: !231)
!234 = !DILocation(line: 336, column: 5, scope: !231)
!235 = !DILocation(line: 342, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !3, line: 336, column: 30)
!237 = !DILocation(line: 343, column: 7, scope: !236)
!238 = distinct !{!238, !227, !239}
!239 = !DILocation(line: 349, column: 3, scope: !2)
!240 = !DILocation(line: 345, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !231, file: !3, line: 345, column: 9)
!242 = !DILocation(line: 345, column: 17, scope: !241)
!243 = !DILocation(line: 345, column: 50, scope: !241)
!244 = !DILocation(line: 346, column: 9, scope: !241)
!245 = !DILocation(line: 346, column: 17, scope: !241)
!246 = !DILocation(line: 345, column: 9, scope: !231)
!247 = !DILocation(line: 347, column: 31, scope: !241)
!248 = !DILocation(line: 347, column: 30, scope: !241)
!249 = !DILocation(line: 347, column: 7, scope: !241)
!250 = !DILocation(line: 348, column: 5, scope: !231)
!251 = !DILocation(line: 353, column: 3, scope: !2)
!252 = !DILocation(line: 353, column: 20, scope: !2)
!253 = !DILocation(line: 353, column: 11, scope: !2)
!254 = !DILocation(line: 353, column: 27, scope: !2)
!255 = !DILocation(line: 353, column: 25, scope: !2)
!256 = !DILocalVariable(name: "value", scope: !257, file: !3, line: 354, type: !8)
!257 = distinct !DILexicalBlock(scope: !2, file: !3, line: 353, column: 33)
!258 = !DILocation(line: 354, column: 17, scope: !257)
!259 = !DILocalVariable(name: "n", scope: !257, file: !3, line: 355, type: !62)
!260 = !DILocation(line: 355, column: 12, scope: !257)
!261 = !DILocation(line: 355, column: 16, scope: !257)
!262 = !DILocation(line: 355, column: 57, scope: !257)
!263 = !DILocation(line: 355, column: 69, scope: !257)
!264 = !DILocation(line: 355, column: 50, scope: !257)
!265 = !DILocation(line: 355, column: 25, scope: !257)
!266 = !DILocation(line: 355, column: 37, scope: !257)
!267 = !DILocation(line: 356, column: 16, scope: !268)
!268 = distinct !DILexicalBlock(scope: !257, file: !3, line: 356, column: 9)
!269 = !DILocation(line: 356, column: 20, scope: !268)
!270 = !DILocation(line: 356, column: 26, scope: !268)
!271 = !DILocation(line: 356, column: 24, scope: !268)
!272 = !DILocation(line: 356, column: 9, scope: !257)
!273 = !DILocation(line: 357, column: 15, scope: !274)
!274 = distinct !DILexicalBlock(scope: !268, file: !3, line: 356, column: 32)
!275 = !DILocation(line: 357, column: 27, scope: !274)
!276 = !DILocation(line: 357, column: 31, scope: !274)
!277 = !DILocation(line: 357, column: 13, scope: !274)
!278 = !DILocation(line: 358, column: 5, scope: !274)
!279 = !DILocalVariable(name: "l", scope: !257, file: !3, line: 359, type: !8)
!280 = !DILocation(line: 359, column: 17, scope: !257)
!281 = !DILocation(line: 360, column: 5, scope: !257)
!282 = !DILocation(line: 360, column: 14, scope: !257)
!283 = !DILocation(line: 360, column: 12, scope: !257)
!284 = !DILocation(line: 360, column: 18, scope: !257)
!285 = !DILocation(line: 361, column: 50, scope: !257)
!286 = !DILocation(line: 361, column: 18, scope: !257)
!287 = !DILocation(line: 361, column: 16, scope: !257)
!288 = !DILocation(line: 361, column: 12, scope: !257)
!289 = !DILocation(line: 0, scope: !257)
!290 = !DILocation(line: 362, column: 11, scope: !291)
!291 = distinct !DILexicalBlock(scope: !257, file: !3, line: 361, column: 76)
!292 = !DILocation(line: 362, column: 7, scope: !291)
!293 = !DILocation(line: 363, column: 17, scope: !291)
!294 = !DILocation(line: 363, column: 26, scope: !291)
!295 = !DILocation(line: 363, column: 22, scope: !291)
!296 = !DILocation(line: 363, column: 13, scope: !291)
!297 = distinct !{!297, !281, !298}
!298 = !DILocation(line: 364, column: 5, scope: !257)
!299 = !DILocation(line: 365, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !257, file: !3, line: 365, column: 9)
!301 = !DILocation(line: 365, column: 9, scope: !300)
!302 = !DILocation(line: 365, column: 15, scope: !300)
!303 = !DILocation(line: 365, column: 18, scope: !300)
!304 = !DILocation(line: 365, column: 24, scope: !300)
!305 = !DILocation(line: 365, column: 27, scope: !300)
!306 = !DILocation(line: 365, column: 36, scope: !300)
!307 = !DILocation(line: 365, column: 9, scope: !257)
!308 = !DILocation(line: 366, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !300, file: !3, line: 365, column: 44)
!310 = !DILocation(line: 367, column: 5, scope: !309)
!311 = !DILocation(line: 369, column: 24, scope: !257)
!312 = !DILocation(line: 369, column: 31, scope: !257)
!313 = !DILocation(line: 369, column: 5, scope: !257)
!314 = distinct !{!314, !251, !315}
!315 = !DILocation(line: 370, column: 3, scope: !2)
!316 = !DILocation(line: 373, column: 3, scope: !2)
!317 = !DILocation(line: 374, column: 30, scope: !2)
!318 = !DILocation(line: 374, column: 23, scope: !2)
!319 = !DILocation(line: 374, column: 21, scope: !2)
!320 = !DILocation(line: 376, column: 14, scope: !321)
!321 = distinct !DILexicalBlock(scope: !2, file: !3, line: 376, column: 7)
!322 = !DILocation(line: 376, column: 37, scope: !321)
!323 = !DILocation(line: 376, column: 28, scope: !321)
!324 = !DILocation(line: 376, column: 7, scope: !2)
!325 = !DILocation(line: 377, column: 29, scope: !321)
!326 = !DILocation(line: 377, column: 5, scope: !321)
!327 = !DILocation(line: 378, column: 1, scope: !2)
!328 = distinct !DISubprogram(name: "fio_trylock", scope: !14, file: !14, line: 2993, type: !329, scopeLine: 2993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!329 = !DISubroutineType(types: !330)
!330 = !{!6, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!332 = !DILocalVariable(name: "lock", arg: 1, scope: !328, file: !14, line: 2993, type: !331)
!333 = !DILocation(line: 2993, column: 45, scope: !328)
!334 = !DILocation(line: 2994, column: 3, scope: !328)
!335 = !{i32 125022}
!336 = !DILocalVariable(name: "ret", scope: !328, file: !14, line: 2995, type: !97)
!337 = !DILocation(line: 2995, column: 14, scope: !328)
!338 = !DILocation(line: 2995, column: 20, scope: !328)
!339 = !DILocation(line: 2996, column: 3, scope: !328)
!340 = !{i32 125107}
!341 = !DILocation(line: 2997, column: 10, scope: !328)
!342 = !DILocation(line: 2997, column: 3, scope: !328)
!343 = distinct !DISubprogram(name: "fio_cli_end_promise", scope: !3, file: !3, line: 304, type: !344, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !32}
!346 = !DILocalVariable(name: "ignr_", arg: 1, scope: !343, file: !3, line: 304, type: !32)
!347 = !DILocation(line: 304, column: 39, scope: !343)
!348 = !DILocation(line: 306, column: 3, scope: !343)
!349 = !DILocation(line: 307, column: 9, scope: !343)
!350 = !DILocation(line: 308, column: 1, scope: !343)
!351 = distinct !DISubprogram(name: "fio_cli_hash_count", scope: !14, file: !14, line: 6223, type: !352, scopeLine: 6223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!352 = !DISubroutineType(types: !353)
!353 = !{!43, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!356 = !DILocalVariable(name: "set", arg: 1, scope: !351, file: !14, line: 6223, type: !354)
!357 = !DILocation(line: 6223, column: 60, scope: !351)
!358 = !DILocation(line: 6224, column: 18, scope: !351)
!359 = !DILocation(line: 6224, column: 23, scope: !351)
!360 = !DILocation(line: 6224, column: 3, scope: !351)
!361 = distinct !DISubprogram(name: "fio_cli_end", scope: !3, file: !3, line: 380, type: !362, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !96)
!362 = !DISubroutineType(types: !363)
!363 = !{null}
!364 = !DILocation(line: 381, column: 3, scope: !361)
!365 = !DILocation(line: 382, column: 3, scope: !361)
!366 = !DILocation(line: 383, column: 21, scope: !361)
!367 = !DILocation(line: 384, column: 1, scope: !361)
!368 = distinct !DISubprogram(name: "fio_cli_map_line2alias", scope: !3, file: !3, line: 63, type: !369, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !8}
!371 = !DILocalVariable(name: "line", arg: 1, scope: !368, file: !3, line: 63, type: !8)
!372 = !DILocation(line: 63, column: 48, scope: !368)
!373 = !DILocalVariable(name: "n", scope: !368, file: !3, line: 64, type: !62)
!374 = !DILocation(line: 64, column: 10, scope: !368)
!375 = !DILocation(line: 64, column: 14, scope: !368)
!376 = !DILocation(line: 64, column: 23, scope: !368)
!377 = !DILocation(line: 65, column: 3, scope: !368)
!378 = !DILocation(line: 65, column: 12, scope: !368)
!379 = !DILocation(line: 65, column: 10, scope: !368)
!380 = !DILocation(line: 65, column: 20, scope: !368)
!381 = !DILocation(line: 66, column: 5, scope: !382)
!382 = distinct !DILexicalBlock(scope: !368, file: !3, line: 65, column: 28)
!383 = !DILocation(line: 66, column: 14, scope: !382)
!384 = !DILocation(line: 66, column: 21, scope: !382)
!385 = !DILocation(line: 66, column: 12, scope: !382)
!386 = !DILocation(line: 66, column: 26, scope: !382)
!387 = !DILocation(line: 66, column: 31, scope: !382)
!388 = !DILocation(line: 66, column: 38, scope: !382)
!389 = !DILocation(line: 66, column: 29, scope: !382)
!390 = !DILocation(line: 66, column: 43, scope: !382)
!391 = !DILocation(line: 66, column: 50, scope: !382)
!392 = !DILocation(line: 66, column: 55, scope: !382)
!393 = !DILocation(line: 66, column: 62, scope: !382)
!394 = !DILocation(line: 66, column: 53, scope: !382)
!395 = !DILocation(line: 66, column: 67, scope: !382)
!396 = !DILocation(line: 0, scope: !382)
!397 = !DILocation(line: 67, column: 11, scope: !398)
!398 = distinct !DILexicalBlock(scope: !382, file: !3, line: 66, column: 75)
!399 = !DILocation(line: 67, column: 7, scope: !398)
!400 = distinct !{!400, !381, !401}
!401 = !DILocation(line: 68, column: 5, scope: !382)
!402 = !DILocalVariable(name: "old", scope: !382, file: !3, line: 69, type: !8)
!403 = !DILocation(line: 69, column: 17, scope: !382)
!404 = !DILocation(line: 70, column: 39, scope: !382)
!405 = !DILocation(line: 70, column: 71, scope: !382)
!406 = !DILocation(line: 70, column: 5, scope: !382)
!407 = !DILocation(line: 72, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !382, file: !3, line: 72, column: 9)
!409 = !DILocation(line: 72, column: 9, scope: !382)
!410 = !DILocation(line: 73, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !3, line: 72, column: 14)
!412 = !DILocation(line: 73, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 73, column: 7)
!414 = distinct !DILexicalBlock(scope: !411, file: !3, line: 73, column: 7)
!415 = !DILocation(line: 73, column: 7, scope: !414)
!416 = !DILocation(line: 73, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !3, line: 73, column: 7)
!418 = !DILocation(line: 77, column: 5, scope: !411)
!419 = !DILocation(line: 79, column: 5, scope: !382)
!420 = !DILocation(line: 79, column: 14, scope: !382)
!421 = !DILocation(line: 79, column: 21, scope: !382)
!422 = !DILocation(line: 79, column: 12, scope: !382)
!423 = !DILocation(line: 79, column: 26, scope: !382)
!424 = !DILocation(line: 79, column: 32, scope: !382)
!425 = !DILocation(line: 79, column: 39, scope: !382)
!426 = !DILocation(line: 79, column: 30, scope: !382)
!427 = !DILocation(line: 79, column: 44, scope: !382)
!428 = !DILocation(line: 79, column: 51, scope: !382)
!429 = !DILocation(line: 79, column: 56, scope: !382)
!430 = !DILocation(line: 79, column: 63, scope: !382)
!431 = !DILocation(line: 79, column: 54, scope: !382)
!432 = !DILocation(line: 79, column: 68, scope: !382)
!433 = !DILocation(line: 80, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !382, file: !3, line: 79, column: 77)
!435 = !DILocation(line: 80, column: 7, scope: !434)
!436 = distinct !{!436, !419, !437}
!437 = !DILocation(line: 81, column: 5, scope: !382)
!438 = !DILocation(line: 82, column: 17, scope: !382)
!439 = !DILocation(line: 82, column: 7, scope: !382)
!440 = !DILocation(line: 82, column: 12, scope: !382)
!441 = !DILocation(line: 83, column: 7, scope: !382)
!442 = !DILocation(line: 83, column: 11, scope: !382)
!443 = distinct !{!443, !377, !444}
!444 = !DILocation(line: 84, column: 3, scope: !368)
!445 = !DILocation(line: 85, column: 1, scope: !368)
!446 = distinct !DISubprogram(name: "fio_cli_hash_find", scope: !14, file: !14, line: 6049, type: !447, scopeLine: 6051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!447 = !DISubroutineType(types: !448)
!448 = !{!8, !449, !450, !62}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!451 = !DILocalVariable(name: "set", arg: 1, scope: !446, file: !14, line: 6049, type: !449)
!452 = !DILocation(line: 6049, column: 56, scope: !446)
!453 = !DILocalVariable(name: "hash_value", arg: 2, scope: !446, file: !14, line: 6050, type: !450)
!454 = !DILocation(line: 6050, column: 66, scope: !446)
!455 = !DILocalVariable(name: "key", arg: 3, scope: !446, file: !14, line: 6051, type: !62)
!456 = !DILocation(line: 6051, column: 59, scope: !446)
!457 = !DILocalVariable(name: "pos", scope: !446, file: !14, line: 6052, type: !46)
!458 = !DILocation(line: 6052, column: 22, scope: !446)
!459 = !DILocation(line: 6053, column: 32, scope: !446)
!460 = !DILocation(line: 6053, column: 37, scope: !446)
!461 = !DILocation(line: 6053, column: 63, scope: !446)
!462 = !DILocation(line: 6053, column: 71, scope: !446)
!463 = !DILocation(line: 6053, column: 7, scope: !446)
!464 = !DILocation(line: 6054, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !446, file: !14, line: 6054, column: 7)
!466 = !DILocation(line: 6054, column: 12, scope: !465)
!467 = !DILocation(line: 6054, column: 16, scope: !465)
!468 = !DILocation(line: 6054, column: 21, scope: !465)
!469 = !DILocation(line: 6054, column: 7, scope: !446)
!470 = !DILocalVariable(name: "empty", scope: !471, file: !14, line: 6055, type: !8)
!471 = distinct !DILexicalBlock(scope: !465, file: !14, line: 6054, column: 26)
!472 = !DILocation(line: 6055, column: 22, scope: !471)
!473 = !DILocation(line: 6056, column: 5, scope: !471)
!474 = !DILocation(line: 6057, column: 12, scope: !471)
!475 = !DILocation(line: 6057, column: 5, scope: !471)
!476 = !DILocation(line: 6059, column: 10, scope: !446)
!477 = !DILocation(line: 6059, column: 15, scope: !446)
!478 = !DILocation(line: 6059, column: 20, scope: !446)
!479 = !DILocation(line: 6059, column: 24, scope: !446)
!480 = !DILocation(line: 6059, column: 3, scope: !446)
!481 = !DILocation(line: 6060, column: 1, scope: !446)
!482 = distinct !DISubprogram(name: "fio_risky_hash", scope: !14, file: !14, line: 2464, type: !483, scopeLine: 2465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!483 = !DISubroutineType(types: !484)
!484 = !{!37, !485, !43, !37}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!487 = !DILocalVariable(name: "data_", arg: 1, scope: !482, file: !14, line: 2464, type: !485)
!488 = !DILocation(line: 2464, column: 53, scope: !482)
!489 = !DILocalVariable(name: "len", arg: 2, scope: !482, file: !14, line: 2464, type: !43)
!490 = !DILocation(line: 2464, column: 67, scope: !482)
!491 = !DILocalVariable(name: "seed", arg: 3, scope: !482, file: !14, line: 2465, type: !37)
!492 = !DILocation(line: 2465, column: 50, scope: !482)
!493 = !DILocalVariable(name: "data", scope: !482, file: !14, line: 2467, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!496 = !DILocation(line: 2467, column: 18, scope: !482)
!497 = !DILocation(line: 2467, column: 36, scope: !482)
!498 = !DILocalVariable(name: "v0", scope: !482, file: !14, line: 2470, type: !37)
!499 = !DILocation(line: 2470, column: 21, scope: !482)
!500 = !DILocation(line: 2470, column: 26, scope: !482)
!501 = !DILocation(line: 2470, column: 31, scope: !482)
!502 = !DILocalVariable(name: "v1", scope: !482, file: !14, line: 2471, type: !37)
!503 = !DILocation(line: 2471, column: 21, scope: !482)
!504 = !DILocation(line: 2471, column: 27, scope: !482)
!505 = !DILocation(line: 2471, column: 26, scope: !482)
!506 = !DILocation(line: 2471, column: 32, scope: !482)
!507 = !DILocalVariable(name: "v2", scope: !482, file: !14, line: 2472, type: !37)
!508 = !DILocation(line: 2472, column: 21, scope: !482)
!509 = !DILocation(line: 2473, column: 7, scope: !482)
!510 = !DILocation(line: 2473, column: 28, scope: !482)
!511 = !DILocalVariable(name: "v3", scope: !482, file: !14, line: 2474, type: !37)
!512 = !DILocation(line: 2474, column: 21, scope: !482)
!513 = !DILocation(line: 2474, column: 26, scope: !482)
!514 = !DILocation(line: 2474, column: 47, scope: !482)
!515 = !DILocalVariable(name: "i", scope: !516, file: !14, line: 2477, type: !43)
!516 = distinct !DILexicalBlock(scope: !482, file: !14, line: 2477, column: 3)
!517 = !DILocation(line: 2477, column: 15, scope: !516)
!518 = !DILocation(line: 2477, column: 19, scope: !516)
!519 = !DILocation(line: 2477, column: 23, scope: !516)
!520 = !DILocation(line: 2477, column: 8, scope: !516)
!521 = !DILocation(line: 2477, column: 29, scope: !522)
!522 = distinct !DILexicalBlock(scope: !516, file: !14, line: 2477, column: 3)
!523 = !DILocation(line: 2477, column: 3, scope: !516)
!524 = !DILocation(line: 2478, column: 5, scope: !525)
!525 = distinct !DILexicalBlock(scope: !522, file: !14, line: 2477, column: 37)
!526 = !DILocation(line: 2479, column: 5, scope: !525)
!527 = !DILocation(line: 2480, column: 5, scope: !525)
!528 = !DILocation(line: 2481, column: 5, scope: !525)
!529 = !DILocation(line: 2482, column: 10, scope: !525)
!530 = !DILocation(line: 2483, column: 3, scope: !525)
!531 = !DILocation(line: 2477, column: 32, scope: !522)
!532 = !DILocation(line: 2477, column: 3, scope: !522)
!533 = distinct !{!533, !523, !534}
!534 = !DILocation(line: 2483, column: 3, scope: !516)
!535 = !DILocation(line: 2486, column: 11, scope: !482)
!536 = !DILocation(line: 2486, column: 15, scope: !482)
!537 = !DILocation(line: 2486, column: 3, scope: !482)
!538 = !DILocation(line: 2488, column: 5, scope: !539)
!539 = distinct !DILexicalBlock(scope: !482, file: !14, line: 2486, column: 21)
!540 = !DILocation(line: 2491, column: 5, scope: !539)
!541 = !DILocation(line: 2494, column: 5, scope: !539)
!542 = !DILocation(line: 2495, column: 13, scope: !539)
!543 = !DILocation(line: 2495, column: 17, scope: !539)
!544 = !DILocation(line: 2495, column: 10, scope: !539)
!545 = !DILocation(line: 2496, column: 3, scope: !539)
!546 = !DILocalVariable(name: "tmp", scope: !482, file: !14, line: 2498, type: !37)
!547 = !DILocation(line: 2498, column: 12, scope: !482)
!548 = !DILocation(line: 2500, column: 12, scope: !482)
!549 = !DILocation(line: 2500, column: 16, scope: !482)
!550 = !DILocation(line: 2500, column: 3, scope: !482)
!551 = !DILocation(line: 2502, column: 23, scope: !552)
!552 = distinct !DILexicalBlock(scope: !482, file: !14, line: 2500, column: 22)
!553 = !DILocation(line: 2502, column: 13, scope: !552)
!554 = !DILocation(line: 2502, column: 32, scope: !552)
!555 = !DILocation(line: 2502, column: 9, scope: !552)
!556 = !DILocation(line: 2502, column: 5, scope: !552)
!557 = !DILocation(line: 2505, column: 23, scope: !552)
!558 = !DILocation(line: 2505, column: 13, scope: !552)
!559 = !DILocation(line: 2505, column: 32, scope: !552)
!560 = !DILocation(line: 2505, column: 9, scope: !552)
!561 = !DILocation(line: 2505, column: 5, scope: !552)
!562 = !DILocation(line: 2508, column: 23, scope: !552)
!563 = !DILocation(line: 2508, column: 13, scope: !552)
!564 = !DILocation(line: 2508, column: 32, scope: !552)
!565 = !DILocation(line: 2508, column: 9, scope: !552)
!566 = !DILocation(line: 2508, column: 5, scope: !552)
!567 = !DILocation(line: 2511, column: 23, scope: !552)
!568 = !DILocation(line: 2511, column: 13, scope: !552)
!569 = !DILocation(line: 2511, column: 32, scope: !552)
!570 = !DILocation(line: 2511, column: 9, scope: !552)
!571 = !DILocation(line: 2511, column: 5, scope: !552)
!572 = !DILocation(line: 2514, column: 23, scope: !552)
!573 = !DILocation(line: 2514, column: 13, scope: !552)
!574 = !DILocation(line: 2514, column: 32, scope: !552)
!575 = !DILocation(line: 2514, column: 9, scope: !552)
!576 = !DILocation(line: 2514, column: 5, scope: !552)
!577 = !DILocation(line: 2517, column: 23, scope: !552)
!578 = !DILocation(line: 2517, column: 13, scope: !552)
!579 = !DILocation(line: 2517, column: 32, scope: !552)
!580 = !DILocation(line: 2517, column: 9, scope: !552)
!581 = !DILocation(line: 2517, column: 5, scope: !552)
!582 = !DILocation(line: 2520, column: 23, scope: !552)
!583 = !DILocation(line: 2520, column: 13, scope: !552)
!584 = !DILocation(line: 2520, column: 32, scope: !552)
!585 = !DILocation(line: 2520, column: 9, scope: !552)
!586 = !DILocation(line: 2522, column: 14, scope: !552)
!587 = !DILocation(line: 2522, column: 18, scope: !552)
!588 = !DILocation(line: 2522, column: 24, scope: !552)
!589 = !DILocation(line: 2522, column: 5, scope: !552)
!590 = !DILocation(line: 2524, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !552, file: !14, line: 2522, column: 29)
!592 = !DILocation(line: 2525, column: 7, scope: !591)
!593 = !DILocation(line: 2527, column: 7, scope: !591)
!594 = !DILocation(line: 2528, column: 7, scope: !591)
!595 = !DILocation(line: 2530, column: 7, scope: !591)
!596 = !DILocation(line: 2531, column: 7, scope: !591)
!597 = !DILocation(line: 2533, column: 7, scope: !591)
!598 = !DILocation(line: 2534, column: 7, scope: !591)
!599 = !DILocation(line: 2536, column: 3, scope: !552)
!600 = !DILocalVariable(name: "result", scope: !482, file: !14, line: 2539, type: !37)
!601 = !DILocation(line: 2539, column: 12, scope: !482)
!602 = !DILocation(line: 2539, column: 21, scope: !482)
!603 = !DILocation(line: 2539, column: 42, scope: !482)
!604 = !DILocation(line: 2539, column: 40, scope: !482)
!605 = !DILocation(line: 2540, column: 21, scope: !482)
!606 = !DILocation(line: 2539, column: 61, scope: !482)
!607 = !DILocation(line: 2540, column: 42, scope: !482)
!608 = !DILocation(line: 2540, column: 40, scope: !482)
!609 = !DILocation(line: 2542, column: 11, scope: !482)
!610 = !DILocation(line: 2542, column: 15, scope: !482)
!611 = !DILocation(line: 2542, column: 7, scope: !482)
!612 = !DILocation(line: 2543, column: 13, scope: !482)
!613 = !DILocation(line: 2543, column: 10, scope: !482)
!614 = !DILocation(line: 2545, column: 13, scope: !482)
!615 = !DILocation(line: 2545, column: 16, scope: !482)
!616 = !DILocation(line: 2545, column: 10, scope: !482)
!617 = !DILocation(line: 2546, column: 13, scope: !482)
!618 = !DILocation(line: 2546, column: 10, scope: !482)
!619 = !DILocation(line: 2547, column: 13, scope: !482)
!620 = !DILocation(line: 2547, column: 16, scope: !482)
!621 = !DILocation(line: 2547, column: 10, scope: !482)
!622 = !DILocation(line: 2548, column: 13, scope: !482)
!623 = !DILocation(line: 2548, column: 10, scope: !482)
!624 = !DILocation(line: 2549, column: 13, scope: !482)
!625 = !DILocation(line: 2549, column: 16, scope: !482)
!626 = !DILocation(line: 2549, column: 10, scope: !482)
!627 = !DILocation(line: 2550, column: 13, scope: !482)
!628 = !DILocation(line: 2550, column: 10, scope: !482)
!629 = !DILocation(line: 2551, column: 13, scope: !482)
!630 = !DILocation(line: 2551, column: 16, scope: !482)
!631 = !DILocation(line: 2551, column: 10, scope: !482)
!632 = !DILocation(line: 2552, column: 13, scope: !482)
!633 = !DILocation(line: 2552, column: 10, scope: !482)
!634 = !DILocation(line: 2555, column: 14, scope: !482)
!635 = !DILocation(line: 2555, column: 21, scope: !482)
!636 = !DILocation(line: 2555, column: 28, scope: !482)
!637 = !DILocation(line: 2555, column: 10, scope: !482)
!638 = !DILocation(line: 2556, column: 10, scope: !482)
!639 = !DILocation(line: 2556, column: 3, scope: !482)
!640 = distinct !DISubprogram(name: "fio_cli_set_arg", scope: !3, file: !3, line: 121, type: !641, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !62, !8, !8, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!644 = !DILocalVariable(name: "arg", arg: 1, scope: !640, file: !3, line: 121, type: !62)
!645 = !DILocation(line: 121, column: 36, scope: !640)
!646 = !DILocalVariable(name: "value", arg: 2, scope: !640, file: !3, line: 121, type: !8)
!647 = !DILocation(line: 121, column: 53, scope: !640)
!648 = !DILocalVariable(name: "line", arg: 3, scope: !640, file: !3, line: 121, type: !8)
!649 = !DILocation(line: 121, column: 72, scope: !640)
!650 = !DILocalVariable(name: "parser", arg: 4, scope: !640, file: !3, line: 122, type: !643)
!651 = !DILocation(line: 122, column: 52, scope: !640)
!652 = !DILocation(line: 124, column: 8, scope: !653)
!653 = distinct !DILexicalBlock(scope: !640, file: !3, line: 124, column: 7)
!654 = !DILocation(line: 124, column: 13, scope: !653)
!655 = !DILocation(line: 124, column: 21, scope: !653)
!656 = !DILocation(line: 124, column: 17, scope: !653)
!657 = !DILocation(line: 124, column: 7, scope: !640)
!658 = !DILocation(line: 125, column: 10, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 125, column: 9)
!660 = distinct !DILexicalBlock(scope: !653, file: !3, line: 124, column: 26)
!661 = !DILocation(line: 125, column: 9, scope: !660)
!662 = !DILocation(line: 126, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !3, line: 125, column: 17)
!664 = !DILocation(line: 128, column: 17, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 128, column: 9)
!666 = !DILocation(line: 128, column: 10, scope: !665)
!667 = !DILocation(line: 128, column: 30, scope: !665)
!668 = !DILocation(line: 128, column: 45, scope: !665)
!669 = !DILocation(line: 128, column: 34, scope: !665)
!670 = !DILocation(line: 128, column: 58, scope: !665)
!671 = !DILocation(line: 129, column: 21, scope: !665)
!672 = !DILocation(line: 129, column: 10, scope: !665)
!673 = !DILocation(line: 129, column: 37, scope: !665)
!674 = !DILocation(line: 129, column: 52, scope: !665)
!675 = !DILocation(line: 129, column: 41, scope: !665)
!676 = !DILocation(line: 128, column: 9, scope: !660)
!677 = !DILocation(line: 130, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !665, file: !3, line: 129, column: 70)
!679 = !DILocalVariable(name: "n", scope: !660, file: !3, line: 132, type: !62)
!680 = !DILocation(line: 132, column: 12, scope: !660)
!681 = !DILocation(line: 132, column: 16, scope: !660)
!682 = !DILocation(line: 132, column: 26, scope: !660)
!683 = !DILocation(line: 132, column: 34, scope: !660)
!684 = !DILocation(line: 132, column: 24, scope: !660)
!685 = !DILocation(line: 133, column: 40, scope: !660)
!686 = !DILocation(line: 133, column: 48, scope: !660)
!687 = !DILocation(line: 133, column: 5, scope: !660)
!688 = !DILocation(line: 134, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !660, file: !3, line: 134, column: 9)
!690 = !DILocation(line: 134, column: 17, scope: !689)
!691 = !DILocation(line: 134, column: 29, scope: !689)
!692 = !DILocation(line: 134, column: 34, scope: !689)
!693 = !DILocation(line: 135, column: 9, scope: !689)
!694 = !DILocation(line: 135, column: 17, scope: !689)
!695 = !DILocation(line: 135, column: 33, scope: !689)
!696 = !DILocation(line: 135, column: 41, scope: !689)
!697 = !DILocation(line: 135, column: 31, scope: !689)
!698 = !DILocation(line: 134, column: 9, scope: !660)
!699 = !DILocation(line: 136, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !689, file: !3, line: 135, column: 54)
!701 = !DILocation(line: 136, column: 15, scope: !700)
!702 = !DILocation(line: 137, column: 7, scope: !700)
!703 = !DILocation(line: 139, column: 5, scope: !660)
!704 = !DILocalVariable(name: "type", scope: !640, file: !3, line: 143, type: !8)
!705 = !DILocation(line: 143, column: 15, scope: !640)
!706 = !DILocation(line: 143, column: 44, scope: !640)
!707 = !DILocation(line: 143, column: 52, scope: !640)
!708 = !DILocation(line: 143, column: 22, scope: !640)
!709 = !DILocation(line: 144, column: 19, scope: !640)
!710 = !DILocation(line: 144, column: 11, scope: !640)
!711 = !DILocation(line: 144, column: 3, scope: !640)
!712 = !DILocation(line: 146, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 146, column: 9)
!714 = distinct !DILexicalBlock(scope: !640, file: !3, line: 144, column: 25)
!715 = !DILocation(line: 146, column: 15, scope: !713)
!716 = !DILocation(line: 146, column: 18, scope: !713)
!717 = !DILocation(line: 146, column: 27, scope: !713)
!718 = !DILocation(line: 146, column: 35, scope: !713)
!719 = !DILocation(line: 146, column: 40, scope: !713)
!720 = !DILocation(line: 146, column: 48, scope: !713)
!721 = !DILocation(line: 146, column: 52, scope: !713)
!722 = !DILocation(line: 146, column: 24, scope: !713)
!723 = !DILocation(line: 146, column: 9, scope: !714)
!724 = !DILocation(line: 147, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !713, file: !3, line: 146, column: 58)
!726 = !DILocation(line: 149, column: 11, scope: !714)
!727 = !DILocation(line: 150, column: 5, scope: !714)
!728 = !DILocation(line: 152, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !714, file: !3, line: 152, column: 9)
!730 = !DILocation(line: 152, column: 9, scope: !714)
!731 = !DILocalVariable(name: "tmp", scope: !732, file: !3, line: 153, type: !8)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 152, column: 16)
!733 = !DILocation(line: 153, column: 19, scope: !732)
!734 = !DILocation(line: 153, column: 25, scope: !732)
!735 = !DILocation(line: 154, column: 7, scope: !732)
!736 = !DILocation(line: 155, column: 12, scope: !737)
!737 = distinct !DILexicalBlock(scope: !732, file: !3, line: 155, column: 11)
!738 = !DILocation(line: 155, column: 11, scope: !737)
!739 = !DILocation(line: 155, column: 11, scope: !732)
!740 = !DILocation(line: 156, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 155, column: 17)
!742 = !DILocation(line: 158, column: 5, scope: !732)
!743 = !DILocation(line: 161, column: 10, scope: !744)
!744 = distinct !DILexicalBlock(scope: !714, file: !3, line: 161, column: 9)
!745 = !DILocation(line: 161, column: 9, scope: !714)
!746 = !DILocation(line: 162, column: 7, scope: !744)
!747 = !DILocation(line: 163, column: 10, scope: !748)
!748 = distinct !DILexicalBlock(scope: !714, file: !3, line: 163, column: 9)
!749 = !DILocation(line: 163, column: 9, scope: !714)
!750 = !DILocation(line: 164, column: 7, scope: !748)
!751 = !DILocation(line: 165, column: 5, scope: !714)
!752 = !DILocalVariable(name: "n", scope: !753, file: !3, line: 170, type: !62)
!753 = distinct !DILexicalBlock(scope: !640, file: !3, line: 169, column: 3)
!754 = !DILocation(line: 170, column: 12, scope: !753)
!755 = !DILocation(line: 170, column: 16, scope: !753)
!756 = !DILocation(line: 170, column: 25, scope: !753)
!757 = !DILocation(line: 171, column: 5, scope: !753)
!758 = !DILocation(line: 171, column: 14, scope: !753)
!759 = !DILocation(line: 171, column: 12, scope: !753)
!760 = !DILocation(line: 171, column: 22, scope: !753)
!761 = !DILocation(line: 172, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !753, file: !3, line: 171, column: 30)
!763 = !DILocation(line: 172, column: 16, scope: !762)
!764 = !DILocation(line: 172, column: 23, scope: !762)
!765 = !DILocation(line: 172, column: 14, scope: !762)
!766 = !DILocation(line: 172, column: 28, scope: !762)
!767 = !DILocation(line: 172, column: 33, scope: !762)
!768 = !DILocation(line: 172, column: 40, scope: !762)
!769 = !DILocation(line: 172, column: 31, scope: !762)
!770 = !DILocation(line: 172, column: 45, scope: !762)
!771 = !DILocation(line: 172, column: 52, scope: !762)
!772 = !DILocation(line: 172, column: 57, scope: !762)
!773 = !DILocation(line: 172, column: 64, scope: !762)
!774 = !DILocation(line: 172, column: 55, scope: !762)
!775 = !DILocation(line: 172, column: 69, scope: !762)
!776 = !DILocation(line: 0, scope: !762)
!777 = !DILocation(line: 173, column: 13, scope: !778)
!778 = distinct !DILexicalBlock(scope: !762, file: !3, line: 172, column: 77)
!779 = !DILocation(line: 173, column: 9, scope: !778)
!780 = distinct !{!780, !761, !781}
!781 = !DILocation(line: 174, column: 7, scope: !762)
!782 = !DILocation(line: 175, column: 40, scope: !762)
!783 = !DILocation(line: 175, column: 64, scope: !762)
!784 = !DILocation(line: 175, column: 7, scope: !762)
!785 = !DILocation(line: 176, column: 7, scope: !762)
!786 = !DILocation(line: 176, column: 16, scope: !762)
!787 = !DILocation(line: 176, column: 23, scope: !762)
!788 = !DILocation(line: 176, column: 14, scope: !762)
!789 = !DILocation(line: 176, column: 28, scope: !762)
!790 = !DILocation(line: 176, column: 34, scope: !762)
!791 = !DILocation(line: 176, column: 41, scope: !762)
!792 = !DILocation(line: 176, column: 32, scope: !762)
!793 = !DILocation(line: 176, column: 46, scope: !762)
!794 = !DILocation(line: 176, column: 53, scope: !762)
!795 = !DILocation(line: 176, column: 58, scope: !762)
!796 = !DILocation(line: 176, column: 65, scope: !762)
!797 = !DILocation(line: 176, column: 56, scope: !762)
!798 = !DILocation(line: 176, column: 70, scope: !762)
!799 = !DILocation(line: 177, column: 13, scope: !800)
!800 = distinct !DILexicalBlock(scope: !762, file: !3, line: 176, column: 79)
!801 = !DILocation(line: 177, column: 9, scope: !800)
!802 = distinct !{!802, !785, !803}
!803 = !DILocation(line: 178, column: 7, scope: !762)
!804 = !DILocation(line: 179, column: 19, scope: !762)
!805 = !DILocation(line: 179, column: 9, scope: !762)
!806 = !DILocation(line: 179, column: 14, scope: !762)
!807 = !DILocation(line: 180, column: 9, scope: !762)
!808 = !DILocation(line: 180, column: 13, scope: !762)
!809 = distinct !{!809, !757, !810}
!810 = !DILocation(line: 181, column: 5, scope: !753)
!811 = !DILocation(line: 182, column: 3, scope: !753)
!812 = !DILabel(scope: !640, name: "finish", file: !3, line: 184)
!813 = !DILocation(line: 184, column: 1, scope: !640)
!814 = !DILocation(line: 187, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !640, file: !3, line: 187, column: 7)
!816 = !DILocation(line: 187, column: 13, scope: !815)
!817 = !DILocation(line: 187, column: 16, scope: !815)
!818 = !DILocation(line: 187, column: 24, scope: !815)
!819 = !DILocation(line: 187, column: 30, scope: !815)
!820 = !DILocation(line: 187, column: 38, scope: !815)
!821 = !DILocation(line: 187, column: 28, scope: !815)
!822 = !DILocation(line: 187, column: 43, scope: !815)
!823 = !DILocation(line: 188, column: 7, scope: !815)
!824 = !DILocation(line: 188, column: 16, scope: !815)
!825 = !DILocation(line: 188, column: 24, scope: !815)
!826 = !DILocation(line: 188, column: 29, scope: !815)
!827 = !DILocation(line: 188, column: 37, scope: !815)
!828 = !DILocation(line: 188, column: 41, scope: !815)
!829 = !DILocation(line: 188, column: 13, scope: !815)
!830 = !DILocation(line: 187, column: 7, scope: !640)
!831 = !DILocation(line: 189, column: 7, scope: !815)
!832 = !DILocation(line: 189, column: 15, scope: !815)
!833 = !DILocation(line: 189, column: 5, scope: !815)
!834 = !DILocation(line: 190, column: 3, scope: !640)
!835 = !DILabel(scope: !640, name: "error", file: !3, line: 192)
!836 = !DILocation(line: 192, column: 1, scope: !640)
!837 = !DILocation(line: 194, column: 11, scope: !640)
!838 = !DILocation(line: 195, column: 20, scope: !640)
!839 = !DILocation(line: 195, column: 11, scope: !640)
!840 = !DILocation(line: 195, column: 29, scope: !640)
!841 = !DILocation(line: 195, column: 39, scope: !640)
!842 = !DILocation(line: 195, column: 35, scope: !640)
!843 = !DILocation(line: 196, column: 11, scope: !640)
!844 = !DILocation(line: 196, column: 20, scope: !640)
!845 = !DILocation(line: 196, column: 31, scope: !640)
!846 = !DILocation(line: 194, column: 3, scope: !640)
!847 = !DILabel(scope: !640, name: "print_help", file: !3, line: 197)
!848 = !DILocation(line: 197, column: 1, scope: !640)
!849 = !DILocation(line: 198, column: 11, scope: !640)
!850 = !DILocation(line: 199, column: 11, scope: !640)
!851 = !DILocation(line: 199, column: 19, scope: !640)
!852 = !DILocation(line: 199, column: 33, scope: !640)
!853 = !DILocation(line: 199, column: 41, scope: !640)
!854 = !DILocation(line: 198, column: 3, scope: !640)
!855 = !DILocalVariable(name: "pos", scope: !640, file: !3, line: 203, type: !7)
!856 = !DILocation(line: 203, column: 16, scope: !640)
!857 = !DILocation(line: 203, column: 22, scope: !640)
!858 = !DILocation(line: 203, column: 30, scope: !640)
!859 = !DILocation(line: 204, column: 3, scope: !640)
!860 = !DILocation(line: 204, column: 11, scope: !640)
!861 = !DILocation(line: 204, column: 10, scope: !640)
!862 = !DILocation(line: 205, column: 24, scope: !863)
!863 = distinct !DILexicalBlock(scope: !640, file: !3, line: 204, column: 16)
!864 = !DILocation(line: 205, column: 23, scope: !863)
!865 = !DILocation(line: 205, column: 13, scope: !863)
!866 = !DILocation(line: 205, column: 5, scope: !863)
!867 = !DILocation(line: 211, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !3, line: 205, column: 29)
!869 = !DILocation(line: 212, column: 7, scope: !868)
!870 = distinct !{!870, !859, !871}
!871 = !DILocation(line: 294, column: 3, scope: !640)
!872 = !DILocation(line: 214, column: 10, scope: !863)
!873 = !DILocation(line: 215, column: 23, scope: !863)
!874 = !DILocation(line: 215, column: 13, scope: !863)
!875 = !DILocation(line: 215, column: 5, scope: !863)
!876 = !DILocation(line: 217, column: 15, scope: !877)
!877 = distinct !DILexicalBlock(scope: !863, file: !3, line: 215, column: 31)
!878 = !DILocation(line: 217, column: 31, scope: !877)
!879 = !DILocation(line: 217, column: 7, scope: !877)
!880 = !DILocation(line: 218, column: 11, scope: !877)
!881 = !DILocation(line: 219, column: 7, scope: !877)
!882 = !DILocation(line: 221, column: 15, scope: !877)
!883 = !DILocation(line: 221, column: 47, scope: !877)
!884 = !DILocation(line: 221, column: 7, scope: !877)
!885 = !DILocation(line: 222, column: 11, scope: !877)
!886 = !DILocation(line: 223, column: 7, scope: !877)
!887 = !DILocation(line: 228, column: 14, scope: !877)
!888 = !DILocation(line: 228, column: 12, scope: !877)
!889 = !DILocation(line: 229, column: 5, scope: !877)
!890 = !DILocalVariable(name: "alias_count", scope: !863, file: !3, line: 231, type: !6)
!891 = !DILocation(line: 231, column: 9, scope: !863)
!892 = !DILocalVariable(name: "first_len", scope: !863, file: !3, line: 232, type: !6)
!893 = !DILocation(line: 232, column: 9, scope: !863)
!894 = !DILocalVariable(name: "tmp", scope: !863, file: !3, line: 233, type: !43)
!895 = !DILocation(line: 233, column: 12, scope: !863)
!896 = !DILocalVariable(name: "p", scope: !863, file: !3, line: 234, type: !897)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!898 = !DILocation(line: 234, column: 23, scope: !863)
!899 = !DILocation(line: 234, column: 28, scope: !863)
!900 = !DILocation(line: 234, column: 27, scope: !863)
!901 = !DILocation(line: 235, column: 5, scope: !863)
!902 = !DILocation(line: 235, column: 12, scope: !863)
!903 = !DILocation(line: 235, column: 14, scope: !863)
!904 = !DILocation(line: 235, column: 19, scope: !863)
!905 = !DILocation(line: 236, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !863, file: !3, line: 235, column: 27)
!907 = !DILocation(line: 236, column: 14, scope: !906)
!908 = !DILocation(line: 236, column: 16, scope: !906)
!909 = !DILocation(line: 236, column: 21, scope: !906)
!910 = !DILocation(line: 236, column: 24, scope: !906)
!911 = !DILocation(line: 236, column: 26, scope: !906)
!912 = !DILocation(line: 236, column: 31, scope: !906)
!913 = !DILocation(line: 236, column: 38, scope: !906)
!914 = !DILocation(line: 236, column: 41, scope: !906)
!915 = !DILocation(line: 236, column: 43, scope: !906)
!916 = !DILocation(line: 236, column: 48, scope: !906)
!917 = !DILocation(line: 0, scope: !906)
!918 = !DILocation(line: 237, column: 14, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 237, column: 13)
!920 = distinct !DILexicalBlock(scope: !906, file: !3, line: 236, column: 56)
!921 = !DILocation(line: 237, column: 13, scope: !920)
!922 = !DILocation(line: 238, column: 11, scope: !919)
!923 = !DILocation(line: 239, column: 9, scope: !920)
!924 = distinct !{!924, !905, !925}
!925 = !DILocation(line: 240, column: 7, scope: !906)
!926 = !DILocation(line: 241, column: 7, scope: !906)
!927 = !DILocation(line: 242, column: 7, scope: !906)
!928 = !DILocation(line: 242, column: 14, scope: !906)
!929 = !DILocation(line: 242, column: 16, scope: !906)
!930 = !DILocation(line: 242, column: 21, scope: !906)
!931 = !DILocation(line: 242, column: 25, scope: !906)
!932 = !DILocation(line: 242, column: 27, scope: !906)
!933 = !DILocation(line: 242, column: 32, scope: !906)
!934 = !DILocation(line: 242, column: 39, scope: !906)
!935 = !DILocation(line: 242, column: 42, scope: !906)
!936 = !DILocation(line: 242, column: 44, scope: !906)
!937 = !DILocation(line: 242, column: 49, scope: !906)
!938 = !DILocation(line: 243, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !906, file: !3, line: 242, column: 58)
!940 = distinct !{!940, !927, !941}
!941 = !DILocation(line: 244, column: 7, scope: !906)
!942 = distinct !{!942, !901, !943}
!943 = !DILocation(line: 245, column: 5, scope: !863)
!944 = !DILocation(line: 246, column: 21, scope: !863)
!945 = !DILocation(line: 246, column: 13, scope: !863)
!946 = !DILocation(line: 246, column: 5, scope: !863)
!947 = !DILocation(line: 248, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !863, file: !3, line: 246, column: 27)
!949 = !DILocation(line: 248, column: 69, scope: !948)
!950 = !DILocation(line: 249, column: 15, scope: !948)
!951 = !DILocation(line: 249, column: 18, scope: !948)
!952 = !DILocation(line: 249, column: 22, scope: !948)
!953 = !DILocation(line: 249, column: 20, scope: !948)
!954 = !DILocation(line: 248, column: 7, scope: !948)
!955 = !DILocation(line: 250, column: 7, scope: !948)
!956 = !DILocation(line: 252, column: 15, scope: !948)
!957 = !DILocation(line: 252, column: 55, scope: !948)
!958 = !DILocation(line: 252, column: 66, scope: !948)
!959 = !DILocation(line: 252, column: 69, scope: !948)
!960 = !DILocation(line: 252, column: 73, scope: !948)
!961 = !DILocation(line: 252, column: 71, scope: !948)
!962 = !DILocation(line: 252, column: 7, scope: !948)
!963 = !DILocation(line: 253, column: 7, scope: !948)
!964 = !DILocation(line: 255, column: 15, scope: !948)
!965 = !DILocation(line: 255, column: 69, scope: !948)
!966 = !DILocation(line: 256, column: 15, scope: !948)
!967 = !DILocation(line: 256, column: 18, scope: !948)
!968 = !DILocation(line: 256, column: 22, scope: !948)
!969 = !DILocation(line: 256, column: 20, scope: !948)
!970 = !DILocation(line: 255, column: 7, scope: !948)
!971 = !DILocation(line: 257, column: 7, scope: !948)
!972 = !DILocation(line: 260, column: 11, scope: !863)
!973 = !DILocation(line: 260, column: 9, scope: !863)
!974 = !DILocation(line: 261, column: 5, scope: !863)
!975 = !DILocation(line: 261, column: 12, scope: !863)
!976 = !DILocation(line: 261, column: 14, scope: !863)
!977 = !DILocation(line: 261, column: 19, scope: !863)
!978 = !DILocation(line: 261, column: 23, scope: !863)
!979 = !DILocation(line: 261, column: 25, scope: !863)
!980 = !DILocation(line: 261, column: 30, scope: !863)
!981 = !DILocation(line: 261, column: 37, scope: !863)
!982 = !DILocation(line: 261, column: 40, scope: !863)
!983 = !DILocation(line: 261, column: 42, scope: !863)
!984 = !DILocation(line: 261, column: 47, scope: !863)
!985 = !DILocation(line: 0, scope: !863)
!986 = !DILocation(line: 262, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !863, file: !3, line: 261, column: 56)
!988 = distinct !{!988, !974, !989}
!989 = !DILocation(line: 263, column: 5, scope: !863)
!990 = !DILocation(line: 264, column: 5, scope: !863)
!991 = !DILocation(line: 264, column: 12, scope: !863)
!992 = !DILocation(line: 264, column: 14, scope: !863)
!993 = !DILocation(line: 264, column: 19, scope: !863)
!994 = !DILocalVariable(name: "start", scope: !995, file: !3, line: 265, type: !996)
!995 = distinct !DILexicalBlock(scope: !863, file: !3, line: 264, column: 27)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!997 = !DILocation(line: 265, column: 20, scope: !995)
!998 = !DILocation(line: 265, column: 28, scope: !995)
!999 = !DILocation(line: 266, column: 7, scope: !995)
!1000 = !DILocation(line: 266, column: 14, scope: !995)
!1001 = !DILocation(line: 266, column: 16, scope: !995)
!1002 = !DILocation(line: 266, column: 21, scope: !995)
!1003 = !DILocation(line: 266, column: 24, scope: !995)
!1004 = !DILocation(line: 266, column: 26, scope: !995)
!1005 = !DILocation(line: 266, column: 31, scope: !995)
!1006 = !DILocation(line: 266, column: 38, scope: !995)
!1007 = !DILocation(line: 266, column: 41, scope: !995)
!1008 = !DILocation(line: 266, column: 43, scope: !995)
!1009 = !DILocation(line: 266, column: 48, scope: !995)
!1010 = !DILocation(line: 0, scope: !995)
!1011 = !DILocation(line: 267, column: 9, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !995, file: !3, line: 266, column: 56)
!1013 = distinct !{!1013, !999, !1014}
!1014 = !DILocation(line: 268, column: 7, scope: !995)
!1015 = !DILocalVariable(name: "padding", scope: !995, file: !3, line: 269, type: !6)
!1016 = !DILocation(line: 269, column: 11, scope: !995)
!1017 = !DILocation(line: 269, column: 21, scope: !995)
!1018 = !DILocation(line: 269, column: 34, scope: !995)
!1019 = !DILocation(line: 269, column: 40, scope: !995)
!1020 = !DILocation(line: 269, column: 38, scope: !995)
!1021 = !DILocation(line: 269, column: 31, scope: !995)
!1022 = !DILocation(line: 270, column: 11, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !995, file: !3, line: 270, column: 11)
!1024 = !DILocation(line: 270, column: 19, scope: !1023)
!1025 = !DILocation(line: 270, column: 11, scope: !995)
!1026 = !DILocation(line: 271, column: 17, scope: !1023)
!1027 = !DILocation(line: 271, column: 9, scope: !1023)
!1028 = !DILocation(line: 272, column: 23, scope: !995)
!1029 = !DILocation(line: 272, column: 15, scope: !995)
!1030 = !DILocation(line: 272, column: 7, scope: !995)
!1031 = !DILocation(line: 274, column: 17, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !995, file: !3, line: 272, column: 29)
!1033 = !DILocation(line: 277, column: 23, scope: !1032)
!1034 = !DILocation(line: 277, column: 29, scope: !1032)
!1035 = !DILocation(line: 277, column: 27, scope: !1032)
!1036 = !DILocation(line: 277, column: 17, scope: !1032)
!1037 = !DILocation(line: 277, column: 37, scope: !1032)
!1038 = !DILocation(line: 277, column: 41, scope: !1032)
!1039 = !DILocation(line: 277, column: 39, scope: !1032)
!1040 = !DILocation(line: 277, column: 48, scope: !1032)
!1041 = !DILocation(line: 277, column: 61, scope: !1032)
!1042 = !DILocation(line: 277, column: 72, scope: !1032)
!1043 = !DILocation(line: 274, column: 9, scope: !1032)
!1044 = !DILocation(line: 278, column: 9, scope: !1032)
!1045 = !DILocation(line: 280, column: 17, scope: !1032)
!1046 = !DILocation(line: 282, column: 23, scope: !1032)
!1047 = !DILocation(line: 282, column: 29, scope: !1032)
!1048 = !DILocation(line: 282, column: 27, scope: !1032)
!1049 = !DILocation(line: 282, column: 17, scope: !1032)
!1050 = !DILocation(line: 282, column: 37, scope: !1032)
!1051 = !DILocation(line: 282, column: 41, scope: !1032)
!1052 = !DILocation(line: 282, column: 39, scope: !1032)
!1053 = !DILocation(line: 282, column: 48, scope: !1032)
!1054 = !DILocation(line: 282, column: 61, scope: !1032)
!1055 = !DILocation(line: 282, column: 72, scope: !1032)
!1056 = !DILocation(line: 280, column: 9, scope: !1032)
!1057 = !DILocation(line: 283, column: 9, scope: !1032)
!1058 = !DILocation(line: 285, column: 17, scope: !1032)
!1059 = !DILocation(line: 288, column: 23, scope: !1032)
!1060 = !DILocation(line: 288, column: 29, scope: !1032)
!1061 = !DILocation(line: 288, column: 27, scope: !1032)
!1062 = !DILocation(line: 288, column: 17, scope: !1032)
!1063 = !DILocation(line: 288, column: 37, scope: !1032)
!1064 = !DILocation(line: 288, column: 41, scope: !1032)
!1065 = !DILocation(line: 288, column: 39, scope: !1032)
!1066 = !DILocation(line: 288, column: 48, scope: !1032)
!1067 = !DILocation(line: 288, column: 61, scope: !1032)
!1068 = !DILocation(line: 288, column: 72, scope: !1032)
!1069 = !DILocation(line: 285, column: 9, scope: !1032)
!1070 = !DILocation(line: 289, column: 9, scope: !1032)
!1071 = distinct !{!1071, !990, !1072}
!1072 = !DILocation(line: 291, column: 5, scope: !863)
!1073 = !DILocation(line: 293, column: 5, scope: !863)
!1074 = !DILocation(line: 295, column: 11, scope: !640)
!1075 = !DILocation(line: 295, column: 3, scope: !640)
!1076 = !DILocation(line: 300, column: 3, scope: !640)
!1077 = !DILocation(line: 301, column: 3, scope: !640)
!1078 = !DILocation(line: 302, column: 1, scope: !640)
!1079 = distinct !DISubprogram(name: "fio_cli_hash_free", scope: !14, file: !14, line: 6024, type: !1080, scopeLine: 6024, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !449}
!1082 = !DILocalVariable(name: "s", arg: 1, scope: !1079, file: !14, line: 6024, type: !449)
!1083 = !DILocation(line: 6024, column: 45, scope: !1079)
!1084 = !DILocalVariable(name: "end", scope: !1079, file: !14, line: 6026, type: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1088 = !DILocation(line: 6026, column: 38, scope: !1079)
!1089 = !DILocation(line: 6026, column: 44, scope: !1079)
!1090 = !DILocation(line: 6026, column: 47, scope: !1079)
!1091 = !DILocation(line: 6026, column: 57, scope: !1079)
!1092 = !DILocation(line: 6026, column: 60, scope: !1079)
!1093 = !DILocation(line: 6026, column: 55, scope: !1079)
!1094 = !DILocation(line: 6027, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1079, file: !14, line: 6027, column: 7)
!1096 = !DILocation(line: 6027, column: 10, scope: !1095)
!1097 = !DILocation(line: 6027, column: 18, scope: !1095)
!1098 = !DILocation(line: 6027, column: 21, scope: !1095)
!1099 = !DILocation(line: 6027, column: 24, scope: !1095)
!1100 = !DILocation(line: 6027, column: 35, scope: !1095)
!1101 = !DILocation(line: 6027, column: 32, scope: !1095)
!1102 = !DILocation(line: 6027, column: 7, scope: !1079)
!1103 = !DILocalVariable(name: "pos", scope: !1104, file: !14, line: 6028, type: !52)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !14, line: 6028, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1095, file: !14, line: 6027, column: 40)
!1106 = !DILocation(line: 6028, column: 33, scope: !1104)
!1107 = !DILocation(line: 6028, column: 39, scope: !1104)
!1108 = !DILocation(line: 6028, column: 42, scope: !1104)
!1109 = !DILocation(line: 6028, column: 10, scope: !1104)
!1110 = !DILocation(line: 6028, column: 51, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !14, line: 6028, column: 5)
!1112 = !DILocation(line: 6028, column: 57, scope: !1111)
!1113 = !DILocation(line: 6028, column: 55, scope: !1111)
!1114 = !DILocation(line: 6028, column: 5, scope: !1104)
!1115 = !DILocation(line: 6029, column: 12, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !14, line: 6029, column: 11)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !14, line: 6028, column: 69)
!1118 = !DILocation(line: 6029, column: 11, scope: !1117)
!1119 = !DILocation(line: 6030, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !14, line: 6029, column: 67)
!1121 = !DILocation(line: 6030, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1120, file: !14, line: 6030, column: 9)
!1123 = !DILocation(line: 6031, column: 7, scope: !1120)
!1124 = !DILocation(line: 6032, column: 5, scope: !1117)
!1125 = !DILocation(line: 6028, column: 62, scope: !1111)
!1126 = !DILocation(line: 6028, column: 5, scope: !1111)
!1127 = distinct !{!1127, !1114, !1128}
!1128 = !DILocation(line: 6032, column: 5, scope: !1104)
!1129 = !DILocation(line: 6033, column: 3, scope: !1105)
!1130 = !DILocation(line: 6035, column: 3, scope: !1079)
!1131 = !DILocation(line: 6036, column: 3, scope: !1079)
!1132 = !DILocation(line: 6037, column: 4, scope: !1079)
!1133 = !DILocation(line: 6037, column: 8, scope: !1079)
!1134 = !DILocation(line: 6038, column: 1, scope: !1079)
!1135 = distinct !DISubprogram(name: "fio_cli_get", scope: !3, file: !3, line: 390, type: !1136, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!8, !8}
!1138 = !DILocalVariable(name: "name", arg: 1, scope: !1135, file: !3, line: 390, type: !8)
!1139 = !DILocation(line: 390, column: 37, scope: !1135)
!1140 = !DILocalVariable(name: "n", scope: !1135, file: !3, line: 391, type: !62)
!1141 = !DILocation(line: 391, column: 10, scope: !1135)
!1142 = !DILocation(line: 391, column: 14, scope: !1135)
!1143 = !DILocation(line: 391, column: 43, scope: !1135)
!1144 = !DILocation(line: 391, column: 36, scope: !1135)
!1145 = !DILocation(line: 391, column: 23, scope: !1135)
!1146 = !DILocation(line: 392, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 392, column: 7)
!1148 = !DILocation(line: 392, column: 7, scope: !1135)
!1149 = !DILocation(line: 393, column: 5, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 392, column: 41)
!1151 = !DILocalVariable(name: "val", scope: !1135, file: !3, line: 395, type: !8)
!1152 = !DILocation(line: 395, column: 15, scope: !1135)
!1153 = !DILocation(line: 395, column: 52, scope: !1135)
!1154 = !DILocation(line: 395, column: 21, scope: !1135)
!1155 = !DILocation(line: 396, column: 10, scope: !1135)
!1156 = !DILocation(line: 396, column: 3, scope: !1135)
!1157 = !DILocation(line: 397, column: 1, scope: !1135)
!1158 = distinct !DISubprogram(name: "fio_cli_get_i", scope: !3, file: !3, line: 400, type: !1159, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!6, !8}
!1161 = !DILocalVariable(name: "name", arg: 1, scope: !1158, file: !3, line: 400, type: !8)
!1162 = !DILocation(line: 400, column: 31, scope: !1158)
!1163 = !DILocalVariable(name: "val", scope: !1158, file: !3, line: 401, type: !8)
!1164 = !DILocation(line: 401, column: 15, scope: !1158)
!1165 = !DILocation(line: 401, column: 33, scope: !1158)
!1166 = !DILocation(line: 401, column: 21, scope: !1158)
!1167 = !DILocation(line: 402, column: 8, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 402, column: 7)
!1169 = !DILocation(line: 402, column: 7, scope: !1158)
!1170 = !DILocation(line: 403, column: 5, scope: !1168)
!1171 = !DILocalVariable(name: "i", scope: !1158, file: !3, line: 404, type: !6)
!1172 = !DILocation(line: 404, column: 7, scope: !1158)
!1173 = !DILocation(line: 404, column: 16, scope: !1158)
!1174 = !DILocation(line: 404, column: 11, scope: !1158)
!1175 = !DILocation(line: 405, column: 10, scope: !1158)
!1176 = !DILocation(line: 405, column: 3, scope: !1158)
!1177 = !DILocation(line: 406, column: 1, scope: !1158)
!1178 = distinct !DISubprogram(name: "fio_cli_unnamed_count", scope: !3, file: !3, line: 409, type: !1179, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!15}
!1181 = !DILocation(line: 410, column: 24, scope: !1178)
!1182 = !DILocation(line: 410, column: 10, scope: !1178)
!1183 = !DILocation(line: 410, column: 3, scope: !1178)
!1184 = distinct !DISubprogram(name: "fio_cli_unnamed", scope: !3, file: !3, line: 414, type: !1185, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!8, !15}
!1187 = !DILocalVariable(name: "index", arg: 1, scope: !1184, file: !3, line: 414, type: !15)
!1188 = !DILocation(line: 414, column: 42, scope: !1184)
!1189 = !DILocation(line: 415, column: 8, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 415, column: 7)
!1191 = !DILocation(line: 415, column: 40, scope: !1190)
!1192 = !DILocation(line: 415, column: 44, scope: !1190)
!1193 = !DILocation(line: 415, column: 7, scope: !1184)
!1194 = !DILocation(line: 416, column: 5, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 415, column: 63)
!1196 = !DILocalVariable(name: "n", scope: !1184, file: !3, line: 418, type: !62)
!1197 = !DILocation(line: 418, column: 10, scope: !1184)
!1198 = !DILocation(line: 418, column: 14, scope: !1184)
!1199 = !DILocation(line: 418, column: 36, scope: !1184)
!1200 = !DILocation(line: 418, column: 42, scope: !1184)
!1201 = !DILocation(line: 419, column: 41, scope: !1184)
!1202 = !DILocation(line: 419, column: 47, scope: !1184)
!1203 = !DILocation(line: 419, column: 10, scope: !1184)
!1204 = !DILocation(line: 419, column: 3, scope: !1184)
!1205 = !DILocation(line: 420, column: 1, scope: !1184)
!1206 = distinct !DISubprogram(name: "fio_cli_set", scope: !3, file: !3, line: 428, type: !1207, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !8, !8}
!1209 = !DILocalVariable(name: "name", arg: 1, scope: !1206, file: !3, line: 428, type: !8)
!1210 = !DILocation(line: 428, column: 30, scope: !1206)
!1211 = !DILocalVariable(name: "value", arg: 2, scope: !1206, file: !3, line: 428, type: !8)
!1212 = !DILocation(line: 428, column: 48, scope: !1206)
!1213 = !DILocalVariable(name: "n", scope: !1206, file: !3, line: 429, type: !62)
!1214 = !DILocation(line: 429, column: 10, scope: !1206)
!1215 = !DILocation(line: 429, column: 22, scope: !1206)
!1216 = !DILocation(line: 429, column: 51, scope: !1206)
!1217 = !DILocation(line: 429, column: 44, scope: !1206)
!1218 = !DILocation(line: 429, column: 31, scope: !1206)
!1219 = !DILocation(line: 430, column: 36, scope: !1206)
!1220 = !DILocation(line: 430, column: 60, scope: !1206)
!1221 = !DILocation(line: 430, column: 3, scope: !1206)
!1222 = !DILocation(line: 431, column: 1, scope: !1206)
!1223 = distinct !DISubprogram(name: "fio_cli_hash_insert", scope: !14, file: !14, line: 6073, type: !1224, scopeLine: 6076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !449, !450, !62, !8, !7}
!1226 = !DILocalVariable(name: "set", arg: 1, scope: !1223, file: !14, line: 6073, type: !449)
!1227 = !DILocation(line: 6073, column: 46, scope: !1223)
!1228 = !DILocalVariable(name: "hash_value", arg: 2, scope: !1223, file: !14, line: 6074, type: !450)
!1229 = !DILocation(line: 6074, column: 56, scope: !1223)
!1230 = !DILocalVariable(name: "key", arg: 3, scope: !1223, file: !14, line: 6075, type: !62)
!1231 = !DILocation(line: 6075, column: 49, scope: !1223)
!1232 = !DILocalVariable(name: "obj", arg: 4, scope: !1223, file: !14, line: 6075, type: !8)
!1233 = !DILocation(line: 6075, column: 71, scope: !1223)
!1234 = !DILocalVariable(name: "old", arg: 5, scope: !1223, file: !14, line: 6076, type: !7)
!1235 = !DILocation(line: 6076, column: 50, scope: !1223)
!1236 = !DILocation(line: 6078, column: 4, scope: !1223)
!1237 = !DILocation(line: 6078, column: 9, scope: !1223)
!1238 = !DILocation(line: 6078, column: 35, scope: !1223)
!1239 = !DILocation(line: 6078, column: 43, scope: !1223)
!1240 = !DILocation(line: 6078, column: 55, scope: !1223)
!1241 = !DILocation(line: 6078, column: 64, scope: !1223)
!1242 = !DILocation(line: 6077, column: 3, scope: !1223)
!1243 = !DILocation(line: 6079, column: 1, scope: !1223)
!1244 = distinct !DISubprogram(name: "fio_cli_hash__find_map_pos_", scope: !14, file: !14, line: 5848, type: !1245, scopeLine: 5849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!46, !449, !45, !58}
!1247 = !DILocalVariable(name: "set", arg: 1, scope: !1244, file: !14, line: 5848, type: !449)
!1248 = !DILocation(line: 5848, column: 44, scope: !1244)
!1249 = !DILocalVariable(name: "hash_value", arg: 2, scope: !1244, file: !14, line: 5848, type: !45)
!1250 = !DILocation(line: 5848, column: 67, scope: !1244)
!1251 = !DILocalVariable(name: "obj", arg: 3, scope: !1244, file: !14, line: 5849, type: !58)
!1252 = !DILocation(line: 5849, column: 43, scope: !1244)
!1253 = !DILocation(line: 5850, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1244, file: !14, line: 5850, column: 7)
!1255 = !DILocation(line: 5850, column: 7, scope: !1244)
!1256 = !DILocation(line: 5851, column: 16, scope: !1254)
!1257 = !DILocation(line: 5851, column: 5, scope: !1254)
!1258 = !DILocation(line: 5852, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1244, file: !14, line: 5852, column: 7)
!1260 = !DILocation(line: 5852, column: 12, scope: !1259)
!1261 = !DILocation(line: 5852, column: 7, scope: !1244)
!1262 = !DILocation(line: 5854, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !14, line: 5854, column: 9)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !14, line: 5852, column: 17)
!1265 = !DILocation(line: 5854, column: 14, scope: !1263)
!1266 = !DILocation(line: 5854, column: 29, scope: !1263)
!1267 = !DILocation(line: 5854, column: 32, scope: !1263)
!1268 = !DILocation(line: 5854, column: 37, scope: !1263)
!1269 = !DILocation(line: 5854, column: 44, scope: !1263)
!1270 = !DILocation(line: 5854, column: 49, scope: !1263)
!1271 = !DILocation(line: 5854, column: 41, scope: !1263)
!1272 = !DILocation(line: 5854, column: 9, scope: !1264)
!1273 = !DILocation(line: 5855, column: 24, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1263, file: !14, line: 5854, column: 56)
!1275 = !DILocation(line: 5855, column: 7, scope: !1274)
!1276 = !DILocation(line: 5856, column: 5, scope: !1274)
!1277 = !DILocalVariable(name: "full_collisions_counter", scope: !1264, file: !14, line: 5857, type: !43)
!1278 = !DILocation(line: 5857, column: 12, scope: !1264)
!1279 = !DILocalVariable(name: "pos", scope: !1264, file: !14, line: 5858, type: !46)
!1280 = !DILocation(line: 5858, column: 25, scope: !1264)
!1281 = !DILocalVariable(name: "mask", scope: !1264, file: !14, line: 5863, type: !450)
!1282 = !DILocation(line: 5863, column: 21, scope: !1264)
!1283 = !DILocation(line: 5863, column: 37, scope: !1264)
!1284 = !DILocation(line: 5863, column: 42, scope: !1264)
!1285 = !DILocation(line: 5863, column: 34, scope: !1264)
!1286 = !DILocation(line: 5863, column: 53, scope: !1264)
!1287 = !DILocalVariable(name: "i", scope: !1264, file: !14, line: 5865, type: !45)
!1288 = !DILocation(line: 5865, column: 15, scope: !1264)
!1289 = !DILocalVariable(name: "hash_value_i", scope: !1264, file: !14, line: 5866, type: !450)
!1290 = !DILocation(line: 5866, column: 21, scope: !1264)
!1291 = !DILocation(line: 5866, column: 36, scope: !1264)
!1292 = !DILocalVariable(name: "hash_alt", scope: !1264, file: !14, line: 5867, type: !45)
!1293 = !DILocation(line: 5867, column: 15, scope: !1264)
!1294 = !DILocation(line: 5867, column: 26, scope: !1264)
!1295 = !DILocation(line: 5870, column: 11, scope: !1264)
!1296 = !DILocation(line: 5870, column: 16, scope: !1264)
!1297 = !DILocation(line: 5870, column: 23, scope: !1264)
!1298 = !DILocation(line: 5870, column: 34, scope: !1264)
!1299 = !DILocation(line: 5870, column: 32, scope: !1264)
!1300 = !DILocation(line: 5870, column: 20, scope: !1264)
!1301 = !DILocation(line: 5870, column: 9, scope: !1264)
!1302 = !DILocation(line: 5871, column: 9, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1264, file: !14, line: 5871, column: 9)
!1304 = !DILocation(line: 5871, column: 9, scope: !1264)
!1305 = !DILocation(line: 5872, column: 14, scope: !1303)
!1306 = !DILocation(line: 5872, column: 7, scope: !1303)
!1307 = !DILocation(line: 5873, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1264, file: !14, line: 5873, column: 9)
!1309 = !DILocation(line: 5873, column: 9, scope: !1264)
!1310 = !DILocation(line: 5874, column: 12, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !14, line: 5874, column: 11)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !14, line: 5873, column: 56)
!1313 = !DILocation(line: 5874, column: 17, scope: !1311)
!1314 = !DILocation(line: 5874, column: 21, scope: !1311)
!1315 = !DILocation(line: 5874, column: 25, scope: !1311)
!1316 = !DILocation(line: 5874, column: 11, scope: !1312)
!1317 = !DILocation(line: 5875, column: 16, scope: !1311)
!1318 = !DILocation(line: 5875, column: 9, scope: !1311)
!1319 = !DILocation(line: 5877, column: 7, scope: !1312)
!1320 = !DILocation(line: 5877, column: 12, scope: !1312)
!1321 = !DILocation(line: 5877, column: 27, scope: !1312)
!1322 = !DILocation(line: 5878, column: 7, scope: !1312)
!1323 = !DILocation(line: 5879, column: 5, scope: !1312)
!1324 = !DILocation(line: 5882, column: 7, scope: !1264)
!1325 = !DILocalVariable(name: "limit", scope: !1264, file: !14, line: 5883, type: !450)
!1326 = !DILocation(line: 5883, column: 21, scope: !1264)
!1327 = !DILocation(line: 5884, column: 33, scope: !1264)
!1328 = !DILocation(line: 5884, column: 38, scope: !1264)
!1329 = !DILocation(line: 5884, column: 43, scope: !1264)
!1330 = !DILocation(line: 5886, column: 40, scope: !1264)
!1331 = !DILocation(line: 5886, column: 45, scope: !1264)
!1332 = !DILocation(line: 5886, column: 50, scope: !1264)
!1333 = !DILocation(line: 5884, column: 30, scope: !1264)
!1334 = !DILocation(line: 5887, column: 5, scope: !1264)
!1335 = !DILocation(line: 5887, column: 12, scope: !1264)
!1336 = !DILocation(line: 5887, column: 16, scope: !1264)
!1337 = !DILocation(line: 5887, column: 14, scope: !1264)
!1338 = !DILocation(line: 5888, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1264, file: !14, line: 5887, column: 23)
!1340 = !DILocation(line: 5889, column: 13, scope: !1339)
!1341 = !DILocation(line: 5889, column: 18, scope: !1339)
!1342 = !DILocation(line: 5889, column: 26, scope: !1339)
!1343 = !DILocation(line: 5889, column: 37, scope: !1339)
!1344 = !DILocation(line: 5889, column: 35, scope: !1339)
!1345 = !DILocation(line: 5889, column: 42, scope: !1339)
!1346 = !DILocation(line: 5889, column: 40, scope: !1339)
!1347 = !DILocation(line: 5889, column: 22, scope: !1339)
!1348 = !DILocation(line: 5889, column: 11, scope: !1339)
!1349 = !DILocation(line: 5890, column: 11, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1339, file: !14, line: 5890, column: 11)
!1351 = !DILocation(line: 5890, column: 11, scope: !1339)
!1352 = !DILocation(line: 5891, column: 16, scope: !1350)
!1353 = !DILocation(line: 5891, column: 9, scope: !1350)
!1354 = !DILocation(line: 5892, column: 11, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1339, file: !14, line: 5892, column: 11)
!1356 = !DILocation(line: 5892, column: 11, scope: !1339)
!1357 = !DILocation(line: 5893, column: 14, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !14, line: 5893, column: 13)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !14, line: 5892, column: 58)
!1360 = !DILocation(line: 5893, column: 19, scope: !1358)
!1361 = !DILocation(line: 5893, column: 23, scope: !1358)
!1362 = !DILocation(line: 5893, column: 27, scope: !1358)
!1363 = !DILocation(line: 5893, column: 13, scope: !1359)
!1364 = !DILocation(line: 5894, column: 18, scope: !1358)
!1365 = !DILocation(line: 5894, column: 11, scope: !1358)
!1366 = !DILocation(line: 5896, column: 9, scope: !1359)
!1367 = !DILocation(line: 5896, column: 14, scope: !1359)
!1368 = !DILocation(line: 5896, column: 29, scope: !1359)
!1369 = !DILocation(line: 5897, column: 13, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1359, file: !14, line: 5897, column: 13)
!1371 = !DILocation(line: 5897, column: 39, scope: !1370)
!1372 = !DILocation(line: 5897, column: 13, scope: !1359)
!1373 = !DILocation(line: 5899, column: 11, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !14, line: 5897, column: 75)
!1375 = !DILocation(line: 5899, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !14, line: 5899, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !14, line: 5899, column: 11)
!1378 = !DILocation(line: 5899, column: 11, scope: !1377)
!1379 = !DILocation(line: 5899, column: 11, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !14, line: 5899, column: 11)
!1381 = !DILocation(line: 5901, column: 11, scope: !1374)
!1382 = !DILocation(line: 5901, column: 16, scope: !1374)
!1383 = !DILocation(line: 5901, column: 29, scope: !1374)
!1384 = !DILocation(line: 5902, column: 9, scope: !1374)
!1385 = !DILocation(line: 5903, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1359, file: !14, line: 5903, column: 13)
!1387 = !DILocation(line: 5903, column: 18, scope: !1386)
!1388 = !DILocation(line: 5903, column: 13, scope: !1359)
!1389 = !DILocation(line: 5904, column: 18, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !14, line: 5903, column: 32)
!1391 = !DILocation(line: 5904, column: 11, scope: !1390)
!1392 = !DILocation(line: 5906, column: 7, scope: !1359)
!1393 = distinct !{!1393, !1334, !1394}
!1394 = !DILocation(line: 5907, column: 5, scope: !1264)
!1395 = !DILocation(line: 5908, column: 3, scope: !1264)
!1396 = !DILocation(line: 5909, column: 3, scope: !1244)
!1397 = !DILocation(line: 5911, column: 1, scope: !1244)
!1398 = distinct !DISubprogram(name: "fio_cli_hash_rehash", scope: !14, file: !14, line: 6276, type: !1080, scopeLine: 6276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1399 = !DILocalVariable(name: "set", arg: 1, scope: !1398, file: !14, line: 6276, type: !449)
!1400 = !DILocation(line: 6276, column: 46, scope: !1398)
!1401 = !DILocation(line: 6277, column: 37, scope: !1398)
!1402 = !DILocation(line: 6277, column: 3, scope: !1398)
!1403 = !DILocation(line: 6278, column: 3, scope: !1398)
!1404 = !DILocation(line: 6278, column: 8, scope: !1398)
!1405 = !DILocation(line: 6278, column: 23, scope: !1398)
!1406 = !DILocalVariable(name: "attempts", scope: !1398, file: !14, line: 6279, type: !69)
!1407 = !DILocation(line: 6279, column: 11, scope: !1398)
!1408 = !DILocation(line: 6279, column: 3, scope: !1398)
!1409 = !DILabel(scope: !1398, name: "restart", file: !14, line: 6280)
!1410 = !DILocation(line: 6280, column: 1, scope: !1398)
!1411 = !DILocation(line: 6281, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1398, file: !14, line: 6281, column: 7)
!1413 = !DILocation(line: 6281, column: 12, scope: !1412)
!1414 = !DILocation(line: 6281, column: 22, scope: !1412)
!1415 = !DILocation(line: 6281, column: 28, scope: !1412)
!1416 = !DILocation(line: 6281, column: 31, scope: !1412)
!1417 = !DILocation(line: 6281, column: 42, scope: !1412)
!1418 = !DILocation(line: 6281, column: 47, scope: !1412)
!1419 = !DILocation(line: 6281, column: 50, scope: !1412)
!1420 = !DILocation(line: 6281, column: 55, scope: !1412)
!1421 = !DILocation(line: 6281, column: 7, scope: !1398)
!1422 = !DILocation(line: 6282, column: 5, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1412, file: !14, line: 6281, column: 71)
!1424 = !DILocation(line: 6282, column: 5, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !14, line: 6282, column: 5)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !14, line: 6282, column: 5)
!1427 = !DILocation(line: 6282, column: 5, scope: !1426)
!1428 = !DILocation(line: 6282, column: 5, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !14, line: 6282, column: 5)
!1430 = !DILocation(line: 6289, column: 5, scope: !1423)
!1431 = !DILocation(line: 6291, column: 34, scope: !1398)
!1432 = !DILocation(line: 6291, column: 3, scope: !1398)
!1433 = !DILocalVariable(name: "end", scope: !1434, file: !14, line: 6293, type: !1085)
!1434 = distinct !DILexicalBlock(scope: !1398, file: !14, line: 6292, column: 3)
!1435 = !DILocation(line: 6293, column: 40, scope: !1434)
!1436 = !DILocation(line: 6293, column: 46, scope: !1434)
!1437 = !DILocation(line: 6293, column: 51, scope: !1434)
!1438 = !DILocation(line: 6293, column: 61, scope: !1434)
!1439 = !DILocation(line: 6293, column: 66, scope: !1434)
!1440 = !DILocation(line: 6293, column: 59, scope: !1434)
!1441 = !DILocalVariable(name: "pos", scope: !1442, file: !14, line: 6294, type: !52)
!1442 = distinct !DILexicalBlock(scope: !1434, file: !14, line: 6294, column: 5)
!1443 = !DILocation(line: 6294, column: 33, scope: !1442)
!1444 = !DILocation(line: 6294, column: 39, scope: !1442)
!1445 = !DILocation(line: 6294, column: 44, scope: !1442)
!1446 = !DILocation(line: 6294, column: 10, scope: !1442)
!1447 = !DILocation(line: 6294, column: 53, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1442, file: !14, line: 6294, column: 5)
!1449 = !DILocation(line: 6294, column: 59, scope: !1448)
!1450 = !DILocation(line: 6294, column: 57, scope: !1448)
!1451 = !DILocation(line: 6294, column: 5, scope: !1442)
!1452 = !DILocalVariable(name: "mp", scope: !1453, file: !14, line: 6295, type: !46)
!1453 = distinct !DILexicalBlock(scope: !1448, file: !14, line: 6294, column: 71)
!1454 = !DILocation(line: 6295, column: 26, scope: !1453)
!1455 = !DILocation(line: 6296, column: 36, scope: !1453)
!1456 = !DILocation(line: 6296, column: 41, scope: !1453)
!1457 = !DILocation(line: 6296, column: 46, scope: !1453)
!1458 = !DILocation(line: 6296, column: 52, scope: !1453)
!1459 = !DILocation(line: 6296, column: 57, scope: !1453)
!1460 = !DILocation(line: 6296, column: 11, scope: !1453)
!1461 = !DILocation(line: 6297, column: 12, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1453, file: !14, line: 6297, column: 11)
!1463 = !DILocation(line: 6297, column: 11, scope: !1453)
!1464 = !DILocation(line: 6298, column: 11, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !14, line: 6297, column: 16)
!1466 = !DILocation(line: 6298, column: 16, scope: !1465)
!1467 = !DILocation(line: 6298, column: 9, scope: !1465)
!1468 = !DILocation(line: 6299, column: 9, scope: !1465)
!1469 = !DILocation(line: 6301, column: 17, scope: !1453)
!1470 = !DILocation(line: 6301, column: 7, scope: !1453)
!1471 = !DILocation(line: 6301, column: 11, scope: !1453)
!1472 = !DILocation(line: 6301, column: 15, scope: !1453)
!1473 = !DILocation(line: 6302, column: 18, scope: !1453)
!1474 = !DILocation(line: 6302, column: 23, scope: !1453)
!1475 = !DILocation(line: 6302, column: 7, scope: !1453)
!1476 = !DILocation(line: 6302, column: 11, scope: !1453)
!1477 = !DILocation(line: 6302, column: 16, scope: !1453)
!1478 = !DILocation(line: 6303, column: 5, scope: !1453)
!1479 = !DILocation(line: 6294, column: 64, scope: !1448)
!1480 = !DILocation(line: 6294, column: 5, scope: !1448)
!1481 = distinct !{!1481, !1451, !1482}
!1482 = !DILocation(line: 6303, column: 5, scope: !1442)
!1483 = !DILocation(line: 6305, column: 1, scope: !1398)
!1484 = distinct !DISubprogram(name: "fio_ct_if2", scope: !14, file: !14, line: 2135, type: !1485, scopeLine: 2135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!45, !45, !45, !45}
!1487 = !DILocalVariable(name: "cond", arg: 1, scope: !1484, file: !14, line: 2135, type: !45)
!1488 = !DILocation(line: 2135, column: 48, scope: !1484)
!1489 = !DILocalVariable(name: "a", arg: 2, scope: !1484, file: !14, line: 2135, type: !45)
!1490 = !DILocation(line: 2135, column: 64, scope: !1484)
!1491 = !DILocalVariable(name: "b", arg: 3, scope: !1484, file: !14, line: 2135, type: !45)
!1492 = !DILocation(line: 2135, column: 77, scope: !1484)
!1493 = !DILocation(line: 2137, column: 32, scope: !1484)
!1494 = !DILocation(line: 2137, column: 20, scope: !1484)
!1495 = !DILocation(line: 2137, column: 39, scope: !1484)
!1496 = !DILocation(line: 2137, column: 42, scope: !1484)
!1497 = !DILocation(line: 2137, column: 10, scope: !1484)
!1498 = !DILocation(line: 2137, column: 3, scope: !1484)
!1499 = distinct !DISubprogram(name: "fio_cli_hash__compact_ordered_array_", scope: !14, file: !14, line: 5916, type: !1080, scopeLine: 5916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1500 = !DILocalVariable(name: "set", arg: 1, scope: !1499, file: !14, line: 5916, type: !449)
!1501 = !DILocation(line: 5916, column: 70, scope: !1499)
!1502 = !DILocation(line: 5917, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !14, line: 5917, column: 7)
!1504 = !DILocation(line: 5917, column: 12, scope: !1503)
!1505 = !DILocation(line: 5917, column: 21, scope: !1503)
!1506 = !DILocation(line: 5917, column: 26, scope: !1503)
!1507 = !DILocation(line: 5917, column: 18, scope: !1503)
!1508 = !DILocation(line: 5917, column: 7, scope: !1499)
!1509 = !DILocation(line: 5918, column: 5, scope: !1503)
!1510 = !DILocalVariable(name: "reader", scope: !1499, file: !14, line: 5919, type: !52)
!1511 = !DILocation(line: 5919, column: 26, scope: !1499)
!1512 = !DILocation(line: 5919, column: 35, scope: !1499)
!1513 = !DILocation(line: 5919, column: 40, scope: !1499)
!1514 = !DILocalVariable(name: "writer", scope: !1499, file: !14, line: 5920, type: !52)
!1515 = !DILocation(line: 5920, column: 26, scope: !1499)
!1516 = !DILocation(line: 5920, column: 35, scope: !1499)
!1517 = !DILocation(line: 5920, column: 40, scope: !1499)
!1518 = !DILocalVariable(name: "end", scope: !1499, file: !14, line: 5921, type: !1086)
!1519 = !DILocation(line: 5921, column: 32, scope: !1499)
!1520 = !DILocation(line: 5921, column: 38, scope: !1499)
!1521 = !DILocation(line: 5921, column: 43, scope: !1499)
!1522 = !DILocation(line: 5921, column: 53, scope: !1499)
!1523 = !DILocation(line: 5921, column: 58, scope: !1499)
!1524 = !DILocation(line: 5921, column: 51, scope: !1499)
!1525 = !DILocation(line: 5922, column: 3, scope: !1499)
!1526 = !DILocation(line: 5922, column: 10, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !14, line: 5922, column: 3)
!1528 = distinct !DILexicalBlock(scope: !1499, file: !14, line: 5922, column: 3)
!1529 = !DILocation(line: 5922, column: 17, scope: !1527)
!1530 = !DILocation(line: 5922, column: 21, scope: !1527)
!1531 = !DILocation(line: 5922, column: 30, scope: !1527)
!1532 = !DILocation(line: 5922, column: 28, scope: !1527)
!1533 = !DILocation(line: 0, scope: !1527)
!1534 = !DILocation(line: 5922, column: 3, scope: !1528)
!1535 = !DILocation(line: 5923, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !14, line: 5923, column: 9)
!1537 = distinct !DILexicalBlock(scope: !1527, file: !14, line: 5922, column: 46)
!1538 = !DILocation(line: 5923, column: 9, scope: !1537)
!1539 = !DILocation(line: 5924, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !14, line: 5923, column: 67)
!1541 = !DILocation(line: 5926, column: 6, scope: !1537)
!1542 = !DILocation(line: 5926, column: 16, scope: !1537)
!1543 = !DILocation(line: 5926, column: 15, scope: !1537)
!1544 = !DILocation(line: 5927, column: 5, scope: !1537)
!1545 = !DILocation(line: 5928, column: 3, scope: !1537)
!1546 = !DILocation(line: 5922, column: 36, scope: !1527)
!1547 = !DILocation(line: 5922, column: 3, scope: !1527)
!1548 = distinct !{!1548, !1534, !1549}
!1549 = !DILocation(line: 5928, column: 3, scope: !1528)
!1550 = !DILocation(line: 5930, column: 28, scope: !1499)
!1551 = !DILocation(line: 5930, column: 37, scope: !1499)
!1552 = !DILocation(line: 5930, column: 42, scope: !1499)
!1553 = !DILocation(line: 5930, column: 35, scope: !1499)
!1554 = !DILocation(line: 5930, column: 14, scope: !1499)
!1555 = !DILocation(line: 5930, column: 19, scope: !1499)
!1556 = !DILocation(line: 5930, column: 25, scope: !1499)
!1557 = !DILocation(line: 5930, column: 3, scope: !1499)
!1558 = !DILocation(line: 5930, column: 8, scope: !1499)
!1559 = !DILocation(line: 5930, column: 12, scope: !1499)
!1560 = !DILocation(line: 5931, column: 1, scope: !1499)
!1561 = distinct !DISubprogram(name: "fio_cli_hash__reallocate_set_mem_", scope: !14, file: !14, line: 5934, type: !1080, scopeLine: 5934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1562 = !DILocalVariable(name: "set", arg: 1, scope: !1561, file: !14, line: 5934, type: !449)
!1563 = !DILocation(line: 5934, column: 67, scope: !1561)
!1564 = !DILocalVariable(name: "new_capa", scope: !1561, file: !14, line: 5935, type: !450)
!1565 = !DILocation(line: 5935, column: 19, scope: !1561)
!1566 = !DILocation(line: 5935, column: 38, scope: !1561)
!1567 = !DILocation(line: 5935, column: 43, scope: !1561)
!1568 = !DILocation(line: 5935, column: 35, scope: !1561)
!1569 = !DILocation(line: 5936, column: 3, scope: !1561)
!1570 = !DILocation(line: 5937, column: 35, scope: !1561)
!1571 = !DILocation(line: 5937, column: 14, scope: !1561)
!1572 = !DILocation(line: 5937, column: 3, scope: !1561)
!1573 = !DILocation(line: 5937, column: 8, scope: !1561)
!1574 = !DILocation(line: 5937, column: 12, scope: !1561)
!1575 = !DILocation(line: 5938, column: 43, scope: !1561)
!1576 = !DILocation(line: 5938, column: 18, scope: !1561)
!1577 = !DILocation(line: 5938, column: 3, scope: !1561)
!1578 = !DILocation(line: 5938, column: 8, scope: !1561)
!1579 = !DILocation(line: 5938, column: 16, scope: !1561)
!1580 = !DILocation(line: 5941, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1561, file: !14, line: 5941, column: 7)
!1582 = !DILocation(line: 5941, column: 13, scope: !1581)
!1583 = !DILocation(line: 5941, column: 17, scope: !1581)
!1584 = !DILocation(line: 5941, column: 21, scope: !1581)
!1585 = !DILocation(line: 5941, column: 26, scope: !1581)
!1586 = !DILocation(line: 5941, column: 7, scope: !1561)
!1587 = !DILocation(line: 5942, column: 5, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !14, line: 5941, column: 35)
!1589 = !DILocation(line: 5943, column: 10, scope: !1588)
!1590 = !DILocation(line: 5943, column: 5, scope: !1588)
!1591 = !DILocation(line: 5945, column: 15, scope: !1561)
!1592 = !DILocation(line: 5945, column: 3, scope: !1561)
!1593 = !DILocation(line: 5945, column: 8, scope: !1561)
!1594 = !DILocation(line: 5945, column: 13, scope: !1561)
!1595 = !DILocation(line: 5946, column: 1, scope: !1561)
!1596 = distinct !DISubprogram(name: "fio_ct_if", scope: !14, file: !14, line: 2129, type: !1597, scopeLine: 2129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!45, !69, !45, !45}
!1599 = !DILocalVariable(name: "cond", arg: 1, scope: !1596, file: !14, line: 2129, type: !69)
!1600 = !DILocation(line: 2129, column: 45, scope: !1596)
!1601 = !DILocalVariable(name: "a", arg: 2, scope: !1596, file: !14, line: 2129, type: !45)
!1602 = !DILocation(line: 2129, column: 61, scope: !1596)
!1603 = !DILocalVariable(name: "b", arg: 3, scope: !1596, file: !14, line: 2129, type: !45)
!1604 = !DILocation(line: 2129, column: 74, scope: !1596)
!1605 = !DILocation(line: 2131, column: 11, scope: !1596)
!1606 = !DILocation(line: 2131, column: 22, scope: !1596)
!1607 = !DILocation(line: 2131, column: 27, scope: !1596)
!1608 = !DILocation(line: 2131, column: 19, scope: !1596)
!1609 = !DILocation(line: 2131, column: 16, scope: !1596)
!1610 = !DILocation(line: 2131, column: 36, scope: !1596)
!1611 = !DILocation(line: 2131, column: 40, scope: !1596)
!1612 = !DILocation(line: 2131, column: 38, scope: !1596)
!1613 = !DILocation(line: 2131, column: 33, scope: !1596)
!1614 = !DILocation(line: 2131, column: 13, scope: !1596)
!1615 = !DILocation(line: 2131, column: 3, scope: !1596)
!1616 = distinct !DISubprogram(name: "fio_ct_true", scope: !14, file: !14, line: 2117, type: !1617, scopeLine: 2117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!45, !45}
!1619 = !DILocalVariable(name: "cond", arg: 1, scope: !1616, file: !14, line: 2117, type: !45)
!1620 = !DILocation(line: 2117, column: 49, scope: !1616)
!1621 = !DILocation(line: 2119, column: 12, scope: !1616)
!1622 = !DILocation(line: 2119, column: 24, scope: !1616)
!1623 = !DILocation(line: 2119, column: 22, scope: !1616)
!1624 = !DILocation(line: 2119, column: 17, scope: !1616)
!1625 = !DILocation(line: 2119, column: 31, scope: !1616)
!1626 = !DILocation(line: 2119, column: 3, scope: !1616)
!1627 = distinct !DISubprogram(name: "fio_cli_get_line_type", scope: !3, file: !3, line: 87, type: !1628, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!8, !643, !8}
!1630 = !DILocalVariable(name: "parser", arg: 1, scope: !1627, file: !3, line: 87, type: !643)
!1631 = !DILocation(line: 87, column: 65, scope: !1627)
!1632 = !DILocalVariable(name: "line", arg: 2, scope: !1627, file: !3, line: 88, type: !8)
!1633 = !DILocation(line: 88, column: 54, scope: !1627)
!1634 = !DILocation(line: 89, column: 8, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 89, column: 7)
!1636 = !DILocation(line: 89, column: 7, scope: !1627)
!1637 = !DILocation(line: 90, column: 5, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 89, column: 14)
!1639 = !DILocalVariable(name: "pos", scope: !1627, file: !3, line: 92, type: !7)
!1640 = !DILocation(line: 92, column: 16, scope: !1627)
!1641 = !DILocation(line: 92, column: 22, scope: !1627)
!1642 = !DILocation(line: 92, column: 30, scope: !1627)
!1643 = !DILocation(line: 93, column: 3, scope: !1627)
!1644 = !DILocation(line: 93, column: 11, scope: !1627)
!1645 = !DILocation(line: 93, column: 10, scope: !1627)
!1646 = !DILocation(line: 94, column: 24, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 93, column: 16)
!1648 = !DILocation(line: 94, column: 23, scope: !1647)
!1649 = !DILocation(line: 94, column: 13, scope: !1647)
!1650 = !DILocation(line: 94, column: 5, scope: !1647)
!1651 = !DILocation(line: 100, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 94, column: 29)
!1653 = !DILocation(line: 101, column: 7, scope: !1652)
!1654 = distinct !{!1654, !1643, !1655}
!1655 = !DILocation(line: 107, column: 3, scope: !1627)
!1656 = !DILocation(line: 103, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 103, column: 9)
!1658 = !DILocation(line: 103, column: 18, scope: !1657)
!1659 = !DILocation(line: 103, column: 17, scope: !1657)
!1660 = !DILocation(line: 103, column: 14, scope: !1657)
!1661 = !DILocation(line: 103, column: 9, scope: !1647)
!1662 = !DILocation(line: 104, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 103, column: 23)
!1664 = !DILocation(line: 106, column: 5, scope: !1647)
!1665 = !DILocation(line: 108, column: 3, scope: !1627)
!1666 = !DILabel(scope: !1627, name: "found", file: !3, line: 109)
!1667 = !DILocation(line: 109, column: 1, scope: !1627)
!1668 = !DILocation(line: 110, column: 19, scope: !1627)
!1669 = !DILocation(line: 110, column: 11, scope: !1627)
!1670 = !DILocation(line: 110, column: 3, scope: !1627)
!1671 = !DILocation(line: 116, column: 12, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 110, column: 27)
!1673 = !DILocation(line: 116, column: 5, scope: !1672)
!1674 = !DILocation(line: 118, column: 3, scope: !1627)
!1675 = !DILocation(line: 119, column: 1, scope: !1627)
!1676 = distinct !DISubprogram(name: "fio_cli_hash__insert_or_overwrite_", scope: !14, file: !14, line: 5956, type: !1677, scopeLine: 5958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!58, !449, !45, !58, !6, !7}
!1679 = !DILocalVariable(name: "set", arg: 1, scope: !1676, file: !14, line: 5956, type: !449)
!1680 = !DILocation(line: 5956, column: 47, scope: !1676)
!1681 = !DILocalVariable(name: "hash_value", arg: 2, scope: !1676, file: !14, line: 5956, type: !45)
!1682 = !DILocation(line: 5956, column: 70, scope: !1676)
!1683 = !DILocalVariable(name: "obj", arg: 3, scope: !1676, file: !14, line: 5957, type: !58)
!1684 = !DILocation(line: 5957, column: 46, scope: !1676)
!1685 = !DILocalVariable(name: "overwrite", arg: 4, scope: !1676, file: !14, line: 5957, type: !6)
!1686 = !DILocation(line: 5957, column: 55, scope: !1676)
!1687 = !DILocalVariable(name: "old", arg: 5, scope: !1676, file: !14, line: 5958, type: !7)
!1688 = !DILocation(line: 5958, column: 51, scope: !1676)
!1689 = !DILocation(line: 5959, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1676, file: !14, line: 5959, column: 7)
!1691 = !DILocation(line: 5959, column: 7, scope: !1676)
!1692 = !DILocation(line: 5960, column: 16, scope: !1690)
!1693 = !DILocation(line: 5960, column: 5, scope: !1690)
!1694 = !DILocation(line: 5963, column: 31, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1676, file: !14, line: 5963, column: 7)
!1696 = !DILocation(line: 5963, column: 7, scope: !1695)
!1697 = !DILocation(line: 5963, column: 7, scope: !1676)
!1698 = !DILocation(line: 5964, column: 22, scope: !1695)
!1699 = !DILocation(line: 5964, column: 5, scope: !1695)
!1700 = !DILocation(line: 5966, column: 12, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1695, file: !14, line: 5966, column: 12)
!1702 = !DILocation(line: 5966, column: 17, scope: !1701)
!1703 = !DILocation(line: 5966, column: 24, scope: !1701)
!1704 = !DILocation(line: 5966, column: 29, scope: !1701)
!1705 = !DILocation(line: 5966, column: 21, scope: !1701)
!1706 = !DILocation(line: 5966, column: 12, scope: !1695)
!1707 = !DILocation(line: 5967, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1701, file: !14, line: 5966, column: 35)
!1709 = !DILocation(line: 5967, column: 12, scope: !1708)
!1710 = !DILocation(line: 5967, column: 5, scope: !1708)
!1711 = !DILocation(line: 5968, column: 22, scope: !1708)
!1712 = !DILocation(line: 5968, column: 5, scope: !1708)
!1713 = !DILocation(line: 5969, column: 3, scope: !1708)
!1714 = !DILocalVariable(name: "pos", scope: !1676, file: !14, line: 5972, type: !46)
!1715 = !DILocation(line: 5972, column: 22, scope: !1676)
!1716 = !DILocation(line: 5972, column: 53, scope: !1676)
!1717 = !DILocation(line: 5972, column: 58, scope: !1676)
!1718 = !DILocation(line: 5972, column: 28, scope: !1676)
!1719 = !DILocation(line: 5974, column: 8, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1676, file: !14, line: 5974, column: 7)
!1721 = !DILocation(line: 5974, column: 7, scope: !1676)
!1722 = !DILocation(line: 5976, column: 5, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !14, line: 5974, column: 13)
!1724 = !DILocation(line: 5976, column: 5, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1723, file: !14, line: 5976, column: 5)
!1726 = !DILocation(line: 5977, column: 35, scope: !1723)
!1727 = !DILocation(line: 5977, column: 5, scope: !1723)
!1728 = !DILocation(line: 5977, column: 10, scope: !1723)
!1729 = !DILocation(line: 5977, column: 18, scope: !1723)
!1730 = !DILocation(line: 5977, column: 23, scope: !1723)
!1731 = !DILocation(line: 5977, column: 28, scope: !1723)
!1732 = !DILocation(line: 5977, column: 33, scope: !1723)
!1733 = !DILocation(line: 5978, column: 7, scope: !1723)
!1734 = !DILocation(line: 5978, column: 12, scope: !1723)
!1735 = !DILocation(line: 5978, column: 5, scope: !1723)
!1736 = !DILocation(line: 5979, column: 7, scope: !1723)
!1737 = !DILocation(line: 5979, column: 12, scope: !1723)
!1738 = !DILocation(line: 5979, column: 5, scope: !1723)
!1739 = !DILocation(line: 5980, column: 22, scope: !1723)
!1740 = !DILocation(line: 5980, column: 5, scope: !1723)
!1741 = !DILocation(line: 5981, column: 12, scope: !1723)
!1742 = !DILocation(line: 5981, column: 17, scope: !1723)
!1743 = !DILocation(line: 5981, column: 25, scope: !1723)
!1744 = !DILocation(line: 5981, column: 30, scope: !1723)
!1745 = !DILocation(line: 5981, column: 34, scope: !1723)
!1746 = !DILocation(line: 5981, column: 39, scope: !1723)
!1747 = !DILocation(line: 5981, column: 5, scope: !1723)
!1748 = !DILocation(line: 5985, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1676, file: !14, line: 5985, column: 7)
!1750 = !DILocation(line: 5985, column: 12, scope: !1749)
!1751 = !DILocation(line: 5985, column: 7, scope: !1676)
!1752 = !DILocation(line: 5987, column: 10, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !14, line: 5987, column: 9)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !14, line: 5985, column: 17)
!1755 = !DILocation(line: 5987, column: 9, scope: !1754)
!1756 = !DILocation(line: 5988, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !14, line: 5987, column: 21)
!1758 = !DILocation(line: 5988, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1757, file: !14, line: 5988, column: 7)
!1760 = !DILocation(line: 5989, column: 14, scope: !1757)
!1761 = !DILocation(line: 5989, column: 19, scope: !1757)
!1762 = !DILocation(line: 5989, column: 24, scope: !1757)
!1763 = !DILocation(line: 5989, column: 7, scope: !1757)
!1764 = !DILocation(line: 5992, column: 9, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1754, file: !14, line: 5992, column: 9)
!1766 = !DILocation(line: 5992, column: 9, scope: !1754)
!1767 = !DILocation(line: 5993, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !14, line: 5992, column: 14)
!1769 = !DILocation(line: 5994, column: 5, scope: !1768)
!1770 = !DILocation(line: 5997, column: 5, scope: !1754)
!1771 = !DILocation(line: 5998, column: 12, scope: !1754)
!1772 = !DILocation(line: 5998, column: 17, scope: !1754)
!1773 = !DILocation(line: 5998, column: 22, scope: !1754)
!1774 = !DILocation(line: 5998, column: 5, scope: !1754)
!1775 = !DILocation(line: 6007, column: 16, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1749, file: !14, line: 6005, column: 10)
!1777 = !DILocation(line: 6007, column: 21, scope: !1776)
!1778 = !DILocation(line: 6007, column: 31, scope: !1776)
!1779 = !DILocation(line: 6007, column: 36, scope: !1776)
!1780 = !DILocation(line: 6007, column: 29, scope: !1776)
!1781 = !DILocation(line: 6007, column: 5, scope: !1776)
!1782 = !DILocation(line: 6007, column: 10, scope: !1776)
!1783 = !DILocation(line: 6007, column: 14, scope: !1776)
!1784 = !DILocation(line: 6008, column: 7, scope: !1776)
!1785 = !DILocation(line: 6008, column: 12, scope: !1776)
!1786 = !DILocation(line: 6008, column: 5, scope: !1776)
!1787 = !DILocation(line: 6009, column: 7, scope: !1776)
!1788 = !DILocation(line: 6009, column: 12, scope: !1776)
!1789 = !DILocation(line: 6009, column: 5, scope: !1776)
!1790 = !DILocation(line: 6012, column: 15, scope: !1676)
!1791 = !DILocation(line: 6012, column: 3, scope: !1676)
!1792 = !DILocation(line: 6012, column: 8, scope: !1676)
!1793 = !DILocation(line: 6012, column: 13, scope: !1676)
!1794 = !DILocation(line: 6013, column: 20, scope: !1676)
!1795 = !DILocation(line: 6013, column: 3, scope: !1676)
!1796 = !DILocation(line: 6013, column: 8, scope: !1676)
!1797 = !DILocation(line: 6013, column: 13, scope: !1676)
!1798 = !DILocation(line: 6013, column: 18, scope: !1676)
!1799 = !DILocation(line: 6014, column: 3, scope: !1676)
!1800 = !DILocation(line: 6014, column: 3, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1676, file: !14, line: 6014, column: 3)
!1802 = !DILocation(line: 6016, column: 10, scope: !1676)
!1803 = !DILocation(line: 6016, column: 15, scope: !1676)
!1804 = !DILocation(line: 6016, column: 20, scope: !1676)
!1805 = !DILocation(line: 6016, column: 3, scope: !1676)
!1806 = !DILocation(line: 6017, column: 1, scope: !1676)
!1807 = distinct !DISubprogram(name: "fio_cli_hash_is_fragmented", scope: !14, file: !14, line: 6255, type: !352, scopeLine: 6255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !96)
!1808 = !DILocalVariable(name: "set", arg: 1, scope: !1807, file: !14, line: 6255, type: !354)
!1809 = !DILocation(line: 6255, column: 68, scope: !1807)
!1810 = !DILocation(line: 6256, column: 12, scope: !1807)
!1811 = !DILocation(line: 6256, column: 17, scope: !1807)
!1812 = !DILocation(line: 6256, column: 23, scope: !1807)
!1813 = !DILocation(line: 6256, column: 28, scope: !1807)
!1814 = !DILocation(line: 6256, column: 21, scope: !1807)
!1815 = !DILocation(line: 6256, column: 38, scope: !1807)
!1816 = !DILocation(line: 6256, column: 43, scope: !1807)
!1817 = !DILocation(line: 6256, column: 49, scope: !1807)
!1818 = !DILocation(line: 6256, column: 35, scope: !1807)
!1819 = !DILocation(line: 6256, column: 10, scope: !1807)
!1820 = !DILocation(line: 6256, column: 3, scope: !1807)
