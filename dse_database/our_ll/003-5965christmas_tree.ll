; ModuleID = 'code/003-5965christmas_tree.c'
source_filename = "code/003-5965christmas_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ChristmasTree(i32 %height) #0 {
entry:
  %height.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %m, align 4
  store i32 %2, i32* %a, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, i32* %a, align 4
  %4 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %4, 1
  %cmp1 = icmp ne i32 %3, %sub
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* %a, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %a, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %m, align 4
  %7 = load i32, i32* %m, align 4
  %add = add nsw i32 %6, %7
  %add2 = add nsw i32 %add, 1
  store i32 %add2, i32* %b, align 4
  store i32 0, i32* %a, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %while.end
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %b, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %a, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %a, align 4
  br label %for.cond3, !llvm.loop !6

for.end:                                          ; preds = %for.cond3
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %11 = load i32, i32* %m, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %m, align 4
  br label %for.cond, !llvm.loop !7

for.end11:                                        ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @ChristmasTree(i32 4)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  call void @ChristmasTree(i32 7)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  call void @ChristmasTree(i32 11)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
