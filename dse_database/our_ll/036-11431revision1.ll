; ModuleID = 'code/036-11431revision1.c'
source_filename = "code/036-11431revision1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %matrix = alloca [10 x [10 x i32]], align 16
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x [10 x i32]]* %matrix to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 400, i1 false)
  %arrayidx = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %matrix, i64 0, i64 2
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i64 0, i64 3
  store i32 1, i32* %arrayidx1, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, i32* %row, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %col, align 4
  %cmp3 = icmp slt i32 %2, 10
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %3 = load i32, i32* %row, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %matrix, i64 0, i64 %idxprom
  %4 = load i32, i32* %col, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx5, i64 0, i64 %idxprom6
  %5 = load i32, i32* %arrayidx7, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %6 = load i32, i32* %col, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %7 = load i32, i32* %row, align 4
  %inc10 = add nsw i32 %7, 1
  store i32 %inc10, i32* %row, align 4
  br label %for.cond, !llvm.loop !6

for.end11:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
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
