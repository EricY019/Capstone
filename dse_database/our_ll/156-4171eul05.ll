; ModuleID = 'code/156-4171eul05.c'
source_filename = "code/156-4171eul05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d_max = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 20, i32* %d_max, align 4
  store i32 1, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  store i32 1, i32* %d, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.cond
  %0 = load i32, i32* %d, align 4
  %cmp = icmp sle i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* %d, align 4
  %rem = srem i32 %1, %2
  %cmp2 = icmp ne i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %3 = load i32, i32* %d, align 4
  %cmp3 = icmp eq i32 %3, 20
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %4 = load i32, i32* %n, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret i32 0

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %5 = load i32, i32* %d, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %6 = load i32, i32* %n, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %n, align 4
  br label %for.cond
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
