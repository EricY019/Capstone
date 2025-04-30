; ModuleID = 'code/271-10922triplet.c'
source_filename = "code/271-10922triplet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_triplet(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %b.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %b.addr, align 4
  %4 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %5 = load i32, i32* %a.addr, align 4
  %6 = load i32, i32* %a.addr, align 4
  %mul = mul nsw i32 %5, %6
  %7 = load i32, i32* %b.addr, align 4
  %8 = load i32, i32* %b.addr, align 4
  %mul4 = mul nsw i32 %7, %8
  %add = add nsw i32 %mul, %mul4
  %9 = load i32, i32* %c.addr, align 4
  %10 = load i32, i32* %c.addr, align 4
  %mul5 = mul nsw i32 %9, %10
  %cmp6 = icmp eq i32 %add, %mul5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %11 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %a, align 4
  store i32 2, i32* %b, align 4
  store i32 3, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %b, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* %c, align 4
  %add1 = add nsw i32 %add, %2
  %cmp = icmp ne i32 %add1, 1000
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load i32, i32* %a, align 4
  %4 = load i32, i32* %b, align 4
  %5 = load i32, i32* %c, align 4
  %call = call i32 @is_triplet(i32 %3, i32 %4, i32 %5)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %lnot, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load i32, i32* %a, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %a, align 4
  %8 = load i32, i32* %b, align 4
  %cmp2 = icmp sge i32 %inc, %8
  br i1 %cmp2, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  store i32 1, i32* %a, align 4
  %9 = load i32, i32* %b, align 4
  %inc3 = add nsw i32 %9, 1
  store i32 %inc3, i32* %b, align 4
  %10 = load i32, i32* %c, align 4
  %cmp4 = icmp sge i32 %inc3, %10
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 2, i32* %b, align 4
  %11 = load i32, i32* %c, align 4
  %inc6 = add nsw i32 %11, 1
  store i32 %inc6, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %lor.end
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %c, align 4
  %mul8 = mul nsw i32 %mul, %14
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %mul8)
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
