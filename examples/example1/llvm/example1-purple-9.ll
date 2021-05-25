; ModuleID = 'example1-purple-10.bc'
source_filename = "partitioned/multithreaded/purple/example1.mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calc_ewma.c = internal global double 0.000000e+00, align 8, !dbg !0
@get_b.b = internal global double 1.000000e+00, align 8, !dbg !10
@.str = private unnamed_addr constant [7 x i8] c"PURPLE\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [48 x i8] c"partitioned/multithreaded/purple/example1.mod.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (double* @get_b.b to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 36 }], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @calc_ewma(double, double) #0 !dbg !2 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !19, metadata !DIExpression()), !dbg !20
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata double* %5, metadata !23, metadata !DIExpression()), !dbg !25
  store double 2.500000e-01, double* %5, align 8, !dbg !25
  %6 = load double, double* %3, align 8, !dbg !26
  %7 = load double, double* %4, align 8, !dbg !27
  %8 = fadd double %6, %7, !dbg !28
  %9 = fmul double 2.500000e-01, %8, !dbg !29
  %10 = load double, double* @calc_ewma.c, align 8, !dbg !30
  %11 = fmul double 7.500000e-01, %10, !dbg !31
  %12 = fadd double %9, %11, !dbg !32
  store double %12, double* @calc_ewma.c, align 8, !dbg !33
  %13 = load double, double* @calc_ewma.c, align 8, !dbg !34
  ret double %13, !dbg !35
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_b() #0 !dbg !12 {
  %1 = load double, double* @get_b.b, align 8, !dbg !36
  %2 = load double, double* @get_b.b, align 8, !dbg !37
  %3 = fadd double %2, %1, !dbg !37
  store double %3, double* @get_b.b, align 8, !dbg !37
  %4 = load double, double* @get_b.b, align 8, !dbg !38
  ret double %4, !dbg !39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ewma_main() #0 !dbg !40 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata double* %1, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata double* %2, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata double* %3, metadata !48, metadata !DIExpression()), !dbg !49
  %5 = bitcast double* %3 to i8*, !dbg !50
  call void @llvm.var.annotation(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 50), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %4, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %4, align 4, !dbg !53
  br label %6, !dbg !54

6:                                                ; preds = %17, %0
  %7 = load i32, i32* %4, align 4, !dbg !55
  %8 = icmp slt i32 %7, 10, !dbg !57
  br i1 %8, label %9, label %20, !dbg !58

9:                                                ; preds = %6
  %10 = call double (...) @_rpc_get_a(), !dbg !59
  store double %10, double* %1, align 8, !dbg !61
  %11 = call double @get_b(), !dbg !62
  store double %11, double* %2, align 8, !dbg !63
  %12 = load double, double* %1, align 8, !dbg !64
  %13 = load double, double* %2, align 8, !dbg !65
  %14 = call double @calc_ewma(double %12, double %13), !dbg !66
  store double %14, double* %3, align 8, !dbg !67
  %15 = load double, double* %3, align 8, !dbg !68
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %15), !dbg !69
  br label %17, !dbg !70

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4, !dbg !71
  %19 = add nsw i32 %18, 1, !dbg !71
  store i32 %19, i32* %4, align 4, !dbg !71
  br label %6, !dbg !72, !llvm.loop !73

20:                                               ; preds = %6
  ret i32 0, !dbg !75
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

declare dso_local double @_rpc_get_a(...) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 !dbg !76 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !82, metadata !DIExpression()), !dbg !83
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !84, metadata !DIExpression()), !dbg !85
  call void (...) @_master_rpc_init(), !dbg !86
  %6 = call i32 @ewma_main(), !dbg !87
  ret i32 %6, !dbg !88
}

declare dso_local void @_master_rpc_init(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 26, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "calc_ewma", scope: !3, file: !3, line: 24, type: !4, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!3 = !DIFile(filename: "partitioned/multithreaded/purple/example1.mod.c", directory: "/home/rkrishnan/gaps/build/apps/examples/example1")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !6}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git d24d5c8e308e689dcd83cbafd2e8bd32aa845a15)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, globals: !9, splitDebugInlining: false, nameTableKind: None)
!8 = !{}
!9 = !{!0, !10}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "b", scope: !12, file: !3, line: 36, type: !6, isLocal: true, isDefinition: true)
!12 = distinct !DISubprogram(name: "get_b", scope: !3, file: !3, line: 32, type: !13, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!13 = !DISubroutineType(types: !14)
!14 = !{!6}
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git d24d5c8e308e689dcd83cbafd2e8bd32aa845a15)"}
!19 = !DILocalVariable(name: "a", arg: 1, scope: !2, file: !3, line: 24, type: !6)
!20 = !DILocation(line: 24, column: 25, scope: !2)
!21 = !DILocalVariable(name: "b", arg: 2, scope: !2, file: !3, line: 24, type: !6)
!22 = !DILocation(line: 24, column: 35, scope: !2)
!23 = !DILocalVariable(name: "alpha", scope: !2, file: !3, line: 25, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!25 = !DILocation(line: 25, column: 17, scope: !2)
!26 = !DILocation(line: 27, column: 16, scope: !2)
!27 = !DILocation(line: 27, column: 20, scope: !2)
!28 = !DILocation(line: 27, column: 18, scope: !2)
!29 = !DILocation(line: 27, column: 13, scope: !2)
!30 = !DILocation(line: 27, column: 39, scope: !2)
!31 = !DILocation(line: 27, column: 37, scope: !2)
!32 = !DILocation(line: 27, column: 23, scope: !2)
!33 = !DILocation(line: 27, column: 5, scope: !2)
!34 = !DILocation(line: 28, column: 10, scope: !2)
!35 = !DILocation(line: 28, column: 3, scope: !2)
!36 = !DILocation(line: 40, column: 8, scope: !12)
!37 = !DILocation(line: 40, column: 5, scope: !12)
!38 = !DILocation(line: 41, column: 10, scope: !12)
!39 = !DILocation(line: 41, column: 3, scope: !12)
!40 = distinct !DISubprogram(name: "ewma_main", scope: !3, file: !3, line: 44, type: !41, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!41 = !DISubroutineType(types: !42)
!42 = !{!43}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "x", scope: !40, file: !3, line: 45, type: !6)
!45 = !DILocation(line: 45, column: 10, scope: !40)
!46 = !DILocalVariable(name: "y", scope: !40, file: !3, line: 46, type: !6)
!47 = !DILocation(line: 46, column: 10, scope: !40)
!48 = !DILocalVariable(name: "ewma", scope: !40, file: !3, line: 50, type: !6)
!49 = !DILocation(line: 50, column: 10, scope: !40)
!50 = !DILocation(line: 50, column: 3, scope: !40)
!51 = !DILocalVariable(name: "i", scope: !52, file: !3, line: 54, type: !43)
!52 = distinct !DILexicalBlock(scope: !40, file: !3, line: 54, column: 3)
!53 = !DILocation(line: 54, column: 12, scope: !52)
!54 = !DILocation(line: 54, column: 8, scope: !52)
!55 = !DILocation(line: 54, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !3, line: 54, column: 3)
!57 = !DILocation(line: 54, column: 19, scope: !56)
!58 = !DILocation(line: 54, column: 3, scope: !52)
!59 = !DILocation(line: 55, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !3, line: 54, column: 30)
!61 = !DILocation(line: 55, column: 7, scope: !60)
!62 = !DILocation(line: 56, column: 9, scope: !60)
!63 = !DILocation(line: 56, column: 7, scope: !60)
!64 = !DILocation(line: 57, column: 22, scope: !60)
!65 = !DILocation(line: 57, column: 24, scope: !60)
!66 = !DILocation(line: 57, column: 12, scope: !60)
!67 = !DILocation(line: 57, column: 10, scope: !60)
!68 = !DILocation(line: 58, column: 20, scope: !60)
!69 = !DILocation(line: 58, column: 5, scope: !60)
!70 = !DILocation(line: 59, column: 3, scope: !60)
!71 = !DILocation(line: 54, column: 26, scope: !56)
!72 = !DILocation(line: 54, column: 3, scope: !56)
!73 = distinct !{!73, !58, !74}
!74 = !DILocation(line: 59, column: 3, scope: !52)
!75 = !DILocation(line: 60, column: 3, scope: !40)
!76 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 63, type: !77, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !8)
!77 = !DISubroutineType(types: !78)
!78 = !{!43, !43, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DILocalVariable(name: "argc", arg: 1, scope: !76, file: !3, line: 63, type: !43)
!83 = !DILocation(line: 63, column: 14, scope: !76)
!84 = !DILocalVariable(name: "argv", arg: 2, scope: !76, file: !3, line: 63, type: !79)
!85 = !DILocation(line: 63, column: 27, scope: !76)
!86 = !DILocation(line: 64, column: 2, scope: !76)
!87 = !DILocation(line: 65, column: 10, scope: !76)
!88 = !DILocation(line: 65, column: 3, scope: !76)
