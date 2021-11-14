; ModuleID = 'imageproc.c'
source_filename = "imageproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@savedBox = dso_local global [4 x i64] zeroinitializer, align 16, !dbg !0
@savedName = common dso_local global [32 x i8] zeroinitializer, align 16, !dbg !6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_imageprocessor() #0 !dbg !20 {
  ret i32 0, !dbg !24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_imageprocessor() #0 !dbg !25 {
  ret i32 0, !dbg !26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_recognizer() #0 !dbg !27 {
  ret i32 0, !dbg !28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_recognizer() #0 !dbg !29 {
  ret i32 0, !dbg !30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @overlay(i8* %0, i8* %1, i32 %2) #0 !dbg !31 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !39, metadata !DIExpression()), !dbg !40
  ret i32 1, !dbg !41
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_features(i8* %0, double* dereferenceable(1024) %1) #0 !dbg !42 {
  %3 = alloca i8*, align 8
  %4 = alloca double*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !48
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !49, metadata !DIExpression()), !dbg !50
  %5 = load double*, double** %4, align 8, !dbg !51
  %6 = bitcast double* %5 to i8*, !dbg !52
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 1024, i1 false), !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recognize(double* dereferenceable(1024) %0) #0 !dbg !54 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %3, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 666, i32* %3, align 4, !dbg !60
  %4 = load double*, double** %2, align 8, !dbg !61
  %5 = bitcast double* %4 to i8*, !dbg !61
  %6 = load double*, double** %2, align 8, !dbg !63
  %7 = bitcast double* %6 to i8*, !dbg !63
  %8 = call i32 @memcmp(i8* %5, i8* %7, i64 1024) #4, !dbg !64
  %9 = icmp eq i32 %8, 0, !dbg !65
  br i1 %9, label %10, label %11, !dbg !66

10:                                               ; preds = %1
  br label %11, !dbg !67

11:                                               ; preds = %10, %1
  %12 = load i32, i32* %3, align 4, !dbg !69
  ret i32 %12, !dbg !70
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "savedBox", scope: !2, file: !3, line: 49, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "imageproc.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "savedName", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !10)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DISubrange(count: 32)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !14)
!13 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!14 = !{!15}
!15 = !DISubrange(count: 4)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.0-4ubuntu1 "}
!20 = distinct !DISubprogram(name: "start_imageprocessor", scope: !3, file: !3, line: 58, type: !21, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DILocation(line: 67, column: 5, scope: !20)
!25 = distinct !DISubprogram(name: "stop_imageprocessor", scope: !3, file: !3, line: 71, type: !21, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DILocation(line: 73, column: 4, scope: !25)
!27 = distinct !DISubprogram(name: "start_recognizer", scope: !3, file: !3, line: 77, type: !21, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DILocation(line: 87, column: 4, scope: !27)
!29 = distinct !DISubprogram(name: "stop_recognizer", scope: !3, file: !3, line: 91, type: !21, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DILocation(line: 94, column: 4, scope: !29)
!31 = distinct !DISubprogram(name: "overlay", scope: !3, file: !3, line: 155, type: !32, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!32 = !DISubroutineType(types: !33)
!33 = !{!23, !34, !34, !23}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!35 = !DILocalVariable(name: "imageFile", arg: 1, scope: !31, file: !3, line: 155, type: !34)
!36 = !DILocation(line: 155, column: 19, scope: !31)
!37 = !DILocalVariable(name: "outFile", arg: 2, scope: !31, file: !3, line: 155, type: !34)
!38 = !DILocation(line: 155, column: 36, scope: !31)
!39 = !DILocalVariable(name: "id", arg: 3, scope: !31, file: !3, line: 155, type: !23)
!40 = !DILocation(line: 155, column: 49, scope: !31)
!41 = !DILocation(line: 208, column: 5, scope: !31)
!42 = distinct !DISubprogram(name: "get_features", scope: !3, file: !3, line: 212, type: !43, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!43 = !DISubroutineType(types: !44)
!44 = !{!23, !34, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!47 = !DILocalVariable(name: "imagefile", arg: 1, scope: !42, file: !3, line: 212, type: !34)
!48 = !DILocation(line: 212, column: 24, scope: !42)
!49 = !DILocalVariable(name: "embedding", arg: 2, scope: !42, file: !3, line: 212, type: !45)
!50 = !DILocation(line: 212, column: 42, scope: !42)
!51 = !DILocation(line: 214, column: 12, scope: !42)
!52 = !DILocation(line: 214, column: 5, scope: !42)
!53 = !DILocation(line: 283, column: 5, scope: !42)
!54 = distinct !DISubprogram(name: "recognize", scope: !3, file: !3, line: 287, type: !55, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!55 = !DISubroutineType(types: !56)
!56 = !{!23, !45}
!57 = !DILocalVariable(name: "embedding", arg: 1, scope: !54, file: !3, line: 287, type: !45)
!58 = !DILocation(line: 287, column: 22, scope: !54)
!59 = !DILocalVariable(name: "id", scope: !54, file: !3, line: 289, type: !23)
!60 = !DILocation(line: 289, column: 9, scope: !54)
!61 = !DILocation(line: 290, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !3, line: 290, column: 9)
!63 = !DILocation(line: 290, column: 26, scope: !62)
!64 = !DILocation(line: 290, column: 9, scope: !62)
!65 = !DILocation(line: 290, column: 57, scope: !62)
!66 = !DILocation(line: 290, column: 9, scope: !54)
!67 = !DILocation(line: 290, column: 64, scope: !68)
!68 = distinct !DILexicalBlock(scope: !62, file: !3, line: 290, column: 63)
!69 = !DILocation(line: 339, column: 10, scope: !54)
!70 = !DILocation(line: 339, column: 3, scope: !54)
