; ModuleID = 'code/118-22819sum_cols_and_rows.c'
source_filename = "code/118-22819sum_cols_and_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.mdarr = private unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 1, i32 3, i32 5, i32 7], [4 x i32] [i32 2, i32 4, i32 6, i32 8], [4 x i32] [i32 0, i32 1, i32 2, i32 3]], align 16
@.str = private unnamed_addr constant [21 x i8] c"sum each row element\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"sum each col element\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Total rows and cols: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%2d row: %2d total\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%2d col: %2d total\0A\00", align 1
@sum_all.tot = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tot = alloca i32, align 4
  %mdarr = alloca [3 x [4 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x [4 x i32]]* %mdarr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x [4 x i32]]* @__const.main.mdarr to i8*), i64 48, i1 false)
  %call = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %mdarr, i64 0, i64 0
  call void @sum_rows([4 x i32]* %arraydecay)
  %call1 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %arraydecay2 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %mdarr, i64 0, i64 0
  call void @sum_cols([4 x i32]* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %mdarr, i64 0, i64 0
  %call4 = call i32 @sum_all([4 x i32]* %arraydecay3)
  store i32 %call4, i32* %tot, align 4
  %1 = load i32, i32* %tot, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_rows([4 x i32]* %arr) #0 {
entry:
  %arr.addr = alloca [4 x i32]*, align 8
  %tot_rows = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  store [4 x i32]* %arr, [4 x i32]** %arr.addr, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %tot_rows, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %3 = load i32, i32* %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %6 = load i32, i32* %tot_rows, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %tot_rows, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, i32* %c, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %8 = load i32, i32* %r, align 4
  %9 = load i32, i32* %tot_rows, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %8, i32 %9)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %10 = load i32, i32* %r, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %r, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_cols([4 x i32]* %arr) #0 {
entry:
  %arr.addr = alloca [4 x i32]*, align 8
  %tot_cols = alloca i32, align 4
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  store [4 x i32]* %arr, [4 x i32]** %arr.addr, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %tot_cols, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %r, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %3 = load i32, i32* %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %6 = load i32, i32* %tot_cols, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %tot_cols, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, i32* %r, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  %8 = load i32, i32* %c, align 4
  %9 = load i32, i32* %tot_cols, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %8, i32 %9)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %10 = load i32, i32* %c, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %c, align 4
  br label %for.cond, !llvm.loop !8

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum_all([4 x i32]* %arr) #0 {
entry:
  %arr.addr = alloca [4 x i32]*, align 8
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  store [4 x i32]* %arr, [4 x i32]** %arr.addr, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %3 = load i32, i32* %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %6 = load i32, i32* @sum_all.tot, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* @sum_all.tot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, i32* %c, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %8 = load i32, i32* %r, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* %r, align 4
  br label %for.cond, !llvm.loop !10

for.end8:                                         ; preds = %for.cond
  %9 = load i32, i32* @sum_all.tot, align 4
  ret i32 %9
}

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
