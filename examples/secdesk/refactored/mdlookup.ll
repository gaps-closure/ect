; ModuleID = 'mdlookup.c'
source_filename = "mdlookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.sqlite3 = type opaque
%struct.sqlite3_stmt = type opaque

@.str = private unnamed_addr constant [23 x i8] c"ERROR opening database\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"SELECT anonid FROM mdata WHERE fname = @f AND mi = @m AND lname = @l\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"@f\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"@m\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"@l\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"SQL error: %s\0A\00", align 1
@get_database.db = internal global %struct.sqlite3* null, align 8, !dbg !0
@.str.6 = private unnamed_addr constant [26 x i8] c"Cannot open database: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_database() #0 !dbg !20 {
  %1 = alloca %struct.sqlite3*, align 8
  call void @llvm.dbg.declare(metadata %struct.sqlite3** %1, metadata !23, metadata !DIExpression()), !dbg !24
  %2 = call %struct.sqlite3* @get_database(i8* null), !dbg !25
  store %struct.sqlite3* %2, %struct.sqlite3** %1, align 8, !dbg !24
  %3 = load %struct.sqlite3*, %struct.sqlite3** %1, align 8, !dbg !26
  %4 = icmp ne %struct.sqlite3* %3, null, !dbg !26
  br i1 %4, label %5, label %8, !dbg !28

5:                                                ; preds = %0
  %6 = load %struct.sqlite3*, %struct.sqlite3** %1, align 8, !dbg !29
  %7 = call i32 @sqlite3_close(%struct.sqlite3* %6), !dbg !30
  br label %8, !dbg !30

8:                                                ; preds = %5, %0
  ret void, !dbg !31
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sqlite3* @get_database(i8* %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !32, metadata !DIExpression()), !dbg !33
  %4 = load i8*, i8** %2, align 8, !dbg !34
  %5 = icmp ne i8* %4, null, !dbg !34
  br i1 %5, label %6, label %25, !dbg !36

6:                                                ; preds = %1
  %7 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8, !dbg !37
  %8 = icmp ne %struct.sqlite3* %7, null, !dbg !37
  br i1 %8, label %9, label %12, !dbg !40

9:                                                ; preds = %6
  %10 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8, !dbg !41
  %11 = call i32 @sqlite3_close(%struct.sqlite3* %10), !dbg !42
  br label %12, !dbg !42

12:                                               ; preds = %9, %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !43, metadata !DIExpression()), !dbg !45
  %13 = load i8*, i8** %2, align 8, !dbg !46
  %14 = call i32 @sqlite3_open(i8* %13, %struct.sqlite3** @get_database.db), !dbg !47
  store i32 %14, i32* %3, align 4, !dbg !45
  %15 = load i32, i32* %3, align 4, !dbg !48
  %16 = icmp ne i32 %15, 0, !dbg !50
  br i1 %16, label %17, label %24, !dbg !51

17:                                               ; preds = %12
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !52
  %19 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8, !dbg !54
  %20 = call i8* @sqlite3_errmsg(%struct.sqlite3* %19), !dbg !55
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %20), !dbg !56
  %22 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8, !dbg !57
  %23 = call i32 @sqlite3_close(%struct.sqlite3* %22), !dbg !58
  store %struct.sqlite3* null, %struct.sqlite3** @get_database.db, align 8, !dbg !59
  br label %24, !dbg !60

24:                                               ; preds = %17, %12
  br label %25, !dbg !61

25:                                               ; preds = %24, %1
  %26 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8, !dbg !62
  ret %struct.sqlite3* %26, !dbg !63
}

declare dso_local i32 @sqlite3_close(%struct.sqlite3*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_database(i8* %0) #0 !dbg !64 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !67, metadata !DIExpression()), !dbg !68
  %3 = load i8*, i8** %2, align 8, !dbg !69
  %4 = call %struct.sqlite3* @get_database(i8* %3), !dbg !71
  %5 = icmp ne %struct.sqlite3* %4, null, !dbg !71
  br i1 %5, label %7, label %6, !dbg !72

6:                                                ; preds = %1
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)), !dbg !73
  br label %7, !dbg !73

7:                                                ; preds = %6, %1
  ret void, !dbg !74
}

declare dso_local void @perror(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup(i8* %0, i8* %1, i8* %2) #0 !dbg !75 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sqlite3_stmt*, align 8
  %10 = alloca %struct.sqlite3*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !78, metadata !DIExpression()), !dbg !79
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !80, metadata !DIExpression()), !dbg !81
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %8, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.sqlite3_stmt** %9, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sqlite3** %10, metadata !91, metadata !DIExpression()), !dbg !92
  %16 = call %struct.sqlite3* @get_database(i8* null), !dbg !93
  store %struct.sqlite3* %16, %struct.sqlite3** %10, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata i8** %11, metadata !94, metadata !DIExpression()), !dbg !96
  store i8* null, i8** %11, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata i8** %12, metadata !97, metadata !DIExpression()), !dbg !98
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8, !dbg !98
  %17 = load %struct.sqlite3*, %struct.sqlite3** %10, align 8, !dbg !99
  %18 = load i8*, i8** %12, align 8, !dbg !100
  %19 = call i32 @sqlite3_prepare_v2(%struct.sqlite3* %17, i8* %18, i32 -1, %struct.sqlite3_stmt** %9, i8** null), !dbg !101
  store i32 %19, i32* %8, align 4, !dbg !102
  %20 = load i32, i32* %8, align 4, !dbg !103
  %21 = icmp eq i32 %20, 0, !dbg !105
  br i1 %21, label %22, label %50, !dbg !106

22:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %13, metadata !107, metadata !DIExpression()), !dbg !109
  %23 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !110
  %24 = call i32 @sqlite3_bind_parameter_index(%struct.sqlite3_stmt* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !111
  store i32 %24, i32* %13, align 4, !dbg !112
  %25 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !113
  %26 = load i32, i32* %13, align 4, !dbg !114
  %27 = load i8*, i8** %5, align 8, !dbg !115
  %28 = load i8*, i8** %5, align 8, !dbg !116
  %29 = call i64 @strlen(i8* %28) #4, !dbg !117
  %30 = trunc i64 %29 to i32, !dbg !117
  %31 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %25, i32 %26, i8* %27, i32 %30, void (i8*)* null), !dbg !118
  %32 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !119
  %33 = call i32 @sqlite3_bind_parameter_index(%struct.sqlite3_stmt* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !120
  store i32 %33, i32* %13, align 4, !dbg !121
  %34 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !122
  %35 = load i32, i32* %13, align 4, !dbg !123
  %36 = load i8*, i8** %6, align 8, !dbg !124
  %37 = load i8*, i8** %6, align 8, !dbg !125
  %38 = call i64 @strlen(i8* %37) #4, !dbg !126
  %39 = trunc i64 %38 to i32, !dbg !126
  %40 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %34, i32 %35, i8* %36, i32 %39, void (i8*)* null), !dbg !127
  %41 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !128
  %42 = call i32 @sqlite3_bind_parameter_index(%struct.sqlite3_stmt* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)), !dbg !129
  store i32 %42, i32* %13, align 4, !dbg !130
  %43 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !131
  %44 = load i32, i32* %13, align 4, !dbg !132
  %45 = load i8*, i8** %7, align 8, !dbg !133
  %46 = load i8*, i8** %7, align 8, !dbg !134
  %47 = call i64 @strlen(i8* %46) #4, !dbg !135
  %48 = trunc i64 %47 to i32, !dbg !135
  %49 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %43, i32 %44, i8* %45, i32 %48, void (i8*)* null), !dbg !136
  br label %57, !dbg !137

50:                                               ; preds = %3
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !138
  %52 = load i8*, i8** %11, align 8, !dbg !140
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %52), !dbg !141
  %54 = load i8*, i8** %11, align 8, !dbg !142
  call void @sqlite3_free(i8* %54), !dbg !143
  %55 = load %struct.sqlite3*, %struct.sqlite3** %10, align 8, !dbg !144
  %56 = call i32 @sqlite3_close(%struct.sqlite3* %55), !dbg !145
  store i32 -1, i32* %4, align 4, !dbg !146
  br label %69, !dbg !146

57:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %14, metadata !147, metadata !DIExpression()), !dbg !148
  store i32 -1, i32* %14, align 4, !dbg !148
  call void @llvm.dbg.declare(metadata i32* %15, metadata !149, metadata !DIExpression()), !dbg !150
  %58 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !151
  %59 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %58), !dbg !152
  store i32 %59, i32* %15, align 4, !dbg !150
  %60 = load i32, i32* %15, align 4, !dbg !153
  %61 = icmp eq i32 %60, 100, !dbg !155
  br i1 %61, label %62, label %65, !dbg !156

62:                                               ; preds = %57
  %63 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !157
  %64 = call i32 @sqlite3_column_int(%struct.sqlite3_stmt* %63, i32 0), !dbg !158
  store i32 %64, i32* %14, align 4, !dbg !159
  br label %65, !dbg !160

65:                                               ; preds = %62, %57
  %66 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8, !dbg !161
  %67 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %66), !dbg !162
  %68 = load i32, i32* %14, align 4, !dbg !163
  store i32 %68, i32* %4, align 4, !dbg !164
  br label %69, !dbg !164

69:                                               ; preds = %65, %50
  %70 = load i32, i32* %4, align 4, !dbg !165
  ret i32 %70, !dbg !165
}

declare dso_local i32 @sqlite3_prepare_v2(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #2

declare dso_local i32 @sqlite3_bind_parameter_index(%struct.sqlite3_stmt*, i8*) #2

declare dso_local i32 @sqlite3_bind_text(%struct.sqlite3_stmt*, i32, i8*, i32, void (i8*)*) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local void @sqlite3_free(i8*) #2

declare dso_local i32 @sqlite3_step(%struct.sqlite3_stmt*) #2

declare dso_local i32 @sqlite3_column_int(%struct.sqlite3_stmt*, i32) #2

declare dso_local i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #2

declare dso_local i32 @sqlite3_open(i8*, %struct.sqlite3**) #2

declare dso_local i8* @sqlite3_errmsg(%struct.sqlite3*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "db", scope: !2, file: !3, line: 4, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "get_database", scope: !3, file: !3, line: 3, type: !4, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !14)
!3 = !DIFile(filename: "mdlookup.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !8, line: 249, baseType: !9)
!8 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "")
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !8, line: 249, flags: DIFlagFwdDecl)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, globals: !15, splitDebugInlining: false, nameTableKind: None)
!14 = !{}
!15 = !{!0}
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.0-4ubuntu1 "}
!20 = distinct !DISubprogram(name: "stop_database", scope: !3, file: !3, line: 17, type: !21, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !14)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !DILocalVariable(name: "db", scope: !20, file: !3, line: 18, type: !6)
!24 = !DILocation(line: 18, column: 12, scope: !20)
!25 = !DILocation(line: 18, column: 17, scope: !20)
!26 = !DILocation(line: 19, column: 7, scope: !27)
!27 = distinct !DILexicalBlock(scope: !20, file: !3, line: 19, column: 7)
!28 = !DILocation(line: 19, column: 7, scope: !20)
!29 = !DILocation(line: 19, column: 25, scope: !27)
!30 = !DILocation(line: 19, column: 11, scope: !27)
!31 = !DILocation(line: 20, column: 1, scope: !20)
!32 = !DILocalVariable(name: "dbfile", arg: 1, scope: !2, file: !3, line: 3, type: !10)
!33 = !DILocation(line: 3, column: 42, scope: !2)
!34 = !DILocation(line: 5, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !2, file: !3, line: 5, column: 7)
!36 = !DILocation(line: 5, column: 7, scope: !2)
!37 = !DILocation(line: 6, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !3, line: 6, column: 9)
!39 = distinct !DILexicalBlock(scope: !35, file: !3, line: 5, column: 15)
!40 = !DILocation(line: 6, column: 9, scope: !39)
!41 = !DILocation(line: 6, column: 27, scope: !38)
!42 = !DILocation(line: 6, column: 13, scope: !38)
!43 = !DILocalVariable(name: "rc", scope: !39, file: !3, line: 7, type: !44)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DILocation(line: 7, column: 9, scope: !39)
!46 = !DILocation(line: 7, column: 27, scope: !39)
!47 = !DILocation(line: 7, column: 14, scope: !39)
!48 = !DILocation(line: 8, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !39, file: !3, line: 8, column: 9)
!50 = !DILocation(line: 8, column: 12, scope: !49)
!51 = !DILocation(line: 8, column: 9, scope: !39)
!52 = !DILocation(line: 9, column: 15, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !3, line: 8, column: 26)
!54 = !DILocation(line: 9, column: 68, scope: !53)
!55 = !DILocation(line: 9, column: 53, scope: !53)
!56 = !DILocation(line: 9, column: 7, scope: !53)
!57 = !DILocation(line: 10, column: 21, scope: !53)
!58 = !DILocation(line: 10, column: 7, scope: !53)
!59 = !DILocation(line: 11, column: 10, scope: !53)
!60 = !DILocation(line: 12, column: 5, scope: !53)
!61 = !DILocation(line: 13, column: 3, scope: !39)
!62 = !DILocation(line: 14, column: 10, scope: !2)
!63 = !DILocation(line: 14, column: 3, scope: !2)
!64 = distinct !DISubprogram(name: "start_database", scope: !3, file: !3, line: 22, type: !65, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !14)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !10}
!67 = !DILocalVariable(name: "dbfile", arg: 1, scope: !64, file: !3, line: 22, type: !10)
!68 = !DILocation(line: 22, column: 33, scope: !64)
!69 = !DILocation(line: 23, column: 21, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !3, line: 23, column: 7)
!71 = !DILocation(line: 23, column: 8, scope: !70)
!72 = !DILocation(line: 23, column: 7, scope: !64)
!73 = !DILocation(line: 23, column: 30, scope: !70)
!74 = !DILocation(line: 24, column: 1, scope: !64)
!75 = distinct !DISubprogram(name: "lookup", scope: !3, file: !3, line: 26, type: !76, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !14)
!76 = !DISubroutineType(types: !77)
!77 = !{!44, !10, !10, !10}
!78 = !DILocalVariable(name: "fname", arg: 1, scope: !75, file: !3, line: 26, type: !10)
!79 = !DILocation(line: 26, column: 24, scope: !75)
!80 = !DILocalVariable(name: "mi", arg: 2, scope: !75, file: !3, line: 26, type: !10)
!81 = !DILocation(line: 26, column: 43, scope: !75)
!82 = !DILocalVariable(name: "lname", arg: 3, scope: !75, file: !3, line: 26, type: !10)
!83 = !DILocation(line: 26, column: 59, scope: !75)
!84 = !DILocalVariable(name: "rc", scope: !75, file: !3, line: 27, type: !44)
!85 = !DILocation(line: 27, column: 7, scope: !75)
!86 = !DILocalVariable(name: "res", scope: !75, file: !3, line: 28, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !8, line: 3703, baseType: !89)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !8, line: 3703, flags: DIFlagFwdDecl)
!90 = !DILocation(line: 28, column: 17, scope: !75)
!91 = !DILocalVariable(name: "db", scope: !75, file: !3, line: 29, type: !6)
!92 = !DILocation(line: 29, column: 12, scope: !75)
!93 = !DILocation(line: 29, column: 17, scope: !75)
!94 = !DILocalVariable(name: "err_msg", scope: !75, file: !3, line: 30, type: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!96 = !DILocation(line: 30, column: 9, scope: !75)
!97 = !DILocalVariable(name: "sql", scope: !75, file: !3, line: 31, type: !95)
!98 = !DILocation(line: 31, column: 9, scope: !75)
!99 = !DILocation(line: 33, column: 27, scope: !75)
!100 = !DILocation(line: 33, column: 31, scope: !75)
!101 = !DILocation(line: 33, column: 8, scope: !75)
!102 = !DILocation(line: 33, column: 6, scope: !75)
!103 = !DILocation(line: 34, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !75, file: !3, line: 34, column: 7)
!105 = !DILocation(line: 34, column: 10, scope: !104)
!106 = !DILocation(line: 34, column: 7, scope: !75)
!107 = !DILocalVariable(name: "idx", scope: !108, file: !3, line: 35, type: !44)
!108 = distinct !DILexicalBlock(scope: !104, file: !3, line: 34, column: 25)
!109 = !DILocation(line: 35, column: 9, scope: !108)
!110 = !DILocation(line: 36, column: 40, scope: !108)
!111 = !DILocation(line: 36, column: 11, scope: !108)
!112 = !DILocation(line: 36, column: 9, scope: !108)
!113 = !DILocation(line: 37, column: 23, scope: !108)
!114 = !DILocation(line: 37, column: 27, scope: !108)
!115 = !DILocation(line: 37, column: 31, scope: !108)
!116 = !DILocation(line: 37, column: 44, scope: !108)
!117 = !DILocation(line: 37, column: 37, scope: !108)
!118 = !DILocation(line: 37, column: 5, scope: !108)
!119 = !DILocation(line: 38, column: 40, scope: !108)
!120 = !DILocation(line: 38, column: 11, scope: !108)
!121 = !DILocation(line: 38, column: 9, scope: !108)
!122 = !DILocation(line: 39, column: 23, scope: !108)
!123 = !DILocation(line: 39, column: 27, scope: !108)
!124 = !DILocation(line: 39, column: 31, scope: !108)
!125 = !DILocation(line: 39, column: 41, scope: !108)
!126 = !DILocation(line: 39, column: 34, scope: !108)
!127 = !DILocation(line: 39, column: 5, scope: !108)
!128 = !DILocation(line: 40, column: 40, scope: !108)
!129 = !DILocation(line: 40, column: 11, scope: !108)
!130 = !DILocation(line: 40, column: 9, scope: !108)
!131 = !DILocation(line: 41, column: 23, scope: !108)
!132 = !DILocation(line: 41, column: 27, scope: !108)
!133 = !DILocation(line: 41, column: 31, scope: !108)
!134 = !DILocation(line: 41, column: 44, scope: !108)
!135 = !DILocation(line: 41, column: 37, scope: !108)
!136 = !DILocation(line: 41, column: 5, scope: !108)
!137 = !DILocation(line: 42, column: 3, scope: !108)
!138 = !DILocation(line: 43, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !104, file: !3, line: 42, column: 10)
!140 = !DILocation(line: 43, column: 40, scope: !139)
!141 = !DILocation(line: 43, column: 5, scope: !139)
!142 = !DILocation(line: 44, column: 18, scope: !139)
!143 = !DILocation(line: 44, column: 5, scope: !139)
!144 = !DILocation(line: 45, column: 19, scope: !139)
!145 = !DILocation(line: 45, column: 5, scope: !139)
!146 = !DILocation(line: 46, column: 5, scope: !139)
!147 = !DILocalVariable(name: "ret", scope: !75, file: !3, line: 49, type: !44)
!148 = !DILocation(line: 49, column: 7, scope: !75)
!149 = !DILocalVariable(name: "step", scope: !75, file: !3, line: 50, type: !44)
!150 = !DILocation(line: 50, column: 7, scope: !75)
!151 = !DILocation(line: 50, column: 27, scope: !75)
!152 = !DILocation(line: 50, column: 14, scope: !75)
!153 = !DILocation(line: 51, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !75, file: !3, line: 51, column: 7)
!155 = !DILocation(line: 51, column: 12, scope: !154)
!156 = !DILocation(line: 51, column: 7, scope: !75)
!157 = !DILocation(line: 51, column: 52, scope: !154)
!158 = !DILocation(line: 51, column: 33, scope: !154)
!159 = !DILocation(line: 51, column: 31, scope: !154)
!160 = !DILocation(line: 51, column: 27, scope: !154)
!161 = !DILocation(line: 52, column: 20, scope: !75)
!162 = !DILocation(line: 52, column: 3, scope: !75)
!163 = !DILocation(line: 53, column: 10, scope: !75)
!164 = !DILocation(line: 53, column: 3, scope: !75)
!165 = !DILocation(line: 54, column: 1, scope: !75)
