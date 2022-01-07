; ModuleID = 'mdlookup.mod.c'
source_filename = "mdlookup.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@get_database.db = internal global %struct.sqlite3* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"Cannot open database: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_database() #0 {
  %1 = alloca %struct.sqlite3*, align 8
  %2 = call %struct.sqlite3* @get_database(i8* null)
  store %struct.sqlite3* %2, %struct.sqlite3** %1, align 8
  %3 = load %struct.sqlite3*, %struct.sqlite3** %1, align 8
  %4 = icmp ne %struct.sqlite3* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.sqlite3*, %struct.sqlite3** %1, align 8
  %7 = call i32 @sqlite3_close(%struct.sqlite3* %6)
  br label %8

8:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sqlite3* @get_database(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8
  %8 = icmp ne %struct.sqlite3* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8
  %11 = call i32 @sqlite3_close(%struct.sqlite3* %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @sqlite3_open(i8* %13, %struct.sqlite3** @get_database.db)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8
  %20 = call i8* @sqlite3_errmsg(%struct.sqlite3* %19)
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %22 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8
  %23 = call i32 @sqlite3_close(%struct.sqlite3* %22)
  store %struct.sqlite3* null, %struct.sqlite3** @get_database.db, align 8
  br label %24

24:                                               ; preds = %17, %12
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.sqlite3*, %struct.sqlite3** @get_database.db, align 8
  ret %struct.sqlite3* %26
}

declare dso_local i32 @sqlite3_close(%struct.sqlite3*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_database(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call %struct.sqlite3* @get_database(i8* %3)
  %5 = icmp ne %struct.sqlite3* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

declare dso_local void @perror(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup(i8*, i8*, i8*) #0 {
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
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = call %struct.sqlite3* @get_database(i8* null)
  store %struct.sqlite3* %16, %struct.sqlite3** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %17 = load %struct.sqlite3*, %struct.sqlite3** %10, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @sqlite3_prepare_v2(%struct.sqlite3* %17, i8* %18, i32 -1, %struct.sqlite3_stmt** %9, i8** null)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %3
  %23 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %24 = call i32 @sqlite3_bind_parameter_index(%struct.sqlite3_stmt* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %13, align 4
  %25 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28) #3
  %30 = trunc i64 %29 to i32
  %31 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %25, i32 %26, i8* %27, i32 %30, void (i8*)* null)
  %32 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %33 = call i32 @sqlite3_bind_parameter_index(%struct.sqlite3_stmt* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %33, i32* %13, align 4
  %34 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37) #3
  %39 = trunc i64 %38 to i32
  %40 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %34, i32 %35, i8* %36, i32 %39, void (i8*)* null)
  %41 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %42 = call i32 @sqlite3_bind_parameter_index(%struct.sqlite3_stmt* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %42, i32* %13, align 4
  %43 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strlen(i8* %46) #3
  %48 = trunc i64 %47 to i32
  %49 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %43, i32 %44, i8* %45, i32 %48, void (i8*)* null)
  br label %57

50:                                               ; preds = %3
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %11, align 8
  call void @sqlite3_free(i8* %54)
  %55 = load %struct.sqlite3*, %struct.sqlite3** %10, align 8
  %56 = call i32 @sqlite3_close(%struct.sqlite3* %55)
  store i32 -1, i32* %4, align 4
  br label %69

57:                                               ; preds = %22
  store i32 -1, i32* %14, align 4
  %58 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %59 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 100
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %64 = call i32 @sqlite3_column_int(%struct.sqlite3_stmt* %63, i32 0)
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %9, align 8
  %67 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %50
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @sqlite3_prepare_v2(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #1

declare dso_local i32 @sqlite3_bind_parameter_index(%struct.sqlite3_stmt*, i8*) #1

declare dso_local i32 @sqlite3_bind_text(%struct.sqlite3_stmt*, i32, i8*, i32, void (i8*)*) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local void @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_step(%struct.sqlite3_stmt*) #1

declare dso_local i32 @sqlite3_column_int(%struct.sqlite3_stmt*, i32) #1

declare dso_local i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #1

declare dso_local i32 @sqlite3_open(i8*, %struct.sqlite3**) #1

declare dso_local i8* @sqlite3_errmsg(%struct.sqlite3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
