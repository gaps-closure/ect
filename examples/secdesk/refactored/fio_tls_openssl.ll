; ModuleID = 'fio_tls_openssl.c'
source_filename = "fio_tls_openssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !0
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !6
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !14

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !21 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !29, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !34, metadata !DIExpression()), !dbg !51
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !52
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !52
  call void @llvm.va_start(i8* %7), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %5, metadata !53, metadata !DIExpression()), !dbg !54
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !55
  %9 = load i8*, i8** %2, align 8, !dbg !56
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !57
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !58
  store i32 %11, i32* %5, align 4, !dbg !54
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !59
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !59
  call void @llvm.va_end(i8* %13), !dbg !59
  %14 = load i32, i32* %5, align 4, !dbg !60
  %15 = icmp sle i32 %14, 0, !dbg !62
  br i1 %15, label %19, label %16, !dbg !63

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !64
  %18 = icmp sge i32 %17, 2046, !dbg !65
  br i1 %18, label %19, label %29, !dbg !66

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !67
  %21 = icmp sge i32 %20, 2046, !dbg !70
  br i1 %21, label %22, label %25, !dbg !71

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !72
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !75
  store i32 2041, i32* %5, align 4, !dbg !76
  br label %28, !dbg !77

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !78
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !80
  br label %42, !dbg !81

28:                                               ; preds = %22
  br label %29, !dbg !82

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !83
  %31 = add nsw i32 %30, 1, !dbg !83
  store i32 %31, i32* %5, align 4, !dbg !83
  %32 = sext i32 %30 to i64, !dbg !84
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !84
  store i8 10, i8* %33, align 1, !dbg !85
  %34 = load i32, i32* %5, align 4, !dbg !86
  %35 = sext i32 %34 to i64, !dbg !87
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !87
  store i8 48, i8* %36, align 1, !dbg !88
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !89
  %38 = load i32, i32* %5, align 4, !dbg !90
  %39 = sext i32 %38 to i64, !dbg !90
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !91
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !92
  br label %42, !dbg !93

42:                                               ; preds = %29, %25
  ret void, !dbg !93
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !8, line: 433, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fio_tls_openssl.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !{}
!5 = !{!0, !6, !14}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !8, line: 2433, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !10, line: 24, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !12, line: 38, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !8, line: 2434, type: !9, isLocal: false, isDefinition: true)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 10.0.0-4ubuntu1 "}
!21 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !8, file: !8, line: 437, type: !22, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, null}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DILocalVariable(name: "format", arg: 1, scope: !21, file: !8, line: 437, type: !24)
!28 = !DILocation(line: 437, column: 28, scope: !21)
!29 = !DILocalVariable(name: "tmp___log", scope: !21, file: !8, line: 438, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 16384, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 2048)
!33 = !DILocation(line: 438, column: 8, scope: !21)
!34 = !DILocalVariable(name: "argv", scope: !21, file: !8, line: 439, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !36, line: 52, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !38, line: 32, baseType: !39)
!38 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, elements: !49)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !42)
!42 = !{!43, !45, !46, !48}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !41, file: !3, line: 439, baseType: !44, size: 32)
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !41, file: !3, line: 439, baseType: !44, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !41, file: !3, line: 439, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !41, file: !3, line: 439, baseType: !47, size: 64, offset: 128)
!49 = !{!50}
!50 = !DISubrange(count: 1)
!51 = !DILocation(line: 439, column: 11, scope: !21)
!52 = !DILocation(line: 440, column: 3, scope: !21)
!53 = !DILocalVariable(name: "len___log", scope: !21, file: !8, line: 441, type: !16)
!54 = !DILocation(line: 441, column: 7, scope: !21)
!55 = !DILocation(line: 441, column: 29, scope: !21)
!56 = !DILocation(line: 441, column: 66, scope: !21)
!57 = !DILocation(line: 441, column: 74, scope: !21)
!58 = !DILocation(line: 441, column: 19, scope: !21)
!59 = !DILocation(line: 442, column: 3, scope: !21)
!60 = !DILocation(line: 443, column: 7, scope: !61)
!61 = distinct !DILexicalBlock(scope: !21, file: !8, line: 443, column: 7)
!62 = !DILocation(line: 443, column: 17, scope: !61)
!63 = !DILocation(line: 443, column: 22, scope: !61)
!64 = !DILocation(line: 443, column: 25, scope: !61)
!65 = !DILocation(line: 443, column: 35, scope: !61)
!66 = !DILocation(line: 443, column: 7, scope: !21)
!67 = !DILocation(line: 444, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !8, line: 444, column: 9)
!69 = distinct !DILexicalBlock(scope: !61, file: !8, line: 443, column: 64)
!70 = !DILocation(line: 444, column: 19, scope: !68)
!71 = !DILocation(line: 444, column: 9, scope: !69)
!72 = !DILocation(line: 445, column: 14, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !8, line: 444, column: 48)
!74 = !DILocation(line: 445, column: 24, scope: !73)
!75 = !DILocation(line: 445, column: 7, scope: !73)
!76 = !DILocation(line: 447, column: 17, scope: !73)
!77 = !DILocation(line: 448, column: 5, scope: !73)
!78 = !DILocation(line: 449, column: 65, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !8, line: 448, column: 12)
!80 = !DILocation(line: 449, column: 7, scope: !79)
!81 = !DILocation(line: 450, column: 7, scope: !79)
!82 = !DILocation(line: 452, column: 3, scope: !69)
!83 = !DILocation(line: 453, column: 22, scope: !21)
!84 = !DILocation(line: 453, column: 3, scope: !21)
!85 = !DILocation(line: 453, column: 26, scope: !21)
!86 = !DILocation(line: 454, column: 13, scope: !21)
!87 = !DILocation(line: 454, column: 3, scope: !21)
!88 = !DILocation(line: 454, column: 24, scope: !21)
!89 = !DILocation(line: 455, column: 10, scope: !21)
!90 = !DILocation(line: 455, column: 21, scope: !21)
!91 = !DILocation(line: 455, column: 35, scope: !21)
!92 = !DILocation(line: 455, column: 3, scope: !21)
!93 = !DILocation(line: 456, column: 1, scope: !21)
