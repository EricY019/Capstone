; ModuleID = 'code/035-25137pr91190.c'
source_filename = "code/035-25137pr91190.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i8 0, align 1
@d = dso_local global i64 0, align 8
@g = dso_local global i32 0, align 4
@e = dso_local global [2 x i32] zeroinitializer, align 4
@h = dso_local global i64 0, align 8
@a = dso_local global [1 x i32] zeroinitializer, align 4
@c = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@f = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i8, align 1
  %l = alloca i32, align 4
  %m = alloca [2 x i64], align 16
  %n = alloca i64, align 8
  %b = alloca i8, align 1
  %j = alloca i8, align 1
  %o = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i8 0, i8* %k, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %entry
  %0 = load i8, i8* @i, align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i64, i64* @d, align 8
  %tobool1 = icmp ne i64 %1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %tobool1, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load i32, i32* @g, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.body4

while.body4:                                      ; preds = %if.then, %while.body4
  br label %while.body4

if.end:                                           ; preds = %while.body
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @e, i64 0, i64 1), align 4
  %4 = load i64, i64* @h, align 8
  %or = or i64 %4, 9
  %mul = mul nsw i64 %or, 2237420170
  %or5 = or i64 5, %mul
  %and = and i64 3, %or5
  %neg = xor i64 %and, -1
  store i64 %neg, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %mul6 = mul nsw i64 90, %5
  %conv7 = trunc i64 %mul6 to i32
  store i32 %conv7, i32* @g, align 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %m, i64 0, i64 300000000
  %6 = load i64, i64* %arrayidx, align 16
  %conv8 = trunc i64 %6 to i8
  store i8 %conv8, i8* %b, align 1
  store i8 0, i8* %j, align 1
  %7 = load i32, i32* @c, align 4
  %8 = load i8, i8* %b, align 1
  %conv9 = sext i8 %8 to i32
  %and10 = and i32 %conv9, 5
  %xor = xor i32 %7, %and10
  %idxprom = zext i32 %xor to i64
  %arrayidx11 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx11, align 4
  %xor12 = xor i32 5, %9
  store i32 %xor12, i32* @c, align 4
  %10 = load i64, i64* @d, align 8
  %conv13 = trunc i64 %10 to i32
  store i32 %conv13, i32* %o, align 4
  %11 = load i32, i32* %o, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i8, i8* %j, align 1
  %conv15 = sext i8 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %conv15, %cond.false ]
  %conv16 = trunc i32 %cond to i8
  store i8 %conv16, i8* %k, align 1
  %13 = load i8, i8* %k, align 1
  %tobool17 = icmp ne i8 %13, 0
  br i1 %tobool17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %cond.end
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then18
  %14 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %14, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx20 = getelementptr inbounds [2 x i64], [2 x i64]* %m, i64 0, i64 200000000000000000
  %15 = load i64, i64* %arrayidx20, align 16
  %tobool21 = icmp ne i64 %15, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  %16 = load i32, i32* @f, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %17 = load i32, i32* %l, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %cond.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
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
