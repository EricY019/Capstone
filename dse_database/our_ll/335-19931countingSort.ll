; ModuleID = 'code/335-19931countingSort.c'
source_filename = "code/335-19931countingSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.vector = private unnamed_addr constant [6 x i32] [i32 20, i32 12, i32 7, i32 2, i32 10, i32 35], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @countingSort(i32* %vector, i32 %len, i32 %maxElement) #0 {
entry:
  %vector.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %maxElement.addr = alloca i32, align 4
  %count = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %vector, i32** %vector.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %maxElement, i32* %maxElement.addr, align 4
  %0 = load i32, i32* %maxElement.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %count, align 8
  %2 = load i32*, i32** %count, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %count, align 8
  %6 = load i32*, i32** %vector.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %5, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc18, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %len.addr, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body10, label %for.end20

for.body10:                                       ; preds = %for.cond7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body10
  %13 = load i32*, i32** %count, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %13, i64 %idxprom11
  %15 = load i32, i32* %arrayidx12, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %arrayidx12, align 4
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %j, align 4
  %17 = load i32*, i32** %vector.addr, align 8
  %18 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %18, 1
  store i32 %inc15, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i64 %idxprom16
  store i32 %16, i32* %arrayidx17, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %for.inc18

for.inc18:                                        ; preds = %while.end
  %19 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond7, !llvm.loop !7

for.end20:                                        ; preds = %for.cond7
  %20 = load i32*, i32** %count, align 8
  %21 = bitcast i32* %20 to i8*
  call void @free(i8* %21) #4
  br label %return

return:                                           ; preds = %for.end20, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %vector = alloca [6 x i32], align 16
  %len = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %vector to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.vector to i8*), i64 24, i1 false)
  store i32 6, i32* %len, align 4
  store i32 35, i32* %max, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %vector, i64 0, i64 0
  %1 = load i32, i32* %len, align 4
  %2 = load i32, i32* %max, align 4
  call void @countingSort(i32* %arraydecay, i32 %1, i32 %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %vector, i64 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
