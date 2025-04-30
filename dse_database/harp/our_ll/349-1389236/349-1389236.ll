; ModuleID = 'code/349-1389236.c'
source_filename = "code/349-1389236.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.Array = private unnamed_addr constant [10 x i32] [i32 12, i32 34, i32 56, i32 78, i32 90, i32 123, i32 456, i32 789, i32 8642, i32 9753], align 16
@.str = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@__const.main.Array2 = private unnamed_addr constant [10 x i32] [i32 12, i32 34, i32 56, i32 78, i32 90, i32 123, i32 456, i32 789, i32 8642, i32 9753], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Count = alloca i32, align 4
  %Array = alloca [10 x i32], align 16
  %Array2 = alloca [10 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %Array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.Array to i8*), i64 40, i1 false)
  store i32 0, i32* %Count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %Count, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Count, align 4
  %3 = load i32, i32* %Count, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %Array, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %Count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %Count, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %6 = bitcast [10 x i32]* %Array2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([10 x i32]* @__const.main.Array2 to i8*), i64 40, i1 false)
  store i32 0, i32* %Count, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %7 = load i32, i32* %Count, align 4
  %cmp2 = icmp slt i32 %7, 10
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %8 = load i32, i32* %Count, align 4
  %9 = load i32, i32* %Count, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %Array2, i64 0, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %11 = load i32, i32* %Count, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, i32* %Count, align 4
  br label %for.cond1, !llvm.loop !6

for.end9:                                         ; preds = %for.cond1
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
