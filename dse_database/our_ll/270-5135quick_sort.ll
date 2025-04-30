; ModuleID = 'code/270-5135quick_sort.c'
source_filename = "code/270-5135quick_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array = private unnamed_addr constant [10 x i32] [i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Partion(i32* %R, i32 %low, i32 %high) #0 {
entry:
  %R.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %R, i32** %R.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  %0 = load i32*, i32** %R.addr, align 8
  %1 = load i32, i32* %low.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %temp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %3 = load i32, i32* %low.addr, align 4
  %4 = load i32, i32* %high.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end30

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body6, %while.body
  %5 = load i32, i32* %low.addr, align 4
  %6 = load i32, i32* %high.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %7 = load i32*, i32** %R.addr, align 8
  %8 = load i32, i32* %high.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %temp, align 4
  %cmp5 = icmp sgt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %11 = phi i1 [ false, %while.cond1 ], [ %cmp5, %land.rhs ]
  br i1 %11, label %while.body6, label %while.end

while.body6:                                      ; preds = %land.end
  %12 = load i32, i32* %high.addr, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %high.addr, align 4
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* %low.addr, align 4
  %14 = load i32, i32* %high.addr, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %15 = load i32*, i32** %R.addr, align 8
  %16 = load i32, i32* %high.addr, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %15, i64 %idxprom8
  %17 = load i32, i32* %arrayidx9, align 4
  %18 = load i32*, i32** %R.addr, align 8
  %19 = load i32, i32* %low.addr, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  store i32 %17, i32* %arrayidx11, align 4
  %20 = load i32, i32* %low.addr, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %low.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond12

while.cond12:                                     ; preds = %while.body19, %if.end
  %21 = load i32, i32* %low.addr, align 4
  %22 = load i32, i32* %high.addr, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %land.rhs14, label %land.end18

land.rhs14:                                       ; preds = %while.cond12
  %23 = load i32*, i32** %R.addr, align 8
  %24 = load i32, i32* %low.addr, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 %idxprom15
  %25 = load i32, i32* %arrayidx16, align 4
  %26 = load i32, i32* %temp, align 4
  %cmp17 = icmp slt i32 %25, %26
  br label %land.end18

land.end18:                                       ; preds = %land.rhs14, %while.cond12
  %27 = phi i1 [ false, %while.cond12 ], [ %cmp17, %land.rhs14 ]
  br i1 %27, label %while.body19, label %while.end21

while.body19:                                     ; preds = %land.end18
  %28 = load i32, i32* %low.addr, align 4
  %inc20 = add nsw i32 %28, 1
  store i32 %inc20, i32* %low.addr, align 4
  br label %while.cond12, !llvm.loop !6

while.end21:                                      ; preds = %land.end18
  %29 = load i32, i32* %low.addr, align 4
  %30 = load i32, i32* %high.addr, align 4
  %cmp22 = icmp slt i32 %29, %30
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %while.end21
  %31 = load i32*, i32** %R.addr, align 8
  %32 = load i32, i32* %low.addr, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %31, i64 %idxprom24
  %33 = load i32, i32* %arrayidx25, align 4
  %34 = load i32*, i32** %R.addr, align 8
  %35 = load i32, i32* %high.addr, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 %idxprom26
  store i32 %33, i32* %arrayidx27, align 4
  %36 = load i32, i32* %high.addr, align 4
  %dec28 = add nsw i32 %36, -1
  store i32 %dec28, i32* %high.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %while.end21
  br label %while.cond, !llvm.loop !7

while.end30:                                      ; preds = %while.cond
  %37 = load i32, i32* %temp, align 4
  %38 = load i32*, i32** %R.addr, align 8
  %39 = load i32, i32* %low.addr, align 4
  %idxprom31 = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 %idxprom31
  store i32 %37, i32* %arrayidx32, align 4
  %40 = load i32, i32* %low.addr, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Quick_Sort(i32* %R, i32 %s, i32 %t) #0 {
entry:
  %R.addr = alloca i32*, align 8
  %s.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %R, i32** %R.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %1 = load i32, i32* %t.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %R.addr, align 8
  %3 = load i32, i32* %s.addr, align 4
  %4 = load i32, i32* %t.addr, align 4
  %call = call i32 @Partion(i32* %2, i32 %3, i32 %4)
  store i32 %call, i32* %i, align 4
  %5 = load i32*, i32** %R.addr, align 8
  %6 = load i32, i32* %s.addr, align 4
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  call void @Quick_Sort(i32* %5, i32 %6, i32 %sub)
  %8 = load i32*, i32** %R.addr, align 8
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %t.addr, align 4
  call void @Quick_Sort(i32* %8, i32 %add, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.array to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 0
  call void @Quick_Sort(i32* %arraydecay, i32 0, i32 9)
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
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
