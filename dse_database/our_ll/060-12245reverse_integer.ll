; ModuleID = 'code/060-12245reverse_integer.c'
source_filename = "code/060-12245reverse_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Reverse and interger %d : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reverse(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %res = alloca i32, align 4
  %flag = alloca i32, align 4
  %max_int = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %flag, align 4
  store i32 -2147483648, i32* %max_int, align 4
  store i32 0, i32* %res, align 4
  store i32 0, i32* %val, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %flag, align 4
  %1 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  store i32 %2, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end3
  %4 = load i32, i32* %val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %res, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %while.body
  %6 = load i32, i32* %max_int, align 4
  %7 = load i32, i32* %res, align 4
  %div = sdiv i32 %6, %7
  %cmp5 = icmp slt i32 %div, 10
  br i1 %cmp5, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load i32, i32* %max_int, align 4
  %9 = load i32, i32* %res, align 4
  %div7 = sdiv i32 %8, %9
  %cmp8 = icmp sgt i32 %div7, -10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true6
  store i32 0, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %land.lhs.true6, %land.lhs.true, %while.body
  %10 = load i32, i32* %res, align 4
  %mul = mul nsw i32 %10, 10
  %11 = load i32, i32* %val, align 4
  %rem = srem i32 %11, 10
  %add = add nsw i32 %mul, %rem
  store i32 %add, i32* %res, align 4
  %12 = load i32, i32* %val, align 4
  %div11 = sdiv i32 %12, 10
  store i32 %div11, i32* %val, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %flag, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %while.end
  %14 = load i32, i32* %res, align 4
  %sub14 = sub nsw i32 0, %14
  store i32 %sub14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %while.end
  %15 = load i32, i32* %res, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then13, %if.then9, %if.then2
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @reverse(i32 -1234567)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 -12345670, i32 %call)
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
