; ModuleID = 'code/079-28474tst_pxt1.c'
source_filename = "code/079-28474tst_pxt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%03X, \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pxt = alloca [4096 x i32], align 16
  %pxd = alloca [4096 x i32], align 16
  %cvx = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 16
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 16
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 16
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %4
  %mul7 = mul nsw i32 %add, 16
  %5 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %mul7, %5
  store i32 %add8, i32* %l, align 4
  %6 = load i32, i32* %l, align 4
  %7 = load i32, i32* %l, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxt, i64 0, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 %8, %9
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %j, align 4
  %mul10 = mul nsw i32 %10, %11
  %add11 = add nsw i32 %mul9, %mul10
  %12 = load i32, i32* %k, align 4
  %13 = load i32, i32* %k, align 4
  %mul12 = mul nsw i32 %12, %13
  %add13 = add nsw i32 %add11, %mul12
  %14 = load i32, i32* %l, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxd, i64 0, i64 %idxprom14
  store i32 %add13, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %16 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end18:                                        ; preds = %for.cond1
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %17 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end21:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc53, %for.end21
  %18 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %18, 4096
  br i1 %cmp23, label %for.body24, label %for.end55

for.body24:                                       ; preds = %for.cond22
  %19 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %19, 1
  store i32 %add25, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc50, %for.body24
  %20 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %20, 4096
  br i1 %cmp27, label %for.body28, label %for.end52

for.body28:                                       ; preds = %for.cond26
  %21 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxd, i64 0, i64 %idxprom29
  %22 = load i32, i32* %arrayidx30, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxd, i64 0, i64 %idxprom31
  %24 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp slt i32 %22, %24
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %for.body28
  %25 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxt, i64 0, i64 %idxprom34
  %26 = load i32, i32* %arrayidx35, align 4
  store i32 %26, i32* %k, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxt, i64 0, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxt, i64 0, i64 %idxprom38
  store i32 %28, i32* %arrayidx39, align 4
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxt, i64 0, i64 %idxprom40
  store i32 %30, i32* %arrayidx41, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxd, i64 0, i64 %idxprom42
  %33 = load i32, i32* %arrayidx43, align 4
  store i32 %33, i32* %k, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %34 to i64
  %arrayidx45 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxd, i64 0, i64 %idxprom44
  %35 = load i32, i32* %arrayidx45, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxd, i64 0, i64 %idxprom46
  store i32 %35, i32* %arrayidx47, align 4
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %38 to i64
  %arrayidx49 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxd, i64 0, i64 %idxprom48
  store i32 %37, i32* %arrayidx49, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body28
  br label %for.inc50

for.inc50:                                        ; preds = %if.end
  %39 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %39, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond26, !llvm.loop !8

for.end52:                                        ; preds = %for.cond26
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %40 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %40, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond22, !llvm.loop !9

for.end55:                                        ; preds = %for.cond22
  store i32 0, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc65, %for.end55
  %41 = load i32, i32* %i, align 4
  %cmp57 = icmp slt i32 %41, 4096
  br i1 %cmp57, label %for.body58, label %for.end67

for.body58:                                       ; preds = %for.cond56
  %42 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %land.lhs.true, label %if.end61

land.lhs.true:                                    ; preds = %for.body58
  %43 = load i32, i32* %i, align 4
  %and = and i32 %43, 7
  %tobool59 = icmp ne i32 %and, 0
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %land.lhs.true, %for.body58
  %44 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %44 to i64
  %arrayidx63 = getelementptr inbounds [4096 x i32], [4096 x i32]* %pxt, i64 0, i64 %idxprom62
  %45 = load i32, i32* %arrayidx63, align 4
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %for.inc65

for.inc65:                                        ; preds = %if.end61
  %46 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %46, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond56, !llvm.loop !10

for.end67:                                        ; preds = %for.cond56
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
