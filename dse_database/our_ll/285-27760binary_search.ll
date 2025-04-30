; ModuleID = 'code/285-27760binary_search.c'
source_filename = "code/285-27760binary_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.test = private unnamed_addr constant [6 x i32] [i32 -1, i32 0, i32 3, i32 5, i32 9, i32 12], align 16
@.str = private unnamed_addr constant [21 x i8] c"possible index = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search(i32* %nums, i32 %numsSize, i32 %target) #0 {
entry:
  %retval = alloca i32, align 4
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %half = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %target.addr, align 4
  %1 = load i32*, i32** %nums.addr, align 8
  %2 = load i32, i32* %numsSize.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sgt i32 %0, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %target.addr, align 4
  %5 = load i32*, i32** %nums.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 -1, i32* %begin, align 4
  %7 = load i32, i32* %numsSize.addr, align 4
  store i32 %7, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %8 = load i32, i32* %begin, align 4
  %9 = load i32, i32* %end, align 4
  %sub3 = sub nsw i32 %9, 1
  %cmp4 = icmp slt i32 %8, %sub3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %begin, align 4
  %11 = load i32, i32* %end, align 4
  %add = add nsw i32 %10, %11
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %half, align 4
  %12 = load i32*, i32** %nums.addr, align 8
  %13 = load i32, i32* %half, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load i32, i32* %target.addr, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  %16 = load i32, i32* %half, align 4
  store i32 %16, i32* %begin, align 4
  br label %if.end9

if.else:                                          ; preds = %while.body
  %17 = load i32, i32* %half, align 4
  store i32 %17, i32* %end, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %18 = load i32*, i32** %nums.addr, align 8
  %19 = load i32, i32* %end, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  %20 = load i32, i32* %arrayidx11, align 4
  %21 = load i32, i32* %target.addr, align 4
  %cmp12 = icmp eq i32 %20, %21
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %while.end
  %22 = load i32, i32* %end, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.else14:                                        ; preds = %while.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else14, %if.then13, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %test = alloca [6 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.test to i8*), i64 24, i1 false)
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %test, i64 0, i64 0
  %call = call i32 @search(i32* %arraydecay, i32 6, i32 2)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %call)
  %arraydecay2 = getelementptr inbounds [6 x i32], [6 x i32]* %test, i64 0, i64 0
  %call3 = call i32 @search(i32* %arraydecay2, i32 6, i32 9)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %call3)
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
