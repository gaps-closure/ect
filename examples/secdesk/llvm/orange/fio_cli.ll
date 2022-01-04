; ModuleID = 'fio_cli.c'
source_filename = "fio_cli.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@fio_cli_start.run_once = internal global i8 0, align 1
@fio_values = internal global %struct.fio_cli_hash_s zeroinitializer, align 8
@fio_aliases = internal global %struct.fio_cli_hash_s zeroinitializer, align 8
@fio_unnamed_count = internal global i64 0, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
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
define dso_local void @fio_cli_start(i32, i8**, i32, i32, i8*, i8**) #0 {
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
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8** %5, i8*** %12, align 8
  %19 = call i32 @fio_trylock(i8* @fio_cli_start.run_once)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  call void @fio_state_callback_add(i32 12, void (i8*)* @fio_cli_end_promise, i8* null)
  br label %22

22:                                               ; preds = %21, %6
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %29, %25, %22
  %32 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 1
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 5
  %41 = load i8**, i8*** %8, align 8
  store i8** %41, i8*** %40, align 8
  %42 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 6
  %43 = load i8*, i8** %11, align 8
  store i8* %43, i8** %42, align 8
  %44 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 7
  %45 = load i8**, i8*** %12, align 8
  store i8** %45, i8*** %44, align 8
  %46 = call i64 @fio_cli_hash_count(%struct.fio_cli_hash_s* @fio_values)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  call void @fio_cli_end()
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i8**, i8*** %12, align 8
  store i8** %50, i8*** %14, align 8
  br label %51

51:                                               ; preds = %75, %59, %49
  %52 = load i8**, i8*** %14, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i8**, i8*** %14, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %57 to i64
  switch i64 %58, label %62 [
    i64 1, label %59
    i64 2, label %59
    i64 3, label %59
    i64 4, label %59
    i64 5, label %59
  ]

59:                                               ; preds = %55, %55, %55, %55, %55
  %60 = load i8**, i8*** %14, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %14, align 8
  br label %51

62:                                               ; preds = %55
  %63 = load i8**, i8*** %14, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, inttoptr (i64 4 to i8*)
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i8**, i8*** %14, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, inttoptr (i64 5 to i8*)
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8**, i8*** %14, align 8
  %74 = load i8*, i8** %73, align 8
  call void @fio_cli_map_line2alias(i8* %74)
  br label %75

75:                                               ; preds = %72, %67, %62
  %76 = load i8**, i8*** %14, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %14, align 8
  br label %51

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %160, %78
  %80 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %168

85:                                               ; preds = %79
  store i8* null, i8** %15, align 8
  %86 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0
  %87 = load i8**, i8*** %8, align 8
  %88 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strlen(i8* %92) #8
  store i64 %93, i64* %86, align 8
  %94 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 1
  %95 = load i8**, i8*** %8, align 8
  %96 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %94, align 8
  %101 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %85
  %107 = load i8**, i8*** %8, align 8
  %108 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %107, i64 %111
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %15, align 8
  br label %114

114:                                              ; preds = %106, %85
  store i8* null, i8** %17, align 8
  br label %115

115:                                              ; preds = %135, %114
  %116 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @fio_risky_hash(i8* %121, i64 %123, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64))
  %125 = bitcast %struct.cstr_s* %16 to { i64, i8* }*
  %126 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %125, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @fio_cli_hash_find(%struct.fio_cli_hash_s* @fio_aliases, i64 %124, i64 %127, i8* %129)
  store i8* %130, i8** %17, align 8
  %131 = icmp ne i8* %130, null
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %119, %115
  %134 = phi i1 [ false, %115 ], [ %132, %119 ]
  br i1 %134, label %135, label %144

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %136, align 8
  %139 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8* %143, i8** %15, align 8
  br label %115

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %16, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load i8*, i8** %15, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load i8*, i8** %15, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 61
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i8*, i8** %15, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %15, align 8
  br label %160

160:                                              ; preds = %157, %151, %148, %144
  %161 = load i8*, i8** %15, align 8
  %162 = load i8*, i8** %17, align 8
  %163 = bitcast %struct.cstr_s* %16 to { i64, i8* }*
  %164 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %163, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  call void @fio_cli_set_arg(i64 %165, i8* %167, i8* %161, i8* %162, %struct.fio_cli_parser_data_s* %13)
  br label %79

168:                                              ; preds = %79
  call void @fio_cli_hash_free(%struct.fio_cli_hash_s* @fio_aliases)
  %169 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  store i64 %171, i64* @fio_unnamed_count, align 8
  %172 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %13, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %18, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %18, i32 0, i32 1
  store i8* null, i8** %179, align 8
  %180 = bitcast %struct.cstr_s* %18 to { i64, i8* }*
  %181 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %180, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  call void @fio_cli_set_arg(i64 %182, i8* %184, i8* null, i8* null, %struct.fio_cli_parser_data_s* %13)
  br label %185

185:                                              ; preds = %177, %168
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_trylock(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  %6 = load i8*, i8** %2, align 8
  store i8 1, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = atomicrmw volatile xchg i8* %6, i8 %7 seq_cst
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  store volatile i8 %9, i8* %3, align 1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  %10 = load volatile i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  ret i32 %11
}

declare dso_local void @fio_state_callback_add(i32, void (i8*)*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_end_promise(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @fio_cli_end()
  %3 = load i8*, i8** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_cli_hash_count(%struct.fio_cli_hash_s*) #0 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  %3 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fio_cli_end() #0 {
  call void @fio_cli_hash_free(%struct.fio_cli_hash_s* @fio_values)
  call void @fio_cli_hash_free(%struct.fio_cli_hash_s* @fio_aliases)
  store i64 0, i64* @fio_unnamed_count, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_map_line2alias(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cstr_s, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %108, %1
  %9 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  br i1 %14, label %15, label %115

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %45, %15
  %17 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 32
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 44
  br label %43

43:                                               ; preds = %34, %25, %16
  %44 = phi i1 [ false, %25 ], [ false, %16 ], [ %42, %34 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %16

49:                                               ; preds = %43
  store i8* null, i8** %4, align 8
  %50 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @fio_risky_hash(i8* %51, i64 %53, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64))
  %55 = load i8*, i8** %2, align 8
  %56 = bitcast %struct.cstr_s* %3 to { i64, i8* }*
  %57 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %56, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  call void @fio_cli_hash_insert(%struct.fio_cli_hash_s* @fio_aliases, i64 %54, i64 %58, i8* %60, i8* %55, i8** %4)
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %66 = icmp sle i32 3, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %2, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %104, %72
  %74 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %100, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 44
  br label %100

100:                                              ; preds = %91, %82
  %101 = phi i1 [ true, %82 ], [ %99, %91 ]
  br label %102

102:                                              ; preds = %100, %73
  %103 = phi i1 [ false, %73 ], [ %101, %100 ]
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %73

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 %110
  store i8* %113, i8** %111, align 8
  %114 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %3, i32 0, i32 0
  store i64 0, i64* %114, align 8
  br label %8

115:                                              ; preds = %8
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_cli_hash_find(%struct.fio_cli_hash_s*, i64, i64, i8*) #0 {
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
  store i64 %1, i64* %8, align 8
  %15 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %10, i32 0, i32 0
  %18 = bitcast %struct.cstr_s* %17 to i8*
  %19 = bitcast %struct.cstr_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %10, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = call %struct.fio_cli_hash__map_s_* @fio_cli_hash__find_map_pos_(%struct.fio_cli_hash_s* %15, i64 %16, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %10)
  store %struct.fio_cli_hash__map_s_* %21, %struct.fio_cli_hash__map_s_** %9, align 8
  %22 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %9, align 8
  %23 = icmp ne %struct.fio_cli_hash__map_s_* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %9, align 8
  %26 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %25, i32 0, i32 1
  %27 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %26, align 8
  %28 = icmp ne %struct.fio_cli_hash__ordered_s_* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %4
  %30 = bitcast i8** %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false)
  %31 = load i8*, i8** %11, align 8
  store i8* %31, i8** %5, align 8
  br label %39

32:                                               ; preds = %24
  %33 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %9, align 8
  %34 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %33, i32 0, i32 1
  %35 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %34, align 8
  %36 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i8*, i8** %5, align 8
  ret i8* %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_risky_hash(i8*, i64, i64) #0 {
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
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = xor i64 %16, -6119419677951424823
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = xor i64 %18, -1
  %20 = add i64 %19, -6119419677951424823
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = shl i64 %21, 17
  %23 = load i64, i64* %6, align 8
  %24 = lshr i64 %23, 47
  %25 = or i64 %22, %24
  %26 = xor i64 %25, 5811556015681210993
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = shl i64 %27, 33
  %29 = load i64, i64* %6, align 8
  %30 = lshr i64 %29, 31
  %31 = or i64 %28, %30
  %32 = add i64 %31, 6119419677951424822
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %5, align 8
  %34 = lshr i64 %33, 5
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %501, %3
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %504

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = shl i64 %42, 56
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = shl i64 %47, 48
  %49 = or i64 %43, %48
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i64
  %54 = shl i64 %53, 40
  %55 = or i64 %49, %54
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = shl i64 %59, 32
  %61 = or i64 %55, %60
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = shl i64 %65, 24
  %67 = or i64 %61, %66
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 5
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = shl i64 %71, 16
  %73 = or i64 %67, %72
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 6
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i64
  %78 = shl i64 %77, 8
  %79 = or i64 %73, %78
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 7
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  %84 = or i64 %79, %83
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = shl i64 %87, 33
  %89 = load i64, i64* %8, align 8
  %90 = lshr i64 %89, 31
  %91 = or i64 %88, %90
  store i64 %91, i64* %8, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i64
  %96 = shl i64 %95, 56
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  %101 = shl i64 %100, 48
  %102 = or i64 %96, %101
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i64
  %107 = shl i64 %106, 40
  %108 = or i64 %102, %107
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i64
  %113 = shl i64 %112, 32
  %114 = or i64 %108, %113
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i64
  %119 = shl i64 %118, 24
  %120 = or i64 %114, %119
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 5
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  %125 = shl i64 %124, 16
  %126 = or i64 %120, %125
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 6
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i64
  %131 = shl i64 %130, 8
  %132 = or i64 %126, %131
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 7
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i64
  %137 = or i64 %132, %136
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %8, align 8
  %141 = mul i64 %140, -307863662270213829
  store i64 %141, i64* %8, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i64
  %147 = shl i64 %146, 56
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = shl i64 %152, 48
  %154 = or i64 %147, %153
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i64
  %160 = shl i64 %159, 40
  %161 = or i64 %154, %160
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 8
  %164 = getelementptr inbounds i8, i8* %163, i64 3
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i64
  %167 = shl i64 %166, 32
  %168 = or i64 %161, %167
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 8
  %171 = getelementptr inbounds i8, i8* %170, i64 4
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i64
  %174 = shl i64 %173, 24
  %175 = or i64 %168, %174
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 8
  %178 = getelementptr inbounds i8, i8* %177, i64 5
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i64
  %181 = shl i64 %180, 16
  %182 = or i64 %175, %181
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 8
  %185 = getelementptr inbounds i8, i8* %184, i64 6
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i64
  %188 = shl i64 %187, 8
  %189 = or i64 %182, %188
  %190 = load i8*, i8** %7, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 8
  %192 = getelementptr inbounds i8, i8* %191, i64 7
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i64
  %195 = or i64 %189, %194
  %196 = load i64, i64* %9, align 8
  %197 = add i64 %196, %195
  store i64 %197, i64* %9, align 8
  %198 = load i64, i64* %9, align 8
  %199 = shl i64 %198, 33
  %200 = load i64, i64* %9, align 8
  %201 = lshr i64 %200, 31
  %202 = or i64 %199, %201
  store i64 %202, i64* %9, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i64
  %208 = shl i64 %207, 56
  %209 = load i8*, i8** %7, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i64
  %214 = shl i64 %213, 48
  %215 = or i64 %208, %214
  %216 = load i8*, i8** %7, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 8
  %218 = getelementptr inbounds i8, i8* %217, i64 2
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i64
  %221 = shl i64 %220, 40
  %222 = or i64 %215, %221
  %223 = load i8*, i8** %7, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 8
  %225 = getelementptr inbounds i8, i8* %224, i64 3
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i64
  %228 = shl i64 %227, 32
  %229 = or i64 %222, %228
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 8
  %232 = getelementptr inbounds i8, i8* %231, i64 4
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i64
  %235 = shl i64 %234, 24
  %236 = or i64 %229, %235
  %237 = load i8*, i8** %7, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 8
  %239 = getelementptr inbounds i8, i8* %238, i64 5
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i64
  %242 = shl i64 %241, 16
  %243 = or i64 %236, %242
  %244 = load i8*, i8** %7, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 8
  %246 = getelementptr inbounds i8, i8* %245, i64 6
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i64
  %249 = shl i64 %248, 8
  %250 = or i64 %243, %249
  %251 = load i8*, i8** %7, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 8
  %253 = getelementptr inbounds i8, i8* %252, i64 7
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i64
  %256 = or i64 %250, %255
  %257 = load i64, i64* %9, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %9, align 8
  %259 = load i64, i64* %9, align 8
  %260 = mul i64 %259, -307863662270213829
  store i64 %260, i64* %9, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 16
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i64
  %266 = shl i64 %265, 56
  %267 = load i8*, i8** %7, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 16
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i64
  %272 = shl i64 %271, 48
  %273 = or i64 %266, %272
  %274 = load i8*, i8** %7, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 16
  %276 = getelementptr inbounds i8, i8* %275, i64 2
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i64
  %279 = shl i64 %278, 40
  %280 = or i64 %273, %279
  %281 = load i8*, i8** %7, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 16
  %283 = getelementptr inbounds i8, i8* %282, i64 3
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i64
  %286 = shl i64 %285, 32
  %287 = or i64 %280, %286
  %288 = load i8*, i8** %7, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 16
  %290 = getelementptr inbounds i8, i8* %289, i64 4
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i64
  %293 = shl i64 %292, 24
  %294 = or i64 %287, %293
  %295 = load i8*, i8** %7, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 16
  %297 = getelementptr inbounds i8, i8* %296, i64 5
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i64
  %300 = shl i64 %299, 16
  %301 = or i64 %294, %300
  %302 = load i8*, i8** %7, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 16
  %304 = getelementptr inbounds i8, i8* %303, i64 6
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i64
  %307 = shl i64 %306, 8
  %308 = or i64 %301, %307
  %309 = load i8*, i8** %7, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 16
  %311 = getelementptr inbounds i8, i8* %310, i64 7
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i64
  %314 = or i64 %308, %313
  %315 = load i64, i64* %10, align 8
  %316 = add i64 %315, %314
  store i64 %316, i64* %10, align 8
  %317 = load i64, i64* %10, align 8
  %318 = shl i64 %317, 33
  %319 = load i64, i64* %10, align 8
  %320 = lshr i64 %319, 31
  %321 = or i64 %318, %320
  store i64 %321, i64* %10, align 8
  %322 = load i8*, i8** %7, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 16
  %324 = getelementptr inbounds i8, i8* %323, i64 0
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i64
  %327 = shl i64 %326, 56
  %328 = load i8*, i8** %7, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 16
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i64
  %333 = shl i64 %332, 48
  %334 = or i64 %327, %333
  %335 = load i8*, i8** %7, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 16
  %337 = getelementptr inbounds i8, i8* %336, i64 2
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i64
  %340 = shl i64 %339, 40
  %341 = or i64 %334, %340
  %342 = load i8*, i8** %7, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 16
  %344 = getelementptr inbounds i8, i8* %343, i64 3
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i64
  %347 = shl i64 %346, 32
  %348 = or i64 %341, %347
  %349 = load i8*, i8** %7, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 16
  %351 = getelementptr inbounds i8, i8* %350, i64 4
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i64
  %354 = shl i64 %353, 24
  %355 = or i64 %348, %354
  %356 = load i8*, i8** %7, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 16
  %358 = getelementptr inbounds i8, i8* %357, i64 5
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i64
  %361 = shl i64 %360, 16
  %362 = or i64 %355, %361
  %363 = load i8*, i8** %7, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 16
  %365 = getelementptr inbounds i8, i8* %364, i64 6
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i64
  %368 = shl i64 %367, 8
  %369 = or i64 %362, %368
  %370 = load i8*, i8** %7, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 16
  %372 = getelementptr inbounds i8, i8* %371, i64 7
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i64
  %375 = or i64 %369, %374
  %376 = load i64, i64* %10, align 8
  %377 = add i64 %376, %375
  store i64 %377, i64* %10, align 8
  %378 = load i64, i64* %10, align 8
  %379 = mul i64 %378, -307863662270213829
  store i64 %379, i64* %10, align 8
  %380 = load i8*, i8** %7, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 24
  %382 = getelementptr inbounds i8, i8* %381, i64 0
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i64
  %385 = shl i64 %384, 56
  %386 = load i8*, i8** %7, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 24
  %388 = getelementptr inbounds i8, i8* %387, i64 1
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i64
  %391 = shl i64 %390, 48
  %392 = or i64 %385, %391
  %393 = load i8*, i8** %7, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 24
  %395 = getelementptr inbounds i8, i8* %394, i64 2
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i64
  %398 = shl i64 %397, 40
  %399 = or i64 %392, %398
  %400 = load i8*, i8** %7, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 24
  %402 = getelementptr inbounds i8, i8* %401, i64 3
  %403 = load i8, i8* %402, align 1
  %404 = zext i8 %403 to i64
  %405 = shl i64 %404, 32
  %406 = or i64 %399, %405
  %407 = load i8*, i8** %7, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 24
  %409 = getelementptr inbounds i8, i8* %408, i64 4
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i64
  %412 = shl i64 %411, 24
  %413 = or i64 %406, %412
  %414 = load i8*, i8** %7, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 24
  %416 = getelementptr inbounds i8, i8* %415, i64 5
  %417 = load i8, i8* %416, align 1
  %418 = zext i8 %417 to i64
  %419 = shl i64 %418, 16
  %420 = or i64 %413, %419
  %421 = load i8*, i8** %7, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 24
  %423 = getelementptr inbounds i8, i8* %422, i64 6
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i64
  %426 = shl i64 %425, 8
  %427 = or i64 %420, %426
  %428 = load i8*, i8** %7, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 24
  %430 = getelementptr inbounds i8, i8* %429, i64 7
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i64
  %433 = or i64 %427, %432
  %434 = load i64, i64* %11, align 8
  %435 = add i64 %434, %433
  store i64 %435, i64* %11, align 8
  %436 = load i64, i64* %11, align 8
  %437 = shl i64 %436, 33
  %438 = load i64, i64* %11, align 8
  %439 = lshr i64 %438, 31
  %440 = or i64 %437, %439
  store i64 %440, i64* %11, align 8
  %441 = load i8*, i8** %7, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 24
  %443 = getelementptr inbounds i8, i8* %442, i64 0
  %444 = load i8, i8* %443, align 1
  %445 = zext i8 %444 to i64
  %446 = shl i64 %445, 56
  %447 = load i8*, i8** %7, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 24
  %449 = getelementptr inbounds i8, i8* %448, i64 1
  %450 = load i8, i8* %449, align 1
  %451 = zext i8 %450 to i64
  %452 = shl i64 %451, 48
  %453 = or i64 %446, %452
  %454 = load i8*, i8** %7, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 24
  %456 = getelementptr inbounds i8, i8* %455, i64 2
  %457 = load i8, i8* %456, align 1
  %458 = zext i8 %457 to i64
  %459 = shl i64 %458, 40
  %460 = or i64 %453, %459
  %461 = load i8*, i8** %7, align 8
  %462 = getelementptr inbounds i8, i8* %461, i64 24
  %463 = getelementptr inbounds i8, i8* %462, i64 3
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i64
  %466 = shl i64 %465, 32
  %467 = or i64 %460, %466
  %468 = load i8*, i8** %7, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 24
  %470 = getelementptr inbounds i8, i8* %469, i64 4
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i64
  %473 = shl i64 %472, 24
  %474 = or i64 %467, %473
  %475 = load i8*, i8** %7, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 24
  %477 = getelementptr inbounds i8, i8* %476, i64 5
  %478 = load i8, i8* %477, align 1
  %479 = zext i8 %478 to i64
  %480 = shl i64 %479, 16
  %481 = or i64 %474, %480
  %482 = load i8*, i8** %7, align 8
  %483 = getelementptr inbounds i8, i8* %482, i64 24
  %484 = getelementptr inbounds i8, i8* %483, i64 6
  %485 = load i8, i8* %484, align 1
  %486 = zext i8 %485 to i64
  %487 = shl i64 %486, 8
  %488 = or i64 %481, %487
  %489 = load i8*, i8** %7, align 8
  %490 = getelementptr inbounds i8, i8* %489, i64 24
  %491 = getelementptr inbounds i8, i8* %490, i64 7
  %492 = load i8, i8* %491, align 1
  %493 = zext i8 %492 to i64
  %494 = or i64 %488, %493
  %495 = load i64, i64* %11, align 8
  %496 = add i64 %495, %494
  store i64 %496, i64* %11, align 8
  %497 = load i64, i64* %11, align 8
  %498 = mul i64 %497, -307863662270213829
  store i64 %498, i64* %11, align 8
  %499 = load i8*, i8** %7, align 8
  %500 = getelementptr inbounds i8, i8* %499, i64 32
  store i8* %500, i8** %7, align 8
  br label %501

501:                                              ; preds = %38
  %502 = load i64, i64* %12, align 8
  %503 = add i64 %502, -1
  store i64 %503, i64* %12, align 8
  br label %35

504:                                              ; preds = %35
  %505 = load i64, i64* %5, align 8
  %506 = and i64 %505, 24
  switch i64 %506, label %855 [
    i64 24, label %507
    i64 16, label %627
    i64 8, label %747
  ]

507:                                              ; preds = %504
  %508 = load i8*, i8** %7, align 8
  %509 = getelementptr inbounds i8, i8* %508, i64 16
  %510 = getelementptr inbounds i8, i8* %509, i64 0
  %511 = load i8, i8* %510, align 1
  %512 = zext i8 %511 to i64
  %513 = shl i64 %512, 56
  %514 = load i8*, i8** %7, align 8
  %515 = getelementptr inbounds i8, i8* %514, i64 16
  %516 = getelementptr inbounds i8, i8* %515, i64 1
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i64
  %519 = shl i64 %518, 48
  %520 = or i64 %513, %519
  %521 = load i8*, i8** %7, align 8
  %522 = getelementptr inbounds i8, i8* %521, i64 16
  %523 = getelementptr inbounds i8, i8* %522, i64 2
  %524 = load i8, i8* %523, align 1
  %525 = zext i8 %524 to i64
  %526 = shl i64 %525, 40
  %527 = or i64 %520, %526
  %528 = load i8*, i8** %7, align 8
  %529 = getelementptr inbounds i8, i8* %528, i64 16
  %530 = getelementptr inbounds i8, i8* %529, i64 3
  %531 = load i8, i8* %530, align 1
  %532 = zext i8 %531 to i64
  %533 = shl i64 %532, 32
  %534 = or i64 %527, %533
  %535 = load i8*, i8** %7, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 16
  %537 = getelementptr inbounds i8, i8* %536, i64 4
  %538 = load i8, i8* %537, align 1
  %539 = zext i8 %538 to i64
  %540 = shl i64 %539, 24
  %541 = or i64 %534, %540
  %542 = load i8*, i8** %7, align 8
  %543 = getelementptr inbounds i8, i8* %542, i64 16
  %544 = getelementptr inbounds i8, i8* %543, i64 5
  %545 = load i8, i8* %544, align 1
  %546 = zext i8 %545 to i64
  %547 = shl i64 %546, 16
  %548 = or i64 %541, %547
  %549 = load i8*, i8** %7, align 8
  %550 = getelementptr inbounds i8, i8* %549, i64 16
  %551 = getelementptr inbounds i8, i8* %550, i64 6
  %552 = load i8, i8* %551, align 1
  %553 = zext i8 %552 to i64
  %554 = shl i64 %553, 8
  %555 = or i64 %548, %554
  %556 = load i8*, i8** %7, align 8
  %557 = getelementptr inbounds i8, i8* %556, i64 16
  %558 = getelementptr inbounds i8, i8* %557, i64 7
  %559 = load i8, i8* %558, align 1
  %560 = zext i8 %559 to i64
  %561 = or i64 %555, %560
  %562 = load i64, i64* %10, align 8
  %563 = add i64 %562, %561
  store i64 %563, i64* %10, align 8
  %564 = load i64, i64* %10, align 8
  %565 = shl i64 %564, 33
  %566 = load i64, i64* %10, align 8
  %567 = lshr i64 %566, 31
  %568 = or i64 %565, %567
  store i64 %568, i64* %10, align 8
  %569 = load i8*, i8** %7, align 8
  %570 = getelementptr inbounds i8, i8* %569, i64 16
  %571 = getelementptr inbounds i8, i8* %570, i64 0
  %572 = load i8, i8* %571, align 1
  %573 = zext i8 %572 to i64
  %574 = shl i64 %573, 56
  %575 = load i8*, i8** %7, align 8
  %576 = getelementptr inbounds i8, i8* %575, i64 16
  %577 = getelementptr inbounds i8, i8* %576, i64 1
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i64
  %580 = shl i64 %579, 48
  %581 = or i64 %574, %580
  %582 = load i8*, i8** %7, align 8
  %583 = getelementptr inbounds i8, i8* %582, i64 16
  %584 = getelementptr inbounds i8, i8* %583, i64 2
  %585 = load i8, i8* %584, align 1
  %586 = zext i8 %585 to i64
  %587 = shl i64 %586, 40
  %588 = or i64 %581, %587
  %589 = load i8*, i8** %7, align 8
  %590 = getelementptr inbounds i8, i8* %589, i64 16
  %591 = getelementptr inbounds i8, i8* %590, i64 3
  %592 = load i8, i8* %591, align 1
  %593 = zext i8 %592 to i64
  %594 = shl i64 %593, 32
  %595 = or i64 %588, %594
  %596 = load i8*, i8** %7, align 8
  %597 = getelementptr inbounds i8, i8* %596, i64 16
  %598 = getelementptr inbounds i8, i8* %597, i64 4
  %599 = load i8, i8* %598, align 1
  %600 = zext i8 %599 to i64
  %601 = shl i64 %600, 24
  %602 = or i64 %595, %601
  %603 = load i8*, i8** %7, align 8
  %604 = getelementptr inbounds i8, i8* %603, i64 16
  %605 = getelementptr inbounds i8, i8* %604, i64 5
  %606 = load i8, i8* %605, align 1
  %607 = zext i8 %606 to i64
  %608 = shl i64 %607, 16
  %609 = or i64 %602, %608
  %610 = load i8*, i8** %7, align 8
  %611 = getelementptr inbounds i8, i8* %610, i64 16
  %612 = getelementptr inbounds i8, i8* %611, i64 6
  %613 = load i8, i8* %612, align 1
  %614 = zext i8 %613 to i64
  %615 = shl i64 %614, 8
  %616 = or i64 %609, %615
  %617 = load i8*, i8** %7, align 8
  %618 = getelementptr inbounds i8, i8* %617, i64 16
  %619 = getelementptr inbounds i8, i8* %618, i64 7
  %620 = load i8, i8* %619, align 1
  %621 = zext i8 %620 to i64
  %622 = or i64 %616, %621
  %623 = load i64, i64* %10, align 8
  %624 = add i64 %623, %622
  store i64 %624, i64* %10, align 8
  %625 = load i64, i64* %10, align 8
  %626 = mul i64 %625, -307863662270213829
  store i64 %626, i64* %10, align 8
  br label %627

627:                                              ; preds = %504, %507
  %628 = load i8*, i8** %7, align 8
  %629 = getelementptr inbounds i8, i8* %628, i64 8
  %630 = getelementptr inbounds i8, i8* %629, i64 0
  %631 = load i8, i8* %630, align 1
  %632 = zext i8 %631 to i64
  %633 = shl i64 %632, 56
  %634 = load i8*, i8** %7, align 8
  %635 = getelementptr inbounds i8, i8* %634, i64 8
  %636 = getelementptr inbounds i8, i8* %635, i64 1
  %637 = load i8, i8* %636, align 1
  %638 = zext i8 %637 to i64
  %639 = shl i64 %638, 48
  %640 = or i64 %633, %639
  %641 = load i8*, i8** %7, align 8
  %642 = getelementptr inbounds i8, i8* %641, i64 8
  %643 = getelementptr inbounds i8, i8* %642, i64 2
  %644 = load i8, i8* %643, align 1
  %645 = zext i8 %644 to i64
  %646 = shl i64 %645, 40
  %647 = or i64 %640, %646
  %648 = load i8*, i8** %7, align 8
  %649 = getelementptr inbounds i8, i8* %648, i64 8
  %650 = getelementptr inbounds i8, i8* %649, i64 3
  %651 = load i8, i8* %650, align 1
  %652 = zext i8 %651 to i64
  %653 = shl i64 %652, 32
  %654 = or i64 %647, %653
  %655 = load i8*, i8** %7, align 8
  %656 = getelementptr inbounds i8, i8* %655, i64 8
  %657 = getelementptr inbounds i8, i8* %656, i64 4
  %658 = load i8, i8* %657, align 1
  %659 = zext i8 %658 to i64
  %660 = shl i64 %659, 24
  %661 = or i64 %654, %660
  %662 = load i8*, i8** %7, align 8
  %663 = getelementptr inbounds i8, i8* %662, i64 8
  %664 = getelementptr inbounds i8, i8* %663, i64 5
  %665 = load i8, i8* %664, align 1
  %666 = zext i8 %665 to i64
  %667 = shl i64 %666, 16
  %668 = or i64 %661, %667
  %669 = load i8*, i8** %7, align 8
  %670 = getelementptr inbounds i8, i8* %669, i64 8
  %671 = getelementptr inbounds i8, i8* %670, i64 6
  %672 = load i8, i8* %671, align 1
  %673 = zext i8 %672 to i64
  %674 = shl i64 %673, 8
  %675 = or i64 %668, %674
  %676 = load i8*, i8** %7, align 8
  %677 = getelementptr inbounds i8, i8* %676, i64 8
  %678 = getelementptr inbounds i8, i8* %677, i64 7
  %679 = load i8, i8* %678, align 1
  %680 = zext i8 %679 to i64
  %681 = or i64 %675, %680
  %682 = load i64, i64* %9, align 8
  %683 = add i64 %682, %681
  store i64 %683, i64* %9, align 8
  %684 = load i64, i64* %9, align 8
  %685 = shl i64 %684, 33
  %686 = load i64, i64* %9, align 8
  %687 = lshr i64 %686, 31
  %688 = or i64 %685, %687
  store i64 %688, i64* %9, align 8
  %689 = load i8*, i8** %7, align 8
  %690 = getelementptr inbounds i8, i8* %689, i64 8
  %691 = getelementptr inbounds i8, i8* %690, i64 0
  %692 = load i8, i8* %691, align 1
  %693 = zext i8 %692 to i64
  %694 = shl i64 %693, 56
  %695 = load i8*, i8** %7, align 8
  %696 = getelementptr inbounds i8, i8* %695, i64 8
  %697 = getelementptr inbounds i8, i8* %696, i64 1
  %698 = load i8, i8* %697, align 1
  %699 = zext i8 %698 to i64
  %700 = shl i64 %699, 48
  %701 = or i64 %694, %700
  %702 = load i8*, i8** %7, align 8
  %703 = getelementptr inbounds i8, i8* %702, i64 8
  %704 = getelementptr inbounds i8, i8* %703, i64 2
  %705 = load i8, i8* %704, align 1
  %706 = zext i8 %705 to i64
  %707 = shl i64 %706, 40
  %708 = or i64 %701, %707
  %709 = load i8*, i8** %7, align 8
  %710 = getelementptr inbounds i8, i8* %709, i64 8
  %711 = getelementptr inbounds i8, i8* %710, i64 3
  %712 = load i8, i8* %711, align 1
  %713 = zext i8 %712 to i64
  %714 = shl i64 %713, 32
  %715 = or i64 %708, %714
  %716 = load i8*, i8** %7, align 8
  %717 = getelementptr inbounds i8, i8* %716, i64 8
  %718 = getelementptr inbounds i8, i8* %717, i64 4
  %719 = load i8, i8* %718, align 1
  %720 = zext i8 %719 to i64
  %721 = shl i64 %720, 24
  %722 = or i64 %715, %721
  %723 = load i8*, i8** %7, align 8
  %724 = getelementptr inbounds i8, i8* %723, i64 8
  %725 = getelementptr inbounds i8, i8* %724, i64 5
  %726 = load i8, i8* %725, align 1
  %727 = zext i8 %726 to i64
  %728 = shl i64 %727, 16
  %729 = or i64 %722, %728
  %730 = load i8*, i8** %7, align 8
  %731 = getelementptr inbounds i8, i8* %730, i64 8
  %732 = getelementptr inbounds i8, i8* %731, i64 6
  %733 = load i8, i8* %732, align 1
  %734 = zext i8 %733 to i64
  %735 = shl i64 %734, 8
  %736 = or i64 %729, %735
  %737 = load i8*, i8** %7, align 8
  %738 = getelementptr inbounds i8, i8* %737, i64 8
  %739 = getelementptr inbounds i8, i8* %738, i64 7
  %740 = load i8, i8* %739, align 1
  %741 = zext i8 %740 to i64
  %742 = or i64 %736, %741
  %743 = load i64, i64* %9, align 8
  %744 = add i64 %743, %742
  store i64 %744, i64* %9, align 8
  %745 = load i64, i64* %9, align 8
  %746 = mul i64 %745, -307863662270213829
  store i64 %746, i64* %9, align 8
  br label %747

747:                                              ; preds = %504, %627
  %748 = load i8*, i8** %7, align 8
  %749 = getelementptr inbounds i8, i8* %748, i64 0
  %750 = load i8, i8* %749, align 1
  %751 = zext i8 %750 to i64
  %752 = shl i64 %751, 56
  %753 = load i8*, i8** %7, align 8
  %754 = getelementptr inbounds i8, i8* %753, i64 1
  %755 = load i8, i8* %754, align 1
  %756 = zext i8 %755 to i64
  %757 = shl i64 %756, 48
  %758 = or i64 %752, %757
  %759 = load i8*, i8** %7, align 8
  %760 = getelementptr inbounds i8, i8* %759, i64 2
  %761 = load i8, i8* %760, align 1
  %762 = zext i8 %761 to i64
  %763 = shl i64 %762, 40
  %764 = or i64 %758, %763
  %765 = load i8*, i8** %7, align 8
  %766 = getelementptr inbounds i8, i8* %765, i64 3
  %767 = load i8, i8* %766, align 1
  %768 = zext i8 %767 to i64
  %769 = shl i64 %768, 32
  %770 = or i64 %764, %769
  %771 = load i8*, i8** %7, align 8
  %772 = getelementptr inbounds i8, i8* %771, i64 4
  %773 = load i8, i8* %772, align 1
  %774 = zext i8 %773 to i64
  %775 = shl i64 %774, 24
  %776 = or i64 %770, %775
  %777 = load i8*, i8** %7, align 8
  %778 = getelementptr inbounds i8, i8* %777, i64 5
  %779 = load i8, i8* %778, align 1
  %780 = zext i8 %779 to i64
  %781 = shl i64 %780, 16
  %782 = or i64 %776, %781
  %783 = load i8*, i8** %7, align 8
  %784 = getelementptr inbounds i8, i8* %783, i64 6
  %785 = load i8, i8* %784, align 1
  %786 = zext i8 %785 to i64
  %787 = shl i64 %786, 8
  %788 = or i64 %782, %787
  %789 = load i8*, i8** %7, align 8
  %790 = getelementptr inbounds i8, i8* %789, i64 7
  %791 = load i8, i8* %790, align 1
  %792 = zext i8 %791 to i64
  %793 = or i64 %788, %792
  %794 = load i64, i64* %8, align 8
  %795 = add i64 %794, %793
  store i64 %795, i64* %8, align 8
  %796 = load i64, i64* %8, align 8
  %797 = shl i64 %796, 33
  %798 = load i64, i64* %8, align 8
  %799 = lshr i64 %798, 31
  %800 = or i64 %797, %799
  store i64 %800, i64* %8, align 8
  %801 = load i8*, i8** %7, align 8
  %802 = getelementptr inbounds i8, i8* %801, i64 0
  %803 = load i8, i8* %802, align 1
  %804 = zext i8 %803 to i64
  %805 = shl i64 %804, 56
  %806 = load i8*, i8** %7, align 8
  %807 = getelementptr inbounds i8, i8* %806, i64 1
  %808 = load i8, i8* %807, align 1
  %809 = zext i8 %808 to i64
  %810 = shl i64 %809, 48
  %811 = or i64 %805, %810
  %812 = load i8*, i8** %7, align 8
  %813 = getelementptr inbounds i8, i8* %812, i64 2
  %814 = load i8, i8* %813, align 1
  %815 = zext i8 %814 to i64
  %816 = shl i64 %815, 40
  %817 = or i64 %811, %816
  %818 = load i8*, i8** %7, align 8
  %819 = getelementptr inbounds i8, i8* %818, i64 3
  %820 = load i8, i8* %819, align 1
  %821 = zext i8 %820 to i64
  %822 = shl i64 %821, 32
  %823 = or i64 %817, %822
  %824 = load i8*, i8** %7, align 8
  %825 = getelementptr inbounds i8, i8* %824, i64 4
  %826 = load i8, i8* %825, align 1
  %827 = zext i8 %826 to i64
  %828 = shl i64 %827, 24
  %829 = or i64 %823, %828
  %830 = load i8*, i8** %7, align 8
  %831 = getelementptr inbounds i8, i8* %830, i64 5
  %832 = load i8, i8* %831, align 1
  %833 = zext i8 %832 to i64
  %834 = shl i64 %833, 16
  %835 = or i64 %829, %834
  %836 = load i8*, i8** %7, align 8
  %837 = getelementptr inbounds i8, i8* %836, i64 6
  %838 = load i8, i8* %837, align 1
  %839 = zext i8 %838 to i64
  %840 = shl i64 %839, 8
  %841 = or i64 %835, %840
  %842 = load i8*, i8** %7, align 8
  %843 = getelementptr inbounds i8, i8* %842, i64 7
  %844 = load i8, i8* %843, align 1
  %845 = zext i8 %844 to i64
  %846 = or i64 %841, %845
  %847 = load i64, i64* %8, align 8
  %848 = add i64 %847, %846
  store i64 %848, i64* %8, align 8
  %849 = load i64, i64* %8, align 8
  %850 = mul i64 %849, -307863662270213829
  store i64 %850, i64* %8, align 8
  %851 = load i64, i64* %5, align 8
  %852 = and i64 %851, 24
  %853 = load i8*, i8** %7, align 8
  %854 = getelementptr inbounds i8, i8* %853, i64 %852
  store i8* %854, i8** %7, align 8
  br label %855

855:                                              ; preds = %747, %504
  store i64 0, i64* %13, align 8
  %856 = load i64, i64* %5, align 8
  %857 = and i64 %856, 7
  switch i64 %857, label %974 [
    i64 7, label %858
    i64 6, label %866
    i64 5, label %874
    i64 4, label %882
    i64 3, label %890
    i64 2, label %898
    i64 1, label %906
  ]

858:                                              ; preds = %855
  %859 = load i8*, i8** %7, align 8
  %860 = getelementptr inbounds i8, i8* %859, i64 6
  %861 = load i8, i8* %860, align 1
  %862 = zext i8 %861 to i64
  %863 = shl i64 %862, 8
  %864 = load i64, i64* %13, align 8
  %865 = or i64 %864, %863
  store i64 %865, i64* %13, align 8
  br label %866

866:                                              ; preds = %855, %858
  %867 = load i8*, i8** %7, align 8
  %868 = getelementptr inbounds i8, i8* %867, i64 5
  %869 = load i8, i8* %868, align 1
  %870 = zext i8 %869 to i64
  %871 = shl i64 %870, 16
  %872 = load i64, i64* %13, align 8
  %873 = or i64 %872, %871
  store i64 %873, i64* %13, align 8
  br label %874

874:                                              ; preds = %855, %866
  %875 = load i8*, i8** %7, align 8
  %876 = getelementptr inbounds i8, i8* %875, i64 4
  %877 = load i8, i8* %876, align 1
  %878 = zext i8 %877 to i64
  %879 = shl i64 %878, 24
  %880 = load i64, i64* %13, align 8
  %881 = or i64 %880, %879
  store i64 %881, i64* %13, align 8
  br label %882

882:                                              ; preds = %855, %874
  %883 = load i8*, i8** %7, align 8
  %884 = getelementptr inbounds i8, i8* %883, i64 3
  %885 = load i8, i8* %884, align 1
  %886 = zext i8 %885 to i64
  %887 = shl i64 %886, 32
  %888 = load i64, i64* %13, align 8
  %889 = or i64 %888, %887
  store i64 %889, i64* %13, align 8
  br label %890

890:                                              ; preds = %855, %882
  %891 = load i8*, i8** %7, align 8
  %892 = getelementptr inbounds i8, i8* %891, i64 2
  %893 = load i8, i8* %892, align 1
  %894 = zext i8 %893 to i64
  %895 = shl i64 %894, 40
  %896 = load i64, i64* %13, align 8
  %897 = or i64 %896, %895
  store i64 %897, i64* %13, align 8
  br label %898

898:                                              ; preds = %855, %890
  %899 = load i8*, i8** %7, align 8
  %900 = getelementptr inbounds i8, i8* %899, i64 1
  %901 = load i8, i8* %900, align 1
  %902 = zext i8 %901 to i64
  %903 = shl i64 %902, 48
  %904 = load i64, i64* %13, align 8
  %905 = or i64 %904, %903
  store i64 %905, i64* %13, align 8
  br label %906

906:                                              ; preds = %855, %898
  %907 = load i8*, i8** %7, align 8
  %908 = getelementptr inbounds i8, i8* %907, i64 0
  %909 = load i8, i8* %908, align 1
  %910 = zext i8 %909 to i64
  %911 = shl i64 %910, 56
  %912 = load i64, i64* %13, align 8
  %913 = or i64 %912, %911
  store i64 %913, i64* %13, align 8
  %914 = load i64, i64* %5, align 8
  %915 = lshr i64 %914, 3
  %916 = and i64 %915, 3
  switch i64 %916, label %973 [
    i64 3, label %917
    i64 2, label %931
    i64 1, label %945
    i64 0, label %959
  ]

917:                                              ; preds = %906
  %918 = load i64, i64* %13, align 8
  %919 = load i64, i64* %11, align 8
  %920 = add i64 %919, %918
  store i64 %920, i64* %11, align 8
  %921 = load i64, i64* %11, align 8
  %922 = shl i64 %921, 33
  %923 = load i64, i64* %11, align 8
  %924 = lshr i64 %923, 31
  %925 = or i64 %922, %924
  store i64 %925, i64* %11, align 8
  %926 = load i64, i64* %13, align 8
  %927 = load i64, i64* %11, align 8
  %928 = add i64 %927, %926
  store i64 %928, i64* %11, align 8
  %929 = load i64, i64* %11, align 8
  %930 = mul i64 %929, -307863662270213829
  store i64 %930, i64* %11, align 8
  br label %973

931:                                              ; preds = %906
  %932 = load i64, i64* %13, align 8
  %933 = load i64, i64* %10, align 8
  %934 = add i64 %933, %932
  store i64 %934, i64* %10, align 8
  %935 = load i64, i64* %10, align 8
  %936 = shl i64 %935, 33
  %937 = load i64, i64* %10, align 8
  %938 = lshr i64 %937, 31
  %939 = or i64 %936, %938
  store i64 %939, i64* %10, align 8
  %940 = load i64, i64* %13, align 8
  %941 = load i64, i64* %10, align 8
  %942 = add i64 %941, %940
  store i64 %942, i64* %10, align 8
  %943 = load i64, i64* %10, align 8
  %944 = mul i64 %943, -307863662270213829
  store i64 %944, i64* %10, align 8
  br label %973

945:                                              ; preds = %906
  %946 = load i64, i64* %13, align 8
  %947 = load i64, i64* %9, align 8
  %948 = add i64 %947, %946
  store i64 %948, i64* %9, align 8
  %949 = load i64, i64* %9, align 8
  %950 = shl i64 %949, 33
  %951 = load i64, i64* %9, align 8
  %952 = lshr i64 %951, 31
  %953 = or i64 %950, %952
  store i64 %953, i64* %9, align 8
  %954 = load i64, i64* %13, align 8
  %955 = load i64, i64* %9, align 8
  %956 = add i64 %955, %954
  store i64 %956, i64* %9, align 8
  %957 = load i64, i64* %9, align 8
  %958 = mul i64 %957, -307863662270213829
  store i64 %958, i64* %9, align 8
  br label %973

959:                                              ; preds = %906
  %960 = load i64, i64* %13, align 8
  %961 = load i64, i64* %8, align 8
  %962 = add i64 %961, %960
  store i64 %962, i64* %8, align 8
  %963 = load i64, i64* %8, align 8
  %964 = shl i64 %963, 33
  %965 = load i64, i64* %8, align 8
  %966 = lshr i64 %965, 31
  %967 = or i64 %964, %966
  store i64 %967, i64* %8, align 8
  %968 = load i64, i64* %13, align 8
  %969 = load i64, i64* %8, align 8
  %970 = add i64 %969, %968
  store i64 %970, i64* %8, align 8
  %971 = load i64, i64* %8, align 8
  %972 = mul i64 %971, -307863662270213829
  store i64 %972, i64* %8, align 8
  br label %973

973:                                              ; preds = %906, %959, %945, %931, %917
  br label %974

974:                                              ; preds = %973, %855
  %975 = load i64, i64* %8, align 8
  %976 = shl i64 %975, 17
  %977 = load i64, i64* %8, align 8
  %978 = lshr i64 %977, 47
  %979 = or i64 %976, %978
  %980 = load i64, i64* %9, align 8
  %981 = shl i64 %980, 13
  %982 = load i64, i64* %9, align 8
  %983 = lshr i64 %982, 51
  %984 = or i64 %981, %983
  %985 = add i64 %979, %984
  %986 = load i64, i64* %10, align 8
  %987 = shl i64 %986, 47
  %988 = load i64, i64* %10, align 8
  %989 = lshr i64 %988, 17
  %990 = or i64 %987, %989
  %991 = add i64 %985, %990
  %992 = load i64, i64* %11, align 8
  %993 = shl i64 %992, 57
  %994 = load i64, i64* %11, align 8
  %995 = lshr i64 %994, 7
  %996 = or i64 %993, %995
  %997 = add i64 %991, %996
  store i64 %997, i64* %14, align 8
  %998 = load i64, i64* %5, align 8
  %999 = shl i64 %998, 33
  %1000 = load i64, i64* %5, align 8
  %1001 = xor i64 %1000, %999
  store i64 %1001, i64* %5, align 8
  %1002 = load i64, i64* %5, align 8
  %1003 = load i64, i64* %14, align 8
  %1004 = add i64 %1003, %1002
  store i64 %1004, i64* %14, align 8
  %1005 = load i64, i64* %8, align 8
  %1006 = mul i64 %1005, -6119419677951424823
  %1007 = load i64, i64* %14, align 8
  %1008 = add i64 %1007, %1006
  store i64 %1008, i64* %14, align 8
  %1009 = load i64, i64* %14, align 8
  %1010 = shl i64 %1009, 13
  %1011 = load i64, i64* %14, align 8
  %1012 = lshr i64 %1011, 51
  %1013 = or i64 %1010, %1012
  %1014 = load i64, i64* %14, align 8
  %1015 = xor i64 %1014, %1013
  store i64 %1015, i64* %14, align 8
  %1016 = load i64, i64* %9, align 8
  %1017 = mul i64 %1016, -6119419677951424823
  %1018 = load i64, i64* %14, align 8
  %1019 = add i64 %1018, %1017
  store i64 %1019, i64* %14, align 8
  %1020 = load i64, i64* %14, align 8
  %1021 = shl i64 %1020, 29
  %1022 = load i64, i64* %14, align 8
  %1023 = lshr i64 %1022, 35
  %1024 = or i64 %1021, %1023
  %1025 = load i64, i64* %14, align 8
  %1026 = xor i64 %1025, %1024
  store i64 %1026, i64* %14, align 8
  %1027 = load i64, i64* %10, align 8
  %1028 = mul i64 %1027, -6119419677951424823
  %1029 = load i64, i64* %14, align 8
  %1030 = add i64 %1029, %1028
  store i64 %1030, i64* %14, align 8
  %1031 = load i64, i64* %14, align 8
  %1032 = shl i64 %1031, 33
  %1033 = load i64, i64* %14, align 8
  %1034 = lshr i64 %1033, 31
  %1035 = or i64 %1032, %1034
  %1036 = load i64, i64* %14, align 8
  %1037 = xor i64 %1036, %1035
  store i64 %1037, i64* %14, align 8
  %1038 = load i64, i64* %11, align 8
  %1039 = mul i64 %1038, -6119419677951424823
  %1040 = load i64, i64* %14, align 8
  %1041 = add i64 %1040, %1039
  store i64 %1041, i64* %14, align 8
  %1042 = load i64, i64* %14, align 8
  %1043 = shl i64 %1042, 51
  %1044 = load i64, i64* %14, align 8
  %1045 = lshr i64 %1044, 13
  %1046 = or i64 %1043, %1045
  %1047 = load i64, i64* %14, align 8
  %1048 = xor i64 %1047, %1046
  store i64 %1048, i64* %14, align 8
  %1049 = load i64, i64* %14, align 8
  %1050 = lshr i64 %1049, 29
  %1051 = mul i64 %1050, -307863662270213829
  %1052 = load i64, i64* %14, align 8
  %1053 = xor i64 %1052, %1051
  store i64 %1053, i64* %14, align 8
  %1054 = load i64, i64* %14, align 8
  ret i64 %1054
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_set_arg(i64, i8*, i8*, i8*, %struct.fio_cli_parser_data_s*) #0 {
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
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.fio_cli_parser_data_s* %4, %struct.fio_cli_parser_data_s** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %82, label %30

30:                                               ; preds = %26, %5
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %288

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @strcasecmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strcasecmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %42, %38, %34
  br label %288

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %10, i32 0, i32 0
  %53 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %54 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %52, align 8
  %58 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %10, i32 0, i32 1
  store i8* null, i8** %58, align 8
  %59 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %10, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = bitcast %struct.cstr_s* %10 to { i64, i8* }*
  %63 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %62, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  call void @fio_cli_hash_insert(%struct.fio_cli_hash_s* @fio_values, i64 %60, i64 %64, i8* %66, i8* %61, i8** null)
  %67 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %68 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %51
  %72 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %73 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %76 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %259

81:                                               ; preds = %71, %51
  br label %570

82:                                               ; preds = %26
  %83 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @fio_cli_get_line_type(%struct.fio_cli_parser_data_s* %83, i8* %84)
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = ptrtoint i8* %86 to i64
  switch i64 %87, label %129 [
    i64 2, label %88
    i64 3, label %106
    i64 1, label %118
  ]

88:                                               ; preds = %82
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %94 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %93, i32 0, i32 5
  %95 = load i8**, i8*** %94, align 8
  %96 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %97 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %95, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %92, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %259

105:                                              ; preds = %91, %88
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %129

106:                                              ; preds = %82
  %107 = load i8*, i8** %7, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i8*, i8** %7, align 8
  store i8* %110, i8** %12, align 8
  %111 = call i64 @fio_atol(i8** %12)
  %112 = load i8*, i8** %12, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %259

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %106
  br label %118

118:                                              ; preds = %82, %117
  %119 = load i8*, i8** %7, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  br label %259

122:                                              ; preds = %118
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  br label %229

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %82, %128, %105
  %130 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %132 = load i8*, i8** %8, align 8
  store i8* %132, i8** %131, align 8
  br label %133

133:                                              ; preds = %221, %129
  %134 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 45
  br i1 %139, label %140, label %228

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %170, %140
  %142 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 32
  br i1 %158, label %159, label %168

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 44
  br label %168

168:                                              ; preds = %159, %150, %141
  %169 = phi i1 [ false, %150 ], [ false, %141 ], [ %167, %159 ]
  br i1 %169, label %170, label %174

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %171, align 8
  br label %141

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @fio_risky_hash(i8* %176, i64 %178, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64))
  %180 = load i8*, i8** %7, align 8
  %181 = bitcast %struct.cstr_s* %13 to { i64, i8* }*
  %182 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %181, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  call void @fio_cli_hash_insert(%struct.fio_cli_hash_s* @fio_values, i64 %179, i64 %183, i8* %185, i8* %180, i8** null)
  br label %186

186:                                              ; preds = %217, %174
  %187 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %215

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 32
  br i1 %203, label %213, label %204

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 44
  br label %213

213:                                              ; preds = %204, %195
  %214 = phi i1 [ true, %195 ], [ %212, %204 ]
  br label %215

215:                                              ; preds = %213, %186
  %216 = phi i1 [ false, %186 ], [ %214, %213 ]
  br i1 %216, label %217, label %221

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  br label %186

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 %223
  store i8* %226, i8** %224, align 8
  %227 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %13, i32 0, i32 0
  store i64 0, i64* %227, align 8
  br label %133

228:                                              ; preds = %133
  br label %229

229:                                              ; preds = %228, %127
  %230 = load i8*, i8** %7, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %258

232:                                              ; preds = %229
  %233 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %234 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %237 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %258

240:                                              ; preds = %232
  %241 = load i8*, i8** %7, align 8
  %242 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %243 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %242, i32 0, i32 5
  %244 = load i8**, i8*** %243, align 8
  %245 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %246 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %244, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = icmp eq i8* %241, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %240
  %254 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %255 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 8
  br label %258

258:                                              ; preds = %253, %240, %232, %229
  br label %570

259:                                              ; preds = %121, %115, %104, %79
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %261 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %6, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %271 = load i8*, i8** %7, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %284

273:                                              ; preds = %259
  %274 = load i8*, i8** %7, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 0
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %273
  %280 = load i8*, i8** %7, align 8
  br label %282

281:                                              ; preds = %273
  br label %282

282:                                              ; preds = %281, %279
  %283 = phi i8* [ %280, %279 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %281 ]
  br label %285

284:                                              ; preds = %259
  br label %285

285:                                              ; preds = %284, %282
  %286 = phi i8* [ %283, %282 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %284 ]
  %287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %260, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %263, i8* %265, i8* %270, i8* %286)
  br label %288

288:                                              ; preds = %285, %50, %33
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %290 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %291 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %290, i32 0, i32 6
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %296 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %295, i32 0, i32 6
  %297 = load i8*, i8** %296, align 8
  br label %299

298:                                              ; preds = %288
  br label %299

299:                                              ; preds = %298, %294
  %300 = phi i8* [ %297, %294 ], [ getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i64 0, i64 0), %298 ]
  %301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %300)
  %302 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %9, align 8
  %303 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %302, i32 0, i32 7
  %304 = load i8**, i8*** %303, align 8
  store i8** %304, i8*** %14, align 8
  br label %305

305:                                              ; preds = %564, %329, %321, %313, %299
  %306 = load i8**, i8*** %14, align 8
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %567

309:                                              ; preds = %305
  %310 = load i8**, i8*** %14, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = ptrtoint i8* %311 to i64
  switch i64 %312, label %316 [
    i64 1, label %313
    i64 2, label %313
    i64 3, label %313
    i64 4, label %313
    i64 5, label %313
  ]

313:                                              ; preds = %309, %309, %309, %309, %309
  %314 = load i8**, i8*** %14, align 8
  %315 = getelementptr inbounds i8*, i8** %314, i32 1
  store i8** %315, i8*** %14, align 8
  br label %305

316:                                              ; preds = %309
  store i8* inttoptr (i64 1 to i8*), i8** %11, align 8
  %317 = load i8**, i8*** %14, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i64 1
  %319 = load i8*, i8** %318, align 8
  %320 = ptrtoint i8* %319 to i64
  switch i64 %320, label %341 [
    i64 4, label %321
    i64 5, label %329
    i64 1, label %337
    i64 2, label %337
    i64 3, label %337
  ]

321:                                              ; preds = %316
  %322 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %323 = load i8**, i8*** %14, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i64 0
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %322, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %325)
  %327 = load i8**, i8*** %14, align 8
  %328 = getelementptr inbounds i8*, i8** %327, i64 2
  store i8** %328, i8*** %14, align 8
  br label %305

329:                                              ; preds = %316
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %331 = load i8**, i8*** %14, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 0
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %330, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %333)
  %335 = load i8**, i8*** %14, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 2
  store i8** %336, i8*** %14, align 8
  br label %305

337:                                              ; preds = %316, %316, %316
  %338 = load i8**, i8*** %14, align 8
  %339 = getelementptr inbounds i8*, i8** %338, i64 1
  %340 = load i8*, i8** %339, align 8
  store i8* %340, i8** %11, align 8
  br label %341

341:                                              ; preds = %337, %316
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %342 = load i8**, i8*** %14, align 8
  %343 = load i8*, i8** %342, align 8
  store i8* %343, i8** %18, align 8
  br label %344

344:                                              ; preds = %415, %341
  %345 = load i8*, i8** %18, align 8
  %346 = load i64, i64* %17, align 8
  %347 = getelementptr inbounds i8, i8* %345, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 45
  br i1 %350, label %351, label %416

351:                                              ; preds = %344
  br label %352

352:                                              ; preds = %381, %351
  %353 = load i8*, i8** %18, align 8
  %354 = load i64, i64* %17, align 8
  %355 = getelementptr inbounds i8, i8* %353, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %373

359:                                              ; preds = %352
  %360 = load i8*, i8** %18, align 8
  %361 = load i64, i64* %17, align 8
  %362 = getelementptr inbounds i8, i8* %360, i64 %361
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp ne i32 %364, 32
  br i1 %365, label %366, label %373

366:                                              ; preds = %359
  %367 = load i8*, i8** %18, align 8
  %368 = load i64, i64* %17, align 8
  %369 = getelementptr inbounds i8, i8* %367, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp ne i32 %371, 44
  br label %373

373:                                              ; preds = %366, %359, %352
  %374 = phi i1 [ false, %359 ], [ false, %352 ], [ %372, %366 ]
  br i1 %374, label %375, label %384

375:                                              ; preds = %373
  %376 = load i32, i32* %15, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %381, label %378

378:                                              ; preds = %375
  %379 = load i32, i32* %16, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %16, align 4
  br label %381

381:                                              ; preds = %378, %375
  %382 = load i64, i64* %17, align 8
  %383 = add i64 %382, 1
  store i64 %383, i64* %17, align 8
  br label %352

384:                                              ; preds = %373
  %385 = load i32, i32* %15, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %15, align 4
  br label %387

387:                                              ; preds = %412, %384
  %388 = load i8*, i8** %18, align 8
  %389 = load i64, i64* %17, align 8
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %410

394:                                              ; preds = %387
  %395 = load i8*, i8** %18, align 8
  %396 = load i64, i64* %17, align 8
  %397 = getelementptr inbounds i8, i8* %395, i64 %396
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = icmp eq i32 %399, 32
  br i1 %400, label %408, label %401

401:                                              ; preds = %394
  %402 = load i8*, i8** %18, align 8
  %403 = load i64, i64* %17, align 8
  %404 = getelementptr inbounds i8, i8* %402, i64 %403
  %405 = load i8, i8* %404, align 1
  %406 = sext i8 %405 to i32
  %407 = icmp eq i32 %406, 44
  br label %408

408:                                              ; preds = %401, %394
  %409 = phi i1 [ true, %394 ], [ %407, %401 ]
  br label %410

410:                                              ; preds = %408, %387
  %411 = phi i1 [ false, %387 ], [ %409, %408 ]
  br i1 %411, label %412, label %415

412:                                              ; preds = %410
  %413 = load i64, i64* %17, align 8
  %414 = add i64 %413, 1
  store i64 %414, i64* %17, align 8
  br label %387

415:                                              ; preds = %410
  br label %344

416:                                              ; preds = %344
  %417 = load i8*, i8** %11, align 8
  %418 = ptrtoint i8* %417 to i64
  switch i64 %418, label %443 [
    i64 1, label %419
    i64 2, label %427
    i64 3, label %435
  ]

419:                                              ; preds = %416
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %421 = load i32, i32* %16, align 4
  %422 = load i8*, i8** %18, align 8
  %423 = load i8*, i8** %18, align 8
  %424 = load i64, i64* %17, align 8
  %425 = getelementptr inbounds i8, i8* %423, i64 %424
  %426 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %421, i8* %422, i8* %425)
  br label %443

427:                                              ; preds = %416
  %428 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %429 = load i32, i32* %16, align 4
  %430 = load i8*, i8** %18, align 8
  %431 = load i8*, i8** %18, align 8
  %432 = load i64, i64* %17, align 8
  %433 = getelementptr inbounds i8, i8* %431, i64 %432
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %428, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %429, i8* %430, i8* %433)
  br label %443

435:                                              ; preds = %416
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %437 = load i32, i32* %16, align 4
  %438 = load i8*, i8** %18, align 8
  %439 = load i8*, i8** %18, align 8
  %440 = load i64, i64* %17, align 8
  %441 = getelementptr inbounds i8, i8* %439, i64 %440
  %442 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %436, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %437, i8* %438, i8* %441)
  br label %443

443:                                              ; preds = %416, %435, %427, %419
  %444 = load i32, i32* %16, align 4
  %445 = sext i32 %444 to i64
  store i64 %445, i64* %17, align 8
  br label %446

446:                                              ; preds = %471, %443
  %447 = load i8*, i8** %18, align 8
  %448 = load i64, i64* %17, align 8
  %449 = getelementptr inbounds i8, i8* %447, i64 %448
  %450 = load i8, i8* %449, align 1
  %451 = sext i8 %450 to i32
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %469

453:                                              ; preds = %446
  %454 = load i8*, i8** %18, align 8
  %455 = load i64, i64* %17, align 8
  %456 = getelementptr inbounds i8, i8* %454, i64 %455
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = icmp eq i32 %458, 32
  br i1 %459, label %467, label %460

460:                                              ; preds = %453
  %461 = load i8*, i8** %18, align 8
  %462 = load i64, i64* %17, align 8
  %463 = getelementptr inbounds i8, i8* %461, i64 %462
  %464 = load i8, i8* %463, align 1
  %465 = sext i8 %464 to i32
  %466 = icmp eq i32 %465, 44
  br label %467

467:                                              ; preds = %460, %453
  %468 = phi i1 [ true, %453 ], [ %466, %460 ]
  br label %469

469:                                              ; preds = %467, %446
  %470 = phi i1 [ false, %446 ], [ %468, %467 ]
  br i1 %470, label %471, label %474

471:                                              ; preds = %469
  %472 = load i64, i64* %17, align 8
  %473 = add i64 %472, 1
  store i64 %473, i64* %17, align 8
  br label %446

474:                                              ; preds = %469
  br label %475

475:                                              ; preds = %563, %474
  %476 = load i8*, i8** %18, align 8
  %477 = load i64, i64* %17, align 8
  %478 = getelementptr inbounds i8, i8* %476, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = sext i8 %479 to i32
  %481 = icmp eq i32 %480, 45
  br i1 %481, label %482, label %564

482:                                              ; preds = %475
  %483 = load i64, i64* %17, align 8
  store i64 %483, i64* %19, align 8
  br label %484

484:                                              ; preds = %507, %482
  %485 = load i8*, i8** %18, align 8
  %486 = load i64, i64* %17, align 8
  %487 = getelementptr inbounds i8, i8* %485, i64 %486
  %488 = load i8, i8* %487, align 1
  %489 = sext i8 %488 to i32
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %505

491:                                              ; preds = %484
  %492 = load i8*, i8** %18, align 8
  %493 = load i64, i64* %17, align 8
  %494 = getelementptr inbounds i8, i8* %492, i64 %493
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = icmp ne i32 %496, 32
  br i1 %497, label %498, label %505

498:                                              ; preds = %491
  %499 = load i8*, i8** %18, align 8
  %500 = load i64, i64* %17, align 8
  %501 = getelementptr inbounds i8, i8* %499, i64 %500
  %502 = load i8, i8* %501, align 1
  %503 = sext i8 %502 to i32
  %504 = icmp ne i32 %503, 44
  br label %505

505:                                              ; preds = %498, %491, %484
  %506 = phi i1 [ false, %491 ], [ false, %484 ], [ %504, %498 ]
  br i1 %506, label %507, label %510

507:                                              ; preds = %505
  %508 = load i64, i64* %17, align 8
  %509 = add i64 %508, 1
  store i64 %509, i64* %17, align 8
  br label %484

510:                                              ; preds = %505
  %511 = load i32, i32* %16, align 4
  %512 = sext i32 %511 to i64
  %513 = load i64, i64* %17, align 8
  %514 = load i64, i64* %19, align 8
  %515 = sub i64 %513, %514
  %516 = sub i64 %512, %515
  %517 = trunc i64 %516 to i32
  store i32 %517, i32* %20, align 4
  %518 = load i32, i32* %20, align 4
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %521

520:                                              ; preds = %510
  store i32 0, i32* %20, align 4
  br label %521

521:                                              ; preds = %520, %510
  %522 = load i8*, i8** %11, align 8
  %523 = ptrtoint i8* %522 to i64
  switch i64 %523, label %563 [
    i64 1, label %524
    i64 2, label %537
    i64 3, label %550
  ]

524:                                              ; preds = %521
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %526 = load i64, i64* %17, align 8
  %527 = load i64, i64* %19, align 8
  %528 = sub i64 %526, %527
  %529 = trunc i64 %528 to i32
  %530 = load i8*, i8** %18, align 8
  %531 = load i64, i64* %19, align 8
  %532 = getelementptr inbounds i8, i8* %530, i64 %531
  %533 = load i32, i32* %20, align 4
  %534 = load i32, i32* %16, align 4
  %535 = load i8*, i8** %18, align 8
  %536 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %525, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0), i32 %529, i8* %532, i32 %533, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %534, i8* %535)
  br label %563

537:                                              ; preds = %521
  %538 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %539 = load i64, i64* %17, align 8
  %540 = load i64, i64* %19, align 8
  %541 = sub i64 %539, %540
  %542 = trunc i64 %541 to i32
  %543 = load i8*, i8** %18, align 8
  %544 = load i64, i64* %19, align 8
  %545 = getelementptr inbounds i8, i8* %543, i64 %544
  %546 = load i32, i32* %20, align 4
  %547 = load i32, i32* %16, align 4
  %548 = load i8*, i8** %18, align 8
  %549 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %538, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 %542, i8* %545, i32 %546, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %547, i8* %548)
  br label %563

550:                                              ; preds = %521
  %551 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %552 = load i64, i64* %17, align 8
  %553 = load i64, i64* %19, align 8
  %554 = sub i64 %552, %553
  %555 = trunc i64 %554 to i32
  %556 = load i8*, i8** %18, align 8
  %557 = load i64, i64* %19, align 8
  %558 = getelementptr inbounds i8, i8* %556, i64 %557
  %559 = load i32, i32* %20, align 4
  %560 = load i32, i32* %16, align 4
  %561 = load i8*, i8** %18, align 8
  %562 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %551, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0), i32 %555, i8* %558, i32 %559, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %560, i8* %561)
  br label %563

563:                                              ; preds = %521, %550, %537, %524
  br label %475

564:                                              ; preds = %475
  %565 = load i8**, i8*** %14, align 8
  %566 = getelementptr inbounds i8*, i8** %565, i32 1
  store i8** %566, i8*** %14, align 8
  br label %305

567:                                              ; preds = %305
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %569 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %568, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.26, i64 0, i64 0))
  call void @fio_cli_end()
  call void @exit(i32 0) #9
  unreachable

570:                                              ; preds = %258, %81
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash_free(%struct.fio_cli_hash_s*) #0 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  %3 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %4 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %5 = alloca %struct.fio_cli_hash_s, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  %6 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %6, i32 0, i32 3
  %8 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %7, align 8
  %9 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %8, i64 %11
  store %struct.fio_cli_hash__ordered_s_* %12, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %13 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %14 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %13, i32 0, i32 3
  %15 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %14, align 8
  %16 = icmp ne %struct.fio_cli_hash__ordered_s_* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %19 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %18, i32 0, i32 3
  %20 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %19, align 8
  %21 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %22 = icmp ne %struct.fio_cli_hash__ordered_s_* %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %25 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %24, i32 0, i32 3
  %26 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %25, align 8
  store %struct.fio_cli_hash__ordered_s_* %26, %struct.fio_cli_hash__ordered_s_** %4, align 8
  br label %27

27:                                               ; preds = %40, %23
  %28 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %29 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %30 = icmp ult %struct.fio_cli_hash__ordered_s_* %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %33 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38, %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %42 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %41, i32 1
  store %struct.fio_cli_hash__ordered_s_* %42, %struct.fio_cli_hash__ordered_s_** %4, align 8
  br label %27

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %17, %1
  %45 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %46 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %45, i32 0, i32 4
  %47 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %46, align 8
  %48 = bitcast %struct.fio_cli_hash__map_s_* %47 to i8*
  call void @fio_free(i8* %48)
  %49 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %50 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %49, i32 0, i32 3
  %51 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %50, align 8
  %52 = bitcast %struct.fio_cli_hash__ordered_s_* %51 to i8*
  call void @fio_free(i8* %52)
  %53 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %54 = bitcast %struct.fio_cli_hash_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 48, i1 false)
  %55 = bitcast %struct.fio_cli_hash_s* %53 to i8*
  %56 = bitcast %struct.fio_cli_hash_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 48, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fio_cli_get(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cstr_s, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 0
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7) #8
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %9, align 8
  %11 = call i64 @fio_cli_hash_count(%struct.fio_cli_hash_s* @fio_values)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %27

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @fio_risky_hash(i8* %16, i64 %18, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64))
  %20 = bitcast %struct.cstr_s* %4 to { i64, i8* }*
  %21 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @fio_cli_hash_find(%struct.fio_cli_hash_s* @fio_values, i64 %19, i64 %22, i8* %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fio_cli_get_i(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @fio_cli_get(i8* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  %12 = call i64 @fio_atol(i8** %4)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i64 @fio_atol(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fio_cli_unnamed_count() #0 {
  %1 = load i64, i64* @fio_unnamed_count, align 8
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fio_cli_unnamed(i32) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cstr_s, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i64 @fio_cli_hash_count(%struct.fio_cli_hash_s* @fio_values)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @fio_unnamed_count, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8
  br label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 0
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, 1
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %12, align 8
  %16 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %4, i32 0, i32 1
  store i8* null, i8** %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = bitcast %struct.cstr_s* %4 to { i64, i8* }*
  %21 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @fio_cli_hash_find(%struct.fio_cli_hash_s* @fio_values, i64 %19, i64 %22, i8* %24)
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %11, %10
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fio_cli_set(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cstr_s, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %5, i32 0, i32 0
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7) #8
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %5, i32 0, i32 1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %5, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @fio_risky_hash(i8* %12, i64 %14, i64 ptrtoint (void (i32, i8**, i32, i32, i8*, i8**)* @fio_cli_start to i64))
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast %struct.cstr_s* %5 to { i64, i8* }*
  %18 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  call void @fio_cli_hash_insert(%struct.fio_cli_hash_s* @fio_values, i64 %15, i64 %19, i8* %21, i8* %16, i8** null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash_insert(%struct.fio_cli_hash_s*, i64, i64, i8*, i8*, i8**) #0 {
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
  store i64 %1, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i8** %5, i8*** %11, align 8
  %17 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %12, i32 0, i32 0
  %20 = bitcast %struct.cstr_s* %19 to i8*
  %21 = bitcast %struct.cstr_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %12, i32 0, i32 1
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %22, align 8
  %24 = load i8**, i8*** %11, align 8
  call void @fio_cli_hash__insert_or_overwrite_(%struct.fio_cli_hash_couplet_s* sret %13, %struct.fio_cli_hash_s* %17, i64 %18, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %12, i32 1, i8** %24)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fio_cli_hash__map_s_* @fio_cli_hash__find_map_pos_(%struct.fio_cli_hash_s*, i64, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8) #0 {
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
  store i64 %1, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 -1, i64* %6, align 8
  br label %17

17:                                               ; preds = %16, %3
  %18 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %19 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %18, i32 0, i32 4
  %20 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %19, align 8
  %21 = icmp ne %struct.fio_cli_hash__map_s_* %20, null
  br i1 %21, label %22, label %271

22:                                               ; preds = %17
  %23 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %24 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %23, i32 0, i32 5
  %25 = load i8, i8* %24, align 8
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %30 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %33 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  call void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %37)
  br label %38

38:                                               ; preds = %36, %28, %22
  store i64 0, i64* %7, align 8
  %39 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %40 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %39, i32 0, i32 6
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = sub i64 %44, 1
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = lshr i64 %46, 0
  %48 = load i64, i64* %6, align 8
  %49 = shl i64 %48, 0
  %50 = or i64 %47, %49
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @fio_ct_if2(i64 0, i64 %51, i64 0)
  %53 = xor i64 %50, %52
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %56 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %55, i32 0, i32 6
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i64
  %59 = and i64 %58, 63
  %60 = lshr i64 %54, %59
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %63 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %62, i32 0, i32 6
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 0, %65
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 63
  %69 = shl i64 %61, %68
  %70 = or i64 %60, %69
  %71 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %72 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %71, i32 0, i32 6
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @fio_ct_if2(i64 %74, i64 %75, i64 0)
  %77 = xor i64 %70, %76
  store i64 %77, i64* %12, align 8
  %78 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %79 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %78, i32 0, i32 4
  %80 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %9, align 8
  %83 = and i64 %81, %82
  %84 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %80, i64 %83
  store %struct.fio_cli_hash__map_s_* %84, %struct.fio_cli_hash__map_s_** %8, align 8
  %85 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %86 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 0, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %38
  %90 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  store %struct.fio_cli_hash__map_s_* %90, %struct.fio_cli_hash__map_s_** %4, align 8
  br label %272

91:                                               ; preds = %38
  %92 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %93 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %153

97:                                               ; preds = %91
  %98 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %99 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %98, i32 0, i32 1
  %100 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %99, align 8
  %101 = icmp ne %struct.fio_cli_hash__ordered_s_* %100, null
  br i1 %101, label %102, label %146

102:                                              ; preds = %97
  %103 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %104 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %103, i32 0, i32 1
  %105 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %104, align 8
  %106 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0
  %111 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %148

114:                                              ; preds = %102
  %115 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %116 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %115, i32 0, i32 1
  %117 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %116, align 8
  %118 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0
  %123 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = icmp eq i8* %121, %124
  br i1 %125, label %146, label %126

126:                                              ; preds = %114
  %127 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %128 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %127, i32 0, i32 1
  %129 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %128, align 8
  %130 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0
  %135 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %138 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %137, i32 0, i32 1
  %139 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %138, align 8
  %140 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @memcmp(i8* %133, i8* %136, i64 %143) #8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %126, %114, %97
  %147 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  store %struct.fio_cli_hash__map_s_* %147, %struct.fio_cli_hash__map_s_** %4, align 8
  br label %272

148:                                              ; preds = %126, %102
  %149 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %150 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %149, i32 0, i32 5
  store i8 1, i8* %150, align 8
  %151 = load i64, i64* %7, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %7, align 8
  br label %153

153:                                              ; preds = %148, %91
  store i64 0, i64* %10, align 8
  %154 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %155 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ugt i64 %156, 384
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %164

159:                                              ; preds = %153
  %160 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %161 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = lshr i64 %162, 2
  br label %164

164:                                              ; preds = %159, %158
  %165 = phi i64 [ 96, %158 ], [ %163, %159 ]
  %166 = mul i64 11, %165
  store i64 %166, i64* %13, align 8
  br label %167

167:                                              ; preds = %269, %164
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* %13, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %171, label %270

171:                                              ; preds = %167
  %172 = load i64, i64* %10, align 8
  %173 = add i64 %172, 11
  store i64 %173, i64* %10, align 8
  %174 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %175 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %174, i32 0, i32 4
  %176 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %175, align 8
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %177, %178
  %180 = load i64, i64* %9, align 8
  %181 = and i64 %179, %180
  %182 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %176, i64 %181
  store %struct.fio_cli_hash__map_s_* %182, %struct.fio_cli_hash__map_s_** %8, align 8
  %183 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %184 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 0, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %171
  %188 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  store %struct.fio_cli_hash__map_s_* %188, %struct.fio_cli_hash__map_s_** %4, align 8
  br label %272

189:                                              ; preds = %171
  %190 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %191 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %11, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %269

195:                                              ; preds = %189
  %196 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %197 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %196, i32 0, i32 1
  %198 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %197, align 8
  %199 = icmp ne %struct.fio_cli_hash__ordered_s_* %198, null
  br i1 %199, label %200, label %244

200:                                              ; preds = %195
  %201 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %202 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %201, i32 0, i32 1
  %203 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %202, align 8
  %204 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0
  %209 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %207, %210
  br i1 %211, label %212, label %246

212:                                              ; preds = %200
  %213 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %214 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %213, i32 0, i32 1
  %215 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %214, align 8
  %216 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0
  %221 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = icmp eq i8* %219, %222
  br i1 %223, label %244, label %224

224:                                              ; preds = %212
  %225 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %226 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %225, i32 0, i32 1
  %227 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %226, align 8
  %228 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %2, i32 0, i32 0
  %233 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  %236 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %235, i32 0, i32 1
  %237 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %236, align 8
  %238 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.cstr_s, %struct.cstr_s* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @memcmp(i8* %231, i8* %234, i64 %241) #8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %224, %212, %195
  %245 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  store %struct.fio_cli_hash__map_s_* %245, %struct.fio_cli_hash__map_s_** %4, align 8
  br label %272

246:                                              ; preds = %224, %200
  %247 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %248 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %247, i32 0, i32 5
  store i8 1, i8* %248, align 8
  %249 = load i64, i64* %7, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %7, align 8
  %251 = icmp uge i64 %250, 96
  br i1 %251, label %252, label %261

252:                                              ; preds = %246
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %255 = icmp sle i32 3, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %257

257:                                              ; preds = %256, %253
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %260 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %259, i32 0, i32 7
  store i8 1, i8* %260, align 2
  br label %261

261:                                              ; preds = %258, %246
  %262 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %5, align 8
  %263 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %262, i32 0, i32 7
  %264 = load i8, i8* %263, align 2
  %265 = icmp ne i8 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %8, align 8
  store %struct.fio_cli_hash__map_s_* %267, %struct.fio_cli_hash__map_s_** %4, align 8
  br label %272

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268, %189
  br label %167

270:                                              ; preds = %167
  br label %271

271:                                              ; preds = %270, %17
  store %struct.fio_cli_hash__map_s_* null, %struct.fio_cli_hash__map_s_** %4, align 8
  br label %272

272:                                              ; preds = %271, %266, %244, %187, %146, %89
  %273 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %4, align 8
  ret %struct.fio_cli_hash__map_s_* %273
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash_rehash(%struct.fio_cli_hash_s*) #0 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %5 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %6 = alloca %struct.fio_cli_hash__map_s_*, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  %7 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  call void @fio_cli_hash__compact_ordered_array_(%struct.fio_cli_hash_s* %7)
  %8 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %9 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %8, i32 0, i32 5
  store i8 0, i8* %9, align 8
  store i8 0, i8* %3, align 1
  br label %10

10:                                               ; preds = %66, %1
  %11 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %12 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %11, i32 0, i32 6
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
  %22 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %23 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %22, i32 0, i32 5
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
  %32 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %33 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %36 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.4, i64 0, i64 0), i64 %34, i64 %37)
  br label %38

38:                                               ; preds = %31, %28
  br label %39

39:                                               ; preds = %38
  call void @exit(i32 -1) #9
  unreachable

40:                                               ; preds = %21, %16, %10
  %41 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  call void @fio_cli_hash__reallocate_set_mem_(%struct.fio_cli_hash_s* %41)
  %42 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %43 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %42, i32 0, i32 3
  %44 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %43, align 8
  %45 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %46 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %44, i64 %47
  store %struct.fio_cli_hash__ordered_s_* %48, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %49 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %50 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %49, i32 0, i32 3
  %51 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %50, align 8
  store %struct.fio_cli_hash__ordered_s_* %51, %struct.fio_cli_hash__ordered_s_** %5, align 8
  br label %52

52:                                               ; preds = %80, %40
  %53 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8
  %54 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %55 = icmp ult %struct.fio_cli_hash__ordered_s_* %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %58 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8
  %59 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8
  %62 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %61, i32 0, i32 1
  %63 = call %struct.fio_cli_hash__map_s_* @fio_cli_hash__find_map_pos_(%struct.fio_cli_hash_s* %57, i64 %60, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %62)
  store %struct.fio_cli_hash__map_s_* %63, %struct.fio_cli_hash__map_s_** %6, align 8
  %64 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %6, align 8
  %65 = icmp ne %struct.fio_cli_hash__map_s_* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %56
  %67 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %68 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %67, i32 0, i32 6
  %69 = load i8, i8* %68, align 1
  %70 = add i8 %69, 1
  store i8 %70, i8* %68, align 1
  br label %10

71:                                               ; preds = %56
  %72 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8
  %73 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %6, align 8
  %74 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %73, i32 0, i32 1
  store %struct.fio_cli_hash__ordered_s_* %72, %struct.fio_cli_hash__ordered_s_** %74, align 8
  %75 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8
  %76 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %6, align 8
  %79 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %71
  %81 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8
  %82 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %81, i32 1
  store %struct.fio_cli_hash__ordered_s_* %82, %struct.fio_cli_hash__ordered_s_** %5, align 8
  br label %52

83:                                               ; preds = %52
  ret void
}

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

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash__compact_ordered_array_(%struct.fio_cli_hash_s*) #0 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  %3 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %4 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  %5 = alloca %struct.fio_cli_hash__ordered_s_*, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  %6 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %16 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %15, i32 0, i32 3
  %17 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %16, align 8
  store %struct.fio_cli_hash__ordered_s_* %17, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %18 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %19 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %18, i32 0, i32 3
  %20 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %19, align 8
  store %struct.fio_cli_hash__ordered_s_* %20, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %21 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %22 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %21, i32 0, i32 3
  %23 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %22, align 8
  %24 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %25 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %23, i64 %26
  store %struct.fio_cli_hash__ordered_s_* %27, %struct.fio_cli_hash__ordered_s_** %5, align 8
  br label %28

28:                                               ; preds = %50, %14
  %29 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %30 = icmp ne %struct.fio_cli_hash__ordered_s_* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %33 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %5, align 8
  %34 = icmp ult %struct.fio_cli_hash__ordered_s_* %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %53

37:                                               ; preds = %35
  %38 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %39 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %45 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %46 = bitcast %struct.fio_cli_hash__ordered_s_* %44 to i8*
  %47 = bitcast %struct.fio_cli_hash__ordered_s_* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 32, i1 false)
  %48 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %49 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %48, i32 1
  store %struct.fio_cli_hash__ordered_s_* %49, %struct.fio_cli_hash__ordered_s_** %4, align 8
  br label %50

50:                                               ; preds = %43, %42
  %51 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %3, align 8
  %52 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %51, i32 1
  store %struct.fio_cli_hash__ordered_s_* %52, %struct.fio_cli_hash__ordered_s_** %3, align 8
  br label %28

53:                                               ; preds = %35
  %54 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %4, align 8
  %55 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %56 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %55, i32 0, i32 3
  %57 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %56, align 8
  %58 = ptrtoint %struct.fio_cli_hash__ordered_s_* %54 to i64
  %59 = ptrtoint %struct.fio_cli_hash__ordered_s_* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 32
  %62 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %63 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %65 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %64, i32 0, i32 2
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %53, %13
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash__reallocate_set_mem_(%struct.fio_cli_hash_s*) #0 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  %3 = alloca i64, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  %4 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %5 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %4, i32 0, i32 6
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = zext i32 %7 to i64
  %9 = shl i64 1, %8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %11 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %10, i32 0, i32 4
  %12 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %13 = bitcast %struct.fio_cli_hash__map_s_* %12 to i8*
  call void @fio_free(i8* %13)
  %14 = load i64, i64* %3, align 8
  %15 = call noalias i8* @fio_calloc(i64 16, i64 %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 15
  %18 = icmp eq i64 %17, 0
  call void @llvm.assume(i1 %18)
  %19 = bitcast i8* %15 to %struct.fio_cli_hash__map_s_*
  %20 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %21 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %20, i32 0, i32 4
  store %struct.fio_cli_hash__map_s_* %19, %struct.fio_cli_hash__map_s_** %21, align 8
  %22 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %23 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %22, i32 0, i32 3
  %24 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %23, align 8
  %25 = bitcast %struct.fio_cli_hash__ordered_s_* %24 to i8*
  %26 = load i64, i64* %3, align 8
  %27 = mul i64 %26, 32
  %28 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %29 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %30, 32
  %32 = call i8* @fio_realloc2(i8* %25, i64 %27, i64 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 %33, 15
  %35 = icmp eq i64 %34, 0
  call void @llvm.assume(i1 %35)
  %36 = bitcast i8* %32 to %struct.fio_cli_hash__ordered_s_*
  %37 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %38 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %37, i32 0, i32 3
  store %struct.fio_cli_hash__ordered_s_* %36, %struct.fio_cli_hash__ordered_s_** %38, align 8
  %39 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %40 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %39, i32 0, i32 4
  %41 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %40, align 8
  %42 = icmp ne %struct.fio_cli_hash__map_s_* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %1
  %44 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %45 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %44, i32 0, i32 3
  %46 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %45, align 8
  %47 = icmp ne %struct.fio_cli_hash__ordered_s_* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %1
  call void @perror(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32* @__errno_location() #10
  %50 = load i32, i32* %49, align 4
  call void @exit(i32 %50) #9
  unreachable

51:                                               ; preds = %43
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %54 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  ret void
}

declare dso_local void @fio_free(i8*) #4

declare dso_local noalias i8* @fio_calloc(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #4

declare dso_local void @perror(i8*) #4

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #7

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

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_cli_get_line_type(%struct.fio_cli_parser_data_s*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fio_cli_parser_data_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.fio_cli_parser_data_s* %0, %struct.fio_cli_parser_data_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %45

10:                                               ; preds = %2
  %11 = load %struct.fio_cli_parser_data_s*, %struct.fio_cli_parser_data_s** %4, align 8
  %12 = getelementptr inbounds %struct.fio_cli_parser_data_s, %struct.fio_cli_parser_data_s* %11, i32 0, i32 7
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %6, align 8
  br label %14

14:                                               ; preds = %31, %22, %10
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = ptrtoint i8* %20 to i64
  switch i64 %21, label %25 [
    i64 1, label %22
    i64 2, label %22
    i64 3, label %22
    i64 4, label %22
    i64 5, label %22
  ]

22:                                               ; preds = %18, %18, %18, %18, %18
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %6, align 8
  br label %14

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %35

31:                                               ; preds = %25
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %6, align 8
  br label %14

34:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %45

35:                                               ; preds = %30
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i64
  switch i64 %39, label %44 [
    i64 1, label %40
    i64 2, label %40
    i64 3, label %40
    i64 4, label %40
    i64 5, label %40
  ]

40:                                               ; preds = %35, %35, %35, %35, %35
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %3, align 8
  br label %45

44:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %45

45:                                               ; preds = %44, %40, %34, %9
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_cli_hash__insert_or_overwrite_(%struct.fio_cli_hash_couplet_s* noalias sret, %struct.fio_cli_hash_s*, i64, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8, i32, i8**) #0 {
  %7 = alloca %struct.fio_cli_hash_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.fio_cli_hash__map_s_*, align 8
  store %struct.fio_cli_hash_s* %1, %struct.fio_cli_hash_s** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %4, i32* %9, align 4
  store i8** %5, i8*** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  store i64 -1, i64* %8, align 8
  br label %15

15:                                               ; preds = %14, %6
  %16 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %17 = call i64 @fio_cli_hash_is_fragmented(%struct.fio_cli_hash_s* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  call void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %20)
  br label %36

21:                                               ; preds = %15
  %22 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %23 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %26 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %31 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %30, i32 0, i32 6
  %32 = load i8, i8* %31, align 1
  %33 = add i8 %32, 1
  store i8 %33, i8* %31, align 1
  %34 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  call void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %34)
  br label %35

35:                                               ; preds = %29, %21
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call %struct.fio_cli_hash__map_s_* @fio_cli_hash__find_map_pos_(%struct.fio_cli_hash_s* %37, i64 %38, %struct.fio_cli_hash_couplet_s* byval(%struct.fio_cli_hash_couplet_s) align 8 %3)
  store %struct.fio_cli_hash__map_s_* %39, %struct.fio_cli_hash__map_s_** %11, align 8
  %40 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %41 = icmp ne %struct.fio_cli_hash__map_s_* %40, null
  br i1 %41, label %97, label %42

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %47 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %46, i32 0, i32 3
  %48 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %47, align 8
  %49 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %50 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %48, i64 %51
  %53 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %53, i32 0, i32 1
  store i8* %45, i8** %54, align 8
  %55 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %56 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %55, i32 0, i32 3
  %57 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %56, align 8
  %58 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %59 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %57, i64 %60
  %62 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 0
  %65 = bitcast %struct.cstr_s* %63 to i8*
  %66 = bitcast %struct.cstr_s* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  br label %67

67:                                               ; preds = %43
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %70 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %69, i32 0, i32 3
  %71 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %70, align 8
  %72 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %73 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %71, i64 %74
  %76 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %75, i32 0, i32 0
  store i64 %68, i64* %76, align 8
  %77 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %78 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %82 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  call void @fio_cli_hash_rehash(%struct.fio_cli_hash_s* %85)
  %86 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %87 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %86, i32 0, i32 3
  %88 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %87, align 8
  %89 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %90 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %88, i64 %92
  %94 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %93, i32 0, i32 1
  %95 = bitcast %struct.fio_cli_hash_couplet_s* %0 to i8*
  %96 = bitcast %struct.fio_cli_hash_couplet_s* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 24, i1 false)
  br label %189

97:                                               ; preds = %36
  %98 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %99 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %98, i32 0, i32 1
  %100 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %99, align 8
  %101 = icmp ne %struct.fio_cli_hash__ordered_s_* %100, null
  br i1 %101, label %102, label %139

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %109 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %108, i32 0, i32 1
  %110 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %109, align 8
  %111 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %110, i32 0, i32 1
  %112 = bitcast %struct.fio_cli_hash_couplet_s* %0 to i8*
  %113 = bitcast %struct.fio_cli_hash_couplet_s* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 24, i1 false)
  br label %189

114:                                              ; preds = %102
  %115 = load i8**, i8*** %10, align 8
  %116 = icmp ne i8** %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %119 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %118, i32 0, i32 1
  %120 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %119, align 8
  %121 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** %10, align 8
  store i8* %123, i8** %124, align 8
  br label %125

125:                                              ; preds = %117, %114
  %126 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %129 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %128, i32 0, i32 1
  %130 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %129, align 8
  %131 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %131, i32 0, i32 1
  store i8* %127, i8** %132, align 8
  %133 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %134 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %133, i32 0, i32 1
  %135 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %134, align 8
  %136 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %135, i32 0, i32 1
  %137 = bitcast %struct.fio_cli_hash_couplet_s* %0 to i8*
  %138 = bitcast %struct.fio_cli_hash_couplet_s* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 24, i1 false)
  br label %189

139:                                              ; preds = %97
  %140 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %141 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %140, i32 0, i32 3
  %142 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %141, align 8
  %143 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %144 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %142, i64 %145
  %147 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %148 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %147, i32 0, i32 1
  store %struct.fio_cli_hash__ordered_s_* %146, %struct.fio_cli_hash__ordered_s_** %148, align 8
  %149 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %150 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %150, align 8
  %153 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %7, align 8
  %154 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %139
  %158 = load i64, i64* %8, align 8
  %159 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %160 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* %8, align 8
  %162 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %163 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %162, i32 0, i32 1
  %164 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %163, align 8
  %165 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %164, i32 0, i32 0
  store i64 %161, i64* %165, align 8
  br label %166

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %170 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %169, i32 0, i32 1
  %171 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %170, align 8
  %172 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %172, i32 0, i32 1
  store i8* %168, i8** %173, align 8
  %174 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %175 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %174, i32 0, i32 1
  %176 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %175, align 8
  %177 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.fio_cli_hash_couplet_s, %struct.fio_cli_hash_couplet_s* %3, i32 0, i32 0
  %180 = bitcast %struct.cstr_s* %178 to i8*
  %181 = bitcast %struct.cstr_s* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 16, i1 false)
  br label %182

182:                                              ; preds = %166
  %183 = load %struct.fio_cli_hash__map_s_*, %struct.fio_cli_hash__map_s_** %11, align 8
  %184 = getelementptr inbounds %struct.fio_cli_hash__map_s_, %struct.fio_cli_hash__map_s_* %183, i32 0, i32 1
  %185 = load %struct.fio_cli_hash__ordered_s_*, %struct.fio_cli_hash__ordered_s_** %184, align 8
  %186 = getelementptr inbounds %struct.fio_cli_hash__ordered_s_, %struct.fio_cli_hash__ordered_s_* %185, i32 0, i32 1
  %187 = bitcast %struct.fio_cli_hash_couplet_s* %0 to i8*
  %188 = bitcast %struct.fio_cli_hash_couplet_s* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 24, i1 false)
  br label %189

189:                                              ; preds = %182, %125, %107, %67
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_cli_hash_is_fragmented(%struct.fio_cli_hash_s*) #0 {
  %2 = alloca %struct.fio_cli_hash_s*, align 8
  store %struct.fio_cli_hash_s* %0, %struct.fio_cli_hash_s** %2, align 8
  %3 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %5, %8
  %10 = load %struct.fio_cli_hash_s*, %struct.fio_cli_hash_s** %2, align 8
  %11 = getelementptr inbounds %struct.fio_cli_hash_s, %struct.fio_cli_hash_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %12, 1
  %14 = icmp ugt i64 %9, %13
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  ret i64 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
!2 = !{i32 125018}
!3 = !{i32 125103}
