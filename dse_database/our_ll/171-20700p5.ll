; ModuleID = 'code/171-20700p5.c'
source_filename = "code/171-20700p5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Answer = %u \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %val = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 20, i64* %val, align 8
  store i64 20, i64* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  store i64 19, i64* %y, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.cond
  %0 = load i64, i64* %y, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  %1 = load i64, i64* %x, align 8
  %2 = load i64, i64* %y, align 8
  %rem = urem i64 %1, %2
  %cmp = icmp ne i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i64, i64* %y, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %y, align 8
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond1
  %4 = load i64, i64* %y, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  %5 = load i64, i64* %x, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %5)
  br label %for.end6

if.end4:                                          ; preds = %for.end
  br label %for.inc5

for.inc5:                                         ; preds = %if.end4
  %6 = load i64, i64* %x, align 8
  %add = add i64 %6, 20
  store i64 %add, i64* %x, align 8
  br label %for.cond

for.end6:                                         ; preds = %if.then3
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
