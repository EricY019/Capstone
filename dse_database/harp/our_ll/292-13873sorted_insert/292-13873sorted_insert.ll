; ModuleID = 'code/292-13873sorted_insert.c'
source_filename = "code/292-13873sorted_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"\0ABefore Insertion: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0AAfter Insertion: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insertSorted(i32* %array, i32 %n, i32 %key, i32 %capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %capacity.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %key, i32* %key.addr, align 4
  store i32 %capacity, i32* %capacity.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %capacity.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32*, i32** %array.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %key.addr, align 4
  %cmp1 = icmp sgt i32 %6, %7
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load i32*, i32** %array.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %13 = load i32*, i32** %array.addr, align 8
  %14 = load i32, i32* %i, align 4
  %add = add nsw i32 %14, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  store i32 %12, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %land.end
  %16 = load i32, i32* %key.addr, align 4
  %17 = load i32*, i32** %array.addr, align 8
  %18 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %18, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  store i32 %16, i32* %arrayidx9, align 4
  %19 = load i32, i32* %n.addr, align 4
  %add10 = add nsw i32 %19, 1
  store i32 %add10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [20 x i32], align 16
  %capacity = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %key = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [20 x i32]* %array to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 80, i1 false)
  %1 = bitcast i8* %0 to <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>*
  %2 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>* %1, i32 0, i32 0
  store i32 12, i32* %2, align 16
  %3 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>* %1, i32 0, i32 1
  store i32 16, i32* %3, align 4
  %4 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>* %1, i32 0, i32 2
  store i32 20, i32* %4, align 8
  %5 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>* %1, i32 0, i32 3
  store i32 40, i32* %5, align 4
  %6 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>* %1, i32 0, i32 4
  store i32 50, i32* %6, align 16
  %7 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [14 x i32] }>* %1, i32 0, i32 5
  store i32 70, i32* %7, align 4
  store i32 20, i32* %capacity, align 4
  store i32 6, i32* %n, align 4
  store i32 26, i32* %key, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %array, i64 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %array, i64 0, i64 0
  %13 = load i32, i32* %n, align 4
  %14 = load i32, i32* %key, align 4
  %15 = load i32, i32* %capacity, align 4
  %call2 = call i32 @insertSorted(i32* %arraydecay, i32 %13, i32 %14, i32 %15)
  store i32 %call2, i32* %n, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n, align 4
  %cmp5 = icmp slt i32 %16, %17
  br i1 %cmp5, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond4
  %18 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [20 x i32], [20 x i32]* %array, i64 0, i64 %idxprom7
  %19 = load i32, i32* %arrayidx8, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %20 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end12:                                        ; preds = %for.cond4
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
