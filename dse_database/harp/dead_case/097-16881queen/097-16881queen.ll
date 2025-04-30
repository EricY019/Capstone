; ModuleID = 'code/097-16881queen.c'
source_filename = "code/097-16881queen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tot = dso_local global i32 0, align 4
@n = dso_local global i32 8, align 4
@nc = dso_local global i32 0, align 4
@C = dso_local global [50 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search(i32 %cur) #0 {
entry:
  %cur.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %cur, i32* %cur.addr, align 4
  %0 = load i32, i32* @nc, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @nc, align 4
  %1 = load i32, i32* %cur.addr, align 4
  %2 = load i32, i32* @n, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @n, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* @n, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [50 x i32], [50 x i32]* @C, i64 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [50 x i32], [50 x i32]* @C, i64 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %9, %11
  br i1 %cmp7, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body4
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [50 x i32], [50 x i32]* @C, i64 0, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  %sub = sub nsw i32 %12, %14
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [50 x i32], [50 x i32]* @C, i64 0, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %15, %17
  %cmp13 = icmp eq i32 %sub, %sub12
  br i1 %cmp13, label %if.then22, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [50 x i32], [50 x i32]* @C, i64 0, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4
  %add17 = add nsw i32 %18, %20
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [50 x i32], [50 x i32]* @C, i64 0, i64 %idxprom18
  %23 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %21, %23
  %cmp21 = icmp eq i32 %add17, %add20
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %for.body4
  br label %if.end37

if.end:                                           ; preds = %lor.lhs.false14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end26:                                        ; preds = %for.cond
  %26 = load i32, i32* @tot, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, i32* @tot, align 4
  br label %if.end37

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %if.else
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* @n, align 4
  %cmp29 = icmp slt i32 %27, %28
  br i1 %cmp29, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond28
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %cur.addr, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [50 x i32], [50 x i32]* @C, i64 0, i64 %idxprom31
  store i32 %29, i32* %arrayidx32, align 4
  %31 = load i32, i32* %cur.addr, align 4
  %add33 = add nsw i32 %31, 1
  call void @search(i32 %add33)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %32 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond28, !llvm.loop !7

for.end36:                                        ; preds = %for.cond28
  br label %if.end37

if.end37:                                         ; preds = %if.then22, %for.end36, %for.end26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @search(i32 0)
  %0 = load i32, i32* @tot, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0)
  %1 = load i32, i32* @nc, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

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
!7 = distinct !{!7, !5}
