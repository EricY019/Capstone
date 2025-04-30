; ModuleID = 'code/260-8865vm0.c'
source_filename = "code/260-8865vm0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"i: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 10, i32* %a, align 4
  store i32 2, i32* %b, align 4
  store i32 200000000, i32* %c, align 4
  store i32 7, i32* %d, align 4
  store i32 1, i32* %e, align 4
  store i32 0, i32* %f, align 4
  %0 = load i32, i32* %a, align 4
  store i32 %0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end10

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %d, align 4
  %rem = srem i32 %3, %4
  %5 = load i32, i32* %f, align 4
  %cmp1 = icmp eq i32 %rem, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.cond2

while.cond2:                                      ; preds = %if.end, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %c, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  %8 = load i32, i32* %e, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %d, align 4
  %rem5 = srem i32 %10, %11
  %12 = load i32, i32* %f, align 4
  %cmp6 = icmp eq i32 %rem5, %12
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %while.body4
  br label %while.end

if.end:                                           ; preds = %while.body4
  br label %while.cond2, !llvm.loop !4

while.end:                                        ; preds = %if.then7, %while.cond2
  br label %if.end9

if.else:                                          ; preds = %while.body
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %14, %13
  store i32 %add8, i32* %i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %while.end
  br label %while.cond, !llvm.loop !6

while.end10:                                      ; preds = %while.cond
  %15 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @f()
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
