; ModuleID = './examples/example1/c/refactored/example1.mod.c'
source_filename = "./examples/example1/c/refactored/example1.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@calc_ewma.c = internal global double 0.000000e+00, align 8
@get_a.a = internal global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [7 x i8] c"ORANGE\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [48 x i8] c"./examples/example1/c/refactored/example1.mod.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [16 x i8] c"XDLINKAGE_GET_A\00", section "llvm.metadata"
@get_b.b = internal global double 1.000000e+00, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"PURPLE\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@llvm.global.annotations = appending global [3 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (double* @get_a.a to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 39 }, { i8*, i8*, i8*, i32 } { i8* bitcast (double ()* @get_a to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 34 }, { i8*, i8*, i8*, i32 } { i8* bitcast (double* @get_b.b to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 48 }], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @calc_ewma(double, double) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  store double 2.500000e-01, double* %5, align 8
  %6 = load double, double* %3, align 8
  %7 = load double, double* %4, align 8
  %8 = fadd double %6, %7
  %9 = fmul double 2.500000e-01, %8
  %10 = load double, double* @calc_ewma.c, align 8
  %11 = fmul double 7.500000e-01, %10
  %12 = fadd double %9, %11
  store double %12, double* @calc_ewma.c, align 8
  %13 = load double, double* @calc_ewma.c, align 8
  ret double %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_a() #0 {
  %1 = load double, double* @get_a.a, align 8
  %2 = fadd double %1, 1.000000e+00
  store double %2, double* @get_a.a, align 8
  %3 = load double, double* @get_a.a, align 8
  ret double %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_b() #0 {
  %1 = load double, double* @get_b.b, align 8
  %2 = load double, double* @get_b.b, align 8
  %3 = fadd double %2, %1
  store double %3, double* @get_b.b, align 8
  %4 = load double, double* @get_b.b, align 8
  ret double %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ewma_main() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = bitcast double* %3 to i8*
  call void @llvm.var.annotation(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 59)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = call double @get_a()
  store double %10, double* %1, align 8
  %11 = call double @get_b()
  store double %11, double* %2, align 8
  %12 = load double, double* %1, align 8
  %13 = load double, double* %2, align 8
  %14 = call double @calc_ewma(double %12, double %13)
  store double %14, double* %3, align 8
  %15 = load double, double* %3, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %6

20:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @ewma_main()
  ret i32 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
