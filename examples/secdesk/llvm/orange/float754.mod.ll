; ModuleID = './examples/secdesk/c/float754.mod.c'
source_filename = "./examples/secdesk/c/float754.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pack754(x86_fp80, i32, i32) #0 {
  %4 = alloca i64, align 8
  %5 = alloca x86_fp80, align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca x86_fp80, align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %5, align 16
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub i32 %14, %15
  %17 = sub i32 %16, 1
  store i32 %17, i32* %13, align 4
  %18 = load x86_fp80, x86_fp80* %5, align 16
  %19 = fcmp oeq x86_fp80 %18, 0xK00000000000000000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %81

21:                                               ; preds = %3
  %22 = load x86_fp80, x86_fp80* %5, align 16
  %23 = fcmp olt x86_fp80 %22, 0xK00000000000000000000
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  store i64 1, i64* %10, align 8
  %25 = load x86_fp80, x86_fp80* %5, align 16
  %26 = fsub x86_fp80 0xK80000000000000000000, %25
  store x86_fp80 %26, x86_fp80* %8, align 16
  br label %29

27:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  %28 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %28, x86_fp80* %8, align 16
  br label %29

29:                                               ; preds = %27, %24
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %33, %29
  %31 = load x86_fp80, x86_fp80* %8, align 16
  %32 = fcmp oge x86_fp80 %31, 0xK40008000000000000000
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load x86_fp80, x86_fp80* %8, align 16
  %35 = fdiv x86_fp80 %34, 0xK40008000000000000000
  store x86_fp80 %35, x86_fp80* %8, align 16
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %30

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %42, %38
  %40 = load x86_fp80, x86_fp80* %8, align 16
  %41 = fcmp olt x86_fp80 %40, 0xK3FFF8000000000000000
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load x86_fp80, x86_fp80* %8, align 16
  %44 = fmul x86_fp80 %43, 0xK40008000000000000000
  store x86_fp80 %44, x86_fp80* %8, align 16
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  br label %39

47:                                               ; preds = %39
  %48 = load x86_fp80, x86_fp80* %8, align 16
  %49 = fsub x86_fp80 %48, 0xK3FFF8000000000000000
  store x86_fp80 %49, x86_fp80* %8, align 16
  %50 = load x86_fp80, x86_fp80* %8, align 16
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  %54 = sitofp i64 %53 to float
  %55 = fadd float %54, 5.000000e-01
  %56 = fpext float %55 to x86_fp80
  %57 = fmul x86_fp80 %50, %56
  %58 = fptosi x86_fp80 %57 to i64
  store i64 %58, i64* %12, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub i32 %60, 1
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = add nsw i32 %59, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sub i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = shl i64 %66, %69
  %71 = load i64, i64* %11, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub i32 %72, %73
  %75 = sub i32 %74, 1
  %76 = zext i32 %75 to i64
  %77 = shl i64 %71, %76
  %78 = or i64 %70, %77
  %79 = load i64, i64* %12, align 8
  %80 = or i64 %78, %79
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %47, %20
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @unpack754(i64, i32, i32) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca x86_fp80, align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub i32 %12, %13
  %15 = sub i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store x86_fp80 0xK00000000000000000000, x86_fp80* %4, align 16
  br label %82

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %11, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = sub nsw i64 %23, 1
  %25 = and i64 %20, %24
  %26 = uitofp i64 %25 to x86_fp80
  store x86_fp80 %26, x86_fp80* %8, align 16
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = shl i64 1, %28
  %30 = sitofp i64 %29 to x86_fp80
  %31 = load x86_fp80, x86_fp80* %8, align 16
  %32 = fdiv x86_fp80 %31, %30
  store x86_fp80 %32, x86_fp80* %8, align 16
  %33 = load x86_fp80, x86_fp80* %8, align 16
  %34 = fadd x86_fp80 %33, 0xK3FFF8000000000000000
  store x86_fp80 %34, x86_fp80* %8, align 16
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, 1
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = lshr i64 %39, %41
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = sub nsw i64 %45, 1
  %47 = and i64 %42, %46
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = sub i64 %47, %49
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %54, %19
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load x86_fp80, x86_fp80* %8, align 16
  %56 = fmul x86_fp80 %55, 0xK40008000000000000000
  store x86_fp80 %56, x86_fp80* %8, align 16
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %9, align 8
  br label %51

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %63, %59
  %61 = load i64, i64* %9, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load x86_fp80, x86_fp80* %8, align 16
  %65 = fdiv x86_fp80 %64, 0xK40008000000000000000
  store x86_fp80 %65, x86_fp80* %8, align 16
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %60

68:                                               ; preds = %60
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sub i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = lshr i64 %69, %72
  %74 = and i64 %73, 1
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, double -1.000000e+00, double 1.000000e+00
  %78 = fpext double %77 to x86_fp80
  %79 = load x86_fp80, x86_fp80* %8, align 16
  %80 = fmul x86_fp80 %79, %78
  store x86_fp80 %80, x86_fp80* %8, align 16
  %81 = load x86_fp80, x86_fp80* %8, align 16
  store x86_fp80 %81, x86_fp80* %4, align 16
  br label %82

82:                                               ; preds = %68, %18
  %83 = load x86_fp80, x86_fp80* %4, align 16
  ret x86_fp80 %83
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htonf(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = fpext float %4 to x86_fp80
  %6 = call i64 @pack754(x86_fp80 %5, i32 32, i32 8)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = call i32 @htonl(i32 1) #2
  %9 = icmp eq i32 1, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 65535
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i16
  %15 = zext i16 %14 to i32
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 65535
  %19 = and i32 %18, 65280
  %20 = lshr i32 %19, 8
  %21 = or i32 %16, %20
  %22 = shl i32 %21, 16
  %23 = load i32, i32* %3, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i16
  %27 = zext i16 %26 to i32
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %3, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 65280
  %32 = lshr i32 %31, 8
  %33 = or i32 %28, %32
  %34 = or i32 %22, %33
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %10
  %38 = phi i32 [ %34, %10 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind readnone
declare dso_local i32 @htonl(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ntohf(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @htonl(i32 1) #2
  %5 = icmp eq i32 1, %4
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 65535
  %9 = and i32 %8, 255
  %10 = trunc i32 %9 to i16
  %11 = zext i16 %10 to i32
  %12 = shl i32 %11, 8
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 65535
  %15 = and i32 %14, 65280
  %16 = lshr i32 %15, 8
  %17 = or i32 %12, %16
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %2, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i16
  %23 = zext i16 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %2, align 4
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 65280
  %28 = lshr i32 %27, 8
  %29 = or i32 %24, %28
  %30 = or i32 %18, %29
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %6
  %34 = phi i32 [ %30, %6 ], [ %32, %31 ]
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = call x86_fp80 @unpack754(i64 %36, i32 32, i32 8)
  %38 = fptrunc x86_fp80 %37 to float
  ret float %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @htond(x86_fp80) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca i64, align 8
  store x86_fp80 %0, x86_fp80* %2, align 16
  %4 = load x86_fp80, x86_fp80* %2, align 16
  %5 = call i64 @pack754(x86_fp80 %4, i32 64, i32 11)
  store i64 %5, i64* %3, align 8
  %6 = call i32 @htonl(i32 1) #2
  %7 = icmp eq i32 1, %6
  br i1 %7, label %8, label %75

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 4294967295
  %11 = and i64 %10, 65535
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i16
  %14 = zext i16 %13 to i32
  %15 = shl i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, 4294967295
  %19 = and i64 %18, 65535
  %20 = and i64 %19, 65280
  %21 = lshr i64 %20, 8
  %22 = or i64 %16, %21
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 16
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, 4294967295
  %28 = lshr i64 %27, 16
  %29 = and i64 %28, 255
  %30 = trunc i64 %29 to i16
  %31 = zext i16 %30 to i32
  %32 = shl i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %3, align 8
  %35 = and i64 %34, 4294967295
  %36 = lshr i64 %35, 16
  %37 = and i64 %36, 65280
  %38 = lshr i64 %37, 8
  %39 = or i64 %33, %38
  %40 = or i64 %25, %39
  %41 = shl i64 %40, 32
  %42 = load i64, i64* %3, align 8
  %43 = lshr i64 %42, 32
  %44 = and i64 %43, 65535
  %45 = and i64 %44, 255
  %46 = trunc i64 %45 to i16
  %47 = zext i16 %46 to i32
  %48 = shl i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %3, align 8
  %51 = lshr i64 %50, 32
  %52 = and i64 %51, 65535
  %53 = and i64 %52, 65280
  %54 = lshr i64 %53, 8
  %55 = or i64 %49, %54
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 16
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %3, align 8
  %60 = lshr i64 %59, 32
  %61 = lshr i64 %60, 16
  %62 = and i64 %61, 255
  %63 = trunc i64 %62 to i16
  %64 = zext i16 %63 to i32
  %65 = shl i32 %64, 8
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %3, align 8
  %68 = lshr i64 %67, 32
  %69 = lshr i64 %68, 16
  %70 = and i64 %69, 65280
  %71 = lshr i64 %70, 8
  %72 = or i64 %66, %71
  %73 = or i64 %58, %72
  %74 = or i64 %41, %73
  br label %77

75:                                               ; preds = %1
  %76 = load i64, i64* %3, align 8
  br label %77

77:                                               ; preds = %75, %8
  %78 = phi i64 [ %74, %8 ], [ %76, %75 ]
  ret i64 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @ntohd(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 @htonl(i32 1) #2
  %5 = icmp eq i32 1, %4
  br i1 %5, label %6, label %73

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 4294967295
  %9 = and i64 %8, 65535
  %10 = and i64 %9, 255
  %11 = trunc i64 %10 to i16
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, 8
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %2, align 8
  %16 = and i64 %15, 4294967295
  %17 = and i64 %16, 65535
  %18 = and i64 %17, 65280
  %19 = lshr i64 %18, 8
  %20 = or i64 %14, %19
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 16
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* %2, align 8
  %25 = and i64 %24, 4294967295
  %26 = lshr i64 %25, 16
  %27 = and i64 %26, 255
  %28 = trunc i64 %27 to i16
  %29 = zext i16 %28 to i32
  %30 = shl i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %2, align 8
  %33 = and i64 %32, 4294967295
  %34 = lshr i64 %33, 16
  %35 = and i64 %34, 65280
  %36 = lshr i64 %35, 8
  %37 = or i64 %31, %36
  %38 = or i64 %23, %37
  %39 = shl i64 %38, 32
  %40 = load i64, i64* %2, align 8
  %41 = lshr i64 %40, 32
  %42 = and i64 %41, 65535
  %43 = and i64 %42, 255
  %44 = trunc i64 %43 to i16
  %45 = zext i16 %44 to i32
  %46 = shl i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %2, align 8
  %49 = lshr i64 %48, 32
  %50 = and i64 %49, 65535
  %51 = and i64 %50, 65280
  %52 = lshr i64 %51, 8
  %53 = or i64 %47, %52
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 16
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %2, align 8
  %58 = lshr i64 %57, 32
  %59 = lshr i64 %58, 16
  %60 = and i64 %59, 255
  %61 = trunc i64 %60 to i16
  %62 = zext i16 %61 to i32
  %63 = shl i32 %62, 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %2, align 8
  %66 = lshr i64 %65, 32
  %67 = lshr i64 %66, 16
  %68 = and i64 %67, 65280
  %69 = lshr i64 %68, 8
  %70 = or i64 %64, %69
  %71 = or i64 %56, %70
  %72 = or i64 %39, %71
  br label %75

73:                                               ; preds = %1
  %74 = load i64, i64* %2, align 8
  br label %75

75:                                               ; preds = %73, %6
  %76 = phi i64 [ %72, %6 ], [ %74, %73 ]
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = call x86_fp80 @unpack754(i64 %77, i32 64, i32 11)
  ret x86_fp80 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
