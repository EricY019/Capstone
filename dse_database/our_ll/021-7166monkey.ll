; ModuleID = 'code/021-7166monkey.c'
source_filename = "code/021-7166monkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Solution: %d coconuts to begin with\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sailors = alloca i32, align 4
  %monkeys = alloca i32, align 4
  %j = alloca i32, align 4
  %coconuts_tot = alloca i32, align 4
  %coconuts = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 5, i32* %sailors, align 4
  store i32 1, i32* %monkeys, align 4
  store i32 0, i32* %coconuts_tot, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end6
  %0 = load i32, i32* %coconuts_tot, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %coconuts_tot, align 4
  %1 = load i32, i32* %coconuts_tot, align 4
  store i32 %1, i32* %coconuts, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %sailors, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %monkeys, align 4
  %5 = load i32, i32* %coconuts, align 4
  %sub = sub nsw i32 %5, %4
  store i32 %sub, i32* %coconuts, align 4
  %6 = load i32, i32* %coconuts, align 4
  %7 = load i32, i32* %sailors, align 4
  %rem = srem i32 %6, %7
  %cmp1 = icmp ne i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %coconuts, align 4
  %9 = load i32, i32* %sailors, align 4
  %div = sdiv i32 %8, %9
  %10 = load i32, i32* %coconuts, align 4
  %sub2 = sub nsw i32 %10, %div
  store i32 %sub2, i32* %coconuts, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, i32* %coconuts, align 4
  %13 = load i32, i32* %sailors, align 4
  %rem3 = srem i32 %12, %13
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  br label %while.end

if.end6:                                          ; preds = %for.end
  br label %while.body

while.end:                                        ; preds = %if.then5
  %14 = load i32, i32* %coconuts_tot, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
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
