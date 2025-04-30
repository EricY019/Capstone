; ModuleID = 'code/046-2960646_permutations.c'
source_filename = "code/046-2960646_permutations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@res = internal global i32** null, align 8
@occupy = internal global [512 x i8] zeroinitializer, align 16
@maxp = internal global i32 0, align 4
@p = internal global i32 0, align 4
@__const.main.x = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@perm = internal global [512 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @permute(i32* %nums, i32 %numsSize, i32* %returnSize) #0 {
entry:
  %retval = alloca i32**, align 8
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca i32*, align 8
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  store i32* %returnSize, i32** %returnSize.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i32** null, i32*** @res, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([512 x i8], [512 x i8]* @occupy, i64 0, i64 0), i8 0, i64 512, i1 false)
  store i32 0, i32* @maxp, align 4
  store i32 0, i32* @p, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %numsSize.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %1 = load i32*, i32** %returnSize.addr, align 8
  store i32 0, i32* %1, align 4
  store i32** null, i32*** %retval, align 8
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load i32, i32* %numsSize.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %3 = load i32*, i32** %returnSize.addr, align 8
  store i32 1, i32* %3, align 4
  %call = call noalias align 16 i8* @malloc(i64 8) #6
  %4 = bitcast i8* %call to i32**
  store i32** %4, i32*** @res, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 4) #6
  %5 = bitcast i8* %call2 to i32*
  %6 = load i32**, i32*** @res, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %6, i64 0
  store i32* %5, i32** %arrayidx, align 8
  %7 = load i32*, i32** %nums.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx3, align 4
  %9 = load i32**, i32*** @res, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %9, i64 0
  %10 = load i32*, i32** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %8, i32* %arrayidx5, align 4
  %11 = load i32**, i32*** @res, align 8
  store i32** %11, i32*** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %12 = load i32*, i32** %nums.addr, align 8
  %13 = load i32, i32* %numsSize.addr, align 4
  call void @bktrack(i32* %12, i32 %13, i32 0)
  %14 = load i32, i32* @p, align 4
  %15 = load i32*, i32** %returnSize.addr, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32**, i32*** @res, align 8
  store i32** %16, i32*** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then1, %if.then
  %17 = load i32**, i32*** %retval, align 8
  ret i32** %17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bktrack(i32* %nums, i32 %n, i32 %lev) #0 {
entry:
  %nums.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %lev.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %lev, i32* %lev.addr, align 4
  %0 = load i32, i32* %lev.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %nums.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* getelementptr inbounds ([512 x i32], [512 x i32]* @perm, i64 0, i64 0), align 16
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [512 x i8], [512 x i8]* @occupy, i64 0, i64 %idxprom1
  store i8 1, i8* %arrayidx2, align 1
  %7 = load i32*, i32** %nums.addr, align 8
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32, i32* %lev.addr, align 4
  %add = add nsw i32 %9, 1
  call void @bktrack(i32* %7, i32 %8, i32 %add)
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [512 x i8], [512 x i8]* @occupy, i64 0, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %for.end45

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %lev.addr, align 4
  %13 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %13, 1
  %cmp5 = icmp eq i32 %12, %sub
  br i1 %cmp5, label %if.then6, label %if.end25

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc15, %if.then6
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n.addr, align 4
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond7
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [512 x i8], [512 x i8]* @occupy, i64 0, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1
  %tobool12 = icmp ne i8 %17, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %for.body9
  br label %for.end17

if.end14:                                         ; preds = %for.body9
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %18 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond7, !llvm.loop !6

for.end17:                                        ; preds = %if.then13, %for.cond7
  %19 = load i32*, i32** %nums.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %19, i64 %idxprom18
  %21 = load i32, i32* %arrayidx19, align 4
  %22 = load i32, i32* %lev.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [512 x i32], [512 x i32]* @perm, i64 0, i64 %idxprom20
  store i32 %21, i32* %arrayidx21, align 4
  %23 = load i32, i32* %n.addr, align 4
  %call = call i32 @avail(i32 %23)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end17
  %24 = load i32, i32* %n.addr, align 4
  call void @add_res(i32 %24)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end17
  br label %for.end45

if.end25:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc43, %if.end25
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %for.body28, label %for.end45

for.body28:                                       ; preds = %for.cond26
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [512 x i8], [512 x i8]* @occupy, i64 0, i64 %idxprom29
  %28 = load i8, i8* %arrayidx30, align 1
  %tobool31 = icmp ne i8 %28, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body28
  br label %for.inc43

if.end33:                                         ; preds = %for.body28
  %29 = load i32*, i32** %nums.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %29, i64 %idxprom34
  %31 = load i32, i32* %arrayidx35, align 4
  %32 = load i32, i32* %lev.addr, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [512 x i32], [512 x i32]* @perm, i64 0, i64 %idxprom36
  store i32 %31, i32* %arrayidx37, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds [512 x i8], [512 x i8]* @occupy, i64 0, i64 %idxprom38
  store i8 1, i8* %arrayidx39, align 1
  %34 = load i32*, i32** %nums.addr, align 8
  %35 = load i32, i32* %n.addr, align 4
  %36 = load i32, i32* %lev.addr, align 4
  %add40 = add nsw i32 %36, 1
  call void @bktrack(i32* %34, i32 %35, i32 %add40)
  %37 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %37 to i64
  %arrayidx42 = getelementptr inbounds [512 x i8], [512 x i8]* @occupy, i64 0, i64 %idxprom41
  store i8 0, i8* %arrayidx42, align 1
  br label %for.inc43

for.inc43:                                        ; preds = %if.end33, %if.then32
  %38 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %38, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond26, !llvm.loop !7

for.end45:                                        ; preds = %for.end, %if.end24, %for.cond26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32**, align 8
  %n = alloca i32, align 4
  %x = alloca [3 x i32], align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i32]* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.main.x to i8*), i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %x, i64 0, i64 0
  %call = call i32** @permute(i32* %arraydecay, i32 3, i32* %n)
  %1 = load i32, i32* %n, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avail(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @p, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32**, i32*** @res, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %2, i64 %idxprom
  %4 = load i32*, i32** %arrayidx, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %call = call i32 @memcmp(i8* %5, i8* bitcast ([512 x i32]* @perm to i8*), i64 %mul) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_res(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* @maxp, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 16, i32* @maxp, align 4
  %1 = load i32, i32* @maxp, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias align 16 i8* @malloc(i64 %mul) #6
  %2 = bitcast i8* %call to i32**
  store i32** %2, i32*** @res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @p, align 4
  %4 = load i32, i32* @maxp, align 4
  %cmp = icmp sge i32 %3, %4
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* @maxp, align 4
  %add = add nsw i32 %5, 16
  store i32 %add, i32* @maxp, align 4
  %6 = load i32**, i32*** @res, align 8
  %7 = bitcast i32** %6 to i8*
  %8 = load i32, i32* @maxp, align 4
  %conv3 = sext i32 %8 to i64
  %mul4 = mul i64 %conv3, 8
  %call5 = call align 16 i8* @realloc(i8* %7, i64 %mul4) #6
  %9 = bitcast i8* %call5 to i32**
  store i32** %9, i32*** @res, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %10 = load i32, i32* %n.addr, align 4
  %conv7 = sext i32 %10 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call noalias align 16 i8* @malloc(i64 %mul8) #6
  %11 = bitcast i8* %call9 to i32*
  %12 = load i32**, i32*** @res, align 8
  %13 = load i32, i32* @p, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %12, i64 %idxprom
  store i32* %11, i32** %arrayidx, align 8
  %14 = load i32**, i32*** @res, align 8
  %15 = load i32, i32* @p, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i32*, i32** %14, i64 %idxprom10
  %16 = load i32*, i32** %arrayidx11, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32, i32* %n.addr, align 4
  %conv12 = sext i32 %18 to i64
  %mul13 = mul i64 %conv12, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 16 bitcast ([512 x i32]* @perm to i8*), i64 %mul13, i1 false)
  %19 = load i32, i32* @p, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @p, align 4
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
