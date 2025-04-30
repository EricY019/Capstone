; ModuleID = 'code/384-29437tests_generator.c'
source_filename = "code/384-29437tests_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  %call1 = call i32 @rand() #3
  %rem = srem i32 %call1, 4501
  %add = add nsw i32 %rem, 500
  store i32 %add, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0)
  %call3 = call i32 @rand() #3
  %rem4 = srem i32 %call3, 10
  %add5 = add nsw i32 %rem4, 1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %add5)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call8 = call i32 @rand() #3
  %rem9 = srem i32 %call8, 10
  %add10 = add nsw i32 %rem9, 1
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %add10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %call13 = call i32 @rand() #3
  %rem14 = srem i32 %call13, 10
  %add15 = add nsw i32 %rem14, 1
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %add15)
  store i32 1, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %5, 1
  %cmp18 = icmp slt i32 %4, %sub
  br i1 %cmp18, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond17
  %call21 = call i32 @rand() #3
  %rem22 = srem i32 %call21, 10
  %add23 = add nsw i32 %rem22, 1
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %add23)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %6 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %6, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond17, !llvm.loop !6

for.end27:                                        ; preds = %for.cond17
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %call29 = call i32 @rand() #3
  %rem30 = srem i32 %call29, 10
  %add31 = add nsw i32 %rem30, 1
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %add31)
  store i32 1, i32* %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc42, %for.end27
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %sub34 = sub nsw i32 %8, 1
  %cmp35 = icmp slt i32 %7, %sub34
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond33
  %call38 = call i32 @rand() #3
  %rem39 = srem i32 %call38, 10
  %add40 = add nsw i32 %rem39, 1
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %add40)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %9 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %9, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond33, !llvm.loop !7

for.end44:                                        ; preds = %for.cond33
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
