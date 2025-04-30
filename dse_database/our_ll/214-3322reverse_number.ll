; ModuleID = 'code/214-3322reverse_number.c'
source_filename = "code/214-3322reverse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.OriginalNumber = private unnamed_addr constant [5 x i32] [i32 5170984, i32 406567, i32 368750, i32 2369510, i32 2183293], align 16
@.str = private unnamed_addr constant [20 x i8] c"%6.3d       % 7.3d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%6.3d      % 7.3d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReverseNumbers(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %reverseNum = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %reverseNum, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %reverseNum, align 4
  %mul = mul nsw i32 %1, 10
  %2 = load i32, i32* %num.addr, align 4
  %rem = srem i32 %2, 10
  %add = add nsw i32 %mul, %rem
  store i32 %add, i32* %reverseNum, align 4
  %3 = load i32, i32* %num.addr, align 4
  %div = sdiv i32 %3, 10
  store i32 %div, i32* %num.addr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %reverseNum, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %OriginalNumber = alloca [5 x i32], align 16
  %ReverseNumber = alloca i32, align 4
  %br = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i32]* %OriginalNumber to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.main.OriginalNumber to i8*), i64 20, i1 false)
  store i32 0, i32* %br, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %br, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %br, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %OriginalNumber, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 @ReverseNumbers(i32 %3)
  store i32 %call, i32* %ReverseNumber, align 4
  %4 = load i32, i32* %br, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %br, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* %OriginalNumber, i64 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %ReverseNumber, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %br, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* %OriginalNumber, i64 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx6, align 4
  %10 = load i32, i32* %ReverseNumber, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %br, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %br, align 4
  br label %for.cond, !llvm.loop !6

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
