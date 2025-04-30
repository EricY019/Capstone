; ModuleID = 'code/367-1062Test_print_stack.c'
source_filename = "code/367-1062Test_print_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Callme\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" age %d \09 count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" new age %d \09 count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A variable i =%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"age %d\00", align 1
@nAge = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Call name nAge %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"hello \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callMe() #0 {
entry:
  %count = alloca i32, align 4
  %age = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %count, align 4
  store i32 0, i32* %age, align 4
  %0 = load i32, i32* %age, align 4
  %1 = load i32, i32* %count, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %0, i32 %1)
  store i32 100, i32* %count, align 4
  store i32 25, i32* %age, align 4
  %2 = load i32, i32* %age, align 4
  %3 = load i32, i32* %count, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %2, i32 %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %age, align 4
  %7 = load i32, i32* %age, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %7)
  %8 = load i32, i32* %age, align 4
  store i32 %8, i32* @nAge, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callName() #0 {
entry:
  %0 = load i32, i32* @nAge, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  call void @callMe()
  call void @callName()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
