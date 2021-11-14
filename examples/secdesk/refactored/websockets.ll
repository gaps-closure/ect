; ModuleID = 'websockets.c'
source_filename = "websockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.websocket_packet_info_s = type { i64, i8, i8 }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ws_s = type { %struct.fio_protocol_s, i64, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (i64, i8*)*, i8*, i64, %struct.fio_ls_s, i8, %struct.buffer_s, i64, i64, i8, i8 }
%struct.fio_protocol_s = type { void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, i8 (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, i64 }
%struct.fio_ls_s = type { %struct.fio_ls_s*, %struct.fio_ls_s*, i8* }
%struct.buffer_s = type { i8*, i64 }
%struct.http_settings_s = type { void (%struct.http_s*)*, void (%struct.http_s*, i8*, i64)*, void (%struct.http_s*)*, void (%struct.http_settings_s*)*, i8*, i8*, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.http_s = type { %struct.anon, %struct.timespec, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8* }
%struct.anon = type { i8*, i64, i64 }
%struct.websocket_settings_s = type { void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (i64, i8*)*, i8* }
%struct.fio_write_args_s = type { %union.anon, %union.anon.0, i64, i64, i8 }
%union.anon = type { i8* }
%union.anon.0 = type { void (i8*)* }
%struct.fio_msg_metadata_s = type { i64, void (%struct.fio_msg_s*, i8*)*, i8* }
%struct.fio_msg_s = type { i32, %struct.fio_str_info_s, %struct.fio_str_info_s, i8*, i8*, i8 }
%struct.fio_str_s = type { i32, i8, i8, [10 x i8], i64, i64, void (i8*)*, i8* }
%struct.websocket_subscribe_s = type { %struct.ws_s*, %struct.fio_str_info_s, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (i8*)*, i8*, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)*, i8 }
%struct.websocket_sub_data_s = type { void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (i8*)*, i8* }
%struct.subscription_s = type opaque
%struct.subscribe_args_s = type { i32, %struct.fio_str_info_s, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)*, void (%struct.fio_msg_s*)*, void (i8*, i8*)*, i8*, i8* }
%struct.fiobj_object_header_s = type { i8, i32 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !0
@.str.2 = private unnamed_addr constant [48 x i8] c"FATAL: memory allocation error websockets.c:333\00", align 1
@websocket_optimize4broadcasts.generic = internal global i64 0, align 8, !dbg !159
@websocket_optimize4broadcasts.text = internal global i64 0, align 8, !dbg !166
@websocket_optimize4broadcasts.binary = internal global i64 0, align 8, !dbg !168
@.str.3 = private unnamed_addr constant [48 x i8] c"FATAL: memory allocation error websockets.c:635\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\88\00\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !170
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !172
@__const.websocket_buffer_peek.info = private unnamed_addr constant %struct.websocket_packet_info_s { i64 0, i8 2, i8 0 }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.6 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.8 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.10 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0) }, align 8
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"\89\80mask\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\89\00\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\8A\80MASK\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\8A\00\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\89\80MASK\00", align 1
@fio_str_utf8_map = internal global [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\05\05\05\05\05\05\05\05\02\02\02\02\03\03\04\00", align 16, !dbg !174
@__const.fio_reschedule_thread.tm = private unnamed_addr constant %struct.timespec { i64 0, i64 1 }, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:3313\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !183 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !190, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !195, metadata !DIExpression()), !dbg !210
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !211
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !211
  call void @llvm.va_start(i8* %7), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %5, metadata !212, metadata !DIExpression()), !dbg !213
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !214
  %9 = load i8*, i8** %2, align 8, !dbg !215
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !216
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !217
  store i32 %11, i32* %5, align 4, !dbg !213
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !218
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !218
  call void @llvm.va_end(i8* %13), !dbg !218
  %14 = load i32, i32* %5, align 4, !dbg !219
  %15 = icmp sle i32 %14, 0, !dbg !221
  br i1 %15, label %19, label %16, !dbg !222

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !223
  %18 = icmp sge i32 %17, 2046, !dbg !224
  br i1 %18, label %19, label %29, !dbg !225

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !226
  %21 = icmp sge i32 %20, 2046, !dbg !229
  br i1 %21, label %22, label %25, !dbg !230

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !231
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !234
  store i32 2041, i32* %5, align 4, !dbg !235
  br label %28, !dbg !236

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !237
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !239
  br label %42, !dbg !240

28:                                               ; preds = %22
  br label %29, !dbg !241

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !242
  %31 = add nsw i32 %30, 1, !dbg !242
  store i32 %31, i32* %5, align 4, !dbg !242
  %32 = sext i32 %30 to i64, !dbg !243
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !243
  store i8 10, i8* %33, align 1, !dbg !244
  %34 = load i32, i32* %5, align 4, !dbg !245
  %35 = sext i32 %34 to i64, !dbg !246
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !246
  store i8 48, i8* %36, align 1, !dbg !247
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !248
  %38 = load i32, i32* %5, align 4, !dbg !249
  %39 = sext i32 %38 to i64, !dbg !249
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !250
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !251
  br label %42, !dbg !252

42:                                               ; preds = %29, %25
  ret void, !dbg !252
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
define weak dso_local { i8*, i64 } @create_ws_buffer(%struct.ws_s* %0) #0 !dbg !253 {
  %2 = alloca %struct.buffer_s, align 8
  %3 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %3, metadata !256, metadata !DIExpression()), !dbg !257
  %4 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata %struct.buffer_s* %2, metadata !259, metadata !DIExpression()), !dbg !260
  %5 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 1, !dbg !261
  store i64 4096, i64* %5, align 8, !dbg !262
  %6 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 1, !dbg !263
  %7 = load i64, i64* %6, align 8, !dbg !263
  %8 = call noalias i8* @malloc(i64 %7) #2, !dbg !264
  %9 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 0, !dbg !265
  store i8* %8, i8** %9, align 8, !dbg !266
  %10 = bitcast %struct.buffer_s* %2 to { i8*, i64 }*, !dbg !267
  %11 = load { i8*, i64 }, { i8*, i64 }* %10, align 8, !dbg !267
  ret { i8*, i64 } %11, !dbg !267
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local { i8*, i64 } @resize_ws_buffer(%struct.ws_s* %0, i8* %1, i64 %2) #0 !dbg !268 {
  %4 = alloca %struct.buffer_s, align 8
  %5 = alloca %struct.buffer_s, align 8
  %6 = alloca %struct.ws_s*, align 8
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.buffer_s* %5 to { i8*, i64 }*
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0
  store i8* %1, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 8
  store %struct.ws_s* %0, %struct.ws_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %6, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata %struct.buffer_s* %5, metadata !273, metadata !DIExpression()), !dbg !274
  %11 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 1, !dbg !275
  %12 = load i64, i64* %11, align 8, !dbg !275
  %13 = lshr i64 %12, 12, !dbg !275
  %14 = add i64 %13, 1, !dbg !275
  %15 = shl i64 %14, 12, !dbg !275
  %16 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 1, !dbg !276
  store i64 %15, i64* %16, align 8, !dbg !277
  call void @llvm.dbg.declare(metadata i8** %7, metadata !278, metadata !DIExpression()), !dbg !279
  %17 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 0, !dbg !280
  %18 = load i8*, i8** %17, align 8, !dbg !280
  %19 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 1, !dbg !281
  %20 = load i64, i64* %19, align 8, !dbg !281
  %21 = call i8* @realloc(i8* %18, i64 %20) #2, !dbg !282
  store i8* %21, i8** %7, align 8, !dbg !279
  %22 = load i8*, i8** %7, align 8, !dbg !283
  %23 = icmp ne i8* %22, null, !dbg !283
  br i1 %23, label %33, label %24, !dbg !285

24:                                               ; preds = %3
  %25 = load %struct.ws_s*, %struct.ws_s** %6, align 8, !dbg !286
  %26 = bitcast %struct.buffer_s* %5 to { i8*, i64 }*, !dbg !288
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 0, !dbg !288
  %28 = load i8*, i8** %27, align 8, !dbg !288
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 1, !dbg !288
  %30 = load i64, i64* %29, align 8, !dbg !288
  call void @free_ws_buffer(%struct.ws_s* %25, i8* %28, i64 %30), !dbg !288
  %31 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 0, !dbg !289
  store i8* null, i8** %31, align 8, !dbg !290
  %32 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 1, !dbg !291
  store i64 0, i64* %32, align 8, !dbg !292
  br label %33, !dbg !293

33:                                               ; preds = %24, %3
  %34 = load i8*, i8** %7, align 8, !dbg !294
  %35 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 0, !dbg !295
  store i8* %34, i8** %35, align 8, !dbg !296
  %36 = bitcast %struct.buffer_s* %4 to i8*, !dbg !297
  %37 = bitcast %struct.buffer_s* %5 to i8*, !dbg !297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false), !dbg !297
  %38 = bitcast %struct.buffer_s* %4 to { i8*, i64 }*, !dbg !298
  %39 = load { i8*, i64 }, { i8*, i64 }* %38, align 8, !dbg !298
  ret { i8*, i64 } %39, !dbg !298
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @free_ws_buffer(%struct.ws_s* %0, i8* %1, i64 %2) #0 !dbg !299 {
  %4 = alloca %struct.buffer_s, align 8
  %5 = alloca %struct.ws_s*, align 8
  %6 = bitcast %struct.buffer_s* %4 to { i8*, i64 }*
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 8
  store %struct.ws_s* %0, %struct.ws_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %5, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata %struct.buffer_s* %4, metadata !304, metadata !DIExpression()), !dbg !305
  %9 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !306
  %10 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %4, i32 0, i32 0, !dbg !307
  %11 = load i8*, i8** %10, align 8, !dbg !307
  call void @free(i8* %11) #2, !dbg !308
  ret void, !dbg !309
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @websocket_attach(i64 %0, %struct.http_settings_s* %1, %struct.websocket_settings_s* %2, i8* %3, i64 %4) #0 !dbg !310 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.http_settings_s*, align 8
  %8 = alloca %struct.websocket_settings_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ws_s*, align 8
  %12 = alloca %struct.buffer_s, align 8
  %13 = alloca %struct.buffer_s, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !385, metadata !DIExpression()), !dbg !386
  store %struct.http_settings_s* %1, %struct.http_settings_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.http_settings_s** %7, metadata !387, metadata !DIExpression()), !dbg !388
  store %struct.websocket_settings_s* %2, %struct.websocket_settings_s** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.websocket_settings_s** %8, metadata !389, metadata !DIExpression()), !dbg !390
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !391, metadata !DIExpression()), !dbg !392
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata %struct.ws_s** %11, metadata !395, metadata !DIExpression()), !dbg !396
  %14 = load i64, i64* %6, align 8, !dbg !397
  %15 = call %struct.ws_s* @new_websocket(i64 %14), !dbg !398
  store %struct.ws_s* %15, %struct.ws_s** %11, align 8, !dbg !396
  %16 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !399
  %17 = icmp ne %struct.ws_s* %16, null, !dbg !399
  br i1 %17, label %28, label %18, !dbg !401

18:                                               ; preds = %5
  br label %19, !dbg !402

19:                                               ; preds = %18
  %20 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !404
  %21 = icmp sle i32 1, %20, !dbg !404
  br i1 %21, label %22, label %23, !dbg !407

22:                                               ; preds = %19
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)), !dbg !408
  br label %23, !dbg !408

23:                                               ; preds = %22, %19
  br label %24, !dbg !407

24:                                               ; preds = %23
  %25 = call i32 @kill(i32 0, i32 2) #2, !dbg !402
  %26 = call i32* @__errno_location() #9, !dbg !402
  %27 = load i32, i32* %26, align 4, !dbg !402
  call void @exit(i32 %27) #10, !dbg !402
  unreachable, !dbg !402

28:                                               ; preds = %5
  %29 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !410
  %30 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %29, i32 0, i32 11, !dbg !411
  %31 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !412
  %32 = call { i8*, i64 } @create_ws_buffer(%struct.ws_s* %31), !dbg !413
  %33 = bitcast %struct.buffer_s* %12 to { i8*, i64 }*, !dbg !413
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 0, !dbg !413
  %35 = extractvalue { i8*, i64 } %32, 0, !dbg !413
  store i8* %35, i8** %34, align 8, !dbg !413
  %36 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 1, !dbg !413
  %37 = extractvalue { i8*, i64 } %32, 1, !dbg !413
  store i64 %37, i64* %36, align 8, !dbg !413
  %38 = bitcast %struct.buffer_s* %30 to i8*, !dbg !413
  %39 = bitcast %struct.buffer_s* %12 to i8*, !dbg !413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false), !dbg !413
  %40 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8, !dbg !414
  %41 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %40, i32 0, i32 1, !dbg !415
  %42 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %41, align 8, !dbg !415
  %43 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !416
  %44 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %43, i32 0, i32 5, !dbg !417
  store void (%struct.ws_s*)* %42, void (%struct.ws_s*)** %44, align 8, !dbg !418
  %45 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8, !dbg !419
  %46 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %45, i32 0, i32 4, !dbg !420
  %47 = load void (i64, i8*)*, void (i64, i8*)** %46, align 8, !dbg !420
  %48 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !421
  %49 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %48, i32 0, i32 6, !dbg !422
  store void (i64, i8*)* %47, void (i64, i8*)** %49, align 8, !dbg !423
  %50 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8, !dbg !424
  %51 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %50, i32 0, i32 0, !dbg !425
  %52 = load void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %51, align 8, !dbg !425
  %53 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !426
  %54 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %53, i32 0, i32 2, !dbg !427
  store void (%struct.ws_s*, %struct.fio_str_info_s*, i8)* %52, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %54, align 8, !dbg !428
  %55 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8, !dbg !429
  %56 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %55, i32 0, i32 2, !dbg !430
  %57 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %56, align 8, !dbg !430
  %58 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !431
  %59 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %58, i32 0, i32 4, !dbg !432
  store void (%struct.ws_s*)* %57, void (%struct.ws_s*)** %59, align 8, !dbg !433
  %60 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8, !dbg !434
  %61 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %60, i32 0, i32 3, !dbg !435
  %62 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %61, align 8, !dbg !435
  %63 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !436
  %64 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %63, i32 0, i32 3, !dbg !437
  store void (%struct.ws_s*)* %62, void (%struct.ws_s*)** %64, align 8, !dbg !438
  %65 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8, !dbg !439
  %66 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %65, i32 0, i32 5, !dbg !440
  %67 = load i8*, i8** %66, align 8, !dbg !440
  %68 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !441
  %69 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %68, i32 0, i32 7, !dbg !442
  store i8* %67, i8** %69, align 8, !dbg !443
  %70 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8, !dbg !444
  %71 = icmp ne %struct.http_settings_s* %70, null, !dbg !444
  br i1 %71, label %72, label %87, !dbg !446

72:                                               ; preds = %28
  %73 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8, !dbg !447
  %74 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %73, i32 0, i32 18, !dbg !449
  %75 = load i8, i8* %74, align 1, !dbg !449
  %76 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !450
  %77 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %76, i32 0, i32 15, !dbg !451
  store i8 %75, i8* %77, align 1, !dbg !452
  %78 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8, !dbg !453
  %79 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %78, i32 0, i32 14, !dbg !454
  %80 = load i64, i64* %79, align 8, !dbg !454
  %81 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !455
  %82 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %81, i32 0, i32 8, !dbg !456
  store i64 %80, i64* %82, align 8, !dbg !457
  %83 = load i64, i64* %6, align 8, !dbg !458
  %84 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8, !dbg !459
  %85 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %84, i32 0, i32 16, !dbg !460
  %86 = load i8, i8* %85, align 1, !dbg !460
  call void @fio_timeout_set(i64 %83, i8 zeroext %86), !dbg !461
  br label %91, !dbg !462

87:                                               ; preds = %28
  %88 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !463
  %89 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %88, i32 0, i32 8, !dbg !465
  store i64 262144, i64* %89, align 8, !dbg !466
  %90 = load i64, i64* %6, align 8, !dbg !467
  call void @fio_timeout_set(i64 %90, i8 zeroext 40), !dbg !468
  br label %91

91:                                               ; preds = %87, %72
  %92 = load i8*, i8** %9, align 8, !dbg !469
  %93 = icmp ne i8* %92, null, !dbg !469
  br i1 %93, label %94, label %148, !dbg !471

94:                                               ; preds = %91
  %95 = load i64, i64* %10, align 8, !dbg !472
  %96 = icmp ne i64 %95, 0, !dbg !472
  br i1 %96, label %97, label %148, !dbg !473

97:                                               ; preds = %94
  %98 = load i64, i64* %10, align 8, !dbg !474
  %99 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !477
  %100 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %99, i32 0, i32 11, !dbg !478
  %101 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %100, i32 0, i32 1, !dbg !479
  %102 = load i64, i64* %101, align 8, !dbg !479
  %103 = icmp ugt i64 %98, %102, !dbg !480
  br i1 %103, label %104, label %138, !dbg !481

104:                                              ; preds = %97
  %105 = load i64, i64* %10, align 8, !dbg !482
  %106 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !484
  %107 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %106, i32 0, i32 11, !dbg !485
  %108 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %107, i32 0, i32 1, !dbg !486
  store i64 %105, i64* %108, align 8, !dbg !487
  %109 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !488
  %110 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %109, i32 0, i32 11, !dbg !489
  %111 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !490
  %112 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !491
  %113 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %112, i32 0, i32 11, !dbg !492
  %114 = bitcast %struct.buffer_s* %113 to { i8*, i64 }*, !dbg !493
  %115 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %114, i32 0, i32 0, !dbg !493
  %116 = load i8*, i8** %115, align 8, !dbg !493
  %117 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %114, i32 0, i32 1, !dbg !493
  %118 = load i64, i64* %117, align 8, !dbg !493
  %119 = call { i8*, i64 } @resize_ws_buffer(%struct.ws_s* %111, i8* %116, i64 %118), !dbg !493
  %120 = bitcast %struct.buffer_s* %13 to { i8*, i64 }*, !dbg !493
  %121 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %120, i32 0, i32 0, !dbg !493
  %122 = extractvalue { i8*, i64 } %119, 0, !dbg !493
  store i8* %122, i8** %121, align 8, !dbg !493
  %123 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %120, i32 0, i32 1, !dbg !493
  %124 = extractvalue { i8*, i64 } %119, 1, !dbg !493
  store i64 %124, i64* %123, align 8, !dbg !493
  %125 = bitcast %struct.buffer_s* %110 to i8*, !dbg !493
  %126 = bitcast %struct.buffer_s* %13 to i8*, !dbg !493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 16, i1 false), !dbg !493
  %127 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !494
  %128 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %127, i32 0, i32 11, !dbg !496
  %129 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %128, i32 0, i32 0, !dbg !497
  %130 = load i8*, i8** %129, align 8, !dbg !497
  %131 = icmp ne i8* %130, null, !dbg !494
  br i1 %131, label %137, label %132, !dbg !498

132:                                              ; preds = %104
  %133 = load i64, i64* %6, align 8, !dbg !499
  %134 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !501
  %135 = bitcast %struct.ws_s* %134 to %struct.fio_protocol_s*, !dbg !502
  call void @fio_attach(i64 %133, %struct.fio_protocol_s* %135), !dbg !503
  %136 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !504
  call void @websocket_close(%struct.ws_s* %136), !dbg !505
  br label %153, !dbg !506

137:                                              ; preds = %104
  br label %138, !dbg !507

138:                                              ; preds = %137, %97
  %139 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !508
  %140 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %139, i32 0, i32 11, !dbg !509
  %141 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %140, i32 0, i32 0, !dbg !510
  %142 = load i8*, i8** %141, align 8, !dbg !510
  %143 = load i8*, i8** %9, align 8, !dbg !511
  %144 = load i64, i64* %10, align 8, !dbg !512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %142, i8* align 1 %143, i64 %144, i1 false), !dbg !513
  %145 = load i64, i64* %10, align 8, !dbg !514
  %146 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !515
  %147 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %146, i32 0, i32 12, !dbg !516
  store i64 %145, i64* %147, align 8, !dbg !517
  br label %148, !dbg !518

148:                                              ; preds = %138, %94, %91
  %149 = load i64, i64* %6, align 8, !dbg !519
  %150 = load %struct.ws_s*, %struct.ws_s** %11, align 8, !dbg !520
  %151 = bitcast %struct.ws_s* %150 to %struct.fio_protocol_s*, !dbg !521
  call void @fio_attach(i64 %149, %struct.fio_protocol_s* %151), !dbg !522
  %152 = load i64, i64* %6, align 8, !dbg !523
  call void @fio_force_event(i64 %152, i32 0), !dbg !524
  br label %153, !dbg !525

153:                                              ; preds = %148, %132
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ws_s* @new_websocket(i64 %0) #0 !dbg !526 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ws_s*, align 8
  %4 = alloca %struct.ws_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata %struct.ws_s** %3, metadata !531, metadata !DIExpression()), !dbg !532
  %5 = call noalias i8* @malloc(i64 184) #2, !dbg !533
  %6 = bitcast i8* %5 to %struct.ws_s*, !dbg !533
  store %struct.ws_s* %6, %struct.ws_s** %3, align 8, !dbg !532
  %7 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !534
  %8 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 0, !dbg !535
  %9 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 0, !dbg !536
  store void (i64, %struct.fio_protocol_s*)* @on_data_first, void (i64, %struct.fio_protocol_s*)** %9, align 8, !dbg !536
  %10 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 1, !dbg !536
  store void (i64, %struct.fio_protocol_s*)* null, void (i64, %struct.fio_protocol_s*)** %10, align 8, !dbg !536
  %11 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 2, !dbg !536
  store i8 (i64, %struct.fio_protocol_s*)* @on_shutdown, i8 (i64, %struct.fio_protocol_s*)** %11, align 8, !dbg !536
  %12 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 3, !dbg !536
  store void (i64, %struct.fio_protocol_s*)* @on_close, void (i64, %struct.fio_protocol_s*)** %12, align 8, !dbg !536
  %13 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 4, !dbg !536
  store void (i64, %struct.fio_protocol_s*)* @ws_ping, void (i64, %struct.fio_protocol_s*)** %13, align 8, !dbg !536
  %14 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %8, i32 0, i32 5, !dbg !536
  store i64 0, i64* %14, align 8, !dbg !536
  %15 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 1, !dbg !535
  %16 = load i64, i64* %2, align 8, !dbg !537
  store i64 %16, i64* %15, align 8, !dbg !535
  %17 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 2, !dbg !535
  store void (%struct.ws_s*, %struct.fio_str_info_s*, i8)* null, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %17, align 8, !dbg !535
  %18 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 3, !dbg !535
  store void (%struct.ws_s*)* null, void (%struct.ws_s*)** %18, align 8, !dbg !535
  %19 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 4, !dbg !535
  store void (%struct.ws_s*)* null, void (%struct.ws_s*)** %19, align 8, !dbg !535
  %20 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 5, !dbg !535
  store void (%struct.ws_s*)* null, void (%struct.ws_s*)** %20, align 8, !dbg !535
  %21 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 6, !dbg !535
  store void (i64, i8*)* null, void (i64, i8*)** %21, align 8, !dbg !535
  %22 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 7, !dbg !535
  store i8* null, i8** %22, align 8, !dbg !535
  %23 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 8, !dbg !535
  store i64 0, i64* %23, align 8, !dbg !535
  %24 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 9, !dbg !535
  %25 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %24, i32 0, i32 0, !dbg !538
  %26 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !538
  %27 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %26, i32 0, i32 9, !dbg !538
  store %struct.fio_ls_s* %27, %struct.fio_ls_s** %25, align 8, !dbg !538
  %28 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %24, i32 0, i32 1, !dbg !538
  %29 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !538
  %30 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %29, i32 0, i32 9, !dbg !538
  store %struct.fio_ls_s* %30, %struct.fio_ls_s** %28, align 8, !dbg !538
  %31 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %24, i32 0, i32 2, !dbg !538
  store i8* null, i8** %31, align 8, !dbg !538
  %32 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 10, !dbg !535
  store volatile i8 0, i8* %32, align 8, !dbg !535
  %33 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 11, !dbg !535
  %34 = bitcast %struct.buffer_s* %33 to i8*, !dbg !535
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 16, i1 false), !dbg !535
  %35 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 12, !dbg !535
  store i64 0, i64* %35, align 8, !dbg !535
  %36 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 13, !dbg !535
  store i64 0, i64* %36, align 8, !dbg !535
  %37 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 14, !dbg !535
  store i8 0, i8* %37, align 8, !dbg !535
  %38 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 15, !dbg !535
  store i8 0, i8* %38, align 1, !dbg !535
  %39 = bitcast %struct.ws_s* %7 to i8*, !dbg !539
  %40 = bitcast %struct.ws_s* %4 to i8*, !dbg !539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 184, i1 true), !dbg !539
  %41 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !540
  ret %struct.ws_s* %41, !dbg !541
}

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #7

declare dso_local void @fio_timeout_set(i64, i8 zeroext) #5

declare dso_local void @fio_attach(i64, %struct.fio_protocol_s*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @websocket_close(%struct.ws_s* %0) #0 !dbg !542 {
  %2 = alloca %struct.ws_s*, align 8
  %3 = alloca %struct.fio_write_args_s, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %2, metadata !543, metadata !DIExpression()), !dbg !544
  %4 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !545
  %5 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %4, i32 0, i32 1, !dbg !545
  %6 = load i64, i64* %5, align 8, !dbg !545
  %7 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 0, !dbg !545
  %8 = bitcast %union.anon* %7 to i8**, !dbg !545
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8, !dbg !545
  %9 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 1, !dbg !545
  %10 = bitcast %union.anon.0* %9 to void (i8*)**, !dbg !545
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %10, align 8, !dbg !545
  %11 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 2, !dbg !545
  store i64 2, i64* %11, align 8, !dbg !545
  %12 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 3, !dbg !545
  store i64 0, i64* %12, align 8, !dbg !545
  %13 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 4, !dbg !545
  %14 = load i8, i8* %13, align 8, !dbg !545
  %15 = and i8 %14, -2, !dbg !545
  store i8 %15, i8* %13, align 8, !dbg !545
  %16 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 4, !dbg !545
  %17 = load i8, i8* %16, align 8, !dbg !545
  %18 = and i8 %17, -3, !dbg !545
  store i8 %18, i8* %16, align 8, !dbg !545
  %19 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 4, !dbg !545
  %20 = load i8, i8* %19, align 8, !dbg !545
  %21 = and i8 %20, -5, !dbg !545
  store i8 %21, i8* %19, align 8, !dbg !545
  %22 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %3, i32 0, i32 4, !dbg !545
  %23 = load i8, i8* %22, align 8, !dbg !545
  %24 = and i8 %23, -9, !dbg !545
  store i8 %24, i8* %22, align 8, !dbg !545
  %25 = call i64 @fio_write2_fn(i64 %6, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %3), !dbg !545
  %26 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !546
  %27 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %26, i32 0, i32 1, !dbg !547
  %28 = load i64, i64* %27, align 8, !dbg !547
  call void @fio_close(i64 %28), !dbg !548
  ret void, !dbg !549
}

declare dso_local void @fio_force_event(i64, i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @websocket_optimize4broadcasts(i64 %0, i32 %1) #0 !dbg !161 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !550, metadata !DIExpression()), !dbg !551
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, metadata !554, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata i64** %6, metadata !581, metadata !DIExpression()), !dbg !583
  %11 = load i64, i64* %3, align 8, !dbg !584
  %12 = sub nsw i64 0, %11, !dbg !585
  switch i64 %12, label %16 [
    i64 32, label %13
    i64 33, label %14
    i64 34, label %15
  ], !dbg !586

13:                                               ; preds = %2
  store i64* @websocket_optimize4broadcasts.generic, i64** %6, align 8, !dbg !587
  store void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* @websocket_optimize_generic, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8, !dbg !589
  br label %17, !dbg !590

14:                                               ; preds = %2
  store i64* @websocket_optimize4broadcasts.text, i64** %6, align 8, !dbg !591
  store void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* @websocket_optimize_text, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8, !dbg !592
  br label %17, !dbg !593

15:                                               ; preds = %2
  store i64* @websocket_optimize4broadcasts.binary, i64** %6, align 8, !dbg !594
  store void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* @websocket_optimize_binary, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8, !dbg !595
  br label %17, !dbg !596

16:                                               ; preds = %2
  br label %40, !dbg !597

17:                                               ; preds = %15, %14, %13
  %18 = load i32, i32* %4, align 4, !dbg !598
  %19 = icmp ne i32 %18, 0, !dbg !598
  br i1 %19, label %20, label %30, !dbg !600

20:                                               ; preds = %17
  %21 = load i64*, i64** %6, align 8, !dbg !601
  store i64 1, i64* %7, align 8, !dbg !601
  %22 = load i64, i64* %7, align 8, !dbg !601
  %23 = atomicrmw add i64* %21, i64 %22 seq_cst, !dbg !601
  %24 = add i64 %23, %22, !dbg !601
  store i64 %24, i64* %8, align 8, !dbg !601
  %25 = load i64, i64* %8, align 8, !dbg !601
  %26 = icmp eq i64 %25, 1, !dbg !604
  br i1 %26, label %27, label %29, !dbg !605

27:                                               ; preds = %20
  %28 = load void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)*, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8, !dbg !606
  call void @fio_message_metadata_callback_set(void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* %28, i32 1), !dbg !608
  br label %29, !dbg !609

29:                                               ; preds = %27, %20
  br label %40, !dbg !610

30:                                               ; preds = %17
  %31 = load i64*, i64** %6, align 8, !dbg !611
  store i64 1, i64* %9, align 8, !dbg !611
  %32 = load i64, i64* %9, align 8, !dbg !611
  %33 = atomicrmw sub i64* %31, i64 %32 seq_cst, !dbg !611
  %34 = sub i64 %33, %32, !dbg !611
  store i64 %34, i64* %10, align 8, !dbg !611
  %35 = load i64, i64* %10, align 8, !dbg !611
  %36 = icmp eq i64 %35, 0, !dbg !614
  br i1 %36, label %37, label %39, !dbg !615

37:                                               ; preds = %30
  %38 = load void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)*, void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)** %5, align 8, !dbg !616
  call void @fio_message_metadata_callback_set(void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)* %38, i32 0), !dbg !618
  br label %39, !dbg !619

39:                                               ; preds = %37, %30
  br label %40

40:                                               ; preds = %16, %39, %29
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize_generic(%struct.fio_msg_metadata_s* noalias sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %1, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext %3) #0 !dbg !621 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.fio_str_s, align 8
  %7 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %1, metadata !622, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %2, metadata !624, metadata !DIExpression()), !dbg !625
  store i8 %3, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata %struct.fio_str_s* %6, metadata !628, metadata !DIExpression()), !dbg !629
  %8 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 0, !dbg !630
  store volatile i32 0, i32* %8, align 8, !dbg !630
  %9 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 1, !dbg !630
  store i8 0, i8* %9, align 4, !dbg !630
  %10 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 2, !dbg !630
  store i8 0, i8* %10, align 1, !dbg !630
  %11 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 3, !dbg !630
  %12 = bitcast [10 x i8]* %11 to i8*, !dbg !630
  call void @llvm.memset.p0i8.i64(i8* align 2 %12, i8 0, i64 10, i1 false), !dbg !630
  %13 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 4, !dbg !630
  store i64 0, i64* %13, align 8, !dbg !630
  %14 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 5, !dbg !630
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1, !dbg !630
  %16 = load i64, i64* %15, align 8, !dbg !630
  store i64 %16, i64* %14, align 8, !dbg !630
  %17 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 6, !dbg !630
  store void (i8*)* @free, void (i8*)** %17, align 8, !dbg !630
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 7, !dbg !630
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 2, !dbg !630
  %20 = load i8*, i8** %19, align 8, !dbg !630
  store i8* %20, i8** %18, align 8, !dbg !630
  %21 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 6, !dbg !631
  store void (i8*)* null, void (i8*)** %21, align 8, !dbg !632
  call void @llvm.dbg.declare(metadata i8* %7, metadata !633, metadata !DIExpression()), !dbg !634
  store i8 2, i8* %7, align 1, !dbg !634
  %22 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %6, i32 0, i32 5, !dbg !635
  %23 = load i64, i64* %22, align 8, !dbg !635
  %24 = icmp ule i64 %23, 1048576, !dbg !637
  br i1 %24, label %25, label %29, !dbg !638

25:                                               ; preds = %4
  %26 = call i64 @fio_str_utf8_valid(%struct.fio_str_s* %6), !dbg !639
  %27 = icmp ne i64 %26, 0, !dbg !639
  br i1 %27, label %28, label %29, !dbg !640

28:                                               ; preds = %25
  store i8 1, i8* %7, align 1, !dbg !641
  br label %29, !dbg !643

29:                                               ; preds = %28, %25, %4
  call void @llvm.dbg.declare(metadata %struct.fio_msg_metadata_s* %0, metadata !644, metadata !DIExpression()), !dbg !645
  %30 = load i8, i8* %7, align 1, !dbg !646
  call void @websocket_optimize(%struct.fio_msg_metadata_s* sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext %30), !dbg !647
  %31 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 0, !dbg !648
  store i64 -32, i64* %31, align 8, !dbg !649
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize_text(%struct.fio_msg_metadata_s* noalias sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %1, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext %3) #0 !dbg !651 {
  %5 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %1, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %2, metadata !654, metadata !DIExpression()), !dbg !655
  store i8 %3, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata %struct.fio_msg_metadata_s* %0, metadata !658, metadata !DIExpression()), !dbg !659
  call void @websocket_optimize(%struct.fio_msg_metadata_s* sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext 1), !dbg !660
  %6 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 0, !dbg !661
  store i64 -33, i64* %6, align 8, !dbg !662
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize_binary(%struct.fio_msg_metadata_s* noalias sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %1, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext %3) #0 !dbg !664 {
  %5 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %1, metadata !665, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %2, metadata !667, metadata !DIExpression()), !dbg !668
  store i8 %3, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.declare(metadata %struct.fio_msg_metadata_s* %0, metadata !671, metadata !DIExpression()), !dbg !672
  call void @websocket_optimize(%struct.fio_msg_metadata_s* sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %2, i8 zeroext 2), !dbg !673
  %6 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 0, !dbg !674
  store i64 -34, i64* %6, align 8, !dbg !675
  ret void, !dbg !676
}

declare dso_local void @fio_message_metadata_callback_set(void (%struct.fio_msg_metadata_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8)*, i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @websocket_subscribe(%struct.websocket_subscribe_s* byval(%struct.websocket_subscribe_s) align 8 %0) #0 !dbg !677 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.websocket_sub_data_s*, align 8
  %4 = alloca %struct.websocket_sub_data_s, align 8
  %5 = alloca void (%struct.fio_msg_s*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.subscription_s*, align 8
  %8 = alloca %struct.subscribe_args_s, align 8
  %9 = alloca %struct.fio_ls_s*, align 8
  call void @llvm.dbg.declare(metadata %struct.websocket_subscribe_s* %0, metadata !695, metadata !DIExpression()), !dbg !696
  %10 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0, !dbg !697
  %11 = load %struct.ws_s*, %struct.ws_s** %10, align 8, !dbg !697
  %12 = icmp ne %struct.ws_s* %11, null, !dbg !699
  br i1 %12, label %13, label %20, !dbg !700

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0, !dbg !701
  %15 = load %struct.ws_s*, %struct.ws_s** %14, align 8, !dbg !701
  %16 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %15, i32 0, i32 1, !dbg !702
  %17 = load i64, i64* %16, align 8, !dbg !702
  %18 = call i32 @fio_is_valid(i64 %17), !dbg !703
  %19 = icmp ne i32 %18, 0, !dbg !703
  br i1 %19, label %21, label %20, !dbg !704

20:                                               ; preds = %13, %1
  br label %116, !dbg !705

21:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.websocket_sub_data_s** %3, metadata !706, metadata !DIExpression()), !dbg !714
  %22 = call noalias i8* @malloc(i64 24) #2, !dbg !715
  %23 = bitcast i8* %22 to %struct.websocket_sub_data_s*, !dbg !715
  store %struct.websocket_sub_data_s* %23, %struct.websocket_sub_data_s** %3, align 8, !dbg !714
  %24 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %3, align 8, !dbg !716
  %25 = icmp ne %struct.websocket_sub_data_s* %24, null, !dbg !716
  br i1 %25, label %36, label %26, !dbg !718

26:                                               ; preds = %21
  br label %27, !dbg !719

27:                                               ; preds = %26
  %28 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !721
  %29 = icmp sle i32 1, %28, !dbg !721
  br i1 %29, label %30, label %31, !dbg !724

30:                                               ; preds = %27
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0)), !dbg !725
  br label %31, !dbg !725

31:                                               ; preds = %30, %27
  br label %32, !dbg !724

32:                                               ; preds = %31
  %33 = call i32 @kill(i32 0, i32 2) #2, !dbg !719
  %34 = call i32* @__errno_location() #9, !dbg !719
  %35 = load i32, i32* %34, align 4, !dbg !719
  call void @exit(i32 %35) #10, !dbg !719
  unreachable, !dbg !719

36:                                               ; preds = %21
  %37 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %3, align 8, !dbg !727
  %38 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %4, i32 0, i32 0, !dbg !728
  %39 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 2, !dbg !729
  %40 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %39, align 8, !dbg !729
  store void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %40, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %38, align 8, !dbg !728
  %41 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %4, i32 0, i32 1, !dbg !728
  %42 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 3, !dbg !730
  %43 = load void (i8*)*, void (i8*)** %42, align 8, !dbg !730
  store void (i8*)* %43, void (i8*)** %41, align 8, !dbg !728
  %44 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %4, i32 0, i32 2, !dbg !728
  %45 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 4, !dbg !731
  %46 = load i8*, i8** %45, align 8, !dbg !731
  store i8* %46, i8** %44, align 8, !dbg !728
  %47 = bitcast %struct.websocket_sub_data_s* %37 to i8*, !dbg !732
  %48 = bitcast %struct.websocket_sub_data_s* %4 to i8*, !dbg !732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false), !dbg !732
  call void @llvm.dbg.declare(metadata void (%struct.fio_msg_s*)** %5, metadata !733, metadata !DIExpression()), !dbg !737
  store void (%struct.fio_msg_s*)* @websocket_on_pubsub_message, void (%struct.fio_msg_s*)** %5, align 8, !dbg !737
  %49 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 2, !dbg !738
  %50 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %49, align 8, !dbg !738
  %51 = icmp ne void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %50, null, !dbg !740
  br i1 %51, label %75, label %52, !dbg !741

52:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata i64* %6, metadata !742, metadata !DIExpression()), !dbg !744
  %53 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 6, !dbg !745
  %54 = load i8, i8* %53, align 8, !dbg !745
  %55 = and i8 %54, 1, !dbg !745
  %56 = zext i8 %55 to i32, !dbg !745
  %57 = icmp ne i32 %56, 0, !dbg !747
  br i1 %57, label %58, label %59, !dbg !748

58:                                               ; preds = %52
  store i64 -34, i64* %6, align 8, !dbg !749
  store void (%struct.fio_msg_s*)* @websocket_on_pubsub_message_direct_bin, void (%struct.fio_msg_s*)** %5, align 8, !dbg !751
  br label %69, !dbg !752

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 6, !dbg !753
  %61 = load i8, i8* %60, align 8, !dbg !753
  %62 = lshr i8 %61, 1, !dbg !753
  %63 = and i8 %62, 1, !dbg !753
  %64 = zext i8 %63 to i32, !dbg !753
  %65 = icmp ne i32 %64, 0, !dbg !755
  br i1 %65, label %66, label %67, !dbg !756

66:                                               ; preds = %59
  store i64 -33, i64* %6, align 8, !dbg !757
  store void (%struct.fio_msg_s*)* @websocket_on_pubsub_message_direct_txt, void (%struct.fio_msg_s*)** %5, align 8, !dbg !759
  br label %68, !dbg !760

67:                                               ; preds = %59
  store i64 -32, i64* %6, align 8, !dbg !761
  store void (%struct.fio_msg_s*)* @websocket_on_pubsub_message_direct, void (%struct.fio_msg_s*)** %5, align 8, !dbg !763
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i64, i64* %6, align 8, !dbg !764
  call void @websocket_optimize4broadcasts(i64 %70, i32 1), !dbg !765
  %71 = load i64, i64* %6, align 8, !dbg !766
  %72 = inttoptr i64 %71 to void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, !dbg !767
  %73 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %3, align 8, !dbg !768
  %74 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %73, i32 0, i32 0, !dbg !769
  store void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %72, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %74, align 8, !dbg !770
  br label %75, !dbg !771

75:                                               ; preds = %69, %36
  call void @llvm.dbg.declare(metadata %struct.subscription_s** %7, metadata !772, metadata !DIExpression()), !dbg !773
  %76 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 0, !dbg !774
  store i32 0, i32* %76, align 8, !dbg !774
  %77 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 1, !dbg !774
  %78 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 1, !dbg !774
  %79 = bitcast %struct.fio_str_info_s* %77 to i8*, !dbg !774
  %80 = bitcast %struct.fio_str_info_s* %78 to i8*, !dbg !774
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 24, i1 false), !dbg !774
  %81 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 2, !dbg !774
  %82 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 5, !dbg !774
  %83 = load i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)*, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)** %82, align 8, !dbg !774
  store i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)* %83, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)** %81, align 8, !dbg !774
  %84 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 3, !dbg !774
  %85 = load void (%struct.fio_msg_s*)*, void (%struct.fio_msg_s*)** %5, align 8, !dbg !774
  store void (%struct.fio_msg_s*)* %85, void (%struct.fio_msg_s*)** %84, align 8, !dbg !774
  %86 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 4, !dbg !774
  store void (i8*, i8*)* @websocket_on_unsubscribe, void (i8*, i8*)** %86, align 8, !dbg !774
  %87 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 5, !dbg !774
  %88 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0, !dbg !774
  %89 = load %struct.ws_s*, %struct.ws_s** %88, align 8, !dbg !774
  %90 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %89, i32 0, i32 1, !dbg !774
  %91 = load i64, i64* %90, align 8, !dbg !774
  %92 = inttoptr i64 %91 to i8*, !dbg !774
  store i8* %92, i8** %87, align 8, !dbg !774
  %93 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %8, i32 0, i32 6, !dbg !774
  %94 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %3, align 8, !dbg !774
  %95 = bitcast %struct.websocket_sub_data_s* %94 to i8*, !dbg !774
  store i8* %95, i8** %93, align 8, !dbg !774
  %96 = call %struct.subscription_s* @fio_subscribe(%struct.subscribe_args_s* byval(%struct.subscribe_args_s) align 8 %8), !dbg !774
  store %struct.subscription_s* %96, %struct.subscription_s** %7, align 8, !dbg !773
  %97 = load %struct.subscription_s*, %struct.subscription_s** %7, align 8, !dbg !775
  %98 = icmp ne %struct.subscription_s* %97, null, !dbg !775
  br i1 %98, label %100, label %99, !dbg !777

99:                                               ; preds = %75
  store i64 0, i64* %2, align 8, !dbg !778
  br label %126, !dbg !778

100:                                              ; preds = %75
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %9, metadata !780, metadata !DIExpression()), !dbg !781
  %101 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0, !dbg !782
  %102 = load %struct.ws_s*, %struct.ws_s** %101, align 8, !dbg !782
  %103 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %102, i32 0, i32 10, !dbg !783
  call void @fio_lock(i8* %103), !dbg !784
  %104 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0, !dbg !785
  %105 = load %struct.ws_s*, %struct.ws_s** %104, align 8, !dbg !785
  %106 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %105, i32 0, i32 9, !dbg !786
  %107 = load %struct.subscription_s*, %struct.subscription_s** %7, align 8, !dbg !787
  %108 = bitcast %struct.subscription_s* %107 to i8*, !dbg !787
  %109 = call %struct.fio_ls_s* @fio_ls_push(%struct.fio_ls_s* %106, i8* %108), !dbg !788
  store %struct.fio_ls_s* %109, %struct.fio_ls_s** %9, align 8, !dbg !789
  %110 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 0, !dbg !790
  %111 = load %struct.ws_s*, %struct.ws_s** %110, align 8, !dbg !790
  %112 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %111, i32 0, i32 10, !dbg !791
  %113 = call i32 @fio_unlock(i8* %112), !dbg !792
  %114 = load %struct.fio_ls_s*, %struct.fio_ls_s** %9, align 8, !dbg !793
  %115 = ptrtoint %struct.fio_ls_s* %114 to i64, !dbg !794
  store i64 %115, i64* %2, align 8, !dbg !795
  br label %126, !dbg !795

116:                                              ; preds = %20
  call void @llvm.dbg.label(metadata !796), !dbg !797
  %117 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 3, !dbg !798
  %118 = load void (i8*)*, void (i8*)** %117, align 8, !dbg !798
  %119 = icmp ne void (i8*)* %118, null, !dbg !800
  br i1 %119, label %120, label %125, !dbg !801

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 3, !dbg !802
  %122 = load void (i8*)*, void (i8*)** %121, align 8, !dbg !802
  %123 = getelementptr inbounds %struct.websocket_subscribe_s, %struct.websocket_subscribe_s* %0, i32 0, i32 4, !dbg !803
  %124 = load i8*, i8** %123, align 8, !dbg !803
  call void %122(i8* %124), !dbg !804
  br label %125, !dbg !804

125:                                              ; preds = %120, %116
  store i64 0, i64* %2, align 8, !dbg !805
  br label %126, !dbg !805

126:                                              ; preds = %125, %100, %99
  %127 = load i64, i64* %2, align 8, !dbg !806
  ret i64 %127, !dbg !806
}

declare dso_local i32 @fio_is_valid(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message(%struct.fio_msg_s* %0) #0 !dbg !807 {
  %2 = alloca %struct.fio_msg_s*, align 8
  %3 = alloca %struct.fio_protocol_s*, align 8
  %4 = alloca %struct.websocket_sub_data_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_msg_s** %2, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %3, metadata !810, metadata !DIExpression()), !dbg !811
  %5 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8, !dbg !812
  %6 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %5, i32 0, i32 3, !dbg !813
  %7 = load i8*, i8** %6, align 8, !dbg !813
  %8 = ptrtoint i8* %7 to i64, !dbg !814
  %9 = call %struct.fio_protocol_s* @fio_protocol_try_lock(i64 %8, i32 0), !dbg !815
  store %struct.fio_protocol_s* %9, %struct.fio_protocol_s** %3, align 8, !dbg !811
  %10 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %3, align 8, !dbg !816
  %11 = icmp ne %struct.fio_protocol_s* %10, null, !dbg !816
  br i1 %11, label %19, label %12, !dbg !818

12:                                               ; preds = %1
  %13 = call i32* @__errno_location() #9, !dbg !819
  %14 = load i32, i32* %13, align 4, !dbg !819
  %15 = icmp eq i32 %14, 9, !dbg !822
  br i1 %15, label %16, label %17, !dbg !823

16:                                               ; preds = %12
  br label %43, !dbg !824

17:                                               ; preds = %12
  %18 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8, !dbg !825
  call void @fio_message_defer(%struct.fio_msg_s* %18), !dbg !826
  br label %43, !dbg !827

19:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.websocket_sub_data_s** %4, metadata !828, metadata !DIExpression()), !dbg !829
  %20 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8, !dbg !830
  %21 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %20, i32 0, i32 4, !dbg !831
  %22 = load i8*, i8** %21, align 8, !dbg !831
  %23 = bitcast i8* %22 to %struct.websocket_sub_data_s*, !dbg !830
  store %struct.websocket_sub_data_s* %23, %struct.websocket_sub_data_s** %4, align 8, !dbg !829
  %24 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %4, align 8, !dbg !832
  %25 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %24, i32 0, i32 0, !dbg !834
  %26 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %25, align 8, !dbg !834
  %27 = icmp ne void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %26, null, !dbg !832
  br i1 %27, label %28, label %41, !dbg !835

28:                                               ; preds = %19
  %29 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %4, align 8, !dbg !836
  %30 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %29, i32 0, i32 0, !dbg !837
  %31 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %30, align 8, !dbg !837
  %32 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %3, align 8, !dbg !838
  %33 = bitcast %struct.fio_protocol_s* %32 to %struct.ws_s*, !dbg !839
  %34 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8, !dbg !840
  %35 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %34, i32 0, i32 1, !dbg !841
  %36 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8, !dbg !842
  %37 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %36, i32 0, i32 2, !dbg !843
  %38 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %4, align 8, !dbg !844
  %39 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %38, i32 0, i32 2, !dbg !845
  %40 = load i8*, i8** %39, align 8, !dbg !845
  call void %31(%struct.ws_s* %33, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %35, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %37, i8* %40), !dbg !836
  br label %41, !dbg !836

41:                                               ; preds = %28, %19
  %42 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %3, align 8, !dbg !846
  call void @fio_protocol_unlock(%struct.fio_protocol_s* %42, i32 0), !dbg !847
  br label %43, !dbg !848

43:                                               ; preds = %41, %17, %16
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message_direct_bin(%struct.fio_msg_s* %0) #0 !dbg !849 {
  %2 = alloca %struct.fio_msg_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_msg_s** %2, metadata !850, metadata !DIExpression()), !dbg !851
  %3 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8, !dbg !852
  call void @websocket_on_pubsub_message_direct_internal(%struct.fio_msg_s* %3, i8 zeroext 0), !dbg !853
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message_direct_txt(%struct.fio_msg_s* %0) #0 !dbg !855 {
  %2 = alloca %struct.fio_msg_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_msg_s** %2, metadata !856, metadata !DIExpression()), !dbg !857
  %3 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8, !dbg !858
  call void @websocket_on_pubsub_message_direct_internal(%struct.fio_msg_s* %3, i8 zeroext 1), !dbg !859
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message_direct(%struct.fio_msg_s* %0) #0 !dbg !861 {
  %2 = alloca %struct.fio_msg_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_msg_s** %2, metadata !862, metadata !DIExpression()), !dbg !863
  %3 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8, !dbg !864
  call void @websocket_on_pubsub_message_direct_internal(%struct.fio_msg_s* %3, i8 zeroext 2), !dbg !865
  ret void, !dbg !866
}

declare dso_local %struct.subscription_s* @fio_subscribe(%struct.subscribe_args_s* byval(%struct.subscribe_args_s) align 8) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_unsubscribe(i8* %0, i8* %1) #0 !dbg !867 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.websocket_sub_data_s*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !870, metadata !DIExpression()), !dbg !871
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !872, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.declare(metadata %struct.websocket_sub_data_s** %5, metadata !874, metadata !DIExpression()), !dbg !875
  %6 = load i8*, i8** %4, align 8, !dbg !876
  %7 = bitcast i8* %6 to %struct.websocket_sub_data_s*, !dbg !876
  store %struct.websocket_sub_data_s* %7, %struct.websocket_sub_data_s** %5, align 8, !dbg !875
  %8 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8, !dbg !877
  %9 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %8, i32 0, i32 1, !dbg !879
  %10 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !879
  %11 = icmp ne void (i8*)* %10, null, !dbg !877
  br i1 %11, label %12, label %19, !dbg !880

12:                                               ; preds = %2
  %13 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8, !dbg !881
  %14 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %13, i32 0, i32 1, !dbg !883
  %15 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !883
  %16 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8, !dbg !884
  %17 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %16, i32 0, i32 2, !dbg !885
  %18 = load i8*, i8** %17, align 8, !dbg !885
  call void %15(i8* %18), !dbg !881
  br label %19, !dbg !886

19:                                               ; preds = %12, %2
  %20 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8, !dbg !887
  %21 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %20, i32 0, i32 0, !dbg !889
  %22 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %21, align 8, !dbg !889
  %23 = ptrtoint void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %22 to i64, !dbg !890
  %24 = icmp eq i64 %23, -32, !dbg !891
  br i1 %24, label %25, label %26, !dbg !892

25:                                               ; preds = %19
  call void @websocket_optimize4broadcasts(i64 -32, i32 0), !dbg !893
  br label %42, !dbg !895

26:                                               ; preds = %19
  %27 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8, !dbg !896
  %28 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %27, i32 0, i32 0, !dbg !898
  %29 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %28, align 8, !dbg !898
  %30 = ptrtoint void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %29 to i64, !dbg !899
  %31 = icmp eq i64 %30, -33, !dbg !900
  br i1 %31, label %32, label %33, !dbg !901

32:                                               ; preds = %26
  call void @websocket_optimize4broadcasts(i64 -33, i32 0), !dbg !902
  br label %41, !dbg !904

33:                                               ; preds = %26
  %34 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8, !dbg !905
  %35 = getelementptr inbounds %struct.websocket_sub_data_s, %struct.websocket_sub_data_s* %34, i32 0, i32 0, !dbg !907
  %36 = load void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %35, align 8, !dbg !907
  %37 = ptrtoint void (%struct.ws_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %36 to i64, !dbg !908
  %38 = icmp eq i64 %37, -34, !dbg !909
  br i1 %38, label %39, label %40, !dbg !910

39:                                               ; preds = %33
  call void @websocket_optimize4broadcasts(i64 -34, i32 0), !dbg !911
  br label %40, !dbg !913

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %32
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.websocket_sub_data_s*, %struct.websocket_sub_data_s** %5, align 8, !dbg !914
  %44 = bitcast %struct.websocket_sub_data_s* %43 to i8*, !dbg !914
  call void @free(i8* %44) #2, !dbg !915
  %45 = load i8*, i8** %3, align 8, !dbg !916
  ret void, !dbg !917
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_lock(i8* %0) #0 !dbg !918 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !922, metadata !DIExpression()), !dbg !923
  br label %3, !dbg !924

3:                                                ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8, !dbg !925
  %5 = call i32 @fio_trylock(i8* %4), !dbg !926
  %6 = icmp ne i32 %5, 0, !dbg !924
  br i1 %6, label %7, label %8, !dbg !924

7:                                                ; preds = %3
  call void @fio_reschedule_thread(), !dbg !927
  br label %3, !dbg !924, !llvm.loop !929

8:                                                ; preds = %3
  ret void, !dbg !931
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fio_ls_s* @fio_ls_push(%struct.fio_ls_s* %0, i8* %1) #0 !dbg !932 {
  %3 = alloca %struct.fio_ls_s*, align 8
  %4 = alloca %struct.fio_ls_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fio_ls_s*, align 8
  %7 = alloca %struct.fio_ls_s, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %4, metadata !935, metadata !DIExpression()), !dbg !936
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !937, metadata !DIExpression()), !dbg !938
  %8 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !939
  %9 = icmp ne %struct.fio_ls_s* %8, null, !dbg !939
  br i1 %9, label %11, label %10, !dbg !941

10:                                               ; preds = %2
  store %struct.fio_ls_s* null, %struct.fio_ls_s** %3, align 8, !dbg !942
  br label %47, !dbg !942

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %6, metadata !943, metadata !DIExpression()), !dbg !944
  %12 = call noalias i8* @calloc(i64 24, i64 1) #2, !dbg !945
  %13 = bitcast i8* %12 to %struct.fio_ls_s*, !dbg !946
  store %struct.fio_ls_s* %13, %struct.fio_ls_s** %6, align 8, !dbg !944
  %14 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8, !dbg !947
  %15 = icmp ne %struct.fio_ls_s* %14, null, !dbg !947
  br i1 %15, label %26, label %16, !dbg !949

16:                                               ; preds = %11
  br label %17, !dbg !950

17:                                               ; preds = %16
  %18 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !952
  %19 = icmp sle i32 1, %18, !dbg !952
  br i1 %19, label %20, label %21, !dbg !955

20:                                               ; preds = %17
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0)), !dbg !956
  br label %21, !dbg !956

21:                                               ; preds = %20, %17
  br label %22, !dbg !955

22:                                               ; preds = %21
  %23 = call i32 @kill(i32 0, i32 2) #2, !dbg !950
  %24 = call i32* @__errno_location() #9, !dbg !950
  %25 = load i32, i32* %24, align 4, !dbg !950
  call void @exit(i32 %25) #10, !dbg !950
  unreachable, !dbg !950

26:                                               ; preds = %11
  %27 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8, !dbg !958
  %28 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 0, !dbg !959
  %29 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !960
  %30 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %29, i32 0, i32 0, !dbg !961
  %31 = load %struct.fio_ls_s*, %struct.fio_ls_s** %30, align 8, !dbg !961
  store %struct.fio_ls_s* %31, %struct.fio_ls_s** %28, align 8, !dbg !959
  %32 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 1, !dbg !959
  %33 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !962
  store %struct.fio_ls_s* %33, %struct.fio_ls_s** %32, align 8, !dbg !959
  %34 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 2, !dbg !959
  %35 = load i8*, i8** %5, align 8, !dbg !963
  store i8* %35, i8** %34, align 8, !dbg !959
  %36 = bitcast %struct.fio_ls_s* %27 to i8*, !dbg !964
  %37 = bitcast %struct.fio_ls_s* %7 to i8*, !dbg !964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false), !dbg !964
  %38 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8, !dbg !965
  %39 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !966
  %40 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %39, i32 0, i32 0, !dbg !967
  %41 = load %struct.fio_ls_s*, %struct.fio_ls_s** %40, align 8, !dbg !967
  %42 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %41, i32 0, i32 1, !dbg !968
  store %struct.fio_ls_s* %38, %struct.fio_ls_s** %42, align 8, !dbg !969
  %43 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8, !dbg !970
  %44 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !971
  %45 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %44, i32 0, i32 0, !dbg !972
  store %struct.fio_ls_s* %43, %struct.fio_ls_s** %45, align 8, !dbg !973
  %46 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8, !dbg !974
  store %struct.fio_ls_s* %46, %struct.fio_ls_s** %3, align 8, !dbg !975
  br label %47, !dbg !975

47:                                               ; preds = %26, %10
  %48 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !976
  ret %struct.fio_ls_s* %48, !dbg !976
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_unlock(i8* %0) #0 !dbg !977 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !980, metadata !DIExpression()), !dbg !981
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !982, !srcloc !983
  call void @llvm.dbg.declare(metadata i8* %3, metadata !984, metadata !DIExpression()), !dbg !985
  %6 = load i8*, i8** %2, align 8, !dbg !986
  store i8 0, i8* %4, align 1, !dbg !986
  %7 = load i8, i8* %4, align 1, !dbg !986
  %8 = atomicrmw volatile xchg i8* %6, i8 %7 seq_cst, !dbg !986
  store i8 %8, i8* %5, align 1, !dbg !986
  %9 = load i8, i8* %5, align 1, !dbg !986
  store volatile i8 %9, i8* %3, align 1, !dbg !985
  %10 = load volatile i8, i8* %3, align 1, !dbg !987
  %11 = zext i8 %10 to i32, !dbg !987
  ret i32 %11, !dbg !988
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @websocket_unsubscribe(%struct.ws_s* %0, i64 %1) #0 !dbg !989 {
  %3 = alloca %struct.ws_s*, align 8
  %4 = alloca i64, align 8
  store %struct.ws_s* %0, %struct.ws_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %3, metadata !992, metadata !DIExpression()), !dbg !993
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !994, metadata !DIExpression()), !dbg !995
  %5 = load i64, i64* %4, align 8, !dbg !996
  %6 = inttoptr i64 %5 to %struct.fio_ls_s*, !dbg !997
  %7 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %6, i32 0, i32 2, !dbg !998
  %8 = load i8*, i8** %7, align 8, !dbg !998
  %9 = bitcast i8* %8 to %struct.subscription_s*, !dbg !999
  call void @fio_unsubscribe(%struct.subscription_s* %9), !dbg !1000
  %10 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !1001
  %11 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %10, i32 0, i32 10, !dbg !1002
  call void @fio_lock(i8* %11), !dbg !1003
  %12 = load i64, i64* %4, align 8, !dbg !1004
  %13 = inttoptr i64 %12 to %struct.fio_ls_s*, !dbg !1005
  %14 = call i8* @fio_ls_remove(%struct.fio_ls_s* %13), !dbg !1006
  %15 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !1007
  %16 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %15, i32 0, i32 10, !dbg !1008
  %17 = call i32 @fio_unlock(i8* %16), !dbg !1009
  %18 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !1010
  ret void, !dbg !1011
}

declare dso_local void @fio_unsubscribe(%struct.subscription_s*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_ls_remove(%struct.fio_ls_s* %0) #0 !dbg !1012 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fio_ls_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %3, metadata !1015, metadata !DIExpression()), !dbg !1016
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1017
  %6 = icmp ne %struct.fio_ls_s* %5, null, !dbg !1017
  br i1 %6, label %7, label %13, !dbg !1019

7:                                                ; preds = %1
  %8 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1020
  %9 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %8, i32 0, i32 1, !dbg !1021
  %10 = load %struct.fio_ls_s*, %struct.fio_ls_s** %9, align 8, !dbg !1021
  %11 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1022
  %12 = icmp eq %struct.fio_ls_s* %10, %11, !dbg !1023
  br i1 %12, label %13, label %14, !dbg !1024

13:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8, !dbg !1025
  br label %35, !dbg !1025

14:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1027, metadata !DIExpression()), !dbg !1028
  %15 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1029
  %16 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %15, i32 0, i32 2, !dbg !1030
  %17 = load i8*, i8** %16, align 8, !dbg !1030
  store i8* %17, i8** %4, align 8, !dbg !1028
  %18 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1031
  %19 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %18, i32 0, i32 0, !dbg !1032
  %20 = load %struct.fio_ls_s*, %struct.fio_ls_s** %19, align 8, !dbg !1032
  %21 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1033
  %22 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %21, i32 0, i32 1, !dbg !1034
  %23 = load %struct.fio_ls_s*, %struct.fio_ls_s** %22, align 8, !dbg !1034
  %24 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %23, i32 0, i32 0, !dbg !1035
  store %struct.fio_ls_s* %20, %struct.fio_ls_s** %24, align 8, !dbg !1036
  %25 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1037
  %26 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %25, i32 0, i32 1, !dbg !1038
  %27 = load %struct.fio_ls_s*, %struct.fio_ls_s** %26, align 8, !dbg !1038
  %28 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1039
  %29 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %28, i32 0, i32 0, !dbg !1040
  %30 = load %struct.fio_ls_s*, %struct.fio_ls_s** %29, align 8, !dbg !1040
  %31 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %30, i32 0, i32 1, !dbg !1041
  store %struct.fio_ls_s* %27, %struct.fio_ls_s** %31, align 8, !dbg !1042
  %32 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !1043
  %33 = bitcast %struct.fio_ls_s* %32 to i8*, !dbg !1043
  call void @free(i8* %33) #2, !dbg !1044
  %34 = load i8*, i8** %4, align 8, !dbg !1045
  store i8* %34, i8** %2, align 8, !dbg !1046
  br label %35, !dbg !1046

35:                                               ; preds = %14, %13
  %36 = load i8*, i8** %2, align 8, !dbg !1047
  ret i8* %36, !dbg !1047
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @websocket_udata_get(%struct.ws_s* %0) #0 !dbg !1048 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %2, metadata !1051, metadata !DIExpression()), !dbg !1052
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !1053
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 7, !dbg !1054
  %5 = load i8*, i8** %4, align 8, !dbg !1054
  ret i8* %5, !dbg !1055
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @websocket_uuid(%struct.ws_s* %0) #0 !dbg !1056 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %2, metadata !1059, metadata !DIExpression()), !dbg !1060
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !1061
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 1, !dbg !1062
  %5 = load i64, i64* %4, align 8, !dbg !1062
  ret i64 %5, !dbg !1063
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @websocket_udata_set(%struct.ws_s* %0, i8* %1) #0 !dbg !1064 {
  %3 = alloca %struct.ws_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %3, metadata !1067, metadata !DIExpression()), !dbg !1068
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1069, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1071, metadata !DIExpression()), !dbg !1072
  %6 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !1073
  %7 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %6, i32 0, i32 7, !dbg !1074
  %8 = load i8*, i8** %7, align 8, !dbg !1074
  store i8* %8, i8** %5, align 8, !dbg !1072
  %9 = load i8*, i8** %4, align 8, !dbg !1075
  %10 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !1076
  %11 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %10, i32 0, i32 7, !dbg !1077
  store i8* %9, i8** %11, align 8, !dbg !1078
  %12 = load i8*, i8** %5, align 8, !dbg !1079
  ret i8* %12, !dbg !1080
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @websocket_is_client(%struct.ws_s* %0) #0 !dbg !1081 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %2, metadata !1084, metadata !DIExpression()), !dbg !1085
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !1086
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 15, !dbg !1087
  %5 = load i8, i8* %4, align 1, !dbg !1087
  ret i8 %5, !dbg !1088
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @websocket_write(%struct.ws_s* %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %1, i8 zeroext %2) #0 !dbg !1089 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ws_s*, align 8
  %6 = alloca i8, align 1
  store %struct.ws_s* %0, %struct.ws_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %5, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %1, metadata !1094, metadata !DIExpression()), !dbg !1095
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1096, metadata !DIExpression()), !dbg !1097
  %7 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1098
  %8 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %7, i32 0, i32 1, !dbg !1100
  %9 = load i64, i64* %8, align 8, !dbg !1100
  %10 = call i32 @fio_is_valid(i64 %9), !dbg !1101
  %11 = icmp ne i32 %10, 0, !dbg !1101
  br i1 %11, label %12, label %24, !dbg !1102

12:                                               ; preds = %3
  %13 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1103
  %14 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %13, i32 0, i32 1, !dbg !1105
  %15 = load i64, i64* %14, align 8, !dbg !1105
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 2, !dbg !1106
  %17 = load i8*, i8** %16, align 8, !dbg !1106
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1, !dbg !1107
  %19 = load i64, i64* %18, align 8, !dbg !1107
  %20 = load i8, i8* %6, align 1, !dbg !1108
  %21 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1109
  %22 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %21, i32 0, i32 15, !dbg !1110
  %23 = load i8, i8* %22, align 1, !dbg !1110
  call void @websocket_write_impl(i64 %15, i8* %17, i64 %19, i8 signext %20, i8 signext 1, i8 signext 1, i8 signext %23), !dbg !1111
  store i32 0, i32* %4, align 4, !dbg !1112
  br label %25, !dbg !1112

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1113
  br label %25, !dbg !1113

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %4, align 4, !dbg !1114
  ret i32 %26, !dbg !1114
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_write_impl(i64 %0, i8* %1, i64 %2, i8 signext %3, i8 signext %4, i8 signext %5, i8 signext %6) #0 !dbg !1115 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1120, metadata !DIExpression()), !dbg !1121
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1122, metadata !DIExpression()), !dbg !1123
  store i8 %3, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i8 %4, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1126, metadata !DIExpression()), !dbg !1127
  store i8 %5, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i8 %6, i8* %14, align 1
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1130, metadata !DIExpression()), !dbg !1131
  %17 = load i64, i64* %10, align 8, !dbg !1132
  %18 = icmp ule i64 %17, 12288, !dbg !1134
  br i1 %18, label %19, label %79, !dbg !1135

19:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1136, metadata !DIExpression()), !dbg !1138
  %20 = load i64, i64* %10, align 8, !dbg !1139
  %21 = add i64 %20, 16, !dbg !1140
  %22 = call noalias i8* @fio_malloc(i64 %21), !dbg !1141
  %23 = ptrtoint i8* %22 to i64, !dbg !1141
  %24 = and i64 %23, 15, !dbg !1141
  %25 = icmp eq i64 %24, 0, !dbg !1141
  call void @llvm.assume(i1 %25), !dbg !1141
  store i8* %22, i8** %15, align 8, !dbg !1138
  %26 = load i8, i8* %14, align 1, !dbg !1142
  %27 = sext i8 %26 to i32, !dbg !1142
  %28 = icmp ne i32 %27, 0, !dbg !1142
  br i1 %28, label %29, label %42, !dbg !1142

29:                                               ; preds = %19
  %30 = load i8*, i8** %15, align 8, !dbg !1144
  %31 = load i8*, i8** %9, align 8, !dbg !1145
  %32 = load i64, i64* %10, align 8, !dbg !1146
  %33 = load i8, i8* %11, align 1, !dbg !1147
  %34 = sext i8 %33 to i32, !dbg !1147
  %35 = icmp ne i32 %34, 0, !dbg !1147
  %36 = zext i1 %35 to i64, !dbg !1147
  %37 = select i1 %35, i32 1, i32 2, !dbg !1147
  %38 = trunc i32 %37 to i8, !dbg !1148
  %39 = load i8, i8* %12, align 1, !dbg !1149
  %40 = load i8, i8* %13, align 1, !dbg !1150
  %41 = call i64 @websocket_client_wrap(i8* %30, i8* %31, i64 %32, i8 zeroext %38, i8 zeroext %39, i8 zeroext %40, i8 zeroext 0), !dbg !1151
  br label %55, !dbg !1142

42:                                               ; preds = %19
  %43 = load i8*, i8** %15, align 8, !dbg !1152
  %44 = load i8*, i8** %9, align 8, !dbg !1153
  %45 = load i64, i64* %10, align 8, !dbg !1154
  %46 = load i8, i8* %11, align 1, !dbg !1155
  %47 = sext i8 %46 to i32, !dbg !1155
  %48 = icmp ne i32 %47, 0, !dbg !1155
  %49 = zext i1 %48 to i64, !dbg !1155
  %50 = select i1 %48, i32 1, i32 2, !dbg !1155
  %51 = trunc i32 %50 to i8, !dbg !1156
  %52 = load i8, i8* %12, align 1, !dbg !1157
  %53 = load i8, i8* %13, align 1, !dbg !1158
  %54 = call i64 @websocket_server_wrap(i8* %43, i8* %44, i64 %45, i8 zeroext %51, i8 zeroext %52, i8 zeroext %53, i8 zeroext 0), !dbg !1159
  br label %55, !dbg !1142

55:                                               ; preds = %42, %29
  %56 = phi i64 [ %41, %29 ], [ %54, %42 ], !dbg !1142
  store i64 %56, i64* %10, align 8, !dbg !1160
  %57 = load i64, i64* %8, align 8, !dbg !1161
  %58 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 0, !dbg !1161
  %59 = bitcast %union.anon* %58 to i8**, !dbg !1161
  %60 = load i8*, i8** %15, align 8, !dbg !1161
  store i8* %60, i8** %59, align 8, !dbg !1161
  %61 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 1, !dbg !1161
  %62 = bitcast %union.anon.0* %61 to void (i8*)**, !dbg !1161
  store void (i8*)* @fio_free, void (i8*)** %62, align 8, !dbg !1161
  %63 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 2, !dbg !1161
  %64 = load i64, i64* %10, align 8, !dbg !1161
  store i64 %64, i64* %63, align 8, !dbg !1161
  %65 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 3, !dbg !1161
  store i64 0, i64* %65, align 8, !dbg !1161
  %66 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 4, !dbg !1161
  %67 = load i8, i8* %66, align 8, !dbg !1161
  %68 = and i8 %67, -2, !dbg !1161
  store i8 %68, i8* %66, align 8, !dbg !1161
  %69 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 4, !dbg !1161
  %70 = load i8, i8* %69, align 8, !dbg !1161
  %71 = and i8 %70, -3, !dbg !1161
  store i8 %71, i8* %69, align 8, !dbg !1161
  %72 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 4, !dbg !1161
  %73 = load i8, i8* %72, align 8, !dbg !1161
  %74 = and i8 %73, -5, !dbg !1161
  store i8 %74, i8* %72, align 8, !dbg !1161
  %75 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %16, i32 0, i32 4, !dbg !1161
  %76 = load i8, i8* %75, align 8, !dbg !1161
  %77 = and i8 %76, -9, !dbg !1161
  store i8 %77, i8* %75, align 8, !dbg !1161
  %78 = call i64 @fio_write2_fn(i64 %57, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %16), !dbg !1161
  br label %100, !dbg !1162

79:                                               ; preds = %7
  br label %80, !dbg !1163

80:                                               ; preds = %83, %79
  %81 = load i64, i64* %10, align 8, !dbg !1165
  %82 = icmp ugt i64 %81, 12288, !dbg !1166
  br i1 %82, label %83, label %93, !dbg !1163

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8, !dbg !1167
  %85 = load i8*, i8** %9, align 8, !dbg !1169
  %86 = load i8, i8* %11, align 1, !dbg !1170
  %87 = load i8, i8* %12, align 1, !dbg !1171
  %88 = load i8, i8* %14, align 1, !dbg !1172
  call void @websocket_write_impl(i64 %84, i8* %85, i64 12288, i8 signext %86, i8 signext %87, i8 signext 0, i8 signext %88), !dbg !1173
  %89 = load i8*, i8** %9, align 8, !dbg !1174
  %90 = getelementptr inbounds i8, i8* %89, i64 12288, !dbg !1175
  store i8* %90, i8** %9, align 8, !dbg !1176
  store i8 0, i8* %12, align 1, !dbg !1177
  %91 = load i64, i64* %10, align 8, !dbg !1178
  %92 = sub i64 %91, 12288, !dbg !1178
  store i64 %92, i64* %10, align 8, !dbg !1178
  br label %80, !dbg !1163, !llvm.loop !1179

93:                                               ; preds = %80
  %94 = load i64, i64* %8, align 8, !dbg !1181
  %95 = load i8*, i8** %9, align 8, !dbg !1182
  %96 = load i64, i64* %10, align 8, !dbg !1183
  %97 = load i8, i8* %11, align 1, !dbg !1184
  %98 = load i8, i8* %12, align 1, !dbg !1185
  %99 = load i8, i8* %14, align 1, !dbg !1186
  call void @websocket_write_impl(i64 %94, i8* %95, i64 %96, i8 signext %97, i8 signext %98, i8 signext 1, i8 signext %99), !dbg !1187
  br label %100

100:                                              ; preds = %93, %55
  ret void, !dbg !1188
}

declare dso_local i64 @fio_write2_fn(i64, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8) #5

declare dso_local void @FIO_DEALLOC_NOOP(i8*) #5

declare dso_local void @fio_close(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_data_first(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !1189 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.ws_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1190, metadata !DIExpression()), !dbg !1191
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !1192, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.declare(metadata %struct.ws_s** %5, metadata !1194, metadata !DIExpression()), !dbg !1196
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1197
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.ws_s*, !dbg !1198
  store %struct.ws_s* %7, %struct.ws_s** %5, align 8, !dbg !1196
  %8 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1199
  %9 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %8, i32 0, i32 5, !dbg !1201
  %10 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %9, align 8, !dbg !1201
  %11 = icmp ne void (%struct.ws_s*)* %10, null, !dbg !1199
  br i1 %11, label %12, label %17, !dbg !1202

12:                                               ; preds = %2
  %13 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1203
  %14 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %13, i32 0, i32 5, !dbg !1204
  %15 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %14, align 8, !dbg !1204
  %16 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1205
  call void %15(%struct.ws_s* %16), !dbg !1203
  br label %17, !dbg !1203

17:                                               ; preds = %12, %2
  %18 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1206
  %19 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %18, i32 0, i32 0, !dbg !1207
  %20 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %19, i32 0, i32 0, !dbg !1208
  store void (i64, %struct.fio_protocol_s*)* @on_data, void (i64, %struct.fio_protocol_s*)** %20, align 8, !dbg !1209
  %21 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1210
  %22 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %21, i32 0, i32 0, !dbg !1211
  %23 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %22, i32 0, i32 1, !dbg !1212
  store void (i64, %struct.fio_protocol_s*)* @on_ready, void (i64, %struct.fio_protocol_s*)** %23, align 8, !dbg !1213
  %24 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1214
  %25 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %24, i32 0, i32 12, !dbg !1216
  %26 = load i64, i64* %25, align 8, !dbg !1216
  %27 = icmp ne i64 %26, 0, !dbg !1214
  br i1 %27, label %28, label %48, !dbg !1217

28:                                               ; preds = %17
  %29 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1218
  %30 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %29, i32 0, i32 11, !dbg !1220
  %31 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %30, i32 0, i32 0, !dbg !1221
  %32 = load i8*, i8** %31, align 8, !dbg !1221
  %33 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1222
  %34 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %33, i32 0, i32 12, !dbg !1223
  %35 = load i64, i64* %34, align 8, !dbg !1223
  %36 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1224
  %37 = bitcast %struct.ws_s* %36 to i8*, !dbg !1224
  %38 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1225
  %39 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %38, i32 0, i32 15, !dbg !1226
  %40 = load i8, i8* %39, align 1, !dbg !1226
  %41 = zext i8 %40 to i32, !dbg !1227
  %42 = xor i32 %41, -1, !dbg !1228
  %43 = and i32 %42, 1, !dbg !1229
  %44 = trunc i32 %43 to i8, !dbg !1230
  %45 = call i64 @websocket_consume(i8* %32, i64 %35, i8* %37, i8 zeroext %44), !dbg !1231
  %46 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1232
  %47 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %46, i32 0, i32 12, !dbg !1233
  store i64 %45, i64* %47, align 8, !dbg !1234
  br label %48, !dbg !1235

48:                                               ; preds = %28, %17
  %49 = load i64, i64* %3, align 8, !dbg !1236
  call void @fio_force_event(i64 %49, i32 0), !dbg !1237
  %50 = load i64, i64* %3, align 8, !dbg !1238
  call void @fio_force_event(i64 %50, i32 1), !dbg !1239
  ret void, !dbg !1240
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @on_shutdown(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !1241 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.fio_write_args_s, align 8
  %6 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1242, metadata !DIExpression()), !dbg !1243
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !1244, metadata !DIExpression()), !dbg !1245
  %7 = load i64, i64* %3, align 8, !dbg !1246
  %8 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1247
  %9 = icmp ne %struct.fio_protocol_s* %8, null, !dbg !1247
  br i1 %9, label %10, label %23, !dbg !1249

10:                                               ; preds = %2
  %11 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1250
  %12 = bitcast %struct.fio_protocol_s* %11 to %struct.ws_s*, !dbg !1251
  %13 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %12, i32 0, i32 3, !dbg !1251
  %14 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %13, align 8, !dbg !1251
  %15 = icmp ne void (%struct.ws_s*)* %14, null, !dbg !1252
  br i1 %15, label %16, label %23, !dbg !1253

16:                                               ; preds = %10
  %17 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1254
  %18 = bitcast %struct.fio_protocol_s* %17 to %struct.ws_s*, !dbg !1255
  %19 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %18, i32 0, i32 3, !dbg !1255
  %20 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %19, align 8, !dbg !1255
  %21 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1256
  %22 = bitcast %struct.fio_protocol_s* %21 to %struct.ws_s*, !dbg !1257
  call void %20(%struct.ws_s* %22), !dbg !1258
  br label %23, !dbg !1258

23:                                               ; preds = %16, %10, %2
  %24 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1259
  %25 = bitcast %struct.fio_protocol_s* %24 to %struct.ws_s*, !dbg !1261
  %26 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %25, i32 0, i32 15, !dbg !1261
  %27 = load i8, i8* %26, align 1, !dbg !1261
  %28 = icmp ne i8 %27, 0, !dbg !1262
  br i1 %28, label %29, label %50, !dbg !1263

29:                                               ; preds = %23
  %30 = load i64, i64* %3, align 8, !dbg !1264
  %31 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 0, !dbg !1264
  %32 = bitcast %union.anon* %31 to i8**, !dbg !1264
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %32, align 8, !dbg !1264
  %33 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 1, !dbg !1264
  %34 = bitcast %union.anon.0* %33 to void (i8*)**, !dbg !1264
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %34, align 8, !dbg !1264
  %35 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 2, !dbg !1264
  store i64 6, i64* %35, align 8, !dbg !1264
  %36 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 3, !dbg !1264
  store i64 0, i64* %36, align 8, !dbg !1264
  %37 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !1264
  %38 = load i8, i8* %37, align 8, !dbg !1264
  %39 = and i8 %38, -2, !dbg !1264
  store i8 %39, i8* %37, align 8, !dbg !1264
  %40 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !1264
  %41 = load i8, i8* %40, align 8, !dbg !1264
  %42 = and i8 %41, -3, !dbg !1264
  store i8 %42, i8* %40, align 8, !dbg !1264
  %43 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !1264
  %44 = load i8, i8* %43, align 8, !dbg !1264
  %45 = and i8 %44, -5, !dbg !1264
  store i8 %45, i8* %43, align 8, !dbg !1264
  %46 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !1264
  %47 = load i8, i8* %46, align 8, !dbg !1264
  %48 = and i8 %47, -9, !dbg !1264
  store i8 %48, i8* %46, align 8, !dbg !1264
  %49 = call i64 @fio_write2_fn(i64 %30, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %5), !dbg !1264
  br label %71, !dbg !1266

50:                                               ; preds = %23
  %51 = load i64, i64* %3, align 8, !dbg !1267
  %52 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 0, !dbg !1267
  %53 = bitcast %union.anon* %52 to i8**, !dbg !1267
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %53, align 8, !dbg !1267
  %54 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 1, !dbg !1267
  %55 = bitcast %union.anon.0* %54 to void (i8*)**, !dbg !1267
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %55, align 8, !dbg !1267
  %56 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 2, !dbg !1267
  store i64 2, i64* %56, align 8, !dbg !1267
  %57 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 3, !dbg !1267
  store i64 0, i64* %57, align 8, !dbg !1267
  %58 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1267
  %59 = load i8, i8* %58, align 8, !dbg !1267
  %60 = and i8 %59, -2, !dbg !1267
  store i8 %60, i8* %58, align 8, !dbg !1267
  %61 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1267
  %62 = load i8, i8* %61, align 8, !dbg !1267
  %63 = and i8 %62, -3, !dbg !1267
  store i8 %63, i8* %61, align 8, !dbg !1267
  %64 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1267
  %65 = load i8, i8* %64, align 8, !dbg !1267
  %66 = and i8 %65, -5, !dbg !1267
  store i8 %66, i8* %64, align 8, !dbg !1267
  %67 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1267
  %68 = load i8, i8* %67, align 8, !dbg !1267
  %69 = and i8 %68, -9, !dbg !1267
  store i8 %69, i8* %67, align 8, !dbg !1267
  %70 = call i64 @fio_write2_fn(i64 %51, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %6), !dbg !1267
  br label %71

71:                                               ; preds = %50, %29
  ret i8 0, !dbg !1269
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_close(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !1270 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1271, metadata !DIExpression()), !dbg !1272
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !1273, metadata !DIExpression()), !dbg !1274
  %5 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1275
  %6 = bitcast %struct.fio_protocol_s* %5 to %struct.ws_s*, !dbg !1276
  call void @destroy_ws(%struct.ws_s* %6), !dbg !1277
  %7 = load i64, i64* %3, align 8, !dbg !1278
  ret void, !dbg !1279
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_ping(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !1280 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.fio_write_args_s, align 8
  %6 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1281, metadata !DIExpression()), !dbg !1282
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !1283, metadata !DIExpression()), !dbg !1284
  %7 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1285
  %8 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1286
  %9 = bitcast %struct.fio_protocol_s* %8 to %struct.ws_s*, !dbg !1288
  %10 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %9, i32 0, i32 15, !dbg !1288
  %11 = load i8, i8* %10, align 1, !dbg !1288
  %12 = icmp ne i8 %11, 0, !dbg !1289
  br i1 %12, label %13, label %34, !dbg !1290

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8, !dbg !1291
  %15 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 0, !dbg !1291
  %16 = bitcast %union.anon* %15 to i8**, !dbg !1291
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %16, align 8, !dbg !1291
  %17 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 1, !dbg !1291
  %18 = bitcast %union.anon.0* %17 to void (i8*)**, !dbg !1291
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %18, align 8, !dbg !1291
  %19 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 2, !dbg !1291
  store i64 6, i64* %19, align 8, !dbg !1291
  %20 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 3, !dbg !1291
  store i64 0, i64* %20, align 8, !dbg !1291
  %21 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !1291
  %22 = load i8, i8* %21, align 8, !dbg !1291
  %23 = and i8 %22, -2, !dbg !1291
  store i8 %23, i8* %21, align 8, !dbg !1291
  %24 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !1291
  %25 = load i8, i8* %24, align 8, !dbg !1291
  %26 = and i8 %25, -3, !dbg !1291
  store i8 %26, i8* %24, align 8, !dbg !1291
  %27 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !1291
  %28 = load i8, i8* %27, align 8, !dbg !1291
  %29 = and i8 %28, -5, !dbg !1291
  store i8 %29, i8* %27, align 8, !dbg !1291
  %30 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !1291
  %31 = load i8, i8* %30, align 8, !dbg !1291
  %32 = and i8 %31, -9, !dbg !1291
  store i8 %32, i8* %30, align 8, !dbg !1291
  %33 = call i64 @fio_write2_fn(i64 %14, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %5), !dbg !1291
  br label %55, !dbg !1293

34:                                               ; preds = %2
  %35 = load i64, i64* %3, align 8, !dbg !1294
  %36 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 0, !dbg !1294
  %37 = bitcast %union.anon* %36 to i8**, !dbg !1294
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %37, align 8, !dbg !1294
  %38 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 1, !dbg !1294
  %39 = bitcast %union.anon.0* %38 to void (i8*)**, !dbg !1294
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %39, align 8, !dbg !1294
  %40 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 2, !dbg !1294
  store i64 2, i64* %40, align 8, !dbg !1294
  %41 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 3, !dbg !1294
  store i64 0, i64* %41, align 8, !dbg !1294
  %42 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1294
  %43 = load i8, i8* %42, align 8, !dbg !1294
  %44 = and i8 %43, -2, !dbg !1294
  store i8 %44, i8* %42, align 8, !dbg !1294
  %45 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1294
  %46 = load i8, i8* %45, align 8, !dbg !1294
  %47 = and i8 %46, -3, !dbg !1294
  store i8 %47, i8* %45, align 8, !dbg !1294
  %48 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1294
  %49 = load i8, i8* %48, align 8, !dbg !1294
  %50 = and i8 %49, -5, !dbg !1294
  store i8 %50, i8* %48, align 8, !dbg !1294
  %51 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1294
  %52 = load i8, i8* %51, align 8, !dbg !1294
  %53 = and i8 %52, -9, !dbg !1294
  store i8 %53, i8* %51, align 8, !dbg !1294
  %54 = call i64 @fio_write2_fn(i64 %35, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %6), !dbg !1294
  br label %55

55:                                               ; preds = %34, %13
  ret void, !dbg !1296
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_data(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !1297 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.ws_s*, align 8
  %6 = alloca %struct.websocket_packet_info_s, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_s, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1298, metadata !DIExpression()), !dbg !1299
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.declare(metadata %struct.ws_s** %5, metadata !1302, metadata !DIExpression()), !dbg !1303
  %10 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1304
  %11 = bitcast %struct.fio_protocol_s* %10 to %struct.ws_s*, !dbg !1305
  store %struct.ws_s* %11, %struct.ws_s** %5, align 8, !dbg !1303
  %12 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1306
  %13 = icmp eq %struct.ws_s* %12, null, !dbg !1308
  br i1 %13, label %14, label %15, !dbg !1309

14:                                               ; preds = %2
  br label %125, !dbg !1310

15:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.websocket_packet_info_s* %6, metadata !1311, metadata !DIExpression()), !dbg !1318
  %16 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1319
  %17 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %16, i32 0, i32 11, !dbg !1320
  %18 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %17, i32 0, i32 0, !dbg !1321
  %19 = load i8*, i8** %18, align 8, !dbg !1321
  %20 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1322
  %21 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %20, i32 0, i32 12, !dbg !1323
  %22 = load i64, i64* %21, align 8, !dbg !1323
  %23 = call { i64, i64 } @websocket_buffer_peek(i8* %19, i64 %22), !dbg !1324
  %24 = bitcast %struct.websocket_packet_info_s* %6 to { i64, i64 }*, !dbg !1324
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0, !dbg !1324
  %26 = extractvalue { i64, i64 } %23, 0, !dbg !1324
  store i64 %26, i64* %25, align 8, !dbg !1324
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1, !dbg !1324
  %28 = extractvalue { i64, i64 } %23, 1, !dbg !1324
  store i64 %28, i64* %27, align 8, !dbg !1324
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1325, metadata !DIExpression()), !dbg !1327
  %29 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %6, i32 0, i32 0, !dbg !1328
  %30 = load i64, i64* %29, align 8, !dbg !1328
  %31 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %6, i32 0, i32 1, !dbg !1329
  %32 = load i8, i8* %31, align 8, !dbg !1329
  %33 = zext i8 %32 to i64, !dbg !1330
  %34 = add i64 %30, %33, !dbg !1331
  store i64 %34, i64* %7, align 8, !dbg !1327
  %35 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1332
  %36 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %35, i32 0, i32 8, !dbg !1334
  %37 = load i64, i64* %36, align 8, !dbg !1334
  %38 = load i64, i64* %7, align 8, !dbg !1335
  %39 = icmp ult i64 %37, %38, !dbg !1336
  br i1 %39, label %40, label %42, !dbg !1337

40:                                               ; preds = %15
  %41 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1338
  call void @websocket_close(%struct.ws_s* %41), !dbg !1340
  br label %125, !dbg !1341

42:                                               ; preds = %15
  %43 = load i64, i64* %7, align 8, !dbg !1342
  %44 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1344
  %45 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %44, i32 0, i32 11, !dbg !1345
  %46 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %45, i32 0, i32 1, !dbg !1346
  %47 = load i64, i64* %46, align 8, !dbg !1346
  %48 = icmp ugt i64 %43, %47, !dbg !1347
  br i1 %48, label %49, label %80, !dbg !1348

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8, !dbg !1349
  %51 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1351
  %52 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %51, i32 0, i32 11, !dbg !1352
  %53 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %52, i32 0, i32 1, !dbg !1353
  store i64 %50, i64* %53, align 8, !dbg !1354
  %54 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1355
  %55 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %54, i32 0, i32 11, !dbg !1356
  %56 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1357
  %57 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1358
  %58 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %57, i32 0, i32 11, !dbg !1359
  %59 = bitcast %struct.buffer_s* %58 to { i8*, i64 }*, !dbg !1360
  %60 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %59, i32 0, i32 0, !dbg !1360
  %61 = load i8*, i8** %60, align 8, !dbg !1360
  %62 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %59, i32 0, i32 1, !dbg !1360
  %63 = load i64, i64* %62, align 8, !dbg !1360
  %64 = call { i8*, i64 } @resize_ws_buffer(%struct.ws_s* %56, i8* %61, i64 %63), !dbg !1360
  %65 = bitcast %struct.buffer_s* %8 to { i8*, i64 }*, !dbg !1360
  %66 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %65, i32 0, i32 0, !dbg !1360
  %67 = extractvalue { i8*, i64 } %64, 0, !dbg !1360
  store i8* %67, i8** %66, align 8, !dbg !1360
  %68 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %65, i32 0, i32 1, !dbg !1360
  %69 = extractvalue { i8*, i64 } %64, 1, !dbg !1360
  store i64 %69, i64* %68, align 8, !dbg !1360
  %70 = bitcast %struct.buffer_s* %55 to i8*, !dbg !1360
  %71 = bitcast %struct.buffer_s* %8 to i8*, !dbg !1360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false), !dbg !1360
  %72 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1361
  %73 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %72, i32 0, i32 11, !dbg !1363
  %74 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %73, i32 0, i32 0, !dbg !1364
  %75 = load i8*, i8** %74, align 8, !dbg !1364
  %76 = icmp ne i8* %75, null, !dbg !1361
  br i1 %76, label %79, label %77, !dbg !1365

77:                                               ; preds = %49
  %78 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1366
  call void @websocket_close(%struct.ws_s* %78), !dbg !1368
  br label %125, !dbg !1369

79:                                               ; preds = %49
  br label %80, !dbg !1370

80:                                               ; preds = %79, %42
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1371, metadata !DIExpression()), !dbg !1375
  %81 = load i64, i64* %3, align 8, !dbg !1376
  %82 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1377
  %83 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %82, i32 0, i32 11, !dbg !1378
  %84 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %83, i32 0, i32 0, !dbg !1379
  %85 = load i8*, i8** %84, align 8, !dbg !1379
  %86 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1380
  %87 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %86, i32 0, i32 12, !dbg !1381
  %88 = load i64, i64* %87, align 8, !dbg !1381
  %89 = getelementptr inbounds i8, i8* %85, i64 %88, !dbg !1382
  %90 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1383
  %91 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %90, i32 0, i32 11, !dbg !1384
  %92 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %91, i32 0, i32 1, !dbg !1385
  %93 = load i64, i64* %92, align 8, !dbg !1385
  %94 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1386
  %95 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %94, i32 0, i32 12, !dbg !1387
  %96 = load i64, i64* %95, align 8, !dbg !1387
  %97 = sub i64 %93, %96, !dbg !1388
  %98 = call i64 @fio_read(i64 %81, i8* %89, i64 %97), !dbg !1389
  store i64 %98, i64* %9, align 8, !dbg !1375
  %99 = load i64, i64* %9, align 8, !dbg !1390
  %100 = icmp sle i64 %99, 0, !dbg !1392
  br i1 %100, label %101, label %102, !dbg !1393

101:                                              ; preds = %80
  br label %125, !dbg !1394

102:                                              ; preds = %80
  %103 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1396
  %104 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %103, i32 0, i32 11, !dbg !1397
  %105 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %104, i32 0, i32 0, !dbg !1398
  %106 = load i8*, i8** %105, align 8, !dbg !1398
  %107 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1399
  %108 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %107, i32 0, i32 12, !dbg !1400
  %109 = load i64, i64* %108, align 8, !dbg !1400
  %110 = load i64, i64* %9, align 8, !dbg !1401
  %111 = add i64 %109, %110, !dbg !1402
  %112 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1403
  %113 = bitcast %struct.ws_s* %112 to i8*, !dbg !1403
  %114 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1404
  %115 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %114, i32 0, i32 15, !dbg !1405
  %116 = load i8, i8* %115, align 1, !dbg !1405
  %117 = zext i8 %116 to i32, !dbg !1406
  %118 = xor i32 %117, -1, !dbg !1407
  %119 = and i32 %118, 1, !dbg !1408
  %120 = trunc i32 %119 to i8, !dbg !1409
  %121 = call i64 @websocket_consume(i8* %106, i64 %111, i8* %113, i8 zeroext %120), !dbg !1410
  %122 = load %struct.ws_s*, %struct.ws_s** %5, align 8, !dbg !1411
  %123 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %122, i32 0, i32 12, !dbg !1412
  store i64 %121, i64* %123, align 8, !dbg !1413
  %124 = load i64, i64* %3, align 8, !dbg !1414
  call void @fio_force_event(i64 %124, i32 0), !dbg !1415
  br label %125, !dbg !1416

125:                                              ; preds = %102, %101, %77, %40, %14
  ret void, !dbg !1416
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_ready(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !1417 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1418, metadata !DIExpression()), !dbg !1419
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !1420, metadata !DIExpression()), !dbg !1421
  %5 = load i64, i64* %3, align 8, !dbg !1422
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1423
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.ws_s*, !dbg !1425
  %8 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %7, i32 0, i32 4, !dbg !1425
  %9 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %8, align 8, !dbg !1425
  %10 = icmp ne void (%struct.ws_s*)* %9, null, !dbg !1426
  br i1 %10, label %11, label %18, !dbg !1427

11:                                               ; preds = %2
  %12 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1428
  %13 = bitcast %struct.fio_protocol_s* %12 to %struct.ws_s*, !dbg !1429
  %14 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %13, i32 0, i32 4, !dbg !1429
  %15 = load void (%struct.ws_s*)*, void (%struct.ws_s*)** %14, align 8, !dbg !1429
  %16 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !1430
  %17 = bitcast %struct.fio_protocol_s* %16 to %struct.ws_s*, !dbg !1431
  call void %15(%struct.ws_s* %17), !dbg !1432
  br label %18, !dbg !1432

18:                                               ; preds = %11, %2
  ret void, !dbg !1433
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @websocket_consume(i8* %0, i64 %1, i8* %2, i8 zeroext %3) #0 !dbg !1434 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.websocket_packet_info_s, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.websocket_packet_info_s, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1437, metadata !DIExpression()), !dbg !1438
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1439, metadata !DIExpression()), !dbg !1440
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1441, metadata !DIExpression()), !dbg !1442
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1443, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.declare(metadata %struct.websocket_packet_info_s* %10, metadata !1445, metadata !DIExpression()), !dbg !1447
  %16 = load i8*, i8** %6, align 8, !dbg !1448
  %17 = load i64, i64* %7, align 8, !dbg !1449
  %18 = call { i64, i64 } @websocket_buffer_peek(i8* %16, i64 %17), !dbg !1450
  %19 = bitcast %struct.websocket_packet_info_s* %10 to { i64, i64 }*, !dbg !1450
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0, !dbg !1450
  %21 = extractvalue { i64, i64 } %18, 0, !dbg !1450
  store volatile i64 %21, i64* %20, align 8, !dbg !1450
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1, !dbg !1450
  %23 = extractvalue { i64, i64 } %18, 1, !dbg !1450
  store volatile i64 %23, i64* %22, align 8, !dbg !1450
  %24 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1, !dbg !1451
  %25 = load volatile i8, i8* %24, align 8, !dbg !1451
  %26 = icmp ne i8 %25, 0, !dbg !1453
  br i1 %26, label %29, label %27, !dbg !1454

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8, !dbg !1455
  call void @websocket_on_protocol_error(i8* %28), !dbg !1457
  store i64 0, i64* %5, align 8, !dbg !1458
  br label %216, !dbg !1458

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1, !dbg !1459
  %31 = load volatile i8, i8* %30, align 8, !dbg !1459
  %32 = zext i8 %31 to i64, !dbg !1461
  %33 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1462
  %34 = load volatile i64, i64* %33, align 8, !dbg !1462
  %35 = add i64 %32, %34, !dbg !1463
  %36 = load i64, i64* %7, align 8, !dbg !1464
  %37 = icmp ugt i64 %35, %36, !dbg !1465
  br i1 %37, label %38, label %40, !dbg !1466

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8, !dbg !1467
  store i64 %39, i64* %5, align 8, !dbg !1468
  br label %216, !dbg !1468

40:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1469, metadata !DIExpression()), !dbg !1470
  %41 = load i64, i64* %7, align 8, !dbg !1471
  store i64 %41, i64* %11, align 8, !dbg !1470
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1472, metadata !DIExpression()), !dbg !1473
  %42 = load i8*, i8** %6, align 8, !dbg !1474
  store i8* %42, i8** %12, align 8, !dbg !1473
  br label %43, !dbg !1475

43:                                               ; preds = %187, %40
  %44 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1, !dbg !1476
  %45 = load volatile i8, i8* %44, align 8, !dbg !1476
  %46 = zext i8 %45 to i64, !dbg !1477
  %47 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1478
  %48 = load volatile i64, i64* %47, align 8, !dbg !1478
  %49 = add i64 %46, %48, !dbg !1479
  %50 = load i64, i64* %11, align 8, !dbg !1480
  %51 = icmp ule i64 %49, %50, !dbg !1481
  br i1 %51, label %52, label %206, !dbg !1475

52:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1482, metadata !DIExpression()), !dbg !1484
  %53 = load i8*, i8** %12, align 8, !dbg !1485
  %54 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1, !dbg !1486
  %55 = load volatile i8, i8* %54, align 8, !dbg !1486
  %56 = zext i8 %55 to i32, !dbg !1487
  %57 = sext i32 %56 to i64, !dbg !1488
  %58 = getelementptr inbounds i8, i8* %53, i64 %57, !dbg !1488
  store i8* %58, i8** %13, align 8, !dbg !1484
  %59 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 2, !dbg !1489
  %60 = load volatile i8, i8* %59, align 1, !dbg !1489
  %61 = icmp ne i8 %60, 0, !dbg !1491
  br i1 %61, label %62, label %87, !dbg !1492

62:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1493, metadata !DIExpression()), !dbg !1495
  %63 = load i8*, i8** %13, align 8, !dbg !1496
  %64 = getelementptr inbounds i8, i8* %63, i64 -4, !dbg !1497
  %65 = load i8, i8* %64, align 1, !dbg !1497
  %66 = bitcast i32* %14 to i8*, !dbg !1498
  %67 = getelementptr inbounds i8, i8* %66, i64 0, !dbg !1498
  store i8 %65, i8* %67, align 4, !dbg !1499
  %68 = load i8*, i8** %13, align 8, !dbg !1500
  %69 = getelementptr inbounds i8, i8* %68, i64 -3, !dbg !1501
  %70 = load i8, i8* %69, align 1, !dbg !1501
  %71 = bitcast i32* %14 to i8*, !dbg !1502
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1502
  store i8 %70, i8* %72, align 1, !dbg !1503
  %73 = load i8*, i8** %13, align 8, !dbg !1504
  %74 = getelementptr inbounds i8, i8* %73, i64 -2, !dbg !1505
  %75 = load i8, i8* %74, align 1, !dbg !1505
  %76 = bitcast i32* %14 to i8*, !dbg !1506
  %77 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1506
  store i8 %75, i8* %77, align 2, !dbg !1507
  %78 = load i8*, i8** %13, align 8, !dbg !1508
  %79 = getelementptr inbounds i8, i8* %78, i64 -1, !dbg !1509
  %80 = load i8, i8* %79, align 1, !dbg !1509
  %81 = bitcast i32* %14 to i8*, !dbg !1510
  %82 = getelementptr inbounds i8, i8* %81, i64 3, !dbg !1510
  store i8 %80, i8* %82, align 1, !dbg !1511
  %83 = load i8*, i8** %13, align 8, !dbg !1512
  %84 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1513
  %85 = load volatile i64, i64* %84, align 8, !dbg !1513
  %86 = load i32, i32* %14, align 4, !dbg !1514
  call void @websocket_xmask(i8* %83, i64 %85, i32 %86), !dbg !1515
  br label %98, !dbg !1516

87:                                               ; preds = %52
  %88 = load i8, i8* %9, align 1, !dbg !1517
  %89 = zext i8 %88 to i32, !dbg !1517
  %90 = icmp ne i32 %89, 0, !dbg !1517
  br i1 %90, label %91, label %97, !dbg !1519

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1520
  %93 = load volatile i64, i64* %92, align 8, !dbg !1520
  %94 = icmp ne i64 %93, 0, !dbg !1521
  br i1 %94, label %95, label %97, !dbg !1522

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8, !dbg !1523
  call void @websocket_on_protocol_error(i8* %96), !dbg !1525
  br label %97, !dbg !1526

97:                                               ; preds = %95, %91, %87
  br label %98

98:                                               ; preds = %97, %62
  %99 = load i8*, i8** %12, align 8, !dbg !1527
  %100 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1527
  %101 = load i8, i8* %100, align 1, !dbg !1527
  %102 = zext i8 %101 to i32, !dbg !1527
  %103 = and i32 %102, 15, !dbg !1528
  switch i32 %103, label %173 [
    i32 0, label %104
    i32 1, label %123
    i32 2, label %142
    i32 8, label %161
    i32 9, label %163
    i32 10, label %168
  ], !dbg !1529

104:                                              ; preds = %98
  %105 = load i8*, i8** %8, align 8, !dbg !1530
  %106 = load i8*, i8** %13, align 8, !dbg !1532
  %107 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1533
  %108 = load volatile i64, i64* %107, align 8, !dbg !1533
  %109 = load i8*, i8** %12, align 8, !dbg !1534
  %110 = getelementptr inbounds i8, i8* %109, i64 0, !dbg !1534
  %111 = load i8, i8* %110, align 1, !dbg !1534
  %112 = zext i8 %111 to i32, !dbg !1534
  %113 = ashr i32 %112, 7, !dbg !1535
  %114 = and i32 %113, 1, !dbg !1536
  %115 = trunc i32 %114 to i8, !dbg !1537
  %116 = load i8*, i8** %12, align 8, !dbg !1538
  %117 = getelementptr inbounds i8, i8* %116, i64 0, !dbg !1538
  %118 = load i8, i8* %117, align 1, !dbg !1538
  %119 = zext i8 %118 to i32, !dbg !1538
  %120 = ashr i32 %119, 4, !dbg !1539
  %121 = and i32 %120, 7, !dbg !1540
  %122 = trunc i32 %121 to i8, !dbg !1541
  call void @websocket_on_unwrapped(i8* %105, i8* %106, i64 %108, i8 signext 0, i8 signext %115, i8 signext 0, i8 zeroext %122), !dbg !1542
  br label %175, !dbg !1543

123:                                              ; preds = %98
  %124 = load i8*, i8** %8, align 8, !dbg !1544
  %125 = load i8*, i8** %13, align 8, !dbg !1545
  %126 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1546
  %127 = load volatile i64, i64* %126, align 8, !dbg !1546
  %128 = load i8*, i8** %12, align 8, !dbg !1547
  %129 = getelementptr inbounds i8, i8* %128, i64 0, !dbg !1547
  %130 = load i8, i8* %129, align 1, !dbg !1547
  %131 = zext i8 %130 to i32, !dbg !1547
  %132 = ashr i32 %131, 7, !dbg !1548
  %133 = and i32 %132, 1, !dbg !1549
  %134 = trunc i32 %133 to i8, !dbg !1550
  %135 = load i8*, i8** %12, align 8, !dbg !1551
  %136 = getelementptr inbounds i8, i8* %135, i64 0, !dbg !1551
  %137 = load i8, i8* %136, align 1, !dbg !1551
  %138 = zext i8 %137 to i32, !dbg !1551
  %139 = ashr i32 %138, 4, !dbg !1552
  %140 = and i32 %139, 7, !dbg !1553
  %141 = trunc i32 %140 to i8, !dbg !1554
  call void @websocket_on_unwrapped(i8* %124, i8* %125, i64 %127, i8 signext 1, i8 signext %134, i8 signext 1, i8 zeroext %141), !dbg !1555
  br label %175, !dbg !1556

142:                                              ; preds = %98
  %143 = load i8*, i8** %8, align 8, !dbg !1557
  %144 = load i8*, i8** %13, align 8, !dbg !1558
  %145 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1559
  %146 = load volatile i64, i64* %145, align 8, !dbg !1559
  %147 = load i8*, i8** %12, align 8, !dbg !1560
  %148 = getelementptr inbounds i8, i8* %147, i64 0, !dbg !1560
  %149 = load i8, i8* %148, align 1, !dbg !1560
  %150 = zext i8 %149 to i32, !dbg !1560
  %151 = ashr i32 %150, 7, !dbg !1561
  %152 = and i32 %151, 1, !dbg !1562
  %153 = trunc i32 %152 to i8, !dbg !1563
  %154 = load i8*, i8** %12, align 8, !dbg !1564
  %155 = getelementptr inbounds i8, i8* %154, i64 0, !dbg !1564
  %156 = load i8, i8* %155, align 1, !dbg !1564
  %157 = zext i8 %156 to i32, !dbg !1564
  %158 = ashr i32 %157, 4, !dbg !1565
  %159 = and i32 %158, 7, !dbg !1566
  %160 = trunc i32 %159 to i8, !dbg !1567
  call void @websocket_on_unwrapped(i8* %143, i8* %144, i64 %146, i8 signext 1, i8 signext %153, i8 signext 0, i8 zeroext %160), !dbg !1568
  br label %175, !dbg !1569

161:                                              ; preds = %98
  %162 = load i8*, i8** %8, align 8, !dbg !1570
  call void @websocket_on_protocol_close(i8* %162), !dbg !1571
  br label %175, !dbg !1572

163:                                              ; preds = %98
  %164 = load i8*, i8** %8, align 8, !dbg !1573
  %165 = load i8*, i8** %13, align 8, !dbg !1574
  %166 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1575
  %167 = load volatile i64, i64* %166, align 8, !dbg !1575
  call void @websocket_on_protocol_ping(i8* %164, i8* %165, i64 %167), !dbg !1576
  br label %175, !dbg !1577

168:                                              ; preds = %98
  %169 = load i8*, i8** %8, align 8, !dbg !1578
  %170 = load i8*, i8** %13, align 8, !dbg !1579
  %171 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1580
  %172 = load volatile i64, i64* %171, align 8, !dbg !1580
  call void @websocket_on_protocol_pong(i8* %169, i8* %170, i64 %172), !dbg !1581
  br label %175, !dbg !1582

173:                                              ; preds = %98
  %174 = load i8*, i8** %8, align 8, !dbg !1583
  call void @websocket_on_protocol_error(i8* %174), !dbg !1584
  br label %175, !dbg !1585

175:                                              ; preds = %173, %168, %163, %161, %142, %123, %104
  %176 = load i64, i64* %11, align 8, !dbg !1586
  %177 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1, !dbg !1587
  %178 = load volatile i8, i8* %177, align 8, !dbg !1587
  %179 = zext i8 %178 to i64, !dbg !1588
  %180 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1589
  %181 = load volatile i64, i64* %180, align 8, !dbg !1589
  %182 = add i64 %179, %181, !dbg !1590
  %183 = sub i64 %176, %182, !dbg !1591
  store i64 %183, i64* %11, align 8, !dbg !1592
  %184 = load i64, i64* %11, align 8, !dbg !1593
  %185 = icmp ne i64 %184, 0, !dbg !1593
  br i1 %185, label %187, label %186, !dbg !1595

186:                                              ; preds = %175
  store i64 0, i64* %5, align 8, !dbg !1596
  br label %216, !dbg !1596

187:                                              ; preds = %175
  %188 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 1, !dbg !1597
  %189 = load volatile i8, i8* %188, align 8, !dbg !1597
  %190 = zext i8 %189 to i64, !dbg !1598
  %191 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %10, i32 0, i32 0, !dbg !1599
  %192 = load volatile i64, i64* %191, align 8, !dbg !1599
  %193 = add i64 %190, %192, !dbg !1600
  %194 = load i8*, i8** %12, align 8, !dbg !1601
  %195 = getelementptr inbounds i8, i8* %194, i64 %193, !dbg !1601
  store i8* %195, i8** %12, align 8, !dbg !1601
  %196 = load i8*, i8** %12, align 8, !dbg !1602
  %197 = load i64, i64* %11, align 8, !dbg !1603
  %198 = call { i64, i64 } @websocket_buffer_peek(i8* %196, i64 %197), !dbg !1604
  %199 = bitcast %struct.websocket_packet_info_s* %15 to { i64, i64 }*, !dbg !1604
  %200 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 0, !dbg !1604
  %201 = extractvalue { i64, i64 } %198, 0, !dbg !1604
  store volatile i64 %201, i64* %200, align 8, !dbg !1604
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 1, !dbg !1604
  %203 = extractvalue { i64, i64 } %198, 1, !dbg !1604
  store volatile i64 %203, i64* %202, align 8, !dbg !1604
  %204 = bitcast %struct.websocket_packet_info_s* %10 to i8*, !dbg !1604
  %205 = bitcast %struct.websocket_packet_info_s* %15 to i8*, !dbg !1604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 16, i1 true), !dbg !1604
  br label %43, !dbg !1475, !llvm.loop !1605

206:                                              ; preds = %43
  %207 = load i8*, i8** %6, align 8, !dbg !1607
  %208 = load i8*, i8** %6, align 8, !dbg !1608
  %209 = load i64, i64* %7, align 8, !dbg !1609
  %210 = getelementptr inbounds i8, i8* %208, i64 %209, !dbg !1610
  %211 = load i64, i64* %11, align 8, !dbg !1611
  %212 = sub i64 0, %211, !dbg !1612
  %213 = getelementptr inbounds i8, i8* %210, i64 %212, !dbg !1612
  %214 = load i64, i64* %11, align 8, !dbg !1613
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %207, i8* align 1 %213, i64 %214, i1 false), !dbg !1614
  %215 = load i64, i64* %11, align 8, !dbg !1615
  store i64 %215, i64* %5, align 8, !dbg !1616
  br label %216, !dbg !1616

216:                                              ; preds = %206, %186, %38, %27
  %217 = load i64, i64* %5, align 8, !dbg !1617
  ret i64 %217, !dbg !1617
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @websocket_buffer_peek(i8* %0, i64 %1) #0 !dbg !1618 {
  %3 = alloca %struct.websocket_packet_info_s, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1621, metadata !DIExpression()), !dbg !1622
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1623, metadata !DIExpression()), !dbg !1624
  %10 = load i64, i64* %5, align 8, !dbg !1625
  %11 = icmp ult i64 %10, 2, !dbg !1627
  br i1 %11, label %12, label %14, !dbg !1628

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.websocket_packet_info_s* %3, metadata !1629, metadata !DIExpression()), !dbg !1632
  %13 = bitcast %struct.websocket_packet_info_s* %3 to i8*, !dbg !1632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.websocket_packet_info_s* @__const.websocket_buffer_peek.info to i8*), i64 16, i1 false), !dbg !1632
  br label %166, !dbg !1633

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1634, metadata !DIExpression()), !dbg !1636
  %15 = load i8*, i8** %4, align 8, !dbg !1637
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1638
  %17 = load i8, i8* %16, align 1, !dbg !1638
  %18 = zext i8 %17 to i32, !dbg !1638
  %19 = ashr i32 %18, 7, !dbg !1639
  %20 = and i32 %19, 1, !dbg !1640
  %21 = trunc i32 %20 to i8, !dbg !1641
  store i8 %21, i8* %6, align 1, !dbg !1636
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1642, metadata !DIExpression()), !dbg !1643
  %22 = load i8, i8* %6, align 1, !dbg !1644
  %23 = zext i8 %22 to i32, !dbg !1644
  %24 = shl i32 %23, 2, !dbg !1645
  %25 = trunc i32 %24 to i8, !dbg !1646
  store i8 %25, i8* %7, align 1, !dbg !1643
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1647, metadata !DIExpression()), !dbg !1648
  %26 = load i8*, i8** %4, align 8, !dbg !1649
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1650
  %28 = load i8, i8* %27, align 1, !dbg !1650
  %29 = zext i8 %28 to i32, !dbg !1651
  %30 = and i32 %29, 127, !dbg !1652
  %31 = trunc i32 %30 to i8, !dbg !1653
  store i8 %31, i8* %8, align 1, !dbg !1648
  %32 = load i8, i8* %8, align 1, !dbg !1654
  %33 = zext i8 %32 to i32, !dbg !1654
  switch i32 %33, label %155 [
    i32 126, label %34
    i32 127, label %71
  ], !dbg !1655

34:                                               ; preds = %14
  %35 = load i64, i64* %5, align 8, !dbg !1656
  %36 = icmp ult i64 %35, 4, !dbg !1659
  br i1 %36, label %37, label %46, !dbg !1660

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0, !dbg !1661
  store i64 0, i64* %38, align 8, !dbg !1661
  %39 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1, !dbg !1661
  %40 = load i8, i8* %7, align 1, !dbg !1662
  %41 = zext i8 %40 to i32, !dbg !1662
  %42 = add nsw i32 4, %41, !dbg !1663
  %43 = trunc i32 %42 to i8, !dbg !1664
  store i8 %43, i8* %39, align 8, !dbg !1661
  %44 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2, !dbg !1661
  %45 = load i8, i8* %6, align 1, !dbg !1665
  store i8 %45, i8* %44, align 1, !dbg !1661
  br label %166, !dbg !1666

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0, !dbg !1667
  %48 = load i8*, i8** %4, align 8, !dbg !1668
  %49 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !1668
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !1668
  %51 = load i8, i8* %50, align 1, !dbg !1668
  %52 = zext i8 %51 to i16, !dbg !1668
  %53 = zext i16 %52 to i32, !dbg !1668
  %54 = shl i32 %53, 8, !dbg !1668
  %55 = load i8*, i8** %4, align 8, !dbg !1668
  %56 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !1668
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1668
  %58 = load i8, i8* %57, align 1, !dbg !1668
  %59 = zext i8 %58 to i16, !dbg !1668
  %60 = zext i16 %59 to i32, !dbg !1668
  %61 = or i32 %54, %60, !dbg !1668
  %62 = trunc i32 %61 to i16, !dbg !1668
  %63 = zext i16 %62 to i64, !dbg !1669
  store i64 %63, i64* %47, align 8, !dbg !1667
  %64 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1, !dbg !1667
  %65 = load i8, i8* %7, align 1, !dbg !1670
  %66 = zext i8 %65 to i32, !dbg !1670
  %67 = add nsw i32 4, %66, !dbg !1671
  %68 = trunc i32 %67 to i8, !dbg !1672
  store i8 %68, i8* %64, align 8, !dbg !1667
  %69 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2, !dbg !1667
  %70 = load i8, i8* %6, align 1, !dbg !1673
  store i8 %70, i8* %69, align 1, !dbg !1667
  br label %166, !dbg !1674

71:                                               ; preds = %14
  %72 = load i64, i64* %5, align 8, !dbg !1675
  %73 = icmp ult i64 %72, 10, !dbg !1677
  br i1 %73, label %74, label %83, !dbg !1678

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0, !dbg !1679
  store i64 0, i64* %75, align 8, !dbg !1679
  %76 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1, !dbg !1679
  %77 = load i8, i8* %7, align 1, !dbg !1680
  %78 = zext i8 %77 to i32, !dbg !1680
  %79 = add nsw i32 10, %78, !dbg !1681
  %80 = trunc i32 %79 to i8, !dbg !1682
  store i8 %80, i8* %76, align 8, !dbg !1679
  %81 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2, !dbg !1679
  %82 = load i8, i8* %6, align 1, !dbg !1683
  store i8 %82, i8* %81, align 1, !dbg !1679
  br label %166, !dbg !1684

83:                                               ; preds = %71
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1685, metadata !DIExpression()), !dbg !1687
  %84 = load i8*, i8** %4, align 8, !dbg !1688
  %85 = getelementptr inbounds i8, i8* %84, i64 2, !dbg !1688
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !1688
  %87 = load i8, i8* %86, align 1, !dbg !1688
  %88 = zext i8 %87 to i64, !dbg !1688
  %89 = shl i64 %88, 56, !dbg !1688
  %90 = load i8*, i8** %4, align 8, !dbg !1688
  %91 = getelementptr inbounds i8, i8* %90, i64 2, !dbg !1688
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !1688
  %93 = load i8, i8* %92, align 1, !dbg !1688
  %94 = zext i8 %93 to i64, !dbg !1688
  %95 = shl i64 %94, 48, !dbg !1688
  %96 = or i64 %89, %95, !dbg !1688
  %97 = load i8*, i8** %4, align 8, !dbg !1688
  %98 = getelementptr inbounds i8, i8* %97, i64 2, !dbg !1688
  %99 = getelementptr inbounds i8, i8* %98, i64 2, !dbg !1688
  %100 = load i8, i8* %99, align 1, !dbg !1688
  %101 = zext i8 %100 to i64, !dbg !1688
  %102 = shl i64 %101, 40, !dbg !1688
  %103 = or i64 %96, %102, !dbg !1688
  %104 = load i8*, i8** %4, align 8, !dbg !1688
  %105 = getelementptr inbounds i8, i8* %104, i64 2, !dbg !1688
  %106 = getelementptr inbounds i8, i8* %105, i64 3, !dbg !1688
  %107 = load i8, i8* %106, align 1, !dbg !1688
  %108 = zext i8 %107 to i64, !dbg !1688
  %109 = shl i64 %108, 32, !dbg !1688
  %110 = or i64 %103, %109, !dbg !1688
  %111 = load i8*, i8** %4, align 8, !dbg !1688
  %112 = getelementptr inbounds i8, i8* %111, i64 2, !dbg !1688
  %113 = getelementptr inbounds i8, i8* %112, i64 4, !dbg !1688
  %114 = load i8, i8* %113, align 1, !dbg !1688
  %115 = zext i8 %114 to i64, !dbg !1688
  %116 = shl i64 %115, 24, !dbg !1688
  %117 = or i64 %110, %116, !dbg !1688
  %118 = load i8*, i8** %4, align 8, !dbg !1688
  %119 = getelementptr inbounds i8, i8* %118, i64 2, !dbg !1688
  %120 = getelementptr inbounds i8, i8* %119, i64 5, !dbg !1688
  %121 = load i8, i8* %120, align 1, !dbg !1688
  %122 = zext i8 %121 to i64, !dbg !1688
  %123 = shl i64 %122, 16, !dbg !1688
  %124 = or i64 %117, %123, !dbg !1688
  %125 = load i8*, i8** %4, align 8, !dbg !1688
  %126 = getelementptr inbounds i8, i8* %125, i64 2, !dbg !1688
  %127 = getelementptr inbounds i8, i8* %126, i64 6, !dbg !1688
  %128 = load i8, i8* %127, align 1, !dbg !1688
  %129 = zext i8 %128 to i64, !dbg !1688
  %130 = shl i64 %129, 8, !dbg !1688
  %131 = or i64 %124, %130, !dbg !1688
  %132 = load i8*, i8** %4, align 8, !dbg !1688
  %133 = getelementptr inbounds i8, i8* %132, i64 2, !dbg !1688
  %134 = getelementptr inbounds i8, i8* %133, i64 7, !dbg !1688
  %135 = load i8, i8* %134, align 1, !dbg !1688
  %136 = zext i8 %135 to i64, !dbg !1688
  %137 = or i64 %131, %136, !dbg !1688
  store i64 %137, i64* %9, align 8, !dbg !1687
  %138 = load i64, i64* %9, align 8, !dbg !1689
  %139 = lshr i64 %138, 62, !dbg !1691
  %140 = icmp ne i64 %139, 0, !dbg !1691
  br i1 %140, label %141, label %145, !dbg !1692

141:                                              ; preds = %83
  %142 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0, !dbg !1693
  store i64 0, i64* %142, align 8, !dbg !1693
  %143 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1, !dbg !1693
  store i8 0, i8* %143, align 8, !dbg !1693
  %144 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2, !dbg !1693
  store i8 0, i8* %144, align 1, !dbg !1693
  br label %166, !dbg !1694

145:                                              ; preds = %83
  %146 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0, !dbg !1695
  %147 = load i64, i64* %9, align 8, !dbg !1696
  store i64 %147, i64* %146, align 8, !dbg !1695
  %148 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1, !dbg !1695
  %149 = load i8, i8* %7, align 1, !dbg !1697
  %150 = zext i8 %149 to i32, !dbg !1697
  %151 = add nsw i32 10, %150, !dbg !1698
  %152 = trunc i32 %151 to i8, !dbg !1699
  store i8 %152, i8* %148, align 8, !dbg !1695
  %153 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2, !dbg !1695
  %154 = load i8, i8* %6, align 1, !dbg !1700
  store i8 %154, i8* %153, align 1, !dbg !1695
  br label %166, !dbg !1701

155:                                              ; preds = %14
  %156 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 0, !dbg !1702
  %157 = load i8, i8* %8, align 1, !dbg !1703
  %158 = zext i8 %157 to i64, !dbg !1703
  store i64 %158, i64* %156, align 8, !dbg !1702
  %159 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 1, !dbg !1702
  %160 = load i8, i8* %7, align 1, !dbg !1704
  %161 = zext i8 %160 to i32, !dbg !1704
  %162 = add nsw i32 2, %161, !dbg !1705
  %163 = trunc i32 %162 to i8, !dbg !1706
  store i8 %163, i8* %159, align 8, !dbg !1702
  %164 = getelementptr inbounds %struct.websocket_packet_info_s, %struct.websocket_packet_info_s* %3, i32 0, i32 2, !dbg !1702
  %165 = load i8, i8* %6, align 1, !dbg !1707
  store i8 %165, i8* %164, align 1, !dbg !1702
  br label %166, !dbg !1708

166:                                              ; preds = %155, %145, %141, %74, %46, %37, %12
  %167 = bitcast %struct.websocket_packet_info_s* %3 to { i64, i64 }*, !dbg !1709
  %168 = load { i64, i64 }, { i64, i64 }* %167, align 8, !dbg !1709
  ret { i64, i64 } %168, !dbg !1709
}

declare dso_local i64 @fio_read(i64, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_protocol_error(i8* %0) #0 !dbg !1710 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ws_s*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1711, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.declare(metadata %struct.ws_s** %3, metadata !1713, metadata !DIExpression()), !dbg !1714
  %4 = load i8*, i8** %2, align 8, !dbg !1715
  %5 = bitcast i8* %4 to %struct.ws_s*, !dbg !1715
  store %struct.ws_s* %5, %struct.ws_s** %3, align 8, !dbg !1714
  %6 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !1716
  %7 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %6, i32 0, i32 1, !dbg !1717
  %8 = load i64, i64* %7, align 8, !dbg !1717
  call void @fio_close(i64 %8), !dbg !1718
  ret void, !dbg !1719
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_xmask(i8* %0, i64 %1, i32 %2) #0 !dbg !1720 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1723, metadata !DIExpression()), !dbg !1724
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1725, metadata !DIExpression()), !dbg !1726
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1727, metadata !DIExpression()), !dbg !1728
  %10 = load i64, i64* %5, align 8, !dbg !1729
  %11 = icmp ugt i64 %10, 7, !dbg !1731
  br i1 %11, label %12, label %133, !dbg !1732

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1733, metadata !DIExpression()), !dbg !1737
  %13 = load i8*, i8** %4, align 8, !dbg !1738
  %14 = ptrtoint i8* %13 to i64, !dbg !1739
  %15 = and i64 %14, 3, !dbg !1740
  %16 = sub i64 4, %15, !dbg !1741
  store i64 %16, i64* %7, align 8, !dbg !1737
  %17 = load i64, i64* %7, align 8, !dbg !1742
  switch i64 %17, label %93 [
    i64 3, label %18
    i64 2, label %29
    i64 1, label %40
  ], !dbg !1743

18:                                               ; preds = %12
  %19 = bitcast i32* %6 to i8*, !dbg !1744
  %20 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !1744
  %21 = load i8, i8* %20, align 2, !dbg !1744
  %22 = zext i8 %21 to i32, !dbg !1744
  %23 = load i8*, i8** %4, align 8, !dbg !1746
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !1747
  %25 = load i8, i8* %24, align 1, !dbg !1748
  %26 = zext i8 %25 to i32, !dbg !1748
  %27 = xor i32 %26, %22, !dbg !1748
  %28 = trunc i32 %27 to i8, !dbg !1748
  store i8 %28, i8* %24, align 1, !dbg !1748
  br label %29, !dbg !1747

29:                                               ; preds = %12, %18
  %30 = bitcast i32* %6 to i8*, !dbg !1749
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1749
  %32 = load i8, i8* %31, align 1, !dbg !1749
  %33 = zext i8 %32 to i32, !dbg !1749
  %34 = load i8*, i8** %4, align 8, !dbg !1750
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1751
  %36 = load i8, i8* %35, align 1, !dbg !1752
  %37 = zext i8 %36 to i32, !dbg !1752
  %38 = xor i32 %37, %33, !dbg !1752
  %39 = trunc i32 %38 to i8, !dbg !1752
  store i8 %39, i8* %35, align 1, !dbg !1752
  br label %40, !dbg !1751

40:                                               ; preds = %12, %29
  %41 = bitcast i32* %6 to i8*, !dbg !1753
  %42 = getelementptr inbounds i8, i8* %41, i64 0, !dbg !1753
  %43 = load i8, i8* %42, align 4, !dbg !1753
  %44 = zext i8 %43 to i32, !dbg !1753
  %45 = load i8*, i8** %4, align 8, !dbg !1754
  %46 = getelementptr inbounds i8, i8* %45, i64 0, !dbg !1755
  %47 = load i8, i8* %46, align 1, !dbg !1756
  %48 = zext i8 %47 to i32, !dbg !1756
  %49 = xor i32 %48, %44, !dbg !1756
  %50 = trunc i32 %49 to i8, !dbg !1756
  store i8 %50, i8* %46, align 1, !dbg !1756
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1757, metadata !DIExpression()), !dbg !1758
  %51 = load i32, i32* %6, align 4, !dbg !1759
  %52 = zext i32 %51 to i64, !dbg !1759
  %53 = load i32, i32* %6, align 4, !dbg !1760
  %54 = zext i32 %53 to i64, !dbg !1761
  %55 = shl i64 %54, 32, !dbg !1762
  %56 = or i64 %52, %55, !dbg !1763
  store i64 %56, i64* %8, align 8, !dbg !1758
  %57 = bitcast i64* %8 to i8*, !dbg !1764
  %58 = load i64, i64* %7, align 8, !dbg !1765
  %59 = add i64 0, %58, !dbg !1766
  %60 = getelementptr inbounds i8, i8* %57, i64 %59, !dbg !1764
  %61 = load i8, i8* %60, align 1, !dbg !1764
  %62 = bitcast i32* %6 to i8*, !dbg !1767
  %63 = getelementptr inbounds i8, i8* %62, i64 0, !dbg !1767
  store i8 %61, i8* %63, align 4, !dbg !1768
  %64 = bitcast i64* %8 to i8*, !dbg !1769
  %65 = load i64, i64* %7, align 8, !dbg !1770
  %66 = add i64 1, %65, !dbg !1771
  %67 = getelementptr inbounds i8, i8* %64, i64 %66, !dbg !1769
  %68 = load i8, i8* %67, align 1, !dbg !1769
  %69 = bitcast i32* %6 to i8*, !dbg !1772
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1772
  store i8 %68, i8* %70, align 1, !dbg !1773
  %71 = bitcast i64* %8 to i8*, !dbg !1774
  %72 = load i64, i64* %7, align 8, !dbg !1775
  %73 = add i64 2, %72, !dbg !1776
  %74 = getelementptr inbounds i8, i8* %71, i64 %73, !dbg !1774
  %75 = load i8, i8* %74, align 1, !dbg !1774
  %76 = bitcast i32* %6 to i8*, !dbg !1777
  %77 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1777
  store i8 %75, i8* %77, align 2, !dbg !1778
  %78 = bitcast i64* %8 to i8*, !dbg !1779
  %79 = load i64, i64* %7, align 8, !dbg !1780
  %80 = add i64 3, %79, !dbg !1781
  %81 = getelementptr inbounds i8, i8* %78, i64 %80, !dbg !1779
  %82 = load i8, i8* %81, align 1, !dbg !1779
  %83 = bitcast i32* %6 to i8*, !dbg !1782
  %84 = getelementptr inbounds i8, i8* %83, i64 3, !dbg !1782
  store i8 %82, i8* %84, align 1, !dbg !1783
  %85 = load i8*, i8** %4, align 8, !dbg !1784
  %86 = ptrtoint i8* %85 to i64, !dbg !1785
  %87 = load i64, i64* %7, align 8, !dbg !1786
  %88 = add i64 %86, %87, !dbg !1787
  %89 = inttoptr i64 %88 to i8*, !dbg !1788
  store i8* %89, i8** %4, align 8, !dbg !1789
  %90 = load i64, i64* %7, align 8, !dbg !1790
  %91 = load i64, i64* %5, align 8, !dbg !1791
  %92 = sub i64 %91, %90, !dbg !1791
  store i64 %92, i64* %5, align 8, !dbg !1791
  br label %93, !dbg !1792

93:                                               ; preds = %40, %12
  %94 = load i8*, i8** %4, align 8, !dbg !1793
  %95 = ptrtoint i8* %94 to i64, !dbg !1795
  %96 = and i64 %95, 7, !dbg !1796
  %97 = icmp ne i64 %96, 0, !dbg !1796
  br i1 %97, label %98, label %110, !dbg !1797

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4, !dbg !1798
  %100 = load i8*, i8** %4, align 8, !dbg !1800
  %101 = bitcast i8* %100 to i32*, !dbg !1801
  %102 = load i32, i32* %101, align 4, !dbg !1802
  %103 = xor i32 %102, %99, !dbg !1802
  store i32 %103, i32* %101, align 4, !dbg !1802
  %104 = load i64, i64* %5, align 8, !dbg !1803
  %105 = sub i64 %104, 4, !dbg !1803
  store i64 %105, i64* %5, align 8, !dbg !1803
  %106 = load i8*, i8** %4, align 8, !dbg !1804
  %107 = ptrtoint i8* %106 to i64, !dbg !1805
  %108 = add i64 %107, 4, !dbg !1806
  %109 = inttoptr i64 %108 to i8*, !dbg !1807
  store i8* %109, i8** %4, align 8, !dbg !1808
  br label %110, !dbg !1809

110:                                              ; preds = %98, %93
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1810, metadata !DIExpression()), !dbg !1811
  %111 = load i32, i32* %6, align 4, !dbg !1812
  %112 = zext i32 %111 to i64, !dbg !1813
  %113 = shl i64 %112, 32, !dbg !1814
  %114 = load i32, i32* %6, align 4, !dbg !1815
  %115 = zext i32 %114 to i64, !dbg !1815
  %116 = or i64 %113, %115, !dbg !1816
  store i64 %116, i64* %9, align 8, !dbg !1811
  br label %117, !dbg !1817

117:                                              ; preds = %120, %110
  %118 = load i64, i64* %5, align 8, !dbg !1818
  %119 = icmp uge i64 %118, 8, !dbg !1819
  br i1 %119, label %120, label %132, !dbg !1817

120:                                              ; preds = %117
  %121 = load i64, i64* %9, align 8, !dbg !1820
  %122 = load i8*, i8** %4, align 8, !dbg !1822
  %123 = bitcast i8* %122 to i64*, !dbg !1823
  %124 = load i64, i64* %123, align 8, !dbg !1824
  %125 = xor i64 %124, %121, !dbg !1824
  store i64 %125, i64* %123, align 8, !dbg !1824
  %126 = load i64, i64* %5, align 8, !dbg !1825
  %127 = sub i64 %126, 8, !dbg !1825
  store i64 %127, i64* %5, align 8, !dbg !1825
  %128 = load i8*, i8** %4, align 8, !dbg !1826
  %129 = ptrtoint i8* %128 to i64, !dbg !1827
  %130 = add i64 %129, 8, !dbg !1828
  %131 = inttoptr i64 %130 to i8*, !dbg !1829
  store i8* %131, i8** %4, align 8, !dbg !1830
  br label %117, !dbg !1817, !llvm.loop !1831

132:                                              ; preds = %117
  br label %133, !dbg !1833

133:                                              ; preds = %132, %3
  %134 = load i64, i64* %5, align 8, !dbg !1834
  switch i64 %134, label %212 [
    i64 7, label %135
    i64 6, label %146
    i64 5, label %157
    i64 4, label %168
    i64 3, label %179
    i64 2, label %190
    i64 1, label %201
  ], !dbg !1835

135:                                              ; preds = %133
  %136 = bitcast i32* %6 to i8*, !dbg !1836
  %137 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !1836
  %138 = load i8, i8* %137, align 2, !dbg !1836
  %139 = zext i8 %138 to i32, !dbg !1836
  %140 = load i8*, i8** %4, align 8, !dbg !1838
  %141 = getelementptr inbounds i8, i8* %140, i64 6, !dbg !1839
  %142 = load i8, i8* %141, align 1, !dbg !1840
  %143 = zext i8 %142 to i32, !dbg !1840
  %144 = xor i32 %143, %139, !dbg !1840
  %145 = trunc i32 %144 to i8, !dbg !1840
  store i8 %145, i8* %141, align 1, !dbg !1840
  br label %146, !dbg !1839

146:                                              ; preds = %133, %135
  %147 = bitcast i32* %6 to i8*, !dbg !1841
  %148 = getelementptr inbounds i8, i8* %147, i64 1, !dbg !1841
  %149 = load i8, i8* %148, align 1, !dbg !1841
  %150 = zext i8 %149 to i32, !dbg !1841
  %151 = load i8*, i8** %4, align 8, !dbg !1842
  %152 = getelementptr inbounds i8, i8* %151, i64 5, !dbg !1843
  %153 = load i8, i8* %152, align 1, !dbg !1844
  %154 = zext i8 %153 to i32, !dbg !1844
  %155 = xor i32 %154, %150, !dbg !1844
  %156 = trunc i32 %155 to i8, !dbg !1844
  store i8 %156, i8* %152, align 1, !dbg !1844
  br label %157, !dbg !1843

157:                                              ; preds = %133, %146
  %158 = bitcast i32* %6 to i8*, !dbg !1845
  %159 = getelementptr inbounds i8, i8* %158, i64 0, !dbg !1845
  %160 = load i8, i8* %159, align 4, !dbg !1845
  %161 = zext i8 %160 to i32, !dbg !1845
  %162 = load i8*, i8** %4, align 8, !dbg !1846
  %163 = getelementptr inbounds i8, i8* %162, i64 4, !dbg !1847
  %164 = load i8, i8* %163, align 1, !dbg !1848
  %165 = zext i8 %164 to i32, !dbg !1848
  %166 = xor i32 %165, %161, !dbg !1848
  %167 = trunc i32 %166 to i8, !dbg !1848
  store i8 %167, i8* %163, align 1, !dbg !1848
  br label %168, !dbg !1847

168:                                              ; preds = %133, %157
  %169 = bitcast i32* %6 to i8*, !dbg !1849
  %170 = getelementptr inbounds i8, i8* %169, i64 3, !dbg !1849
  %171 = load i8, i8* %170, align 1, !dbg !1849
  %172 = zext i8 %171 to i32, !dbg !1849
  %173 = load i8*, i8** %4, align 8, !dbg !1850
  %174 = getelementptr inbounds i8, i8* %173, i64 3, !dbg !1851
  %175 = load i8, i8* %174, align 1, !dbg !1852
  %176 = zext i8 %175 to i32, !dbg !1852
  %177 = xor i32 %176, %172, !dbg !1852
  %178 = trunc i32 %177 to i8, !dbg !1852
  store i8 %178, i8* %174, align 1, !dbg !1852
  br label %179, !dbg !1851

179:                                              ; preds = %133, %168
  %180 = bitcast i32* %6 to i8*, !dbg !1853
  %181 = getelementptr inbounds i8, i8* %180, i64 2, !dbg !1853
  %182 = load i8, i8* %181, align 2, !dbg !1853
  %183 = zext i8 %182 to i32, !dbg !1853
  %184 = load i8*, i8** %4, align 8, !dbg !1854
  %185 = getelementptr inbounds i8, i8* %184, i64 2, !dbg !1855
  %186 = load i8, i8* %185, align 1, !dbg !1856
  %187 = zext i8 %186 to i32, !dbg !1856
  %188 = xor i32 %187, %183, !dbg !1856
  %189 = trunc i32 %188 to i8, !dbg !1856
  store i8 %189, i8* %185, align 1, !dbg !1856
  br label %190, !dbg !1855

190:                                              ; preds = %133, %179
  %191 = bitcast i32* %6 to i8*, !dbg !1857
  %192 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1857
  %193 = load i8, i8* %192, align 1, !dbg !1857
  %194 = zext i8 %193 to i32, !dbg !1857
  %195 = load i8*, i8** %4, align 8, !dbg !1858
  %196 = getelementptr inbounds i8, i8* %195, i64 1, !dbg !1859
  %197 = load i8, i8* %196, align 1, !dbg !1860
  %198 = zext i8 %197 to i32, !dbg !1860
  %199 = xor i32 %198, %194, !dbg !1860
  %200 = trunc i32 %199 to i8, !dbg !1860
  store i8 %200, i8* %196, align 1, !dbg !1860
  br label %201, !dbg !1859

201:                                              ; preds = %133, %190
  %202 = bitcast i32* %6 to i8*, !dbg !1861
  %203 = getelementptr inbounds i8, i8* %202, i64 0, !dbg !1861
  %204 = load i8, i8* %203, align 4, !dbg !1861
  %205 = zext i8 %204 to i32, !dbg !1861
  %206 = load i8*, i8** %4, align 8, !dbg !1862
  %207 = getelementptr inbounds i8, i8* %206, i64 0, !dbg !1863
  %208 = load i8, i8* %207, align 1, !dbg !1864
  %209 = zext i8 %208 to i32, !dbg !1864
  %210 = xor i32 %209, %205, !dbg !1864
  %211 = trunc i32 %210 to i8, !dbg !1864
  store i8 %211, i8* %207, align 1, !dbg !1864
  br label %212, !dbg !1865

212:                                              ; preds = %201, %133
  ret void, !dbg !1866
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_unwrapped(i8* %0, i8* %1, i64 %2, i8 signext %3, i8 signext %4, i8 signext %5, i8 zeroext %6) #0 !dbg !1867 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.ws_s*, align 8
  %16 = alloca %struct.fio_str_info_s, align 8
  %17 = alloca %struct.fio_str_info_s, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1870, metadata !DIExpression()), !dbg !1871
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1872, metadata !DIExpression()), !dbg !1873
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1874, metadata !DIExpression()), !dbg !1875
  store i8 %3, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1876, metadata !DIExpression()), !dbg !1877
  store i8 %4, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1878, metadata !DIExpression()), !dbg !1879
  store i8 %5, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1880, metadata !DIExpression()), !dbg !1881
  store i8 %6, i8* %14, align 1
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1882, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.declare(metadata %struct.ws_s** %15, metadata !1884, metadata !DIExpression()), !dbg !1885
  %18 = load i8*, i8** %8, align 8, !dbg !1886
  %19 = bitcast i8* %18 to %struct.ws_s*, !dbg !1886
  store %struct.ws_s* %19, %struct.ws_s** %15, align 8, !dbg !1885
  %20 = load i8, i8* %12, align 1, !dbg !1887
  %21 = sext i8 %20 to i32, !dbg !1887
  %22 = icmp ne i32 %21, 0, !dbg !1887
  br i1 %22, label %23, label %38, !dbg !1889

23:                                               ; preds = %7
  %24 = load i8, i8* %11, align 1, !dbg !1890
  %25 = sext i8 %24 to i32, !dbg !1890
  %26 = icmp ne i32 %25, 0, !dbg !1890
  br i1 %26, label %27, label %38, !dbg !1891

27:                                               ; preds = %23
  %28 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1892
  %29 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %28, i32 0, i32 2, !dbg !1894
  %30 = load void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %29, align 8, !dbg !1894
  %31 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1895
  %32 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %16, i32 0, i32 0, !dbg !1896
  store i64 0, i64* %32, align 8, !dbg !1896
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %16, i32 0, i32 1, !dbg !1896
  %34 = load i64, i64* %10, align 8, !dbg !1897
  store i64 %34, i64* %33, align 8, !dbg !1896
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %16, i32 0, i32 2, !dbg !1896
  %36 = load i8*, i8** %9, align 8, !dbg !1898
  store i8* %36, i8** %35, align 8, !dbg !1896
  %37 = load i8, i8* %13, align 1, !dbg !1899
  call void %30(%struct.ws_s* %31, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %16, i8 zeroext %37), !dbg !1892
  br label %80, !dbg !1900

38:                                               ; preds = %23, %7
  %39 = load i8, i8* %11, align 1, !dbg !1901
  %40 = icmp ne i8 %39, 0, !dbg !1901
  br i1 %40, label %41, label %58, !dbg !1903

41:                                               ; preds = %38
  %42 = load i8, i8* %13, align 1, !dbg !1904
  %43 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1906
  %44 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %43, i32 0, i32 14, !dbg !1907
  store i8 %42, i8* %44, align 8, !dbg !1908
  %45 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1909
  %46 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %45, i32 0, i32 13, !dbg !1911
  %47 = load i64, i64* %46, align 8, !dbg !1911
  %48 = icmp eq i64 %47, 0, !dbg !1912
  br i1 %48, label %49, label %54, !dbg !1913

49:                                               ; preds = %41
  %50 = load i64, i64* %10, align 8, !dbg !1914
  %51 = call i64 @fiobj_str_buf(i64 %50), !dbg !1915
  %52 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1916
  %53 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %52, i32 0, i32 13, !dbg !1917
  store i64 %51, i64* %53, align 8, !dbg !1918
  br label %54, !dbg !1916

54:                                               ; preds = %49, %41
  %55 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1919
  %56 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %55, i32 0, i32 13, !dbg !1920
  %57 = load i64, i64* %56, align 8, !dbg !1920
  call void @fiobj_str_resize(i64 %57, i64 0), !dbg !1921
  br label %58, !dbg !1922

58:                                               ; preds = %54, %38
  %59 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1923
  %60 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %59, i32 0, i32 13, !dbg !1924
  %61 = load i64, i64* %60, align 8, !dbg !1924
  %62 = load i8*, i8** %9, align 8, !dbg !1925
  %63 = load i64, i64* %10, align 8, !dbg !1926
  %64 = call i64 @fiobj_str_write(i64 %61, i8* %62, i64 %63), !dbg !1927
  %65 = load i8, i8* %12, align 1, !dbg !1928
  %66 = icmp ne i8 %65, 0, !dbg !1928
  br i1 %66, label %67, label %78, !dbg !1930

67:                                               ; preds = %58
  %68 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1931
  %69 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %68, i32 0, i32 2, !dbg !1933
  %70 = load void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*, %struct.fio_str_info_s*, i8)** %69, align 8, !dbg !1933
  %71 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1934
  %72 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1935
  %73 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %72, i32 0, i32 13, !dbg !1936
  %74 = load i64, i64* %73, align 8, !dbg !1936
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %17, i64 %74), !dbg !1937
  %75 = load %struct.ws_s*, %struct.ws_s** %15, align 8, !dbg !1938
  %76 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %75, i32 0, i32 14, !dbg !1939
  %77 = load i8, i8* %76, align 8, !dbg !1939
  call void %70(%struct.ws_s* %71, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %17, i8 zeroext %77), !dbg !1931
  br label %78, !dbg !1940

78:                                               ; preds = %67, %58
  %79 = load i8, i8* %14, align 1, !dbg !1941
  br label %80, !dbg !1942

80:                                               ; preds = %78, %27
  ret void, !dbg !1942
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_protocol_close(i8* %0) #0 !dbg !1943 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ws_s*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1944, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.declare(metadata %struct.ws_s** %3, metadata !1946, metadata !DIExpression()), !dbg !1947
  %4 = load i8*, i8** %2, align 8, !dbg !1948
  %5 = bitcast i8* %4 to %struct.ws_s*, !dbg !1948
  store %struct.ws_s* %5, %struct.ws_s** %3, align 8, !dbg !1947
  %6 = load %struct.ws_s*, %struct.ws_s** %3, align 8, !dbg !1949
  %7 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %6, i32 0, i32 1, !dbg !1950
  %8 = load i64, i64* %7, align 8, !dbg !1950
  call void @fio_close(i64 %8), !dbg !1951
  ret void, !dbg !1952
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_protocol_ping(i8* %0, i8* %1, i64 %2) #0 !dbg !1953 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ws_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fio_write_args_s, align 8
  %10 = alloca %struct.fio_write_args_s, align 8
  %11 = alloca %struct.fio_write_args_s, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1956, metadata !DIExpression()), !dbg !1957
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1958, metadata !DIExpression()), !dbg !1959
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1960, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.declare(metadata %struct.ws_s** %7, metadata !1962, metadata !DIExpression()), !dbg !1963
  %12 = load i8*, i8** %4, align 8, !dbg !1964
  %13 = bitcast i8* %12 to %struct.ws_s*, !dbg !1964
  store %struct.ws_s* %13, %struct.ws_s** %7, align 8, !dbg !1963
  %14 = load i8*, i8** %5, align 8, !dbg !1965
  %15 = icmp ne i8* %14, null, !dbg !1965
  br i1 %15, label %16, label %61, !dbg !1967

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1968, metadata !DIExpression()), !dbg !1970
  %17 = load i64, i64* %6, align 8, !dbg !1971
  %18 = add i64 %17, 16, !dbg !1972
  %19 = call noalias i8* @malloc(i64 %18) #2, !dbg !1973
  store i8* %19, i8** %8, align 8, !dbg !1970
  %20 = load %struct.ws_s*, %struct.ws_s** %7, align 8, !dbg !1974
  %21 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %20, i32 0, i32 15, !dbg !1975
  %22 = load i8, i8* %21, align 1, !dbg !1975
  %23 = zext i8 %22 to i32, !dbg !1976
  %24 = icmp ne i32 %23, 0, !dbg !1976
  br i1 %24, label %25, label %30, !dbg !1976

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8, !dbg !1977
  %27 = load i8*, i8** %5, align 8, !dbg !1978
  %28 = load i64, i64* %6, align 8, !dbg !1979
  %29 = call i64 @websocket_client_wrap(i8* %26, i8* %27, i64 %28, i8 zeroext 10, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0), !dbg !1980
  br label %35, !dbg !1976

30:                                               ; preds = %16
  %31 = load i8*, i8** %8, align 8, !dbg !1981
  %32 = load i8*, i8** %5, align 8, !dbg !1982
  %33 = load i64, i64* %6, align 8, !dbg !1983
  %34 = call i64 @websocket_server_wrap(i8* %31, i8* %32, i64 %33, i8 zeroext 10, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0), !dbg !1984
  br label %35, !dbg !1976

35:                                               ; preds = %30, %25
  %36 = phi i64 [ %29, %25 ], [ %34, %30 ], !dbg !1976
  store i64 %36, i64* %6, align 8, !dbg !1985
  %37 = load %struct.ws_s*, %struct.ws_s** %7, align 8, !dbg !1986
  %38 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %37, i32 0, i32 1, !dbg !1986
  %39 = load i64, i64* %38, align 8, !dbg !1986
  %40 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 0, !dbg !1986
  %41 = bitcast %union.anon* %40 to i8**, !dbg !1986
  %42 = load i8*, i8** %8, align 8, !dbg !1986
  store i8* %42, i8** %41, align 8, !dbg !1986
  %43 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 1, !dbg !1986
  %44 = bitcast %union.anon.0* %43 to i8*, !dbg !1986
  call void @llvm.memset.p0i8.i64(i8* align 8 %44, i8 0, i64 8, i1 false), !dbg !1986
  %45 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 2, !dbg !1986
  %46 = load i64, i64* %6, align 8, !dbg !1986
  store i64 %46, i64* %45, align 8, !dbg !1986
  %47 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 3, !dbg !1986
  store i64 0, i64* %47, align 8, !dbg !1986
  %48 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4, !dbg !1986
  %49 = load i8, i8* %48, align 8, !dbg !1986
  %50 = and i8 %49, -2, !dbg !1986
  store i8 %50, i8* %48, align 8, !dbg !1986
  %51 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4, !dbg !1986
  %52 = load i8, i8* %51, align 8, !dbg !1986
  %53 = and i8 %52, -3, !dbg !1986
  store i8 %53, i8* %51, align 8, !dbg !1986
  %54 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4, !dbg !1986
  %55 = load i8, i8* %54, align 8, !dbg !1986
  %56 = and i8 %55, -5, !dbg !1986
  store i8 %56, i8* %54, align 8, !dbg !1986
  %57 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4, !dbg !1986
  %58 = load i8, i8* %57, align 8, !dbg !1986
  %59 = and i8 %58, -9, !dbg !1986
  store i8 %59, i8* %57, align 8, !dbg !1986
  %60 = call i64 @fio_write2_fn(i64 %39, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %9), !dbg !1986
  br label %113, !dbg !1987

61:                                               ; preds = %3
  %62 = load %struct.ws_s*, %struct.ws_s** %7, align 8, !dbg !1988
  %63 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %62, i32 0, i32 15, !dbg !1991
  %64 = load i8, i8* %63, align 1, !dbg !1991
  %65 = icmp ne i8 %64, 0, !dbg !1992
  br i1 %65, label %66, label %89, !dbg !1993

66:                                               ; preds = %61
  %67 = load %struct.ws_s*, %struct.ws_s** %7, align 8, !dbg !1994
  %68 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %67, i32 0, i32 1, !dbg !1994
  %69 = load i64, i64* %68, align 8, !dbg !1994
  %70 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 0, !dbg !1994
  %71 = bitcast %union.anon* %70 to i8**, !dbg !1994
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %71, align 8, !dbg !1994
  %72 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 1, !dbg !1994
  %73 = bitcast %union.anon.0* %72 to void (i8*)**, !dbg !1994
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %73, align 8, !dbg !1994
  %74 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 2, !dbg !1994
  store i64 2, i64* %74, align 8, !dbg !1994
  %75 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 3, !dbg !1994
  store i64 0, i64* %75, align 8, !dbg !1994
  %76 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 4, !dbg !1994
  %77 = load i8, i8* %76, align 8, !dbg !1994
  %78 = and i8 %77, -2, !dbg !1994
  store i8 %78, i8* %76, align 8, !dbg !1994
  %79 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 4, !dbg !1994
  %80 = load i8, i8* %79, align 8, !dbg !1994
  %81 = and i8 %80, -3, !dbg !1994
  store i8 %81, i8* %79, align 8, !dbg !1994
  %82 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 4, !dbg !1994
  %83 = load i8, i8* %82, align 8, !dbg !1994
  %84 = and i8 %83, -5, !dbg !1994
  store i8 %84, i8* %82, align 8, !dbg !1994
  %85 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %10, i32 0, i32 4, !dbg !1994
  %86 = load i8, i8* %85, align 8, !dbg !1994
  %87 = and i8 %86, -9, !dbg !1994
  store i8 %87, i8* %85, align 8, !dbg !1994
  %88 = call i64 @fio_write2_fn(i64 %69, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %10), !dbg !1994
  br label %112, !dbg !1996

89:                                               ; preds = %61
  %90 = load %struct.ws_s*, %struct.ws_s** %7, align 8, !dbg !1997
  %91 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %90, i32 0, i32 1, !dbg !1997
  %92 = load i64, i64* %91, align 8, !dbg !1997
  %93 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 0, !dbg !1997
  %94 = bitcast %union.anon* %93 to i8**, !dbg !1997
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %94, align 8, !dbg !1997
  %95 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 1, !dbg !1997
  %96 = bitcast %union.anon.0* %95 to void (i8*)**, !dbg !1997
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %96, align 8, !dbg !1997
  %97 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 2, !dbg !1997
  store i64 2, i64* %97, align 8, !dbg !1997
  %98 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 3, !dbg !1997
  store i64 0, i64* %98, align 8, !dbg !1997
  %99 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 4, !dbg !1997
  %100 = load i8, i8* %99, align 8, !dbg !1997
  %101 = and i8 %100, -2, !dbg !1997
  store i8 %101, i8* %99, align 8, !dbg !1997
  %102 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 4, !dbg !1997
  %103 = load i8, i8* %102, align 8, !dbg !1997
  %104 = and i8 %103, -3, !dbg !1997
  store i8 %104, i8* %102, align 8, !dbg !1997
  %105 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 4, !dbg !1997
  %106 = load i8, i8* %105, align 8, !dbg !1997
  %107 = and i8 %106, -5, !dbg !1997
  store i8 %107, i8* %105, align 8, !dbg !1997
  %108 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %11, i32 0, i32 4, !dbg !1997
  %109 = load i8, i8* %108, align 8, !dbg !1997
  %110 = and i8 %109, -9, !dbg !1997
  store i8 %110, i8* %108, align 8, !dbg !1997
  %111 = call i64 @fio_write2_fn(i64 %92, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %11), !dbg !1997
  br label %112

112:                                              ; preds = %89, %66
  br label %113

113:                                              ; preds = %112, %35
  ret void, !dbg !1999
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_protocol_pong(i8* %0, i8* %1, i64 %2) #0 !dbg !2000 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2001, metadata !DIExpression()), !dbg !2002
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2003, metadata !DIExpression()), !dbg !2004
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2005, metadata !DIExpression()), !dbg !2006
  %7 = load i64, i64* %6, align 8, !dbg !2007
  %8 = load i8*, i8** %5, align 8, !dbg !2008
  %9 = load i8*, i8** %4, align 8, !dbg !2009
  ret void, !dbg !2010
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #4

declare dso_local i64 @fiobj_str_buf(i64) #5

declare dso_local void @fiobj_str_resize(i64, i64) #5

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !2011 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2015, metadata !DIExpression()), !dbg !2016
  %4 = load i64, i64* %3, align 8, !dbg !2017
  %5 = icmp ne i64 %4, 0, !dbg !2017
  br i1 %5, label %8, label %6, !dbg !2019

6:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !2020, metadata !DIExpression()), !dbg !2022
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !2022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false), !dbg !2022
  br label %37, !dbg !2023

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !2024
  %10 = and i64 %9, 1, !dbg !2026
  %11 = icmp ne i64 %10, 0, !dbg !2026
  br i1 %11, label %12, label %15, !dbg !2027

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8, !dbg !2028
  %14 = ashr i64 %13, 1, !dbg !2029
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14), !dbg !2030
  br label %37, !dbg !2031

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8, !dbg !2032
  %17 = and i64 %16, 6, !dbg !2034
  %18 = icmp eq i64 %17, 6, !dbg !2035
  br i1 %18, label %19, label %31, !dbg !2036

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8, !dbg !2037
  %21 = trunc i64 %20 to i8, !dbg !2039
  %22 = zext i8 %21 to i32, !dbg !2039
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ], !dbg !2040

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !2041, metadata !DIExpression()), !dbg !2044
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !2044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.6 to i8*), i64 24, i1 false), !dbg !2044
  br label %37, !dbg !2045

25:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !2046, metadata !DIExpression()), !dbg !2048
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !2048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.8 to i8*), i64 24, i1 false), !dbg !2048
  br label %37, !dbg !2049

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !2050, metadata !DIExpression()), !dbg !2052
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !2052
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.10 to i8*), i64 24, i1 false), !dbg !2052
  br label %37, !dbg !2053

29:                                               ; preds = %19
  br label %30, !dbg !2054

30:                                               ; preds = %29
  br label %31, !dbg !2055

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8, !dbg !2056
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32), !dbg !2056
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6, !dbg !2057
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8, !dbg !2057
  %36 = load i64, i64* %3, align 8, !dbg !2058
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36), !dbg !2056
  br label %37, !dbg !2059

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void, !dbg !2060
}

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !2061 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2115, metadata !DIExpression()), !dbg !2116
  %4 = load i64, i64* %3, align 8, !dbg !2117
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !2117
  %6 = zext i8 %5 to i32, !dbg !2117
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
  ], !dbg !2118

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2119
  br label %15, !dbg !2119

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2121
  br label %15, !dbg !2121

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2122
  br label %15, !dbg !2122

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2123
  br label %15, !dbg !2123

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2124
  br label %15, !dbg !2124

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2125
  br label %15, !dbg !2125

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2126
  br label %15, !dbg !2126

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2127
  br label %15, !dbg !2127

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2128
  ret %struct.fiobj_object_vtable_s* %16, !dbg !2128
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !2129 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2132, metadata !DIExpression()), !dbg !2133
  %4 = load i64, i64* %3, align 8, !dbg !2134
  %5 = icmp ne i64 %4, 0, !dbg !2134
  br i1 %5, label %7, label %6, !dbg !2136

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !2137
  br label %35, !dbg !2137

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !2138
  %9 = and i64 %8, 1, !dbg !2140
  %10 = icmp ne i64 %9, 0, !dbg !2140
  br i1 %10, label %11, label %12, !dbg !2141

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !2142
  br label %35, !dbg !2142

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !2143
  %14 = and i64 %13, 6, !dbg !2145
  %15 = icmp eq i64 %14, 6, !dbg !2146
  br i1 %15, label %16, label %19, !dbg !2147

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !2148
  %18 = trunc i64 %17 to i8, !dbg !2149
  store i8 %18, i8* %2, align 1, !dbg !2150
  br label %35, !dbg !2150

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !2151
  %21 = and i64 %20, 6, !dbg !2153
  %22 = icmp eq i64 %21, 2, !dbg !2154
  br i1 %22, label %23, label %24, !dbg !2155

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !2156
  br label %35, !dbg !2156

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !2157
  %26 = and i64 %25, 6, !dbg !2159
  %27 = icmp eq i64 %26, 4, !dbg !2160
  br i1 %27, label %28, label %29, !dbg !2161

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !2162
  br label %35, !dbg !2162

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !2163
  %31 = and i64 %30, -8, !dbg !2163
  %32 = inttoptr i64 %31 to i8*, !dbg !2163
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !2164
  %34 = load i8, i8* %33, align 1, !dbg !2164
  store i8 %34, i8* %2, align 1, !dbg !2165
  br label %35, !dbg !2165

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !2166
  ret i8 %36, !dbg !2166
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @websocket_client_wrap(i8* %0, i8* %1, i64 %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6) #0 !dbg !2167 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2170, metadata !DIExpression()), !dbg !2171
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2172, metadata !DIExpression()), !dbg !2173
  store i64 %2, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2174, metadata !DIExpression()), !dbg !2175
  store i8 %3, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2176, metadata !DIExpression()), !dbg !2177
  store i8 %4, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !2178, metadata !DIExpression()), !dbg !2179
  store i8 %5, i8* %14, align 1
  call void @llvm.dbg.declare(metadata i8* %14, metadata !2180, metadata !DIExpression()), !dbg !2181
  store i8 %6, i8* %15, align 1
  call void @llvm.dbg.declare(metadata i8* %15, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2184, metadata !DIExpression()), !dbg !2185
  %17 = call i32 @rand() #2, !dbg !2186
  %18 = or i32 %17, 16909320, !dbg !2187
  store i32 %18, i32* %16, align 4, !dbg !2185
  %19 = load i8, i8* %13, align 1, !dbg !2188
  %20 = zext i8 %19 to i32, !dbg !2188
  %21 = icmp ne i32 %20, 0, !dbg !2188
  br i1 %21, label %22, label %25, !dbg !2188

22:                                               ; preds = %7
  %23 = load i8, i8* %12, align 1, !dbg !2189
  %24 = zext i8 %23 to i32, !dbg !2189
  br label %26, !dbg !2188

25:                                               ; preds = %7
  br label %26, !dbg !2188

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ], !dbg !2188
  %28 = and i32 %27, 15, !dbg !2190
  %29 = or i32 0, %28, !dbg !2191
  %30 = load i8, i8* %15, align 1, !dbg !2192
  %31 = zext i8 %30 to i32, !dbg !2192
  %32 = and i32 %31, 7, !dbg !2193
  %33 = shl i32 %32, 4, !dbg !2194
  %34 = or i32 %29, %33, !dbg !2195
  %35 = load i8, i8* %14, align 1, !dbg !2196
  %36 = zext i8 %35 to i32, !dbg !2196
  %37 = and i32 %36, 1, !dbg !2197
  %38 = shl i32 %37, 7, !dbg !2198
  %39 = or i32 %34, %38, !dbg !2199
  %40 = trunc i32 %39 to i8, !dbg !2200
  %41 = load i8*, i8** %9, align 8, !dbg !2201
  %42 = getelementptr inbounds i8, i8* %41, i64 0, !dbg !2202
  store i8 %40, i8* %42, align 1, !dbg !2203
  %43 = load i64, i64* %11, align 8, !dbg !2204
  %44 = icmp ult i64 %43, 126, !dbg !2206
  br i1 %44, label %45, label %81, !dbg !2207

45:                                               ; preds = %26
  %46 = load i64, i64* %11, align 8, !dbg !2208
  %47 = or i64 %46, 128, !dbg !2210
  %48 = trunc i64 %47 to i8, !dbg !2208
  %49 = load i8*, i8** %9, align 8, !dbg !2211
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !2212
  store i8 %48, i8* %50, align 1, !dbg !2213
  %51 = bitcast i32* %16 to i8*, !dbg !2214
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !2214
  %53 = load i8, i8* %52, align 4, !dbg !2214
  %54 = load i8*, i8** %9, align 8, !dbg !2215
  %55 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !2216
  store i8 %53, i8* %55, align 1, !dbg !2217
  %56 = bitcast i32* %16 to i8*, !dbg !2218
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !2218
  %58 = load i8, i8* %57, align 1, !dbg !2218
  %59 = load i8*, i8** %9, align 8, !dbg !2219
  %60 = getelementptr inbounds i8, i8* %59, i64 3, !dbg !2220
  store i8 %58, i8* %60, align 1, !dbg !2221
  %61 = bitcast i32* %16 to i8*, !dbg !2222
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !2222
  %63 = load i8, i8* %62, align 2, !dbg !2222
  %64 = load i8*, i8** %9, align 8, !dbg !2223
  %65 = getelementptr inbounds i8, i8* %64, i64 4, !dbg !2224
  store i8 %63, i8* %65, align 1, !dbg !2225
  %66 = bitcast i32* %16 to i8*, !dbg !2226
  %67 = getelementptr inbounds i8, i8* %66, i64 3, !dbg !2226
  %68 = load i8, i8* %67, align 1, !dbg !2226
  %69 = load i8*, i8** %9, align 8, !dbg !2227
  %70 = getelementptr inbounds i8, i8* %69, i64 5, !dbg !2228
  store i8 %68, i8* %70, align 1, !dbg !2229
  %71 = load i8*, i8** %9, align 8, !dbg !2230
  %72 = getelementptr inbounds i8, i8* %71, i64 6, !dbg !2231
  %73 = load i8*, i8** %10, align 8, !dbg !2232
  %74 = load i64, i64* %11, align 8, !dbg !2233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %72, i8* align 1 %73, i64 %74, i1 false), !dbg !2234
  %75 = load i8*, i8** %9, align 8, !dbg !2235
  %76 = getelementptr inbounds i8, i8* %75, i64 6, !dbg !2236
  %77 = load i64, i64* %11, align 8, !dbg !2237
  %78 = load i32, i32* %16, align 4, !dbg !2238
  call void @websocket_xmask(i8* %76, i64 %77, i32 %78), !dbg !2239
  %79 = load i64, i64* %11, align 8, !dbg !2240
  %80 = add i64 %79, 6, !dbg !2241
  store i64 %80, i64* %8, align 8, !dbg !2242
  br label %227, !dbg !2242

81:                                               ; preds = %26
  %82 = load i64, i64* %11, align 8, !dbg !2243
  %83 = icmp ult i64 %82, 65536, !dbg !2245
  br i1 %83, label %84, label %136, !dbg !2246

84:                                               ; preds = %81
  %85 = load i8*, i8** %9, align 8, !dbg !2247
  %86 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !2249
  store i8 -2, i8* %86, align 1, !dbg !2250
  br label %87, !dbg !2251

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8, !dbg !2252
  %89 = trunc i64 %88 to i16, !dbg !2252
  %90 = zext i16 %89 to i32, !dbg !2252
  %91 = ashr i32 %90, 8, !dbg !2252
  %92 = and i32 %91, 255, !dbg !2252
  %93 = trunc i32 %92 to i8, !dbg !2252
  %94 = load i8*, i8** %9, align 8, !dbg !2252
  %95 = getelementptr inbounds i8, i8* %94, i64 2, !dbg !2252
  %96 = getelementptr inbounds i8, i8* %95, i64 0, !dbg !2252
  store i8 %93, i8* %96, align 1, !dbg !2252
  %97 = load i64, i64* %11, align 8, !dbg !2252
  %98 = trunc i64 %97 to i16, !dbg !2252
  %99 = zext i16 %98 to i32, !dbg !2252
  %100 = and i32 %99, 255, !dbg !2252
  %101 = trunc i32 %100 to i8, !dbg !2252
  %102 = load i8*, i8** %9, align 8, !dbg !2252
  %103 = getelementptr inbounds i8, i8* %102, i64 2, !dbg !2252
  %104 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !2252
  store i8 %101, i8* %104, align 1, !dbg !2252
  br label %105, !dbg !2252

105:                                              ; preds = %87
  %106 = bitcast i32* %16 to i8*, !dbg !2254
  %107 = getelementptr inbounds i8, i8* %106, i64 0, !dbg !2254
  %108 = load i8, i8* %107, align 4, !dbg !2254
  %109 = load i8*, i8** %9, align 8, !dbg !2255
  %110 = getelementptr inbounds i8, i8* %109, i64 4, !dbg !2256
  store i8 %108, i8* %110, align 1, !dbg !2257
  %111 = bitcast i32* %16 to i8*, !dbg !2258
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !2258
  %113 = load i8, i8* %112, align 1, !dbg !2258
  %114 = load i8*, i8** %9, align 8, !dbg !2259
  %115 = getelementptr inbounds i8, i8* %114, i64 5, !dbg !2260
  store i8 %113, i8* %115, align 1, !dbg !2261
  %116 = bitcast i32* %16 to i8*, !dbg !2262
  %117 = getelementptr inbounds i8, i8* %116, i64 2, !dbg !2262
  %118 = load i8, i8* %117, align 2, !dbg !2262
  %119 = load i8*, i8** %9, align 8, !dbg !2263
  %120 = getelementptr inbounds i8, i8* %119, i64 6, !dbg !2264
  store i8 %118, i8* %120, align 1, !dbg !2265
  %121 = bitcast i32* %16 to i8*, !dbg !2266
  %122 = getelementptr inbounds i8, i8* %121, i64 3, !dbg !2266
  %123 = load i8, i8* %122, align 1, !dbg !2266
  %124 = load i8*, i8** %9, align 8, !dbg !2267
  %125 = getelementptr inbounds i8, i8* %124, i64 7, !dbg !2268
  store i8 %123, i8* %125, align 1, !dbg !2269
  %126 = load i8*, i8** %9, align 8, !dbg !2270
  %127 = getelementptr inbounds i8, i8* %126, i64 8, !dbg !2271
  %128 = load i8*, i8** %10, align 8, !dbg !2272
  %129 = load i64, i64* %11, align 8, !dbg !2273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %127, i8* align 1 %128, i64 %129, i1 false), !dbg !2274
  %130 = load i8*, i8** %9, align 8, !dbg !2275
  %131 = getelementptr inbounds i8, i8* %130, i64 8, !dbg !2276
  %132 = load i64, i64* %11, align 8, !dbg !2277
  %133 = load i32, i32* %16, align 4, !dbg !2278
  call void @websocket_xmask(i8* %131, i64 %132, i32 %133), !dbg !2279
  %134 = load i64, i64* %11, align 8, !dbg !2280
  %135 = add i64 %134, 8, !dbg !2281
  store i64 %135, i64* %8, align 8, !dbg !2282
  br label %227, !dbg !2282

136:                                              ; preds = %81
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** %9, align 8, !dbg !2283
  %139 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !2284
  store i8 -1, i8* %139, align 1, !dbg !2285
  br label %140, !dbg !2286

140:                                              ; preds = %137
  %141 = load i64, i64* %11, align 8, !dbg !2287
  %142 = lshr i64 %141, 56, !dbg !2287
  %143 = and i64 %142, 255, !dbg !2287
  %144 = trunc i64 %143 to i8, !dbg !2287
  %145 = load i8*, i8** %9, align 8, !dbg !2287
  %146 = getelementptr inbounds i8, i8* %145, i64 2, !dbg !2287
  %147 = getelementptr inbounds i8, i8* %146, i64 0, !dbg !2287
  store i8 %144, i8* %147, align 1, !dbg !2287
  %148 = load i64, i64* %11, align 8, !dbg !2287
  %149 = lshr i64 %148, 48, !dbg !2287
  %150 = and i64 %149, 255, !dbg !2287
  %151 = trunc i64 %150 to i8, !dbg !2287
  %152 = load i8*, i8** %9, align 8, !dbg !2287
  %153 = getelementptr inbounds i8, i8* %152, i64 2, !dbg !2287
  %154 = getelementptr inbounds i8, i8* %153, i64 1, !dbg !2287
  store i8 %151, i8* %154, align 1, !dbg !2287
  %155 = load i64, i64* %11, align 8, !dbg !2287
  %156 = lshr i64 %155, 40, !dbg !2287
  %157 = and i64 %156, 255, !dbg !2287
  %158 = trunc i64 %157 to i8, !dbg !2287
  %159 = load i8*, i8** %9, align 8, !dbg !2287
  %160 = getelementptr inbounds i8, i8* %159, i64 2, !dbg !2287
  %161 = getelementptr inbounds i8, i8* %160, i64 2, !dbg !2287
  store i8 %158, i8* %161, align 1, !dbg !2287
  %162 = load i64, i64* %11, align 8, !dbg !2287
  %163 = lshr i64 %162, 32, !dbg !2287
  %164 = and i64 %163, 255, !dbg !2287
  %165 = trunc i64 %164 to i8, !dbg !2287
  %166 = load i8*, i8** %9, align 8, !dbg !2287
  %167 = getelementptr inbounds i8, i8* %166, i64 2, !dbg !2287
  %168 = getelementptr inbounds i8, i8* %167, i64 3, !dbg !2287
  store i8 %165, i8* %168, align 1, !dbg !2287
  %169 = load i64, i64* %11, align 8, !dbg !2287
  %170 = lshr i64 %169, 24, !dbg !2287
  %171 = and i64 %170, 255, !dbg !2287
  %172 = trunc i64 %171 to i8, !dbg !2287
  %173 = load i8*, i8** %9, align 8, !dbg !2287
  %174 = getelementptr inbounds i8, i8* %173, i64 2, !dbg !2287
  %175 = getelementptr inbounds i8, i8* %174, i64 4, !dbg !2287
  store i8 %172, i8* %175, align 1, !dbg !2287
  %176 = load i64, i64* %11, align 8, !dbg !2287
  %177 = lshr i64 %176, 16, !dbg !2287
  %178 = and i64 %177, 255, !dbg !2287
  %179 = trunc i64 %178 to i8, !dbg !2287
  %180 = load i8*, i8** %9, align 8, !dbg !2287
  %181 = getelementptr inbounds i8, i8* %180, i64 2, !dbg !2287
  %182 = getelementptr inbounds i8, i8* %181, i64 5, !dbg !2287
  store i8 %179, i8* %182, align 1, !dbg !2287
  %183 = load i64, i64* %11, align 8, !dbg !2287
  %184 = lshr i64 %183, 8, !dbg !2287
  %185 = and i64 %184, 255, !dbg !2287
  %186 = trunc i64 %185 to i8, !dbg !2287
  %187 = load i8*, i8** %9, align 8, !dbg !2287
  %188 = getelementptr inbounds i8, i8* %187, i64 2, !dbg !2287
  %189 = getelementptr inbounds i8, i8* %188, i64 6, !dbg !2287
  store i8 %186, i8* %189, align 1, !dbg !2287
  %190 = load i64, i64* %11, align 8, !dbg !2287
  %191 = and i64 %190, 255, !dbg !2287
  %192 = trunc i64 %191 to i8, !dbg !2287
  %193 = load i8*, i8** %9, align 8, !dbg !2287
  %194 = getelementptr inbounds i8, i8* %193, i64 2, !dbg !2287
  %195 = getelementptr inbounds i8, i8* %194, i64 7, !dbg !2287
  store i8 %192, i8* %195, align 1, !dbg !2287
  br label %196, !dbg !2287

196:                                              ; preds = %140
  %197 = bitcast i32* %16 to i8*, !dbg !2289
  %198 = getelementptr inbounds i8, i8* %197, i64 0, !dbg !2289
  %199 = load i8, i8* %198, align 4, !dbg !2289
  %200 = load i8*, i8** %9, align 8, !dbg !2290
  %201 = getelementptr inbounds i8, i8* %200, i64 10, !dbg !2291
  store i8 %199, i8* %201, align 1, !dbg !2292
  %202 = bitcast i32* %16 to i8*, !dbg !2293
  %203 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !2293
  %204 = load i8, i8* %203, align 1, !dbg !2293
  %205 = load i8*, i8** %9, align 8, !dbg !2294
  %206 = getelementptr inbounds i8, i8* %205, i64 11, !dbg !2295
  store i8 %204, i8* %206, align 1, !dbg !2296
  %207 = bitcast i32* %16 to i8*, !dbg !2297
  %208 = getelementptr inbounds i8, i8* %207, i64 2, !dbg !2297
  %209 = load i8, i8* %208, align 2, !dbg !2297
  %210 = load i8*, i8** %9, align 8, !dbg !2298
  %211 = getelementptr inbounds i8, i8* %210, i64 12, !dbg !2299
  store i8 %209, i8* %211, align 1, !dbg !2300
  %212 = bitcast i32* %16 to i8*, !dbg !2301
  %213 = getelementptr inbounds i8, i8* %212, i64 3, !dbg !2301
  %214 = load i8, i8* %213, align 1, !dbg !2301
  %215 = load i8*, i8** %9, align 8, !dbg !2302
  %216 = getelementptr inbounds i8, i8* %215, i64 13, !dbg !2303
  store i8 %214, i8* %216, align 1, !dbg !2304
  %217 = load i8*, i8** %9, align 8, !dbg !2305
  %218 = getelementptr inbounds i8, i8* %217, i64 14, !dbg !2306
  %219 = load i8*, i8** %10, align 8, !dbg !2307
  %220 = load i64, i64* %11, align 8, !dbg !2308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %218, i8* align 1 %219, i64 %220, i1 false), !dbg !2309
  %221 = load i8*, i8** %9, align 8, !dbg !2310
  %222 = getelementptr inbounds i8, i8* %221, i64 14, !dbg !2311
  %223 = load i64, i64* %11, align 8, !dbg !2312
  %224 = load i32, i32* %16, align 4, !dbg !2313
  call void @websocket_xmask(i8* %222, i64 %223, i32 %224), !dbg !2314
  %225 = load i64, i64* %11, align 8, !dbg !2315
  %226 = add i64 %225, 14, !dbg !2316
  store i64 %226, i64* %8, align 8, !dbg !2317
  br label %227, !dbg !2317

227:                                              ; preds = %196, %105, %45
  %228 = load i64, i64* %8, align 8, !dbg !2318
  ret i64 %228, !dbg !2318
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @websocket_server_wrap(i8* %0, i8* %1, i64 %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6) #0 !dbg !2319 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2320, metadata !DIExpression()), !dbg !2321
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2322, metadata !DIExpression()), !dbg !2323
  store i64 %2, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2324, metadata !DIExpression()), !dbg !2325
  store i8 %3, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2326, metadata !DIExpression()), !dbg !2327
  store i8 %4, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !2328, metadata !DIExpression()), !dbg !2329
  store i8 %5, i8* %14, align 1
  call void @llvm.dbg.declare(metadata i8* %14, metadata !2330, metadata !DIExpression()), !dbg !2331
  store i8 %6, i8* %15, align 1
  call void @llvm.dbg.declare(metadata i8* %15, metadata !2332, metadata !DIExpression()), !dbg !2333
  %16 = load i8, i8* %13, align 1, !dbg !2334
  %17 = zext i8 %16 to i32, !dbg !2334
  %18 = icmp ne i32 %17, 0, !dbg !2334
  br i1 %18, label %19, label %22, !dbg !2334

19:                                               ; preds = %7
  %20 = load i8, i8* %12, align 1, !dbg !2335
  %21 = zext i8 %20 to i32, !dbg !2335
  br label %23, !dbg !2334

22:                                               ; preds = %7
  br label %23, !dbg !2334

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ], !dbg !2334
  %25 = and i32 %24, 15, !dbg !2336
  %26 = or i32 0, %25, !dbg !2337
  %27 = load i8, i8* %15, align 1, !dbg !2338
  %28 = zext i8 %27 to i32, !dbg !2338
  %29 = and i32 %28, 7, !dbg !2339
  %30 = shl i32 %29, 4, !dbg !2340
  %31 = or i32 %26, %30, !dbg !2341
  %32 = load i8, i8* %14, align 1, !dbg !2342
  %33 = zext i8 %32 to i32, !dbg !2342
  %34 = and i32 %33, 1, !dbg !2343
  %35 = shl i32 %34, 7, !dbg !2344
  %36 = or i32 %31, %35, !dbg !2345
  %37 = trunc i32 %36 to i8, !dbg !2346
  %38 = load i8*, i8** %9, align 8, !dbg !2347
  %39 = getelementptr inbounds i8, i8* %38, i64 0, !dbg !2348
  store i8 %37, i8* %39, align 1, !dbg !2349
  %40 = load i64, i64* %11, align 8, !dbg !2350
  %41 = icmp ult i64 %40, 126, !dbg !2352
  br i1 %41, label %42, label %53, !dbg !2353

42:                                               ; preds = %23
  %43 = load i64, i64* %11, align 8, !dbg !2354
  %44 = trunc i64 %43 to i8, !dbg !2354
  %45 = load i8*, i8** %9, align 8, !dbg !2356
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !2357
  store i8 %44, i8* %46, align 1, !dbg !2358
  %47 = load i8*, i8** %9, align 8, !dbg !2359
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !2360
  %49 = load i8*, i8** %10, align 8, !dbg !2361
  %50 = load i64, i64* %11, align 8, !dbg !2362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 1 %49, i64 %50, i1 false), !dbg !2363
  %51 = load i64, i64* %11, align 8, !dbg !2364
  %52 = add i64 %51, 2, !dbg !2365
  store i64 %52, i64* %8, align 8, !dbg !2366
  br label %151, !dbg !2366

53:                                               ; preds = %23
  %54 = load i64, i64* %11, align 8, !dbg !2367
  %55 = icmp ult i64 %54, 65536, !dbg !2369
  br i1 %55, label %56, label %84, !dbg !2370

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2371
  %58 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !2373
  store i8 126, i8* %58, align 1, !dbg !2374
  br label %59, !dbg !2375

59:                                               ; preds = %56
  %60 = load i64, i64* %11, align 8, !dbg !2376
  %61 = trunc i64 %60 to i16, !dbg !2376
  %62 = zext i16 %61 to i32, !dbg !2376
  %63 = ashr i32 %62, 8, !dbg !2376
  %64 = and i32 %63, 255, !dbg !2376
  %65 = trunc i32 %64 to i8, !dbg !2376
  %66 = load i8*, i8** %9, align 8, !dbg !2376
  %67 = getelementptr inbounds i8, i8* %66, i64 2, !dbg !2376
  %68 = getelementptr inbounds i8, i8* %67, i64 0, !dbg !2376
  store i8 %65, i8* %68, align 1, !dbg !2376
  %69 = load i64, i64* %11, align 8, !dbg !2376
  %70 = trunc i64 %69 to i16, !dbg !2376
  %71 = zext i16 %70 to i32, !dbg !2376
  %72 = and i32 %71, 255, !dbg !2376
  %73 = trunc i32 %72 to i8, !dbg !2376
  %74 = load i8*, i8** %9, align 8, !dbg !2376
  %75 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !2376
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !2376
  store i8 %73, i8* %76, align 1, !dbg !2376
  br label %77, !dbg !2376

77:                                               ; preds = %59
  %78 = load i8*, i8** %9, align 8, !dbg !2378
  %79 = getelementptr inbounds i8, i8* %78, i64 4, !dbg !2379
  %80 = load i8*, i8** %10, align 8, !dbg !2380
  %81 = load i64, i64* %11, align 8, !dbg !2381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %79, i8* align 1 %80, i64 %81, i1 false), !dbg !2382
  %82 = load i64, i64* %11, align 8, !dbg !2383
  %83 = add i64 %82, 4, !dbg !2384
  store i64 %83, i64* %8, align 8, !dbg !2385
  br label %151, !dbg !2385

84:                                               ; preds = %53
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %9, align 8, !dbg !2386
  %87 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !2387
  store i8 127, i8* %87, align 1, !dbg !2388
  br label %88, !dbg !2389

88:                                               ; preds = %85
  %89 = load i64, i64* %11, align 8, !dbg !2390
  %90 = lshr i64 %89, 56, !dbg !2390
  %91 = and i64 %90, 255, !dbg !2390
  %92 = trunc i64 %91 to i8, !dbg !2390
  %93 = load i8*, i8** %9, align 8, !dbg !2390
  %94 = getelementptr inbounds i8, i8* %93, i64 2, !dbg !2390
  %95 = getelementptr inbounds i8, i8* %94, i64 0, !dbg !2390
  store i8 %92, i8* %95, align 1, !dbg !2390
  %96 = load i64, i64* %11, align 8, !dbg !2390
  %97 = lshr i64 %96, 48, !dbg !2390
  %98 = and i64 %97, 255, !dbg !2390
  %99 = trunc i64 %98 to i8, !dbg !2390
  %100 = load i8*, i8** %9, align 8, !dbg !2390
  %101 = getelementptr inbounds i8, i8* %100, i64 2, !dbg !2390
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !2390
  store i8 %99, i8* %102, align 1, !dbg !2390
  %103 = load i64, i64* %11, align 8, !dbg !2390
  %104 = lshr i64 %103, 40, !dbg !2390
  %105 = and i64 %104, 255, !dbg !2390
  %106 = trunc i64 %105 to i8, !dbg !2390
  %107 = load i8*, i8** %9, align 8, !dbg !2390
  %108 = getelementptr inbounds i8, i8* %107, i64 2, !dbg !2390
  %109 = getelementptr inbounds i8, i8* %108, i64 2, !dbg !2390
  store i8 %106, i8* %109, align 1, !dbg !2390
  %110 = load i64, i64* %11, align 8, !dbg !2390
  %111 = lshr i64 %110, 32, !dbg !2390
  %112 = and i64 %111, 255, !dbg !2390
  %113 = trunc i64 %112 to i8, !dbg !2390
  %114 = load i8*, i8** %9, align 8, !dbg !2390
  %115 = getelementptr inbounds i8, i8* %114, i64 2, !dbg !2390
  %116 = getelementptr inbounds i8, i8* %115, i64 3, !dbg !2390
  store i8 %113, i8* %116, align 1, !dbg !2390
  %117 = load i64, i64* %11, align 8, !dbg !2390
  %118 = lshr i64 %117, 24, !dbg !2390
  %119 = and i64 %118, 255, !dbg !2390
  %120 = trunc i64 %119 to i8, !dbg !2390
  %121 = load i8*, i8** %9, align 8, !dbg !2390
  %122 = getelementptr inbounds i8, i8* %121, i64 2, !dbg !2390
  %123 = getelementptr inbounds i8, i8* %122, i64 4, !dbg !2390
  store i8 %120, i8* %123, align 1, !dbg !2390
  %124 = load i64, i64* %11, align 8, !dbg !2390
  %125 = lshr i64 %124, 16, !dbg !2390
  %126 = and i64 %125, 255, !dbg !2390
  %127 = trunc i64 %126 to i8, !dbg !2390
  %128 = load i8*, i8** %9, align 8, !dbg !2390
  %129 = getelementptr inbounds i8, i8* %128, i64 2, !dbg !2390
  %130 = getelementptr inbounds i8, i8* %129, i64 5, !dbg !2390
  store i8 %127, i8* %130, align 1, !dbg !2390
  %131 = load i64, i64* %11, align 8, !dbg !2390
  %132 = lshr i64 %131, 8, !dbg !2390
  %133 = and i64 %132, 255, !dbg !2390
  %134 = trunc i64 %133 to i8, !dbg !2390
  %135 = load i8*, i8** %9, align 8, !dbg !2390
  %136 = getelementptr inbounds i8, i8* %135, i64 2, !dbg !2390
  %137 = getelementptr inbounds i8, i8* %136, i64 6, !dbg !2390
  store i8 %134, i8* %137, align 1, !dbg !2390
  %138 = load i64, i64* %11, align 8, !dbg !2390
  %139 = and i64 %138, 255, !dbg !2390
  %140 = trunc i64 %139 to i8, !dbg !2390
  %141 = load i8*, i8** %9, align 8, !dbg !2390
  %142 = getelementptr inbounds i8, i8* %141, i64 2, !dbg !2390
  %143 = getelementptr inbounds i8, i8* %142, i64 7, !dbg !2390
  store i8 %140, i8* %143, align 1, !dbg !2390
  br label %144, !dbg !2390

144:                                              ; preds = %88
  %145 = load i8*, i8** %9, align 8, !dbg !2392
  %146 = getelementptr inbounds i8, i8* %145, i64 10, !dbg !2393
  %147 = load i8*, i8** %10, align 8, !dbg !2394
  %148 = load i64, i64* %11, align 8, !dbg !2395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %146, i8* align 1 %147, i64 %148, i1 false), !dbg !2396
  %149 = load i64, i64* %11, align 8, !dbg !2397
  %150 = add i64 %149, 10, !dbg !2398
  store i64 %150, i64* %8, align 8, !dbg !2399
  br label %151, !dbg !2399

151:                                              ; preds = %144, %77, %42
  %152 = load i64, i64* %8, align 8, !dbg !2400
  ret i64 %152, !dbg !2400
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_ws(%struct.ws_s* %0) #0 !dbg !2401 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %2, metadata !2402, metadata !DIExpression()), !dbg !2403
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2404
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 6, !dbg !2406
  %5 = load void (i64, i8*)*, void (i64, i8*)** %4, align 8, !dbg !2406
  %6 = icmp ne void (i64, i8*)* %5, null, !dbg !2404
  br i1 %6, label %7, label %17, !dbg !2407

7:                                                ; preds = %1
  %8 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2408
  %9 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %8, i32 0, i32 6, !dbg !2409
  %10 = load void (i64, i8*)*, void (i64, i8*)** %9, align 8, !dbg !2409
  %11 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2410
  %12 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %11, i32 0, i32 1, !dbg !2411
  %13 = load i64, i64* %12, align 8, !dbg !2411
  %14 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2412
  %15 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %14, i32 0, i32 7, !dbg !2413
  %16 = load i8*, i8** %15, align 8, !dbg !2413
  call void %10(i64 %13, i8* %16), !dbg !2408
  br label %17, !dbg !2408

17:                                               ; preds = %7, %1
  %18 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2414
  %19 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %18, i32 0, i32 13, !dbg !2416
  %20 = load i64, i64* %19, align 8, !dbg !2416
  %21 = icmp ne i64 %20, 0, !dbg !2414
  br i1 %21, label %22, label %26, !dbg !2417

22:                                               ; preds = %17
  %23 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2418
  %24 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %23, i32 0, i32 13, !dbg !2419
  %25 = load i64, i64* %24, align 8, !dbg !2419
  call void @fiobj_free(i64 %25), !dbg !2420
  br label %26, !dbg !2420

26:                                               ; preds = %22, %17
  %27 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2421
  call void @clear_subscriptions(%struct.ws_s* %27), !dbg !2422
  %28 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2423
  %29 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2424
  %30 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %29, i32 0, i32 11, !dbg !2425
  %31 = bitcast %struct.buffer_s* %30 to { i8*, i64 }*, !dbg !2426
  %32 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %31, i32 0, i32 0, !dbg !2426
  %33 = load i8*, i8** %32, align 8, !dbg !2426
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %31, i32 0, i32 1, !dbg !2426
  %35 = load i64, i64* %34, align 8, !dbg !2426
  call void @free_ws_buffer(%struct.ws_s* %28, i8* %33, i64 %35), !dbg !2426
  %36 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2427
  %37 = bitcast %struct.ws_s* %36 to i8*, !dbg !2427
  call void @free(i8* %37) #2, !dbg !2428
  ret void, !dbg !2429
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_free(i64 %0) #0 !dbg !2430 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2433, metadata !DIExpression()), !dbg !2434
  %5 = load i64, i64* %2, align 8, !dbg !2435
  %6 = icmp ne i64 %5, 0, !dbg !2435
  br i1 %6, label %7, label %15, !dbg !2435

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !2435
  %9 = and i64 %8, 1, !dbg !2435
  %10 = icmp eq i64 %9, 0, !dbg !2435
  br i1 %10, label %11, label %15, !dbg !2435

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !2435
  %13 = and i64 %12, 6, !dbg !2435
  %14 = icmp ne i64 %13, 6, !dbg !2435
  br i1 %14, label %16, label %15, !dbg !2437

15:                                               ; preds = %11, %7, %1
  br label %50, !dbg !2438

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8, !dbg !2439
  %18 = and i64 %17, -8, !dbg !2439
  %19 = inttoptr i64 %18 to i8*, !dbg !2439
  %20 = bitcast i8* %19 to %struct.fiobj_object_header_s*, !dbg !2439
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1, !dbg !2439
  store i32 1, i32* %3, align 4, !dbg !2439
  %22 = load i32, i32* %3, align 4, !dbg !2439
  %23 = atomicrmw sub i32* %21, i32 %22 seq_cst, !dbg !2439
  %24 = sub i32 %23, %22, !dbg !2439
  store i32 %24, i32* %4, align 4, !dbg !2439
  %25 = load i32, i32* %4, align 4, !dbg !2439
  %26 = icmp ne i32 %25, 0, !dbg !2439
  br i1 %26, label %27, label %28, !dbg !2441

27:                                               ; preds = %16
  br label %50, !dbg !2442

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8, !dbg !2443
  %30 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %29), !dbg !2443
  %31 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %30, i32 0, i32 5, !dbg !2445
  %32 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %31, align 8, !dbg !2445
  %33 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %32, null, !dbg !2443
  br i1 %33, label %34, label %44, !dbg !2446

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8, !dbg !2447
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35), !dbg !2447
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 2, !dbg !2448
  %38 = load i64 (i64)*, i64 (i64)** %37, align 8, !dbg !2448
  %39 = load i64, i64* %2, align 8, !dbg !2449
  %40 = call i64 %38(i64 %39), !dbg !2447
  %41 = icmp ne i64 %40, 0, !dbg !2447
  br i1 %41, label %42, label %44, !dbg !2450

42:                                               ; preds = %34
  %43 = load i64, i64* %2, align 8, !dbg !2451
  call void @fiobj_free_complex_object(i64 %43), !dbg !2452
  br label %50, !dbg !2452

44:                                               ; preds = %34, %28
  %45 = load i64, i64* %2, align 8, !dbg !2453
  %46 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %45), !dbg !2453
  %47 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %46, i32 0, i32 1, !dbg !2454
  %48 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %47, align 8, !dbg !2454
  %49 = load i64, i64* %2, align 8, !dbg !2455
  call void %48(i64 %49, void (i64, i8*)* null, i8* null), !dbg !2453
  br label %50

50:                                               ; preds = %15, %27, %44, %42
  ret void, !dbg !2456
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_subscriptions(%struct.ws_s* %0) #0 !dbg !2457 {
  %2 = alloca %struct.ws_s*, align 8
  store %struct.ws_s* %0, %struct.ws_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ws_s** %2, metadata !2458, metadata !DIExpression()), !dbg !2459
  %3 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2460
  %4 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %3, i32 0, i32 10, !dbg !2461
  call void @fio_lock(i8* %4), !dbg !2462
  br label %5, !dbg !2463

5:                                                ; preds = %10, %1
  %6 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2464
  %7 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %6, i32 0, i32 9, !dbg !2465
  %8 = call i32 @fio_ls_any(%struct.fio_ls_s* %7), !dbg !2466
  %9 = icmp ne i32 %8, 0, !dbg !2463
  br i1 %9, label %10, label %15, !dbg !2463

10:                                               ; preds = %5
  %11 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2467
  %12 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %11, i32 0, i32 9, !dbg !2469
  %13 = call i8* @fio_ls_pop(%struct.fio_ls_s* %12), !dbg !2470
  %14 = bitcast i8* %13 to %struct.subscription_s*, !dbg !2470
  call void @fio_unsubscribe(%struct.subscription_s* %14), !dbg !2471
  br label %5, !dbg !2463, !llvm.loop !2472

15:                                               ; preds = %5
  %16 = load %struct.ws_s*, %struct.ws_s** %2, align 8, !dbg !2474
  %17 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %16, i32 0, i32 10, !dbg !2475
  %18 = call i32 @fio_unlock(i8* %17), !dbg !2476
  ret void, !dbg !2477
}

declare dso_local void @fiobj_free_complex_object(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ls_any(%struct.fio_ls_s* %0) #0 !dbg !2478 {
  %2 = alloca %struct.fio_ls_s*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %2, metadata !2481, metadata !DIExpression()), !dbg !2482
  %3 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8, !dbg !2483
  %4 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %3, i32 0, i32 1, !dbg !2484
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !2484
  %6 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8, !dbg !2485
  %7 = icmp ne %struct.fio_ls_s* %5, %6, !dbg !2486
  %8 = zext i1 %7 to i32, !dbg !2486
  ret i32 %8, !dbg !2487
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_ls_pop(%struct.fio_ls_s* %0) #0 !dbg !2488 {
  %2 = alloca %struct.fio_ls_s*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %2, metadata !2489, metadata !DIExpression()), !dbg !2490
  %3 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8, !dbg !2491
  %4 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %3, i32 0, i32 0, !dbg !2492
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !2492
  %6 = call i8* @fio_ls_remove(%struct.fio_ls_s* %5), !dbg !2493
  ret i8* %6, !dbg !2494
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_str_utf8_valid(%struct.fio_str_s* %0) #0 !dbg !2495 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_s*, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.fio_str_s* %0, %struct.fio_str_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %3, metadata !2498, metadata !DIExpression()), !dbg !2499
  %7 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2500
  %8 = icmp ne %struct.fio_str_s* %7, null, !dbg !2500
  br i1 %8, label %10, label %9, !dbg !2502

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !2503
  br label %239, !dbg !2503

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %4, metadata !2504, metadata !DIExpression()), !dbg !2505
  %11 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2506
  call void @fio_str_info(%struct.fio_str_info_s* sret %4, %struct.fio_str_s* %11), !dbg !2507
  %12 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1, !dbg !2508
  %13 = load i64, i64* %12, align 8, !dbg !2508
  %14 = icmp ne i64 %13, 0, !dbg !2510
  br i1 %14, label %16, label %15, !dbg !2511

15:                                               ; preds = %10
  store i64 1, i64* %2, align 8, !dbg !2512
  br label %239, !dbg !2512

16:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2513, metadata !DIExpression()), !dbg !2515
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2516
  %18 = load i8*, i8** %17, align 8, !dbg !2516
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1, !dbg !2517
  %20 = load i64, i64* %19, align 8, !dbg !2517
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !2518
  store i8* %21, i8** %5, align 8, !dbg !2515
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2519, metadata !DIExpression()), !dbg !2520
  store i32 0, i32* %6, align 4, !dbg !2520
  br label %22, !dbg !2521

22:                                               ; preds = %225, %16
  br label %23, !dbg !2522

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2524
  %25 = load i8*, i8** %24, align 8, !dbg !2524
  %26 = getelementptr inbounds i8, i8* %25, i64 0, !dbg !2524
  %27 = load i8, i8* %26, align 1, !dbg !2524
  %28 = zext i8 %27 to i32, !dbg !2524
  %29 = ashr i32 %28, 3, !dbg !2524
  %30 = sext i32 %29 to i64, !dbg !2524
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %30, !dbg !2524
  %32 = load i8, i8* %31, align 1, !dbg !2524
  %33 = zext i8 %32 to i32, !dbg !2524
  switch i32 %33, label %214 [
    i32 1, label %34
    i32 2, label %43
    i32 3, label %80
    i32 4, label %137
  ], !dbg !2524

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %36 = load i8*, i8** %35, align 8, !dbg !2526
  %37 = getelementptr inbounds i8, i8* %36, i64 0, !dbg !2526
  %38 = load i8, i8* %37, align 1, !dbg !2526
  %39 = zext i8 %38 to i32, !dbg !2526
  store i32 %39, i32* %6, align 4, !dbg !2526
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %41 = load i8*, i8** %40, align 8, !dbg !2526
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !2526
  store i8* %42, i8** %40, align 8, !dbg !2526
  br label %215, !dbg !2526

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2528
  %45 = load i8*, i8** %44, align 8, !dbg !2528
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !2528
  %47 = load i8*, i8** %5, align 8, !dbg !2528
  %48 = icmp ugt i8* %46, %47, !dbg !2528
  br i1 %48, label %61, label %49, !dbg !2528

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2528
  %51 = load i8*, i8** %50, align 8, !dbg !2528
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !2528
  %53 = load i8, i8* %52, align 1, !dbg !2528
  %54 = zext i8 %53 to i32, !dbg !2528
  %55 = ashr i32 %54, 3, !dbg !2528
  %56 = sext i32 %55 to i64, !dbg !2528
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %56, !dbg !2528
  %58 = load i8, i8* %57, align 1, !dbg !2528
  %59 = zext i8 %58 to i32, !dbg !2528
  %60 = icmp ne i32 %59, 5, !dbg !2528
  br i1 %60, label %61, label %62, !dbg !2526

61:                                               ; preds = %49, %43
  store i32 -1, i32* %6, align 4, !dbg !2530
  br label %215, !dbg !2530

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %64 = load i8*, i8** %63, align 8, !dbg !2526
  %65 = getelementptr inbounds i8, i8* %64, i64 0, !dbg !2526
  %66 = load i8, i8* %65, align 1, !dbg !2526
  %67 = zext i8 %66 to i32, !dbg !2526
  %68 = and i32 %67, 31, !dbg !2526
  %69 = shl i32 %68, 6, !dbg !2526
  %70 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %71 = load i8*, i8** %70, align 8, !dbg !2526
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !2526
  %73 = load i8, i8* %72, align 1, !dbg !2526
  %74 = zext i8 %73 to i32, !dbg !2526
  %75 = and i32 %74, 63, !dbg !2526
  %76 = or i32 %69, %75, !dbg !2526
  store i32 %76, i32* %6, align 4, !dbg !2526
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %78 = load i8*, i8** %77, align 8, !dbg !2526
  %79 = getelementptr inbounds i8, i8* %78, i64 2, !dbg !2526
  store i8* %79, i8** %77, align 8, !dbg !2526
  br label %215, !dbg !2526

80:                                               ; preds = %23
  %81 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2532
  %82 = load i8*, i8** %81, align 8, !dbg !2532
  %83 = getelementptr inbounds i8, i8* %82, i64 3, !dbg !2532
  %84 = load i8*, i8** %5, align 8, !dbg !2532
  %85 = icmp ugt i8* %83, %84, !dbg !2532
  br i1 %85, label %110, label %86, !dbg !2532

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2532
  %88 = load i8*, i8** %87, align 8, !dbg !2532
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !2532
  %90 = load i8, i8* %89, align 1, !dbg !2532
  %91 = zext i8 %90 to i32, !dbg !2532
  %92 = ashr i32 %91, 3, !dbg !2532
  %93 = sext i32 %92 to i64, !dbg !2532
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %93, !dbg !2532
  %95 = load i8, i8* %94, align 1, !dbg !2532
  %96 = zext i8 %95 to i32, !dbg !2532
  %97 = icmp ne i32 %96, 5, !dbg !2532
  br i1 %97, label %110, label %98, !dbg !2532

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2532
  %100 = load i8*, i8** %99, align 8, !dbg !2532
  %101 = getelementptr inbounds i8, i8* %100, i64 2, !dbg !2532
  %102 = load i8, i8* %101, align 1, !dbg !2532
  %103 = zext i8 %102 to i32, !dbg !2532
  %104 = ashr i32 %103, 3, !dbg !2532
  %105 = sext i32 %104 to i64, !dbg !2532
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %105, !dbg !2532
  %107 = load i8, i8* %106, align 1, !dbg !2532
  %108 = zext i8 %107 to i32, !dbg !2532
  %109 = icmp ne i32 %108, 5, !dbg !2532
  br i1 %109, label %110, label %111, !dbg !2526

110:                                              ; preds = %98, %86, %80
  store i32 -1, i32* %6, align 4, !dbg !2534
  br label %215, !dbg !2534

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %113 = load i8*, i8** %112, align 8, !dbg !2526
  %114 = getelementptr inbounds i8, i8* %113, i64 0, !dbg !2526
  %115 = load i8, i8* %114, align 1, !dbg !2526
  %116 = zext i8 %115 to i32, !dbg !2526
  %117 = and i32 %116, 15, !dbg !2526
  %118 = shl i32 %117, 12, !dbg !2526
  %119 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %120 = load i8*, i8** %119, align 8, !dbg !2526
  %121 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !2526
  %122 = load i8, i8* %121, align 1, !dbg !2526
  %123 = zext i8 %122 to i32, !dbg !2526
  %124 = and i32 %123, 63, !dbg !2526
  %125 = shl i32 %124, 6, !dbg !2526
  %126 = or i32 %118, %125, !dbg !2526
  %127 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %128 = load i8*, i8** %127, align 8, !dbg !2526
  %129 = getelementptr inbounds i8, i8* %128, i64 2, !dbg !2526
  %130 = load i8, i8* %129, align 1, !dbg !2526
  %131 = zext i8 %130 to i32, !dbg !2526
  %132 = and i32 %131, 63, !dbg !2526
  %133 = or i32 %126, %132, !dbg !2526
  store i32 %133, i32* %6, align 4, !dbg !2526
  %134 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %135 = load i8*, i8** %134, align 8, !dbg !2526
  %136 = getelementptr inbounds i8, i8* %135, i64 3, !dbg !2526
  store i8* %136, i8** %134, align 8, !dbg !2526
  br label %215, !dbg !2526

137:                                              ; preds = %23
  %138 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2536
  %139 = load i8*, i8** %138, align 8, !dbg !2536
  %140 = getelementptr inbounds i8, i8* %139, i64 4, !dbg !2536
  %141 = load i8*, i8** %5, align 8, !dbg !2536
  %142 = icmp ugt i8* %140, %141, !dbg !2536
  br i1 %142, label %179, label %143, !dbg !2536

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2536
  %145 = load i8*, i8** %144, align 8, !dbg !2536
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !2536
  %147 = load i8, i8* %146, align 1, !dbg !2536
  %148 = zext i8 %147 to i32, !dbg !2536
  %149 = ashr i32 %148, 3, !dbg !2536
  %150 = sext i32 %149 to i64, !dbg !2536
  %151 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %150, !dbg !2536
  %152 = load i8, i8* %151, align 1, !dbg !2536
  %153 = zext i8 %152 to i32, !dbg !2536
  %154 = icmp ne i32 %153, 5, !dbg !2536
  br i1 %154, label %179, label %155, !dbg !2536

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2536
  %157 = load i8*, i8** %156, align 8, !dbg !2536
  %158 = getelementptr inbounds i8, i8* %157, i64 2, !dbg !2536
  %159 = load i8, i8* %158, align 1, !dbg !2536
  %160 = zext i8 %159 to i32, !dbg !2536
  %161 = ashr i32 %160, 3, !dbg !2536
  %162 = sext i32 %161 to i64, !dbg !2536
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %162, !dbg !2536
  %164 = load i8, i8* %163, align 1, !dbg !2536
  %165 = zext i8 %164 to i32, !dbg !2536
  %166 = icmp ne i32 %165, 5, !dbg !2536
  br i1 %166, label %179, label %167, !dbg !2536

167:                                              ; preds = %155
  %168 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2536
  %169 = load i8*, i8** %168, align 8, !dbg !2536
  %170 = getelementptr inbounds i8, i8* %169, i64 3, !dbg !2536
  %171 = load i8, i8* %170, align 1, !dbg !2536
  %172 = zext i8 %171 to i32, !dbg !2536
  %173 = ashr i32 %172, 3, !dbg !2536
  %174 = sext i32 %173 to i64, !dbg !2536
  %175 = getelementptr inbounds [32 x i8], [32 x i8]* @fio_str_utf8_map, i64 0, i64 %174, !dbg !2536
  %176 = load i8, i8* %175, align 1, !dbg !2536
  %177 = zext i8 %176 to i32, !dbg !2536
  %178 = icmp ne i32 %177, 5, !dbg !2536
  br i1 %178, label %179, label %180, !dbg !2526

179:                                              ; preds = %167, %155, %143, %137
  store i32 -1, i32* %6, align 4, !dbg !2538
  br label %215, !dbg !2538

180:                                              ; preds = %167
  %181 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %182 = load i8*, i8** %181, align 8, !dbg !2526
  %183 = getelementptr inbounds i8, i8* %182, i64 0, !dbg !2526
  %184 = load i8, i8* %183, align 1, !dbg !2526
  %185 = zext i8 %184 to i32, !dbg !2526
  %186 = and i32 %185, 7, !dbg !2526
  %187 = shl i32 %186, 18, !dbg !2526
  %188 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %189 = load i8*, i8** %188, align 8, !dbg !2526
  %190 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !2526
  %191 = load i8, i8* %190, align 1, !dbg !2526
  %192 = zext i8 %191 to i32, !dbg !2526
  %193 = and i32 %192, 63, !dbg !2526
  %194 = shl i32 %193, 12, !dbg !2526
  %195 = or i32 %187, %194, !dbg !2526
  %196 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %197 = load i8*, i8** %196, align 8, !dbg !2526
  %198 = getelementptr inbounds i8, i8* %197, i64 2, !dbg !2526
  %199 = load i8, i8* %198, align 1, !dbg !2526
  %200 = zext i8 %199 to i32, !dbg !2526
  %201 = and i32 %200, 63, !dbg !2526
  %202 = shl i32 %201, 6, !dbg !2526
  %203 = or i32 %195, %202, !dbg !2526
  %204 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %205 = load i8*, i8** %204, align 8, !dbg !2526
  %206 = getelementptr inbounds i8, i8* %205, i64 3, !dbg !2526
  %207 = load i8, i8* %206, align 1, !dbg !2526
  %208 = zext i8 %207 to i32, !dbg !2526
  %209 = and i32 %208, 63, !dbg !2526
  %210 = or i32 %203, %209, !dbg !2526
  store i32 %210, i32* %6, align 4, !dbg !2526
  %211 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2526
  %212 = load i8*, i8** %211, align 8, !dbg !2526
  %213 = getelementptr inbounds i8, i8* %212, i64 4, !dbg !2526
  store i8* %213, i8** %211, align 8, !dbg !2526
  br label %215, !dbg !2526

214:                                              ; preds = %23
  store i32 -1, i32* %6, align 4, !dbg !2526
  br label %215, !dbg !2526

215:                                              ; preds = %214, %180, %179, %111, %110, %62, %61, %34
  br label %216, !dbg !2524

216:                                              ; preds = %215
  br label %217, !dbg !2540

217:                                              ; preds = %216
  %218 = load i32, i32* %6, align 4, !dbg !2541
  %219 = icmp sgt i32 %218, 0, !dbg !2542
  br i1 %219, label %220, label %225, !dbg !2543

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2544
  %222 = load i8*, i8** %221, align 8, !dbg !2544
  %223 = load i8*, i8** %5, align 8, !dbg !2545
  %224 = icmp ult i8* %222, %223, !dbg !2546
  br label %225

225:                                              ; preds = %220, %217
  %226 = phi i1 [ false, %217 ], [ %224, %220 ], !dbg !2547
  br i1 %226, label %22, label %227, !dbg !2540, !llvm.loop !2548

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !2550
  %229 = load i8*, i8** %228, align 8, !dbg !2550
  %230 = load i8*, i8** %5, align 8, !dbg !2551
  %231 = icmp eq i8* %229, %230, !dbg !2552
  br i1 %231, label %232, label %235, !dbg !2553

232:                                              ; preds = %227
  %233 = load i32, i32* %6, align 4, !dbg !2554
  %234 = icmp sge i32 %233, 0, !dbg !2555
  br label %235

235:                                              ; preds = %232, %227
  %236 = phi i1 [ false, %227 ], [ %234, %232 ], !dbg !2547
  %237 = zext i1 %236 to i32, !dbg !2553
  %238 = sext i32 %237 to i64, !dbg !2556
  store i64 %238, i64* %2, align 8, !dbg !2557
  br label %239, !dbg !2557

239:                                              ; preds = %235, %15, %9
  %240 = load i64, i64* %2, align 8, !dbg !2558
  ret i64 %240, !dbg !2558
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize(%struct.fio_msg_metadata_s* noalias sret %0, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %1, i8 zeroext %2) #0 !dbg !2559 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %1, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i8 %2, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2566, metadata !DIExpression()), !dbg !2567
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1, !dbg !2568
  %8 = load i64, i64* %7, align 8, !dbg !2568
  %9 = add i64 %8, 10, !dbg !2569
  %10 = call i64 @fiobj_str_buf(i64 %9), !dbg !2570
  store i64 %10, i64* %5, align 8, !dbg !2567
  %11 = load i64, i64* %5, align 8, !dbg !2571
  %12 = load i64, i64* %5, align 8, !dbg !2572
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %6, i64 %12), !dbg !2573
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !2574
  %14 = load i8*, i8** %13, align 8, !dbg !2574
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 2, !dbg !2575
  %16 = load i8*, i8** %15, align 8, !dbg !2575
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1, !dbg !2576
  %18 = load i64, i64* %17, align 8, !dbg !2576
  %19 = load i8, i8* %4, align 1, !dbg !2577
  %20 = call i64 @websocket_server_wrap(i8* %14, i8* %16, i64 %18, i8 zeroext %19, i8 zeroext 1, i8 zeroext 1, i8 zeroext 0), !dbg !2578
  call void @fiobj_str_resize(i64 %11, i64 %20), !dbg !2579
  call void @llvm.dbg.declare(metadata %struct.fio_msg_metadata_s* %0, metadata !2580, metadata !DIExpression()), !dbg !2581
  %21 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 0, !dbg !2582
  store i64 0, i64* %21, align 8, !dbg !2582
  %22 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 1, !dbg !2582
  store void (%struct.fio_msg_s*, i8*)* @websocket_optimize_free, void (%struct.fio_msg_s*, i8*)** %22, align 8, !dbg !2582
  %23 = getelementptr inbounds %struct.fio_msg_metadata_s, %struct.fio_msg_metadata_s* %0, i32 0, i32 2, !dbg !2582
  %24 = load i64, i64* %5, align 8, !dbg !2583
  %25 = inttoptr i64 %24 to i8*, !dbg !2584
  store i8* %25, i8** %23, align 8, !dbg !2582
  ret void, !dbg !2585
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_str_info(%struct.fio_str_info_s* noalias sret %0, %struct.fio_str_s* %1) #0 !dbg !2586 {
  %3 = alloca %struct.fio_str_s*, align 8
  store %struct.fio_str_s* %1, %struct.fio_str_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_s** %3, metadata !2591, metadata !DIExpression()), !dbg !2592
  %4 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2593
  %5 = icmp ne %struct.fio_str_s* %4, null, !dbg !2593
  br i1 %5, label %10, label %6, !dbg !2595

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !2596
  store i64 0, i64* %7, align 8, !dbg !2596
  %8 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !2596
  store i64 0, i64* %8, align 8, !dbg !2596
  %9 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !2596
  store i8* null, i8** %9, align 8, !dbg !2596
  br label %64, !dbg !2597

10:                                               ; preds = %2
  %11 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2598
  %12 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %11, i32 0, i32 1, !dbg !2599
  %13 = load i8, i8* %12, align 4, !dbg !2599
  %14 = zext i8 %13 to i32, !dbg !2598
  %15 = icmp ne i32 %14, 0, !dbg !2598
  br i1 %15, label %21, label %16, !dbg !2600

16:                                               ; preds = %10
  %17 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2601
  %18 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %17, i32 0, i32 7, !dbg !2602
  %19 = load i8*, i8** %18, align 8, !dbg !2602
  %20 = icmp ne i8* %19, null, !dbg !2601
  br i1 %20, label %41, label %21, !dbg !2603

21:                                               ; preds = %16, %10
  %22 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !2604
  %23 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2605
  %24 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %23, i32 0, i32 2, !dbg !2606
  %25 = load i8, i8* %24, align 1, !dbg !2606
  %26 = zext i8 %25 to i32, !dbg !2605
  %27 = icmp ne i32 %26, 0, !dbg !2605
  %28 = zext i1 %27 to i64, !dbg !2605
  %29 = select i1 %27, i64 0, i64 sub (i64 sub (i64 48, i64 ptrtoint (i8* getelementptr inbounds (i8, i8* getelementptr inbounds (%struct.fio_str_s, %struct.fio_str_s* null, i32 0, i32 2), i64 1) to i64)), i64 1), !dbg !2605
  store i64 %29, i64* %22, align 8, !dbg !2604
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !2604
  %31 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2607
  %32 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %31, i32 0, i32 1, !dbg !2608
  %33 = load i8, i8* %32, align 4, !dbg !2608
  %34 = zext i8 %33 to i32, !dbg !2607
  %35 = ashr i32 %34, 1, !dbg !2609
  %36 = sext i32 %35 to i64, !dbg !2610
  store i64 %36, i64* %30, align 8, !dbg !2604
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !2604
  %38 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2611
  %39 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %38, i32 0, i32 2, !dbg !2611
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !2611
  store i8* %40, i8** %37, align 8, !dbg !2604
  br label %63, !dbg !2603

41:                                               ; preds = %16
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !2612
  %43 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2613
  %44 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %43, i32 0, i32 2, !dbg !2614
  %45 = load i8, i8* %44, align 1, !dbg !2614
  %46 = zext i8 %45 to i32, !dbg !2613
  %47 = icmp ne i32 %46, 0, !dbg !2613
  br i1 %47, label %48, label %49, !dbg !2613

48:                                               ; preds = %41
  br label %53, !dbg !2613

49:                                               ; preds = %41
  %50 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2615
  %51 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %50, i32 0, i32 4, !dbg !2616
  %52 = load i64, i64* %51, align 8, !dbg !2616
  br label %53, !dbg !2613

53:                                               ; preds = %49, %48
  %54 = phi i64 [ 0, %48 ], [ %52, %49 ], !dbg !2613
  store i64 %54, i64* %42, align 8, !dbg !2612
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !2612
  %56 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2617
  %57 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %56, i32 0, i32 5, !dbg !2618
  %58 = load i64, i64* %57, align 8, !dbg !2618
  store i64 %58, i64* %55, align 8, !dbg !2612
  %59 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !2612
  %60 = load %struct.fio_str_s*, %struct.fio_str_s** %3, align 8, !dbg !2619
  %61 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %60, i32 0, i32 7, !dbg !2620
  %62 = load i8*, i8** %61, align 8, !dbg !2620
  store i8* %62, i8** %59, align 8, !dbg !2612
  br label %63, !dbg !2603

63:                                               ; preds = %53, %21
  br label %64, !dbg !2621

64:                                               ; preds = %63, %6
  ret void, !dbg !2622
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_optimize_free(%struct.fio_msg_s* %0, i8* %1) #0 !dbg !2623 {
  %3 = alloca %struct.fio_msg_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_msg_s** %3, metadata !2624, metadata !DIExpression()), !dbg !2625
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2626, metadata !DIExpression()), !dbg !2627
  %5 = load i8*, i8** %4, align 8, !dbg !2628
  %6 = ptrtoint i8* %5 to i64, !dbg !2629
  call void @fiobj_free(i64 %6), !dbg !2630
  %7 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2631
  ret void, !dbg !2632
}

declare dso_local %struct.fio_protocol_s* @fio_protocol_try_lock(i64, i32) #5

declare dso_local void @fio_message_defer(%struct.fio_msg_s*) #5

declare dso_local void @fio_protocol_unlock(%struct.fio_protocol_s*, i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_on_pubsub_message_direct_internal(%struct.fio_msg_s* %0, i8 zeroext %1) #0 !dbg !2633 {
  %3 = alloca %struct.fio_msg_s*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.fio_protocol_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_s, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_msg_s** %3, metadata !2636, metadata !DIExpression()), !dbg !2637
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2638, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %5, metadata !2640, metadata !DIExpression()), !dbg !2641
  %9 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2642
  %10 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %9, i32 0, i32 3, !dbg !2643
  %11 = load i8*, i8** %10, align 8, !dbg !2643
  %12 = ptrtoint i8* %11 to i64, !dbg !2644
  %13 = call %struct.fio_protocol_s* @fio_protocol_try_lock(i64 %12, i32 1), !dbg !2645
  store %struct.fio_protocol_s* %13, %struct.fio_protocol_s** %5, align 8, !dbg !2641
  %14 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8, !dbg !2646
  %15 = icmp ne %struct.fio_protocol_s* %14, null, !dbg !2646
  br i1 %15, label %23, label %16, !dbg !2648

16:                                               ; preds = %2
  %17 = call i32* @__errno_location() #9, !dbg !2649
  %18 = load i32, i32* %17, align 4, !dbg !2649
  %19 = icmp eq i32 %18, 9, !dbg !2652
  br i1 %19, label %20, label %21, !dbg !2653

20:                                               ; preds = %16
  br label %101, !dbg !2654

21:                                               ; preds = %16
  %22 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2655
  call void @fio_message_defer(%struct.fio_msg_s* %22), !dbg !2656
  br label %101, !dbg !2657

23:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i64 0, i64* %6, align 8, !dbg !2659
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2660, metadata !DIExpression()), !dbg !2661
  store i64 0, i64* %7, align 8, !dbg !2661
  %24 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8, !dbg !2662
  %25 = bitcast %struct.fio_protocol_s* %24 to %struct.ws_s*, !dbg !2664
  %26 = getelementptr inbounds %struct.ws_s, %struct.ws_s* %25, i32 0, i32 15, !dbg !2664
  %27 = load i8, i8* %26, align 1, !dbg !2664
  %28 = icmp ne i8 %27, 0, !dbg !2665
  br i1 %28, label %57, label %29, !dbg !2666

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1, !dbg !2667
  %31 = zext i8 %30 to i32, !dbg !2667
  switch i32 %31, label %44 [
    i32 0, label %32
    i32 1, label %36
    i32 2, label %40
  ], !dbg !2669

32:                                               ; preds = %29
  %33 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2670
  %34 = call i8* @fio_message_metadata(%struct.fio_msg_s* %33, i64 -34), !dbg !2672
  %35 = ptrtoint i8* %34 to i64, !dbg !2673
  store i64 %35, i64* %7, align 8, !dbg !2674
  br label %45, !dbg !2675

36:                                               ; preds = %29
  %37 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2676
  %38 = call i8* @fio_message_metadata(%struct.fio_msg_s* %37, i64 -33), !dbg !2677
  %39 = ptrtoint i8* %38 to i64, !dbg !2678
  store i64 %39, i64* %7, align 8, !dbg !2679
  br label %45, !dbg !2680

40:                                               ; preds = %29
  %41 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2681
  %42 = call i8* @fio_message_metadata(%struct.fio_msg_s* %41, i64 -32), !dbg !2682
  %43 = ptrtoint i8* %42 to i64, !dbg !2683
  store i64 %43, i64* %7, align 8, !dbg !2684
  br label %45, !dbg !2685

44:                                               ; preds = %29
  br label %45, !dbg !2686

45:                                               ; preds = %44, %40, %36, %32
  %46 = load i64, i64* %7, align 8, !dbg !2687
  %47 = icmp ne i64 %46, 0, !dbg !2687
  br i1 %47, label %48, label %56, !dbg !2689

48:                                               ; preds = %45
  %49 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2690
  %50 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %49, i32 0, i32 3, !dbg !2692
  %51 = load i8*, i8** %50, align 8, !dbg !2692
  %52 = ptrtoint i8* %51 to i64, !dbg !2693
  %53 = load i64, i64* %7, align 8, !dbg !2694
  %54 = call i64 @fiobj_dup(i64 %53), !dbg !2695
  %55 = call i64 @fiobj_send_free(i64 %52, i64 %54), !dbg !2696
  br label %99, !dbg !2697

56:                                               ; preds = %45
  br label %57, !dbg !2698

57:                                               ; preds = %56, %23
  %58 = load i8, i8* %4, align 1, !dbg !2699
  %59 = zext i8 %58 to i32, !dbg !2699
  %60 = icmp eq i32 %59, 2, !dbg !2701
  br i1 %60, label %61, label %88, !dbg !2702

61:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata %struct.fio_str_s* %8, metadata !2703, metadata !DIExpression()), !dbg !2705
  %62 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 0, !dbg !2706
  store volatile i32 0, i32* %62, align 8, !dbg !2706
  %63 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 1, !dbg !2706
  store i8 0, i8* %63, align 4, !dbg !2706
  %64 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 2, !dbg !2706
  store i8 0, i8* %64, align 1, !dbg !2706
  %65 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 3, !dbg !2706
  %66 = bitcast [10 x i8]* %65 to i8*, !dbg !2706
  call void @llvm.memset.p0i8.i64(i8* align 2 %66, i8 0, i64 10, i1 false), !dbg !2706
  %67 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 4, !dbg !2706
  store i64 0, i64* %67, align 8, !dbg !2706
  %68 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 5, !dbg !2706
  %69 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2706
  %70 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %69, i32 0, i32 2, !dbg !2706
  %71 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %70, i32 0, i32 1, !dbg !2706
  %72 = load i64, i64* %71, align 8, !dbg !2706
  store i64 %72, i64* %68, align 8, !dbg !2706
  %73 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 6, !dbg !2706
  store void (i8*)* null, void (i8*)** %73, align 8, !dbg !2706
  %74 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 7, !dbg !2706
  %75 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2706
  %76 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %75, i32 0, i32 2, !dbg !2706
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %76, i32 0, i32 2, !dbg !2706
  %78 = load i8*, i8** %77, align 8, !dbg !2706
  store i8* %78, i8** %74, align 8, !dbg !2706
  %79 = getelementptr inbounds %struct.fio_str_s, %struct.fio_str_s* %8, i32 0, i32 5, !dbg !2707
  %80 = load i64, i64* %79, align 8, !dbg !2707
  %81 = icmp uge i64 %80, 32768, !dbg !2708
  br i1 %81, label %82, label %83, !dbg !2709

82:                                               ; preds = %61
  br label %85, !dbg !2709

83:                                               ; preds = %61
  %84 = call i64 @fio_str_utf8_valid(%struct.fio_str_s* %8), !dbg !2710
  br label %85, !dbg !2709

85:                                               ; preds = %83, %82
  %86 = phi i64 [ 0, %82 ], [ %84, %83 ], !dbg !2709
  %87 = trunc i64 %86 to i8, !dbg !2711
  store i8 %87, i8* %4, align 1, !dbg !2712
  br label %88, !dbg !2713

88:                                               ; preds = %85, %57
  %89 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8, !dbg !2714
  %90 = bitcast %struct.fio_protocol_s* %89 to %struct.ws_s*, !dbg !2715
  %91 = load %struct.fio_msg_s*, %struct.fio_msg_s** %3, align 8, !dbg !2716
  %92 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %91, i32 0, i32 2, !dbg !2717
  %93 = load i8, i8* %4, align 1, !dbg !2718
  %94 = zext i8 %93 to i32, !dbg !2718
  %95 = and i32 %94, 1, !dbg !2719
  %96 = trunc i32 %95 to i8, !dbg !2718
  %97 = call i32 @websocket_write(%struct.ws_s* %90, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %92, i8 zeroext %96), !dbg !2720
  %98 = load i64, i64* %6, align 8, !dbg !2721
  call void @fiobj_free(i64 %98), !dbg !2722
  br label %99, !dbg !2722

99:                                               ; preds = %88, %48
  call void @llvm.dbg.label(metadata !2723), !dbg !2724
  %100 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8, !dbg !2725
  call void @fio_protocol_unlock(%struct.fio_protocol_s* %100, i32 1), !dbg !2726
  br label %101, !dbg !2727

101:                                              ; preds = %99, %21, %20
  ret void, !dbg !2727
}

declare dso_local i8* @fio_message_metadata(%struct.fio_msg_s*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_send_free(i64 %0, i64 %1) #0 !dbg !2728 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  %6 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2732, metadata !DIExpression()), !dbg !2733
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %5, metadata !2736, metadata !DIExpression()), !dbg !2737
  %7 = load i64, i64* %4, align 8, !dbg !2738
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %7), !dbg !2739
  %8 = load i64, i64* %3, align 8, !dbg !2740
  %9 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 0, !dbg !2740
  %10 = bitcast %union.anon* %9 to i8**, !dbg !2740
  %11 = load i64, i64* %4, align 8, !dbg !2740
  %12 = inttoptr i64 %11 to i8*, !dbg !2740
  store i8* %12, i8** %10, align 8, !dbg !2740
  %13 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 1, !dbg !2740
  %14 = bitcast %union.anon.0* %13 to void (i8*)**, !dbg !2740
  store void (i8*)* @fiobj4sock_dealloc, void (i8*)** %14, align 8, !dbg !2740
  %15 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 2, !dbg !2740
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1, !dbg !2740
  %17 = load i64, i64* %16, align 8, !dbg !2740
  store i64 %17, i64* %15, align 8, !dbg !2740
  %18 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 3, !dbg !2740
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2, !dbg !2740
  %20 = load i8*, i8** %19, align 8, !dbg !2740
  %21 = ptrtoint i8* %20 to i64, !dbg !2740
  %22 = load i64, i64* %4, align 8, !dbg !2740
  %23 = sub nsw i64 %21, %22, !dbg !2740
  store i64 %23, i64* %18, align 8, !dbg !2740
  %24 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !2740
  %25 = load i8, i8* %24, align 8, !dbg !2740
  %26 = and i8 %25, -2, !dbg !2740
  store i8 %26, i8* %24, align 8, !dbg !2740
  %27 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !2740
  %28 = load i8, i8* %27, align 8, !dbg !2740
  %29 = and i8 %28, -3, !dbg !2740
  store i8 %29, i8* %27, align 8, !dbg !2740
  %30 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !2740
  %31 = load i8, i8* %30, align 8, !dbg !2740
  %32 = and i8 %31, -5, !dbg !2740
  store i8 %32, i8* %30, align 8, !dbg !2740
  %33 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !2740
  %34 = load i8, i8* %33, align 8, !dbg !2740
  %35 = and i8 %34, -9, !dbg !2740
  store i8 %35, i8* %33, align 8, !dbg !2740
  %36 = call i64 @fio_write2_fn(i64 %8, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %6), !dbg !2740
  ret i64 %36, !dbg !2741
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_dup(i64 %0) #0 !dbg !2742 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2745, metadata !DIExpression()), !dbg !2746
  %5 = load i64, i64* %2, align 8, !dbg !2747
  %6 = icmp ne i64 %5, 0, !dbg !2747
  br i1 %6, label %7, label %25, !dbg !2747

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !2747
  %9 = and i64 %8, 1, !dbg !2747
  %10 = icmp eq i64 %9, 0, !dbg !2747
  br i1 %10, label %11, label %25, !dbg !2747

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !2747
  %13 = and i64 %12, 6, !dbg !2747
  %14 = icmp ne i64 %13, 6, !dbg !2747
  br i1 %14, label %15, label %25, !dbg !2749

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8, !dbg !2750
  %17 = and i64 %16, -8, !dbg !2750
  %18 = inttoptr i64 %17 to i8*, !dbg !2750
  %19 = bitcast i8* %18 to %struct.fiobj_object_header_s*, !dbg !2750
  %20 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %19, i32 0, i32 1, !dbg !2750
  store i32 1, i32* %3, align 4, !dbg !2750
  %21 = load i32, i32* %3, align 4, !dbg !2750
  %22 = atomicrmw add i32* %20, i32 %21 seq_cst, !dbg !2750
  %23 = add i32 %22, %21, !dbg !2750
  store i32 %23, i32* %4, align 4, !dbg !2750
  %24 = load i32, i32* %4, align 4, !dbg !2750
  br label %25, !dbg !2750

25:                                               ; preds = %15, %11, %7, %1
  %26 = load i64, i64* %2, align 8, !dbg !2751
  ret i64 %26, !dbg !2752
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj4sock_dealloc(i8* %0) #0 !dbg !2753 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2754, metadata !DIExpression()), !dbg !2755
  %3 = load i8*, i8** %2, align 8, !dbg !2756
  %4 = ptrtoint i8* %3 to i64, !dbg !2757
  call void @fiobj_free(i64 %4), !dbg !2758
  ret void, !dbg !2759
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_trylock(i8* %0) #0 !dbg !2760 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !2763, !srcloc !2764
  call void @llvm.dbg.declare(metadata i8* %3, metadata !2765, metadata !DIExpression()), !dbg !2766
  %6 = load i8*, i8** %2, align 8, !dbg !2767
  store i8 1, i8* %4, align 1, !dbg !2767
  %7 = load i8, i8* %4, align 1, !dbg !2767
  %8 = atomicrmw volatile xchg i8* %6, i8 %7 seq_cst, !dbg !2767
  store i8 %8, i8* %5, align 1, !dbg !2767
  %9 = load i8, i8* %5, align 1, !dbg !2767
  store volatile i8 %9, i8* %3, align 1, !dbg !2766
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !2768, !srcloc !2769
  %10 = load volatile i8, i8* %3, align 1, !dbg !2770
  %11 = zext i8 %10 to i32, !dbg !2770
  ret i32 %11, !dbg !2771
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_reschedule_thread() #0 !dbg !2772 {
  %1 = alloca %struct.timespec, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec* %1, metadata !2775, metadata !DIExpression()), !dbg !2777
  %2 = bitcast %struct.timespec* %1 to i8*, !dbg !2777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.timespec* @__const.fio_reschedule_thread.tm to i8*), i64 16, i1 false), !dbg !2777
  %3 = call i32 @nanosleep(%struct.timespec* %1, %struct.timespec* null), !dbg !2778
  ret void, !dbg !2779
}

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #3

declare dso_local noalias i8* @fio_malloc(i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

declare dso_local void @fio_free(i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind willreturn }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!179, !180, !181}
!llvm.ident = !{!182}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !6, line: 433, type: !164, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !158, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "websockets.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !{!5, !12, !26}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fio_io_event", file: !6, line: 654, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "FIO_EVENT_ON_DATA", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "FIO_EVENT_ON_READY", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "FIO_EVENT_ON_TIMEOUT", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 50, baseType: !14, size: 8, elements: !15)
!13 = !DIFile(filename: "../include/fiobject.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!16 = !DIEnumerator(name: "FIOBJ_T_NUMBER", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "FIOBJ_T_NULL", value: 6, isUnsigned: true)
!18 = !DIEnumerator(name: "FIOBJ_T_TRUE", value: 22, isUnsigned: true)
!19 = !DIEnumerator(name: "FIOBJ_T_FALSE", value: 38, isUnsigned: true)
!20 = !DIEnumerator(name: "FIOBJ_T_FLOAT", value: 39, isUnsigned: true)
!21 = !DIEnumerator(name: "FIOBJ_T_STRING", value: 40, isUnsigned: true)
!22 = !DIEnumerator(name: "FIOBJ_T_ARRAY", value: 41, isUnsigned: true)
!23 = !DIEnumerator(name: "FIOBJ_T_HASH", value: 42, isUnsigned: true)
!24 = !DIEnumerator(name: "FIOBJ_T_DATA", value: 43, isUnsigned: true)
!25 = !DIEnumerator(name: "FIOBJ_T_UNKNOWN", value: 44, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fio_protocol_lock_e", file: !6, line: 1508, baseType: !7, size: 32, elements: !27)
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "FIO_PR_LOCK_TASK", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "FIO_PR_LOCK_WRITE", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "FIO_PR_LOCK_STATE", value: 2, isUnsigned: true)
!31 = !{!32, !33, !59, !114, !117, !120, !62, !56, !121, !49, !122, !124, !127, !130, !41, !131, !132, !133, !139, !79, !113}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_protocol_s", file: !6, line: 544, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_protocol_s", file: !6, line: 561, size: 384, elements: !36)
!36 = !{!37, !44, !45, !53, !54, !55}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "on_data", scope: !35, file: !6, line: 563, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !33}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !42, line: 87, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!43 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "on_ready", scope: !35, file: !6, line: 565, baseType: !38, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "on_shutdown", scope: !35, file: !6, line: 584, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !41, !33}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !14)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "on_close", scope: !35, file: !6, line: 586, baseType: !38, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !35, file: !6, line: 588, baseType: !38, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !35, file: !6, line: 590, baseType: !56, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 46, baseType: !58)
!57 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!58 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !73, !73, !32}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "ws_s", file: !64, line: 497, baseType: !65)
!64 = !DIFile(filename: "../include/http.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ws_s", file: !3, line: 105, size: 1472, elements: !66)
!66 = !{!67, !68, !69, !81, !85, !86, !87, !91, !92, !93, !103, !106, !111, !112, !115, !116}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !65, file: !3, line: 107, baseType: !34, size: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !65, file: !3, line: 109, baseType: !41, size: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "on_message", scope: !65, file: !3, line: 111, baseType: !70, size: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !62, !73, !49}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !6, line: 287, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !6, line: 283, size: 192, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !74, file: !6, line: 284, baseType: !56, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !74, file: !6, line: 285, baseType: !56, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !74, file: !6, line: 286, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "on_shutdown", scope: !65, file: !3, line: 112, baseType: !82, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !62}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "on_ready", scope: !65, file: !3, line: 113, baseType: !82, size: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "on_open", scope: !65, file: !3, line: 114, baseType: !82, size: 64, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "on_close", scope: !65, file: !3, line: 115, baseType: !88, size: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !41, !32}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !65, file: !3, line: 117, baseType: !32, size: 64, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "max_msg_size", scope: !65, file: !3, line: 119, baseType: !56, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "subscriptions", scope: !65, file: !3, line: 121, baseType: !94, size: 192, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_ls_s", file: !6, line: 3141, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_ls_s", file: !6, line: 3137, size: 192, elements: !96)
!96 = !{!97, !99, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !95, file: !6, line: 3138, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !6, line: 3139, baseType: !98, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !95, file: !6, line: 3140, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sub_lock", scope: !65, file: !3, line: 122, baseType: !104, size: 8, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_lock_i", file: !6, line: 2060, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !65, file: !3, line: 124, baseType: !107, size: 128, offset: 1152)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_s", file: !3, line: 40, size: 128, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !107, file: !3, line: 41, baseType: !32, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !107, file: !3, line: 42, baseType: !56, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !3, line: 126, baseType: !56, size: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !65, file: !3, line: 128, baseType: !113, size: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !13, line: 63, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !42, line: 90, baseType: !58)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "is_text", scope: !65, file: !3, line: 130, baseType: !49, size: 8, offset: 1408)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "is_client", scope: !65, file: !3, line: 132, baseType: !49, size: 8, offset: 1416)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "subscription_s", file: !6, line: 1680, baseType: !119)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "subscription_s", file: !6, line: 1680, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !58)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !126)
!126 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !7)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !13, line: 61, baseType: !12)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_header_s", file: !13, line: 332, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 327, size: 64, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !13, line: 329, baseType: !131, size: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !135, file: !13, line: 331, baseType: !128, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_s", file: !6, line: 3409, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 3390, size: 384, elements: !142)
!142 = !{!143, !145, !146, !147, !151, !152, !153, !157}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !141, file: !6, line: 3392, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "small", scope: !141, file: !6, line: 3394, baseType: !49, size: 8, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !141, file: !6, line: 3395, baseType: !49, size: 8, offset: 40)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !141, file: !6, line: 3399, baseType: !148, size: 80, offset: 48)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 80, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 10)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !141, file: !6, line: 3401, baseType: !122, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !141, file: !6, line: 3402, baseType: !122, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !141, file: !6, line: 3403, baseType: !154, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !32}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !141, file: !6, line: 3404, baseType: !79, size: 64, offset: 320)
!158 = !{!159, !166, !168, !0, !170, !172, !174}
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "generic", scope: !161, file: !3, line: 489, type: !41, isLocal: true, isDefinition: true)
!161 = distinct !DISubprogram(name: "websocket_optimize4broadcasts", scope: !3, file: !3, line: 488, type: !162, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !41, !164}
!164 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!165 = !{}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "text", scope: !161, file: !3, line: 490, type: !41, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "binary", scope: !161, file: !3, line: 491, type: !41, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !6, line: 2433, type: !49, isLocal: false, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !6, line: 2434, type: !49, isLocal: false, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "fio_str_utf8_map", scope: !2, file: !6, line: 4116, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 256, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 32)
!179 = !{i32 7, !"Dwarf Version", i32 4}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{i32 1, !"wchar_size", i32 4}
!182 = !{!"clang version 10.0.0-4ubuntu1 "}
!183 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !6, file: !6, line: 437, type: !184, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186, null}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!188 = !DILocalVariable(name: "format", arg: 1, scope: !183, file: !6, line: 437, type: !186)
!189 = !DILocation(line: 437, column: 28, scope: !183)
!190 = !DILocalVariable(name: "tmp___log", scope: !183, file: !6, line: 438, type: !191)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 16384, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 2048)
!194 = !DILocation(line: 438, column: 8, scope: !183)
!195 = !DILocalVariable(name: "argv", scope: !183, file: !6, line: 439, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !197, line: 52, baseType: !198)
!197 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !199, line: 32, baseType: !200)
!199 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 192, elements: !208)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !203)
!203 = !{!204, !205, !206, !207}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !202, file: !3, line: 439, baseType: !7, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !202, file: !3, line: 439, baseType: !7, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !202, file: !3, line: 439, baseType: !32, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !202, file: !3, line: 439, baseType: !32, size: 64, offset: 128)
!208 = !{!209}
!209 = !DISubrange(count: 1)
!210 = !DILocation(line: 439, column: 11, scope: !183)
!211 = !DILocation(line: 440, column: 3, scope: !183)
!212 = !DILocalVariable(name: "len___log", scope: !183, file: !6, line: 441, type: !164)
!213 = !DILocation(line: 441, column: 7, scope: !183)
!214 = !DILocation(line: 441, column: 29, scope: !183)
!215 = !DILocation(line: 441, column: 66, scope: !183)
!216 = !DILocation(line: 441, column: 74, scope: !183)
!217 = !DILocation(line: 441, column: 19, scope: !183)
!218 = !DILocation(line: 442, column: 3, scope: !183)
!219 = !DILocation(line: 443, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !183, file: !6, line: 443, column: 7)
!221 = !DILocation(line: 443, column: 17, scope: !220)
!222 = !DILocation(line: 443, column: 22, scope: !220)
!223 = !DILocation(line: 443, column: 25, scope: !220)
!224 = !DILocation(line: 443, column: 35, scope: !220)
!225 = !DILocation(line: 443, column: 7, scope: !183)
!226 = !DILocation(line: 444, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !6, line: 444, column: 9)
!228 = distinct !DILexicalBlock(scope: !220, file: !6, line: 443, column: 64)
!229 = !DILocation(line: 444, column: 19, scope: !227)
!230 = !DILocation(line: 444, column: 9, scope: !228)
!231 = !DILocation(line: 445, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !6, line: 444, column: 48)
!233 = !DILocation(line: 445, column: 24, scope: !232)
!234 = !DILocation(line: 445, column: 7, scope: !232)
!235 = !DILocation(line: 447, column: 17, scope: !232)
!236 = !DILocation(line: 448, column: 5, scope: !232)
!237 = !DILocation(line: 449, column: 65, scope: !238)
!238 = distinct !DILexicalBlock(scope: !227, file: !6, line: 448, column: 12)
!239 = !DILocation(line: 449, column: 7, scope: !238)
!240 = !DILocation(line: 450, column: 7, scope: !238)
!241 = !DILocation(line: 452, column: 3, scope: !228)
!242 = !DILocation(line: 453, column: 22, scope: !183)
!243 = !DILocation(line: 453, column: 3, scope: !183)
!244 = !DILocation(line: 453, column: 26, scope: !183)
!245 = !DILocation(line: 454, column: 13, scope: !183)
!246 = !DILocation(line: 454, column: 3, scope: !183)
!247 = !DILocation(line: 454, column: 24, scope: !183)
!248 = !DILocation(line: 455, column: 10, scope: !183)
!249 = !DILocation(line: 455, column: 21, scope: !183)
!250 = !DILocation(line: 455, column: 35, scope: !183)
!251 = !DILocation(line: 455, column: 3, scope: !183)
!252 = !DILocation(line: 456, column: 1, scope: !183)
!253 = distinct !DISubprogram(name: "create_ws_buffer", scope: !3, file: !3, line: 69, type: !254, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!254 = !DISubroutineType(types: !255)
!255 = !{!107, !62}
!256 = !DILocalVariable(name: "owner", arg: 1, scope: !253, file: !3, line: 69, type: !62)
!257 = !DILocation(line: 69, column: 40, scope: !253)
!258 = !DILocation(line: 70, column: 10, scope: !253)
!259 = !DILocalVariable(name: "buff", scope: !253, file: !3, line: 71, type: !107)
!260 = !DILocation(line: 71, column: 19, scope: !253)
!261 = !DILocation(line: 72, column: 8, scope: !253)
!262 = !DILocation(line: 72, column: 13, scope: !253)
!263 = !DILocation(line: 73, column: 27, scope: !253)
!264 = !DILocation(line: 73, column: 15, scope: !253)
!265 = !DILocation(line: 73, column: 8, scope: !253)
!266 = !DILocation(line: 73, column: 13, scope: !253)
!267 = !DILocation(line: 74, column: 3, scope: !253)
!268 = distinct !DISubprogram(name: "resize_ws_buffer", scope: !3, file: !3, line: 77, type: !269, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!269 = !DISubroutineType(types: !270)
!270 = !{!107, !62, !107}
!271 = !DILocalVariable(name: "owner", arg: 1, scope: !268, file: !3, line: 77, type: !62)
!272 = !DILocation(line: 77, column: 40, scope: !268)
!273 = !DILocalVariable(name: "buff", arg: 2, scope: !268, file: !3, line: 77, type: !107)
!274 = !DILocation(line: 77, column: 63, scope: !268)
!275 = !DILocation(line: 78, column: 15, scope: !268)
!276 = !DILocation(line: 78, column: 8, scope: !268)
!277 = !DILocation(line: 78, column: 13, scope: !268)
!278 = !DILocalVariable(name: "tmp", scope: !268, file: !3, line: 79, type: !32)
!279 = !DILocation(line: 79, column: 9, scope: !268)
!280 = !DILocation(line: 79, column: 28, scope: !268)
!281 = !DILocation(line: 79, column: 39, scope: !268)
!282 = !DILocation(line: 79, column: 15, scope: !268)
!283 = !DILocation(line: 80, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !268, file: !3, line: 80, column: 7)
!285 = !DILocation(line: 80, column: 7, scope: !268)
!286 = !DILocation(line: 81, column: 20, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !3, line: 80, column: 13)
!288 = !DILocation(line: 81, column: 5, scope: !287)
!289 = !DILocation(line: 82, column: 10, scope: !287)
!290 = !DILocation(line: 82, column: 15, scope: !287)
!291 = !DILocation(line: 83, column: 10, scope: !287)
!292 = !DILocation(line: 83, column: 15, scope: !287)
!293 = !DILocation(line: 84, column: 3, scope: !287)
!294 = !DILocation(line: 85, column: 15, scope: !268)
!295 = !DILocation(line: 85, column: 8, scope: !268)
!296 = !DILocation(line: 85, column: 13, scope: !268)
!297 = !DILocation(line: 86, column: 10, scope: !268)
!298 = !DILocation(line: 86, column: 3, scope: !268)
!299 = distinct !DISubprogram(name: "free_ws_buffer", scope: !3, file: !3, line: 88, type: !300, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !62, !107}
!302 = !DILocalVariable(name: "owner", arg: 1, scope: !299, file: !3, line: 88, type: !62)
!303 = !DILocation(line: 88, column: 27, scope: !299)
!304 = !DILocalVariable(name: "buff", arg: 2, scope: !299, file: !3, line: 88, type: !107)
!305 = !DILocation(line: 88, column: 50, scope: !299)
!306 = !DILocation(line: 89, column: 10, scope: !299)
!307 = !DILocation(line: 90, column: 13, scope: !299)
!308 = !DILocation(line: 90, column: 3, scope: !299)
!309 = !DILocation(line: 91, column: 1, scope: !299)
!310 = distinct !DISubprogram(name: "websocket_attach", scope: !3, file: !3, line: 330, type: !311, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !41, !313, !375, !32, !56}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_settings_s", file: !64, line: 62, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http_settings_s", file: !64, line: 318, size: 1024, elements: !316)
!316 = !{!317, !350, !354, !355, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "on_request", scope: !315, file: !64, line: 320, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_s", file: !64, line: 121, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 74, size: 1024, elements: !324)
!324 = !{!325, !331, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !323, file: !64, line: 83, baseType: !326, size: 192)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !323, file: !64, line: 76, size: 192, elements: !327)
!327 = !{!328, !329, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vtbl", scope: !326, file: !64, line: 78, baseType: !32, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !326, file: !64, line: 80, baseType: !114, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "out_headers", scope: !326, file: !64, line: 82, baseType: !113, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "received_at", scope: !323, file: !64, line: 85, baseType: !332, size: 128, offset: 192)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !333, line: 10, size: 128, elements: !334)
!333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!334 = !{!335, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !332, file: !333, line: 12, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !52, line: 160, baseType: !43)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !332, file: !333, line: 16, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !52, line: 196, baseType: !43)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !323, file: !64, line: 87, baseType: !113, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "status_str", scope: !323, file: !64, line: 89, baseType: !113, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !323, file: !64, line: 91, baseType: !113, size: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !323, file: !64, line: 96, baseType: !114, size: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !323, file: !64, line: 98, baseType: !113, size: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !323, file: !64, line: 100, baseType: !113, size: 64, offset: 640)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !323, file: !64, line: 103, baseType: !113, size: 64, offset: 704)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !323, file: !64, line: 108, baseType: !113, size: 64, offset: 768)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !323, file: !64, line: 113, baseType: !113, size: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !323, file: !64, line: 118, baseType: !113, size: 64, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !323, file: !64, line: 120, baseType: !32, size: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "on_upgrade", scope: !315, file: !64, line: 326, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !321, !79, !56}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "on_response", scope: !315, file: !64, line: 328, baseType: !318, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "on_finish", scope: !315, file: !64, line: 330, baseType: !356, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !315, file: !64, line: 332, baseType: !32, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "public_folder", scope: !315, file: !64, line: 339, baseType: !186, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "public_folder_length", scope: !315, file: !64, line: 343, baseType: !56, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "max_header_size", scope: !315, file: !64, line: 353, baseType: !56, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "max_body_size", scope: !315, file: !64, line: 359, baseType: !56, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "max_clients", scope: !315, file: !64, line: 372, baseType: !41, size: 64, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !315, file: !64, line: 374, baseType: !32, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !315, file: !64, line: 376, baseType: !41, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !315, file: !64, line: 378, baseType: !41, size: 64, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !315, file: !64, line: 380, baseType: !41, size: 64, offset: 832)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ws_max_msg_size", scope: !315, file: !64, line: 385, baseType: !56, size: 64, offset: 896)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !315, file: !64, line: 393, baseType: !49, size: 8, offset: 960)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ws_timeout", scope: !315, file: !64, line: 401, baseType: !49, size: 8, offset: 968)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !315, file: !64, line: 403, baseType: !49, size: 8, offset: 976)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "is_client", scope: !315, file: !64, line: 405, baseType: !49, size: 8, offset: 984)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "websocket_settings_s", file: !64, line: 546, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 503, size: 384, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "on_message", scope: !377, file: !64, line: 512, baseType: !70, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "on_open", scope: !377, file: !64, line: 518, baseType: !82, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "on_ready", scope: !377, file: !64, line: 525, baseType: !82, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "on_shutdown", scope: !377, file: !64, line: 531, baseType: !82, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "on_close", scope: !377, file: !64, line: 543, baseType: !88, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !377, file: !64, line: 545, baseType: !32, size: 64, offset: 320)
!385 = !DILocalVariable(name: "uuid", arg: 1, scope: !310, file: !3, line: 330, type: !41)
!386 = !DILocation(line: 330, column: 32, scope: !310)
!387 = !DILocalVariable(name: "http_settings", arg: 2, scope: !310, file: !3, line: 330, type: !313)
!388 = !DILocation(line: 330, column: 55, scope: !310)
!389 = !DILocalVariable(name: "args", arg: 3, scope: !310, file: !3, line: 331, type: !375)
!390 = !DILocation(line: 331, column: 45, scope: !310)
!391 = !DILocalVariable(name: "data", arg: 4, scope: !310, file: !3, line: 331, type: !32)
!392 = !DILocation(line: 331, column: 57, scope: !310)
!393 = !DILocalVariable(name: "length", arg: 5, scope: !310, file: !3, line: 331, type: !56)
!394 = !DILocation(line: 331, column: 70, scope: !310)
!395 = !DILocalVariable(name: "ws", scope: !310, file: !3, line: 332, type: !62)
!396 = !DILocation(line: 332, column: 9, scope: !310)
!397 = !DILocation(line: 332, column: 28, scope: !310)
!398 = !DILocation(line: 332, column: 14, scope: !310)
!399 = !DILocation(line: 333, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !310, file: !3, line: 333, column: 3)
!401 = !DILocation(line: 333, column: 3, scope: !310)
!402 = !DILocation(line: 333, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 333, column: 3)
!404 = !DILocation(line: 333, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 333, column: 3)
!406 = distinct !DILexicalBlock(scope: !403, file: !3, line: 333, column: 3)
!407 = !DILocation(line: 333, column: 3, scope: !406)
!408 = !DILocation(line: 333, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 333, column: 3)
!410 = !DILocation(line: 335, column: 3, scope: !310)
!411 = !DILocation(line: 335, column: 7, scope: !310)
!412 = !DILocation(line: 335, column: 33, scope: !310)
!413 = !DILocation(line: 335, column: 16, scope: !310)
!414 = !DILocation(line: 337, column: 17, scope: !310)
!415 = !DILocation(line: 337, column: 23, scope: !310)
!416 = !DILocation(line: 337, column: 3, scope: !310)
!417 = !DILocation(line: 337, column: 7, scope: !310)
!418 = !DILocation(line: 337, column: 15, scope: !310)
!419 = !DILocation(line: 338, column: 18, scope: !310)
!420 = !DILocation(line: 338, column: 24, scope: !310)
!421 = !DILocation(line: 338, column: 3, scope: !310)
!422 = !DILocation(line: 338, column: 7, scope: !310)
!423 = !DILocation(line: 338, column: 16, scope: !310)
!424 = !DILocation(line: 339, column: 20, scope: !310)
!425 = !DILocation(line: 339, column: 26, scope: !310)
!426 = !DILocation(line: 339, column: 3, scope: !310)
!427 = !DILocation(line: 339, column: 7, scope: !310)
!428 = !DILocation(line: 339, column: 18, scope: !310)
!429 = !DILocation(line: 340, column: 18, scope: !310)
!430 = !DILocation(line: 340, column: 24, scope: !310)
!431 = !DILocation(line: 340, column: 3, scope: !310)
!432 = !DILocation(line: 340, column: 7, scope: !310)
!433 = !DILocation(line: 340, column: 16, scope: !310)
!434 = !DILocation(line: 341, column: 21, scope: !310)
!435 = !DILocation(line: 341, column: 27, scope: !310)
!436 = !DILocation(line: 341, column: 3, scope: !310)
!437 = !DILocation(line: 341, column: 7, scope: !310)
!438 = !DILocation(line: 341, column: 19, scope: !310)
!439 = !DILocation(line: 343, column: 15, scope: !310)
!440 = !DILocation(line: 343, column: 21, scope: !310)
!441 = !DILocation(line: 343, column: 3, scope: !310)
!442 = !DILocation(line: 343, column: 7, scope: !310)
!443 = !DILocation(line: 343, column: 13, scope: !310)
!444 = !DILocation(line: 344, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !310, file: !3, line: 344, column: 7)
!446 = !DILocation(line: 344, column: 7, scope: !310)
!447 = !DILocation(line: 346, column: 21, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !3, line: 344, column: 22)
!449 = !DILocation(line: 346, column: 36, scope: !448)
!450 = !DILocation(line: 346, column: 5, scope: !448)
!451 = !DILocation(line: 346, column: 9, scope: !448)
!452 = !DILocation(line: 346, column: 19, scope: !448)
!453 = !DILocation(line: 348, column: 24, scope: !448)
!454 = !DILocation(line: 348, column: 39, scope: !448)
!455 = !DILocation(line: 348, column: 5, scope: !448)
!456 = !DILocation(line: 348, column: 9, scope: !448)
!457 = !DILocation(line: 348, column: 22, scope: !448)
!458 = !DILocation(line: 350, column: 21, scope: !448)
!459 = !DILocation(line: 350, column: 27, scope: !448)
!460 = !DILocation(line: 350, column: 42, scope: !448)
!461 = !DILocation(line: 350, column: 5, scope: !448)
!462 = !DILocation(line: 351, column: 3, scope: !448)
!463 = !DILocation(line: 352, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !445, file: !3, line: 351, column: 10)
!465 = !DILocation(line: 352, column: 9, scope: !464)
!466 = !DILocation(line: 352, column: 22, scope: !464)
!467 = !DILocation(line: 353, column: 21, scope: !464)
!468 = !DILocation(line: 353, column: 5, scope: !464)
!469 = !DILocation(line: 356, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !310, file: !3, line: 356, column: 7)
!471 = !DILocation(line: 356, column: 12, scope: !470)
!472 = !DILocation(line: 356, column: 15, scope: !470)
!473 = !DILocation(line: 356, column: 7, scope: !310)
!474 = !DILocation(line: 357, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 357, column: 9)
!476 = distinct !DILexicalBlock(scope: !470, file: !3, line: 356, column: 23)
!477 = !DILocation(line: 357, column: 18, scope: !475)
!478 = !DILocation(line: 357, column: 22, scope: !475)
!479 = !DILocation(line: 357, column: 29, scope: !475)
!480 = !DILocation(line: 357, column: 16, scope: !475)
!481 = !DILocation(line: 357, column: 9, scope: !476)
!482 = !DILocation(line: 358, column: 25, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !3, line: 357, column: 35)
!484 = !DILocation(line: 358, column: 7, scope: !483)
!485 = !DILocation(line: 358, column: 11, scope: !483)
!486 = !DILocation(line: 358, column: 18, scope: !483)
!487 = !DILocation(line: 358, column: 23, scope: !483)
!488 = !DILocation(line: 359, column: 7, scope: !483)
!489 = !DILocation(line: 359, column: 11, scope: !483)
!490 = !DILocation(line: 359, column: 37, scope: !483)
!491 = !DILocation(line: 359, column: 41, scope: !483)
!492 = !DILocation(line: 359, column: 45, scope: !483)
!493 = !DILocation(line: 359, column: 20, scope: !483)
!494 = !DILocation(line: 360, column: 12, scope: !495)
!495 = distinct !DILexicalBlock(scope: !483, file: !3, line: 360, column: 11)
!496 = !DILocation(line: 360, column: 16, scope: !495)
!497 = !DILocation(line: 360, column: 23, scope: !495)
!498 = !DILocation(line: 360, column: 11, scope: !483)
!499 = !DILocation(line: 362, column: 20, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !3, line: 360, column: 29)
!501 = !DILocation(line: 362, column: 44, scope: !500)
!502 = !DILocation(line: 362, column: 26, scope: !500)
!503 = !DILocation(line: 362, column: 9, scope: !500)
!504 = !DILocation(line: 363, column: 25, scope: !500)
!505 = !DILocation(line: 363, column: 9, scope: !500)
!506 = !DILocation(line: 364, column: 9, scope: !500)
!507 = !DILocation(line: 366, column: 5, scope: !483)
!508 = !DILocation(line: 367, column: 12, scope: !476)
!509 = !DILocation(line: 367, column: 16, scope: !476)
!510 = !DILocation(line: 367, column: 23, scope: !476)
!511 = !DILocation(line: 367, column: 29, scope: !476)
!512 = !DILocation(line: 367, column: 35, scope: !476)
!513 = !DILocation(line: 367, column: 5, scope: !476)
!514 = !DILocation(line: 368, column: 18, scope: !476)
!515 = !DILocation(line: 368, column: 5, scope: !476)
!516 = !DILocation(line: 368, column: 9, scope: !476)
!517 = !DILocation(line: 368, column: 16, scope: !476)
!518 = !DILocation(line: 369, column: 3, scope: !476)
!519 = !DILocation(line: 371, column: 14, scope: !310)
!520 = !DILocation(line: 371, column: 38, scope: !310)
!521 = !DILocation(line: 371, column: 20, scope: !310)
!522 = !DILocation(line: 371, column: 3, scope: !310)
!523 = !DILocation(line: 373, column: 19, scope: !310)
!524 = !DILocation(line: 373, column: 3, scope: !310)
!525 = !DILocation(line: 374, column: 1, scope: !310)
!526 = distinct !DISubprogram(name: "new_websocket", scope: !3, file: !3, line: 305, type: !527, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!527 = !DISubroutineType(types: !528)
!528 = !{!62, !41}
!529 = !DILocalVariable(name: "uuid", arg: 1, scope: !526, file: !3, line: 305, type: !41)
!530 = !DILocation(line: 305, column: 37, scope: !526)
!531 = !DILocalVariable(name: "ws", scope: !526, file: !3, line: 307, type: !62)
!532 = !DILocation(line: 307, column: 9, scope: !526)
!533 = !DILocation(line: 307, column: 14, scope: !526)
!534 = !DILocation(line: 308, column: 4, scope: !526)
!535 = !DILocation(line: 308, column: 15, scope: !526)
!536 = !DILocation(line: 309, column: 16, scope: !526)
!537 = !DILocation(line: 316, column: 13, scope: !526)
!538 = !DILocation(line: 314, column: 24, scope: !526)
!539 = !DILocation(line: 308, column: 9, scope: !526)
!540 = !DILocation(line: 318, column: 10, scope: !526)
!541 = !DILocation(line: 318, column: 3, scope: !526)
!542 = distinct !DISubprogram(name: "websocket_close", scope: !3, file: !3, line: 726, type: !83, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!543 = !DILocalVariable(name: "ws", arg: 1, scope: !542, file: !3, line: 726, type: !62)
!544 = !DILocation(line: 726, column: 28, scope: !542)
!545 = !DILocation(line: 727, column: 3, scope: !542)
!546 = !DILocation(line: 729, column: 13, scope: !542)
!547 = !DILocation(line: 729, column: 17, scope: !542)
!548 = !DILocation(line: 729, column: 3, scope: !542)
!549 = !DILocation(line: 730, column: 3, scope: !542)
!550 = !DILocalVariable(name: "type", arg: 1, scope: !161, file: !3, line: 488, type: !41)
!551 = !DILocation(line: 488, column: 45, scope: !161)
!552 = !DILocalVariable(name: "enable", arg: 2, scope: !161, file: !3, line: 488, type: !164)
!553 = !DILocation(line: 488, column: 55, scope: !161)
!554 = !DILocalVariable(name: "callback", scope: !161, file: !3, line: 492, type: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!558, !73, !73, !49}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_msg_metadata_s", file: !6, line: 1878, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_msg_metadata_s", file: !6, line: 1879, size: 192, elements: !560)
!560 = !{!561, !562, !579}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !559, file: !6, line: 1885, baseType: !41, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "on_finish", scope: !559, file: !6, line: 1891, baseType: !563, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !566, !32}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_msg_s", file: !6, line: 1720, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_msg_s", file: !6, line: 1697, size: 640, elements: !569)
!569 = !{!570, !574, !575, !576, !577, !578}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !568, file: !6, line: 1699, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !572, line: 26, baseType: !573)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !52, line: 41, baseType: !164)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !568, file: !6, line: 1706, baseType: !73, size: 192, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !568, file: !6, line: 1713, baseType: !73, size: 192, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "udata1", scope: !568, file: !6, line: 1715, baseType: !32, size: 64, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "udata2", scope: !568, file: !6, line: 1717, baseType: !32, size: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "is_json", scope: !568, file: !6, line: 1719, baseType: !49, size: 8, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !559, file: !6, line: 1893, baseType: !32, size: 64, offset: 128)
!580 = !DILocation(line: 492, column: 24, scope: !161)
!581 = !DILocalVariable(name: "counter", scope: !161, file: !3, line: 493, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!583 = !DILocation(line: 493, column: 13, scope: !161)
!584 = !DILocation(line: 494, column: 16, scope: !161)
!585 = !DILocation(line: 494, column: 14, scope: !161)
!586 = !DILocation(line: 494, column: 3, scope: !161)
!587 = !DILocation(line: 496, column: 13, scope: !588)
!588 = distinct !DILexicalBlock(scope: !161, file: !3, line: 494, column: 23)
!589 = !DILocation(line: 497, column: 14, scope: !588)
!590 = !DILocation(line: 498, column: 5, scope: !588)
!591 = !DILocation(line: 500, column: 13, scope: !588)
!592 = !DILocation(line: 501, column: 14, scope: !588)
!593 = !DILocation(line: 502, column: 5, scope: !588)
!594 = !DILocation(line: 504, column: 13, scope: !588)
!595 = !DILocation(line: 505, column: 14, scope: !588)
!596 = !DILocation(line: 506, column: 5, scope: !588)
!597 = !DILocation(line: 508, column: 5, scope: !588)
!598 = !DILocation(line: 510, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !161, file: !3, line: 510, column: 7)
!600 = !DILocation(line: 510, column: 7, scope: !161)
!601 = !DILocation(line: 511, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 511, column: 9)
!603 = distinct !DILexicalBlock(scope: !599, file: !3, line: 510, column: 15)
!604 = !DILocation(line: 511, column: 36, scope: !602)
!605 = !DILocation(line: 511, column: 9, scope: !603)
!606 = !DILocation(line: 512, column: 41, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !3, line: 511, column: 42)
!608 = !DILocation(line: 512, column: 7, scope: !607)
!609 = !DILocation(line: 513, column: 5, scope: !607)
!610 = !DILocation(line: 514, column: 3, scope: !603)
!611 = !DILocation(line: 515, column: 9, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 515, column: 9)
!613 = distinct !DILexicalBlock(scope: !599, file: !3, line: 514, column: 10)
!614 = !DILocation(line: 515, column: 36, scope: !612)
!615 = !DILocation(line: 515, column: 9, scope: !613)
!616 = !DILocation(line: 516, column: 41, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !3, line: 515, column: 42)
!618 = !DILocation(line: 516, column: 7, scope: !617)
!619 = !DILocation(line: 517, column: 5, scope: !617)
!620 = !DILocation(line: 519, column: 1, scope: !161)
!621 = distinct !DISubprogram(name: "websocket_optimize_generic", scope: !3, file: !3, line: 426, type: !556, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!622 = !DILocalVariable(name: "ch", arg: 1, scope: !621, file: !3, line: 426, type: !73)
!623 = !DILocation(line: 426, column: 69, scope: !621)
!624 = !DILocalVariable(name: "msg", arg: 2, scope: !621, file: !3, line: 427, type: !73)
!625 = !DILocation(line: 427, column: 69, scope: !621)
!626 = !DILocalVariable(name: "is_json", arg: 3, scope: !621, file: !3, line: 428, type: !49)
!627 = !DILocation(line: 428, column: 62, scope: !621)
!628 = !DILocalVariable(name: "tmp", scope: !621, file: !3, line: 429, type: !140)
!629 = !DILocation(line: 429, column: 13, scope: !621)
!630 = !DILocation(line: 429, column: 19, scope: !621)
!631 = !DILocation(line: 430, column: 7, scope: !621)
!632 = !DILocation(line: 430, column: 15, scope: !621)
!633 = !DILocalVariable(name: "opcode", scope: !621, file: !3, line: 431, type: !14)
!634 = !DILocation(line: 431, column: 17, scope: !621)
!635 = !DILocation(line: 432, column: 11, scope: !636)
!636 = distinct !DILexicalBlock(scope: !621, file: !3, line: 432, column: 7)
!637 = !DILocation(line: 432, column: 15, scope: !636)
!638 = !DILocation(line: 432, column: 28, scope: !636)
!639 = !DILocation(line: 432, column: 31, scope: !636)
!640 = !DILocation(line: 432, column: 7, scope: !621)
!641 = !DILocation(line: 433, column: 12, scope: !642)
!642 = distinct !DILexicalBlock(scope: !636, file: !3, line: 432, column: 57)
!643 = !DILocation(line: 434, column: 3, scope: !642)
!644 = !DILocalVariable(name: "ret", scope: !621, file: !3, line: 435, type: !558)
!645 = !DILocation(line: 435, column: 22, scope: !621)
!646 = !DILocation(line: 435, column: 52, scope: !621)
!647 = !DILocation(line: 435, column: 28, scope: !621)
!648 = !DILocation(line: 436, column: 7, scope: !621)
!649 = !DILocation(line: 436, column: 15, scope: !621)
!650 = !DILocation(line: 437, column: 3, scope: !621)
!651 = distinct !DISubprogram(name: "websocket_optimize_text", scope: !3, file: !3, line: 442, type: !556, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!652 = !DILocalVariable(name: "ch", arg: 1, scope: !651, file: !3, line: 442, type: !73)
!653 = !DILocation(line: 442, column: 66, scope: !651)
!654 = !DILocalVariable(name: "msg", arg: 2, scope: !651, file: !3, line: 443, type: !73)
!655 = !DILocation(line: 443, column: 66, scope: !651)
!656 = !DILocalVariable(name: "is_json", arg: 3, scope: !651, file: !3, line: 444, type: !49)
!657 = !DILocation(line: 444, column: 59, scope: !651)
!658 = !DILocalVariable(name: "ret", scope: !651, file: !3, line: 445, type: !558)
!659 = !DILocation(line: 445, column: 22, scope: !651)
!660 = !DILocation(line: 445, column: 28, scope: !651)
!661 = !DILocation(line: 446, column: 7, scope: !651)
!662 = !DILocation(line: 446, column: 15, scope: !651)
!663 = !DILocation(line: 447, column: 3, scope: !651)
!664 = distinct !DISubprogram(name: "websocket_optimize_binary", scope: !3, file: !3, line: 452, type: !556, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!665 = !DILocalVariable(name: "ch", arg: 1, scope: !664, file: !3, line: 452, type: !73)
!666 = !DILocation(line: 452, column: 68, scope: !664)
!667 = !DILocalVariable(name: "msg", arg: 2, scope: !664, file: !3, line: 453, type: !73)
!668 = !DILocation(line: 453, column: 68, scope: !664)
!669 = !DILocalVariable(name: "is_json", arg: 3, scope: !664, file: !3, line: 454, type: !49)
!670 = !DILocation(line: 454, column: 61, scope: !664)
!671 = !DILocalVariable(name: "ret", scope: !664, file: !3, line: 455, type: !558)
!672 = !DILocation(line: 455, column: 22, scope: !664)
!673 = !DILocation(line: 455, column: 28, scope: !664)
!674 = !DILocation(line: 456, column: 7, scope: !664)
!675 = !DILocation(line: 456, column: 15, scope: !664)
!676 = !DILocation(line: 457, column: 3, scope: !664)
!677 = distinct !DISubprogram(name: "websocket_subscribe", scope: !3, file: !3, line: 631, type: !678, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!678 = !DISubroutineType(types: !679)
!679 = !{!114, !680}
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "websocket_subscribe_s", file: !681, line: 76, size: 576, elements: !682)
!681 = !DIFile(filename: "../include/websockets.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!682 = !{!683, !684, !685, !686, !687, !688, !693, !694}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !680, file: !681, line: 78, baseType: !62, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !680, file: !681, line: 80, baseType: !73, size: 192, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "on_message", scope: !680, file: !681, line: 86, baseType: !59, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "on_unsubscribe", scope: !680, file: !681, line: 91, baseType: !154, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !680, file: !681, line: 93, baseType: !32, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !680, file: !681, line: 95, baseType: !689, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_match_fn", file: !6, line: 1726, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!164, !73, !73}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "force_binary", scope: !680, file: !681, line: 104, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "force_text", scope: !680, file: !681, line: 114, baseType: !7, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!695 = !DILocalVariable(name: "args", arg: 1, scope: !677, file: !3, line: 631, type: !680)
!696 = !DILocation(line: 631, column: 60, scope: !677)
!697 = !DILocation(line: 632, column: 13, scope: !698)
!698 = distinct !DILexicalBlock(scope: !677, file: !3, line: 632, column: 7)
!699 = !DILocation(line: 632, column: 8, scope: !698)
!700 = !DILocation(line: 632, column: 16, scope: !698)
!701 = !DILocation(line: 632, column: 38, scope: !698)
!702 = !DILocation(line: 632, column: 42, scope: !698)
!703 = !DILocation(line: 632, column: 20, scope: !698)
!704 = !DILocation(line: 632, column: 7, scope: !677)
!705 = !DILocation(line: 633, column: 5, scope: !698)
!706 = !DILocalVariable(name: "d", scope: !677, file: !3, line: 634, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "websocket_sub_data_s", file: !3, line: 530, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 525, size: 192, elements: !710)
!710 = !{!711, !712, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "on_message", scope: !709, file: !3, line: 526, baseType: !59, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "on_unsubscribe", scope: !709, file: !3, line: 528, baseType: !154, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !709, file: !3, line: 529, baseType: !32, size: 64, offset: 128)
!714 = !DILocation(line: 634, column: 25, scope: !677)
!715 = !DILocation(line: 634, column: 29, scope: !677)
!716 = !DILocation(line: 635, column: 3, scope: !717)
!717 = distinct !DILexicalBlock(scope: !677, file: !3, line: 635, column: 3)
!718 = !DILocation(line: 635, column: 3, scope: !677)
!719 = !DILocation(line: 635, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !3, line: 635, column: 3)
!721 = !DILocation(line: 635, column: 3, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 635, column: 3)
!723 = distinct !DILexicalBlock(scope: !720, file: !3, line: 635, column: 3)
!724 = !DILocation(line: 635, column: 3, scope: !723)
!725 = !DILocation(line: 635, column: 3, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !3, line: 635, column: 3)
!727 = !DILocation(line: 636, column: 4, scope: !677)
!728 = !DILocation(line: 636, column: 30, scope: !677)
!729 = !DILocation(line: 638, column: 26, scope: !677)
!730 = !DILocation(line: 639, column: 30, scope: !677)
!731 = !DILocation(line: 637, column: 21, scope: !677)
!732 = !DILocation(line: 636, column: 8, scope: !677)
!733 = !DILocalVariable(name: "handler", scope: !677, file: !3, line: 641, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !566}
!737 = !DILocation(line: 641, column: 10, scope: !677)
!738 = !DILocation(line: 642, column: 13, scope: !739)
!739 = distinct !DILexicalBlock(scope: !677, file: !3, line: 642, column: 7)
!740 = !DILocation(line: 642, column: 8, scope: !739)
!741 = !DILocation(line: 642, column: 7, scope: !677)
!742 = !DILocalVariable(name: "br_type", scope: !743, file: !3, line: 643, type: !41)
!743 = distinct !DILexicalBlock(scope: !739, file: !3, line: 642, column: 25)
!744 = !DILocation(line: 643, column: 14, scope: !743)
!745 = !DILocation(line: 644, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !3, line: 644, column: 9)
!747 = !DILocation(line: 644, column: 9, scope: !746)
!748 = !DILocation(line: 644, column: 9, scope: !743)
!749 = !DILocation(line: 645, column: 15, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !3, line: 644, column: 28)
!751 = !DILocation(line: 646, column: 15, scope: !750)
!752 = !DILocation(line: 647, column: 5, scope: !750)
!753 = !DILocation(line: 647, column: 21, scope: !754)
!754 = distinct !DILexicalBlock(scope: !746, file: !3, line: 647, column: 16)
!755 = !DILocation(line: 647, column: 16, scope: !754)
!756 = !DILocation(line: 647, column: 16, scope: !746)
!757 = !DILocation(line: 648, column: 15, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !3, line: 647, column: 33)
!759 = !DILocation(line: 649, column: 15, scope: !758)
!760 = !DILocation(line: 650, column: 5, scope: !758)
!761 = !DILocation(line: 651, column: 15, scope: !762)
!762 = distinct !DILexicalBlock(scope: !754, file: !3, line: 650, column: 12)
!763 = !DILocation(line: 652, column: 15, scope: !762)
!764 = !DILocation(line: 654, column: 35, scope: !743)
!765 = !DILocation(line: 654, column: 5, scope: !743)
!766 = !DILocation(line: 656, column: 67, scope: !743)
!767 = !DILocation(line: 656, column: 9, scope: !743)
!768 = !DILocation(line: 655, column: 5, scope: !743)
!769 = !DILocation(line: 655, column: 8, scope: !743)
!770 = !DILocation(line: 655, column: 19, scope: !743)
!771 = !DILocation(line: 657, column: 3, scope: !743)
!772 = !DILocalVariable(name: "sub", scope: !677, file: !3, line: 658, type: !117)
!773 = !DILocation(line: 658, column: 19, scope: !677)
!774 = !DILocation(line: 659, column: 7, scope: !677)
!775 = !DILocation(line: 663, column: 8, scope: !776)
!776 = distinct !DILexicalBlock(scope: !677, file: !3, line: 663, column: 7)
!777 = !DILocation(line: 663, column: 7, scope: !677)
!778 = !DILocation(line: 665, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !776, file: !3, line: 663, column: 13)
!780 = !DILocalVariable(name: "pos", scope: !677, file: !3, line: 667, type: !120)
!781 = !DILocation(line: 667, column: 13, scope: !677)
!782 = !DILocation(line: 668, column: 18, scope: !677)
!783 = !DILocation(line: 668, column: 22, scope: !677)
!784 = !DILocation(line: 668, column: 3, scope: !677)
!785 = !DILocation(line: 669, column: 27, scope: !677)
!786 = !DILocation(line: 669, column: 31, scope: !677)
!787 = !DILocation(line: 669, column: 46, scope: !677)
!788 = !DILocation(line: 669, column: 9, scope: !677)
!789 = !DILocation(line: 669, column: 7, scope: !677)
!790 = !DILocation(line: 670, column: 20, scope: !677)
!791 = !DILocation(line: 670, column: 24, scope: !677)
!792 = !DILocation(line: 670, column: 3, scope: !677)
!793 = !DILocation(line: 672, column: 21, scope: !677)
!794 = !DILocation(line: 672, column: 10, scope: !677)
!795 = !DILocation(line: 672, column: 3, scope: !677)
!796 = !DILabel(scope: !677, name: "error", file: !3, line: 673)
!797 = !DILocation(line: 673, column: 1, scope: !677)
!798 = !DILocation(line: 674, column: 12, scope: !799)
!799 = distinct !DILexicalBlock(scope: !677, file: !3, line: 674, column: 7)
!800 = !DILocation(line: 674, column: 7, scope: !799)
!801 = !DILocation(line: 674, column: 7, scope: !677)
!802 = !DILocation(line: 675, column: 10, scope: !799)
!803 = !DILocation(line: 675, column: 30, scope: !799)
!804 = !DILocation(line: 675, column: 5, scope: !799)
!805 = !DILocation(line: 676, column: 3, scope: !677)
!806 = !DILocation(line: 677, column: 1, scope: !677)
!807 = distinct !DISubprogram(name: "websocket_on_pubsub_message", scope: !3, file: !3, line: 592, type: !735, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!808 = !DILocalVariable(name: "msg", arg: 1, scope: !807, file: !3, line: 592, type: !566)
!809 = !DILocation(line: 592, column: 52, scope: !807)
!810 = !DILocalVariable(name: "pr", scope: !807, file: !3, line: 593, type: !33)
!811 = !DILocation(line: 593, column: 19, scope: !807)
!812 = !DILocation(line: 594, column: 39, scope: !807)
!813 = !DILocation(line: 594, column: 44, scope: !807)
!814 = !DILocation(line: 594, column: 29, scope: !807)
!815 = !DILocation(line: 594, column: 7, scope: !807)
!816 = !DILocation(line: 595, column: 8, scope: !817)
!817 = distinct !DILexicalBlock(scope: !807, file: !3, line: 595, column: 7)
!818 = !DILocation(line: 595, column: 7, scope: !807)
!819 = !DILocation(line: 596, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 596, column: 9)
!821 = distinct !DILexicalBlock(scope: !817, file: !3, line: 595, column: 12)
!822 = !DILocation(line: 596, column: 15, scope: !820)
!823 = !DILocation(line: 596, column: 9, scope: !821)
!824 = !DILocation(line: 597, column: 7, scope: !820)
!825 = !DILocation(line: 598, column: 23, scope: !821)
!826 = !DILocation(line: 598, column: 5, scope: !821)
!827 = !DILocation(line: 599, column: 5, scope: !821)
!828 = !DILocalVariable(name: "d", scope: !807, file: !3, line: 601, type: !707)
!829 = !DILocation(line: 601, column: 25, scope: !807)
!830 = !DILocation(line: 601, column: 29, scope: !807)
!831 = !DILocation(line: 601, column: 34, scope: !807)
!832 = !DILocation(line: 603, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !807, file: !3, line: 603, column: 7)
!834 = !DILocation(line: 603, column: 10, scope: !833)
!835 = !DILocation(line: 603, column: 7, scope: !807)
!836 = !DILocation(line: 604, column: 5, scope: !833)
!837 = !DILocation(line: 604, column: 8, scope: !833)
!838 = !DILocation(line: 604, column: 27, scope: !833)
!839 = !DILocation(line: 604, column: 19, scope: !833)
!840 = !DILocation(line: 604, column: 31, scope: !833)
!841 = !DILocation(line: 604, column: 36, scope: !833)
!842 = !DILocation(line: 604, column: 45, scope: !833)
!843 = !DILocation(line: 604, column: 50, scope: !833)
!844 = !DILocation(line: 604, column: 55, scope: !833)
!845 = !DILocation(line: 604, column: 58, scope: !833)
!846 = !DILocation(line: 605, column: 23, scope: !807)
!847 = !DILocation(line: 605, column: 3, scope: !807)
!848 = !DILocation(line: 606, column: 1, scope: !807)
!849 = distinct !DISubprogram(name: "websocket_on_pubsub_message_direct_bin", scope: !3, file: !3, line: 588, type: !735, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!850 = !DILocalVariable(name: "msg", arg: 1, scope: !849, file: !3, line: 588, type: !566)
!851 = !DILocation(line: 588, column: 63, scope: !849)
!852 = !DILocation(line: 589, column: 47, scope: !849)
!853 = !DILocation(line: 589, column: 3, scope: !849)
!854 = !DILocation(line: 590, column: 1, scope: !849)
!855 = distinct !DISubprogram(name: "websocket_on_pubsub_message_direct_txt", scope: !3, file: !3, line: 584, type: !735, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!856 = !DILocalVariable(name: "msg", arg: 1, scope: !855, file: !3, line: 584, type: !566)
!857 = !DILocation(line: 584, column: 63, scope: !855)
!858 = !DILocation(line: 585, column: 47, scope: !855)
!859 = !DILocation(line: 585, column: 3, scope: !855)
!860 = !DILocation(line: 586, column: 1, scope: !855)
!861 = distinct !DISubprogram(name: "websocket_on_pubsub_message_direct", scope: !3, file: !3, line: 580, type: !735, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!862 = !DILocalVariable(name: "msg", arg: 1, scope: !861, file: !3, line: 580, type: !566)
!863 = !DILocation(line: 580, column: 59, scope: !861)
!864 = !DILocation(line: 581, column: 47, scope: !861)
!865 = !DILocation(line: 581, column: 3, scope: !861)
!866 = !DILocation(line: 582, column: 1, scope: !861)
!867 = distinct !DISubprogram(name: "websocket_on_unsubscribe", scope: !3, file: !3, line: 608, type: !868, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !32, !32}
!870 = !DILocalVariable(name: "u1", arg: 1, scope: !867, file: !3, line: 608, type: !32)
!871 = !DILocation(line: 608, column: 44, scope: !867)
!872 = !DILocalVariable(name: "u2", arg: 2, scope: !867, file: !3, line: 608, type: !32)
!873 = !DILocation(line: 608, column: 54, scope: !867)
!874 = !DILocalVariable(name: "d", scope: !867, file: !3, line: 609, type: !707)
!875 = !DILocation(line: 609, column: 25, scope: !867)
!876 = !DILocation(line: 609, column: 29, scope: !867)
!877 = !DILocation(line: 610, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !867, file: !3, line: 610, column: 7)
!879 = !DILocation(line: 610, column: 10, scope: !878)
!880 = !DILocation(line: 610, column: 7, scope: !867)
!881 = !DILocation(line: 611, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !3, line: 610, column: 26)
!883 = !DILocation(line: 611, column: 8, scope: !882)
!884 = !DILocation(line: 611, column: 23, scope: !882)
!885 = !DILocation(line: 611, column: 26, scope: !882)
!886 = !DILocation(line: 612, column: 3, scope: !882)
!887 = !DILocation(line: 614, column: 17, scope: !888)
!888 = distinct !DILexicalBlock(scope: !867, file: !3, line: 614, column: 7)
!889 = !DILocation(line: 614, column: 20, scope: !888)
!890 = !DILocation(line: 614, column: 7, scope: !888)
!891 = !DILocation(line: 614, column: 31, scope: !888)
!892 = !DILocation(line: 614, column: 7, scope: !867)
!893 = !DILocation(line: 615, column: 5, scope: !894)
!894 = distinct !DILexicalBlock(scope: !888, file: !3, line: 614, column: 71)
!895 = !DILocation(line: 616, column: 3, scope: !894)
!896 = !DILocation(line: 616, column: 24, scope: !897)
!897 = distinct !DILexicalBlock(scope: !888, file: !3, line: 616, column: 14)
!898 = !DILocation(line: 616, column: 27, scope: !897)
!899 = !DILocation(line: 616, column: 14, scope: !897)
!900 = !DILocation(line: 616, column: 38, scope: !897)
!901 = !DILocation(line: 616, column: 14, scope: !888)
!902 = !DILocation(line: 618, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !897, file: !3, line: 617, column: 56)
!904 = !DILocation(line: 619, column: 3, scope: !903)
!905 = !DILocation(line: 619, column: 24, scope: !906)
!906 = distinct !DILexicalBlock(scope: !897, file: !3, line: 619, column: 14)
!907 = !DILocation(line: 619, column: 27, scope: !906)
!908 = !DILocation(line: 619, column: 14, scope: !906)
!909 = !DILocation(line: 619, column: 38, scope: !906)
!910 = !DILocation(line: 619, column: 14, scope: !897)
!911 = !DILocation(line: 621, column: 5, scope: !912)
!912 = distinct !DILexicalBlock(scope: !906, file: !3, line: 620, column: 58)
!913 = !DILocation(line: 622, column: 3, scope: !912)
!914 = !DILocation(line: 623, column: 8, scope: !867)
!915 = !DILocation(line: 623, column: 3, scope: !867)
!916 = !DILocation(line: 624, column: 9, scope: !867)
!917 = !DILocation(line: 625, column: 1, scope: !867)
!918 = distinct !DISubprogram(name: "fio_lock", scope: !6, file: !6, line: 3019, type: !919, scopeLine: 3019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!922 = !DILocalVariable(name: "lock", arg: 1, scope: !918, file: !6, line: 3019, type: !921)
!923 = !DILocation(line: 3019, column: 43, scope: !918)
!924 = !DILocation(line: 3020, column: 3, scope: !918)
!925 = !DILocation(line: 3020, column: 22, scope: !918)
!926 = !DILocation(line: 3020, column: 10, scope: !918)
!927 = !DILocation(line: 3021, column: 5, scope: !928)
!928 = distinct !DILexicalBlock(scope: !918, file: !6, line: 3020, column: 29)
!929 = distinct !{!929, !924, !930}
!930 = !DILocation(line: 3022, column: 3, scope: !918)
!931 = !DILocation(line: 3023, column: 1, scope: !918)
!932 = distinct !DISubprogram(name: "fio_ls_push", scope: !6, file: !6, line: 3308, type: !933, scopeLine: 3308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!933 = !DISubroutineType(types: !934)
!934 = !{!120, !120, !101}
!935 = !DILocalVariable(name: "pos", arg: 1, scope: !932, file: !6, line: 3308, type: !120)
!936 = !DILocation(line: 3308, column: 49, scope: !932)
!937 = !DILocalVariable(name: "obj", arg: 2, scope: !932, file: !6, line: 3308, type: !101)
!938 = !DILocation(line: 3308, column: 66, scope: !932)
!939 = !DILocation(line: 3309, column: 8, scope: !940)
!940 = distinct !DILexicalBlock(scope: !932, file: !6, line: 3309, column: 7)
!941 = !DILocation(line: 3309, column: 7, scope: !932)
!942 = !DILocation(line: 3310, column: 5, scope: !940)
!943 = !DILocalVariable(name: "item", scope: !932, file: !6, line: 3312, type: !120)
!944 = !DILocation(line: 3312, column: 13, scope: !932)
!945 = !DILocation(line: 3312, column: 32, scope: !932)
!946 = !DILocation(line: 3312, column: 20, scope: !932)
!947 = !DILocation(line: 3313, column: 3, scope: !948)
!948 = distinct !DILexicalBlock(scope: !932, file: !6, line: 3313, column: 3)
!949 = !DILocation(line: 3313, column: 3, scope: !932)
!950 = !DILocation(line: 3313, column: 3, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !6, line: 3313, column: 3)
!952 = !DILocation(line: 3313, column: 3, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !6, line: 3313, column: 3)
!954 = distinct !DILexicalBlock(scope: !951, file: !6, line: 3313, column: 3)
!955 = !DILocation(line: 3313, column: 3, scope: !954)
!956 = !DILocation(line: 3313, column: 3, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !6, line: 3313, column: 3)
!958 = !DILocation(line: 3314, column: 4, scope: !932)
!959 = !DILocation(line: 3314, column: 21, scope: !932)
!960 = !DILocation(line: 3314, column: 30, scope: !932)
!961 = !DILocation(line: 3314, column: 35, scope: !932)
!962 = !DILocation(line: 3314, column: 49, scope: !932)
!963 = !DILocation(line: 3314, column: 61, scope: !932)
!964 = !DILocation(line: 3314, column: 11, scope: !932)
!965 = !DILocation(line: 3316, column: 21, scope: !932)
!966 = !DILocation(line: 3316, column: 3, scope: !932)
!967 = !DILocation(line: 3316, column: 8, scope: !932)
!968 = !DILocation(line: 3316, column: 14, scope: !932)
!969 = !DILocation(line: 3316, column: 19, scope: !932)
!970 = !DILocation(line: 3317, column: 15, scope: !932)
!971 = !DILocation(line: 3317, column: 3, scope: !932)
!972 = !DILocation(line: 3317, column: 8, scope: !932)
!973 = !DILocation(line: 3317, column: 13, scope: !932)
!974 = !DILocation(line: 3318, column: 10, scope: !932)
!975 = !DILocation(line: 3318, column: 3, scope: !932)
!976 = !DILocation(line: 3319, column: 1, scope: !932)
!977 = distinct !DISubprogram(name: "fio_unlock", scope: !6, file: !6, line: 3006, type: !978, scopeLine: 3006, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!978 = !DISubroutineType(types: !979)
!979 = !{!164, !921}
!980 = !DILocalVariable(name: "lock", arg: 1, scope: !977, file: !6, line: 3006, type: !921)
!981 = !DILocation(line: 3006, column: 44, scope: !977)
!982 = !DILocation(line: 3007, column: 3, scope: !977)
!983 = !{i32 135585}
!984 = !DILocalVariable(name: "ret", scope: !977, file: !6, line: 3008, type: !104)
!985 = !DILocation(line: 3008, column: 14, scope: !977)
!986 = !DILocation(line: 3008, column: 20, scope: !977)
!987 = !DILocation(line: 3009, column: 10, scope: !977)
!988 = !DILocation(line: 3009, column: 3, scope: !977)
!989 = distinct !DISubprogram(name: "websocket_unsubscribe", scope: !3, file: !3, line: 682, type: !990, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !62, !114}
!992 = !DILocalVariable(name: "ws", arg: 1, scope: !989, file: !3, line: 682, type: !62)
!993 = !DILocation(line: 682, column: 34, scope: !989)
!994 = !DILocalVariable(name: "subscription_id", arg: 2, scope: !989, file: !3, line: 682, type: !114)
!995 = !DILocation(line: 682, column: 48, scope: !989)
!996 = !DILocation(line: 683, column: 50, scope: !989)
!997 = !DILocation(line: 683, column: 38, scope: !989)
!998 = !DILocation(line: 683, column: 68, scope: !989)
!999 = !DILocation(line: 683, column: 19, scope: !989)
!1000 = !DILocation(line: 683, column: 3, scope: !989)
!1001 = !DILocation(line: 684, column: 13, scope: !989)
!1002 = !DILocation(line: 684, column: 17, scope: !989)
!1003 = !DILocation(line: 684, column: 3, scope: !989)
!1004 = !DILocation(line: 685, column: 29, scope: !989)
!1005 = !DILocation(line: 685, column: 17, scope: !989)
!1006 = !DILocation(line: 685, column: 3, scope: !989)
!1007 = !DILocation(line: 686, column: 15, scope: !989)
!1008 = !DILocation(line: 686, column: 19, scope: !989)
!1009 = !DILocation(line: 686, column: 3, scope: !989)
!1010 = !DILocation(line: 688, column: 9, scope: !989)
!1011 = !DILocation(line: 689, column: 1, scope: !989)
!1012 = distinct !DISubprogram(name: "fio_ls_remove", scope: !6, file: !6, line: 3295, type: !1013, scopeLine: 3295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!32, !120}
!1015 = !DILocalVariable(name: "node", arg: 1, scope: !1012, file: !6, line: 3295, type: !120)
!1016 = !DILocation(line: 3295, column: 47, scope: !1012)
!1017 = !DILocation(line: 3296, column: 8, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !6, line: 3296, column: 7)
!1019 = !DILocation(line: 3296, column: 13, scope: !1018)
!1020 = !DILocation(line: 3296, column: 16, scope: !1018)
!1021 = !DILocation(line: 3296, column: 22, scope: !1018)
!1022 = !DILocation(line: 3296, column: 30, scope: !1018)
!1023 = !DILocation(line: 3296, column: 27, scope: !1018)
!1024 = !DILocation(line: 3296, column: 7, scope: !1012)
!1025 = !DILocation(line: 3298, column: 5, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !6, line: 3296, column: 36)
!1027 = !DILocalVariable(name: "ret", scope: !1012, file: !6, line: 3300, type: !101)
!1028 = !DILocation(line: 3300, column: 15, scope: !1012)
!1029 = !DILocation(line: 3300, column: 21, scope: !1012)
!1030 = !DILocation(line: 3300, column: 27, scope: !1012)
!1031 = !DILocation(line: 3301, column: 22, scope: !1012)
!1032 = !DILocation(line: 3301, column: 28, scope: !1012)
!1033 = !DILocation(line: 3301, column: 3, scope: !1012)
!1034 = !DILocation(line: 3301, column: 9, scope: !1012)
!1035 = !DILocation(line: 3301, column: 15, scope: !1012)
!1036 = !DILocation(line: 3301, column: 20, scope: !1012)
!1037 = !DILocation(line: 3302, column: 22, scope: !1012)
!1038 = !DILocation(line: 3302, column: 28, scope: !1012)
!1039 = !DILocation(line: 3302, column: 3, scope: !1012)
!1040 = !DILocation(line: 3302, column: 9, scope: !1012)
!1041 = !DILocation(line: 3302, column: 15, scope: !1012)
!1042 = !DILocation(line: 3302, column: 20, scope: !1012)
!1043 = !DILocation(line: 3303, column: 12, scope: !1012)
!1044 = !DILocation(line: 3303, column: 3, scope: !1012)
!1045 = !DILocation(line: 3304, column: 18, scope: !1012)
!1046 = !DILocation(line: 3304, column: 3, scope: !1012)
!1047 = !DILocation(line: 3305, column: 1, scope: !1012)
!1048 = distinct !DISubprogram(name: "websocket_udata_get", scope: !3, file: !3, line: 696, type: !1049, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!32, !62}
!1051 = !DILocalVariable(name: "ws", arg: 1, scope: !1048, file: !3, line: 696, type: !62)
!1052 = !DILocation(line: 696, column: 33, scope: !1048)
!1053 = !DILocation(line: 696, column: 46, scope: !1048)
!1054 = !DILocation(line: 696, column: 50, scope: !1048)
!1055 = !DILocation(line: 696, column: 39, scope: !1048)
!1056 = distinct !DISubprogram(name: "websocket_uuid", scope: !3, file: !3, line: 699, type: !1057, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!41, !62}
!1059 = !DILocalVariable(name: "ws", arg: 1, scope: !1056, file: !3, line: 699, type: !62)
!1060 = !DILocation(line: 699, column: 31, scope: !1056)
!1061 = !DILocation(line: 699, column: 44, scope: !1056)
!1062 = !DILocation(line: 699, column: 48, scope: !1056)
!1063 = !DILocation(line: 699, column: 37, scope: !1056)
!1064 = distinct !DISubprogram(name: "websocket_udata_set", scope: !3, file: !3, line: 703, type: !1065, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!32, !62, !32}
!1067 = !DILocalVariable(name: "ws", arg: 1, scope: !1064, file: !3, line: 703, type: !62)
!1068 = !DILocation(line: 703, column: 33, scope: !1064)
!1069 = !DILocalVariable(name: "udata", arg: 2, scope: !1064, file: !3, line: 703, type: !32)
!1070 = !DILocation(line: 703, column: 43, scope: !1064)
!1071 = !DILocalVariable(name: "old", scope: !1064, file: !3, line: 704, type: !32)
!1072 = !DILocation(line: 704, column: 9, scope: !1064)
!1073 = !DILocation(line: 704, column: 15, scope: !1064)
!1074 = !DILocation(line: 704, column: 19, scope: !1064)
!1075 = !DILocation(line: 705, column: 15, scope: !1064)
!1076 = !DILocation(line: 705, column: 3, scope: !1064)
!1077 = !DILocation(line: 705, column: 7, scope: !1064)
!1078 = !DILocation(line: 705, column: 13, scope: !1064)
!1079 = !DILocation(line: 706, column: 10, scope: !1064)
!1080 = !DILocation(line: 706, column: 3, scope: !1064)
!1081 = distinct !DISubprogram(name: "websocket_is_client", scope: !3, file: !3, line: 714, type: !1082, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!49, !62}
!1084 = !DILocalVariable(name: "ws", arg: 1, scope: !1081, file: !3, line: 714, type: !62)
!1085 = !DILocation(line: 714, column: 35, scope: !1081)
!1086 = !DILocation(line: 714, column: 48, scope: !1081)
!1087 = !DILocation(line: 714, column: 52, scope: !1081)
!1088 = !DILocation(line: 714, column: 41, scope: !1081)
!1089 = distinct !DISubprogram(name: "websocket_write", scope: !3, file: !3, line: 717, type: !1090, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!164, !62, !73, !49}
!1092 = !DILocalVariable(name: "ws", arg: 1, scope: !1089, file: !3, line: 717, type: !62)
!1093 = !DILocation(line: 717, column: 27, scope: !1089)
!1094 = !DILocalVariable(name: "msg", arg: 2, scope: !1089, file: !3, line: 717, type: !73)
!1095 = !DILocation(line: 717, column: 46, scope: !1089)
!1096 = !DILocalVariable(name: "is_text", arg: 3, scope: !1089, file: !3, line: 717, type: !49)
!1097 = !DILocation(line: 717, column: 59, scope: !1089)
!1098 = !DILocation(line: 718, column: 20, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 718, column: 7)
!1100 = !DILocation(line: 718, column: 24, scope: !1099)
!1101 = !DILocation(line: 718, column: 7, scope: !1099)
!1102 = !DILocation(line: 718, column: 7, scope: !1089)
!1103 = !DILocation(line: 719, column: 26, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 718, column: 29)
!1105 = !DILocation(line: 719, column: 30, scope: !1104)
!1106 = !DILocation(line: 719, column: 38, scope: !1104)
!1107 = !DILocation(line: 719, column: 48, scope: !1104)
!1108 = !DILocation(line: 719, column: 53, scope: !1104)
!1109 = !DILocation(line: 720, column: 26, scope: !1104)
!1110 = !DILocation(line: 720, column: 30, scope: !1104)
!1111 = !DILocation(line: 719, column: 5, scope: !1104)
!1112 = !DILocation(line: 721, column: 5, scope: !1104)
!1113 = !DILocation(line: 723, column: 3, scope: !1089)
!1114 = !DILocation(line: 724, column: 1, scope: !1089)
!1115 = distinct !DISubprogram(name: "websocket_write_impl", scope: !3, file: !3, line: 382, type: !1116, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !41, !32, !56, !80, !80, !80, !80}
!1118 = !DILocalVariable(name: "fd", arg: 1, scope: !1115, file: !3, line: 382, type: !41)
!1119 = !DILocation(line: 382, column: 43, scope: !1115)
!1120 = !DILocalVariable(name: "data", arg: 2, scope: !1115, file: !3, line: 382, type: !32)
!1121 = !DILocation(line: 382, column: 53, scope: !1115)
!1122 = !DILocalVariable(name: "len", arg: 3, scope: !1115, file: !3, line: 382, type: !56)
!1123 = !DILocation(line: 382, column: 66, scope: !1115)
!1124 = !DILocalVariable(name: "text", arg: 4, scope: !1115, file: !3, line: 382, type: !80)
!1125 = !DILocation(line: 382, column: 76, scope: !1115)
!1126 = !DILocalVariable(name: "first", arg: 5, scope: !1115, file: !3, line: 383, type: !80)
!1127 = !DILocation(line: 383, column: 39, scope: !1115)
!1128 = !DILocalVariable(name: "last", arg: 6, scope: !1115, file: !3, line: 383, type: !80)
!1129 = !DILocation(line: 383, column: 51, scope: !1115)
!1130 = !DILocalVariable(name: "client", arg: 7, scope: !1115, file: !3, line: 383, type: !80)
!1131 = !DILocation(line: 383, column: 62, scope: !1115)
!1132 = !DILocation(line: 384, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 384, column: 7)
!1134 = !DILocation(line: 384, column: 11, scope: !1133)
!1135 = !DILocation(line: 384, column: 7, scope: !1115)
!1136 = !DILocalVariable(name: "buff", scope: !1137, file: !3, line: 385, type: !32)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 384, column: 33)
!1138 = !DILocation(line: 385, column: 11, scope: !1137)
!1139 = !DILocation(line: 385, column: 29, scope: !1137)
!1140 = !DILocation(line: 385, column: 33, scope: !1137)
!1141 = !DILocation(line: 385, column: 18, scope: !1137)
!1142 = !DILocation(line: 386, column: 12, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1137, file: !3, discriminator: 0)
!1144 = !DILocation(line: 386, column: 43, scope: !1143)
!1145 = !DILocation(line: 386, column: 49, scope: !1143)
!1146 = !DILocation(line: 386, column: 55, scope: !1143)
!1147 = !DILocation(line: 386, column: 61, scope: !1143)
!1148 = !DILocation(line: 386, column: 60, scope: !1143)
!1149 = !DILocation(line: 387, column: 43, scope: !1143)
!1150 = !DILocation(line: 387, column: 50, scope: !1143)
!1151 = !DILocation(line: 386, column: 21, scope: !1143)
!1152 = !DILocation(line: 388, column: 43, scope: !1143)
!1153 = !DILocation(line: 388, column: 49, scope: !1143)
!1154 = !DILocation(line: 388, column: 55, scope: !1143)
!1155 = !DILocation(line: 388, column: 61, scope: !1143)
!1156 = !DILocation(line: 388, column: 60, scope: !1143)
!1157 = !DILocation(line: 389, column: 43, scope: !1143)
!1158 = !DILocation(line: 389, column: 50, scope: !1143)
!1159 = !DILocation(line: 388, column: 21, scope: !1143)
!1160 = !DILocation(line: 386, column: 9, scope: !1143)
!1161 = !DILocation(line: 390, column: 5, scope: !1143)
!1162 = !DILocation(line: 392, column: 3, scope: !1143)
!1163 = !DILocation(line: 394, column: 5, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 392, column: 10)
!1165 = !DILocation(line: 394, column: 12, scope: !1164)
!1166 = !DILocation(line: 394, column: 16, scope: !1164)
!1167 = !DILocation(line: 395, column: 28, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 394, column: 37)
!1169 = !DILocation(line: 395, column: 32, scope: !1168)
!1170 = !DILocation(line: 395, column: 57, scope: !1168)
!1171 = !DILocation(line: 395, column: 63, scope: !1168)
!1172 = !DILocation(line: 395, column: 73, scope: !1168)
!1173 = !DILocation(line: 395, column: 7, scope: !1168)
!1174 = !DILocation(line: 396, column: 26, scope: !1168)
!1175 = !DILocation(line: 396, column: 32, scope: !1168)
!1176 = !DILocation(line: 396, column: 12, scope: !1168)
!1177 = !DILocation(line: 397, column: 13, scope: !1168)
!1178 = !DILocation(line: 398, column: 11, scope: !1168)
!1179 = distinct !{!1179, !1163, !1180}
!1180 = !DILocation(line: 399, column: 5, scope: !1164)
!1181 = !DILocation(line: 400, column: 26, scope: !1164)
!1182 = !DILocation(line: 400, column: 30, scope: !1164)
!1183 = !DILocation(line: 400, column: 36, scope: !1164)
!1184 = !DILocation(line: 400, column: 41, scope: !1164)
!1185 = !DILocation(line: 400, column: 47, scope: !1164)
!1186 = !DILocation(line: 400, column: 57, scope: !1164)
!1187 = !DILocation(line: 400, column: 5, scope: !1164)
!1188 = !DILocation(line: 402, column: 3, scope: !1115)
!1189 = distinct !DISubprogram(name: "on_data_first", scope: !3, file: !3, line: 282, type: !39, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1190 = !DILocalVariable(name: "sockfd", arg: 1, scope: !1189, file: !3, line: 282, type: !41)
!1191 = !DILocation(line: 282, column: 36, scope: !1189)
!1192 = !DILocalVariable(name: "ws_", arg: 2, scope: !1189, file: !3, line: 282, type: !33)
!1193 = !DILocation(line: 282, column: 60, scope: !1189)
!1194 = !DILocalVariable(name: "ws", scope: !1189, file: !3, line: 283, type: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1196 = !DILocation(line: 283, column: 15, scope: !1189)
!1197 = !DILocation(line: 283, column: 28, scope: !1189)
!1198 = !DILocation(line: 283, column: 20, scope: !1189)
!1199 = !DILocation(line: 284, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 284, column: 7)
!1201 = !DILocation(line: 284, column: 11, scope: !1200)
!1202 = !DILocation(line: 284, column: 7, scope: !1189)
!1203 = !DILocation(line: 285, column: 5, scope: !1200)
!1204 = !DILocation(line: 285, column: 9, scope: !1200)
!1205 = !DILocation(line: 285, column: 17, scope: !1200)
!1206 = !DILocation(line: 286, column: 3, scope: !1189)
!1207 = !DILocation(line: 286, column: 7, scope: !1189)
!1208 = !DILocation(line: 286, column: 16, scope: !1189)
!1209 = !DILocation(line: 286, column: 24, scope: !1189)
!1210 = !DILocation(line: 287, column: 3, scope: !1189)
!1211 = !DILocation(line: 287, column: 7, scope: !1189)
!1212 = !DILocation(line: 287, column: 16, scope: !1189)
!1213 = !DILocation(line: 287, column: 25, scope: !1189)
!1214 = !DILocation(line: 289, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 289, column: 7)
!1216 = !DILocation(line: 289, column: 11, scope: !1215)
!1217 = !DILocation(line: 289, column: 7, scope: !1189)
!1218 = !DILocation(line: 290, column: 36, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 289, column: 19)
!1220 = !DILocation(line: 290, column: 40, scope: !1219)
!1221 = !DILocation(line: 290, column: 47, scope: !1219)
!1222 = !DILocation(line: 290, column: 53, scope: !1219)
!1223 = !DILocation(line: 290, column: 57, scope: !1219)
!1224 = !DILocation(line: 290, column: 65, scope: !1219)
!1225 = !DILocation(line: 291, column: 39, scope: !1219)
!1226 = !DILocation(line: 291, column: 43, scope: !1219)
!1227 = !DILocation(line: 291, column: 38, scope: !1219)
!1228 = !DILocation(line: 291, column: 37, scope: !1219)
!1229 = !DILocation(line: 291, column: 54, scope: !1219)
!1230 = !DILocation(line: 291, column: 36, scope: !1219)
!1231 = !DILocation(line: 290, column: 18, scope: !1219)
!1232 = !DILocation(line: 290, column: 5, scope: !1219)
!1233 = !DILocation(line: 290, column: 9, scope: !1219)
!1234 = !DILocation(line: 290, column: 16, scope: !1219)
!1235 = !DILocation(line: 292, column: 3, scope: !1219)
!1236 = !DILocation(line: 293, column: 19, scope: !1189)
!1237 = !DILocation(line: 293, column: 3, scope: !1189)
!1238 = !DILocation(line: 294, column: 19, scope: !1189)
!1239 = !DILocation(line: 294, column: 3, scope: !1189)
!1240 = !DILocation(line: 295, column: 1, scope: !1189)
!1241 = distinct !DISubprogram(name: "on_shutdown", scope: !3, file: !3, line: 233, type: !47, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1242 = !DILocalVariable(name: "fd", arg: 1, scope: !1241, file: !3, line: 233, type: !41)
!1243 = !DILocation(line: 233, column: 37, scope: !1241)
!1244 = !DILocalVariable(name: "ws", arg: 2, scope: !1241, file: !3, line: 233, type: !33)
!1245 = !DILocation(line: 233, column: 57, scope: !1241)
!1246 = !DILocation(line: 234, column: 10, scope: !1241)
!1247 = !DILocation(line: 235, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 235, column: 7)
!1249 = !DILocation(line: 235, column: 10, scope: !1248)
!1250 = !DILocation(line: 235, column: 22, scope: !1248)
!1251 = !DILocation(line: 235, column: 27, scope: !1248)
!1252 = !DILocation(line: 235, column: 13, scope: !1248)
!1253 = !DILocation(line: 235, column: 7, scope: !1241)
!1254 = !DILocation(line: 236, column: 14, scope: !1248)
!1255 = !DILocation(line: 236, column: 19, scope: !1248)
!1256 = !DILocation(line: 236, column: 39, scope: !1248)
!1257 = !DILocation(line: 236, column: 31, scope: !1248)
!1258 = !DILocation(line: 236, column: 5, scope: !1248)
!1259 = !DILocation(line: 237, column: 16, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 237, column: 7)
!1261 = !DILocation(line: 237, column: 21, scope: !1260)
!1262 = !DILocation(line: 237, column: 7, scope: !1260)
!1263 = !DILocation(line: 237, column: 7, scope: !1241)
!1264 = !DILocation(line: 238, column: 5, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 237, column: 32)
!1266 = !DILocation(line: 240, column: 3, scope: !1265)
!1267 = !DILocation(line: 241, column: 5, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 240, column: 10)
!1269 = !DILocation(line: 244, column: 3, scope: !1241)
!1270 = distinct !DISubprogram(name: "on_close", scope: !3, file: !3, line: 222, type: !39, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1271 = !DILocalVariable(name: "uuid", arg: 1, scope: !1270, file: !3, line: 222, type: !41)
!1272 = !DILocation(line: 222, column: 31, scope: !1270)
!1273 = !DILocalVariable(name: "_ws", arg: 2, scope: !1270, file: !3, line: 222, type: !33)
!1274 = !DILocation(line: 222, column: 53, scope: !1270)
!1275 = !DILocation(line: 223, column: 22, scope: !1270)
!1276 = !DILocation(line: 223, column: 14, scope: !1270)
!1277 = !DILocation(line: 223, column: 3, scope: !1270)
!1278 = !DILocation(line: 224, column: 9, scope: !1270)
!1279 = !DILocation(line: 225, column: 1, scope: !1270)
!1280 = distinct !DISubprogram(name: "ws_ping", scope: !3, file: !3, line: 211, type: !39, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1281 = !DILocalVariable(name: "fd", arg: 1, scope: !1280, file: !3, line: 211, type: !41)
!1282 = !DILocation(line: 211, column: 30, scope: !1280)
!1283 = !DILocalVariable(name: "ws", arg: 2, scope: !1280, file: !3, line: 211, type: !33)
!1284 = !DILocation(line: 211, column: 50, scope: !1280)
!1285 = !DILocation(line: 212, column: 10, scope: !1280)
!1286 = !DILocation(line: 213, column: 16, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 213, column: 7)
!1288 = !DILocation(line: 213, column: 21, scope: !1287)
!1289 = !DILocation(line: 213, column: 7, scope: !1287)
!1290 = !DILocation(line: 213, column: 7, scope: !1280)
!1291 = !DILocation(line: 214, column: 5, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 213, column: 32)
!1293 = !DILocation(line: 216, column: 3, scope: !1292)
!1294 = !DILocation(line: 217, column: 5, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 216, column: 10)
!1296 = !DILocation(line: 220, column: 1, scope: !1280)
!1297 = distinct !DISubprogram(name: "on_data", scope: !3, file: !3, line: 247, type: !39, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1298 = !DILocalVariable(name: "sockfd", arg: 1, scope: !1297, file: !3, line: 247, type: !41)
!1299 = !DILocation(line: 247, column: 30, scope: !1297)
!1300 = !DILocalVariable(name: "ws_", arg: 2, scope: !1297, file: !3, line: 247, type: !33)
!1301 = !DILocation(line: 247, column: 54, scope: !1297)
!1302 = !DILocalVariable(name: "ws", scope: !1297, file: !3, line: 248, type: !1195)
!1303 = !DILocation(line: 248, column: 15, scope: !1297)
!1304 = !DILocation(line: 248, column: 28, scope: !1297)
!1305 = !DILocation(line: 248, column: 20, scope: !1297)
!1306 = !DILocation(line: 249, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 249, column: 7)
!1308 = !DILocation(line: 249, column: 10, scope: !1307)
!1309 = !DILocation(line: 249, column: 7, scope: !1297)
!1310 = !DILocation(line: 250, column: 5, scope: !1307)
!1311 = !DILocalVariable(name: "info", scope: !1297, file: !3, line: 251, type: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "websocket_packet_info_s", file: !1313, line: 99, size: 128, elements: !1314)
!1313 = !DIFile(filename: "../include/websocket_parser.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !1312, file: !1313, line: 101, baseType: !122, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "head_length", scope: !1312, file: !1313, line: 103, baseType: !49, size: 8, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !1312, file: !1313, line: 105, baseType: !49, size: 8, offset: 72)
!1318 = !DILocation(line: 251, column: 34, scope: !1297)
!1319 = !DILocation(line: 252, column: 29, scope: !1297)
!1320 = !DILocation(line: 252, column: 33, scope: !1297)
!1321 = !DILocation(line: 252, column: 40, scope: !1297)
!1322 = !DILocation(line: 252, column: 46, scope: !1297)
!1323 = !DILocation(line: 252, column: 50, scope: !1297)
!1324 = !DILocation(line: 252, column: 7, scope: !1297)
!1325 = !DILocalVariable(name: "raw_length", scope: !1297, file: !3, line: 253, type: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1327 = !DILocation(line: 253, column: 18, scope: !1297)
!1328 = !DILocation(line: 253, column: 36, scope: !1297)
!1329 = !DILocation(line: 253, column: 57, scope: !1297)
!1330 = !DILocation(line: 253, column: 52, scope: !1297)
!1331 = !DILocation(line: 253, column: 50, scope: !1297)
!1332 = !DILocation(line: 255, column: 7, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 255, column: 7)
!1334 = !DILocation(line: 255, column: 11, scope: !1333)
!1335 = !DILocation(line: 255, column: 26, scope: !1333)
!1336 = !DILocation(line: 255, column: 24, scope: !1333)
!1337 = !DILocation(line: 255, column: 7, scope: !1297)
!1338 = !DILocation(line: 257, column: 21, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 255, column: 38)
!1340 = !DILocation(line: 257, column: 5, scope: !1339)
!1341 = !DILocation(line: 258, column: 5, scope: !1339)
!1342 = !DILocation(line: 261, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 261, column: 7)
!1344 = !DILocation(line: 261, column: 20, scope: !1343)
!1345 = !DILocation(line: 261, column: 24, scope: !1343)
!1346 = !DILocation(line: 261, column: 31, scope: !1343)
!1347 = !DILocation(line: 261, column: 18, scope: !1343)
!1348 = !DILocation(line: 261, column: 7, scope: !1297)
!1349 = !DILocation(line: 262, column: 31, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 261, column: 37)
!1351 = !DILocation(line: 262, column: 5, scope: !1350)
!1352 = !DILocation(line: 262, column: 9, scope: !1350)
!1353 = !DILocation(line: 262, column: 16, scope: !1350)
!1354 = !DILocation(line: 262, column: 21, scope: !1350)
!1355 = !DILocation(line: 263, column: 5, scope: !1350)
!1356 = !DILocation(line: 263, column: 9, scope: !1350)
!1357 = !DILocation(line: 263, column: 35, scope: !1350)
!1358 = !DILocation(line: 263, column: 39, scope: !1350)
!1359 = !DILocation(line: 263, column: 43, scope: !1350)
!1360 = !DILocation(line: 263, column: 18, scope: !1350)
!1361 = !DILocation(line: 264, column: 10, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 264, column: 9)
!1363 = !DILocation(line: 264, column: 14, scope: !1362)
!1364 = !DILocation(line: 264, column: 21, scope: !1362)
!1365 = !DILocation(line: 264, column: 9, scope: !1350)
!1366 = !DILocation(line: 266, column: 23, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 264, column: 27)
!1368 = !DILocation(line: 266, column: 7, scope: !1367)
!1369 = !DILocation(line: 267, column: 7, scope: !1367)
!1370 = !DILocation(line: 269, column: 3, scope: !1350)
!1371 = !DILocalVariable(name: "len", scope: !1297, file: !3, line: 271, type: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !197, line: 77, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !52, line: 193, baseType: !43)
!1375 = !DILocation(line: 271, column: 17, scope: !1297)
!1376 = !DILocation(line: 271, column: 32, scope: !1297)
!1377 = !DILocation(line: 271, column: 51, scope: !1297)
!1378 = !DILocation(line: 271, column: 55, scope: !1297)
!1379 = !DILocation(line: 271, column: 62, scope: !1297)
!1380 = !DILocation(line: 271, column: 69, scope: !1297)
!1381 = !DILocation(line: 271, column: 73, scope: !1297)
!1382 = !DILocation(line: 271, column: 67, scope: !1297)
!1383 = !DILocation(line: 272, column: 32, scope: !1297)
!1384 = !DILocation(line: 272, column: 36, scope: !1297)
!1385 = !DILocation(line: 272, column: 43, scope: !1297)
!1386 = !DILocation(line: 272, column: 50, scope: !1297)
!1387 = !DILocation(line: 272, column: 54, scope: !1297)
!1388 = !DILocation(line: 272, column: 48, scope: !1297)
!1389 = !DILocation(line: 271, column: 23, scope: !1297)
!1390 = !DILocation(line: 273, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 273, column: 7)
!1392 = !DILocation(line: 273, column: 11, scope: !1391)
!1393 = !DILocation(line: 273, column: 7, scope: !1297)
!1394 = !DILocation(line: 274, column: 5, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 273, column: 17)
!1396 = !DILocation(line: 276, column: 34, scope: !1297)
!1397 = !DILocation(line: 276, column: 38, scope: !1297)
!1398 = !DILocation(line: 276, column: 45, scope: !1297)
!1399 = !DILocation(line: 276, column: 51, scope: !1297)
!1400 = !DILocation(line: 276, column: 55, scope: !1297)
!1401 = !DILocation(line: 276, column: 64, scope: !1297)
!1402 = !DILocation(line: 276, column: 62, scope: !1297)
!1403 = !DILocation(line: 276, column: 69, scope: !1297)
!1404 = !DILocation(line: 277, column: 37, scope: !1297)
!1405 = !DILocation(line: 277, column: 41, scope: !1297)
!1406 = !DILocation(line: 277, column: 36, scope: !1297)
!1407 = !DILocation(line: 277, column: 35, scope: !1297)
!1408 = !DILocation(line: 277, column: 52, scope: !1297)
!1409 = !DILocation(line: 277, column: 34, scope: !1297)
!1410 = !DILocation(line: 276, column: 16, scope: !1297)
!1411 = !DILocation(line: 276, column: 3, scope: !1297)
!1412 = !DILocation(line: 276, column: 7, scope: !1297)
!1413 = !DILocation(line: 276, column: 14, scope: !1297)
!1414 = !DILocation(line: 279, column: 19, scope: !1297)
!1415 = !DILocation(line: 279, column: 3, scope: !1297)
!1416 = !DILocation(line: 280, column: 1, scope: !1297)
!1417 = distinct !DISubprogram(name: "on_ready", scope: !3, file: !3, line: 227, type: !39, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1418 = !DILocalVariable(name: "fduuid", arg: 1, scope: !1417, file: !3, line: 227, type: !41)
!1419 = !DILocation(line: 227, column: 31, scope: !1417)
!1420 = !DILocalVariable(name: "ws", arg: 2, scope: !1417, file: !3, line: 227, type: !33)
!1421 = !DILocation(line: 227, column: 55, scope: !1417)
!1422 = !DILocation(line: 228, column: 10, scope: !1417)
!1423 = !DILocation(line: 229, column: 16, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 229, column: 7)
!1425 = !DILocation(line: 229, column: 21, scope: !1424)
!1426 = !DILocation(line: 229, column: 7, scope: !1424)
!1427 = !DILocation(line: 229, column: 7, scope: !1417)
!1428 = !DILocation(line: 230, column: 14, scope: !1424)
!1429 = !DILocation(line: 230, column: 19, scope: !1424)
!1430 = !DILocation(line: 230, column: 36, scope: !1424)
!1431 = !DILocation(line: 230, column: 28, scope: !1424)
!1432 = !DILocation(line: 230, column: 5, scope: !1424)
!1433 = !DILocation(line: 231, column: 1, scope: !1417)
!1434 = distinct !DISubprogram(name: "websocket_consume", scope: !1313, file: !1313, line: 424, type: !1435, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!122, !32, !122, !32, !49}
!1437 = !DILocalVariable(name: "buffer", arg: 1, scope: !1434, file: !1313, line: 424, type: !32)
!1438 = !DILocation(line: 424, column: 41, scope: !1434)
!1439 = !DILocalVariable(name: "len", arg: 2, scope: !1434, file: !1313, line: 424, type: !122)
!1440 = !DILocation(line: 424, column: 58, scope: !1434)
!1441 = !DILocalVariable(name: "udata", arg: 3, scope: !1434, file: !1313, line: 424, type: !32)
!1442 = !DILocation(line: 424, column: 69, scope: !1434)
!1443 = !DILocalVariable(name: "require_masking", arg: 4, scope: !1434, file: !1313, line: 425, type: !49)
!1444 = !DILocation(line: 425, column: 43, scope: !1434)
!1445 = !DILocalVariable(name: "info", scope: !1434, file: !1313, line: 426, type: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1312)
!1447 = !DILocation(line: 426, column: 43, scope: !1434)
!1448 = !DILocation(line: 427, column: 29, scope: !1434)
!1449 = !DILocation(line: 427, column: 37, scope: !1434)
!1450 = !DILocation(line: 427, column: 7, scope: !1434)
!1451 = !DILocation(line: 428, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1434, file: !1313, line: 428, column: 7)
!1453 = !DILocation(line: 428, column: 8, scope: !1452)
!1454 = !DILocation(line: 428, column: 7, scope: !1434)
!1455 = !DILocation(line: 432, column: 33, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !1313, line: 428, column: 26)
!1457 = !DILocation(line: 432, column: 5, scope: !1456)
!1458 = !DILocation(line: 433, column: 5, scope: !1456)
!1459 = !DILocation(line: 435, column: 12, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1434, file: !1313, line: 435, column: 7)
!1461 = !DILocation(line: 435, column: 7, scope: !1460)
!1462 = !DILocation(line: 435, column: 31, scope: !1460)
!1463 = !DILocation(line: 435, column: 24, scope: !1460)
!1464 = !DILocation(line: 435, column: 47, scope: !1460)
!1465 = !DILocation(line: 435, column: 45, scope: !1460)
!1466 = !DILocation(line: 435, column: 7, scope: !1434)
!1467 = !DILocation(line: 436, column: 12, scope: !1460)
!1468 = !DILocation(line: 436, column: 5, scope: !1460)
!1469 = !DILocalVariable(name: "reminder", scope: !1434, file: !1313, line: 437, type: !122)
!1470 = !DILocation(line: 437, column: 12, scope: !1434)
!1471 = !DILocation(line: 437, column: 23, scope: !1434)
!1472 = !DILocalVariable(name: "pos", scope: !1434, file: !1313, line: 438, type: !121)
!1473 = !DILocation(line: 438, column: 12, scope: !1434)
!1474 = !DILocation(line: 438, column: 29, scope: !1434)
!1475 = !DILocation(line: 439, column: 3, scope: !1434)
!1476 = !DILocation(line: 439, column: 15, scope: !1434)
!1477 = !DILocation(line: 439, column: 10, scope: !1434)
!1478 = !DILocation(line: 439, column: 34, scope: !1434)
!1479 = !DILocation(line: 439, column: 27, scope: !1434)
!1480 = !DILocation(line: 439, column: 51, scope: !1434)
!1481 = !DILocation(line: 439, column: 48, scope: !1434)
!1482 = !DILocalVariable(name: "payload", scope: !1483, file: !1313, line: 441, type: !32)
!1483 = distinct !DILexicalBlock(scope: !1434, file: !1313, line: 439, column: 61)
!1484 = !DILocation(line: 441, column: 11, scope: !1483)
!1485 = !DILocation(line: 441, column: 30, scope: !1483)
!1486 = !DILocation(line: 441, column: 41, scope: !1483)
!1487 = !DILocation(line: 441, column: 36, scope: !1483)
!1488 = !DILocation(line: 441, column: 34, scope: !1483)
!1489 = !DILocation(line: 443, column: 14, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1483, file: !1313, line: 443, column: 9)
!1491 = !DILocation(line: 443, column: 9, scope: !1490)
!1492 = !DILocation(line: 443, column: 9, scope: !1483)
!1493 = !DILocalVariable(name: "mask", scope: !1494, file: !1313, line: 445, type: !128)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !1313, line: 443, column: 22)
!1495 = !DILocation(line: 445, column: 16, scope: !1494)
!1496 = !DILocation(line: 446, column: 46, scope: !1494)
!1497 = !DILocation(line: 446, column: 33, scope: !1494)
!1498 = !DILocation(line: 446, column: 7, scope: !1494)
!1499 = !DILocation(line: 446, column: 31, scope: !1494)
!1500 = !DILocation(line: 447, column: 46, scope: !1494)
!1501 = !DILocation(line: 447, column: 33, scope: !1494)
!1502 = !DILocation(line: 447, column: 7, scope: !1494)
!1503 = !DILocation(line: 447, column: 31, scope: !1494)
!1504 = !DILocation(line: 448, column: 46, scope: !1494)
!1505 = !DILocation(line: 448, column: 33, scope: !1494)
!1506 = !DILocation(line: 448, column: 7, scope: !1494)
!1507 = !DILocation(line: 448, column: 31, scope: !1494)
!1508 = !DILocation(line: 449, column: 46, scope: !1494)
!1509 = !DILocation(line: 449, column: 33, scope: !1494)
!1510 = !DILocation(line: 449, column: 7, scope: !1494)
!1511 = !DILocation(line: 449, column: 31, scope: !1494)
!1512 = !DILocation(line: 450, column: 23, scope: !1494)
!1513 = !DILocation(line: 450, column: 37, scope: !1494)
!1514 = !DILocation(line: 450, column: 52, scope: !1494)
!1515 = !DILocation(line: 450, column: 7, scope: !1494)
!1516 = !DILocation(line: 451, column: 5, scope: !1494)
!1517 = !DILocation(line: 451, column: 16, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1490, file: !1313, line: 451, column: 16)
!1519 = !DILocation(line: 451, column: 32, scope: !1518)
!1520 = !DILocation(line: 451, column: 40, scope: !1518)
!1521 = !DILocation(line: 451, column: 35, scope: !1518)
!1522 = !DILocation(line: 451, column: 16, scope: !1490)
!1523 = !DILocation(line: 455, column: 35, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1518, file: !1313, line: 451, column: 55)
!1525 = !DILocation(line: 455, column: 7, scope: !1524)
!1526 = !DILocation(line: 456, column: 5, scope: !1524)
!1527 = !DILocation(line: 458, column: 13, scope: !1483)
!1528 = !DILocation(line: 458, column: 20, scope: !1483)
!1529 = !DILocation(line: 458, column: 5, scope: !1483)
!1530 = !DILocation(line: 461, column: 30, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1483, file: !1313, line: 458, column: 26)
!1532 = !DILocation(line: 461, column: 37, scope: !1531)
!1533 = !DILocation(line: 461, column: 51, scope: !1531)
!1534 = !DILocation(line: 462, column: 32, scope: !1531)
!1535 = !DILocation(line: 462, column: 39, scope: !1531)
!1536 = !DILocation(line: 462, column: 45, scope: !1531)
!1537 = !DILocation(line: 462, column: 30, scope: !1531)
!1538 = !DILocation(line: 462, column: 56, scope: !1531)
!1539 = !DILocation(line: 462, column: 63, scope: !1531)
!1540 = !DILocation(line: 462, column: 69, scope: !1531)
!1541 = !DILocation(line: 462, column: 54, scope: !1531)
!1542 = !DILocation(line: 461, column: 7, scope: !1531)
!1543 = !DILocation(line: 463, column: 7, scope: !1531)
!1544 = !DILocation(line: 466, column: 30, scope: !1531)
!1545 = !DILocation(line: 466, column: 37, scope: !1531)
!1546 = !DILocation(line: 466, column: 51, scope: !1531)
!1547 = !DILocation(line: 467, column: 32, scope: !1531)
!1548 = !DILocation(line: 467, column: 39, scope: !1531)
!1549 = !DILocation(line: 467, column: 45, scope: !1531)
!1550 = !DILocation(line: 467, column: 30, scope: !1531)
!1551 = !DILocation(line: 467, column: 56, scope: !1531)
!1552 = !DILocation(line: 467, column: 63, scope: !1531)
!1553 = !DILocation(line: 467, column: 69, scope: !1531)
!1554 = !DILocation(line: 467, column: 54, scope: !1531)
!1555 = !DILocation(line: 466, column: 7, scope: !1531)
!1556 = !DILocation(line: 468, column: 7, scope: !1531)
!1557 = !DILocation(line: 471, column: 30, scope: !1531)
!1558 = !DILocation(line: 471, column: 37, scope: !1531)
!1559 = !DILocation(line: 471, column: 51, scope: !1531)
!1560 = !DILocation(line: 472, column: 32, scope: !1531)
!1561 = !DILocation(line: 472, column: 39, scope: !1531)
!1562 = !DILocation(line: 472, column: 45, scope: !1531)
!1563 = !DILocation(line: 472, column: 30, scope: !1531)
!1564 = !DILocation(line: 472, column: 56, scope: !1531)
!1565 = !DILocation(line: 472, column: 63, scope: !1531)
!1566 = !DILocation(line: 472, column: 69, scope: !1531)
!1567 = !DILocation(line: 472, column: 54, scope: !1531)
!1568 = !DILocation(line: 471, column: 7, scope: !1531)
!1569 = !DILocation(line: 473, column: 7, scope: !1531)
!1570 = !DILocation(line: 476, column: 35, scope: !1531)
!1571 = !DILocation(line: 476, column: 7, scope: !1531)
!1572 = !DILocation(line: 477, column: 7, scope: !1531)
!1573 = !DILocation(line: 480, column: 34, scope: !1531)
!1574 = !DILocation(line: 480, column: 41, scope: !1531)
!1575 = !DILocation(line: 480, column: 55, scope: !1531)
!1576 = !DILocation(line: 480, column: 7, scope: !1531)
!1577 = !DILocation(line: 481, column: 7, scope: !1531)
!1578 = !DILocation(line: 484, column: 34, scope: !1531)
!1579 = !DILocation(line: 484, column: 41, scope: !1531)
!1580 = !DILocation(line: 484, column: 55, scope: !1531)
!1581 = !DILocation(line: 484, column: 7, scope: !1531)
!1582 = !DILocation(line: 485, column: 7, scope: !1531)
!1583 = !DILocation(line: 491, column: 35, scope: !1531)
!1584 = !DILocation(line: 491, column: 7, scope: !1531)
!1585 = !DILocation(line: 492, column: 5, scope: !1531)
!1586 = !DILocation(line: 494, column: 16, scope: !1483)
!1587 = !DILocation(line: 494, column: 33, scope: !1483)
!1588 = !DILocation(line: 494, column: 28, scope: !1483)
!1589 = !DILocation(line: 494, column: 52, scope: !1483)
!1590 = !DILocation(line: 494, column: 45, scope: !1483)
!1591 = !DILocation(line: 494, column: 25, scope: !1483)
!1592 = !DILocation(line: 494, column: 14, scope: !1483)
!1593 = !DILocation(line: 495, column: 10, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1483, file: !1313, line: 495, column: 9)
!1595 = !DILocation(line: 495, column: 9, scope: !1483)
!1596 = !DILocation(line: 496, column: 7, scope: !1594)
!1597 = !DILocation(line: 497, column: 17, scope: !1483)
!1598 = !DILocation(line: 497, column: 12, scope: !1483)
!1599 = !DILocation(line: 497, column: 36, scope: !1483)
!1600 = !DILocation(line: 497, column: 29, scope: !1483)
!1601 = !DILocation(line: 497, column: 9, scope: !1483)
!1602 = !DILocation(line: 498, column: 34, scope: !1483)
!1603 = !DILocation(line: 498, column: 39, scope: !1483)
!1604 = !DILocation(line: 498, column: 12, scope: !1483)
!1605 = distinct !{!1605, !1475, !1606}
!1606 = !DILocation(line: 499, column: 3, scope: !1434)
!1607 = !DILocation(line: 501, column: 11, scope: !1434)
!1608 = !DILocation(line: 501, column: 30, scope: !1434)
!1609 = !DILocation(line: 501, column: 39, scope: !1434)
!1610 = !DILocation(line: 501, column: 37, scope: !1434)
!1611 = !DILocation(line: 501, column: 45, scope: !1434)
!1612 = !DILocation(line: 501, column: 43, scope: !1434)
!1613 = !DILocation(line: 501, column: 55, scope: !1434)
!1614 = !DILocation(line: 501, column: 3, scope: !1434)
!1615 = !DILocation(line: 502, column: 10, scope: !1434)
!1616 = !DILocation(line: 502, column: 3, scope: !1434)
!1617 = !DILocation(line: 503, column: 1, scope: !1434)
!1618 = distinct !DISubprogram(name: "websocket_buffer_peek", scope: !1313, file: !1313, line: 386, type: !1619, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!1312, !32, !122}
!1621 = !DILocalVariable(name: "buffer", arg: 1, scope: !1618, file: !1313, line: 386, type: !32)
!1622 = !DILocation(line: 386, column: 29, scope: !1618)
!1623 = !DILocalVariable(name: "len", arg: 2, scope: !1618, file: !1313, line: 386, type: !122)
!1624 = !DILocation(line: 386, column: 46, scope: !1618)
!1625 = !DILocation(line: 387, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1618, file: !1313, line: 387, column: 7)
!1627 = !DILocation(line: 387, column: 11, scope: !1626)
!1628 = !DILocation(line: 387, column: 7, scope: !1618)
!1629 = !DILocalVariable(name: "info", scope: !1630, file: !1313, line: 388, type: !1631)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !1313, line: 387, column: 16)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1632 = !DILocation(line: 388, column: 42, scope: !1630)
!1633 = !DILocation(line: 390, column: 5, scope: !1630)
!1634 = !DILocalVariable(name: "mask_f", scope: !1618, file: !1313, line: 392, type: !1635)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!1636 = !DILocation(line: 392, column: 17, scope: !1618)
!1637 = !DILocation(line: 392, column: 39, scope: !1618)
!1638 = !DILocation(line: 392, column: 27, scope: !1618)
!1639 = !DILocation(line: 392, column: 50, scope: !1618)
!1640 = !DILocation(line: 392, column: 56, scope: !1618)
!1641 = !DILocation(line: 392, column: 26, scope: !1618)
!1642 = !DILocalVariable(name: "mask_l", scope: !1618, file: !1313, line: 393, type: !1635)
!1643 = !DILocation(line: 393, column: 17, scope: !1618)
!1644 = !DILocation(line: 393, column: 27, scope: !1618)
!1645 = !DILocation(line: 393, column: 34, scope: !1618)
!1646 = !DILocation(line: 393, column: 26, scope: !1618)
!1647 = !DILocalVariable(name: "len_indicator", scope: !1618, file: !1313, line: 394, type: !49)
!1648 = !DILocation(line: 394, column: 11, scope: !1618)
!1649 = !DILocation(line: 394, column: 41, scope: !1618)
!1650 = !DILocation(line: 394, column: 29, scope: !1618)
!1651 = !DILocation(line: 394, column: 28, scope: !1618)
!1652 = !DILocation(line: 394, column: 53, scope: !1618)
!1653 = !DILocation(line: 394, column: 27, scope: !1618)
!1654 = !DILocation(line: 395, column: 11, scope: !1618)
!1655 = !DILocation(line: 395, column: 3, scope: !1618)
!1656 = !DILocation(line: 397, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !1313, line: 397, column: 9)
!1658 = distinct !DILexicalBlock(scope: !1618, file: !1313, line: 395, column: 26)
!1659 = !DILocation(line: 397, column: 13, scope: !1657)
!1660 = !DILocation(line: 397, column: 9, scope: !1658)
!1661 = !DILocation(line: 398, column: 46, scope: !1657)
!1662 = !DILocation(line: 398, column: 64, scope: !1657)
!1663 = !DILocation(line: 398, column: 62, scope: !1657)
!1664 = !DILocation(line: 398, column: 50, scope: !1657)
!1665 = !DILocation(line: 398, column: 73, scope: !1657)
!1666 = !DILocation(line: 398, column: 7, scope: !1657)
!1667 = !DILocation(line: 399, column: 44, scope: !1658)
!1668 = !DILocation(line: 400, column: 19, scope: !1658)
!1669 = !DILocation(line: 400, column: 9, scope: !1658)
!1670 = !DILocation(line: 401, column: 23, scope: !1658)
!1671 = !DILocation(line: 401, column: 21, scope: !1658)
!1672 = !DILocation(line: 401, column: 9, scope: !1658)
!1673 = !DILocation(line: 401, column: 32, scope: !1658)
!1674 = !DILocation(line: 399, column: 5, scope: !1658)
!1675 = !DILocation(line: 403, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1658, file: !1313, line: 403, column: 9)
!1677 = !DILocation(line: 403, column: 13, scope: !1676)
!1678 = !DILocation(line: 403, column: 9, scope: !1658)
!1679 = !DILocation(line: 404, column: 46, scope: !1676)
!1680 = !DILocation(line: 404, column: 65, scope: !1676)
!1681 = !DILocation(line: 404, column: 63, scope: !1676)
!1682 = !DILocation(line: 404, column: 50, scope: !1676)
!1683 = !DILocation(line: 405, column: 47, scope: !1676)
!1684 = !DILocation(line: 404, column: 7, scope: !1676)
!1685 = !DILocalVariable(name: "msg_len", scope: !1686, file: !1313, line: 407, type: !122)
!1686 = distinct !DILexicalBlock(scope: !1658, file: !1313, line: 406, column: 5)
!1687 = !DILocation(line: 407, column: 16, scope: !1686)
!1688 = !DILocation(line: 407, column: 26, scope: !1686)
!1689 = !DILocation(line: 408, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !1313, line: 408, column: 11)
!1691 = !DILocation(line: 408, column: 19, scope: !1690)
!1692 = !DILocation(line: 408, column: 11, scope: !1686)
!1693 = !DILocation(line: 409, column: 48, scope: !1690)
!1694 = !DILocation(line: 409, column: 9, scope: !1690)
!1695 = !DILocation(line: 410, column: 46, scope: !1686)
!1696 = !DILocation(line: 410, column: 47, scope: !1686)
!1697 = !DILocation(line: 410, column: 71, scope: !1686)
!1698 = !DILocation(line: 410, column: 69, scope: !1686)
!1699 = !DILocation(line: 410, column: 56, scope: !1686)
!1700 = !DILocation(line: 411, column: 47, scope: !1686)
!1701 = !DILocation(line: 410, column: 7, scope: !1686)
!1702 = !DILocation(line: 414, column: 44, scope: !1658)
!1703 = !DILocation(line: 414, column: 45, scope: !1658)
!1704 = !DILocation(line: 415, column: 59, scope: !1658)
!1705 = !DILocation(line: 415, column: 57, scope: !1658)
!1706 = !DILocation(line: 415, column: 45, scope: !1658)
!1707 = !DILocation(line: 415, column: 68, scope: !1658)
!1708 = !DILocation(line: 414, column: 5, scope: !1658)
!1709 = !DILocation(line: 417, column: 1, scope: !1618)
!1710 = distinct !DISubprogram(name: "websocket_on_protocol_error", scope: !3, file: !3, line: 200, type: !155, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1711 = !DILocalVariable(name: "ws_p", arg: 1, scope: !1710, file: !3, line: 200, type: !32)
!1712 = !DILocation(line: 200, column: 47, scope: !1710)
!1713 = !DILocalVariable(name: "ws", scope: !1710, file: !3, line: 201, type: !62)
!1714 = !DILocation(line: 201, column: 9, scope: !1710)
!1715 = !DILocation(line: 201, column: 14, scope: !1710)
!1716 = !DILocation(line: 202, column: 13, scope: !1710)
!1717 = !DILocation(line: 202, column: 17, scope: !1710)
!1718 = !DILocation(line: 202, column: 3, scope: !1710)
!1719 = !DILocation(line: 203, column: 1, scope: !1710)
!1720 = distinct !DISubprogram(name: "websocket_xmask", scope: !1313, file: !1313, line: 147, type: !1721, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !32, !122, !128}
!1723 = !DILocalVariable(name: "msg", arg: 1, scope: !1720, file: !1313, line: 147, type: !32)
!1724 = !DILocation(line: 147, column: 28, scope: !1720)
!1725 = !DILocalVariable(name: "len", arg: 2, scope: !1720, file: !1313, line: 147, type: !122)
!1726 = !DILocation(line: 147, column: 42, scope: !1720)
!1727 = !DILocalVariable(name: "mask", arg: 3, scope: !1720, file: !1313, line: 147, type: !128)
!1728 = !DILocation(line: 147, column: 56, scope: !1720)
!1729 = !DILocation(line: 148, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1720, file: !1313, line: 148, column: 7)
!1731 = !DILocation(line: 148, column: 11, scope: !1730)
!1732 = !DILocation(line: 148, column: 7, scope: !1720)
!1733 = !DILocalVariable(name: "offset", scope: !1734, file: !1313, line: 150, type: !1736)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !1313, line: 149, column: 5)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !1313, line: 148, column: 16)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!1737 = !DILocation(line: 150, column: 23, scope: !1734)
!1738 = !DILocation(line: 150, column: 48, scope: !1734)
!1739 = !DILocation(line: 150, column: 37, scope: !1734)
!1740 = !DILocation(line: 150, column: 52, scope: !1734)
!1741 = !DILocation(line: 150, column: 34, scope: !1734)
!1742 = !DILocation(line: 151, column: 15, scope: !1734)
!1743 = !DILocation(line: 151, column: 7, scope: !1734)
!1744 = !DILocation(line: 153, column: 32, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1734, file: !1313, line: 151, column: 23)
!1746 = !DILocation(line: 153, column: 21, scope: !1745)
!1747 = !DILocation(line: 153, column: 9, scope: !1745)
!1748 = !DILocation(line: 153, column: 29, scope: !1745)
!1749 = !DILocation(line: 156, column: 32, scope: !1745)
!1750 = !DILocation(line: 156, column: 21, scope: !1745)
!1751 = !DILocation(line: 156, column: 9, scope: !1745)
!1752 = !DILocation(line: 156, column: 29, scope: !1745)
!1753 = !DILocation(line: 159, column: 32, scope: !1745)
!1754 = !DILocation(line: 159, column: 21, scope: !1745)
!1755 = !DILocation(line: 159, column: 9, scope: !1745)
!1756 = !DILocation(line: 159, column: 29, scope: !1745)
!1757 = !DILocalVariable(name: "comb", scope: !1745, file: !1313, line: 161, type: !122)
!1758 = !DILocation(line: 161, column: 18, scope: !1745)
!1759 = !DILocation(line: 161, column: 25, scope: !1745)
!1760 = !DILocation(line: 161, column: 43, scope: !1745)
!1761 = !DILocation(line: 161, column: 33, scope: !1745)
!1762 = !DILocation(line: 161, column: 48, scope: !1745)
!1763 = !DILocation(line: 161, column: 30, scope: !1745)
!1764 = !DILocation(line: 162, column: 35, scope: !1745)
!1765 = !DILocation(line: 162, column: 60, scope: !1745)
!1766 = !DILocation(line: 162, column: 58, scope: !1745)
!1767 = !DILocation(line: 162, column: 9, scope: !1745)
!1768 = !DILocation(line: 162, column: 33, scope: !1745)
!1769 = !DILocation(line: 163, column: 35, scope: !1745)
!1770 = !DILocation(line: 163, column: 60, scope: !1745)
!1771 = !DILocation(line: 163, column: 58, scope: !1745)
!1772 = !DILocation(line: 163, column: 9, scope: !1745)
!1773 = !DILocation(line: 163, column: 33, scope: !1745)
!1774 = !DILocation(line: 164, column: 35, scope: !1745)
!1775 = !DILocation(line: 164, column: 60, scope: !1745)
!1776 = !DILocation(line: 164, column: 58, scope: !1745)
!1777 = !DILocation(line: 164, column: 9, scope: !1745)
!1778 = !DILocation(line: 164, column: 33, scope: !1745)
!1779 = !DILocation(line: 165, column: 35, scope: !1745)
!1780 = !DILocation(line: 165, column: 60, scope: !1745)
!1781 = !DILocation(line: 165, column: 58, scope: !1745)
!1782 = !DILocation(line: 165, column: 9, scope: !1745)
!1783 = !DILocation(line: 165, column: 33, scope: !1745)
!1784 = !DILocation(line: 166, column: 35, scope: !1745)
!1785 = !DILocation(line: 166, column: 24, scope: !1745)
!1786 = !DILocation(line: 166, column: 41, scope: !1745)
!1787 = !DILocation(line: 166, column: 39, scope: !1745)
!1788 = !DILocation(line: 166, column: 15, scope: !1745)
!1789 = !DILocation(line: 166, column: 13, scope: !1745)
!1790 = !DILocation(line: 167, column: 16, scope: !1745)
!1791 = !DILocation(line: 167, column: 13, scope: !1745)
!1792 = !DILocation(line: 168, column: 7, scope: !1745)
!1793 = !DILocation(line: 179, column: 20, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1735, file: !1313, line: 179, column: 9)
!1795 = !DILocation(line: 179, column: 9, scope: !1794)
!1796 = !DILocation(line: 179, column: 24, scope: !1794)
!1797 = !DILocation(line: 179, column: 9, scope: !1735)
!1798 = !DILocation(line: 180, column: 29, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1794, file: !1313, line: 179, column: 29)
!1800 = !DILocation(line: 180, column: 21, scope: !1799)
!1801 = !DILocation(line: 180, column: 9, scope: !1799)
!1802 = !DILocation(line: 180, column: 26, scope: !1799)
!1803 = !DILocation(line: 181, column: 11, scope: !1799)
!1804 = !DILocation(line: 182, column: 33, scope: !1799)
!1805 = !DILocation(line: 182, column: 22, scope: !1799)
!1806 = !DILocation(line: 182, column: 37, scope: !1799)
!1807 = !DILocation(line: 182, column: 13, scope: !1799)
!1808 = !DILocation(line: 182, column: 11, scope: !1799)
!1809 = !DILocation(line: 183, column: 5, scope: !1799)
!1810 = !DILocalVariable(name: "xmask", scope: !1735, file: !1313, line: 185, type: !1326)
!1811 = !DILocation(line: 185, column: 20, scope: !1735)
!1812 = !DILocation(line: 185, column: 40, scope: !1735)
!1813 = !DILocation(line: 185, column: 30, scope: !1735)
!1814 = !DILocation(line: 185, column: 46, scope: !1735)
!1815 = !DILocation(line: 185, column: 55, scope: !1735)
!1816 = !DILocation(line: 185, column: 53, scope: !1735)
!1817 = !DILocation(line: 186, column: 5, scope: !1735)
!1818 = !DILocation(line: 186, column: 12, scope: !1735)
!1819 = !DILocation(line: 186, column: 16, scope: !1735)
!1820 = !DILocation(line: 187, column: 29, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1735, file: !1313, line: 186, column: 22)
!1822 = !DILocation(line: 187, column: 21, scope: !1821)
!1823 = !DILocation(line: 187, column: 9, scope: !1821)
!1824 = !DILocation(line: 187, column: 26, scope: !1821)
!1825 = !DILocation(line: 188, column: 11, scope: !1821)
!1826 = !DILocation(line: 189, column: 33, scope: !1821)
!1827 = !DILocation(line: 189, column: 22, scope: !1821)
!1828 = !DILocation(line: 189, column: 37, scope: !1821)
!1829 = !DILocation(line: 189, column: 13, scope: !1821)
!1830 = !DILocation(line: 189, column: 11, scope: !1821)
!1831 = distinct !{!1831, !1817, !1832}
!1832 = !DILocation(line: 190, column: 5, scope: !1735)
!1833 = !DILocation(line: 192, column: 3, scope: !1735)
!1834 = !DILocation(line: 195, column: 11, scope: !1720)
!1835 = !DILocation(line: 195, column: 3, scope: !1720)
!1836 = !DILocation(line: 197, column: 28, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1720, file: !1313, line: 195, column: 16)
!1838 = !DILocation(line: 197, column: 17, scope: !1837)
!1839 = !DILocation(line: 197, column: 5, scope: !1837)
!1840 = !DILocation(line: 197, column: 25, scope: !1837)
!1841 = !DILocation(line: 200, column: 28, scope: !1837)
!1842 = !DILocation(line: 200, column: 17, scope: !1837)
!1843 = !DILocation(line: 200, column: 5, scope: !1837)
!1844 = !DILocation(line: 200, column: 25, scope: !1837)
!1845 = !DILocation(line: 203, column: 28, scope: !1837)
!1846 = !DILocation(line: 203, column: 17, scope: !1837)
!1847 = !DILocation(line: 203, column: 5, scope: !1837)
!1848 = !DILocation(line: 203, column: 25, scope: !1837)
!1849 = !DILocation(line: 206, column: 28, scope: !1837)
!1850 = !DILocation(line: 206, column: 17, scope: !1837)
!1851 = !DILocation(line: 206, column: 5, scope: !1837)
!1852 = !DILocation(line: 206, column: 25, scope: !1837)
!1853 = !DILocation(line: 209, column: 28, scope: !1837)
!1854 = !DILocation(line: 209, column: 17, scope: !1837)
!1855 = !DILocation(line: 209, column: 5, scope: !1837)
!1856 = !DILocation(line: 209, column: 25, scope: !1837)
!1857 = !DILocation(line: 212, column: 28, scope: !1837)
!1858 = !DILocation(line: 212, column: 17, scope: !1837)
!1859 = !DILocation(line: 212, column: 5, scope: !1837)
!1860 = !DILocation(line: 212, column: 25, scope: !1837)
!1861 = !DILocation(line: 215, column: 28, scope: !1837)
!1862 = !DILocation(line: 215, column: 17, scope: !1837)
!1863 = !DILocation(line: 215, column: 5, scope: !1837)
!1864 = !DILocation(line: 215, column: 25, scope: !1837)
!1865 = !DILocation(line: 217, column: 3, scope: !1837)
!1866 = !DILocation(line: 218, column: 1, scope: !1720)
!1867 = distinct !DISubprogram(name: "websocket_on_unwrapped", scope: !3, file: !3, line: 151, type: !1868, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !32, !32, !122, !80, !80, !80, !14}
!1870 = !DILocalVariable(name: "ws_p", arg: 1, scope: !1867, file: !3, line: 151, type: !32)
!1871 = !DILocation(line: 151, column: 42, scope: !1867)
!1872 = !DILocalVariable(name: "msg", arg: 2, scope: !1867, file: !3, line: 151, type: !32)
!1873 = !DILocation(line: 151, column: 54, scope: !1867)
!1874 = !DILocalVariable(name: "len", arg: 3, scope: !1867, file: !3, line: 151, type: !122)
!1875 = !DILocation(line: 151, column: 68, scope: !1867)
!1876 = !DILocalVariable(name: "first", arg: 4, scope: !1867, file: !3, line: 152, type: !80)
!1877 = !DILocation(line: 152, column: 41, scope: !1867)
!1878 = !DILocalVariable(name: "last", arg: 5, scope: !1867, file: !3, line: 152, type: !80)
!1879 = !DILocation(line: 152, column: 53, scope: !1867)
!1880 = !DILocalVariable(name: "text", arg: 6, scope: !1867, file: !3, line: 152, type: !80)
!1881 = !DILocation(line: 152, column: 64, scope: !1867)
!1882 = !DILocalVariable(name: "rsv", arg: 7, scope: !1867, file: !3, line: 153, type: !14)
!1883 = !DILocation(line: 153, column: 50, scope: !1867)
!1884 = !DILocalVariable(name: "ws", scope: !1867, file: !3, line: 154, type: !62)
!1885 = !DILocation(line: 154, column: 9, scope: !1867)
!1886 = !DILocation(line: 154, column: 14, scope: !1867)
!1887 = !DILocation(line: 155, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 155, column: 7)
!1889 = !DILocation(line: 155, column: 12, scope: !1888)
!1890 = !DILocation(line: 155, column: 15, scope: !1888)
!1891 = !DILocation(line: 155, column: 7, scope: !1867)
!1892 = !DILocation(line: 156, column: 5, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 155, column: 22)
!1894 = !DILocation(line: 156, column: 9, scope: !1893)
!1895 = !DILocation(line: 156, column: 20, scope: !1893)
!1896 = !DILocation(line: 156, column: 40, scope: !1893)
!1897 = !DILocation(line: 156, column: 61, scope: !1893)
!1898 = !DILocation(line: 156, column: 49, scope: !1893)
!1899 = !DILocation(line: 157, column: 29, scope: !1893)
!1900 = !DILocation(line: 158, column: 5, scope: !1893)
!1901 = !DILocation(line: 160, column: 7, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 160, column: 7)
!1903 = !DILocation(line: 160, column: 7, scope: !1867)
!1904 = !DILocation(line: 161, column: 28, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 160, column: 14)
!1906 = !DILocation(line: 161, column: 5, scope: !1905)
!1907 = !DILocation(line: 161, column: 9, scope: !1905)
!1908 = !DILocation(line: 161, column: 17, scope: !1905)
!1909 = !DILocation(line: 162, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 162, column: 9)
!1911 = !DILocation(line: 162, column: 13, scope: !1910)
!1912 = !DILocation(line: 162, column: 17, scope: !1910)
!1913 = !DILocation(line: 162, column: 9, scope: !1905)
!1914 = !DILocation(line: 163, column: 31, scope: !1910)
!1915 = !DILocation(line: 163, column: 17, scope: !1910)
!1916 = !DILocation(line: 163, column: 7, scope: !1910)
!1917 = !DILocation(line: 163, column: 11, scope: !1910)
!1918 = !DILocation(line: 163, column: 15, scope: !1910)
!1919 = !DILocation(line: 164, column: 22, scope: !1905)
!1920 = !DILocation(line: 164, column: 26, scope: !1905)
!1921 = !DILocation(line: 164, column: 5, scope: !1905)
!1922 = !DILocation(line: 165, column: 3, scope: !1905)
!1923 = !DILocation(line: 166, column: 19, scope: !1867)
!1924 = !DILocation(line: 166, column: 23, scope: !1867)
!1925 = !DILocation(line: 166, column: 28, scope: !1867)
!1926 = !DILocation(line: 166, column: 33, scope: !1867)
!1927 = !DILocation(line: 166, column: 3, scope: !1867)
!1928 = !DILocation(line: 167, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 167, column: 7)
!1930 = !DILocation(line: 167, column: 7, scope: !1867)
!1931 = !DILocation(line: 168, column: 5, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 167, column: 13)
!1933 = !DILocation(line: 168, column: 9, scope: !1932)
!1934 = !DILocation(line: 168, column: 20, scope: !1932)
!1935 = !DILocation(line: 168, column: 39, scope: !1932)
!1936 = !DILocation(line: 168, column: 43, scope: !1932)
!1937 = !DILocation(line: 168, column: 24, scope: !1932)
!1938 = !DILocation(line: 168, column: 49, scope: !1932)
!1939 = !DILocation(line: 168, column: 53, scope: !1932)
!1940 = !DILocation(line: 169, column: 3, scope: !1932)
!1941 = !DILocation(line: 171, column: 9, scope: !1867)
!1942 = !DILocation(line: 172, column: 1, scope: !1867)
!1943 = distinct !DISubprogram(name: "websocket_on_protocol_close", scope: !3, file: !3, line: 196, type: !155, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1944 = !DILocalVariable(name: "ws_p", arg: 1, scope: !1943, file: !3, line: 196, type: !32)
!1945 = !DILocation(line: 196, column: 47, scope: !1943)
!1946 = !DILocalVariable(name: "ws", scope: !1943, file: !3, line: 197, type: !62)
!1947 = !DILocation(line: 197, column: 9, scope: !1943)
!1948 = !DILocation(line: 197, column: 14, scope: !1943)
!1949 = !DILocation(line: 198, column: 13, scope: !1943)
!1950 = !DILocation(line: 198, column: 17, scope: !1943)
!1951 = !DILocation(line: 198, column: 3, scope: !1943)
!1952 = !DILocation(line: 199, column: 1, scope: !1943)
!1953 = distinct !DISubprogram(name: "websocket_on_protocol_ping", scope: !3, file: !3, line: 173, type: !1954, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !32, !32, !122}
!1956 = !DILocalVariable(name: "ws_p", arg: 1, scope: !1953, file: !3, line: 173, type: !32)
!1957 = !DILocation(line: 173, column: 46, scope: !1953)
!1958 = !DILocalVariable(name: "msg_", arg: 2, scope: !1953, file: !3, line: 173, type: !32)
!1959 = !DILocation(line: 173, column: 58, scope: !1953)
!1960 = !DILocalVariable(name: "len", arg: 3, scope: !1953, file: !3, line: 173, type: !122)
!1961 = !DILocation(line: 173, column: 73, scope: !1953)
!1962 = !DILocalVariable(name: "ws", scope: !1953, file: !3, line: 174, type: !62)
!1963 = !DILocation(line: 174, column: 9, scope: !1953)
!1964 = !DILocation(line: 174, column: 14, scope: !1953)
!1965 = !DILocation(line: 175, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 175, column: 7)
!1967 = !DILocation(line: 175, column: 7, scope: !1953)
!1968 = !DILocalVariable(name: "buff", scope: !1969, file: !3, line: 176, type: !32)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 175, column: 13)
!1970 = !DILocation(line: 176, column: 11, scope: !1969)
!1971 = !DILocation(line: 176, column: 25, scope: !1969)
!1972 = !DILocation(line: 176, column: 29, scope: !1969)
!1973 = !DILocation(line: 176, column: 18, scope: !1969)
!1974 = !DILocation(line: 177, column: 21, scope: !1969)
!1975 = !DILocation(line: 177, column: 26, scope: !1969)
!1976 = !DILocation(line: 177, column: 12, scope: !1969)
!1977 = !DILocation(line: 178, column: 40, scope: !1969)
!1978 = !DILocation(line: 178, column: 46, scope: !1969)
!1979 = !DILocation(line: 178, column: 52, scope: !1969)
!1980 = !DILocation(line: 178, column: 18, scope: !1969)
!1981 = !DILocation(line: 179, column: 40, scope: !1969)
!1982 = !DILocation(line: 179, column: 46, scope: !1969)
!1983 = !DILocation(line: 179, column: 52, scope: !1969)
!1984 = !DILocation(line: 179, column: 18, scope: !1969)
!1985 = !DILocation(line: 177, column: 9, scope: !1969)
!1986 = !DILocation(line: 180, column: 5, scope: !1969)
!1987 = !DILocation(line: 181, column: 3, scope: !1969)
!1988 = !DILocation(line: 182, column: 18, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 182, column: 9)
!1990 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 181, column: 10)
!1991 = !DILocation(line: 182, column: 23, scope: !1989)
!1992 = !DILocation(line: 182, column: 9, scope: !1989)
!1993 = !DILocation(line: 182, column: 9, scope: !1990)
!1994 = !DILocation(line: 183, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 182, column: 34)
!1996 = !DILocation(line: 185, column: 5, scope: !1995)
!1997 = !DILocation(line: 186, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 185, column: 12)
!1999 = !DILocation(line: 190, column: 1, scope: !1953)
!2000 = distinct !DISubprogram(name: "websocket_on_protocol_pong", scope: !3, file: !3, line: 191, type: !1954, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2001 = !DILocalVariable(name: "ws_p", arg: 1, scope: !2000, file: !3, line: 191, type: !32)
!2002 = !DILocation(line: 191, column: 46, scope: !2000)
!2003 = !DILocalVariable(name: "msg", arg: 2, scope: !2000, file: !3, line: 191, type: !32)
!2004 = !DILocation(line: 191, column: 58, scope: !2000)
!2005 = !DILocalVariable(name: "len", arg: 3, scope: !2000, file: !3, line: 191, type: !122)
!2006 = !DILocation(line: 191, column: 72, scope: !2000)
!2007 = !DILocation(line: 192, column: 9, scope: !2000)
!2008 = !DILocation(line: 193, column: 9, scope: !2000)
!2009 = !DILocation(line: 194, column: 9, scope: !2000)
!2010 = !DILocation(line: 195, column: 1, scope: !2000)
!2011 = distinct !DISubprogram(name: "fiobj_obj2cstr", scope: !13, file: !13, line: 515, type: !2012, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!73, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!2015 = !DILocalVariable(name: "o", arg: 1, scope: !2011, file: !13, line: 515, type: !2014)
!2016 = !DILocation(line: 515, column: 54, scope: !2011)
!2017 = !DILocation(line: 516, column: 8, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2011, file: !13, line: 516, column: 7)
!2019 = !DILocation(line: 516, column: 7, scope: !2011)
!2020 = !DILocalVariable(name: "ret", scope: !2021, file: !13, line: 517, type: !73)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !13, line: 516, column: 11)
!2022 = !DILocation(line: 517, column: 20, scope: !2021)
!2023 = !DILocation(line: 518, column: 5, scope: !2021)
!2024 = !DILocation(line: 520, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2011, file: !13, line: 520, column: 7)
!2026 = !DILocation(line: 520, column: 9, scope: !2025)
!2027 = !DILocation(line: 520, column: 7, scope: !2011)
!2028 = !DILocation(line: 521, column: 35, scope: !2025)
!2029 = !DILocation(line: 521, column: 38, scope: !2025)
!2030 = !DILocation(line: 521, column: 12, scope: !2025)
!2031 = !DILocation(line: 521, column: 5, scope: !2025)
!2032 = !DILocation(line: 522, column: 8, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2011, file: !13, line: 522, column: 7)
!2034 = !DILocation(line: 522, column: 10, scope: !2033)
!2035 = !DILocation(line: 522, column: 37, scope: !2033)
!2036 = !DILocation(line: 522, column: 7, scope: !2011)
!2037 = !DILocation(line: 523, column: 30, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !13, line: 522, column: 65)
!2039 = !DILocation(line: 523, column: 13, scope: !2038)
!2040 = !DILocation(line: 523, column: 5, scope: !2038)
!2041 = !DILocalVariable(name: "ret", scope: !2042, file: !13, line: 525, type: !73)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !13, line: 524, column: 24)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !13, line: 523, column: 33)
!2044 = !DILocation(line: 525, column: 22, scope: !2042)
!2045 = !DILocation(line: 526, column: 7, scope: !2042)
!2046 = !DILocalVariable(name: "ret", scope: !2047, file: !13, line: 529, type: !73)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !13, line: 528, column: 25)
!2048 = !DILocation(line: 529, column: 22, scope: !2047)
!2049 = !DILocation(line: 530, column: 7, scope: !2047)
!2050 = !DILocalVariable(name: "ret", scope: !2051, file: !13, line: 533, type: !73)
!2051 = distinct !DILexicalBlock(scope: !2043, file: !13, line: 532, column: 24)
!2052 = !DILocation(line: 533, column: 22, scope: !2051)
!2053 = !DILocation(line: 534, column: 7, scope: !2051)
!2054 = !DILocation(line: 537, column: 7, scope: !2043)
!2055 = !DILocation(line: 539, column: 3, scope: !2038)
!2056 = !DILocation(line: 540, column: 10, scope: !2011)
!2057 = !DILocation(line: 540, column: 28, scope: !2011)
!2058 = !DILocation(line: 540, column: 35, scope: !2011)
!2059 = !DILocation(line: 540, column: 3, scope: !2011)
!2060 = !DILocation(line: 541, column: 1, scope: !2011)
!2061 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !13, file: !13, line: 344, type: !2062, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !113}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !13, line: 325, baseType: !2067)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 305, size: 576, elements: !2068)
!2068 = !{!2069, !2070, !2078, !2083, !2088, !2093, !2101, !2104, !2109}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !2067, file: !13, line: 307, baseType: !186, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !2067, file: !13, line: 309, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !113, !2075, !32}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !113, !32}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2067, file: !13, line: 311, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2080)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!114, !2014}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !2067, file: !13, line: 313, baseType: !2084, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!56, !2014}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !2067, file: !13, line: 315, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2090)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!56, !2014, !2014}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !2067, file: !13, line: 317, baseType: !2094, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2095)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!56, !113, !56, !2098, !32}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!164, !113, !32}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !2067, file: !13, line: 320, baseType: !2102, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !2067, file: !13, line: 322, baseType: !2105, size: 64, offset: 448)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!41, !2014}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !2067, file: !13, line: 324, baseType: !2110, size: 64, offset: 512)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2114, !2014}
!2114 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2115 = !DILocalVariable(name: "o", arg: 1, scope: !2061, file: !13, line: 344, type: !113)
!2116 = !DILocation(line: 344, column: 65, scope: !2061)
!2117 = !DILocation(line: 345, column: 11, scope: !2061)
!2118 = !DILocation(line: 345, column: 3, scope: !2061)
!2119 = !DILocation(line: 347, column: 5, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2061, file: !13, line: 345, column: 26)
!2121 = !DILocation(line: 349, column: 5, scope: !2120)
!2122 = !DILocation(line: 351, column: 5, scope: !2120)
!2123 = !DILocation(line: 353, column: 5, scope: !2120)
!2124 = !DILocation(line: 355, column: 5, scope: !2120)
!2125 = !DILocation(line: 357, column: 5, scope: !2120)
!2126 = !DILocation(line: 362, column: 5, scope: !2120)
!2127 = !DILocation(line: 364, column: 3, scope: !2061)
!2128 = !DILocation(line: 365, column: 1, scope: !2061)
!2129 = distinct !DISubprogram(name: "fiobj_type", scope: !13, file: !13, line: 250, type: !2130, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!131, !113}
!2132 = !DILocalVariable(name: "o", arg: 1, scope: !2129, file: !13, line: 250, type: !113)
!2133 = !DILocation(line: 250, column: 45, scope: !2129)
!2134 = !DILocation(line: 251, column: 8, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2129, file: !13, line: 251, column: 7)
!2136 = !DILocation(line: 251, column: 7, scope: !2129)
!2137 = !DILocation(line: 252, column: 5, scope: !2135)
!2138 = !DILocation(line: 253, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2129, file: !13, line: 253, column: 7)
!2140 = !DILocation(line: 253, column: 9, scope: !2139)
!2141 = !DILocation(line: 253, column: 7, scope: !2129)
!2142 = !DILocation(line: 254, column: 5, scope: !2139)
!2143 = !DILocation(line: 255, column: 8, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2129, file: !13, line: 255, column: 7)
!2145 = !DILocation(line: 255, column: 10, scope: !2144)
!2146 = !DILocation(line: 255, column: 37, scope: !2144)
!2147 = !DILocation(line: 255, column: 7, scope: !2129)
!2148 = !DILocation(line: 256, column: 29, scope: !2144)
!2149 = !DILocation(line: 256, column: 12, scope: !2144)
!2150 = !DILocation(line: 256, column: 5, scope: !2144)
!2151 = !DILocation(line: 258, column: 8, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2129, file: !13, line: 257, column: 7)
!2153 = !DILocation(line: 258, column: 10, scope: !2152)
!2154 = !DILocation(line: 258, column: 37, scope: !2152)
!2155 = !DILocation(line: 257, column: 7, scope: !2129)
!2156 = !DILocation(line: 259, column: 5, scope: !2152)
!2157 = !DILocation(line: 260, column: 30, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2129, file: !13, line: 260, column: 7)
!2159 = !DILocation(line: 260, column: 32, scope: !2158)
!2160 = !DILocation(line: 260, column: 59, scope: !2158)
!2161 = !DILocation(line: 260, column: 7, scope: !2129)
!2162 = !DILocation(line: 261, column: 5, scope: !2158)
!2163 = !DILocation(line: 262, column: 30, scope: !2129)
!2164 = !DILocation(line: 262, column: 10, scope: !2129)
!2165 = !DILocation(line: 262, column: 3, scope: !2129)
!2166 = !DILocation(line: 263, column: 1, scope: !2129)
!2167 = distinct !DISubprogram(name: "websocket_client_wrap", scope: !1313, file: !1313, line: 333, type: !2168, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!122, !32, !32, !122, !14, !14, !14, !14}
!2170 = !DILocalVariable(name: "target", arg: 1, scope: !2167, file: !1313, line: 333, type: !32)
!2171 = !DILocation(line: 333, column: 45, scope: !2167)
!2172 = !DILocalVariable(name: "msg", arg: 2, scope: !2167, file: !1313, line: 333, type: !32)
!2173 = !DILocation(line: 333, column: 59, scope: !2167)
!2174 = !DILocalVariable(name: "len", arg: 3, scope: !2167, file: !1313, line: 333, type: !122)
!2175 = !DILocation(line: 333, column: 73, scope: !2167)
!2176 = !DILocalVariable(name: "opcode", arg: 4, scope: !2167, file: !1313, line: 334, type: !14)
!2177 = !DILocation(line: 334, column: 53, scope: !2167)
!2178 = !DILocalVariable(name: "first", arg: 5, scope: !2167, file: !1313, line: 334, type: !14)
!2179 = !DILocation(line: 334, column: 75, scope: !2167)
!2180 = !DILocalVariable(name: "last", arg: 6, scope: !2167, file: !1313, line: 335, type: !14)
!2181 = !DILocation(line: 335, column: 53, scope: !2167)
!2182 = !DILocalVariable(name: "rsv", arg: 7, scope: !2167, file: !1313, line: 335, type: !14)
!2183 = !DILocation(line: 335, column: 73, scope: !2167)
!2184 = !DILocalVariable(name: "mask", scope: !2167, file: !1313, line: 336, type: !128)
!2185 = !DILocation(line: 336, column: 12, scope: !2167)
!2186 = !DILocation(line: 336, column: 19, scope: !2167)
!2187 = !DILocation(line: 336, column: 26, scope: !2167)
!2188 = !DILocation(line: 338, column: 44, scope: !2167)
!2189 = !DILocation(line: 338, column: 52, scope: !2167)
!2190 = !DILocation(line: 338, column: 64, scope: !2167)
!2191 = !DILocation(line: 337, column: 30, scope: !2167)
!2192 = !DILocation(line: 339, column: 40, scope: !2167)
!2193 = !DILocation(line: 339, column: 44, scope: !2167)
!2194 = !DILocation(line: 339, column: 49, scope: !2167)
!2195 = !DILocation(line: 338, column: 71, scope: !2167)
!2196 = !DILocation(line: 340, column: 38, scope: !2167)
!2197 = !DILocation(line: 340, column: 43, scope: !2167)
!2198 = !DILocation(line: 340, column: 48, scope: !2167)
!2199 = !DILocation(line: 339, column: 55, scope: !2167)
!2200 = !DILocation(line: 337, column: 28, scope: !2167)
!2201 = !DILocation(line: 337, column: 15, scope: !2167)
!2202 = !DILocation(line: 337, column: 3, scope: !2167)
!2203 = !DILocation(line: 337, column: 26, scope: !2167)
!2204 = !DILocation(line: 341, column: 7, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2167, file: !1313, line: 341, column: 7)
!2206 = !DILocation(line: 341, column: 11, scope: !2205)
!2207 = !DILocation(line: 341, column: 7, scope: !2167)
!2208 = !DILocation(line: 342, column: 30, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !1313, line: 341, column: 18)
!2210 = !DILocation(line: 342, column: 34, scope: !2209)
!2211 = !DILocation(line: 342, column: 17, scope: !2209)
!2212 = !DILocation(line: 342, column: 5, scope: !2209)
!2213 = !DILocation(line: 342, column: 28, scope: !2209)
!2214 = !DILocation(line: 343, column: 30, scope: !2209)
!2215 = !DILocation(line: 343, column: 17, scope: !2209)
!2216 = !DILocation(line: 343, column: 5, scope: !2209)
!2217 = !DILocation(line: 343, column: 28, scope: !2209)
!2218 = !DILocation(line: 344, column: 30, scope: !2209)
!2219 = !DILocation(line: 344, column: 17, scope: !2209)
!2220 = !DILocation(line: 344, column: 5, scope: !2209)
!2221 = !DILocation(line: 344, column: 28, scope: !2209)
!2222 = !DILocation(line: 345, column: 30, scope: !2209)
!2223 = !DILocation(line: 345, column: 17, scope: !2209)
!2224 = !DILocation(line: 345, column: 5, scope: !2209)
!2225 = !DILocation(line: 345, column: 28, scope: !2209)
!2226 = !DILocation(line: 346, column: 30, scope: !2209)
!2227 = !DILocation(line: 346, column: 17, scope: !2209)
!2228 = !DILocation(line: 346, column: 5, scope: !2209)
!2229 = !DILocation(line: 346, column: 28, scope: !2209)
!2230 = !DILocation(line: 347, column: 24, scope: !2209)
!2231 = !DILocation(line: 347, column: 32, scope: !2209)
!2232 = !DILocation(line: 347, column: 37, scope: !2209)
!2233 = !DILocation(line: 347, column: 42, scope: !2209)
!2234 = !DILocation(line: 347, column: 5, scope: !2209)
!2235 = !DILocation(line: 348, column: 32, scope: !2209)
!2236 = !DILocation(line: 348, column: 39, scope: !2209)
!2237 = !DILocation(line: 348, column: 44, scope: !2209)
!2238 = !DILocation(line: 348, column: 49, scope: !2209)
!2239 = !DILocation(line: 348, column: 5, scope: !2209)
!2240 = !DILocation(line: 349, column: 12, scope: !2209)
!2241 = !DILocation(line: 349, column: 16, scope: !2209)
!2242 = !DILocation(line: 349, column: 5, scope: !2209)
!2243 = !DILocation(line: 350, column: 14, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2205, file: !1313, line: 350, column: 14)
!2245 = !DILocation(line: 350, column: 18, scope: !2244)
!2246 = !DILocation(line: 350, column: 14, scope: !2205)
!2247 = !DILocation(line: 352, column: 17, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !1313, line: 350, column: 33)
!2249 = !DILocation(line: 352, column: 5, scope: !2248)
!2250 = !DILocation(line: 352, column: 28, scope: !2248)
!2251 = !DILocation(line: 353, column: 5, scope: !2248)
!2252 = !DILocation(line: 353, column: 5, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !1313, line: 353, column: 5)
!2254 = !DILocation(line: 354, column: 30, scope: !2248)
!2255 = !DILocation(line: 354, column: 17, scope: !2248)
!2256 = !DILocation(line: 354, column: 5, scope: !2248)
!2257 = !DILocation(line: 354, column: 28, scope: !2248)
!2258 = !DILocation(line: 355, column: 30, scope: !2248)
!2259 = !DILocation(line: 355, column: 17, scope: !2248)
!2260 = !DILocation(line: 355, column: 5, scope: !2248)
!2261 = !DILocation(line: 355, column: 28, scope: !2248)
!2262 = !DILocation(line: 356, column: 30, scope: !2248)
!2263 = !DILocation(line: 356, column: 17, scope: !2248)
!2264 = !DILocation(line: 356, column: 5, scope: !2248)
!2265 = !DILocation(line: 356, column: 28, scope: !2248)
!2266 = !DILocation(line: 357, column: 30, scope: !2248)
!2267 = !DILocation(line: 357, column: 17, scope: !2248)
!2268 = !DILocation(line: 357, column: 5, scope: !2248)
!2269 = !DILocation(line: 357, column: 28, scope: !2248)
!2270 = !DILocation(line: 358, column: 23, scope: !2248)
!2271 = !DILocation(line: 358, column: 30, scope: !2248)
!2272 = !DILocation(line: 358, column: 35, scope: !2248)
!2273 = !DILocation(line: 358, column: 40, scope: !2248)
!2274 = !DILocation(line: 358, column: 5, scope: !2248)
!2275 = !DILocation(line: 359, column: 32, scope: !2248)
!2276 = !DILocation(line: 359, column: 39, scope: !2248)
!2277 = !DILocation(line: 359, column: 44, scope: !2248)
!2278 = !DILocation(line: 359, column: 49, scope: !2248)
!2279 = !DILocation(line: 359, column: 5, scope: !2248)
!2280 = !DILocation(line: 360, column: 12, scope: !2248)
!2281 = !DILocation(line: 360, column: 16, scope: !2248)
!2282 = !DILocation(line: 360, column: 5, scope: !2248)
!2283 = !DILocation(line: 363, column: 15, scope: !2167)
!2284 = !DILocation(line: 363, column: 3, scope: !2167)
!2285 = !DILocation(line: 363, column: 26, scope: !2167)
!2286 = !DILocation(line: 364, column: 3, scope: !2167)
!2287 = !DILocation(line: 364, column: 3, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2167, file: !1313, line: 364, column: 3)
!2289 = !DILocation(line: 365, column: 29, scope: !2167)
!2290 = !DILocation(line: 365, column: 15, scope: !2167)
!2291 = !DILocation(line: 365, column: 3, scope: !2167)
!2292 = !DILocation(line: 365, column: 27, scope: !2167)
!2293 = !DILocation(line: 366, column: 29, scope: !2167)
!2294 = !DILocation(line: 366, column: 15, scope: !2167)
!2295 = !DILocation(line: 366, column: 3, scope: !2167)
!2296 = !DILocation(line: 366, column: 27, scope: !2167)
!2297 = !DILocation(line: 367, column: 29, scope: !2167)
!2298 = !DILocation(line: 367, column: 15, scope: !2167)
!2299 = !DILocation(line: 367, column: 3, scope: !2167)
!2300 = !DILocation(line: 367, column: 27, scope: !2167)
!2301 = !DILocation(line: 368, column: 29, scope: !2167)
!2302 = !DILocation(line: 368, column: 15, scope: !2167)
!2303 = !DILocation(line: 368, column: 3, scope: !2167)
!2304 = !DILocation(line: 368, column: 27, scope: !2167)
!2305 = !DILocation(line: 369, column: 21, scope: !2167)
!2306 = !DILocation(line: 369, column: 28, scope: !2167)
!2307 = !DILocation(line: 369, column: 34, scope: !2167)
!2308 = !DILocation(line: 369, column: 39, scope: !2167)
!2309 = !DILocation(line: 369, column: 3, scope: !2167)
!2310 = !DILocation(line: 370, column: 30, scope: !2167)
!2311 = !DILocation(line: 370, column: 37, scope: !2167)
!2312 = !DILocation(line: 370, column: 43, scope: !2167)
!2313 = !DILocation(line: 370, column: 48, scope: !2167)
!2314 = !DILocation(line: 370, column: 3, scope: !2167)
!2315 = !DILocation(line: 371, column: 10, scope: !2167)
!2316 = !DILocation(line: 371, column: 14, scope: !2167)
!2317 = !DILocation(line: 371, column: 3, scope: !2167)
!2318 = !DILocation(line: 372, column: 1, scope: !2167)
!2319 = distinct !DISubprogram(name: "websocket_server_wrap", scope: !1313, file: !1313, line: 293, type: !2168, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2320 = !DILocalVariable(name: "target", arg: 1, scope: !2319, file: !1313, line: 293, type: !32)
!2321 = !DILocation(line: 293, column: 45, scope: !2319)
!2322 = !DILocalVariable(name: "msg", arg: 2, scope: !2319, file: !1313, line: 293, type: !32)
!2323 = !DILocation(line: 293, column: 59, scope: !2319)
!2324 = !DILocalVariable(name: "len", arg: 3, scope: !2319, file: !1313, line: 293, type: !122)
!2325 = !DILocation(line: 293, column: 73, scope: !2319)
!2326 = !DILocalVariable(name: "opcode", arg: 4, scope: !2319, file: !1313, line: 294, type: !14)
!2327 = !DILocation(line: 294, column: 53, scope: !2319)
!2328 = !DILocalVariable(name: "first", arg: 5, scope: !2319, file: !1313, line: 294, type: !14)
!2329 = !DILocation(line: 294, column: 75, scope: !2319)
!2330 = !DILocalVariable(name: "last", arg: 6, scope: !2319, file: !1313, line: 295, type: !14)
!2331 = !DILocation(line: 295, column: 53, scope: !2319)
!2332 = !DILocalVariable(name: "rsv", arg: 7, scope: !2319, file: !1313, line: 295, type: !14)
!2333 = !DILocation(line: 295, column: 73, scope: !2319)
!2334 = !DILocation(line: 297, column: 44, scope: !2319)
!2335 = !DILocation(line: 297, column: 52, scope: !2319)
!2336 = !DILocation(line: 297, column: 64, scope: !2319)
!2337 = !DILocation(line: 296, column: 30, scope: !2319)
!2338 = !DILocation(line: 298, column: 40, scope: !2319)
!2339 = !DILocation(line: 298, column: 44, scope: !2319)
!2340 = !DILocation(line: 298, column: 49, scope: !2319)
!2341 = !DILocation(line: 297, column: 71, scope: !2319)
!2342 = !DILocation(line: 299, column: 38, scope: !2319)
!2343 = !DILocation(line: 299, column: 43, scope: !2319)
!2344 = !DILocation(line: 299, column: 48, scope: !2319)
!2345 = !DILocation(line: 298, column: 55, scope: !2319)
!2346 = !DILocation(line: 296, column: 28, scope: !2319)
!2347 = !DILocation(line: 296, column: 15, scope: !2319)
!2348 = !DILocation(line: 296, column: 3, scope: !2319)
!2349 = !DILocation(line: 296, column: 26, scope: !2319)
!2350 = !DILocation(line: 300, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2319, file: !1313, line: 300, column: 7)
!2352 = !DILocation(line: 300, column: 11, scope: !2351)
!2353 = !DILocation(line: 300, column: 7, scope: !2319)
!2354 = !DILocation(line: 301, column: 30, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !1313, line: 300, column: 18)
!2356 = !DILocation(line: 301, column: 17, scope: !2355)
!2357 = !DILocation(line: 301, column: 5, scope: !2355)
!2358 = !DILocation(line: 301, column: 28, scope: !2355)
!2359 = !DILocation(line: 302, column: 24, scope: !2355)
!2360 = !DILocation(line: 302, column: 32, scope: !2355)
!2361 = !DILocation(line: 302, column: 37, scope: !2355)
!2362 = !DILocation(line: 302, column: 42, scope: !2355)
!2363 = !DILocation(line: 302, column: 5, scope: !2355)
!2364 = !DILocation(line: 303, column: 12, scope: !2355)
!2365 = !DILocation(line: 303, column: 16, scope: !2355)
!2366 = !DILocation(line: 303, column: 5, scope: !2355)
!2367 = !DILocation(line: 304, column: 14, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2351, file: !1313, line: 304, column: 14)
!2369 = !DILocation(line: 304, column: 18, scope: !2368)
!2370 = !DILocation(line: 304, column: 14, scope: !2351)
!2371 = !DILocation(line: 306, column: 17, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !1313, line: 304, column: 33)
!2373 = !DILocation(line: 306, column: 5, scope: !2372)
!2374 = !DILocation(line: 306, column: 28, scope: !2372)
!2375 = !DILocation(line: 307, column: 5, scope: !2372)
!2376 = !DILocation(line: 307, column: 5, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !1313, line: 307, column: 5)
!2378 = !DILocation(line: 308, column: 23, scope: !2372)
!2379 = !DILocation(line: 308, column: 30, scope: !2372)
!2380 = !DILocation(line: 308, column: 35, scope: !2372)
!2381 = !DILocation(line: 308, column: 40, scope: !2372)
!2382 = !DILocation(line: 308, column: 5, scope: !2372)
!2383 = !DILocation(line: 309, column: 12, scope: !2372)
!2384 = !DILocation(line: 309, column: 16, scope: !2372)
!2385 = !DILocation(line: 309, column: 5, scope: !2372)
!2386 = !DILocation(line: 312, column: 15, scope: !2319)
!2387 = !DILocation(line: 312, column: 3, scope: !2319)
!2388 = !DILocation(line: 312, column: 26, scope: !2319)
!2389 = !DILocation(line: 313, column: 3, scope: !2319)
!2390 = !DILocation(line: 313, column: 3, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2319, file: !1313, line: 313, column: 3)
!2392 = !DILocation(line: 314, column: 21, scope: !2319)
!2393 = !DILocation(line: 314, column: 28, scope: !2319)
!2394 = !DILocation(line: 314, column: 34, scope: !2319)
!2395 = !DILocation(line: 314, column: 39, scope: !2319)
!2396 = !DILocation(line: 314, column: 3, scope: !2319)
!2397 = !DILocation(line: 315, column: 10, scope: !2319)
!2398 = !DILocation(line: 315, column: 14, scope: !2319)
!2399 = !DILocation(line: 315, column: 3, scope: !2319)
!2400 = !DILocation(line: 316, column: 1, scope: !2319)
!2401 = distinct !DISubprogram(name: "destroy_ws", scope: !3, file: !3, line: 320, type: !83, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2402 = !DILocalVariable(name: "ws", arg: 1, scope: !2401, file: !3, line: 320, type: !62)
!2403 = !DILocation(line: 320, column: 30, scope: !2401)
!2404 = !DILocation(line: 321, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 321, column: 7)
!2406 = !DILocation(line: 321, column: 11, scope: !2405)
!2407 = !DILocation(line: 321, column: 7, scope: !2401)
!2408 = !DILocation(line: 322, column: 5, scope: !2405)
!2409 = !DILocation(line: 322, column: 9, scope: !2405)
!2410 = !DILocation(line: 322, column: 18, scope: !2405)
!2411 = !DILocation(line: 322, column: 22, scope: !2405)
!2412 = !DILocation(line: 322, column: 26, scope: !2405)
!2413 = !DILocation(line: 322, column: 30, scope: !2405)
!2414 = !DILocation(line: 323, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 323, column: 7)
!2416 = !DILocation(line: 323, column: 11, scope: !2415)
!2417 = !DILocation(line: 323, column: 7, scope: !2401)
!2418 = !DILocation(line: 324, column: 16, scope: !2415)
!2419 = !DILocation(line: 324, column: 20, scope: !2415)
!2420 = !DILocation(line: 324, column: 5, scope: !2415)
!2421 = !DILocation(line: 325, column: 23, scope: !2401)
!2422 = !DILocation(line: 325, column: 3, scope: !2401)
!2423 = !DILocation(line: 326, column: 18, scope: !2401)
!2424 = !DILocation(line: 326, column: 22, scope: !2401)
!2425 = !DILocation(line: 326, column: 26, scope: !2401)
!2426 = !DILocation(line: 326, column: 3, scope: !2401)
!2427 = !DILocation(line: 327, column: 8, scope: !2401)
!2428 = !DILocation(line: 327, column: 3, scope: !2401)
!2429 = !DILocation(line: 328, column: 1, scope: !2401)
!2430 = distinct !DISubprogram(name: "fiobj_free", scope: !13, file: !13, line: 446, type: !2431, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !113}
!2433 = !DILocalVariable(name: "o", arg: 1, scope: !2430, file: !13, line: 446, type: !113)
!2434 = !DILocation(line: 446, column: 34, scope: !2430)
!2435 = !DILocation(line: 447, column: 8, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2430, file: !13, line: 447, column: 7)
!2437 = !DILocation(line: 447, column: 7, scope: !2430)
!2438 = !DILocation(line: 448, column: 5, scope: !2436)
!2439 = !DILocation(line: 449, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2430, file: !13, line: 449, column: 7)
!2441 = !DILocation(line: 449, column: 7, scope: !2430)
!2442 = !DILocation(line: 450, column: 5, scope: !2440)
!2443 = !DILocation(line: 451, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2430, file: !13, line: 451, column: 7)
!2445 = !DILocation(line: 451, column: 25, scope: !2444)
!2446 = !DILocation(line: 451, column: 30, scope: !2444)
!2447 = !DILocation(line: 451, column: 33, scope: !2444)
!2448 = !DILocation(line: 451, column: 51, scope: !2444)
!2449 = !DILocation(line: 451, column: 57, scope: !2444)
!2450 = !DILocation(line: 451, column: 7, scope: !2430)
!2451 = !DILocation(line: 452, column: 31, scope: !2444)
!2452 = !DILocation(line: 452, column: 5, scope: !2444)
!2453 = !DILocation(line: 454, column: 5, scope: !2444)
!2454 = !DILocation(line: 454, column: 23, scope: !2444)
!2455 = !DILocation(line: 454, column: 31, scope: !2444)
!2456 = !DILocation(line: 455, column: 1, scope: !2430)
!2457 = distinct !DISubprogram(name: "clear_subscriptions", scope: !3, file: !3, line: 139, type: !83, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2458 = !DILocalVariable(name: "ws", arg: 1, scope: !2457, file: !3, line: 139, type: !62)
!2459 = !DILocation(line: 139, column: 46, scope: !2457)
!2460 = !DILocation(line: 140, column: 13, scope: !2457)
!2461 = !DILocation(line: 140, column: 17, scope: !2457)
!2462 = !DILocation(line: 140, column: 3, scope: !2457)
!2463 = !DILocation(line: 141, column: 3, scope: !2457)
!2464 = !DILocation(line: 141, column: 22, scope: !2457)
!2465 = !DILocation(line: 141, column: 26, scope: !2457)
!2466 = !DILocation(line: 141, column: 10, scope: !2457)
!2467 = !DILocation(line: 142, column: 33, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 141, column: 42)
!2469 = !DILocation(line: 142, column: 37, scope: !2468)
!2470 = !DILocation(line: 142, column: 21, scope: !2468)
!2471 = !DILocation(line: 142, column: 5, scope: !2468)
!2472 = distinct !{!2472, !2463, !2473}
!2473 = !DILocation(line: 143, column: 3, scope: !2457)
!2474 = !DILocation(line: 144, column: 15, scope: !2457)
!2475 = !DILocation(line: 144, column: 19, scope: !2457)
!2476 = !DILocation(line: 144, column: 3, scope: !2457)
!2477 = !DILocation(line: 145, column: 1, scope: !2457)
!2478 = distinct !DISubprogram(name: "fio_ls_any", scope: !6, file: !6, line: 3342, type: !2479, scopeLine: 3342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!164, !120}
!2481 = !DILocalVariable(name: "list", arg: 1, scope: !2478, file: !6, line: 3342, type: !120)
!2482 = !DILocation(line: 3342, column: 42, scope: !2478)
!2483 = !DILocation(line: 3342, column: 57, scope: !2478)
!2484 = !DILocation(line: 3342, column: 63, scope: !2478)
!2485 = !DILocation(line: 3342, column: 71, scope: !2478)
!2486 = !DILocation(line: 3342, column: 68, scope: !2478)
!2487 = !DILocation(line: 3342, column: 50, scope: !2478)
!2488 = distinct !DISubprogram(name: "fio_ls_pop", scope: !6, file: !6, line: 3327, type: !1013, scopeLine: 3327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2489 = !DILocalVariable(name: "list", arg: 1, scope: !2488, file: !6, line: 3327, type: !120)
!2490 = !DILocation(line: 3327, column: 44, scope: !2488)
!2491 = !DILocation(line: 3328, column: 24, scope: !2488)
!2492 = !DILocation(line: 3328, column: 30, scope: !2488)
!2493 = !DILocation(line: 3328, column: 10, scope: !2488)
!2494 = !DILocation(line: 3328, column: 3, scope: !2488)
!2495 = distinct !DISubprogram(name: "fio_str_utf8_valid", scope: !6, file: !6, line: 4179, type: !2496, scopeLine: 4179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!56, !139}
!2498 = !DILocalVariable(name: "s", arg: 1, scope: !2495, file: !6, line: 4179, type: !139)
!2499 = !DILocation(line: 4179, column: 47, scope: !2495)
!2500 = !DILocation(line: 4180, column: 8, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2495, file: !6, line: 4180, column: 7)
!2502 = !DILocation(line: 4180, column: 7, scope: !2495)
!2503 = !DILocation(line: 4181, column: 5, scope: !2501)
!2504 = !DILocalVariable(name: "state", scope: !2495, file: !6, line: 4182, type: !73)
!2505 = !DILocation(line: 4182, column: 18, scope: !2495)
!2506 = !DILocation(line: 4182, column: 39, scope: !2495)
!2507 = !DILocation(line: 4182, column: 26, scope: !2495)
!2508 = !DILocation(line: 4183, column: 14, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2495, file: !6, line: 4183, column: 7)
!2510 = !DILocation(line: 4183, column: 8, scope: !2509)
!2511 = !DILocation(line: 4183, column: 7, scope: !2495)
!2512 = !DILocation(line: 4184, column: 5, scope: !2509)
!2513 = !DILocalVariable(name: "end", scope: !2495, file: !6, line: 4185, type: !2514)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!2515 = !DILocation(line: 4185, column: 15, scope: !2495)
!2516 = !DILocation(line: 4185, column: 27, scope: !2495)
!2517 = !DILocation(line: 4185, column: 40, scope: !2495)
!2518 = !DILocation(line: 4185, column: 32, scope: !2495)
!2519 = !DILocalVariable(name: "c", scope: !2495, file: !6, line: 4186, type: !571)
!2520 = !DILocation(line: 4186, column: 11, scope: !2495)
!2521 = !DILocation(line: 4187, column: 3, scope: !2495)
!2522 = !DILocation(line: 4188, column: 5, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2495, file: !6, line: 4187, column: 6)
!2524 = !DILocation(line: 4188, column: 5, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2523, file: !6, line: 4188, column: 5)
!2526 = !DILocation(line: 4188, column: 5, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2525, file: !6, line: 4188, column: 5)
!2528 = !DILocation(line: 4188, column: 5, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2527, file: !6, line: 4188, column: 5)
!2530 = !DILocation(line: 4188, column: 5, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2529, file: !6, line: 4188, column: 5)
!2532 = !DILocation(line: 4188, column: 5, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !6, line: 4188, column: 5)
!2534 = !DILocation(line: 4188, column: 5, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2533, file: !6, line: 4188, column: 5)
!2536 = !DILocation(line: 4188, column: 5, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2527, file: !6, line: 4188, column: 5)
!2538 = !DILocation(line: 4188, column: 5, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2537, file: !6, line: 4188, column: 5)
!2540 = !DILocation(line: 4189, column: 3, scope: !2523)
!2541 = !DILocation(line: 4189, column: 12, scope: !2495)
!2542 = !DILocation(line: 4189, column: 14, scope: !2495)
!2543 = !DILocation(line: 4189, column: 18, scope: !2495)
!2544 = !DILocation(line: 4189, column: 27, scope: !2495)
!2545 = !DILocation(line: 4189, column: 34, scope: !2495)
!2546 = !DILocation(line: 4189, column: 32, scope: !2495)
!2547 = !DILocation(line: 0, scope: !2495)
!2548 = distinct !{!2548, !2521, !2549}
!2549 = !DILocation(line: 4189, column: 37, scope: !2495)
!2550 = !DILocation(line: 4190, column: 16, scope: !2495)
!2551 = !DILocation(line: 4190, column: 24, scope: !2495)
!2552 = !DILocation(line: 4190, column: 21, scope: !2495)
!2553 = !DILocation(line: 4190, column: 28, scope: !2495)
!2554 = !DILocation(line: 4190, column: 31, scope: !2495)
!2555 = !DILocation(line: 4190, column: 33, scope: !2495)
!2556 = !DILocation(line: 4190, column: 10, scope: !2495)
!2557 = !DILocation(line: 4190, column: 3, scope: !2495)
!2558 = !DILocation(line: 4191, column: 1, scope: !2495)
!2559 = distinct !DISubprogram(name: "websocket_optimize", scope: !3, file: !3, line: 414, type: !2560, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!558, !73, !14}
!2562 = !DILocalVariable(name: "msg", arg: 1, scope: !2559, file: !3, line: 414, type: !73)
!2563 = !DILocation(line: 414, column: 68, scope: !2559)
!2564 = !DILocalVariable(name: "opcode", arg: 2, scope: !2559, file: !3, line: 415, type: !14)
!2565 = !DILocation(line: 415, column: 67, scope: !2559)
!2566 = !DILocalVariable(name: "out", scope: !2559, file: !3, line: 416, type: !113)
!2567 = !DILocation(line: 416, column: 9, scope: !2559)
!2568 = !DILocation(line: 416, column: 33, scope: !2559)
!2569 = !DILocation(line: 416, column: 37, scope: !2559)
!2570 = !DILocation(line: 416, column: 15, scope: !2559)
!2571 = !DILocation(line: 417, column: 20, scope: !2559)
!2572 = !DILocation(line: 418, column: 57, scope: !2559)
!2573 = !DILocation(line: 418, column: 42, scope: !2559)
!2574 = !DILocation(line: 418, column: 62, scope: !2559)
!2575 = !DILocation(line: 418, column: 72, scope: !2559)
!2576 = !DILocation(line: 419, column: 46, scope: !2559)
!2577 = !DILocation(line: 419, column: 51, scope: !2559)
!2578 = !DILocation(line: 418, column: 20, scope: !2559)
!2579 = !DILocation(line: 417, column: 3, scope: !2559)
!2580 = !DILocalVariable(name: "ret", scope: !2559, file: !3, line: 420, type: !558)
!2581 = !DILocation(line: 420, column: 22, scope: !2559)
!2582 = !DILocation(line: 420, column: 28, scope: !2559)
!2583 = !DILocation(line: 422, column: 27, scope: !2559)
!2584 = !DILocation(line: 422, column: 19, scope: !2559)
!2585 = !DILocation(line: 424, column: 3, scope: !2559)
!2586 = distinct !DISubprogram(name: "fio_str_info", scope: !6, file: !6, line: 3747, type: !2587, scopeLine: 3747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!73, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!2591 = !DILocalVariable(name: "s", arg: 1, scope: !2586, file: !6, line: 3747, type: !2589)
!2592 = !DILocation(line: 3747, column: 62, scope: !2586)
!2593 = !DILocation(line: 3748, column: 8, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !6, line: 3748, column: 7)
!2595 = !DILocation(line: 3748, column: 7, scope: !2586)
!2596 = !DILocation(line: 3749, column: 28, scope: !2594)
!2597 = !DILocation(line: 3749, column: 5, scope: !2594)
!2598 = !DILocation(line: 3750, column: 11, scope: !2586)
!2599 = !DILocation(line: 3750, column: 14, scope: !2586)
!2600 = !DILocation(line: 3750, column: 20, scope: !2586)
!2601 = !DILocation(line: 3750, column: 24, scope: !2586)
!2602 = !DILocation(line: 3750, column: 27, scope: !2586)
!2603 = !DILocation(line: 3750, column: 10, scope: !2586)
!2604 = !DILocation(line: 3751, column: 32, scope: !2586)
!2605 = !DILocation(line: 3752, column: 38, scope: !2586)
!2606 = !DILocation(line: 3752, column: 41, scope: !2586)
!2607 = !DILocation(line: 3753, column: 49, scope: !2586)
!2608 = !DILocation(line: 3753, column: 52, scope: !2586)
!2609 = !DILocation(line: 3753, column: 58, scope: !2586)
!2610 = !DILocation(line: 3753, column: 40, scope: !2586)
!2611 = !DILocation(line: 3754, column: 41, scope: !2586)
!2612 = !DILocation(line: 3755, column: 32, scope: !2586)
!2613 = !DILocation(line: 3755, column: 42, scope: !2586)
!2614 = !DILocation(line: 3755, column: 45, scope: !2586)
!2615 = !DILocation(line: 3755, column: 58, scope: !2586)
!2616 = !DILocation(line: 3755, column: 61, scope: !2586)
!2617 = !DILocation(line: 3756, column: 40, scope: !2586)
!2618 = !DILocation(line: 3756, column: 43, scope: !2586)
!2619 = !DILocation(line: 3757, column: 41, scope: !2586)
!2620 = !DILocation(line: 3757, column: 44, scope: !2586)
!2621 = !DILocation(line: 3750, column: 3, scope: !2586)
!2622 = !DILocation(line: 3758, column: 1, scope: !2586)
!2623 = distinct !DISubprogram(name: "websocket_optimize_free", scope: !3, file: !3, line: 409, type: !564, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2624 = !DILocalVariable(name: "msg", arg: 1, scope: !2623, file: !3, line: 409, type: !566)
!2625 = !DILocation(line: 409, column: 48, scope: !2623)
!2626 = !DILocalVariable(name: "metadata", arg: 2, scope: !2623, file: !3, line: 409, type: !32)
!2627 = !DILocation(line: 409, column: 59, scope: !2623)
!2628 = !DILocation(line: 410, column: 21, scope: !2623)
!2629 = !DILocation(line: 410, column: 14, scope: !2623)
!2630 = !DILocation(line: 410, column: 3, scope: !2623)
!2631 = !DILocation(line: 411, column: 9, scope: !2623)
!2632 = !DILocation(line: 412, column: 1, scope: !2623)
!2633 = distinct !DISubprogram(name: "websocket_on_pubsub_message_direct_internal", scope: !3, file: !3, line: 532, type: !2634, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !566, !49}
!2636 = !DILocalVariable(name: "msg", arg: 1, scope: !2633, file: !3, line: 532, type: !566)
!2637 = !DILocation(line: 532, column: 75, scope: !2633)
!2638 = !DILocalVariable(name: "txt", arg: 2, scope: !2633, file: !3, line: 533, type: !49)
!2639 = !DILocation(line: 533, column: 72, scope: !2633)
!2640 = !DILocalVariable(name: "pr", scope: !2633, file: !3, line: 534, type: !33)
!2641 = !DILocation(line: 534, column: 19, scope: !2633)
!2642 = !DILocation(line: 535, column: 39, scope: !2633)
!2643 = !DILocation(line: 535, column: 44, scope: !2633)
!2644 = !DILocation(line: 535, column: 29, scope: !2633)
!2645 = !DILocation(line: 535, column: 7, scope: !2633)
!2646 = !DILocation(line: 536, column: 8, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 536, column: 7)
!2648 = !DILocation(line: 536, column: 7, scope: !2633)
!2649 = !DILocation(line: 537, column: 9, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 537, column: 9)
!2651 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 536, column: 12)
!2652 = !DILocation(line: 537, column: 15, scope: !2650)
!2653 = !DILocation(line: 537, column: 9, scope: !2651)
!2654 = !DILocation(line: 538, column: 7, scope: !2650)
!2655 = !DILocation(line: 539, column: 23, scope: !2651)
!2656 = !DILocation(line: 539, column: 5, scope: !2651)
!2657 = !DILocation(line: 540, column: 5, scope: !2651)
!2658 = !DILocalVariable(name: "message", scope: !2633, file: !3, line: 542, type: !113)
!2659 = !DILocation(line: 542, column: 9, scope: !2633)
!2660 = !DILocalVariable(name: "pre_wrapped", scope: !2633, file: !3, line: 543, type: !113)
!2661 = !DILocation(line: 543, column: 9, scope: !2633)
!2662 = !DILocation(line: 544, column: 17, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 544, column: 7)
!2664 = !DILocation(line: 544, column: 22, scope: !2663)
!2665 = !DILocation(line: 544, column: 8, scope: !2663)
!2666 = !DILocation(line: 544, column: 7, scope: !2633)
!2667 = !DILocation(line: 546, column: 13, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 544, column: 33)
!2669 = !DILocation(line: 546, column: 5, scope: !2668)
!2670 = !DILocation(line: 549, column: 39, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 546, column: 18)
!2672 = !DILocation(line: 549, column: 18, scope: !2671)
!2673 = !DILocation(line: 549, column: 11, scope: !2671)
!2674 = !DILocation(line: 548, column: 19, scope: !2671)
!2675 = !DILocation(line: 550, column: 7, scope: !2671)
!2676 = !DILocation(line: 553, column: 39, scope: !2671)
!2677 = !DILocation(line: 553, column: 18, scope: !2671)
!2678 = !DILocation(line: 553, column: 11, scope: !2671)
!2679 = !DILocation(line: 552, column: 19, scope: !2671)
!2680 = !DILocation(line: 554, column: 7, scope: !2671)
!2681 = !DILocation(line: 556, column: 49, scope: !2671)
!2682 = !DILocation(line: 556, column: 28, scope: !2671)
!2683 = !DILocation(line: 556, column: 21, scope: !2671)
!2684 = !DILocation(line: 556, column: 19, scope: !2671)
!2685 = !DILocation(line: 557, column: 7, scope: !2671)
!2686 = !DILocation(line: 559, column: 7, scope: !2671)
!2687 = !DILocation(line: 561, column: 9, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 561, column: 9)
!2689 = !DILocation(line: 561, column: 9, scope: !2668)
!2690 = !DILocation(line: 564, column: 33, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 561, column: 22)
!2692 = !DILocation(line: 564, column: 38, scope: !2691)
!2693 = !DILocation(line: 564, column: 23, scope: !2691)
!2694 = !DILocation(line: 564, column: 56, scope: !2691)
!2695 = !DILocation(line: 564, column: 46, scope: !2691)
!2696 = !DILocation(line: 564, column: 7, scope: !2691)
!2697 = !DILocation(line: 565, column: 7, scope: !2691)
!2698 = !DILocation(line: 567, column: 3, scope: !2668)
!2699 = !DILocation(line: 568, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 568, column: 7)
!2701 = !DILocation(line: 568, column: 11, scope: !2700)
!2702 = !DILocation(line: 568, column: 7, scope: !2633)
!2703 = !DILocalVariable(name: "tmp", scope: !2704, file: !3, line: 570, type: !140)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 568, column: 17)
!2705 = !DILocation(line: 570, column: 15, scope: !2704)
!2706 = !DILocation(line: 571, column: 9, scope: !2704)
!2707 = !DILocation(line: 572, column: 16, scope: !2704)
!2708 = !DILocation(line: 572, column: 20, scope: !2704)
!2709 = !DILocation(line: 572, column: 12, scope: !2704)
!2710 = !DILocation(line: 572, column: 39, scope: !2704)
!2711 = !DILocation(line: 572, column: 11, scope: !2704)
!2712 = !DILocation(line: 572, column: 9, scope: !2704)
!2713 = !DILocation(line: 573, column: 3, scope: !2704)
!2714 = !DILocation(line: 574, column: 27, scope: !2633)
!2715 = !DILocation(line: 574, column: 19, scope: !2633)
!2716 = !DILocation(line: 574, column: 31, scope: !2633)
!2717 = !DILocation(line: 574, column: 36, scope: !2633)
!2718 = !DILocation(line: 574, column: 41, scope: !2633)
!2719 = !DILocation(line: 574, column: 45, scope: !2633)
!2720 = !DILocation(line: 574, column: 3, scope: !2633)
!2721 = !DILocation(line: 575, column: 14, scope: !2633)
!2722 = !DILocation(line: 575, column: 3, scope: !2633)
!2723 = !DILabel(scope: !2633, name: "finish", file: !3, line: 576)
!2724 = !DILocation(line: 576, column: 1, scope: !2633)
!2725 = !DILocation(line: 577, column: 23, scope: !2633)
!2726 = !DILocation(line: 577, column: 3, scope: !2633)
!2727 = !DILocation(line: 578, column: 1, scope: !2633)
!2728 = distinct !DISubprogram(name: "fiobj_send_free", scope: !2729, file: !2729, line: 13, type: !2730, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2729 = !DIFile(filename: "../include/fiobj4fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!1373, !41, !113}
!2732 = !DILocalVariable(name: "uuid", arg: 1, scope: !2728, file: !2729, line: 13, type: !41)
!2733 = !DILocation(line: 13, column: 72, scope: !2728)
!2734 = !DILocalVariable(name: "o", arg: 2, scope: !2728, file: !2729, line: 14, type: !113)
!2735 = !DILocation(line: 14, column: 69, scope: !2728)
!2736 = !DILocalVariable(name: "s", scope: !2728, file: !2729, line: 15, type: !73)
!2737 = !DILocation(line: 15, column: 18, scope: !2728)
!2738 = !DILocation(line: 15, column: 37, scope: !2728)
!2739 = !DILocation(line: 15, column: 22, scope: !2728)
!2740 = !DILocation(line: 16, column: 10, scope: !2728)
!2741 = !DILocation(line: 16, column: 3, scope: !2728)
!2742 = distinct !DISubprogram(name: "fiobj_dup", scope: !13, file: !13, line: 430, type: !2743, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!113, !113}
!2745 = !DILocalVariable(name: "o", arg: 1, scope: !2742, file: !13, line: 430, type: !113)
!2746 = !DILocation(line: 430, column: 34, scope: !2742)
!2747 = !DILocation(line: 431, column: 7, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !13, line: 431, column: 7)
!2749 = !DILocation(line: 431, column: 7, scope: !2742)
!2750 = !DILocation(line: 432, column: 5, scope: !2748)
!2751 = !DILocation(line: 433, column: 10, scope: !2742)
!2752 = !DILocation(line: 433, column: 3, scope: !2742)
!2753 = distinct !DISubprogram(name: "fiobj4sock_dealloc", scope: !2729, file: !2729, line: 10, type: !155, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2754 = !DILocalVariable(name: "o", arg: 1, scope: !2753, file: !2729, line: 10, type: !32)
!2755 = !DILocation(line: 10, column: 38, scope: !2753)
!2756 = !DILocation(line: 10, column: 61, scope: !2753)
!2757 = !DILocation(line: 10, column: 54, scope: !2753)
!2758 = !DILocation(line: 10, column: 43, scope: !2753)
!2759 = !DILocation(line: 10, column: 65, scope: !2753)
!2760 = distinct !DISubprogram(name: "fio_trylock", scope: !6, file: !6, line: 2993, type: !978, scopeLine: 2993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2761 = !DILocalVariable(name: "lock", arg: 1, scope: !2760, file: !6, line: 2993, type: !921)
!2762 = !DILocation(line: 2993, column: 45, scope: !2760)
!2763 = !DILocation(line: 2994, column: 3, scope: !2760)
!2764 = !{i32 135229}
!2765 = !DILocalVariable(name: "ret", scope: !2760, file: !6, line: 2995, type: !104)
!2766 = !DILocation(line: 2995, column: 14, scope: !2760)
!2767 = !DILocation(line: 2995, column: 20, scope: !2760)
!2768 = !DILocation(line: 2996, column: 3, scope: !2760)
!2769 = !{i32 135314}
!2770 = !DILocation(line: 2997, column: 10, scope: !2760)
!2771 = !DILocation(line: 2997, column: 3, scope: !2760)
!2772 = distinct !DISubprogram(name: "fio_reschedule_thread", scope: !6, file: !6, line: 2980, type: !2773, scopeLine: 2980, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null}
!2775 = !DILocalVariable(name: "tm", scope: !2772, file: !6, line: 2981, type: !2776)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!2777 = !DILocation(line: 2981, column: 25, scope: !2772)
!2778 = !DILocation(line: 2982, column: 3, scope: !2772)
!2779 = !DILocation(line: 2983, column: 1, scope: !2772)
