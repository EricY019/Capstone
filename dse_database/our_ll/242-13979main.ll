; ModuleID = 'code/242-13979main.c'
source_filename = "code/242-13979main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %total = alloca i32, align 4
  %map = alloca [200 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %map, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 200, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp sle i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp sle i32 %2, 6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 8, %3
  %4 = load i32, i32* %j, align 4
  %mul7 = mul nsw i32 10, %4
  %add = add nsw i32 %mul, %mul7
  %5 = load i32, i32* %k, align 4
  %mul8 = mul nsw i32 18, %5
  %add9 = add nsw i32 %add, %mul8
  store i32 %add9, i32* %total, align 4
  %6 = load i32, i32* %total, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* %map, i64 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %8 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end12:                                        ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end12
  %9 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end15:                                        ; preds = %for.cond
  store i32 1, i32* %i, align 4
  store i32 0, i32* %total, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc22, %for.end15
  %10 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %10, 200
  br i1 %cmp17, label %for.body18, label %for.end24

for.body18:                                       ; preds = %for.cond16
  %11 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [200 x i8], [200 x i8]* %map, i64 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv = sext i8 %12 to i32
  %13 = load i32, i32* %total, align 4
  %add21 = add nsw i32 %13, %conv
  store i32 %add21, i32* %total, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %14 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond16, !llvm.loop !8

for.end24:                                        ; preds = %for.cond16
  %15 = load i32, i32* %total, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
