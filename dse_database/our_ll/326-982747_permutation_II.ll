; ModuleID = 'code/326-982747_permutation_II.c'
source_filename = "code/326-982747_permutation_II.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = internal global i32 0, align 4
@res = internal global i32** null, align 8
@__const.main.x = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 2], align 4
@ans = internal global i32* null, align 8
@occupy = internal global i8* null, align 8
@maxp = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @permuteUnique(i32* %nums, i32 %numsSize, i32* %returnSize) #0 {
entry:
  %retval = alloca i32**, align 8
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca i32*, align 8
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  store i32* %returnSize, i32** %returnSize.addr, align 8
  %0 = load i32, i32* %numsSize.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %returnSize.addr, align 8
  store i32 0, i32* %1, align 4
  store i32** null, i32*** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %numsSize.addr, align 4
  call void @init(i32 %2)
  %3 = load i32*, i32** %nums.addr, align 8
  %4 = load i32, i32* %numsSize.addr, align 4
  call void @do_perm(i32* %3, i32 %4, i32 0)
  call void @deinit()
  %5 = load i32, i32* @p, align 4
  %6 = load i32*, i32** %returnSize.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32**, i32*** @res, align 8
  store i32** %7, i32*** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32**, i32*** %retval, align 8
  ret i32** %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** @ans, align 8
  %2 = load i32, i32* %n.addr, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call noalias align 16 i8* @calloc(i64 %conv1, i64 1) #4
  store i8* %call2, i8** @occupy, align 8
  store i32** null, i32*** @res, align 8
  store i32 0, i32* @p, align 4
  store i32 0, i32* @maxp, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_perm(i32* %nums, i32 %n, i32 %start) #0 {
entry:
  %nums.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %start.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  call void @add_ans(i32 %2)
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** @occupy, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.body
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %8 = load i8*, i8** @occupy, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  store i8 1, i8* %arrayidx5, align 1
  %10 = load i32*, i32** %nums.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %13 = load i32*, i32** @ans, align 8
  %14 = load i32, i32* %start.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 %idxprom8
  store i32 %12, i32* %arrayidx9, align 4
  %15 = load i32*, i32** %nums.addr, align 8
  %16 = load i32, i32* %n.addr, align 4
  %17 = load i32, i32* %start.addr, align 4
  %add = add nsw i32 %17, 1
  call void @do_perm(i32* %15, i32 %16, i32 %add)
  %18 = load i8*, i8** @occupy, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom10
  store i8 0, i8* %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %if.then2
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinit() #0 {
entry:
  %0 = load i32*, i32** @ans, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #4
  %2 = load i8*, i8** @occupy, align 8
  call void @free(i8* %2) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %res = alloca i32**, align 8
  %ret = alloca i32, align 4
  %x = alloca [3 x i32], align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i32]* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.main.x to i8*), i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %x, i64 0, i64 0
  %call = call i32** @permuteUnique(i32* %arraydecay, i32 3, i32* %ret)
  store i32** %call, i32*** %res, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ans(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @p, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32**, i32*** @res, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %2, i64 %idxprom
  %4 = load i32*, i32** %arrayidx, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load i32*, i32** @ans, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 %conv, 4
  %call = call i32 @memcmp(i8* %5, i8* %7, i64 %mul) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load i32**, i32*** @res, align 8
  %tobool1 = icmp ne i32** %10, null
  br i1 %tobool1, label %if.end6, label %if.then2

if.then2:                                         ; preds = %for.end
  store i32 8, i32* @maxp, align 4
  %11 = load i32, i32* @maxp, align 4
  %conv3 = sext i32 %11 to i64
  %mul4 = mul i64 %conv3, 8
  %call5 = call noalias align 16 i8* @malloc(i64 %mul4) #4
  %12 = bitcast i8* %call5 to i32**
  store i32** %12, i32*** @res, align 8
  store i32 0, i32* @p, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %for.end
  %13 = load i32, i32* @p, align 4
  %14 = load i32, i32* @maxp, align 4
  %cmp7 = icmp sge i32 %13, %14
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* @maxp, align 4
  %add = add nsw i32 %15, 8
  store i32 %add, i32* @maxp, align 4
  %16 = load i32**, i32*** @res, align 8
  %17 = bitcast i32** %16 to i8*
  %18 = load i32, i32* @maxp, align 4
  %conv10 = sext i32 %18 to i64
  %mul11 = mul i64 %conv10, 8
  %call12 = call align 16 i8* @realloc(i8* %17, i64 %mul11) #4
  %19 = bitcast i8* %call12 to i32**
  store i32** %19, i32*** @res, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6
  %20 = load i32, i32* %n.addr, align 4
  %conv14 = sext i32 %20 to i64
  %mul15 = mul i64 %conv14, 4
  %call16 = call noalias align 16 i8* @malloc(i64 %mul15) #4
  %21 = bitcast i8* %call16 to i32*
  %22 = load i32**, i32*** @res, align 8
  %23 = load i32, i32* @p, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds i32*, i32** %22, i64 %idxprom17
  store i32* %21, i32** %arrayidx18, align 8
  %24 = load i32**, i32*** @res, align 8
  %25 = load i32, i32* @p, align 4
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds i32*, i32** %24, i64 %idxprom19
  %26 = load i32*, i32** %arrayidx20, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load i32*, i32** @ans, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load i32, i32* %n.addr, align 4
  %conv21 = sext i32 %30 to i64
  %mul22 = mul i64 %conv21, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %29, i64 %mul22, i1 false)
  %31 = load i32, i32* @p, align 4
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* @p, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
