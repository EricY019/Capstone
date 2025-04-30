; ModuleID = 'code/368-28469insertionSort.c'
source_filename = "code/368-28469insertionSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertionSort(i32* %Array, i32 %arraySize) #0 {
entry:
  %Array.addr = alloca i32*, align 8
  %arraySize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %key = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 8
  store i32 %arraySize, i32* %arraySize.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %arraySize.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %Array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %key, align 4
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load i32, i32* %j, align 4
  %cmp1 = icmp sge i32 %6, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32*, i32** %Array.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32, i32* %key, align 4
  %cmp4 = icmp sgt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32*, i32** %Array.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load i32*, i32** %Array.addr, align 8
  %16 = load i32, i32* %j, align 4
  %add = add nsw i32 %16, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  store i32 %14, i32* %arrayidx8, align 4
  %17 = load i32, i32* %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %18 = load i32, i32* %key, align 4
  %19 = load i32*, i32** %Array.addr, align 8
  %20 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %20, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 %idxprom10
  store i32 %18, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %numbers = alloca [10000 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #2
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #2
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %numbers, i64 0, i64 %idxprom
  store i32 %call2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10000 x i32], [10000 x i32]* %numbers, i64 0, i64 0
  call void @insertionSort(i32* %arraydecay, i32 10000)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
