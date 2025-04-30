; ModuleID = './code/234-27088bench.c'
source_filename = "./code/234-27088bench.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [14 x i8] c"Spec Time=,%d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcFuncCall() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 @foo()
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %2 = load i32, ptr %j, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %3 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %3, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end7:                                         ; preds = %for.cond
  %call8 = call i64 @"\01_clock"()
  store i64 %call8, ptr %endTim, align 8
  %4 = load i64, ptr %stTim, align 8
  %5 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %5, %4
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %6 = load i32, ptr %time_dd, align 4
  %cmp9 = icmp sgt i32 %6, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end7
  %7 = load i32, ptr %time_dd, align 4
  %conv = sext i32 %7 to i64
  %8 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %8, %conv
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end7
  %9 = load i64, ptr %endTim, align 8
  ret i64 %9
}

declare i64 @"\01_clock"() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcAdd() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store i32 0, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %a, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %a, align 4
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcSub() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store i32 100000, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %a, align 4
  %sub = sub nsw i32 %3, %2
  store i32 %sub, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %a, align 4
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub8 = sub nsw i64 %7, %6
  store i64 %sub8, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp9 = icmp sgt i32 %8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcMul() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store i32 0, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %a, align 4
  %mul = mul nsw i32 %3, %2
  store i32 %mul, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul9 = mul nsw i64 %10, %conv
  store i64 %mul9, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcDiv() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store i32 0, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10001
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %a, align 4
  %div = sdiv i32 %3, %2
  store i32 %div, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !14

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcShift() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store i32 0, ptr %a, align 4
  store i32 1, ptr %b, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %b, align 4
  %3 = load i32, ptr %a, align 4
  %shl = shl i32 %3, %2
  store i32 %shl, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !16

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %a, align 4
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !17

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcFloatAdd() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca float, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store float 0.000000e+00, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to float
  %3 = load float, ptr %a, align 4
  %add = fadd float %3, %conv
  store float %add, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond1
  store float 0.000000e+00, ptr %a, align 4
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv10 = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv10
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcFloatSub() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca float, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store float 1.000000e+05, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to float
  %3 = load float, ptr %a, align 4
  %sub = fsub float %3, %conv
  store float %sub, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  store float 0.000000e+00, ptr %a, align 4
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub8 = sub nsw i64 %7, %6
  store i64 %sub8, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp9 = icmp sgt i32 %8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv11 = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv11
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcFloatMul() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca float, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store float 0.000000e+00, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to float
  %3 = load float, ptr %a, align 4
  %mul = fmul float %3, %conv
  store float %mul, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !22

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv10 = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul11 = mul nsw i64 %10, %conv10
  store i64 %mul11, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcFloatDiv() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca float, align 4
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store float 0.000000e+00, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10001
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to float
  %3 = load float, ptr %a, align 4
  %div = fdiv float %3, %conv
  store float %div, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !24

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !25

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv10 = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv10
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcDoubleAdd() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca double, align 8
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store double 0.000000e+00, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, ptr %a, align 8
  %add = fadd double %3, %conv
  store double %add, ptr %a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !26

for.end:                                          ; preds = %for.cond1
  store double 0.000000e+00, ptr %a, align 8
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !27

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv10 = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv10
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcDoubleSub() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca double, align 8
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store double 1.000000e+05, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store double 1.000000e+04, ptr %a, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, ptr %a, align 8
  %sub = fsub double %3, %conv
  store double %sub, ptr %a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !28

for.end:                                          ; preds = %for.cond1
  store double 0.000000e+00, ptr %a, align 8
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !29

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub8 = sub nsw i64 %7, %6
  store i64 %sub8, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp9 = icmp sgt i32 %8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv11 = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv11
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcDoubleMul() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca double, align 8
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store double 0.000000e+00, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, ptr %a, align 8
  %mul = fmul double %3, %conv
  store double %mul, ptr %a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !30

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !31

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv10 = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul11 = mul nsw i64 %10, %conv10
  store i64 %mul11, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @calcDoubleDiv() #0 {
entry:
  %stTim = alloca i64, align 8
  %endTim = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca double, align 8
  %time_dd = alloca i32, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %stTim, align 8
  store double 0.000000e+00, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10001
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, ptr %a, align 8
  %div = fdiv double %3, %conv
  store double %div, ptr %a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !32

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !33

for.end6:                                         ; preds = %for.cond
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %endTim, align 8
  %6 = load i64, ptr %stTim, align 8
  %7 = load i64, ptr %endTim, align 8
  %sub = sub nsw i64 %7, %6
  store i64 %sub, ptr %endTim, align 8
  store i32 0, ptr %time_dd, align 4
  %8 = load i32, ptr %time_dd, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  %9 = load i32, ptr %time_dd, align 4
  %conv10 = sext i32 %9 to i64
  %10 = load i64, ptr %endTim, align 8
  %mul = mul nsw i64 %10, %conv10
  store i64 %mul, ptr %endTim, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6
  %11 = load i64, ptr %endTim, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %szStr = alloca [256 x i8], align 1
  %ctime = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ctime, align 4
  %0 = load i32, ptr %ctime, align 4
  %conv = sext i32 %0 to i64
  %call = call i64 @calcFuncCall()
  %add = add nsw i64 %conv, %call
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, ptr %ctime, align 4
  %1 = load i32, ptr %ctime, align 4
  %conv2 = sext i32 %1 to i64
  %call3 = call i64 @calcAdd()
  %add4 = add nsw i64 %conv2, %call3
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, ptr %ctime, align 4
  %2 = load i32, ptr %ctime, align 4
  %conv6 = sext i32 %2 to i64
  %call7 = call i64 @calcSub()
  %add8 = add nsw i64 %conv6, %call7
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, ptr %ctime, align 4
  %3 = load i32, ptr %ctime, align 4
  %conv10 = sext i32 %3 to i64
  %call11 = call i64 @calcMul()
  %add12 = add nsw i64 %conv10, %call11
  %conv13 = trunc i64 %add12 to i32
  store i32 %conv13, ptr %ctime, align 4
  %4 = load i32, ptr %ctime, align 4
  %conv14 = sext i32 %4 to i64
  %call15 = call i64 @calcDiv()
  %add16 = add nsw i64 %conv14, %call15
  %conv17 = trunc i64 %add16 to i32
  store i32 %conv17, ptr %ctime, align 4
  %5 = load i32, ptr %ctime, align 4
  %conv18 = sext i32 %5 to i64
  %call19 = call i64 @calcShift()
  %add20 = add nsw i64 %conv18, %call19
  %conv21 = trunc i64 %add20 to i32
  store i32 %conv21, ptr %ctime, align 4
  %6 = load i32, ptr %ctime, align 4
  %conv22 = sext i32 %6 to i64
  %call23 = call i64 @calcFloatAdd()
  %add24 = add nsw i64 %conv22, %call23
  %conv25 = trunc i64 %add24 to i32
  store i32 %conv25, ptr %ctime, align 4
  %7 = load i32, ptr %ctime, align 4
  %conv26 = sext i32 %7 to i64
  %call27 = call i64 @calcFloatSub()
  %add28 = add nsw i64 %conv26, %call27
  %conv29 = trunc i64 %add28 to i32
  store i32 %conv29, ptr %ctime, align 4
  %8 = load i32, ptr %ctime, align 4
  %conv30 = sext i32 %8 to i64
  %call31 = call i64 @calcFloatMul()
  %add32 = add nsw i64 %conv30, %call31
  %conv33 = trunc i64 %add32 to i32
  store i32 %conv33, ptr %ctime, align 4
  %9 = load i32, ptr %ctime, align 4
  %conv34 = sext i32 %9 to i64
  %call35 = call i64 @calcFloatDiv()
  %add36 = add nsw i64 %conv34, %call35
  %conv37 = trunc i64 %add36 to i32
  store i32 %conv37, ptr %ctime, align 4
  %10 = load i32, ptr %ctime, align 4
  %conv38 = sext i32 %10 to i64
  %call39 = call i64 @calcDoubleAdd()
  %add40 = add nsw i64 %conv38, %call39
  %conv41 = trunc i64 %add40 to i32
  store i32 %conv41, ptr %ctime, align 4
  %11 = load i32, ptr %ctime, align 4
  %conv42 = sext i32 %11 to i64
  %call43 = call i64 @calcDoubleSub()
  %add44 = add nsw i64 %conv42, %call43
  %conv45 = trunc i64 %add44 to i32
  store i32 %conv45, ptr %ctime, align 4
  %12 = load i32, ptr %ctime, align 4
  %conv46 = sext i32 %12 to i64
  %call47 = call i64 @calcDoubleMul()
  %add48 = add nsw i64 %conv46, %call47
  %conv49 = trunc i64 %add48 to i32
  store i32 %conv49, ptr %ctime, align 4
  %13 = load i32, ptr %ctime, align 4
  %conv50 = sext i32 %13 to i64
  %call51 = call i64 @calcDoubleDiv()
  %add52 = add nsw i64 %conv50, %call51
  %conv53 = trunc i64 %add52 to i32
  store i32 %conv53, ptr %ctime, align 4
  %14 = load i32, ptr %ctime, align 4
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %14)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
