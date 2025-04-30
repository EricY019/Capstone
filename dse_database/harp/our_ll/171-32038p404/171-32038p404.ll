; ModuleID = 'code/171-32038p404.c'
source_filename = "code/171-32038p404.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testing(i64 %b, i64 %c, i64 %x) #0 {
entry:
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %a = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %b.addr, align 8
  %sub = sub nsw i64 0, %1
  store i64 %sub, i64* %b.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %x.addr, align 8
  %3 = load i64, i64* %c.addr, align 8
  %cmp1 = icmp sge i64 %2, %3
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %x.addr, align 8
  %5 = load i64, i64* %b.addr, align 8
  %cmp2 = icmp sge i64 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %for.end

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load i64, i64* %b.addr, align 8
  %7 = load i64, i64* %c.addr, align 8
  %mul = mul nsw i64 %6, %7
  %div = sdiv i64 %mul, 2
  store i64 %div, i64* %a, align 8
  %8 = load i64, i64* %a, align 8
  %div5 = sdiv i64 100000000000000000, %8
  store i64 %div5, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load i64, i64* %i, align 8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* @sum, align 8
  %add = add nsw i64 %11, %10
  store i64 %add, i64* @sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %div6 = sdiv i64 %12, -25
  store i64 %div6, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then3, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen(i64 %a, i64 %b, i64 %c) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  %f = alloca i64, align 8
  %g = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %mul = mul nsw i64 %0, %1
  %cmp = icmp sge i64 %mul, 100000000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %a.addr, align 8
  %mul1 = mul nsw i64 2, %2
  %3 = load i64, i64* %b.addr, align 8
  %sub = sub nsw i64 %mul1, %3
  %4 = load i64, i64* %b.addr, align 8
  %mul2 = mul nsw i64 2, %4
  %5 = load i64, i64* %a.addr, align 8
  %add = add nsw i64 %mul2, %5
  %6 = load i64, i64* %c.addr, align 8
  call void @testing(i64 %sub, i64 %add, i64 %6)
  %7 = load i64, i64* %b.addr, align 8
  %mul3 = mul nsw i64 2, %7
  %8 = load i64, i64* %a.addr, align 8
  %sub4 = sub nsw i64 %mul3, %8
  %9 = load i64, i64* %a.addr, align 8
  %mul5 = mul nsw i64 2, %9
  %10 = load i64, i64* %b.addr, align 8
  %add6 = add nsw i64 %mul5, %10
  %11 = load i64, i64* %c.addr, align 8
  call void @testing(i64 %sub4, i64 %add6, i64 %11)
  %12 = load i64, i64* %a.addr, align 8
  %13 = load i64, i64* %b.addr, align 8
  %add7 = add nsw i64 %12, %13
  %14 = load i64, i64* %c.addr, align 8
  %add8 = add nsw i64 %add7, %14
  %mul9 = mul nsw i64 2, %add8
  store i64 %mul9, i64* %g, align 8
  %15 = load i64, i64* %g, align 8
  %16 = load i64, i64* %a.addr, align 8
  %sub10 = sub nsw i64 %15, %16
  store i64 %sub10, i64* %d, align 8
  %17 = load i64, i64* %g, align 8
  %18 = load i64, i64* %b.addr, align 8
  %sub11 = sub nsw i64 %17, %18
  store i64 %sub11, i64* %e, align 8
  %19 = load i64, i64* %g, align 8
  %20 = load i64, i64* %c.addr, align 8
  %add12 = add nsw i64 %19, %20
  store i64 %add12, i64* %f, align 8
  call void @gen(i64 %sub10, i64 %sub11, i64 %add12)
  %21 = load i64, i64* %a.addr, align 8
  %mul13 = mul nsw i64 %21, 2
  store i64 %mul13, i64* %a.addr, align 8
  %mul14 = mul nsw i64 2, %mul13
  store i64 %mul14, i64* %g, align 8
  %22 = load i64, i64* %d, align 8
  %23 = load i64, i64* %a.addr, align 8
  %sub15 = sub nsw i64 %22, %23
  %24 = load i64, i64* %e, align 8
  %25 = load i64, i64* %g, align 8
  %sub16 = sub nsw i64 %24, %25
  %26 = load i64, i64* %f, align 8
  %27 = load i64, i64* %g, align 8
  %sub17 = sub nsw i64 %26, %27
  call void @gen(i64 %sub15, i64 %sub16, i64 %sub17)
  %28 = load i64, i64* %b.addr, align 8
  %mul18 = mul nsw i64 %28, 2
  store i64 %mul18, i64* %b.addr, align 8
  %mul19 = mul nsw i64 2, %mul18
  store i64 %mul19, i64* %g, align 8
  %29 = load i64, i64* %d, align 8
  %30 = load i64, i64* %g, align 8
  %sub20 = sub nsw i64 %29, %30
  %31 = load i64, i64* %e, align 8
  %32 = load i64, i64* %b.addr, align 8
  %sub21 = sub nsw i64 %31, %32
  %33 = load i64, i64* %f, align 8
  %34 = load i64, i64* %g, align 8
  %sub22 = sub nsw i64 %33, %34
  call void @gen(i64 %sub20, i64 %sub21, i64 %sub22)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* @sum, align 8
  call void @gen(i64 3, i64 4, i64 5)
  %0 = load i64, i64* @sum, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %0)
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
