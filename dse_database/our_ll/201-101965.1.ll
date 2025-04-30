; ModuleID = 'code/201-101965.1.c'
source_filename = "code/201-101965.1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %div = alloca i32, align 4
  %test = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20, i32* %i, align 4
  store i32 0, i32* %test, align 4
  store i32 20, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, i32* %test, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end5

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %test, align 4
  store i32 2, i32* %div, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %div, align 4
  %cmp = icmp sle i32 %1, 20
  br i1 %cmp, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* %div, align 4
  %rem = srem i32 %2, %3
  %cmp3 = icmp ne i32 %rem, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body2
  store i32 0, i32* %test, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body2
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %4 = load i32, i32* %div, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %div, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, i32* %n, align 4
  %add = add nsw i32 %5, 20
  store i32 %add, i32* %n, align 4
  br label %for.cond, !llvm.loop !6

for.end5:                                         ; preds = %for.cond
  %6 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %6, 20
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %sub)
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
