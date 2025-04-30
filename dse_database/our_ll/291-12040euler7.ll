; ModuleID = 'code/291-12040euler7.c'
source_filename = "code/291-12040euler7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"[*] Locating the %dst prime...\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[+] Success!\0AThe %dst prime is: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_if_prime(i32 %c, i32 %i) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 2, i32* %c.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %c.addr, align 4
  %rem = srem i32 %2, %3
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %c.addr, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %c.addr, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, i32* %c.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nth = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 3, i32* %i, align 4
  store i32 10001, i32* %nth, align 4
  %0 = load i32, i32* %nth, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %0)
  store i32 2, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end6, %entry
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %nth, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %count, align 4
  %4 = load i32, i32* %i, align 4
  %call1 = call i32 @check_if_prime(i32 %3, i32 %4)
  store i32 %call1, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %count, align 4
  %8 = load i32, i32* %nth, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %9 = load i32, i32* %count, align 4
  %10 = load i32, i32* %i, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i32, i32* %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body
  %12 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
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
