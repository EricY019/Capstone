; ModuleID = 'code/370-1475problem_5.c'
source_filename = "code/370-1475problem_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i8, align 1
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %a, align 1
  store i64 2520, i64* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i64, i64* %x, align 8
  %cmp = icmp ult i64 %0, 99999999999999
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i64 2, i64* %y, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i64, i64* %y, align 8
  %cmp2 = icmp ult i64 %1, 21
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i64, i64* %x, align 8
  %3 = load i64, i64* %y, align 8
  %rem = urem i64 %2, %3
  %cmp4 = icmp ne i64 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.end

if.end:                                           ; preds = %for.body3
  %4 = load i64, i64* %y, align 8
  %cmp5 = icmp eq i64 %4, 20
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i8 1, i8* %a, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %5 = load i64, i64* %y, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %y, align 8
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond1
  %6 = load i8, i8* %a, align 1
  %conv = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv, 1
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  %7 = load i64, i64* %x, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %7)
  br label %for.end13

if.end11:                                         ; preds = %for.end
  br label %for.inc12

for.inc12:                                        ; preds = %if.end11
  %8 = load i64, i64* %x, align 8
  %add = add i64 %8, 20
  store i64 %add, i64* %x, align 8
  br label %for.cond, !llvm.loop !6

for.end13:                                        ; preds = %if.then10, %for.cond
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
