; ModuleID = 'code/024-12082week2_day1_maopao.c'
source_filename = "code/024-12082week2_day1_maopao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array = private unnamed_addr constant [10 x i32] [i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.array to i8*), i64 40, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc27, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %5, 9
  br i1 %cmp3, label %for.body4, label %for.end29

for.body4:                                        ; preds = %for.cond2
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc24, %for.body4
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 10, %7
  %sub6 = sub nsw i32 %sub, 1
  %cmp7 = icmp slt i32 %6, %sub6
  br i1 %cmp7, label %for.body8, label %for.end26

for.body8:                                        ; preds = %for.cond5
  %8 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom9
  %9 = load i32, i32* %arrayidx10, align 4
  %10 = load i32, i32* %j, align 4
  %add = add nsw i32 %10, 1
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp sgt i32 %9, %11
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %12 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  store i32 %13, i32* %temp, align 4
  %14 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %14, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom17
  %15 = load i32, i32* %arrayidx18, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom19
  store i32 %15, i32* %arrayidx20, align 4
  %17 = load i32, i32* %temp, align 4
  %18 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %18, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom22
  store i32 %17, i32* %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  br label %for.inc24

for.inc24:                                        ; preds = %if.end
  %19 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond5, !llvm.loop !6

for.end26:                                        ; preds = %for.cond5
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %20 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end29:                                        ; preds = %for.cond2
  store i32 0, i32* %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end29
  %21 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %21, 10
  br i1 %cmp31, label %for.body32, label %for.end38

for.body32:                                       ; preds = %for.cond30
  %22 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 %idxprom33
  %23 = load i32, i32* %arrayidx34, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body32
  %24 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %24, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond30, !llvm.loop !8

for.end38:                                        ; preds = %for.cond30
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
!8 = distinct !{!8, !5}
