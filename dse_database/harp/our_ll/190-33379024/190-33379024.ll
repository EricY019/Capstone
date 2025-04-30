; ModuleID = 'code/190-33379024.c'
source_filename = "code/190-33379024.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.s = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_permutation(i32* %a, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %_ = alloca i32, align 4
  %_32 = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 -1, i32* %s, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %a.addr, align 8
  %6 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %k, align 4
  store i32 %8, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %s, align 4
  %cmp4 = icmp eq i32 %10, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %for.end
  store i32 0, i32* %l, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc17, %if.end6
  %11 = load i32, i32* %k, align 4
  %12 = load i32, i32* %len.addr, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body9, label %for.end19

for.body9:                                        ; preds = %for.cond7
  %13 = load i32*, i32** %a.addr, align 8
  %14 = load i32, i32* %s, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32*, i32** %a.addr, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %16, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp slt i32 %15, %18
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body9
  %19 = load i32, i32* %k, align 4
  store i32 %19, i32* %l, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body9
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %20 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %k, align 4
  br label %for.cond7, !llvm.loop !6

for.end19:                                        ; preds = %for.cond7
  br label %do.body

do.body:                                          ; preds = %for.end19
  %21 = load i32*, i32** %a.addr, align 8
  %22 = load i32, i32* %s, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %21, i64 %idxprom20
  %23 = load i32, i32* %arrayidx21, align 4
  store i32 %23, i32* %_, align 4
  %24 = load i32*, i32** %a.addr, align 8
  %25 = load i32, i32* %l, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %24, i64 %idxprom22
  %26 = load i32, i32* %arrayidx23, align 4
  %27 = load i32*, i32** %a.addr, align 8
  %28 = load i32, i32* %s, align 4
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %27, i64 %idxprom24
  store i32 %26, i32* %arrayidx25, align 4
  %29 = load i32, i32* %_, align 4
  %30 = load i32*, i32** %a.addr, align 8
  %31 = load i32, i32* %l, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %30, i64 %idxprom26
  store i32 %29, i32* %arrayidx27, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %32 = load i32, i32* %len.addr, align 4
  %sub28 = sub nsw i32 %32, 1
  store i32 %sub28, i32* %l, align 4
  %33 = load i32, i32* %s, align 4
  %add29 = add nsw i32 %33, 1
  store i32 %add29, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end41, %do.end
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %l, align 4
  %cmp30 = icmp slt i32 %34, %35
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body31

do.body31:                                        ; preds = %while.body
  %36 = load i32*, i32** %a.addr, align 8
  %37 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %36, i64 %idxprom33
  %38 = load i32, i32* %arrayidx34, align 4
  store i32 %38, i32* %_32, align 4
  %39 = load i32*, i32** %a.addr, align 8
  %40 = load i32, i32* %l, align 4
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %39, i64 %idxprom35
  %41 = load i32, i32* %arrayidx36, align 4
  %42 = load i32*, i32** %a.addr, align 8
  %43 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %43 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %42, i64 %idxprom37
  store i32 %41, i32* %arrayidx38, align 4
  %44 = load i32, i32* %_32, align 4
  %45 = load i32*, i32** %a.addr, align 8
  %46 = load i32, i32* %l, align 4
  %idxprom39 = sext i32 %46 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %45, i64 %idxprom39
  store i32 %44, i32* %arrayidx40, align 4
  br label %do.end41

do.end41:                                         ; preds = %do.body31
  %47 = load i32, i32* %k, align 4
  %inc42 = add nsw i32 %47, 1
  store i32 %inc42, i32* %k, align 4
  %48 = load i32, i32* %l, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %l, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then5
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [10 x i32], align 16
  %slen = alloca i32, align 4
  %perm = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.s to i8*), i64 40, i1 false)
  store i32 10, i32* %slen, align 4
  store i32 1, i32* %perm, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %s, i64 0, i64 0
  %1 = load i32, i32* %slen, align 4
  %call = call i32 @next_permutation(i32* %arraydecay, i32 %1)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i32, i32* %perm, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %perm, align 4
  %cmp = icmp slt i32 %inc, 1000000
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %slen, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %s, i64 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
!9 = distinct !{!9, !5}
