; ModuleID = 'code/362-2856734_srch_in_range.c'
source_filename = "code/362-2856734_srch_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 5, i32 7, i32 7, i32 8, i32 8, i32 10], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @searchRange(i32* %nums, i32 %numsSize, i32 %target, i32* %returnSize) #0 {
entry:
  %retval = alloca i32*, align 8
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %returnSize.addr = alloca i32*, align 8
  %res = alloca i32*, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %returnSize, i32** %returnSize.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 8) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %res, align 8
  %1 = load i32*, i32** %returnSize.addr, align 8
  store i32 2, i32* %1, align 4
  store i32 -1, i32* %left, align 4
  %2 = load i32, i32* %numsSize.addr, align 4
  store i32 %2, i32* %right, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %left, align 4
  %add = add nsw i32 %3, 1
  %4 = load i32, i32* %right, align 4
  %cmp = icmp ne i32 %add, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %left, align 4
  %6 = load i32, i32* %right, align 4
  %add1 = add nsw i32 %5, %6
  %div = sdiv i32 %add1, 2
  store i32 %div, i32* %mid, align 4
  %7 = load i32*, i32** %nums.addr, align 8
  %8 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %target.addr, align 4
  %cmp2 = icmp slt i32 %9, %10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %mid, align 4
  store i32 %11, i32* %left, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %mid, align 4
  store i32 %12, i32* %right, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %right, align 4
  %14 = load i32, i32* %numsSize.addr, align 4
  %cmp3 = icmp sge i32 %13, %14
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %15 = load i32*, i32** %nums.addr, align 8
  %16 = load i32, i32* %right, align 4
  %idxprom4 = sext i32 %16 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %15, i64 %idxprom4
  %17 = load i32, i32* %arrayidx5, align 4
  %18 = load i32, i32* %target.addr, align 4
  %cmp6 = icmp ne i32 %17, %18
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %lor.lhs.false, %while.end
  %19 = load i32*, i32** %res, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 -1, i32* %arrayidx8, align 4
  %20 = load i32*, i32** %res, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 -1, i32* %arrayidx9, align 4
  %21 = load i32*, i32** %res, align 8
  store i32* %21, i32** %retval, align 8
  br label %return

if.else10:                                        ; preds = %lor.lhs.false
  %22 = load i32, i32* %right, align 4
  %23 = load i32*, i32** %res, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %arrayidx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10
  store i32 -1, i32* %left, align 4
  %24 = load i32, i32* %numsSize.addr, align 4
  store i32 %24, i32* %right, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %if.end24, %if.end12
  %25 = load i32, i32* %left, align 4
  %add14 = add nsw i32 %25, 1
  %26 = load i32, i32* %right, align 4
  %cmp15 = icmp ne i32 %add14, %26
  br i1 %cmp15, label %while.body16, label %while.end25

while.body16:                                     ; preds = %while.cond13
  %27 = load i32, i32* %left, align 4
  %28 = load i32, i32* %right, align 4
  %add17 = add nsw i32 %27, %28
  %div18 = sdiv i32 %add17, 2
  store i32 %div18, i32* %mid, align 4
  %29 = load i32*, i32** %nums.addr, align 8
  %30 = load i32, i32* %mid, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 %idxprom19
  %31 = load i32, i32* %arrayidx20, align 4
  %32 = load i32, i32* %target.addr, align 4
  %cmp21 = icmp sle i32 %31, %32
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %while.body16
  %33 = load i32, i32* %mid, align 4
  store i32 %33, i32* %left, align 4
  br label %if.end24

if.else23:                                        ; preds = %while.body16
  %34 = load i32, i32* %mid, align 4
  store i32 %34, i32* %right, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  br label %while.cond13, !llvm.loop !6

while.end25:                                      ; preds = %while.cond13
  %35 = load i32, i32* %left, align 4
  %36 = load i32*, i32** %res, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %arrayidx26, align 4
  %37 = load i32*, i32** %res, align 8
  store i32* %37, i32** %retval, align 8
  br label %return

return:                                           ; preds = %while.end25, %if.then7
  %38 = load i32*, i32** %retval, align 8
  ret i32* %38
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [6 x i32], align 16
  %a = alloca i32*, align 8
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.arr to i8*), i64 24, i1 false)
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i64 0, i64 0
  %call = call i32* @searchRange(i32* %arraydecay, i32 6, i32 8, i32* %n)
  store i32* %call, i32** %a, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
