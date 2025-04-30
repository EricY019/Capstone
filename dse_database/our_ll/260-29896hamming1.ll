; ModuleID = 'code/260-29896hamming1.c'
source_filename = "code/260-29896hamming1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc = dso_local global i64 0, align 8
@n = dso_local global i64 1, align 8
@q = dso_local global i64* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%llu \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qpush(i64 %h) #0 {
entry:
  %h.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 %h, i64* %h.addr, align 8
  %0 = load i64, i64* @alloc, align 8
  %1 = load i64, i64* @n, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* @alloc, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load i64, i64* @alloc, align 8
  %mul = mul i64 %3, 2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 16, %cond.false ]
  store i64 %cond, i64* @alloc, align 8
  %4 = load i64*, i64** @q, align 8
  %5 = bitcast i64* %4 to i8*
  %6 = load i64, i64* @alloc, align 8
  %mul1 = mul i64 8, %6
  %call = call align 16 i8* @realloc(i8* %5, i64 %mul1) #3
  %7 = bitcast i8* %call to i64*
  store i64* %7, i64** @q, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %8 = load i64, i64* @n, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* @n, align 8
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %div = sdiv i32 %9, 2
  store i32 %div, i32* %j, align 4
  %tobool2 = icmp ne i32 %div, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load i64*, i64** @q, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 %idxprom
  %12 = load i64, i64* %arrayidx, align 8
  %13 = load i64, i64* %h.addr, align 8
  %cmp3 = icmp ugt i64 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64*, i64** @q, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds i64, i64* %15, i64 %idxprom5
  %17 = load i64, i64* %arrayidx6, align 8
  %18 = load i64*, i64** @q, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds i64, i64* %18, i64 %idxprom7
  store i64 %17, i64* %arrayidx8, align 8
  %20 = load i32, i32* %j, align 4
  store i32 %20, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %land.end
  %21 = load i64, i64* %h.addr, align 8
  %22 = load i64*, i64** @q, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds i64, i64* %22, i64 %idxprom9
  store i64 %21, i64* %arrayidx10, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qpop() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i64, align 8
  %t = alloca i64, align 8
  %0 = load i64*, i64** @q, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 1
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* @n, align 8
  %cmp = icmp ugt i64 %2, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, i64* %r, align 8
  %4 = load i64*, i64** @q, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %4, i64 1
  %5 = load i64, i64* %arrayidx1, align 8
  %cmp2 = icmp eq i64 %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %for.body, label %for.end29

for.body:                                         ; preds = %land.end
  store i32 1, i32* %i, align 4
  %7 = load i64*, i64** @q, align 8
  %8 = load i64, i64* @n, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* @n, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 %dec
  %9 = load i64, i64* %arrayidx3, align 8
  store i64 %9, i64* %t, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %if.end22, %for.body
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %10, 2
  store i32 %mul, i32* %j, align 4
  %conv = sext i32 %mul to i64
  %11 = load i64, i64* @n, align 8
  %cmp5 = icmp ult i64 %conv, %11
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %12 = load i32, i32* %j, align 4
  %add = add nsw i32 %12, 1
  %conv8 = sext i32 %add to i64
  %13 = load i64, i64* @n, align 8
  %cmp9 = icmp ult i64 %conv8, %13
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body7
  %14 = load i64*, i64** @q, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i64, i64* %14, i64 %idxprom
  %16 = load i64, i64* %arrayidx11, align 8
  %17 = load i64*, i64** @q, align 8
  %18 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %18, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i64, i64* %17, i64 %idxprom13
  %19 = load i64, i64* %arrayidx14, align 8
  %cmp15 = icmp ugt i64 %16, %19
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body7
  %21 = load i64, i64* %t, align 8
  %22 = load i64*, i64** @q, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds i64, i64* %22, i64 %idxprom17
  %24 = load i64, i64* %arrayidx18, align 8
  %cmp19 = icmp ule i64 %21, %24
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end
  br label %for.end

if.end22:                                         ; preds = %if.end
  %25 = load i64*, i64** @q, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds i64, i64* %25, i64 %idxprom23
  %27 = load i64, i64* %arrayidx24, align 8
  %28 = load i64*, i64** @q, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds i64, i64* %28, i64 %idxprom25
  store i64 %27, i64* %arrayidx26, align 8
  %30 = load i32, i32* %j, align 4
  store i32 %30, i32* %i, align 4
  br label %for.cond4, !llvm.loop !6

for.end:                                          ; preds = %if.then21, %for.cond4
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %31 = load i64, i64* %t, align 8
  %32 = load i64*, i64** @q, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds i64, i64* %32, i64 %idxprom27
  store i64 %31, i64* %arrayidx28, align 8
  br label %for.cond, !llvm.loop !7

for.end29:                                        ; preds = %land.end
  %34 = load i64, i64* %r, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %i, align 4
  call void @qpush(i64 1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @qpop()
  store i64 %call, i64* %h, align 8
  %1 = load i64, i64* %h, align 8
  %mul = mul i64 %1, 7
  call void @qpush(i64 %mul)
  %2 = load i64, i64* %h, align 8
  %mul1 = mul i64 %2, 13
  call void @qpush(i64 %mul1)
  %3 = load i64, i64* %h, align 8
  %mul2 = mul i64 %3, 19
  call void @qpush(i64 %mul2)
  %4 = load i64, i64* %h, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
