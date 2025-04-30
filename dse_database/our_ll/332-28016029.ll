; ModuleID = 'code/332-28016029.c'
source_filename = "code/332-28016029.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @divide(i32 %dividend, i32 %divisor) #0 {
entry:
  %retval = alloca i32, align 4
  %dividend.addr = alloca i32, align 4
  %divisor.addr = alloca i32, align 4
  %ans = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  %a = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %dividend, i32* %dividend.addr, align 4
  store i32 %divisor, i32* %divisor.addr, align 4
  %0 = load i32, i32* %divisor.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dividend.addr, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %divisor.addr, align 4
  %conv = sext i32 %2 to i64
  %cmp1 = icmp eq i64 %conv, -2147483648
  br i1 %cmp1, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %dividend.addr, align 4
  %conv4 = sext i32 %3 to i64
  %cmp5 = icmp eq i64 %conv4, -2147483648
  %4 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 1, i32 0
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %dividend.addr, align 4
  %cmp8 = icmp sge i32 %5, 0
  br i1 %cmp8, label %if.then10, label %if.else28

if.then10:                                        ; preds = %if.end7
  %6 = load i32, i32* %divisor.addr, align 4
  %cmp11 = icmp sgt i32 %6, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  store i32 0, i32* %ans, align 4
  %7 = load i32, i32* %dividend.addr, align 4
  store i32 %7, i32* %n, align 4
  %8 = load i32, i32* %divisor.addr, align 4
  store i32 %8, i32* %d, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then13
  %9 = load i32, i32* %n, align 4
  %10 = load i32, i32* %d, align 4
  %cmp14 = icmp sge i32 %9, %10
  br i1 %cmp14, label %while.body, label %while.end25

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %d, align 4
  store i32 %11, i32* %a, align 4
  store i32 1, i32* %m, align 4
  br label %while.cond16

while.cond16:                                     ; preds = %while.body22, %while.body
  %12 = load i32, i32* %a, align 4
  %shl = shl i32 %12, 1
  %shr = ashr i32 %shl, 1
  %13 = load i32, i32* %a, align 4
  %cmp17 = icmp eq i32 %shr, %13
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond16
  %14 = load i32, i32* %a, align 4
  %shl19 = shl i32 %14, 1
  %15 = load i32, i32* %n, align 4
  %cmp20 = icmp slt i32 %shl19, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond16
  %16 = phi i1 [ false, %while.cond16 ], [ %cmp20, %land.rhs ]
  br i1 %16, label %while.body22, label %while.end

while.body22:                                     ; preds = %land.end
  %17 = load i32, i32* %a, align 4
  %shl23 = shl i32 %17, 1
  store i32 %shl23, i32* %a, align 4
  %18 = load i32, i32* %m, align 4
  %shl24 = shl i32 %18, 1
  store i32 %shl24, i32* %m, align 4
  br label %while.cond16, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %19 = load i32, i32* %m, align 4
  %20 = load i32, i32* %ans, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %ans, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %22, %21
  store i32 %sub, i32* %n, align 4
  br label %while.cond, !llvm.loop !6

while.end25:                                      ; preds = %while.cond
  %23 = load i32, i32* %ans, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then10
  %24 = load i32, i32* %dividend.addr, align 4
  %25 = load i32, i32* %divisor.addr, align 4
  %sub26 = sub nsw i32 0, %25
  %call = call i32 @divide(i32 %24, i32 %sub26)
  %sub27 = sub nsw i32 0, %call
  store i32 %sub27, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.end7
  %26 = load i32, i32* %dividend.addr, align 4
  %conv29 = sext i32 %26 to i64
  %cmp30 = icmp eq i64 %conv29, -2147483648
  br i1 %cmp30, label %if.then32, label %if.end49

if.then32:                                        ; preds = %if.else28
  %27 = load i32, i32* %divisor.addr, align 4
  %cmp33 = icmp eq i32 %27, -1
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  store i32 2147483647, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then32
  %28 = load i32, i32* %divisor.addr, align 4
  %cmp37 = icmp slt i32 %28, 0
  br i1 %cmp37, label %if.then39, label %if.else44

if.then39:                                        ; preds = %if.end36
  %29 = load i32, i32* %divisor.addr, align 4
  %30 = load i32, i32* %dividend.addr, align 4
  %sub40 = sub nsw i32 %29, %30
  %31 = load i32, i32* %divisor.addr, align 4
  %sub41 = sub nsw i32 0, %31
  %call42 = call i32 @divide(i32 %sub40, i32 %sub41)
  %add43 = add nsw i32 1, %call42
  store i32 %add43, i32* %retval, align 4
  br label %return

if.else44:                                        ; preds = %if.end36
  %32 = load i32, i32* %divisor.addr, align 4
  %sub45 = sub nsw i32 0, %32
  %33 = load i32, i32* %dividend.addr, align 4
  %sub46 = sub nsw i32 %sub45, %33
  %34 = load i32, i32* %divisor.addr, align 4
  %call47 = call i32 @divide(i32 %sub46, i32 %34)
  %sub48 = sub nsw i32 -1, %call47
  store i32 %sub48, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.else28
  %35 = load i32, i32* %divisor.addr, align 4
  %cmp50 = icmp slt i32 %35, 0
  br i1 %cmp50, label %if.then52, label %if.else56

if.then52:                                        ; preds = %if.end49
  %36 = load i32, i32* %dividend.addr, align 4
  %sub53 = sub nsw i32 0, %36
  %37 = load i32, i32* %divisor.addr, align 4
  %sub54 = sub nsw i32 0, %37
  %call55 = call i32 @divide(i32 %sub53, i32 %sub54)
  store i32 %call55, i32* %retval, align 4
  br label %return

if.else56:                                        ; preds = %if.end49
  %38 = load i32, i32* %dividend.addr, align 4
  %sub57 = sub nsw i32 0, %38
  %39 = load i32, i32* %divisor.addr, align 4
  %call58 = call i32 @divide(i32 %sub57, i32 %39)
  %sub59 = sub nsw i32 0, %call58
  store i32 %sub59, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else56, %if.then52, %if.else44, %if.then39, %if.then35, %if.else, %while.end25, %if.then3, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @divide(i32 -2147483648, i32 5)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %call)
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
