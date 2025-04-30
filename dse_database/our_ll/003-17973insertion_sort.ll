; ModuleID = 'code/003-17973insertion_sort.c'
source_filename = "code/003-17973insertion_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.data = private unnamed_addr constant [5 x i32] [i32 2, i32 3, i32 1, i32 8, i32 5], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort(i32* %data, i32 %length) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i32, i32* %length.addr, align 4
  call void @insertion_sort(i32* %0, i32 %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertion_sort(i32* %data, i32 %length) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  store i32 %2, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %data.addr, align 8
  %8 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %6, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %j, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %12 = load i32*, i32** %data.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  store i32 %14, i32* %tmp, align 4
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %while.end
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* %j, align 4
  %cmp8 = icmp sgt i32 %16, %17
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %18 = load i32*, i32** %data.addr, align 8
  %19 = load i32, i32* %k, align 4
  %sub10 = sub nsw i32 %19, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom11
  %20 = load i32, i32* %arrayidx12, align 4
  %21 = load i32*, i32** %data.addr, align 8
  %22 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom13
  store i32 %20, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %23 = load i32, i32* %k, align 4
  %dec15 = add nsw i32 %23, -1
  store i32 %dec15, i32* %k, align 4
  br label %for.cond7, !llvm.loop !6

for.end:                                          ; preds = %for.cond7
  %24 = load i32, i32* %tmp, align 4
  %25 = load i32*, i32** %data.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  store i32 %24, i32* %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end19:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(i32* %data, i32 %length) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca [5 x i32], align 16
  %length = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i32]* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.main.data to i8*), i64 20, i1 false)
  store i32 5, i32* %length, align 4
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %data, i64 0, i64 0
  %1 = load i32, i32* %length, align 4
  call void @print(i32* %arraydecay, i32 %1)
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %data, i64 0, i64 0
  %2 = load i32, i32* %length, align 4
  call void @sort(i32* %arraydecay1, i32 %2)
  %arraydecay2 = getelementptr inbounds [5 x i32], [5 x i32]* %data, i64 0, i64 0
  %3 = load i32, i32* %length, align 4
  call void @print(i32* %arraydecay2, i32 %3)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
