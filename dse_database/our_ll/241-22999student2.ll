; ModuleID = 'code/241-22999student2.c'
source_filename = "code/241-22999student2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Student = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"John\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Doe\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"The id for s = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"The first name for s = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"The last name for s = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %s = alloca %struct.Student, align 8
  %sptr = alloca %struct.Student*, align 8
  store %struct.Student* %s, %struct.Student** %sptr, align 8
  %id = getelementptr inbounds %struct.Student, %struct.Student* %s, i32 0, i32 0
  store i32 100, i32* %id, align 8
  %firstName = getelementptr inbounds %struct.Student, %struct.Student* %s, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %firstName, align 8
  %lastName = getelementptr inbounds %struct.Student, %struct.Student* %s, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %lastName, align 8
  %0 = load %struct.Student*, %struct.Student** %sptr, align 8
  %id1 = getelementptr inbounds %struct.Student, %struct.Student* %0, i32 0, i32 0
  %1 = load i32, i32* %id1, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %1)
  %2 = load %struct.Student*, %struct.Student** %sptr, align 8
  %firstName2 = getelementptr inbounds %struct.Student, %struct.Student* %2, i32 0, i32 1
  %3 = load i8*, i8** %firstName2, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %3)
  %4 = load %struct.Student*, %struct.Student** %sptr, align 8
  %lastName4 = getelementptr inbounds %struct.Student, %struct.Student* %4, i32 0, i32 2
  %5 = load i8*, i8** %lastName4, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %5)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
