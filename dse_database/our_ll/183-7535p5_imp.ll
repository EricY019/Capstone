; ModuleID = 'code/183-7535p5_imp.c'
source_filename = "code/183-7535p5_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %flag = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %flag, align 4
  store i64 2520, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 999999999
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %flag, align 4
  store i64 2, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i64, i64* %j, align 8
  %cmp2 = icmp ule i64 %1, 20
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %j, align 8
  %rem = urem i64 %2, %3
  %cmp4 = icmp ne i64 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  store i32 1, i32* %flag, align 4
  br label %for.end

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, i64* %j, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond1
  %5 = load i32, i32* %flag, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.end
  %6 = load i64, i64* %i, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %6)
  br label %for.end10

if.end7:                                          ; preds = %for.end
  br label %for.inc8

for.inc8:                                         ; preds = %if.end7
  %7 = load i64, i64* %i, align 8
  %inc9 = add i64 %7, 1
  store i64 %inc9, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end10:                                        ; preds = %if.then6, %for.cond
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
