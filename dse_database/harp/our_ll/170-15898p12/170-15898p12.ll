; ModuleID = 'code/170-15898p12.c'
source_filename = "code/170-15898p12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfactors(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %f = alloca i64, align 8
  %c = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  store i32 2, i32* %c, align 4
  store i64 2, i64* %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %f, align 8
  %1 = load i64, i64* %f, align 8
  %mul = mul nsw i64 %0, %1
  %2 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %mul, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %n.addr, align 8
  %4 = load i64, i64* %f, align 8
  %rem = srem i64 %3, %4
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %c, align 4
  %add = add nsw i32 %5, 2
  store i32 %add, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %f, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %f, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %f, align 8
  %8 = load i64, i64* %f, align 8
  %mul2 = mul nsw i64 %7, %8
  %9 = load i64, i64* %n.addr, align 8
  %cmp3 = icmp eq i64 %mul2, %9
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.end
  %10 = load i32, i32* %c, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* %c, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.end
  %11 = load i32, i32* %c, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %t, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %t, align 8
  %call = call i32 @nfactors(i64 %0)
  %cmp = icmp slt i32 %call, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %t, align 8
  %add = add nsw i64 %2, %1
  store i64 %add, i64* %t, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i64, i64* %t, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %4)
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
