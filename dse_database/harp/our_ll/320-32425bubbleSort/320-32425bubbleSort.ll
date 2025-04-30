; ModuleID = 'code/320-32425bubbleSort.c'
source_filename = "code/320-32425bubbleSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.elem = private unnamed_addr constant [10 x i32] [i32 6, i32 7, i32 3, i32 2, i32 7, i32 1, i32 5, i32 8, i32 7, i32 4], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %xor = xor i32 %1, %3
  %4 = load i32*, i32** %a.addr, align 8
  store i32 %xor, i32* %4, align 4
  %5 = load i32*, i32** %a.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %b.addr, align 8
  %8 = load i32, i32* %7, align 4
  %xor1 = xor i32 %6, %8
  %9 = load i32*, i32** %b.addr, align 8
  store i32 %xor1, i32* %9, align 4
  %10 = load i32*, i32** %a.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %b.addr, align 8
  %13 = load i32, i32* %12, align 4
  %xor2 = xor i32 %11, %13
  %14 = load i32*, i32** %a.addr, align 8
  store i32 %xor2, i32* %14, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bubble(i32* %_elem, i32 %lo, i32 %hi) #0 {
entry:
  %_elem.addr = alloca i32*, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %last = alloca i32, align 4
  store i32* %_elem, i32** %_elem.addr, align 8
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  %0 = load i32, i32* %lo.addr, align 4
  store i32 %0, i32* %last, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %lo.addr, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %lo.addr, align 4
  %2 = load i32, i32* %hi.addr, align 4
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %_elem.addr, align 8
  %4 = load i32, i32* %lo.addr, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32*, i32** %_elem.addr, align 8
  %7 = load i32, i32* %lo.addr, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %5, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %lo.addr, align 4
  store i32 %9, i32* %last, align 4
  %10 = load i32*, i32** %_elem.addr, align 8
  %11 = load i32, i32* %lo.addr, align 4
  %sub4 = sub nsw i32 %11, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  %12 = load i32*, i32** %_elem.addr, align 8
  %13 = load i32, i32* %lo.addr, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom7
  call void @swap(i32* %arrayidx6, i32* %arrayidx8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %last, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubbleSort(i32* %_elem, i32 %lo, i32 %hi) #0 {
entry:
  %_elem.addr = alloca i32*, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  store i32* %_elem, i32** %_elem.addr, align 8
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %lo.addr, align 4
  %1 = load i32*, i32** %_elem.addr, align 8
  %2 = load i32, i32* %lo.addr, align 4
  %3 = load i32, i32* %hi.addr, align 4
  %call = call i32 @bubble(i32* %1, i32 %2, i32 %3)
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %elem = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %elem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.elem to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %elem, i64 0, i64 0
  call void @bubbleSort(i32* %arraydecay, i32 0, i32 10)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %elem, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
