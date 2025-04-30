; ModuleID = 'code/088-13105bubbleSort.c'
source_filename = "code/088-13105bubbleSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubbleSort(i32* %Array, i32 %arraySize) #0 {
entry:
  %Array.addr = alloca i32*, align 8
  %arraySize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 8
  store i32 %arraySize, i32* %arraySize.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %arraySize.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %arraySize.addr, align 4
  %4 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %3, %4
  %sub3 = sub nsw i32 %sub2, 1
  %cmp4 = icmp slt i32 %2, %sub3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond1
  %5 = load i32*, i32** %Array.addr, align 8
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %Array.addr, align 8
  %9 = load i32, i32* %j, align 4
  %add = add nsw i32 %9, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %7, %10
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %11 = load i32*, i32** %Array.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i64 %idxprom9
  %13 = load i32, i32* %arrayidx10, align 4
  store i32 %13, i32* %temp, align 4
  %14 = load i32*, i32** %Array.addr, align 8
  %15 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %15, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %17 = load i32*, i32** %Array.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %17, i64 %idxprom14
  store i32 %16, i32* %arrayidx15, align 4
  %19 = load i32, i32* %temp, align 4
  %20 = load i32*, i32** %Array.addr, align 8
  %21 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %21, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 %idxprom17
  store i32 %19, i32* %arrayidx18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end21:                                        ; preds = %for.cond
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
  call void @bubbleSort(i32* %arraydecay, i32 10000)
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
