; ModuleID = 'examples/example1/llvm/example1-combined-10.bc'
source_filename = "out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calc_ewma.c = internal global double 0.000000e+00, align 8, !dbg !0
@get_a.a = internal global double 0.000000e+00, align 8, !dbg !10
@.str = private unnamed_addr constant [7 x i8] c"ORANGE\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [6 x i8] c"out.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [16 x i8] c"XDLINKAGE_GET_A\00", section "llvm.metadata"
@get_b.b = internal global double 1.000000e+00, align 8, !dbg !15
@.str.3 = private unnamed_addr constant [7 x i8] c"PURPLE\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@llvm.global.annotations = appending global [3 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (double* @get_a.a to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 37 }, { i8*, i8*, i8*, i32 } { i8* bitcast (double ()* @get_a to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 32 }, { i8*, i8*, i8*, i32 } { i8* bitcast (double* @get_b.b to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 47 }], section "llvm.metadata"

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
  %5 = bitcast double* %3 to i8*, !dbg !56
  call void @llvm.var.annotation(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 59), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %4, metadata !57, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %4, align 4, !dbg !59
  br label %6, !dbg !60

6:                                                ; preds = %17, %0
  %7 = load i32, i32* %4, align 4, !dbg !61
  %8 = icmp slt i32 %7, 10, !dbg !63
  br i1 %8, label %9, label %20, !dbg !64

9:                                                ; preds = %6
  %10 = call double @get_a(), !dbg !65
  store double %10, double* %1, align 8, !dbg !67
  %11 = call double @get_b(), !dbg !68
  store double %11, double* %2, align 8, !dbg !69
  %12 = load double, double* %1, align 8, !dbg !70
  %13 = load double, double* %2, align 8, !dbg !71
  %14 = call double @calc_ewma(double %12, double %13), !dbg !72
  store double %14, double* %3, align 8, !dbg !73
  %15 = load double, double* %3, align 8, !dbg !74
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %15), !dbg !75
  br label %17, !dbg !76

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4, !dbg !77
  %19 = add nsw i32 %18, 1, !dbg !77
  store i32 %19, i32* %4, align 4, !dbg !77
  br label %6, !dbg !78, !llvm.loop !79

20:                                               ; preds = %6
  ret i32 0, !dbg !81
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !82 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !88, metadata !DIExpression()), !dbg !89
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !90, metadata !DIExpression()), !dbg !91
  %6 = call i32 @ewma_main(), !dbg !92
  ret i32 %6, !dbg !93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 25, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "calc_ewma", scope: !3, file: !3, line: 23, type: !4, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!3 = !DIFile(filename: "out.c", directory: "/home/bflin/gaps/build/apps/conflicts/test-runs/2021-08-18-13-40-21/example-1")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !6}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 (https://github.com/gaps-closure/llvm-project.git 4954dd8b02af91d5e8d4815824208b6004f667a8)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, globals: !9, splitDebugInlining: false, nameTableKind: None)
!8 = !{}
!9 = !{!0, !10, !15}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "a", scope: !12, file: !3, line: 37, type: !6, isLocal: true, isDefinition: true)
!12 = distinct !DISubprogram(name: "get_a", scope: !3, file: !3, line: 32, type: !13, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!13 = !DISubroutineType(types: !14)
!14 = !{!6}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "b", scope: !17, file: !3, line: 47, type: !6, isLocal: true, isDefinition: true)
!17 = distinct !DISubprogram(name: "get_b", scope: !3, file: !3, line: 44, type: !13, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 10.0.1 (https://github.com/gaps-closure/llvm-project.git 4954dd8b02af91d5e8d4815824208b6004f667a8)"}
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
!39 = !DILocation(line: 40, column: 5, scope: !12)
!40 = !DILocation(line: 41, column: 10, scope: !12)
!41 = !DILocation(line: 41, column: 3, scope: !12)
!42 = !DILocation(line: 50, column: 8, scope: !17)
!43 = !DILocation(line: 50, column: 5, scope: !17)
!44 = !DILocation(line: 51, column: 10, scope: !17)
!45 = !DILocation(line: 51, column: 3, scope: !17)
!46 = distinct !DISubprogram(name: "ewma_main", scope: !3, file: !3, line: 54, type: !47, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DILocalVariable(name: "x", scope: !46, file: !3, line: 55, type: !6)
!51 = !DILocation(line: 55, column: 10, scope: !46)
!52 = !DILocalVariable(name: "y", scope: !46, file: !3, line: 56, type: !6)
!53 = !DILocation(line: 56, column: 10, scope: !46)
!54 = !DILocalVariable(name: "ewma", scope: !46, file: !3, line: 59, type: !6)
!55 = !DILocation(line: 59, column: 10, scope: !46)
!56 = !DILocation(line: 59, column: 3, scope: !46)
!57 = !DILocalVariable(name: "i", scope: !58, file: !3, line: 62, type: !49)
!58 = distinct !DILexicalBlock(scope: !46, file: !3, line: 62, column: 3)
!59 = !DILocation(line: 62, column: 12, scope: !58)
!60 = !DILocation(line: 62, column: 8, scope: !58)
!61 = !DILocation(line: 62, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !3, line: 62, column: 3)
!63 = !DILocation(line: 62, column: 19, scope: !62)
!64 = !DILocation(line: 62, column: 3, scope: !58)
!65 = !DILocation(line: 63, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !3, line: 62, column: 30)
!67 = !DILocation(line: 63, column: 7, scope: !66)
!68 = !DILocation(line: 64, column: 9, scope: !66)
!69 = !DILocation(line: 64, column: 7, scope: !66)
!70 = !DILocation(line: 65, column: 22, scope: !66)
!71 = !DILocation(line: 65, column: 24, scope: !66)
!72 = !DILocation(line: 65, column: 12, scope: !66)
!73 = !DILocation(line: 65, column: 10, scope: !66)
!74 = !DILocation(line: 66, column: 20, scope: !66)
!75 = !DILocation(line: 66, column: 5, scope: !66)
!76 = !DILocation(line: 67, column: 3, scope: !66)
!77 = !DILocation(line: 62, column: 26, scope: !62)
!78 = !DILocation(line: 62, column: 3, scope: !62)
!79 = distinct !{!79, !64, !80}
!80 = !DILocation(line: 67, column: 3, scope: !58)
!81 = !DILocation(line: 68, column: 3, scope: !46)
!82 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 71, type: !83, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!83 = !DISubroutineType(types: !84)
!84 = !{!49, !49, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DILocalVariable(name: "argc", arg: 1, scope: !82, file: !3, line: 71, type: !49)
!89 = !DILocation(line: 71, column: 14, scope: !82)
!90 = !DILocalVariable(name: "argv", arg: 2, scope: !82, file: !3, line: 71, type: !85)
!91 = !DILocation(line: 71, column: 27, scope: !82)
!92 = !DILocation(line: 72, column: 10, scope: !82)
!93 = !DILocation(line: 72, column: 3, scope: !82)
