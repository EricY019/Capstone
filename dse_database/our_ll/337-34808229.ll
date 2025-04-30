; ModuleID = 'code/337-34808229.c'
source_filename = "code/337-34808229.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.nums = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 2], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nums = alloca [8 x i32], align 16
  %numsSize = alloca i32, align 4
  %returnSize = alloca i32, align 4
  %value = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %nums to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.main.nums to i8*), i64 32, i1 false)
  store i32 8, i32* %numsSize, align 4
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %nums, i64 0, i64 0
  %1 = load i32, i32* %numsSize, align 4
  %call = call i32* @majorityElement(i32* %arraydecay, i32 %1, i32* %returnSize)
  store i32* %call, i32** %value, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %returnSize, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %value, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32*, i32** %value, align 8
  %9 = bitcast i32* %8 to i8*
  call void @free(i8* %9) #4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @majorityElement(i32* %nums, i32 %numsSize, i32* %returnSize) #0 {
entry:
  %retval = alloca i32*, align 8
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca i32*, align 8
  %result = alloca i32*, align 8
  %i = alloca i32, align 4
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %judge1 = alloca i32, align 4
  %judge2 = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  store i32* %returnSize, i32** %returnSize.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 8) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %result, align 8
  %1 = load i32, i32* %numsSize.addr, align 4
  %cmp = icmp sle i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %result, align 8
  %3 = bitcast i32* %2 to i8*
  %4 = load i32*, i32** %nums.addr, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load i32, i32* %numsSize.addr, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 4, %conv
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %5, i64 %mul, i1 false)
  %7 = load i32, i32* %numsSize.addr, align 4
  %8 = load i32*, i32** %returnSize.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32*, i32** %result, align 8
  store i32* %9, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32*, i32** %result, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 0
  store i32 0, i32* %arrayidx, align 4
  %11 = load i32*, i32** %result, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %arrayidx1, align 4
  store i32 0, i32* %count1, align 4
  store i32 0, i32* %count2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %numsSize.addr, align 4
  %cmp2 = icmp slt i32 %12, %13
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %result, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx4, align 4
  %16 = load i32*, i32** %nums.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %18 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %15, %18
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %19 = load i32, i32* %count1, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %count1, align 4
  br label %if.end35

if.else:                                          ; preds = %for.body
  %20 = load i32*, i32** %result, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx9, align 4
  %22 = load i32*, i32** %nums.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %22, i64 %idxprom10
  %24 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp eq i32 %21, %24
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  %25 = load i32, i32* %count2, align 4
  %inc15 = add nsw i32 %25, 1
  store i32 %inc15, i32* %count2, align 4
  br label %if.end34

if.else16:                                        ; preds = %if.else
  %26 = load i32, i32* %count1, align 4
  %cmp17 = icmp eq i32 %26, 0
  br i1 %cmp17, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.else16
  %27 = load i32*, i32** %nums.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  %29 = load i32, i32* %arrayidx21, align 4
  %30 = load i32*, i32** %result, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %arrayidx22, align 4
  store i32 1, i32* %count1, align 4
  br label %if.end33

if.else23:                                        ; preds = %if.else16
  %31 = load i32, i32* %count2, align 4
  %cmp24 = icmp eq i32 %31, 0
  br i1 %cmp24, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.else23
  %32 = load i32*, i32** %nums.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %32, i64 %idxprom27
  %34 = load i32, i32* %arrayidx28, align 4
  %35 = load i32*, i32** %result, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %arrayidx29, align 4
  store i32 1, i32* %count2, align 4
  br label %if.end32

if.else30:                                        ; preds = %if.else23
  %36 = load i32, i32* %count1, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %count1, align 4
  %37 = load i32, i32* %count2, align 4
  %dec31 = add nsw i32 %37, -1
  store i32 %dec31, i32* %count2, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then26
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then19
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then14
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then8
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %38 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %count1, align 4
  store i32 0, i32* %count2, align 4
  %39 = load i32*, i32** %result, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx37, align 4
  store i32 %40, i32* %a, align 4
  %41 = load i32*, i32** %result, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %41, i64 1
  %42 = load i32, i32* %arrayidx38, align 4
  store i32 %42, i32* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc58, %for.end
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %numsSize.addr, align 4
  %cmp40 = icmp slt i32 %43, %44
  br i1 %cmp40, label %for.body42, label %for.end60

for.body42:                                       ; preds = %for.cond39
  %45 = load i32, i32* %a, align 4
  %46 = load i32*, i32** %nums.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %47 to i64
  %arrayidx44 = getelementptr inbounds i32, i32* %46, i64 %idxprom43
  %48 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %45, %48
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %for.body42
  %49 = load i32, i32* %count1, align 4
  %inc48 = add nsw i32 %49, 1
  store i32 %inc48, i32* %count1, align 4
  br label %if.end57

if.else49:                                        ; preds = %for.body42
  %50 = load i32, i32* %b, align 4
  %51 = load i32*, i32** %nums.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds i32, i32* %51, i64 %idxprom50
  %53 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp eq i32 %50, %53
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.else49
  %54 = load i32, i32* %count2, align 4
  %inc55 = add nsw i32 %54, 1
  store i32 %inc55, i32* %count2, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.else49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then47
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %55 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %55, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond39, !llvm.loop !7

for.end60:                                        ; preds = %for.cond39
  %56 = load i32, i32* %count1, align 4
  %57 = load i32, i32* %numsSize.addr, align 4
  %div = sdiv i32 %57, 3
  %cmp61 = icmp sgt i32 %56, %div
  %conv62 = zext i1 %cmp61 to i32
  store i32 %conv62, i32* %judge1, align 4
  %58 = load i32, i32* %count2, align 4
  %59 = load i32, i32* %numsSize.addr, align 4
  %div63 = sdiv i32 %59, 3
  %cmp64 = icmp sgt i32 %58, %div63
  %conv65 = zext i1 %cmp64 to i32
  store i32 %conv65, i32* %judge2, align 4
  %60 = load i32, i32* %judge1, align 4
  %61 = load i32, i32* %judge2, align 4
  %add = add nsw i32 %60, %61
  %62 = load i32*, i32** %returnSize.addr, align 8
  store i32 %add, i32* %62, align 4
  %63 = load i32*, i32** %result, align 8
  %add.ptr = getelementptr inbounds i32, i32* %63, i64 1
  %64 = load i32, i32* %judge1, align 4
  %idx.ext = sext i32 %64 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr66 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.neg
  store i32* %add.ptr66, i32** %retval, align 8
  br label %return

return:                                           ; preds = %for.end60, %if.then
  %65 = load i32*, i32** %retval, align 8
  ret i32* %65
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
