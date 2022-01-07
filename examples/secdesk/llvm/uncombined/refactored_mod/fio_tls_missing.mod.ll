; ModuleID = 'fio_tls_missing.mod.c'
source_filename = "fio_tls_missing.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"FATAL: No supported SSL/TLS library available.\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"FATAL: TLS certificate file missing for either %s or %s or both.\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"FATAL: TLS certificate file missing for %s \00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1

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
define weak dso_local %struct.fio_tls_s* @fio_tls_new(i8*, i8*, i8*, i8*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fio_tls_s*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %10

10:                                               ; preds = %4
  %11 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %12 = icmp sle i32 1, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %10
  br label %15

15:                                               ; preds = %14
  call void @exit(i32 -1) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_cert_add(%struct.fio_tls_s*, i8*, i8*, i8*, i8*) #0 {
  %6 = alloca %struct.fio_tls_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cert_s, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  br label %12

12:                                               ; preds = %5
  %13 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %14 = icmp sle i32 1, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16
  call void @exit(i32 -1) #6
  unreachable

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %21 = icmp sle i32 1, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %8, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %23, i8* %24)
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25
  call void @exit(i32 -1) #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_alpn_add(%struct.fio_tls_s*, i8*, void (i64, i8*, i8*)*, i8*, void (i8*)*) #0 {
  %6 = alloca %struct.fio_tls_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i64, i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store void (i64, i8*, i8*)* %2, void (i64, i8*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store void (i8*)* %4, void (i8*)** %10, align 8
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %13 = icmp sle i32 1, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15
  call void @exit(i32 -1) #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_tls_alpn_count(%struct.fio_tls_s*) #0 {
  %2 = alloca %struct.fio_tls_s*, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %2, align 8
  %3 = load %struct.fio_tls_s*, %struct.fio_tls_s** %2, align 8
  %4 = icmp ne %struct.fio_tls_s* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.fio_tls_s*, %struct.fio_tls_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_tls_s, %struct.fio_tls_s* %6, i32 0, i32 1
  %8 = call i64 @alpn_list_count(%struct.alpn_list_s* %7)
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 0, %9 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpn_list_count(%struct.alpn_list_s*) #0 {
  %2 = alloca %struct.alpn_list_s*, align 8
  store %struct.alpn_list_s* %0, %struct.alpn_list_s** %2, align 8
  %3 = load %struct.alpn_list_s*, %struct.alpn_list_s** %2, align 8
  %4 = getelementptr inbounds %struct.alpn_list_s, %struct.alpn_list_s* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_trust(%struct.fio_tls_s*, i8*) #0 {
  %3 = alloca %struct.fio_tls_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trust_s, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %2
  %7 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %8 = icmp sle i32 1, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %10

10:                                               ; preds = %9, %6
  br label %11

11:                                               ; preds = %10
  call void @exit(i32 -1) #6
  unreachable

12:                                               ; No predecessors!
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %15 = icmp sle i32 1, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  br label %18

18:                                               ; preds = %16, %13
  br label %19

19:                                               ; preds = %18
  call void @exit(i32 -1) #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_accept(i64, %struct.fio_tls_s*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_tls_s*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.fio_tls_s* %1, %struct.fio_tls_s** %5, align 8
  store i8* %2, i8** %6, align 8
  br label %7

7:                                                ; preds = %3
  %8 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %9 = icmp sle i32 1, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %7
  br label %12

12:                                               ; preds = %11
  call void @exit(i32 -1) #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_connect(i64, %struct.fio_tls_s*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_tls_s*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.fio_tls_s* %1, %struct.fio_tls_s** %5, align 8
  store i8* %2, i8** %6, align 8
  br label %7

7:                                                ; preds = %3
  %8 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %9 = icmp sle i32 1, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %7
  br label %12

12:                                               ; preds = %11
  call void @exit(i32 -1) #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_dup(%struct.fio_tls_s*) #0 {
  %2 = alloca %struct.fio_tls_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %2, align 8
  %5 = load %struct.fio_tls_s*, %struct.fio_tls_s** %2, align 8
  %6 = getelementptr inbounds %struct.fio_tls_s, %struct.fio_tls_s* %5, i32 0, i32 0
  store i64 1, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = atomicrmw add i64* %6, i64 %7 seq_cst
  %9 = add i64 %8, %7
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_tls_destroy(%struct.fio_tls_s*) #0 {
  %2 = alloca %struct.fio_tls_s*, align 8
  store %struct.fio_tls_s* %0, %struct.fio_tls_s** %2, align 8
  %3 = load %struct.fio_tls_s*, %struct.fio_tls_s** %2, align 8
  %4 = icmp ne %struct.fio_tls_s* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6
  %8 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %9 = icmp sle i32 1, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %7
  br label %12

12:                                               ; preds = %11
  call void @exit(i32 -1) #6
  unreachable
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
