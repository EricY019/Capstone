; ModuleID = 'code/009-20916bubble_sort.c'
source_filename = "code/009-20916bubble_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [10 x i32] [i32 23, i32 45, i32 11, i32 24, i32 67, i32 89, i32 6, i32 3, i32 55, i32 77], align 16
@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  %size = alloca i32, align 4
  %pass = alloca i32, align 4
  %temp = alloca i32, align 4
  %comp = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.a to i8*), i64 40, i1 false)
  store i32 9, i32* %size, align 4
  store i32 0, i32* %pass, align 4
  store i32 0, i32* %temp, align 4
  store i32 0, i32* %comp, align 4
  store i32 1, i32* %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %1 = load i32, i32* %pass, align 4
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %comp, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %comp, align 4
  %4 = load i32, i32* %size, align 4
  %5 = load i32, i32* %pass, align 4
  %sub = sub nsw i32 %4, %5
  %cmp2 = icmp slt i32 %3, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %comp, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %comp, align 4
  %add = add nsw i32 %8, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %7, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %10 = load i32, i32* %comp, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  store i32 %11, i32* %temp, align 4
  %12 = load i32, i32* %comp, align 4
  %add9 = add nsw i32 %12, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom10
  %13 = load i32, i32* %arrayidx11, align 4
  %14 = load i32, i32* %comp, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom12
  store i32 %13, i32* %arrayidx13, align 4
  %15 = load i32, i32* %temp, align 4
  %16 = load i32, i32* %comp, align 4
  %add14 = add nsw i32 %16, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom15
  store i32 %15, i32* %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %comp, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %comp, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %18 = load i32, i32* %pass, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %pass, align 4
  br label %for.cond, !llvm.loop !6

for.end19:                                        ; preds = %for.cond
  store i32 0, i32* %pass, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %for.end19
  %19 = load i32, i32* %pass, align 4
  %cmp21 = icmp slt i32 %19, 10
  br i1 %cmp21, label %for.body22, label %for.end27

for.body22:                                       ; preds = %for.cond20
  %20 = load i32, i32* %pass, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom23
  %21 = load i32, i32* %arrayidx24, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body22
  %22 = load i32, i32* %pass, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, i32* %pass, align 4
  br label %for.cond20, !llvm.loop !7

for.end27:                                        ; preds = %for.cond20
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
