; ModuleID = 'fiobj_numbers.c'
source_filename = "fiobj_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@FIOBJECT_VTABLE_NUMBER = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobject___simple_dealloc, i64 (i64)* @fiobject___noop_count, i64 (i64)* @fio_itrue, i64 (i64, i64)* @fiobj_i_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* null, void (%struct.fio_str_info_s*, i64)* @fio_i2str, i64 (i64)* @fio_i2i, double (i64)* @fio_i2f }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [6 x i8] c"Float\00", align 1
@FIOBJECT_VTABLE_FLOAT = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobject___simple_dealloc, i64 (i64)* @fiobject___noop_count, i64 (i64)* @fio_ftrue, i64 (i64, i64)* @fiobj_f_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* null, void (%struct.fio_str_info_s*, i64)* @fio_f2str, i64 (i64)* @fio_f2i, double (i64)* @fio_f2f }, align 8, !dbg !55
@.str.4 = private unnamed_addr constant [45 x i8] c"ERROR: fiobj number couldn't allocate memory\00", align 1
@fiobj_num_tmp.ret = internal thread_local global %struct.fiobj_num_s zeroinitializer, align 8, !dbg !121
@.str.5 = private unnamed_addr constant [44 x i8] c"ERROR: fiobj float couldn't allocate memory\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"FIOBJ_TYPE_IS(obj, FIOBJ_T_FLOAT)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"fiobj_numbers.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_float_set = private unnamed_addr constant [36 x i8] c"void fiobj_float_set(FIOBJ, double)\00", align 1
@fiobj_float_tmp.ret = internal thread_local global %struct.fiobj_float_s zeroinitializer, align 8, !dbg !127
@num_buffer = internal thread_local global [512 x i8] zeroinitializer, align 16, !dbg !140
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !132
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !134
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !138
@.str.8 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !149 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !154, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !159, metadata !DIExpression()), !dbg !174
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !175
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !175
  call void @llvm.va_start(i8* %7), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !DIExpression()), !dbg !177
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !178
  %9 = load i8*, i8** %2, align 8, !dbg !179
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !180
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !181
  store i32 %11, i32* %5, align 4, !dbg !177
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !182
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !182
  call void @llvm.va_end(i8* %13), !dbg !182
  %14 = load i32, i32* %5, align 4, !dbg !183
  %15 = icmp sle i32 %14, 0, !dbg !185
  br i1 %15, label %19, label %16, !dbg !186

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !187
  %18 = icmp sge i32 %17, 2046, !dbg !188
  br i1 %18, label %19, label %29, !dbg !189

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !190
  %21 = icmp sge i32 %20, 2046, !dbg !193
  br i1 %21, label %22, label %25, !dbg !194

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !195
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !198
  store i32 2041, i32* %5, align 4, !dbg !199
  br label %28, !dbg !200

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !201
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !203
  br label %42, !dbg !204

28:                                               ; preds = %22
  br label %29, !dbg !205

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !206
  %31 = add nsw i32 %30, 1, !dbg !206
  store i32 %31, i32* %5, align 4, !dbg !206
  %32 = sext i32 %30 to i64, !dbg !207
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !207
  store i8 10, i8* %33, align 1, !dbg !208
  %34 = load i32, i32* %5, align 4, !dbg !209
  %35 = sext i32 %34 to i64, !dbg !210
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !210
  store i8 48, i8* %36, align 1, !dbg !211
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !212
  %38 = load i32, i32* %5, align 4, !dbg !213
  %39 = sext i32 %38 to i64, !dbg !213
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !214
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !215
  br label %42, !dbg !216

42:                                               ; preds = %29, %25
  ret void, !dbg !216
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

declare dso_local void @fiobject___simple_dealloc(i64, void (i64, i8*)*, i8*) #5

declare dso_local i64 @fiobject___noop_count(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_itrue(i64 %0) #0 !dbg !217 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !218, metadata !DIExpression()), !dbg !219
  %3 = load i64, i64* %2, align 8, !dbg !220
  %4 = and i64 %3, -8, !dbg !220
  %5 = inttoptr i64 %4 to i8*, !dbg !220
  %6 = bitcast i8* %5 to %struct.fiobj_num_s*, !dbg !220
  %7 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %6, i32 0, i32 1, !dbg !221
  %8 = load i64, i64* %7, align 8, !dbg !221
  %9 = icmp ne i64 %8, 0, !dbg !222
  %10 = zext i1 %9 to i32, !dbg !222
  %11 = sext i32 %10 to i64, !dbg !223
  ret i64 %11, !dbg !224
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_i_is_eq(i64 %0, i64 %1) #0 !dbg !225 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !226, metadata !DIExpression()), !dbg !227
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !228, metadata !DIExpression()), !dbg !229
  %5 = load i64, i64* %3, align 8, !dbg !230
  %6 = and i64 %5, -8, !dbg !230
  %7 = inttoptr i64 %6 to i8*, !dbg !230
  %8 = bitcast i8* %7 to %struct.fiobj_num_s*, !dbg !230
  %9 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %8, i32 0, i32 1, !dbg !231
  %10 = load i64, i64* %9, align 8, !dbg !231
  %11 = load i64, i64* %4, align 8, !dbg !232
  %12 = and i64 %11, -8, !dbg !232
  %13 = inttoptr i64 %12 to i8*, !dbg !232
  %14 = bitcast i8* %13 to %struct.fiobj_num_s*, !dbg !232
  %15 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %14, i32 0, i32 1, !dbg !233
  %16 = load i64, i64* %15, align 8, !dbg !233
  %17 = icmp eq i64 %10, %16, !dbg !234
  %18 = zext i1 %17 to i32, !dbg !234
  %19 = sext i32 %18 to i64, !dbg !230
  ret i64 %19, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_i2str(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !236 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !237, metadata !DIExpression()), !dbg !238
  %4 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !239
  store i64 0, i64* %4, align 8, !dbg !239
  %5 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !239
  %6 = load i64, i64* %3, align 8, !dbg !240
  %7 = and i64 %6, -8, !dbg !240
  %8 = inttoptr i64 %7 to i8*, !dbg !240
  %9 = bitcast i8* %8 to %struct.fiobj_num_s*, !dbg !240
  %10 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %9, i32 0, i32 1, !dbg !241
  %11 = load i64, i64* %10, align 8, !dbg !241
  %12 = call i64 @fio_ltoa(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i64 %11, i8 zeroext 10), !dbg !242
  store i64 %12, i64* %5, align 8, !dbg !239
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !239
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i8** %13, align 8, !dbg !239
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_i2i(i64 %0) #0 !dbg !244 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !245, metadata !DIExpression()), !dbg !246
  %3 = load i64, i64* %2, align 8, !dbg !247
  %4 = and i64 %3, -8, !dbg !247
  %5 = inttoptr i64 %4 to i8*, !dbg !247
  %6 = bitcast i8* %5 to %struct.fiobj_num_s*, !dbg !247
  %7 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %6, i32 0, i32 1, !dbg !248
  %8 = load i64, i64* %7, align 8, !dbg !248
  ret i64 %8, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fio_i2f(i64 %0) #0 !dbg !250 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !251, metadata !DIExpression()), !dbg !252
  %3 = load i64, i64* %2, align 8, !dbg !253
  %4 = and i64 %3, -8, !dbg !253
  %5 = inttoptr i64 %4 to i8*, !dbg !253
  %6 = bitcast i8* %5 to %struct.fiobj_num_s*, !dbg !253
  %7 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %6, i32 0, i32 1, !dbg !254
  %8 = load i64, i64* %7, align 8, !dbg !254
  %9 = sitofp i64 %8 to double, !dbg !255
  ret double %9, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ftrue(i64 %0) #0 !dbg !257 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !258, metadata !DIExpression()), !dbg !259
  %3 = load i64, i64* %2, align 8, !dbg !260
  %4 = and i64 %3, -8, !dbg !260
  %5 = inttoptr i64 %4 to i8*, !dbg !260
  %6 = bitcast i8* %5 to %struct.fiobj_float_s*, !dbg !260
  %7 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %6, i32 0, i32 1, !dbg !261
  %8 = load double, double* %7, align 8, !dbg !261
  %9 = fcmp une double %8, 0.000000e+00, !dbg !262
  %10 = zext i1 %9 to i32, !dbg !262
  %11 = sext i32 %10 to i64, !dbg !263
  ret i64 %11, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_f_is_eq(i64 %0, i64 %1) #0 !dbg !265 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !266, metadata !DIExpression()), !dbg !267
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !268, metadata !DIExpression()), !dbg !269
  %5 = load i64, i64* %3, align 8, !dbg !270
  %6 = and i64 %5, -8, !dbg !270
  %7 = inttoptr i64 %6 to i8*, !dbg !270
  %8 = bitcast i8* %7 to %struct.fiobj_float_s*, !dbg !270
  %9 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %8, i32 0, i32 1, !dbg !271
  %10 = load double, double* %9, align 8, !dbg !271
  %11 = load i64, i64* %4, align 8, !dbg !272
  %12 = and i64 %11, -8, !dbg !272
  %13 = inttoptr i64 %12 to i8*, !dbg !272
  %14 = bitcast i8* %13 to %struct.fiobj_float_s*, !dbg !272
  %15 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %14, i32 0, i32 1, !dbg !273
  %16 = load double, double* %15, align 8, !dbg !273
  %17 = fcmp oeq double %10, %16, !dbg !274
  %18 = zext i1 %17 to i32, !dbg !274
  %19 = sext i32 %18 to i64, !dbg !270
  ret i64 %19, !dbg !275
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_f2str(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !276 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !277, metadata !DIExpression()), !dbg !278
  %4 = load i64, i64* %3, align 8, !dbg !279
  %5 = and i64 %4, -8, !dbg !279
  %6 = inttoptr i64 %5 to i8*, !dbg !279
  %7 = bitcast i8* %6 to %struct.fiobj_float_s*, !dbg !279
  %8 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %7, i32 0, i32 1, !dbg !279
  %9 = load double, double* %8, align 8, !dbg !279
  %10 = fcmp uno double %9, %9, !dbg !279
  br i1 %10, label %11, label %15, !dbg !281

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !282
  store i64 0, i64* %12, align 8, !dbg !282
  %13 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !282
  store i64 3, i64* %13, align 8, !dbg !282
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !282
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8, !dbg !282
  br label %57, !dbg !283

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8, !dbg !284
  %17 = and i64 %16, -8, !dbg !284
  %18 = inttoptr i64 %17 to i8*, !dbg !284
  %19 = bitcast i8* %18 to %struct.fiobj_float_s*, !dbg !284
  %20 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %19, i32 0, i32 1, !dbg !284
  %21 = load double, double* %20, align 8, !dbg !284
  %22 = call double @llvm.fabs.f64(double %21) #9, !dbg !284
  %23 = fcmp oeq double %22, 0x7FF0000000000000, !dbg !284
  %24 = bitcast double %21 to i64, !dbg !284
  %25 = icmp slt i64 %24, 0, !dbg !284
  %26 = select i1 %25, i32 -1, i32 1, !dbg !284
  %27 = select i1 %23, i32 %26, i32 0, !dbg !284
  %28 = icmp ne i32 %27, 0, !dbg !284
  br i1 %28, label %29, label %45, !dbg !286

29:                                               ; preds = %15
  %30 = load i64, i64* %3, align 8, !dbg !287
  %31 = and i64 %30, -8, !dbg !287
  %32 = inttoptr i64 %31 to i8*, !dbg !287
  %33 = bitcast i8* %32 to %struct.fiobj_float_s*, !dbg !287
  %34 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %33, i32 0, i32 1, !dbg !290
  %35 = load double, double* %34, align 8, !dbg !290
  %36 = fcmp ogt double %35, 0.000000e+00, !dbg !291
  br i1 %36, label %37, label %41, !dbg !292

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !293
  store i64 0, i64* %38, align 8, !dbg !293
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !293
  store i64 8, i64* %39, align 8, !dbg !293
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !293
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %40, align 8, !dbg !293
  br label %57, !dbg !294

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !295
  store i64 0, i64* %42, align 8, !dbg !295
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !295
  store i64 9, i64* %43, align 8, !dbg !295
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !295
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %44, align 8, !dbg !295
  br label %57, !dbg !296

45:                                               ; preds = %15
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !297
  store i64 0, i64* %47, align 8, !dbg !297
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !297
  %49 = load i64, i64* %3, align 8, !dbg !298
  %50 = and i64 %49, -8, !dbg !298
  %51 = inttoptr i64 %50 to i8*, !dbg !298
  %52 = bitcast i8* %51 to %struct.fiobj_float_s*, !dbg !298
  %53 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %52, i32 0, i32 1, !dbg !299
  %54 = load double, double* %53, align 8, !dbg !299
  %55 = call i64 @fio_ftoa(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), double %54, i8 zeroext 10), !dbg !300
  store i64 %55, i64* %48, align 8, !dbg !297
  %56 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !297
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i8** %56, align 8, !dbg !297
  br label %57, !dbg !301

57:                                               ; preds = %46, %41, %37, %11
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_f2i(i64 %0) #0 !dbg !303 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load i64, i64* %2, align 8, !dbg !306
  %4 = and i64 %3, -8, !dbg !306
  %5 = inttoptr i64 %4 to i8*, !dbg !306
  %6 = bitcast i8* %5 to %struct.fiobj_float_s*, !dbg !306
  %7 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %6, i32 0, i32 1, !dbg !307
  %8 = load double, double* %7, align 8, !dbg !307
  %9 = fpext double %8 to x86_fp80, !dbg !306
  %10 = call x86_fp80 @llvm.floor.f80(x86_fp80 %9), !dbg !308
  %11 = fptosi x86_fp80 %10 to i64, !dbg !309
  ret i64 %11, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fio_f2f(i64 %0) #0 !dbg !311 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load i64, i64* %2, align 8, !dbg !314
  %4 = and i64 %3, -8, !dbg !314
  %5 = inttoptr i64 %4 to i8*, !dbg !314
  %6 = bitcast i8* %5 to %struct.fiobj_float_s*, !dbg !314
  %7 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %6, i32 0, i32 1, !dbg !315
  %8 = load double, double* %7, align 8, !dbg !315
  ret double %8, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_num_new_bignum(i64 %0) #0 !dbg !317 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_num_s*, align 8
  %4 = alloca %struct.fiobj_num_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata %struct.fiobj_num_s** %3, metadata !320, metadata !DIExpression()), !dbg !321
  %5 = call noalias i8* @fio_malloc(i64 16), !dbg !322
  %6 = ptrtoint i8* %5 to i64, !dbg !322
  %7 = and i64 %6, 15, !dbg !322
  %8 = icmp eq i64 %7, 0, !dbg !322
  call void @llvm.assume(i1 %8), !dbg !322
  %9 = bitcast i8* %5 to %struct.fiobj_num_s*, !dbg !322
  store %struct.fiobj_num_s* %9, %struct.fiobj_num_s** %3, align 8, !dbg !321
  %10 = load %struct.fiobj_num_s*, %struct.fiobj_num_s** %3, align 8, !dbg !323
  %11 = icmp ne %struct.fiobj_num_s* %10, null, !dbg !323
  br i1 %11, label %15, label %12, !dbg !326

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0)), !dbg !327
  %13 = call i32* @__errno_location() #10, !dbg !329
  %14 = load i32, i32* %13, align 4, !dbg !329
  call void @exit(i32 %14) #11, !dbg !330
  unreachable, !dbg !330

15:                                               ; preds = %1
  %16 = load %struct.fiobj_num_s*, %struct.fiobj_num_s** %3, align 8, !dbg !331
  %17 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %4, i32 0, i32 0, !dbg !332
  %18 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %17, i32 0, i32 0, !dbg !333
  store i8 1, i8* %18, align 8, !dbg !333
  %19 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %17, i32 0, i32 1, !dbg !333
  store i32 1, i32* %19, align 4, !dbg !333
  %20 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %4, i32 0, i32 1, !dbg !332
  %21 = load i64, i64* %2, align 8, !dbg !334
  store i64 %21, i64* %20, align 8, !dbg !332
  %22 = bitcast %struct.fiobj_num_s* %16 to i8*, !dbg !335
  %23 = bitcast %struct.fiobj_num_s* %4 to i8*, !dbg !335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false), !dbg !335
  %24 = load %struct.fiobj_num_s*, %struct.fiobj_num_s** %3, align 8, !dbg !336
  %25 = ptrtoint %struct.fiobj_num_s* %24 to i64, !dbg !337
  ret i64 %25, !dbg !338
}

declare dso_local noalias i8* @fio_malloc(i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

declare dso_local void @perror(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_num_tmp(i64 %0) #0 !dbg !123 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_num_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !339, metadata !DIExpression()), !dbg !340
  %4 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %3, i32 0, i32 0, !dbg !341
  %5 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %4, i32 0, i32 0, !dbg !342
  store i8 1, i8* %5, align 8, !dbg !342
  %6 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %4, i32 0, i32 1, !dbg !342
  store i32 268435455, i32* %6, align 4, !dbg !342
  %7 = getelementptr inbounds %struct.fiobj_num_s, %struct.fiobj_num_s* %3, i32 0, i32 1, !dbg !341
  %8 = load i64, i64* %2, align 8, !dbg !343
  store i64 %8, i64* %7, align 8, !dbg !341
  %9 = bitcast %struct.fiobj_num_s* %3 to i8*, !dbg !344
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.fiobj_num_s, %struct.fiobj_num_s* @fiobj_num_tmp.ret, i32 0, i32 0, i32 0), i8* align 8 %9, i64 16, i1 false), !dbg !344
  ret i64 ptrtoint (%struct.fiobj_num_s* @fiobj_num_tmp.ret to i64), !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_float_new(double %0) #0 !dbg !346 {
  %2 = alloca double, align 8
  %3 = alloca %struct.fiobj_float_s*, align 8
  %4 = alloca %struct.fiobj_float_s, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata %struct.fiobj_float_s** %3, metadata !349, metadata !DIExpression()), !dbg !350
  %5 = call noalias i8* @fio_malloc(i64 16), !dbg !351
  %6 = ptrtoint i8* %5 to i64, !dbg !351
  %7 = and i64 %6, 15, !dbg !351
  %8 = icmp eq i64 %7, 0, !dbg !351
  call void @llvm.assume(i1 %8), !dbg !351
  %9 = bitcast i8* %5 to %struct.fiobj_float_s*, !dbg !351
  store %struct.fiobj_float_s* %9, %struct.fiobj_float_s** %3, align 8, !dbg !350
  %10 = load %struct.fiobj_float_s*, %struct.fiobj_float_s** %3, align 8, !dbg !352
  %11 = icmp ne %struct.fiobj_float_s* %10, null, !dbg !352
  br i1 %11, label %15, label %12, !dbg !355

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0)), !dbg !356
  %13 = call i32* @__errno_location() #10, !dbg !358
  %14 = load i32, i32* %13, align 4, !dbg !358
  call void @exit(i32 %14) #11, !dbg !359
  unreachable, !dbg !359

15:                                               ; preds = %1
  %16 = load %struct.fiobj_float_s*, %struct.fiobj_float_s** %3, align 8, !dbg !360
  %17 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %4, i32 0, i32 0, !dbg !361
  %18 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %17, i32 0, i32 0, !dbg !362
  store i8 39, i8* %18, align 8, !dbg !362
  %19 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %17, i32 0, i32 1, !dbg !362
  store i32 1, i32* %19, align 4, !dbg !362
  %20 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %4, i32 0, i32 1, !dbg !361
  %21 = load double, double* %2, align 8, !dbg !363
  store double %21, double* %20, align 8, !dbg !361
  %22 = bitcast %struct.fiobj_float_s* %16 to i8*, !dbg !364
  %23 = bitcast %struct.fiobj_float_s* %4 to i8*, !dbg !364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false), !dbg !364
  %24 = load %struct.fiobj_float_s*, %struct.fiobj_float_s** %3, align 8, !dbg !365
  %25 = ptrtoint %struct.fiobj_float_s* %24 to i64, !dbg !366
  ret i64 %25, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_float_set(i64 %0, double %1) #0 !dbg !368 {
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !371, metadata !DIExpression()), !dbg !372
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !373, metadata !DIExpression()), !dbg !374
  %5 = load i64, i64* %3, align 8, !dbg !375
  %6 = call i64 @fiobj_type_is(i64 %5, i8 zeroext 39), !dbg !375
  %7 = icmp ne i64 %6, 0, !dbg !375
  br i1 %7, label %8, label %9, !dbg !378

8:                                                ; preds = %2
  br label %10, !dbg !378

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.fiobj_float_set, i64 0, i64 0)) #11, !dbg !375
  unreachable, !dbg !375

10:                                               ; preds = %8
  %11 = load double, double* %4, align 8, !dbg !379
  %12 = load i64, i64* %3, align 8, !dbg !380
  %13 = and i64 %12, -8, !dbg !380
  %14 = inttoptr i64 %13 to i8*, !dbg !380
  %15 = bitcast i8* %14 to %struct.fiobj_float_s*, !dbg !380
  %16 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %15, i32 0, i32 1, !dbg !381
  store double %11, double* %16, align 8, !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64 %0, i8 zeroext %1) #0 !dbg !384 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !387, metadata !DIExpression()), !dbg !388
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !389, metadata !DIExpression()), !dbg !390
  %6 = load i8, i8* %5, align 1, !dbg !391
  %7 = zext i8 %6 to i32, !dbg !391
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
  ], !dbg !392

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !393
  %10 = and i64 %9, 1, !dbg !395
  %11 = icmp ne i64 %10, 0, !dbg !395
  br i1 %11, label %19, label %12, !dbg !396

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8, !dbg !397
  %14 = inttoptr i64 %13 to i8*, !dbg !398
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !399
  %16 = load i8, i8* %15, align 1, !dbg !399
  %17 = zext i8 %16 to i32, !dbg !399
  %18 = icmp eq i32 %17, 1, !dbg !400
  br label %19, !dbg !396

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32, !dbg !396
  %22 = sext i32 %21 to i64, !dbg !401
  store i64 %22, i64* %3, align 8, !dbg !402
  br label %121, !dbg !402

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8, !dbg !403
  %25 = icmp ne i64 %24, 0, !dbg !403
  br i1 %25, label %26, label %30, !dbg !404

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !405
  %28 = call i64 @fiobj_null(), !dbg !406
  %29 = icmp eq i64 %27, %28, !dbg !407
  br label %30, !dbg !404

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !404
  %33 = sext i32 %32 to i64, !dbg !408
  store i64 %33, i64* %3, align 8, !dbg !409
  br label %121, !dbg !409

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8, !dbg !410
  %36 = call i64 @fiobj_true(), !dbg !411
  %37 = icmp eq i64 %35, %36, !dbg !412
  %38 = zext i1 %37 to i32, !dbg !412
  %39 = sext i32 %38 to i64, !dbg !410
  store i64 %39, i64* %3, align 8, !dbg !413
  br label %121, !dbg !413

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8, !dbg !414
  %42 = call i64 @fiobj_false(), !dbg !415
  %43 = icmp eq i64 %41, %42, !dbg !416
  %44 = zext i1 %43 to i32, !dbg !416
  %45 = sext i32 %44 to i64, !dbg !414
  store i64 %45, i64* %3, align 8, !dbg !417
  br label %121, !dbg !417

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8, !dbg !418
  %48 = and i64 %47, 1, !dbg !419
  %49 = icmp eq i64 %48, 0, !dbg !420
  br i1 %49, label %50, label %54, !dbg !421

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8, !dbg !422
  %52 = and i64 %51, 6, !dbg !423
  %53 = icmp eq i64 %52, 2, !dbg !424
  br i1 %53, label %55, label %54, !dbg !425

54:                                               ; preds = %50, %46
  br label %55, !dbg !425

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32, !dbg !425
  %58 = sext i32 %57 to i64, !dbg !426
  store i64 %58, i64* %3, align 8, !dbg !427
  br label %121, !dbg !427

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8, !dbg !428
  %61 = and i64 %60, 1, !dbg !431
  %62 = icmp eq i64 %61, 0, !dbg !432
  br i1 %62, label %63, label %67, !dbg !433

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8, !dbg !434
  %65 = and i64 %64, 6, !dbg !435
  %66 = icmp eq i64 %65, 4, !dbg !436
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ], !dbg !437
  %69 = zext i1 %68 to i32, !dbg !433
  %70 = sext i32 %69 to i64, !dbg !438
  store i64 %70, i64* %3, align 8, !dbg !439
  br label %121, !dbg !439

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8, !dbg !440
  %73 = icmp ne i64 %72, 0, !dbg !440
  br i1 %73, label %74, label %92, !dbg !440

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8, !dbg !440
  %76 = and i64 %75, 1, !dbg !440
  %77 = icmp eq i64 %76, 0, !dbg !440
  br i1 %77, label %78, label %92, !dbg !440

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8, !dbg !440
  %80 = and i64 %79, 6, !dbg !440
  %81 = icmp ne i64 %80, 6, !dbg !440
  br i1 %81, label %82, label %92, !dbg !441

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8, !dbg !442
  %84 = and i64 %83, -8, !dbg !442
  %85 = inttoptr i64 %84 to i8*, !dbg !442
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !443
  %87 = load i8, i8* %86, align 1, !dbg !443
  %88 = zext i8 %87 to i32, !dbg !443
  %89 = load i8, i8* %5, align 1, !dbg !444
  %90 = zext i8 %89 to i32, !dbg !444
  %91 = icmp eq i32 %88, %90, !dbg !445
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ], !dbg !446
  %94 = zext i1 %93 to i32, !dbg !441
  %95 = sext i32 %94 to i64, !dbg !440
  store i64 %95, i64* %3, align 8, !dbg !447
  br label %121, !dbg !447

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8, !dbg !448
  %98 = icmp ne i64 %97, 0, !dbg !448
  br i1 %98, label %99, label %117, !dbg !448

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8, !dbg !448
  %101 = and i64 %100, 1, !dbg !448
  %102 = icmp eq i64 %101, 0, !dbg !448
  br i1 %102, label %103, label %117, !dbg !448

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !448
  %105 = and i64 %104, 6, !dbg !448
  %106 = icmp ne i64 %105, 6, !dbg !448
  br i1 %106, label %107, label %117, !dbg !449

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8, !dbg !450
  %109 = and i64 %108, -8, !dbg !450
  %110 = inttoptr i64 %109 to i8*, !dbg !450
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !451
  %112 = load i8, i8* %111, align 1, !dbg !451
  %113 = zext i8 %112 to i32, !dbg !451
  %114 = load i8, i8* %5, align 1, !dbg !452
  %115 = zext i8 %114 to i32, !dbg !452
  %116 = icmp eq i32 %113, %115, !dbg !453
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ], !dbg !454
  %119 = zext i1 %118 to i32, !dbg !449
  %120 = sext i32 %119 to i64, !dbg !448
  store i64 %120, i64* %3, align 8, !dbg !455
  br label %121, !dbg !455

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8, !dbg !456
  ret i64 %122, !dbg !456
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_float_tmp(double %0) #0 !dbg !129 {
  %2 = alloca double, align 8
  %3 = alloca %struct.fiobj_float_s, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !457, metadata !DIExpression()), !dbg !458
  %4 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %3, i32 0, i32 0, !dbg !459
  %5 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %4, i32 0, i32 0, !dbg !460
  store i8 39, i8* %5, align 8, !dbg !460
  %6 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %4, i32 0, i32 1, !dbg !460
  store i32 268435455, i32* %6, align 4, !dbg !460
  %7 = getelementptr inbounds %struct.fiobj_float_s, %struct.fiobj_float_s* %3, i32 0, i32 1, !dbg !459
  %8 = load double, double* %2, align 8, !dbg !461
  store double %8, double* %7, align 8, !dbg !459
  %9 = bitcast %struct.fiobj_float_s* %3 to i8*, !dbg !462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.fiobj_float_s, %struct.fiobj_float_s* @fiobj_float_tmp.ret, i32 0, i32 0, i32 0), i8* align 8 %9, i64 16, i1 false), !dbg !462
  ret i64 ptrtoint (%struct.fiobj_float_s* @fiobj_float_tmp.ret to i64), !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fio_ltocstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !464 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !467, metadata !DIExpression()), !dbg !468
  %4 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !469
  store i64 0, i64* %4, align 8, !dbg !469
  %5 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !469
  %6 = load i64, i64* %3, align 8, !dbg !470
  %7 = call i64 @fio_ltoa(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i64 %6, i8 zeroext 10), !dbg !471
  store i64 %7, i64* %5, align 8, !dbg !469
  %8 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !469
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i8** %8, align 8, !dbg !469
  ret void, !dbg !472
}

declare dso_local i64 @fio_ltoa(i8*, i64, i8 zeroext) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fio_ftocstr(%struct.fio_str_info_s* noalias sret %0, double %1) #0 !dbg !473 {
  %3 = alloca double, align 8
  store double %1, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !476, metadata !DIExpression()), !dbg !477
  %4 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !478
  store i64 0, i64* %4, align 8, !dbg !478
  %5 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !478
  %6 = load double, double* %3, align 8, !dbg !479
  %7 = call i64 @fio_ftoa(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), double %6, i8 zeroext 10), !dbg !480
  store i64 %7, i64* %5, align 8, !dbg !478
  %8 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !478
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @num_buffer, i64 0, i64 0), i8** %8, align 8, !dbg !478
  ret void, !dbg !481
}

declare dso_local i64 @fio_ftoa(i8*, double, i8 zeroext) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.floor.f80(x86_fp80) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 !dbg !482 {
  ret i64 6, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 !dbg !486 {
  ret i64 22, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 !dbg !488 {
  ret i64 38, !dbg !489
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { readnone }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!145, !146, !147}
!llvm.ident = !{!148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIOBJECT_VTABLE_NUMBER", scope: !2, file: !3, line: 79, type: !57, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fiobj_numbers.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
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
!19 = !{!20, !24, !29, !42, !21, !43, !41, !51, !49, !53}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !6, line: 63, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !22, line: 90, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 26, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 42, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_float_s", file: !3, line: 27, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 24, size: 128, elements: !32)
!32 = !{!33, !40}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !31, file: !3, line: 25, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_header_s", file: !6, line: 332, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 327, size: 64, elements: !36)
!36 = !{!37, !39}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !6, line: 329, baseType: !38, size: 8)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !6, line: 61, baseType: !5)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !35, file: !6, line: 331, baseType: !24, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !31, file: !3, line: 26, baseType: !41, size: 64, offset: 64)
!41 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_num_s", file: !3, line: 22, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 19, size: 128, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !45, file: !3, line: 20, baseType: !34, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !45, file: !3, line: 21, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !22, line: 87, baseType: !50)
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!54 = !{!0, !55, !121, !127, !132, !134, !138, !140}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "FIOBJECT_VTABLE_FLOAT", scope: !2, file: !3, line: 90, type: !57, isLocal: false, isDefinition: true)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !6, line: 325, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 305, size: 576, elements: !60)
!60 = !{!61, !64, !72, !78, !85, !90, !99, !111, !116}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !59, file: !6, line: 307, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !59, file: !6, line: 309, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !20, !69, !42}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !20, !42}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !59, file: !6, line: 311, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!21, !77}
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !59, file: !6, line: 313, baseType: !79, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !77}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 46, baseType: !23)
!84 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !59, file: !6, line: 315, baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!83, !77, !77}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !59, file: !6, line: 317, baseType: !91, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!83, !20, !83, !95, !42}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !20, !42}
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !59, file: !6, line: 320, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !77}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !105, line: 287, baseType: !106)
!105 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !105, line: 283, size: 192, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !106, file: !105, line: 284, baseType: !83, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !105, line: 285, baseType: !83, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !106, file: !105, line: 286, baseType: !51, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !59, file: !6, line: 322, baseType: !112, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!49, !77}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !59, file: !6, line: 324, baseType: !117, size: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!41, !77}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "ret", scope: !123, file: !3, line: 131, type: !44, isLocal: true, isDefinition: true)
!123 = distinct !DISubprogram(name: "fiobj_num_tmp", scope: !3, file: !3, line: 130, type: !124, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!20, !49}
!126 = !{}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "ret", scope: !129, file: !3, line: 169, type: !30, isLocal: true, isDefinition: true)
!129 = distinct !DISubprogram(name: "fiobj_float_tmp", scope: !3, file: !3, line: 168, type: !130, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!130 = !DISubroutineType(types: !131)
!131 = !{!20, !41}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !105, line: 433, type: !98, isLocal: false, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !105, line: 2433, type: !136, isLocal: false, isDefinition: true)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !25, line: 24, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !27, line: 38, baseType: !7)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !105, line: 2434, type: !136, isLocal: false, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "num_buffer", scope: !2, file: !3, line: 185, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 4096, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 512)
!145 = !{i32 7, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"wchar_size", i32 4}
!148 = !{!"clang version 10.0.0-4ubuntu1 "}
!149 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !105, file: !105, line: 437, type: !150, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !62, null}
!152 = !DILocalVariable(name: "format", arg: 1, scope: !149, file: !105, line: 437, type: !62)
!153 = !DILocation(line: 437, column: 28, scope: !149)
!154 = !DILocalVariable(name: "tmp___log", scope: !149, file: !105, line: 438, type: !155)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16384, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 2048)
!158 = !DILocation(line: 438, column: 8, scope: !149)
!159 = !DILocalVariable(name: "argv", scope: !149, file: !105, line: 439, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !161, line: 52, baseType: !162)
!161 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !163, line: 32, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 192, elements: !172)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !167)
!167 = !{!168, !169, !170, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !166, file: !3, line: 439, baseType: !28, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !166, file: !3, line: 439, baseType: !28, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !166, file: !3, line: 439, baseType: !42, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !166, file: !3, line: 439, baseType: !42, size: 64, offset: 128)
!172 = !{!173}
!173 = !DISubrange(count: 1)
!174 = !DILocation(line: 439, column: 11, scope: !149)
!175 = !DILocation(line: 440, column: 3, scope: !149)
!176 = !DILocalVariable(name: "len___log", scope: !149, file: !105, line: 441, type: !98)
!177 = !DILocation(line: 441, column: 7, scope: !149)
!178 = !DILocation(line: 441, column: 29, scope: !149)
!179 = !DILocation(line: 441, column: 66, scope: !149)
!180 = !DILocation(line: 441, column: 74, scope: !149)
!181 = !DILocation(line: 441, column: 19, scope: !149)
!182 = !DILocation(line: 442, column: 3, scope: !149)
!183 = !DILocation(line: 443, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !149, file: !105, line: 443, column: 7)
!185 = !DILocation(line: 443, column: 17, scope: !184)
!186 = !DILocation(line: 443, column: 22, scope: !184)
!187 = !DILocation(line: 443, column: 25, scope: !184)
!188 = !DILocation(line: 443, column: 35, scope: !184)
!189 = !DILocation(line: 443, column: 7, scope: !149)
!190 = !DILocation(line: 444, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !105, line: 444, column: 9)
!192 = distinct !DILexicalBlock(scope: !184, file: !105, line: 443, column: 64)
!193 = !DILocation(line: 444, column: 19, scope: !191)
!194 = !DILocation(line: 444, column: 9, scope: !192)
!195 = !DILocation(line: 445, column: 14, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !105, line: 444, column: 48)
!197 = !DILocation(line: 445, column: 24, scope: !196)
!198 = !DILocation(line: 445, column: 7, scope: !196)
!199 = !DILocation(line: 447, column: 17, scope: !196)
!200 = !DILocation(line: 448, column: 5, scope: !196)
!201 = !DILocation(line: 449, column: 65, scope: !202)
!202 = distinct !DILexicalBlock(scope: !191, file: !105, line: 448, column: 12)
!203 = !DILocation(line: 449, column: 7, scope: !202)
!204 = !DILocation(line: 450, column: 7, scope: !202)
!205 = !DILocation(line: 452, column: 3, scope: !192)
!206 = !DILocation(line: 453, column: 22, scope: !149)
!207 = !DILocation(line: 453, column: 3, scope: !149)
!208 = !DILocation(line: 453, column: 26, scope: !149)
!209 = !DILocation(line: 454, column: 13, scope: !149)
!210 = !DILocation(line: 454, column: 3, scope: !149)
!211 = !DILocation(line: 454, column: 24, scope: !149)
!212 = !DILocation(line: 455, column: 10, scope: !149)
!213 = !DILocation(line: 455, column: 21, scope: !149)
!214 = !DILocation(line: 455, column: 35, scope: !149)
!215 = !DILocation(line: 455, column: 3, scope: !149)
!216 = !DILocation(line: 456, column: 1, scope: !149)
!217 = distinct !DISubprogram(name: "fio_itrue", scope: !3, file: !3, line: 45, type: !81, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!218 = !DILocalVariable(name: "o", arg: 1, scope: !217, file: !3, line: 45, type: !77)
!219 = !DILocation(line: 45, column: 37, scope: !217)
!220 = !DILocation(line: 45, column: 50, scope: !217)
!221 = !DILocation(line: 45, column: 62, scope: !217)
!222 = !DILocation(line: 45, column: 64, scope: !217)
!223 = !DILocation(line: 45, column: 49, scope: !217)
!224 = !DILocation(line: 45, column: 42, scope: !217)
!225 = distinct !DISubprogram(name: "fiobj_i_is_eq", scope: !3, file: !3, line: 69, type: !88, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!226 = !DILocalVariable(name: "self", arg: 1, scope: !225, file: !3, line: 69, type: !77)
!227 = !DILocation(line: 69, column: 41, scope: !225)
!228 = !DILocalVariable(name: "other", arg: 2, scope: !225, file: !3, line: 69, type: !77)
!229 = !DILocation(line: 69, column: 59, scope: !225)
!230 = !DILocation(line: 70, column: 10, scope: !225)
!231 = !DILocation(line: 70, column: 25, scope: !225)
!232 = !DILocation(line: 70, column: 30, scope: !225)
!233 = !DILocation(line: 70, column: 46, scope: !225)
!234 = !DILocation(line: 70, column: 27, scope: !225)
!235 = !DILocation(line: 70, column: 3, scope: !225)
!236 = distinct !DISubprogram(name: "fio_i2str", scope: !3, file: !3, line: 48, type: !102, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!237 = !DILocalVariable(name: "o", arg: 1, scope: !236, file: !3, line: 48, type: !77)
!238 = !DILocation(line: 48, column: 45, scope: !236)
!239 = !DILocation(line: 49, column: 26, scope: !236)
!240 = !DILocation(line: 51, column: 35, scope: !236)
!241 = !DILocation(line: 51, column: 47, scope: !236)
!242 = !DILocation(line: 51, column: 14, scope: !236)
!243 = !DILocation(line: 49, column: 3, scope: !236)
!244 = distinct !DISubprogram(name: "fio_i2i", scope: !3, file: !3, line: 38, type: !114, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!245 = !DILocalVariable(name: "o", arg: 1, scope: !244, file: !3, line: 38, type: !77)
!246 = !DILocation(line: 38, column: 37, scope: !244)
!247 = !DILocation(line: 38, column: 49, scope: !244)
!248 = !DILocation(line: 38, column: 61, scope: !244)
!249 = !DILocation(line: 38, column: 42, scope: !244)
!250 = distinct !DISubprogram(name: "fio_i2f", scope: !3, file: !3, line: 42, type: !119, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!251 = !DILocalVariable(name: "o", arg: 1, scope: !250, file: !3, line: 42, type: !77)
!252 = !DILocation(line: 42, column: 35, scope: !250)
!253 = !DILocation(line: 42, column: 55, scope: !250)
!254 = !DILocation(line: 42, column: 67, scope: !250)
!255 = !DILocation(line: 42, column: 47, scope: !250)
!256 = !DILocation(line: 42, column: 40, scope: !250)
!257 = distinct !DISubprogram(name: "fio_ftrue", scope: !3, file: !3, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!258 = !DILocalVariable(name: "o", arg: 1, scope: !257, file: !3, line: 46, type: !77)
!259 = !DILocation(line: 46, column: 37, scope: !257)
!260 = !DILocation(line: 46, column: 50, scope: !257)
!261 = !DILocation(line: 46, column: 64, scope: !257)
!262 = !DILocation(line: 46, column: 66, scope: !257)
!263 = !DILocation(line: 46, column: 49, scope: !257)
!264 = !DILocation(line: 46, column: 42, scope: !257)
!265 = distinct !DISubprogram(name: "fiobj_f_is_eq", scope: !3, file: !3, line: 72, type: !88, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!266 = !DILocalVariable(name: "self", arg: 1, scope: !265, file: !3, line: 72, type: !77)
!267 = !DILocation(line: 72, column: 41, scope: !265)
!268 = !DILocalVariable(name: "other", arg: 2, scope: !265, file: !3, line: 72, type: !77)
!269 = !DILocation(line: 72, column: 59, scope: !265)
!270 = !DILocation(line: 73, column: 10, scope: !265)
!271 = !DILocation(line: 73, column: 27, scope: !265)
!272 = !DILocation(line: 73, column: 32, scope: !265)
!273 = !DILocation(line: 73, column: 50, scope: !265)
!274 = !DILocation(line: 73, column: 29, scope: !265)
!275 = !DILocation(line: 73, column: 3, scope: !265)
!276 = distinct !DISubprogram(name: "fio_f2str", scope: !3, file: !3, line: 54, type: !102, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!277 = !DILocalVariable(name: "o", arg: 1, scope: !276, file: !3, line: 54, type: !77)
!278 = !DILocation(line: 54, column: 45, scope: !276)
!279 = !DILocation(line: 55, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 55, column: 7)
!281 = !DILocation(line: 55, column: 7, scope: !276)
!282 = !DILocation(line: 56, column: 28, scope: !280)
!283 = !DILocation(line: 56, column: 5, scope: !280)
!284 = !DILocation(line: 57, column: 12, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !3, line: 57, column: 12)
!286 = !DILocation(line: 57, column: 12, scope: !280)
!287 = !DILocation(line: 58, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 58, column: 9)
!289 = distinct !DILexicalBlock(scope: !285, file: !3, line: 57, column: 36)
!290 = !DILocation(line: 58, column: 23, scope: !288)
!291 = !DILocation(line: 58, column: 25, scope: !288)
!292 = !DILocation(line: 58, column: 9, scope: !289)
!293 = !DILocation(line: 59, column: 30, scope: !288)
!294 = !DILocation(line: 59, column: 7, scope: !288)
!295 = !DILocation(line: 61, column: 30, scope: !288)
!296 = !DILocation(line: 61, column: 7, scope: !288)
!297 = !DILocation(line: 63, column: 26, scope: !276)
!298 = !DILocation(line: 65, column: 35, scope: !276)
!299 = !DILocation(line: 65, column: 49, scope: !276)
!300 = !DILocation(line: 65, column: 14, scope: !276)
!301 = !DILocation(line: 63, column: 3, scope: !276)
!302 = !DILocation(line: 67, column: 1, scope: !276)
!303 = distinct !DISubprogram(name: "fio_f2i", scope: !3, file: !3, line: 39, type: !114, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!304 = !DILocalVariable(name: "o", arg: 1, scope: !303, file: !3, line: 39, type: !77)
!305 = !DILocation(line: 39, column: 37, scope: !303)
!306 = !DILocation(line: 40, column: 27, scope: !303)
!307 = !DILocation(line: 40, column: 41, scope: !303)
!308 = !DILocation(line: 40, column: 20, scope: !303)
!309 = !DILocation(line: 40, column: 10, scope: !303)
!310 = !DILocation(line: 40, column: 3, scope: !303)
!311 = distinct !DISubprogram(name: "fio_f2f", scope: !3, file: !3, line: 43, type: !119, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!312 = !DILocalVariable(name: "o", arg: 1, scope: !311, file: !3, line: 43, type: !77)
!313 = !DILocation(line: 43, column: 35, scope: !311)
!314 = !DILocation(line: 43, column: 47, scope: !311)
!315 = !DILocation(line: 43, column: 61, scope: !311)
!316 = !DILocation(line: 43, column: 40, scope: !311)
!317 = distinct !DISubprogram(name: "fiobj_num_new_bignum", scope: !3, file: !3, line: 106, type: !124, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!318 = !DILocalVariable(name: "num", arg: 1, scope: !317, file: !3, line: 106, type: !49)
!319 = !DILocation(line: 106, column: 37, scope: !317)
!320 = !DILocalVariable(name: "o", scope: !317, file: !3, line: 107, type: !43)
!321 = !DILocation(line: 107, column: 16, scope: !317)
!322 = !DILocation(line: 107, column: 20, scope: !317)
!323 = !DILocation(line: 108, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 108, column: 7)
!325 = !DILexicalBlockFile(scope: !317, file: !3, discriminator: 0)
!326 = !DILocation(line: 108, column: 7, scope: !325)
!327 = !DILocation(line: 109, column: 5, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 108, column: 11)
!329 = !DILocation(line: 110, column: 10, scope: !328)
!330 = !DILocation(line: 110, column: 5, scope: !328)
!331 = !DILocation(line: 112, column: 4, scope: !325)
!332 = !DILocation(line: 112, column: 21, scope: !325)
!333 = !DILocation(line: 114, column: 11, scope: !325)
!334 = !DILocation(line: 118, column: 12, scope: !325)
!335 = !DILocation(line: 112, column: 8, scope: !325)
!336 = !DILocation(line: 120, column: 17, scope: !325)
!337 = !DILocation(line: 120, column: 10, scope: !325)
!338 = !DILocation(line: 120, column: 3, scope: !325)
!339 = !DILocalVariable(name: "num", arg: 1, scope: !123, file: !3, line: 130, type: !49)
!340 = !DILocation(line: 130, column: 30, scope: !123)
!341 = !DILocation(line: 132, column: 22, scope: !123)
!342 = !DILocation(line: 133, column: 15, scope: !123)
!343 = !DILocation(line: 134, column: 12, scope: !123)
!344 = !DILocation(line: 132, column: 9, scope: !123)
!345 = !DILocation(line: 136, column: 3, scope: !123)
!346 = distinct !DISubprogram(name: "fiobj_float_new", scope: !3, file: !3, line: 144, type: !130, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!347 = !DILocalVariable(name: "num", arg: 1, scope: !346, file: !3, line: 144, type: !41)
!348 = !DILocation(line: 144, column: 30, scope: !346)
!349 = !DILocalVariable(name: "o", scope: !346, file: !3, line: 145, type: !29)
!350 = !DILocation(line: 145, column: 18, scope: !346)
!351 = !DILocation(line: 145, column: 22, scope: !346)
!352 = !DILocation(line: 146, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 146, column: 7)
!354 = !DILexicalBlockFile(scope: !346, file: !3, discriminator: 0)
!355 = !DILocation(line: 146, column: 7, scope: !354)
!356 = !DILocation(line: 147, column: 5, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !3, line: 146, column: 11)
!358 = !DILocation(line: 148, column: 10, scope: !357)
!359 = !DILocation(line: 148, column: 5, scope: !357)
!360 = !DILocation(line: 150, column: 4, scope: !354)
!361 = !DILocation(line: 150, column: 23, scope: !354)
!362 = !DILocation(line: 152, column: 11, scope: !354)
!363 = !DILocation(line: 156, column: 12, scope: !354)
!364 = !DILocation(line: 150, column: 8, scope: !354)
!365 = !DILocation(line: 158, column: 17, scope: !354)
!366 = !DILocation(line: 158, column: 10, scope: !354)
!367 = !DILocation(line: 158, column: 3, scope: !354)
!368 = distinct !DISubprogram(name: "fiobj_float_set", scope: !3, file: !3, line: 162, type: !369, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !20, !41}
!371 = !DILocalVariable(name: "obj", arg: 1, scope: !368, file: !3, line: 162, type: !20)
!372 = !DILocation(line: 162, column: 28, scope: !368)
!373 = !DILocalVariable(name: "num", arg: 2, scope: !368, file: !3, line: 162, type: !41)
!374 = !DILocation(line: 162, column: 40, scope: !368)
!375 = !DILocation(line: 163, column: 3, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!377 = distinct !DILexicalBlock(scope: !368, file: !3, line: 163, column: 3)
!378 = !DILocation(line: 163, column: 3, scope: !377)
!379 = !DILocation(line: 164, column: 23, scope: !368)
!380 = !DILocation(line: 164, column: 3, scope: !368)
!381 = !DILocation(line: 164, column: 19, scope: !368)
!382 = !DILocation(line: 164, column: 21, scope: !368)
!383 = !DILocation(line: 165, column: 1, scope: !368)
!384 = distinct !DISubprogram(name: "fiobj_type_is", scope: !6, file: !6, line: 269, type: !385, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!385 = !DISubroutineType(types: !386)
!386 = !{!83, !20, !38}
!387 = !DILocalVariable(name: "o", arg: 1, scope: !384, file: !6, line: 269, type: !20)
!388 = !DILocation(line: 269, column: 39, scope: !384)
!389 = !DILocalVariable(name: "type", arg: 2, scope: !384, file: !6, line: 269, type: !38)
!390 = !DILocation(line: 269, column: 58, scope: !384)
!391 = !DILocation(line: 270, column: 11, scope: !384)
!392 = !DILocation(line: 270, column: 3, scope: !384)
!393 = !DILocation(line: 272, column: 13, scope: !394)
!394 = distinct !DILexicalBlock(scope: !384, file: !6, line: 270, column: 17)
!395 = !DILocation(line: 272, column: 15, scope: !394)
!396 = !DILocation(line: 272, column: 39, scope: !394)
!397 = !DILocation(line: 273, column: 32, scope: !394)
!398 = !DILocation(line: 273, column: 13, scope: !394)
!399 = !DILocation(line: 273, column: 12, scope: !394)
!400 = !DILocation(line: 273, column: 38, scope: !394)
!401 = !DILocation(line: 272, column: 12, scope: !394)
!402 = !DILocation(line: 272, column: 5, scope: !394)
!403 = !DILocation(line: 275, column: 13, scope: !394)
!404 = !DILocation(line: 275, column: 15, scope: !394)
!405 = !DILocation(line: 275, column: 18, scope: !394)
!406 = !DILocation(line: 275, column: 23, scope: !394)
!407 = !DILocation(line: 275, column: 20, scope: !394)
!408 = !DILocation(line: 275, column: 12, scope: !394)
!409 = !DILocation(line: 275, column: 5, scope: !394)
!410 = !DILocation(line: 277, column: 12, scope: !394)
!411 = !DILocation(line: 277, column: 17, scope: !394)
!412 = !DILocation(line: 277, column: 14, scope: !394)
!413 = !DILocation(line: 277, column: 5, scope: !394)
!414 = !DILocation(line: 279, column: 12, scope: !394)
!415 = !DILocation(line: 279, column: 17, scope: !394)
!416 = !DILocation(line: 279, column: 14, scope: !394)
!417 = !DILocation(line: 279, column: 5, scope: !394)
!418 = !DILocation(line: 281, column: 38, scope: !394)
!419 = !DILocation(line: 281, column: 40, scope: !394)
!420 = !DILocation(line: 281, column: 64, scope: !394)
!421 = !DILocation(line: 281, column: 69, scope: !394)
!422 = !DILocation(line: 282, column: 14, scope: !394)
!423 = !DILocation(line: 282, column: 16, scope: !394)
!424 = !DILocation(line: 282, column: 43, scope: !394)
!425 = !DILocation(line: 282, column: 68, scope: !394)
!426 = !DILocation(line: 281, column: 12, scope: !394)
!427 = !DILocation(line: 281, column: 5, scope: !394)
!428 = !DILocation(line: 287, column: 16, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !6, line: 286, column: 29)
!430 = distinct !DILexicalBlock(scope: !394, file: !6, line: 286, column: 9)
!431 = !DILocation(line: 287, column: 18, scope: !429)
!432 = !DILocation(line: 287, column: 42, scope: !429)
!433 = !DILocation(line: 287, column: 47, scope: !429)
!434 = !DILocation(line: 288, column: 16, scope: !429)
!435 = !DILocation(line: 288, column: 18, scope: !429)
!436 = !DILocation(line: 288, column: 45, scope: !429)
!437 = !DILocation(line: 0, scope: !429)
!438 = !DILocation(line: 287, column: 14, scope: !429)
!439 = !DILocation(line: 287, column: 7, scope: !429)
!440 = !DILocation(line: 295, column: 12, scope: !394)
!441 = !DILocation(line: 295, column: 34, scope: !394)
!442 = !DILocation(line: 296, column: 32, scope: !394)
!443 = !DILocation(line: 296, column: 12, scope: !394)
!444 = !DILocation(line: 296, column: 52, scope: !394)
!445 = !DILocation(line: 296, column: 49, scope: !394)
!446 = !DILocation(line: 0, scope: !394)
!447 = !DILocation(line: 295, column: 5, scope: !394)
!448 = !DILocation(line: 298, column: 10, scope: !384)
!449 = !DILocation(line: 298, column: 32, scope: !384)
!450 = !DILocation(line: 298, column: 55, scope: !384)
!451 = !DILocation(line: 298, column: 35, scope: !384)
!452 = !DILocation(line: 298, column: 75, scope: !384)
!453 = !DILocation(line: 298, column: 72, scope: !384)
!454 = !DILocation(line: 0, scope: !384)
!455 = !DILocation(line: 298, column: 3, scope: !384)
!456 = !DILocation(line: 299, column: 1, scope: !384)
!457 = !DILocalVariable(name: "num", arg: 1, scope: !129, file: !3, line: 168, type: !41)
!458 = !DILocation(line: 168, column: 30, scope: !129)
!459 = !DILocation(line: 170, column: 24, scope: !129)
!460 = !DILocation(line: 172, column: 11, scope: !129)
!461 = !DILocation(line: 176, column: 12, scope: !129)
!462 = !DILocation(line: 170, column: 9, scope: !129)
!463 = !DILocation(line: 178, column: 3, scope: !129)
!464 = distinct !DISubprogram(name: "fio_ltocstr", scope: !3, file: !3, line: 187, type: !465, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!465 = !DISubroutineType(types: !466)
!466 = !{!104, !50}
!467 = !DILocalVariable(name: "i", arg: 1, scope: !464, file: !3, line: 187, type: !50)
!468 = !DILocation(line: 187, column: 33, scope: !464)
!469 = !DILocation(line: 188, column: 26, scope: !464)
!470 = !DILocation(line: 189, column: 55, scope: !464)
!471 = !DILocation(line: 189, column: 34, scope: !464)
!472 = !DILocation(line: 188, column: 3, scope: !464)
!473 = distinct !DISubprogram(name: "fio_ftocstr", scope: !3, file: !3, line: 191, type: !474, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!474 = !DISubroutineType(types: !475)
!475 = !{!104, !41}
!476 = !DILocalVariable(name: "f", arg: 1, scope: !473, file: !3, line: 191, type: !41)
!477 = !DILocation(line: 191, column: 35, scope: !473)
!478 = !DILocation(line: 192, column: 26, scope: !473)
!479 = !DILocation(line: 193, column: 55, scope: !473)
!480 = !DILocation(line: 193, column: 34, scope: !473)
!481 = !DILocation(line: 192, column: 3, scope: !473)
!482 = distinct !DISubprogram(name: "fiobj_null", scope: !6, file: !6, line: 87, type: !483, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!483 = !DISubroutineType(types: !484)
!484 = !{!20}
!485 = !DILocation(line: 87, column: 37, scope: !482)
!486 = distinct !DISubprogram(name: "fiobj_true", scope: !6, file: !6, line: 88, type: !483, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!487 = !DILocation(line: 88, column: 37, scope: !486)
!488 = distinct !DISubprogram(name: "fiobj_false", scope: !6, file: !6, line: 89, type: !483, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!489 = !DILocation(line: 89, column: 38, scope: !488)
