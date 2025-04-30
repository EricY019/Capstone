; ModuleID = 'code/115-30283pr71854.c'
source_filename = "code/115-30283pr71854.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = dso_local global i8 1, align 1
@c = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@e = dso_local global [8 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @foo(i16 signext %x) #0 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, i16* %x.addr, align 2
  %0 = load i16, i16* %x.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, i16* %x.addr, align 2
  %conv2 = sext i16 %1 to i32
  %2 = load i32, i32* @c, align 4
  %shr = ashr i32 %conv2, %2
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %3 = load i16, i16* %x.addr, align 2
  %conv3 = sext i16 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load i16, i16* %x.addr, align 2
  %conv4 = sext i16 %4 to i32
  %5 = load i32, i32* @c, align 4
  %shl = shl i32 %conv4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %shl, %cond.false ]
  %conv5 = trunc i32 %cond to i16
  ret i16 %conv5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i8, i8* @f, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i16 0, i16* @d, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i16, i16* @d, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp sle i32 %conv, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @b, align 4
  %shr = ashr i32 7, %2
  %tobool2 = icmp ne i32 %shr, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %3 = load i8, i8* @a, align 1
  %conv3 = sext i8 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load i8, i8* @a, align 1
  %conv4 = sext i8 %4 to i32
  %5 = load i32, i32* @b, align 4
  %shl = shl i32 %conv4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %shl, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  store i8 %conv5, i8* @f, align 1
  %6 = load i8, i8* @f, align 1
  %conv6 = sext i8 %6 to i16
  %call = call signext i16 @foo(i16 signext %conv6)
  %conv7 = sext i16 %call to i32
  %7 = load i16, i16* @d, align 2
  %idxprom = sext i16 %7 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @e, i64 0, i64 %idxprom
  store i32 %conv7, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %8 = load i16, i16* @d, align 2
  %inc = add i16 %8, 1
  store i16 %inc, i16* @d, align 2
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
