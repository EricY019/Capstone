; ModuleID = './code/343-10337vprop-2.c'
source_filename = "./code/343-10337vprop-2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.test_0 = private unnamed_addr constant [7 x i8] c"test_0\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"343-10337vprop-2.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"b[i] == -2\00", align 1
@__func__.test_1 = private unnamed_addr constant [7 x i8] c"test_1\00", align 1
@__func__.test_2 = private unnamed_addr constant [7 x i8] c"test_2\00", align 1
@__func__.test_3 = private unnamed_addr constant [7 x i8] c"test_3\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_0() #0 {
entry:
  %b = alloca [100 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i8, align 1
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %j, align 1
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i8, ptr %j, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp slt i32 %conv, 5
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.body4
  %4 = load i32, ptr %i5, align 4
  %cmp7 = icmp ult i32 %4, 20
  br i1 %cmp7, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond6
  %5 = load i8, ptr %j, align 1
  %conv10 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv10, 20
  %6 = load i32, ptr %i5, align 4
  %add = add i32 %mul, %6
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 -2, ptr %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %7 = load i32, ptr %i5, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, ptr %i5, align 4
  br label %for.cond6, !llvm.loop !7

for.end15:                                        ; preds = %for.cond6
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %8 = load i8, ptr %j, align 1
  %inc17 = add i8 %8, 1
  store i8 %inc17, ptr %j, align 1
  br label %for.cond1, !llvm.loop !8

for.end18:                                        ; preds = %for.cond1
  store i32 0, ptr %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc29, %for.end18
  %9 = load i32, ptr %i19, align 4
  %cmp21 = icmp ult i32 %9, 100
  br i1 %cmp21, label %for.body23, label %for.end31

for.body23:                                       ; preds = %for.cond20
  %10 = load i32, ptr %i19, align 4
  %idxprom24 = zext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom24
  %11 = load i32, ptr %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, -2
  %lnot = xor i1 %cmp26, true
  %lnot.ext = zext i1 %lnot to i32
  %conv28 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv28, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  call void @__assert_rtn(ptr noundef @__func__.test_0, ptr noundef @.str, i32 noundef 31, ptr noundef @.str.1) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %12
  br label %for.inc29

for.inc29:                                        ; preds = %cond.end
  %13 = load i32, ptr %i19, align 4
  %inc30 = add i32 %13, 1
  store i32 %inc30, ptr %i19, align 4
  br label %for.cond20, !llvm.loop !9

for.end31:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_1() #0 {
entry:
  %b = alloca [100 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i8, align 1
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %j, align 1
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i8, ptr %j, align 1
  %conv = zext i8 %3 to i32
  %cmp2 = icmp slt i32 %conv, 5
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.body4
  %4 = load i32, ptr %i5, align 4
  %cmp7 = icmp ult i32 %4, 20
  br i1 %cmp7, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond6
  %5 = load i8, ptr %j, align 1
  %conv10 = zext i8 %5 to i32
  %mul = mul nsw i32 %conv10, 20
  %6 = load i32, ptr %i5, align 4
  %add = add i32 %mul, %6
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 -2, ptr %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %7 = load i32, ptr %i5, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, ptr %i5, align 4
  br label %for.cond6, !llvm.loop !11

for.end15:                                        ; preds = %for.cond6
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %8 = load i8, ptr %j, align 1
  %inc17 = add i8 %8, 1
  store i8 %inc17, ptr %j, align 1
  br label %for.cond1, !llvm.loop !12

for.end18:                                        ; preds = %for.cond1
  store i32 0, ptr %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc29, %for.end18
  %9 = load i32, ptr %i19, align 4
  %cmp21 = icmp ult i32 %9, 100
  br i1 %cmp21, label %for.body23, label %for.end31

for.body23:                                       ; preds = %for.cond20
  %10 = load i32, ptr %i19, align 4
  %idxprom24 = zext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom24
  %11 = load i32, ptr %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, -2
  %lnot = xor i1 %cmp26, true
  %lnot.ext = zext i1 %lnot to i32
  %conv28 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv28, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  call void @__assert_rtn(ptr noundef @__func__.test_1, ptr noundef @.str, i32 noundef 32, ptr noundef @.str.1) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %12
  br label %for.inc29

for.inc29:                                        ; preds = %cond.end
  %13 = load i32, ptr %i19, align 4
  %inc30 = add i32 %13, 1
  store i32 %inc30, ptr %i19, align 4
  br label %for.cond20, !llvm.loop !13

for.end31:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_2() #0 {
entry:
  %b = alloca [100 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i16, align 2
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  store i16 0, ptr %j, align 2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i16, ptr %j, align 2
  %conv = sext i16 %3 to i32
  %cmp2 = icmp slt i32 %conv, 5
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.body4
  %4 = load i32, ptr %i5, align 4
  %cmp7 = icmp ult i32 %4, 20
  br i1 %cmp7, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond6
  %5 = load i16, ptr %j, align 2
  %conv10 = sext i16 %5 to i32
  %mul = mul nsw i32 %conv10, 20
  %6 = load i32, ptr %i5, align 4
  %add = add i32 %mul, %6
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 -2, ptr %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %7 = load i32, ptr %i5, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, ptr %i5, align 4
  br label %for.cond6, !llvm.loop !15

for.end15:                                        ; preds = %for.cond6
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %8 = load i16, ptr %j, align 2
  %inc17 = add i16 %8, 1
  store i16 %inc17, ptr %j, align 2
  br label %for.cond1, !llvm.loop !16

for.end18:                                        ; preds = %for.cond1
  store i32 0, ptr %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc29, %for.end18
  %9 = load i32, ptr %i19, align 4
  %cmp21 = icmp ult i32 %9, 100
  br i1 %cmp21, label %for.body23, label %for.end31

for.body23:                                       ; preds = %for.cond20
  %10 = load i32, ptr %i19, align 4
  %idxprom24 = zext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom24
  %11 = load i32, ptr %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, -2
  %lnot = xor i1 %cmp26, true
  %lnot.ext = zext i1 %lnot to i32
  %conv28 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv28, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  call void @__assert_rtn(ptr noundef @__func__.test_2, ptr noundef @.str, i32 noundef 33, ptr noundef @.str.1) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %12
  br label %for.inc29

for.inc29:                                        ; preds = %cond.end
  %13 = load i32, ptr %i19, align 4
  %inc30 = add i32 %13, 1
  store i32 %inc30, ptr %i19, align 4
  br label %for.cond20, !llvm.loop !17

for.end31:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_3() #0 {
entry:
  %b = alloca [100 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i16, align 2
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i16 0, ptr %j, align 2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i16, ptr %j, align 2
  %conv = zext i16 %3 to i32
  %cmp2 = icmp slt i32 %conv, 5
  br i1 %cmp2, label %for.body4, label %for.end18

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.body4
  %4 = load i32, ptr %i5, align 4
  %cmp7 = icmp ult i32 %4, 20
  br i1 %cmp7, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond6
  %5 = load i16, ptr %j, align 2
  %conv10 = zext i16 %5 to i32
  %mul = mul nsw i32 %conv10, 20
  %6 = load i32, ptr %i5, align 4
  %add = add i32 %mul, %6
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 -2, ptr %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %7 = load i32, ptr %i5, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, ptr %i5, align 4
  br label %for.cond6, !llvm.loop !19

for.end15:                                        ; preds = %for.cond6
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %8 = load i16, ptr %j, align 2
  %inc17 = add i16 %8, 1
  store i16 %inc17, ptr %j, align 2
  br label %for.cond1, !llvm.loop !20

for.end18:                                        ; preds = %for.cond1
  store i32 0, ptr %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc29, %for.end18
  %9 = load i32, ptr %i19, align 4
  %cmp21 = icmp ult i32 %9, 100
  br i1 %cmp21, label %for.body23, label %for.end31

for.body23:                                       ; preds = %for.cond20
  %10 = load i32, ptr %i19, align 4
  %idxprom24 = zext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom24
  %11 = load i32, ptr %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, -2
  %lnot = xor i1 %cmp26, true
  %lnot.ext = zext i1 %lnot to i32
  %conv28 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv28, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  call void @__assert_rtn(ptr noundef @__func__.test_3, ptr noundef @.str, i32 noundef 34, ptr noundef @.str.1) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %12
  br label %for.inc29

for.inc29:                                        ; preds = %cond.end
  %13 = load i32, ptr %i19, align 4
  %inc30 = add i32 %13, 1
  store i32 %inc30, ptr %i19, align 4
  br label %for.cond20, !llvm.loop !21

for.end31:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @test_0()
  call void @test_1()
  call void @test_2()
  call void @test_3()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
