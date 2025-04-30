; ModuleID = 'code/016-33539shell_sort2.c'
source_filename = "code/016-33539shell_sort2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [10 x i32] [i32 2, i32 1, i32 8, i32 3, i32 9, i32 0, i32 4, i32 6, i32 7, i32 5], align 16
@.str = private unnamed_addr constant [12 x i8] c"%2d : %2d \09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %arr = alloca [10 x i32], align 16
  %length = alloca i32, align 4
  %0 = bitcast [10 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.arr to i8*), i64 40, i1 false)
  store i32 10, i32* %length, align 4
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 0
  %1 = load i32, i32* %length, align 4
  call void @shell_sort2(i32* %arraydecay, i32 %1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shell_sort2(i32* %arr, i32 %len) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %gap = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %gap, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %1 = load i32, i32* %gap, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %gap, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %gap, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %j, align 4
  %cmp5 = icmp sge i32 %7, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond4
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32*, i32** %arr.addr, align 8
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %gap, align 4
  %add = add nsw i32 %12, %13
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %10, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond4
  %15 = phi i1 [ false, %for.cond4 ], [ %cmp8, %land.rhs ]
  br i1 %15, label %for.body9, label %for.end

for.body9:                                        ; preds = %land.end
  %16 = load i32*, i32** %arr.addr, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  store i32 %18, i32* %temp, align 4
  %19 = load i32*, i32** %arr.addr, align 8
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %gap, align 4
  %add12 = add nsw i32 %20, %21
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  %22 = load i32, i32* %arrayidx14, align 4
  %23 = load i32*, i32** %arr.addr, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 %idxprom15
  store i32 %22, i32* %arrayidx16, align 4
  %25 = load i32, i32* %temp, align 4
  %26 = load i32*, i32** %arr.addr, align 8
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %gap, align 4
  %add17 = add nsw i32 %27, %28
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %26, i64 %idxprom18
  store i32 %25, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %29 = load i32, i32* %gap, align 4
  %30 = load i32, i32* %j, align 4
  %sub20 = sub nsw i32 %30, %29
  store i32 %sub20, i32* %j, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %land.end
  %31 = load i32*, i32** %arr.addr, align 8
  %32 = load i32, i32* %len.addr, align 4
  call void @print(i32* %31, i32 %32)
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end22:                                        ; preds = %for.cond1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %34 = load i32, i32* %gap, align 4
  %shr24 = ashr i32 %34, 1
  store i32 %shr24, i32* %gap, align 4
  br label %for.cond, !llvm.loop !7

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(i32* %arr, i32 %len) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %add, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
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
