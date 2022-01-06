; ModuleID = 'example1-refactored.c'
source_filename = "example1-refactored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@calc_ewma.c = internal global double 0.000000e+00, align 8, !dbg !0
@get_a.a = internal global double 0.000000e+00, align 8, !dbg !10
@get_b.b = internal global double 1.000000e+00, align 8, !dbg !15
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @calc_ewma(double %0, double %1) #0 !dbg !2 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !22, metadata !DIExpression()), !dbg !23
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata double* %5, metadata !26, metadata !DIExpression()), !dbg !28
  store double 2.500000e-01, double* %5, align 8, !dbg !28
  %6 = load double, double* %3, align 8, !dbg !29
  %7 = load double, double* %4, align 8, !dbg !30
  %8 = fadd double %6, %7, !dbg !31
  %9 = fmul double 2.500000e-01, %8, !dbg !32
  %10 = load double, double* @calc_ewma.c, align 8, !dbg !33
  %11 = fmul double 7.500000e-01, %10, !dbg !34
  %12 = fadd double %9, %11, !dbg !35
  store double %12, double* @calc_ewma.c, align 8, !dbg !36
  %13 = load double, double* @calc_ewma.c, align 8, !dbg !37
  ret double %13, !dbg !38
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_a() #0 !dbg !12 {
  %1 = load double, double* @get_a.a, align 8, !dbg !39
  %2 = fadd double %1, 1.000000e+00, !dbg !39
  store double %2, double* @get_a.a, align 8, !dbg !39
  %3 = load double, double* @get_a.a, align 8, !dbg !40
  ret double %3, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_b() #0 !dbg !17 {
  %1 = load double, double* @get_b.b, align 8, !dbg !42
  %2 = load double, double* @get_b.b, align 8, !dbg !43
  %3 = fadd double %2, %1, !dbg !43
  store double %3, double* @get_b.b, align 8, !dbg !43
  %4 = load double, double* @get_b.b, align 8, !dbg !44
  ret double %4, !dbg !45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ewma_main() #0 !dbg !46 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata double* %1, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata double* %2, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata double* %3, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %4, metadata !56, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %4, align 4, !dbg !58
  br label %5, !dbg !59

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %4, align 4, !dbg !60
  %7 = icmp slt i32 %6, 10, !dbg !62
  br i1 %7, label %8, label %19, !dbg !63

8:                                                ; preds = %5
  %9 = call double @get_a(), !dbg !64
  store double %9, double* %1, align 8, !dbg !66
  %10 = call double @get_b(), !dbg !67
  store double %10, double* %2, align 8, !dbg !68
  %11 = load double, double* %1, align 8, !dbg !69
  %12 = load double, double* %2, align 8, !dbg !70
  %13 = call double @calc_ewma(double %11, double %12), !dbg !71
  store double %13, double* %3, align 8, !dbg !72
  %14 = load double, double* %3, align 8, !dbg !73
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %14), !dbg !74
  br label %16, !dbg !75

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4, !dbg !76
  %18 = add nsw i32 %17, 1, !dbg !76
  store i32 %18, i32* %4, align 4, !dbg !76
  br label %5, !dbg !77, !llvm.loop !78

19:                                               ; preds = %5
  ret i32 0, !dbg !80
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !81 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !87, metadata !DIExpression()), !dbg !88
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !89, metadata !DIExpression()), !dbg !90
  %6 = call i32 @ewma_main(), !dbg !91
  ret i32 %6, !dbg !92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 25, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "calc_ewma", scope: !3, file: !3, line: 23, type: !4, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!3 = !DIFile(filename: "example1-refactored.c", directory: "/home/mlevatich/m/group/projects/GAPS/mlevatich/ect/examples/example1/c")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !6}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, globals: !9, splitDebugInlining: false, nameTableKind: None)
!8 = !{}
!9 = !{!0, !10, !15}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "a", scope: !12, file: !3, line: 34, type: !6, isLocal: true, isDefinition: true)
!12 = distinct !DISubprogram(name: "get_a", scope: !3, file: !3, line: 31, type: !13, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!13 = !DISubroutineType(types: !14)
!14 = !{!6}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "b", scope: !17, file: !3, line: 42, type: !6, isLocal: true, isDefinition: true)
!17 = distinct !DISubprogram(name: "get_b", scope: !3, file: !3, line: 40, type: !13, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 10.0.0-4ubuntu1 "}
!22 = !DILocalVariable(name: "a", arg: 1, scope: !2, file: !3, line: 23, type: !6)
!23 = !DILocation(line: 23, column: 25, scope: !2)
!24 = !DILocalVariable(name: "b", arg: 2, scope: !2, file: !3, line: 23, type: !6)
!25 = !DILocation(line: 23, column: 35, scope: !2)
!26 = !DILocalVariable(name: "alpha", scope: !2, file: !3, line: 24, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!28 = !DILocation(line: 24, column: 17, scope: !2)
!29 = !DILocation(line: 26, column: 16, scope: !2)
!30 = !DILocation(line: 26, column: 20, scope: !2)
!31 = !DILocation(line: 26, column: 18, scope: !2)
!32 = !DILocation(line: 26, column: 13, scope: !2)
!33 = !DILocation(line: 26, column: 39, scope: !2)
!34 = !DILocation(line: 26, column: 37, scope: !2)
!35 = !DILocation(line: 26, column: 23, scope: !2)
!36 = !DILocation(line: 26, column: 5, scope: !2)
!37 = !DILocation(line: 27, column: 10, scope: !2)
!38 = !DILocation(line: 27, column: 3, scope: !2)
!39 = !DILocation(line: 36, column: 5, scope: !12)
!40 = !DILocation(line: 37, column: 10, scope: !12)
!41 = !DILocation(line: 37, column: 3, scope: !12)
!42 = !DILocation(line: 44, column: 8, scope: !17)
!43 = !DILocation(line: 44, column: 5, scope: !17)
!44 = !DILocation(line: 45, column: 10, scope: !17)
!45 = !DILocation(line: 45, column: 3, scope: !17)
!46 = distinct !DISubprogram(name: "ewma_main", scope: !3, file: !3, line: 48, type: !47, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DILocalVariable(name: "x", scope: !46, file: !3, line: 49, type: !6)
!51 = !DILocation(line: 49, column: 10, scope: !46)
!52 = !DILocalVariable(name: "y", scope: !46, file: !3, line: 50, type: !6)
!53 = !DILocation(line: 50, column: 10, scope: !46)
!54 = !DILocalVariable(name: "ewma", scope: !46, file: !3, line: 52, type: !6)
!55 = !DILocation(line: 52, column: 10, scope: !46)
!56 = !DILocalVariable(name: "i", scope: !57, file: !3, line: 54, type: !49)
!57 = distinct !DILexicalBlock(scope: !46, file: !3, line: 54, column: 3)
!58 = !DILocation(line: 54, column: 12, scope: !57)
!59 = !DILocation(line: 54, column: 8, scope: !57)
!60 = !DILocation(line: 54, column: 17, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !3, line: 54, column: 3)
!62 = !DILocation(line: 54, column: 19, scope: !61)
!63 = !DILocation(line: 54, column: 3, scope: !57)
!64 = !DILocation(line: 55, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !3, line: 54, column: 30)
!66 = !DILocation(line: 55, column: 7, scope: !65)
!67 = !DILocation(line: 56, column: 9, scope: !65)
!68 = !DILocation(line: 56, column: 7, scope: !65)
!69 = !DILocation(line: 57, column: 22, scope: !65)
!70 = !DILocation(line: 57, column: 24, scope: !65)
!71 = !DILocation(line: 57, column: 12, scope: !65)
!72 = !DILocation(line: 57, column: 10, scope: !65)
!73 = !DILocation(line: 58, column: 20, scope: !65)
!74 = !DILocation(line: 58, column: 5, scope: !65)
!75 = !DILocation(line: 59, column: 3, scope: !65)
!76 = !DILocation(line: 54, column: 26, scope: !61)
!77 = !DILocation(line: 54, column: 3, scope: !61)
!78 = distinct !{!78, !63, !79}
!79 = !DILocation(line: 59, column: 3, scope: !57)
!80 = !DILocation(line: 60, column: 3, scope: !46)
!81 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 63, type: !82, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!82 = !DISubroutineType(types: !83)
!83 = !{!49, !49, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!87 = !DILocalVariable(name: "argc", arg: 1, scope: !81, file: !3, line: 63, type: !49)
!88 = !DILocation(line: 63, column: 14, scope: !81)
!89 = !DILocalVariable(name: "argv", arg: 2, scope: !81, file: !3, line: 63, type: !84)
!90 = !DILocation(line: 63, column: 27, scope: !81)
!91 = !DILocation(line: 64, column: 10, scope: !81)
!92 = !DILocation(line: 64, column: 3, scope: !81)
