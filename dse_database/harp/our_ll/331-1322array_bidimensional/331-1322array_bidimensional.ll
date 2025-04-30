; ModuleID = 'code/331-1322array_bidimensional.c'
source_filename = "code/331-1322array_bidimensional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.matrix_b = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 10, i32 20, i32 30], [3 x i32] [i32 40, i32 50, i32 60]], align 16
@.str = private unnamed_addr constant [9 x i8] c"num: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ROW[%d] : \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d | \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %matrix_a = alloca [2 x [3 x i32]], align 16
  %matrix_b = alloca [2 x [3 x i32]], align 16
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x [3 x i32]]* %matrix_a to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 24, i1 false)
  %1 = bitcast [2 x [3 x i32]]* %matrix_b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([2 x [3 x i32]]* @__const.main.matrix_b to i8*), i64 24, i1 false)
  %arrayidx = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %matrix_b, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 1
  %2 = load i32, i32* %arrayidx1, align 4
  store i32 %2, i32* %num, align 4
  %3 = load i32, i32* %num, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 2
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  store i32 0, i32* %y, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %y, align 4
  %cmp4 = icmp slt i32 %6, 3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %matrix_b, i64 0, i64 %idxprom
  %8 = load i32, i32* %y, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i64 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, i32* %y, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond3, !llvm.loop !4

for.end:                                          ; preds = %for.cond3
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end13:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
