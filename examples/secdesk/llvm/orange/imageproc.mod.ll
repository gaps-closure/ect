; ModuleID = './examples/secdesk/c/imageproc.mod.c'
source_filename = "./examples/secdesk/c/imageproc.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@savedBox = dso_local global [4 x i64] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"GET_FEATURES\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [37 x i8] c"./examples/secdesk/c/imageproc.mod.c\00", section "llvm.metadata"
@savedName = common dso_local global [32 x i8] zeroinitializer, align 16
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (i32 (i8*, double*)* @get_features to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 203 }], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_imageprocessor() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_imageprocessor() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @overlay(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_features(i8*, double* dereferenceable(1024)) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double*, align 8
  store i8* %0, i8** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  %6 = bitcast double* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 1024, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
