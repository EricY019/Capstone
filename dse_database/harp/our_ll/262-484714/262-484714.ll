; ModuleID = 'code/262-484714.c'
source_filename = "code/262-484714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chain(i32 %i, i64 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %num.addr = alloca i64, align 8
  store i32 %i, i32* %i.addr, align 4
  store i64 %num, i64* %num.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %num.addr, align 8
  %rem = srem i64 %2, 2
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %3, 1
  %4 = load i64, i64* %num.addr, align 8
  %div = sdiv i64 %4, 2
  %call = call i32 @chain(i32 %add, i64 %div)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %i.addr, align 4
  %add4 = add nsw i32 %5, 1
  %6 = load i64, i64* %num.addr, align 8
  %mul = mul nsw i64 %6, 3
  %add5 = add nsw i64 %mul, 1
  %call6 = call i32 @chain(i32 %add4, i64 %add5)
  store i32 %call6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i64, align 8
  %max = alloca i64, align 8
  %maxchain = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %max, align 8
  store i64 0, i64* %maxchain, align 8
  store i64 1, i64* %num, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %num, align 8
  %cmp = icmp slt i64 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %num, align 8
  %call = call i32 @chain(i32 1, i64 %1)
  store i32 %call, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load i64, i64* %maxchain, align 8
  %cmp1 = icmp sgt i64 %conv, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %conv3 = sext i32 %4 to i64
  store i64 %conv3, i64* %maxchain, align 8
  %5 = load i64, i64* %num, align 8
  store i64 %5, i64* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %num, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %num, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %max, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %7)
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
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
