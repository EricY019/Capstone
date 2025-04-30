; ModuleID = 'code/377-30730goldbach.c'
source_filename = "code/377-30730goldbach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"%3i = %3i + %3i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @isPrime(i32 %num) #0 {
entry:
  %retval = alloca i8, align 1
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num.addr, align 4
  %div = sdiv i32 %2, 2
  %cmp1 = icmp sle i32 %1, %div
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %num.addr, align 4
  %4 = load i32, i32* %i, align 4
  %rem = srem i32 %3, %4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  store i8 0, i8* %retval, align 1
  br label %return

if.end4:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %6 = load i8, i8* %retval, align 1
  ret i8 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conjecture(i32 %start, i32 %stop) #0 {
entry:
  %start.addr = alloca i32, align 4
  %stop.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %stop, i32* %stop.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %stop.addr, align 4
  %cmp = icmp ule i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 2, i32* %n1, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %3 = load i32, i32* %n1, align 4
  %4 = load i32, i32* %i, align 4
  %div = udiv i32 %4, 2
  %add = add i32 %div, 1
  %cmp2 = icmp ult i32 %3, %add
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  store i32 2, i32* %n2, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, i32* %n2, align 4
  %6 = load i32, i32* %i, align 4
  %sub = sub i32 %6, 1
  %cmp5 = icmp ult i32 %5, %sub
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %n1, align 4
  %8 = load i32, i32* %n2, align 4
  %add7 = add i32 %7, %8
  %9 = load i32, i32* %i, align 4
  %cmp8 = icmp eq i32 %add7, %9
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %10 = load i32, i32* %n2, align 4
  %call = call zeroext i8 @isPrime(i32 %10)
  %conv = zext i8 %call to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %11 = load i32, i32* %n1, align 4
  %call10 = call zeroext i8 @isPrime(i32 %11)
  %conv11 = zext i8 %call10 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true9
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n1, align 4
  %14 = load i32, i32* %n2, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9, %land.lhs.true, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %n2, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %n2, align 4
  br label %for.cond4, !llvm.loop !6

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %16 = load i32, i32* %n1, align 4
  %inc15 = add i32 %16, 1
  store i32 %inc15, i32* %n1, align 4
  br label %for.cond1, !llvm.loop !7

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %17 = load i32, i32* %i, align 4
  %add18 = add i32 %17, 2
  store i32 %add18, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end19:                                        ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  call void @conjecture(i32 2, i32 2000)
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
