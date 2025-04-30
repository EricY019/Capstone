; ModuleID = 'code/392-11095fast_union_slow_find.c'
source_filename = "code/392-11095fast_union_slow_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%d is the parent of 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeSet(i32* %S, i32 %size) #0 {
entry:
  %S.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %S, i32** %S.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %S.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find(i32* %S, i32 %size, i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %S.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32* %S, i32** %S.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32*, i32** %S.addr, align 8
  %4 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %x.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %x.addr, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load i32*, i32** %S.addr, align 8
  %9 = load i32, i32* %size.addr, align 4
  %10 = load i32*, i32** %S.addr, align 8
  %11 = load i32, i32* %x.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %call = call i32 @find(i32* %8, i32 %9, i32 %12)
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Union(i32* %S, i32 %root1, i32 %root2, i32 %size) #0 {
entry:
  %S.addr = alloca i32*, align 8
  %root1.addr = alloca i32, align 4
  %root2.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i32* %S, i32** %S.addr, align 8
  store i32 %root1, i32* %root1.addr, align 4
  store i32 %root2, i32* %root2.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32*, i32** %S.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load i32, i32* %root1.addr, align 4
  %call = call i32 @find(i32* %0, i32 %1, i32 %2)
  %3 = load i32*, i32** %S.addr, align 8
  %4 = load i32, i32* %size.addr, align 4
  %5 = load i32, i32* %root2.addr, align 4
  %call1 = call i32 @find(i32* %3, i32 %4, i32 %5)
  %cmp = icmp eq i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %root1.addr, align 4
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %root1.addr, align 4
  %8 = load i32, i32* %size.addr, align 4
  %cmp3 = icmp sgt i32 %7, %8
  br i1 %cmp3, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %9 = load i32, i32* %root2.addr, align 4
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %10 = load i32, i32* %root2.addr, align 4
  %11 = load i32, i32* %size.addr, align 4
  %cmp6 = icmp sgt i32 %10, %11
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %land.lhs.true
  br label %return

if.end8:                                          ; preds = %lor.lhs.false5, %lor.lhs.false
  %12 = load i32, i32* %root2.addr, align 4
  %13 = load i32*, i32** %S.addr, align 8
  %14 = load i32, i32* %root1.addr, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %12, i32* %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display(i32* %S, i32 %size) #0 {
entry:
  %S.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %S, i32** %S.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %S.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %S = alloca [8 x i32], align 16
  %p = alloca i32, align 4
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %S, i64 0, i64 0
  call void @makeSet(i32* %arraydecay, i32 8)
  %arraydecay1 = getelementptr inbounds [8 x i32], [8 x i32]* %S, i64 0, i64 0
  call void @Union(i32* %arraydecay1, i32 5, i32 6, i32 8)
  %arraydecay2 = getelementptr inbounds [8 x i32], [8 x i32]* %S, i64 0, i64 0
  call void @Union(i32* %arraydecay2, i32 1, i32 2, i32 8)
  %arraydecay3 = getelementptr inbounds [8 x i32], [8 x i32]* %S, i64 0, i64 0
  call void @Union(i32* %arraydecay3, i32 0, i32 2, i32 8)
  %arraydecay4 = getelementptr inbounds [8 x i32], [8 x i32]* %S, i64 0, i64 0
  call void @Union(i32* %arraydecay4, i32 2, i32 3, i32 8)
  %arraydecay5 = getelementptr inbounds [8 x i32], [8 x i32]* %S, i64 0, i64 0
  call void @display(i32* %arraydecay5, i32 8)
  %arraydecay6 = getelementptr inbounds [8 x i32], [8 x i32]* %S, i64 0, i64 0
  %call = call i32 @find(i32* %arraydecay6, i32 8, i32 0)
  store i32 %call, i32* %p, align 4
  %0 = load i32, i32* %p, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %0)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
