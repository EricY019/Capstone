; ModuleID = 'code/296-23369histo.c'
source_filename = "code/296-23369histo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv, i8** %envp) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %envp.addr = alloca i8**, align 8
  %y = alloca [4096 x [4096 x i8]], align 16
  %histogram_value = alloca [256 x i32], align 16
  %val = alloca i32, align 4
  %h = alloca i32, align 4
  %w = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %envp, i8*** %envp.addr, align 8
  %0 = bitcast [4096 x [4096 x i8]]* %y to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 16777216, i1 false)
  %1 = bitcast [256 x i32]* %histogram_value to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 1024, i1 false)
  store i32 0, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %2 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %2, 4096
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %w, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %w, align 4
  %cmp2 = icmp slt i32 %3, 4096
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %w, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4096 x [4096 x i8]], [4096 x [4096 x i8]]* %y, i64 0, i64 %idxprom
  %5 = load i32, i32* %h, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %arrayidx, i64 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %6 to i32
  store i32 %conv, i32* %val, align 4
  %7 = load i32, i32* %val, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* %histogram_value, i64 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %arrayidx7, align 4
  %9 = load i32, i32* %val, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* %histogram_value, i64 0, i64 %idxprom8
  store i32 %8, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %w, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, i32* %w, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %11 = load i32, i32* %h, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %h, align 4
  br label %for.cond, !llvm.loop !6

for.end13:                                        ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc20, %for.end13
  %12 = load i32, i32* %j, align 4
  %cmp15 = icmp slt i32 %12, 256
  br i1 %cmp15, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond14
  %13 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %histogram_value, i64 0, i64 %idxprom18
  %14 = load i32, i32* %arrayidx19, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %15 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond14, !llvm.loop !7

for.end22:                                        ; preds = %for.cond14
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
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
