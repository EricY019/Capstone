; ModuleID = 'code/343-10337vprop-2.c'
source_filename = "code/343-10337vprop-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"b[i] == -2\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"code/343-10337vprop-2.c\00", align 1
@__PRETTY_FUNCTION__.test_0 = private unnamed_addr constant [14 x i8] c"void test_0()\00", align 1
@__PRETTY_FUNCTION__.test_1 = private unnamed_addr constant [14 x i8] c"void test_1()\00", align 1
@__PRETTY_FUNCTION__.test_2 = private unnamed_addr constant [14 x i8] c"void test_2()\00", align 1
@__PRETTY_FUNCTION__.test_3 = private unnamed_addr constant [14 x i8] c"void test_3()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_0() #0 {
entry:
  %b = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i8, align 1
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i8, i8* %j, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp slt i32 %conv, 5
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, i32* %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.body4
  %4 = load i32, i32* %i5, align 4
  %cmp7 = icmp ult i32 %4, 20
  br i1 %cmp7, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond6
  %5 = load i8, i8* %j, align 1
  %conv10 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv10, 20
  %6 = load i32, i32* %i5, align 4
  %add = add i32 %mul, %6
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom11
  store i32 -2, i32* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %7 = load i32, i32* %i5, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, i32* %i5, align 4
  br label %for.cond6, !llvm.loop !6

for.end15:                                        ; preds = %for.cond6
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %8 = load i8, i8* %j, align 1
  %inc17 = add i8 %8, 1
  store i8 %inc17, i8* %j, align 1
  br label %for.cond1, !llvm.loop !7

for.end18:                                        ; preds = %for.cond1
  store i32 0, i32* %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end18
  %9 = load i32, i32* %i19, align 4
  %cmp21 = icmp ult i32 %9, 100
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %10 = load i32, i32* %i19, align 4
  %idxprom24 = zext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom24
  %11 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, -2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__PRETTY_FUNCTION__.test_0, i64 0, i64 0)) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %12, %cond.true
  br label %for.inc28

for.inc28:                                        ; preds = %cond.end
  %13 = load i32, i32* %i19, align 4
  %inc29 = add i32 %13, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond20, !llvm.loop !8

for.end30:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_1() #0 {
entry:
  %b = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i8, align 1
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i8, i8* %j, align 1
  %conv = zext i8 %3 to i32
  %cmp2 = icmp slt i32 %conv, 5
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, i32* %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.body4
  %4 = load i32, i32* %i5, align 4
  %cmp7 = icmp ult i32 %4, 20
  br i1 %cmp7, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond6
  %5 = load i8, i8* %j, align 1
  %conv10 = zext i8 %5 to i32
  %mul = mul nsw i32 %conv10, 20
  %6 = load i32, i32* %i5, align 4
  %add = add i32 %mul, %6
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom11
  store i32 -2, i32* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %7 = load i32, i32* %i5, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, i32* %i5, align 4
  br label %for.cond6, !llvm.loop !10

for.end15:                                        ; preds = %for.cond6
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %8 = load i8, i8* %j, align 1
  %inc17 = add i8 %8, 1
  store i8 %inc17, i8* %j, align 1
  br label %for.cond1, !llvm.loop !11

for.end18:                                        ; preds = %for.cond1
  store i32 0, i32* %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end18
  %9 = load i32, i32* %i19, align 4
  %cmp21 = icmp ult i32 %9, 100
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %10 = load i32, i32* %i19, align 4
  %idxprom24 = zext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom24
  %11 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, -2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__PRETTY_FUNCTION__.test_1, i64 0, i64 0)) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %12, %cond.true
  br label %for.inc28

for.inc28:                                        ; preds = %cond.end
  %13 = load i32, i32* %i19, align 4
  %inc29 = add i32 %13, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond20, !llvm.loop !12

for.end30:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_2() #0 {
entry:
  %b = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i16, align 2
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i16, i16* %j, align 2
  %conv = sext i16 %3 to i32
  %cmp2 = icmp slt i32 %conv, 5
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, i32* %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.body4
  %4 = load i32, i32* %i5, align 4
  %cmp7 = icmp ult i32 %4, 20
  br i1 %cmp7, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond6
  %5 = load i16, i16* %j, align 2
  %conv10 = sext i16 %5 to i32
  %mul = mul nsw i32 %conv10, 20
  %6 = load i32, i32* %i5, align 4
  %add = add i32 %mul, %6
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom11
  store i32 -2, i32* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %7 = load i32, i32* %i5, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, i32* %i5, align 4
  br label %for.cond6, !llvm.loop !14

for.end15:                                        ; preds = %for.cond6
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %8 = load i16, i16* %j, align 2
  %inc17 = add i16 %8, 1
  store i16 %inc17, i16* %j, align 2
  br label %for.cond1, !llvm.loop !15

for.end18:                                        ; preds = %for.cond1
  store i32 0, i32* %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end18
  %9 = load i32, i32* %i19, align 4
  %cmp21 = icmp ult i32 %9, 100
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %10 = load i32, i32* %i19, align 4
  %idxprom24 = zext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom24
  %11 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, -2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__PRETTY_FUNCTION__.test_2, i64 0, i64 0)) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %12, %cond.true
  br label %for.inc28

for.inc28:                                        ; preds = %cond.end
  %13 = load i32, i32* %i19, align 4
  %inc29 = add i32 %13, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond20, !llvm.loop !16

for.end30:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_3() #0 {
entry:
  %b = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i16, align 2
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i16, i16* %j, align 2
  %conv = zext i16 %3 to i32
  %cmp2 = icmp slt i32 %conv, 5
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, i32* %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.body4
  %4 = load i32, i32* %i5, align 4
  %cmp7 = icmp ult i32 %4, 20
  br i1 %cmp7, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond6
  %5 = load i16, i16* %j, align 2
  %conv10 = zext i16 %5 to i32
  %mul = mul nsw i32 %conv10, 20
  %6 = load i32, i32* %i5, align 4
  %add = add i32 %mul, %6
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom11
  store i32 -2, i32* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %7 = load i32, i32* %i5, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, i32* %i5, align 4
  br label %for.cond6, !llvm.loop !18

for.end15:                                        ; preds = %for.cond6
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %8 = load i16, i16* %j, align 2
  %inc17 = add i16 %8, 1
  store i16 %inc17, i16* %j, align 2
  br label %for.cond1, !llvm.loop !19

for.end18:                                        ; preds = %for.cond1
  store i32 0, i32* %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end18
  %9 = load i32, i32* %i19, align 4
  %cmp21 = icmp ult i32 %9, 100
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %10 = load i32, i32* %i19, align 4
  %idxprom24 = zext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom24
  %11 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, -2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__PRETTY_FUNCTION__.test_3, i64 0, i64 0)) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %12, %cond.true
  br label %for.inc28

for.inc28:                                        ; preds = %cond.end
  %13 = load i32, i32* %i19, align 4
  %inc29 = add i32 %13, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond20, !llvm.loop !20

for.end30:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @test_0()
  call void @test_1()
  call void @test_2()
  call void @test_3()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
