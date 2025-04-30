; ModuleID = 'code/135-7363segoddandeven.c'
source_filename = "code/135-7363segoddandeven.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__const.main.a = private unnamed_addr constant [10 x i32] [i32 2, i32 2, i32 2, i32 5, i32 8, i32 1, i32 1, i32 4, i32 1, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seg(i32* %a, i32 %n) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end26

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body4, %while.body
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %rem = srem i32 %5, 2
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %8 = phi i1 [ false, %while.cond1 ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body4, label %while.end

while.body4:                                      ; preds = %land.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %land.end
  br label %while.cond5

while.cond5:                                      ; preds = %while.body13, %while.end
  %10 = load i32*, i32** %a.addr, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %rem8 = srem i32 %12, 2
  %cmp9 = icmp eq i32 %rem8, 1
  br i1 %cmp9, label %land.rhs10, label %land.end12

land.rhs10:                                       ; preds = %while.cond5
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %13, %14
  br label %land.end12

land.end12:                                       ; preds = %land.rhs10, %while.cond5
  %15 = phi i1 [ false, %while.cond5 ], [ %cmp11, %land.rhs10 ]
  br i1 %15, label %while.body13, label %while.end14

while.body13:                                     ; preds = %land.end12
  %16 = load i32, i32* %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond5, !llvm.loop !6

while.end14:                                      ; preds = %land.end12
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.end14
  %19 = load i32*, i32** %a.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %19, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  store i32 %21, i32* %temp, align 4
  %22 = load i32*, i32** %a.addr, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %25 = load i32*, i32** %a.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %25, i64 %idxprom20
  store i32 %24, i32* %arrayidx21, align 4
  %27 = load i32, i32* %temp, align 4
  %28 = load i32*, i32** %a.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %28, i64 %idxprom22
  store i32 %27, i32* %arrayidx23, align 4
  %30 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, i32* %i, align 4
  %31 = load i32, i32* %j, align 4
  %dec25 = add nsw i32 %31, -1
  store i32 %dec25, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end14
  br label %while.cond, !llvm.loop !7

while.end26:                                      ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end26
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %32, %33
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32*, i32** %a.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %34, i64 %idxprom28
  %36 = load i32, i32* %arrayidx29, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.a to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 0
  call void @seg(i32* %arraydecay, i32 8)
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
