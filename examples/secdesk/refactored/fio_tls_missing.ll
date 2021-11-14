; ModuleID = 'fio_tls_missing.c'
source_filename = "fio_tls_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fio_tls_s = type { i64, %struct.alpn_list_s, %struct.cert_ary_s, %struct.trust_ary_s }
%struct.alpn_list_s = type { i64, i64, i64, %struct.alpn_list__ordered_s_*, %struct.alpn_list__map_s_*, i8, i8, i8 }
%struct.alpn_list__ordered_s_ = type { i64, %struct.alpn_s }
%struct.alpn_s = type { %struct.fio_str_s, void (i64, i8*, i8*)*, i8*, void (i8*)* }
%struct.fio_str_s = type { i32, i8, i8, [10 x i8], i64, i64, void (i8*)*, i8* }
%struct.alpn_list__map_s_ = type { i64, %struct.alpn_list__ordered_s_* }
%struct.cert_ary_s = type { i64, i64, i64, %struct.cert_s* }
%struct.cert_s = type { %struct.fio_str_s, %struct.fio_str_s, %struct.fio_str_s }
%struct.trust_ary_s = type { i64, i64, i64, %struct.trust_s* }
%struct.trust_s = type { %struct.fio_str_s }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !0
@.str.2 = private unnamed_addr constant [47 x i8] c"FATAL: No supported SSL/TLS library available.\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"FATAL: TLS certificate file missing for either %s or %s or both.\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"FATAL: TLS certificate file missing for %s \00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !10
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !18

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !25 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !38, metadata !DIExpression()), !dbg !55
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !56
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !56
  call void @llvm.va_start(i8* %7), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %5, metadata !57, metadata !DIExpression()), !dbg !58
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !59
  %9 = load i8*, i8** %2, align 8, !dbg !60
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !61
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !62
  store i32 %11, i32* %5, align 4, !dbg !58
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !63
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !63
  call void @llvm.va_end(i8* %13), !dbg !63
  %14 = load i32, i32* %5, align 4, !dbg !64
  %15 = icmp sle i32 %14, 0, !dbg !66
  br i1 %15, label %19, label %16, !dbg !67

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !68
  %18 = icmp sge i32 %17, 2046, !dbg !69
  br i1 %18, label %19, label %29, !dbg !70

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !71
  %21 = icmp sge i32 %20, 2046, !dbg !74
  br i1 %21, label %22, label %25, !dbg !75

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !76
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !78
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !79
  store i32 2041, i32* %5, align 4, !dbg !80
  br label %28, !dbg !81

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !82
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !84
  br label %42, !dbg !85

28:                                               ; preds = %22
  br label %29, !dbg !86

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !87
  %31 = add nsw i32 %30, 1, !dbg !87
  store i32 %31, i32* %5, align 4, !dbg !87
  %32 = sext i32 %30 to i64, !dbg !88
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !88
  store i8 10, i8* %33, align 1, !dbg !89
  %34 = load i32, i32* %5, align 4, !dbg !90
  %35 = sext i32 %34 to i64, !dbg !91
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !91
  store i8 48, i8* %36, align 1, !dbg !92
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !93
  %38 = load i32, i32* %5, align 4, !dbg !94
  %39 = sext i32 %38 to i64, !dbg !94
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !95
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !96
  br label %42, !dbg !97

42:                                               ; preds = %29, %25
  ret void, !dbg !97
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
define weak dso_local %struct.fio_tls_s* @fio_tls_new(i8* %0, i8* %1, i8* %2, i8* %3) #0 !dbg !98 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fio_tls_s*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !196, metadata !DIExpression()), !dbg !197
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !198, metadata !DIExpression()), !dbg !199
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !200, metadata !DIExpression()), !dbg !201
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !202, metadata !DIExpression()), !dbg !203
  br label %10, !dbg !204

10:                                               ; preds = %4
  %11 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !205
  %12 = icmp sle i32 1, %11, !dbg !205
  br i1 %12, label %13, label %14, !dbg !208

13:                                               ; preds = %10
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)), !dbg !209
  br label %14, !dbg !209

14:                                               ; preds = %13, %10
  br label %15, !dbg !208

15:                                               ; preds = %14
  call void @exit(i32 -1) #7, !dbg !204
  unreachable, !dbg !204
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_cert_add(%struct.fio_tls_s* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 !dbg !211 {
  %6 = alloca %struct.fio_tls_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cert_s, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_tls_s** %6, metadata !214, metadata !DIExpression()), !dbg !215
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !216, metadata !DIExpression()), !dbg !217
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !218, metadata !DIExpression()), !dbg !219
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !220, metadata !DIExpression()), !dbg !221
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !222, metadata !DIExpression()), !dbg !223
  br label %12, !dbg !224

12:                                               ; preds = %5
  %13 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !225
  %14 = icmp sle i32 1, %13, !dbg !225
  br i1 %14, label %15, label %16, !dbg !228

15:                                               ; preds = %12
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)), !dbg !229
  br label %16, !dbg !229

16:                                               ; preds = %15, %12
  br label %17, !dbg !228

17:                                               ; preds = %16
  call void @exit(i32 -1) #7, !dbg !224
  unreachable, !dbg !224

18:                                               ; No predecessors!
  call void @llvm.dbg.label(metadata !231), !dbg !232
  br label %19, !dbg !233

19:                                               ; preds = %18
  %20 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !234
  %21 = icmp sle i32 1, %20, !dbg !234
  br i1 %21, label %22, label %25, !dbg !237

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8, !dbg !238
  %24 = load i8*, i8** %8, align 8, !dbg !238
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %23, i8* %24), !dbg !238
  br label %25, !dbg !238

25:                                               ; preds = %22, %19
  br label %26, !dbg !237

26:                                               ; preds = %25
  call void @exit(i32 -1) #7, !dbg !240
  unreachable, !dbg !240
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_alpn_add(%struct.fio_tls_s* %0, i8* %1, void (i64, i8*, i8*)* %2, i8* %3, void (i8*)* %4) #0 !dbg !241 {
  %6 = alloca %struct.fio_tls_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i64, i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_tls_s** %6, metadata !244, metadata !DIExpression()), !dbg !245
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !246, metadata !DIExpression()), !dbg !247
  store void (i64, i8*, i8*)* %2, void (i64, i8*, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i64, i8*, i8*)** %8, metadata !248, metadata !DIExpression()), !dbg !249
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !250, metadata !DIExpression()), !dbg !251
  store void (i8*)* %4, void (i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %10, metadata !252, metadata !DIExpression()), !dbg !253
  br label %11, !dbg !254

11:                                               ; preds = %5
  %12 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !255
  %13 = icmp sle i32 1, %12, !dbg !255
  br i1 %13, label %14, label %15, !dbg !258

14:                                               ; preds = %11
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)), !dbg !259
  br label %15, !dbg !259

15:                                               ; preds = %14, %11
  br label %16, !dbg !258

16:                                               ; preds = %15
  call void @exit(i32 -1) #7, !dbg !254
  unreachable, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_tls_alpn_count(%struct.fio_tls_s* %0) #0 !dbg !261 {
  %2 = alloca %struct.fio_tls_s*, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_tls_s** %2, metadata !264, metadata !DIExpression()), !dbg !265
  %3 = load %struct.fio_tls_s*, %struct.fio_tls_s** %2, align 8, !dbg !266
  %4 = icmp ne %struct.fio_tls_s* %3, null, !dbg !266
  br i1 %4, label %5, label %9, !dbg !266

5:                                                ; preds = %1
  %6 = load %struct.fio_tls_s*, %struct.fio_tls_s** %2, align 8, !dbg !267
  %7 = getelementptr inbounds %struct.fio_tls_s, %struct.fio_tls_s* %6, i32 0, i32 1, !dbg !268
  %8 = call i64 @alpn_list_count(%struct.alpn_list_s* %7), !dbg !269
  br label %10, !dbg !266

9:                                                ; preds = %1
  br label %10, !dbg !266

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 0, %9 ], !dbg !266
  ret i64 %11, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpn_list_count(%struct.alpn_list_s* %0) #0 !dbg !271 {
  %2 = alloca %struct.alpn_list_s*, align 8
  store %struct.alpn_list_s* %0, %struct.alpn_list_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.alpn_list_s** %2, metadata !276, metadata !DIExpression()), !dbg !277
  %3 = load %struct.alpn_list_s*, %struct.alpn_list_s** %2, align 8, !dbg !278
  %4 = getelementptr inbounds %struct.alpn_list_s, %struct.alpn_list_s* %3, i32 0, i32 0, !dbg !279
  %5 = load i64, i64* %4, align 8, !dbg !279
  ret i64 %5, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_trust(%struct.fio_tls_s* %0, i8* %1) #0 !dbg !281 {
  %3 = alloca %struct.fio_tls_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trust_s, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_tls_s** %3, metadata !284, metadata !DIExpression()), !dbg !285
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !286, metadata !DIExpression()), !dbg !287
  br label %6, !dbg !288

6:                                                ; preds = %2
  %7 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !289
  %8 = icmp sle i32 1, %7, !dbg !289
  br i1 %8, label %9, label %10, !dbg !292

9:                                                ; preds = %6
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)), !dbg !293
  br label %10, !dbg !293

10:                                               ; preds = %9, %6
  br label %11, !dbg !292

11:                                               ; preds = %10
  call void @exit(i32 -1) #7, !dbg !288
  unreachable, !dbg !288

12:                                               ; No predecessors!
  call void @llvm.dbg.label(metadata !295), !dbg !296
  br label %13, !dbg !297

13:                                               ; preds = %12
  %14 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !298
  %15 = icmp sle i32 1, %14, !dbg !298
  br i1 %15, label %16, label %18, !dbg !301

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8, !dbg !302
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %17), !dbg !302
  br label %18, !dbg !302

18:                                               ; preds = %16, %13
  br label %19, !dbg !301

19:                                               ; preds = %18
  call void @exit(i32 -1) #7, !dbg !304
  unreachable, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_accept(i64 %0, %struct.fio_tls_s* %1, i8* %2) #0 !dbg !305 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_tls_s*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !308, metadata !DIExpression()), !dbg !309
  store %struct.fio_tls_s* %1, %struct.fio_tls_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_tls_s** %5, metadata !310, metadata !DIExpression()), !dbg !311
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !312, metadata !DIExpression()), !dbg !313
  br label %7, !dbg !314

7:                                                ; preds = %3
  %8 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !315
  %9 = icmp sle i32 1, %8, !dbg !315
  br i1 %9, label %10, label %11, !dbg !318

10:                                               ; preds = %7
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)), !dbg !319
  br label %11, !dbg !319

11:                                               ; preds = %10, %7
  br label %12, !dbg !318

12:                                               ; preds = %11
  call void @exit(i32 -1) #7, !dbg !314
  unreachable, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_connect(i64 %0, %struct.fio_tls_s* %1, i8* %2) #0 !dbg !321 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_tls_s*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !322, metadata !DIExpression()), !dbg !323
  store %struct.fio_tls_s* %1, %struct.fio_tls_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_tls_s** %5, metadata !324, metadata !DIExpression()), !dbg !325
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !326, metadata !DIExpression()), !dbg !327
  br label %7, !dbg !328

7:                                                ; preds = %3
  %8 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !329
  %9 = icmp sle i32 1, %8, !dbg !329
  br i1 %9, label %10, label %11, !dbg !332

10:                                               ; preds = %7
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)), !dbg !333
  br label %11, !dbg !333

11:                                               ; preds = %10, %7
  br label %12, !dbg !332

12:                                               ; preds = %11
  call void @exit(i32 -1) #7, !dbg !328
  unreachable, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_dup(%struct.fio_tls_s* %0) #0 !dbg !335 {
  %2 = alloca %struct.fio_tls_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_tls_s** %2, metadata !338, metadata !DIExpression()), !dbg !339
  %5 = load %struct.fio_tls_s*, %struct.fio_tls_s** %2, align 8, !dbg !340
  %6 = getelementptr inbounds %struct.fio_tls_s, %struct.fio_tls_s* %5, i32 0, i32 0, !dbg !340
  store i64 1, i64* %3, align 8, !dbg !340
  %7 = load i64, i64* %3, align 8, !dbg !340
  %8 = atomicrmw add i64* %6, i64 %7 seq_cst, !dbg !340
  %9 = add i64 %8, %7, !dbg !340
  store i64 %9, i64* %4, align 8, !dbg !340
  %10 = load i64, i64* %4, align 8, !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_destroy(%struct.fio_tls_s* %0) #0 !dbg !342 {
  %2 = alloca %struct.fio_tls_s*, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_tls_s** %2, metadata !343, metadata !DIExpression()), !dbg !344
  %3 = load %struct.fio_tls_s*, %struct.fio_tls_s** %2, align 8, !dbg !345
  %4 = icmp ne %struct.fio_tls_s* %3, null, !dbg !345
  br i1 %4, label %6, label %5, !dbg !347

5:                                                ; preds = %1
  ret void, !dbg !348

6:                                                ; preds = %1
  br label %7, !dbg !349

7:                                                ; preds = %6
  %8 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !350
  %9 = icmp sle i32 1, %8, !dbg !350
  br i1 %9, label %10, label %11, !dbg !353

10:                                               ; preds = %7
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)), !dbg !354
  br label %11, !dbg !354

11:                                               ; preds = %10, %7
  br label %12, !dbg !353

12:                                               ; preds = %11
  call void @exit(i32 -1) #7, !dbg !349
  unreachable, !dbg !349
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !12, line: 433, type: !20, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fio_tls_missing.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !{!0, !10, !18}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !12, line: 2433, type: !13, isLocal: false, isDefinition: true)
!12 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 24, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !16, line: 38, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !12, line: 2434, type: !13, isLocal: false, isDefinition: true)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 10.0.0-4ubuntu1 "}
!25 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !12, file: !12, line: 437, type: !26, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, null}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DILocalVariable(name: "format", arg: 1, scope: !25, file: !12, line: 437, type: !28)
!32 = !DILocation(line: 437, column: 28, scope: !25)
!33 = !DILocalVariable(name: "tmp___log", scope: !25, file: !12, line: 438, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16384, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 2048)
!37 = !DILocation(line: 438, column: 8, scope: !25)
!38 = !DILocalVariable(name: "argv", scope: !25, file: !12, line: 439, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !40, line: 52, baseType: !41)
!40 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !42, line: 32, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, elements: !53)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !46)
!46 = !{!47, !49, !50, !52}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !45, file: !3, line: 439, baseType: !48, size: 32)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !45, file: !3, line: 439, baseType: !48, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !45, file: !3, line: 439, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !45, file: !3, line: 439, baseType: !51, size: 64, offset: 128)
!53 = !{!54}
!54 = !DISubrange(count: 1)
!55 = !DILocation(line: 439, column: 11, scope: !25)
!56 = !DILocation(line: 440, column: 3, scope: !25)
!57 = !DILocalVariable(name: "len___log", scope: !25, file: !12, line: 441, type: !20)
!58 = !DILocation(line: 441, column: 7, scope: !25)
!59 = !DILocation(line: 441, column: 29, scope: !25)
!60 = !DILocation(line: 441, column: 66, scope: !25)
!61 = !DILocation(line: 441, column: 74, scope: !25)
!62 = !DILocation(line: 441, column: 19, scope: !25)
!63 = !DILocation(line: 442, column: 3, scope: !25)
!64 = !DILocation(line: 443, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !25, file: !12, line: 443, column: 7)
!66 = !DILocation(line: 443, column: 17, scope: !65)
!67 = !DILocation(line: 443, column: 22, scope: !65)
!68 = !DILocation(line: 443, column: 25, scope: !65)
!69 = !DILocation(line: 443, column: 35, scope: !65)
!70 = !DILocation(line: 443, column: 7, scope: !25)
!71 = !DILocation(line: 444, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !12, line: 444, column: 9)
!73 = distinct !DILexicalBlock(scope: !65, file: !12, line: 443, column: 64)
!74 = !DILocation(line: 444, column: 19, scope: !72)
!75 = !DILocation(line: 444, column: 9, scope: !73)
!76 = !DILocation(line: 445, column: 14, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !12, line: 444, column: 48)
!78 = !DILocation(line: 445, column: 24, scope: !77)
!79 = !DILocation(line: 445, column: 7, scope: !77)
!80 = !DILocation(line: 447, column: 17, scope: !77)
!81 = !DILocation(line: 448, column: 5, scope: !77)
!82 = !DILocation(line: 449, column: 65, scope: !83)
!83 = distinct !DILexicalBlock(scope: !72, file: !12, line: 448, column: 12)
!84 = !DILocation(line: 449, column: 7, scope: !83)
!85 = !DILocation(line: 450, column: 7, scope: !83)
!86 = !DILocation(line: 452, column: 3, scope: !73)
!87 = !DILocation(line: 453, column: 22, scope: !25)
!88 = !DILocation(line: 453, column: 3, scope: !25)
!89 = !DILocation(line: 453, column: 26, scope: !25)
!90 = !DILocation(line: 454, column: 13, scope: !25)
!91 = !DILocation(line: 454, column: 3, scope: !25)
!92 = !DILocation(line: 454, column: 24, scope: !25)
!93 = !DILocation(line: 455, column: 10, scope: !25)
!94 = !DILocation(line: 455, column: 21, scope: !25)
!95 = !DILocation(line: 455, column: 35, scope: !25)
!96 = !DILocation(line: 455, column: 3, scope: !25)
!97 = !DILocation(line: 456, column: 1, scope: !25)
!98 = distinct !DISubprogram(name: "fio_tls_new", scope: !3, file: !3, line: 478, type: !99, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !28, !28, !28, !28}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_tls_s", file: !103, line: 22, baseType: !104)
!103 = !DIFile(filename: "../include/fio_tls.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_tls_s", file: !3, line: 141, size: 960, elements: !105)
!105 = !{!106, !107, !168, !183}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !104, file: !3, line: 142, baseType: !6, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "alpn", scope: !104, file: !3, line: 143, baseType: !108, size: 384, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "alpn_list_s", file: !12, line: 5643, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alpn_list_s", file: !12, line: 5826, size: 384, elements: !110)
!110 = !{!111, !114, !115, !116, !158, !165, !166, !167}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !109, file: !12, line: 5827, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !113, line: 90, baseType: !8)
!113 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !109, file: !12, line: 5828, baseType: !112, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !109, file: !12, line: 5829, baseType: !112, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ordered", scope: !109, file: !12, line: 5830, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "alpn_list__ordered_s_", file: !12, line: 5818, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alpn_list__ordered_s_", file: !12, line: 5815, size: 640, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !119, file: !12, line: 5816, baseType: !112, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !119, file: !12, line: 5817, baseType: !123, size: 576, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "alpn_s", file: !3, line: 108, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 103, size: 576, elements: !125)
!125 = !{!126, !150, !156, !157}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !3, line: 104, baseType: !127, size: 384)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_s", file: !12, line: 3409, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 3390, size: 384, elements: !129)
!129 = !{!130, !134, !135, !136, !140, !143, !144, !148}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !128, file: !12, line: 3392, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 26, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 42, baseType: !48)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "small", scope: !128, file: !12, line: 3394, baseType: !13, size: 8, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !128, file: !12, line: 3395, baseType: !13, size: 8, offset: 40)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !128, file: !12, line: 3399, baseType: !137, size: 80, offset: 48)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 10)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !128, file: !12, line: 3401, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 27, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !16, line: 45, baseType: !8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !128, file: !12, line: 3402, baseType: !141, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !128, file: !12, line: 3403, baseType: !145, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !51}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !128, file: !12, line: 3404, baseType: !149, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "on_selected", scope: !124, file: !3, line: 105, baseType: !151, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154, !51, !51}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !113, line: 87, baseType: !155)
!155 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "udata_tls", scope: !124, file: !3, line: 106, baseType: !51, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "on_cleanup", scope: !124, file: !3, line: 107, baseType: !145, size: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !109, file: !12, line: 5831, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "alpn_list__map_s_", file: !12, line: 5823, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alpn_list__map_s_", file: !12, line: 5820, size: 128, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !161, file: !12, line: 5821, baseType: !112, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !161, file: !12, line: 5822, baseType: !117, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "has_collisions", scope: !109, file: !12, line: 5832, baseType: !13, size: 8, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "used_bits", scope: !109, file: !12, line: 5833, baseType: !13, size: 8, offset: 328)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "under_attack", scope: !109, file: !12, line: 5834, baseType: !13, size: 8, offset: 336)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sni", scope: !104, file: !3, line: 147, baseType: !169, size: 256, offset: 448)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "cert_ary_s", file: !12, line: 4724, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cert_ary_s", file: !12, line: 4878, size: 256, elements: !171)
!171 = !{!172, !173, !174, !175}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !170, file: !12, line: 4879, baseType: !6, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !170, file: !12, line: 4880, baseType: !6, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !170, file: !12, line: 4881, baseType: !6, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "arry", scope: !170, file: !12, line: 4882, baseType: !176, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "cert_s", file: !3, line: 49, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 45, size: 1152, elements: !179)
!179 = !{!180, !181, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "private_key", scope: !178, file: !3, line: 46, baseType: !127, size: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !178, file: !3, line: 47, baseType: !127, size: 384, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !178, file: !3, line: 48, baseType: !127, size: 384, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !104, file: !3, line: 148, baseType: !184, size: 256, offset: 704)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "trust_ary_s", file: !12, line: 4724, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trust_ary_s", file: !12, line: 4878, size: 256, elements: !186)
!186 = !{!187, !188, !189, !190}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !185, file: !12, line: 4879, baseType: !6, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !185, file: !12, line: 4880, baseType: !6, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !185, file: !12, line: 4881, baseType: !6, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arry", scope: !185, file: !12, line: 4882, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "trust_s", file: !3, line: 80, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 78, size: 384, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pem", scope: !193, file: !3, line: 79, baseType: !127, size: 384)
!196 = !DILocalVariable(name: "server_name", arg: 1, scope: !98, file: !3, line: 478, type: !28)
!197 = !DILocation(line: 478, column: 49, scope: !98)
!198 = !DILocalVariable(name: "cert", arg: 2, scope: !98, file: !3, line: 478, type: !28)
!199 = !DILocation(line: 478, column: 74, scope: !98)
!200 = !DILocalVariable(name: "key", arg: 3, scope: !98, file: !3, line: 479, type: !28)
!201 = !DILocation(line: 479, column: 49, scope: !98)
!202 = !DILocalVariable(name: "pk_password", arg: 4, scope: !98, file: !3, line: 479, type: !28)
!203 = !DILocation(line: 479, column: 66, scope: !98)
!204 = !DILocation(line: 480, column: 3, scope: !98)
!205 = !DILocation(line: 480, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 480, column: 3)
!207 = distinct !DILexicalBlock(scope: !98, file: !3, line: 480, column: 3)
!208 = !DILocation(line: 480, column: 3, scope: !207)
!209 = !DILocation(line: 480, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 480, column: 3)
!211 = distinct !DISubprogram(name: "fio_tls_cert_add", scope: !3, file: !3, line: 490, type: !212, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !101, !28, !28, !28, !28}
!214 = !DILocalVariable(name: "tls", arg: 1, scope: !211, file: !3, line: 490, type: !101)
!215 = !DILocation(line: 490, column: 47, scope: !211)
!216 = !DILocalVariable(name: "server_name", arg: 2, scope: !211, file: !3, line: 490, type: !28)
!217 = !DILocation(line: 490, column: 64, scope: !211)
!218 = !DILocalVariable(name: "cert", arg: 3, scope: !211, file: !3, line: 491, type: !28)
!219 = !DILocation(line: 491, column: 48, scope: !211)
!220 = !DILocalVariable(name: "key", arg: 4, scope: !211, file: !3, line: 491, type: !28)
!221 = !DILocation(line: 491, column: 66, scope: !211)
!222 = !DILocalVariable(name: "pk_password", arg: 5, scope: !211, file: !3, line: 492, type: !28)
!223 = !DILocation(line: 492, column: 48, scope: !211)
!224 = !DILocation(line: 493, column: 3, scope: !211)
!225 = !DILocation(line: 493, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 493, column: 3)
!227 = distinct !DILexicalBlock(scope: !211, file: !3, line: 493, column: 3)
!228 = !DILocation(line: 493, column: 3, scope: !227)
!229 = !DILocation(line: 493, column: 3, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 493, column: 3)
!231 = !DILabel(scope: !211, name: "file_missing", file: !3, line: 514)
!232 = !DILocation(line: 514, column: 1, scope: !211)
!233 = !DILocation(line: 515, column: 3, scope: !211)
!234 = !DILocation(line: 515, column: 3, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 515, column: 3)
!236 = distinct !DILexicalBlock(scope: !211, file: !3, line: 515, column: 3)
!237 = !DILocation(line: 515, column: 3, scope: !236)
!238 = !DILocation(line: 515, column: 3, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 515, column: 3)
!240 = !DILocation(line: 517, column: 3, scope: !211)
!241 = distinct !DISubprogram(name: "fio_tls_alpn_add", scope: !3, file: !3, line: 536, type: !242, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !101, !28, !151, !51, !145}
!244 = !DILocalVariable(name: "tls", arg: 1, scope: !241, file: !3, line: 537, type: !101)
!245 = !DILocation(line: 537, column: 16, scope: !241)
!246 = !DILocalVariable(name: "protocol_name", arg: 2, scope: !241, file: !3, line: 537, type: !28)
!247 = !DILocation(line: 537, column: 33, scope: !241)
!248 = !DILocalVariable(name: "on_selected", arg: 3, scope: !241, file: !3, line: 538, type: !151)
!249 = !DILocation(line: 538, column: 12, scope: !241)
!250 = !DILocalVariable(name: "udata_tls", arg: 4, scope: !241, file: !3, line: 539, type: !51)
!251 = !DILocation(line: 539, column: 11, scope: !241)
!252 = !DILocalVariable(name: "on_cleanup", arg: 5, scope: !241, file: !3, line: 539, type: !145)
!253 = !DILocation(line: 539, column: 29, scope: !241)
!254 = !DILocation(line: 540, column: 3, scope: !241)
!255 = !DILocation(line: 540, column: 3, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 540, column: 3)
!257 = distinct !DILexicalBlock(scope: !241, file: !3, line: 540, column: 3)
!258 = !DILocation(line: 540, column: 3, scope: !257)
!259 = !DILocation(line: 540, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 540, column: 3)
!261 = distinct !DISubprogram(name: "fio_tls_alpn_count", scope: !3, file: !3, line: 553, type: !262, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!262 = !DISubroutineType(types: !263)
!263 = !{!112, !101}
!264 = !DILocalVariable(name: "tls", arg: 1, scope: !261, file: !3, line: 553, type: !101)
!265 = !DILocation(line: 553, column: 54, scope: !261)
!266 = !DILocation(line: 554, column: 10, scope: !261)
!267 = !DILocation(line: 554, column: 33, scope: !261)
!268 = !DILocation(line: 554, column: 38, scope: !261)
!269 = !DILocation(line: 554, column: 16, scope: !261)
!270 = !DILocation(line: 554, column: 3, scope: !261)
!271 = distinct !DISubprogram(name: "alpn_list_count", scope: !12, file: !12, line: 6223, type: !272, scopeLine: 6223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!272 = !DISubroutineType(types: !273)
!273 = !{!6, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!276 = !DILocalVariable(name: "set", arg: 1, scope: !271, file: !12, line: 6223, type: !274)
!277 = !DILocation(line: 6223, column: 60, scope: !271)
!278 = !DILocation(line: 6224, column: 18, scope: !271)
!279 = !DILocation(line: 6224, column: 23, scope: !271)
!280 = !DILocation(line: 6224, column: 3, scope: !271)
!281 = distinct !DISubprogram(name: "fio_tls_trust", scope: !3, file: !3, line: 563, type: !282, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !101, !28}
!284 = !DILocalVariable(name: "tls", arg: 1, scope: !281, file: !3, line: 563, type: !101)
!285 = !DILocation(line: 563, column: 44, scope: !281)
!286 = !DILocalVariable(name: "public_cert_file", arg: 2, scope: !281, file: !3, line: 563, type: !28)
!287 = !DILocation(line: 563, column: 61, scope: !281)
!288 = !DILocation(line: 564, column: 3, scope: !281)
!289 = !DILocation(line: 564, column: 3, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 564, column: 3)
!291 = distinct !DILexicalBlock(scope: !281, file: !3, line: 564, column: 3)
!292 = !DILocation(line: 564, column: 3, scope: !291)
!293 = !DILocation(line: 564, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 564, column: 3)
!295 = !DILabel(scope: !281, name: "file_missing", file: !3, line: 576)
!296 = !DILocation(line: 576, column: 1, scope: !281)
!297 = !DILocation(line: 577, column: 3, scope: !281)
!298 = !DILocation(line: 577, column: 3, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 577, column: 3)
!300 = distinct !DILexicalBlock(scope: !281, file: !3, line: 577, column: 3)
!301 = !DILocation(line: 577, column: 3, scope: !300)
!302 = !DILocation(line: 577, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 577, column: 3)
!304 = !DILocation(line: 578, column: 3, scope: !281)
!305 = distinct !DISubprogram(name: "fio_tls_accept", scope: !3, file: !3, line: 591, type: !306, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !154, !101, !51}
!308 = !DILocalVariable(name: "uuid", arg: 1, scope: !305, file: !3, line: 591, type: !154)
!309 = !DILocation(line: 591, column: 43, scope: !305)
!310 = !DILocalVariable(name: "tls", arg: 2, scope: !305, file: !3, line: 591, type: !101)
!311 = !DILocation(line: 591, column: 60, scope: !305)
!312 = !DILocalVariable(name: "udata", arg: 3, scope: !305, file: !3, line: 591, type: !51)
!313 = !DILocation(line: 591, column: 71, scope: !305)
!314 = !DILocation(line: 592, column: 3, scope: !305)
!315 = !DILocation(line: 592, column: 3, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 592, column: 3)
!317 = distinct !DILexicalBlock(scope: !305, file: !3, line: 592, column: 3)
!318 = !DILocation(line: 592, column: 3, scope: !317)
!319 = !DILocation(line: 592, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 592, column: 3)
!321 = distinct !DISubprogram(name: "fio_tls_connect", scope: !3, file: !3, line: 606, type: !306, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!322 = !DILocalVariable(name: "uuid", arg: 1, scope: !321, file: !3, line: 606, type: !154)
!323 = !DILocation(line: 606, column: 44, scope: !321)
!324 = !DILocalVariable(name: "tls", arg: 2, scope: !321, file: !3, line: 606, type: !101)
!325 = !DILocation(line: 606, column: 61, scope: !321)
!326 = !DILocalVariable(name: "udata", arg: 3, scope: !321, file: !3, line: 606, type: !51)
!327 = !DILocation(line: 606, column: 72, scope: !321)
!328 = !DILocation(line: 607, column: 3, scope: !321)
!329 = !DILocation(line: 607, column: 3, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !3, line: 607, column: 3)
!331 = distinct !DILexicalBlock(scope: !321, file: !3, line: 607, column: 3)
!332 = !DILocation(line: 607, column: 3, scope: !331)
!333 = !DILocation(line: 607, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 607, column: 3)
!335 = distinct !DISubprogram(name: "fio_tls_dup", scope: !3, file: !3, line: 616, type: !336, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !101}
!338 = !DILocalVariable(name: "tls", arg: 1, scope: !335, file: !3, line: 616, type: !101)
!339 = !DILocation(line: 616, column: 42, scope: !335)
!340 = !DILocation(line: 616, column: 49, scope: !335)
!341 = !DILocation(line: 616, column: 79, scope: !335)
!342 = distinct !DISubprogram(name: "fio_tls_destroy", scope: !3, file: !3, line: 622, type: !336, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!343 = !DILocalVariable(name: "tls", arg: 1, scope: !342, file: !3, line: 622, type: !101)
!344 = !DILocation(line: 622, column: 46, scope: !342)
!345 = !DILocation(line: 623, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !3, line: 623, column: 7)
!347 = !DILocation(line: 623, column: 7, scope: !342)
!348 = !DILocation(line: 624, column: 5, scope: !346)
!349 = !DILocation(line: 625, column: 3, scope: !342)
!350 = !DILocation(line: 625, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 625, column: 3)
!352 = distinct !DILexicalBlock(scope: !342, file: !3, line: 625, column: 3)
!353 = !DILocation(line: 625, column: 3, scope: !352)
!354 = !DILocation(line: 625, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !3, line: 625, column: 3)
