; ModuleID = './code/365-17559sec_multmatrixseq.c'
source_filename = "./code/365-17559sec_multmatrixseq.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c"%.0lf \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.new_matrix = private unnamed_addr constant [11 x i8] c"new_matrix\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"365-17559sec_multmatrixseq.c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"m != NULL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Matrix1:\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Matrix2:\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Matrix3:\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_matrix(i32 noundef %size1, i32 noundef %size2, ptr noundef %matrix) #0 {
entry:
  %size1.addr = alloca i32, align 4
  %size2.addr = alloca i32, align 4
  %matrix.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %size1, ptr %size1.addr, align 4
  store i32 %size2, ptr %size2.addr, align 4
  store ptr %matrix, ptr %matrix.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %size2.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %matrix.addr, align 8
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %size2.addr, align 4
  %mul = mul nsw i32 %5, %6
  %7 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom
  %8 = load double, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %10 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end7:                                         ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @multiply(i32 noundef %size1, i32 noundef %size2, i32 noundef %size3, ptr noundef %matrix1, ptr noundef %matrix2, ptr noundef %result) #0 {
entry:
  %size1.addr = alloca i32, align 4
  %size2.addr = alloca i32, align 4
  %size3.addr = alloca i32, align 4
  %matrix1.addr = alloca ptr, align 8
  %matrix2.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca double, align 8
  store i32 %size1, ptr %size1.addr, align 4
  store i32 %size2, ptr %size2.addr, align 4
  store i32 %size3, ptr %size3.addr, align 4
  store ptr %matrix1, ptr %matrix1.addr, align 8
  store ptr %matrix2, ptr %matrix2.addr, align 8
  store ptr %result, ptr %result.addr, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, ptr %k, align 4
  %1 = load i32, ptr %size3.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.body
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %size1.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, ptr %sum, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %size2.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %matrix1.addr, align 8
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %size2.addr, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %9
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom
  %10 = load double, ptr %arrayidx, align 8
  %11 = load ptr, ptr %matrix2.addr, align 8
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %size3.addr, align 4
  %mul7 = mul nsw i32 %12, %13
  %14 = load i32, ptr %k, align 4
  %add8 = add nsw i32 %mul7, %14
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %11, i64 %idxprom9
  %15 = load double, ptr %arrayidx10, align 8
  %16 = load double, ptr %sum, align 8
  %17 = call double @llvm.fmuladd.f64(double %10, double %15, double %16)
  store double %17, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %18 = load i32, ptr %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond4, !llvm.loop !8

for.end:                                          ; preds = %for.cond4
  %19 = load double, ptr %sum, align 8
  %20 = load ptr, ptr %result.addr, align 8
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %size3.addr, align 4
  %mul12 = mul nsw i32 %21, %22
  %23 = load i32, ptr %k, align 4
  %add13 = add nsw i32 %mul12, %23
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds double, ptr %20, i64 %idxprom14
  store double %19, ptr %arrayidx15, align 8
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond1, !llvm.loop !9

for.end18:                                        ; preds = %for.cond1
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %25 = load i32, ptr %k, align 4
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, ptr %k, align 4
  br label %for.cond, !llvm.loop !10

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @new_matrix(i32 noundef %size1, i32 noundef %size2) #0 {
entry:
  %size1.addr = alloca i32, align 4
  %size2.addr = alloca i32, align 4
  %m = alloca ptr, align 8
  store i32 %size1, ptr %size1.addr, align 4
  store i32 %size2, ptr %size2.addr, align 4
  %0 = load i32, ptr %size1.addr, align 4
  %1 = load i32, ptr %size2.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 8
  %call = call ptr @malloc(i64 noundef %mul1) #5
  store ptr %call, ptr %m, align 8
  %2 = load ptr, ptr %m, align 8
  %cmp = icmp ne ptr %2, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv3 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.new_matrix, ptr noundef @.str.2, i32 noundef 41, ptr noundef @.str.3) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %m, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @free_matrix(ptr noundef %matrix) #0 {
entry:
  %matrix.addr = alloca ptr, align 8
  store ptr %matrix, ptr %matrix.addr, align 8
  %0 = load ptr, ptr %matrix.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %matrix.addr, align 8
  call void @free(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %matrix1 = alloca ptr, align 8
  %matrix2 = alloca ptr, align 8
  %result = alloca ptr, align 8
  %SIZE1 = alloca i32, align 4
  %SIZE2 = alloca i32, align 4
  %SIZE3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 3, ptr %SIZE1, align 4
  store i32 2, ptr %SIZE2, align 4
  store i32 3, ptr %SIZE3, align 4
  %call = call ptr @new_matrix(i32 noundef 3, i32 noundef 2)
  store ptr %call, ptr %matrix1, align 8
  %call1 = call ptr @new_matrix(i32 noundef 2, i32 noundef 3)
  store ptr %call1, ptr %matrix2, align 8
  %call2 = call ptr @new_matrix(i32 noundef 3, i32 noundef 3)
  store ptr %call2, ptr %result, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp4 = icmp slt i32 %1, 2
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %2 = load i32, ptr %i, align 4
  %conv = sitofp i32 %2 to double
  %3 = load ptr, ptr %matrix1, align 8
  %4 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %4, 2
  %5 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %idxprom
  store double %conv, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %6 = load i32, ptr %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !11

for.end:                                          ; preds = %for.cond3
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end8:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc25, %for.end8
  %8 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %8, 2
  br i1 %cmp10, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond9
  store i32 0, ptr %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.body12
  %9 = load i32, ptr %j, align 4
  %cmp14 = icmp slt i32 %9, 3
  br i1 %cmp14, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond13
  %10 = load i32, ptr %j, align 4
  %conv17 = sitofp i32 %10 to double
  %11 = load ptr, ptr %matrix2, align 8
  %12 = load i32, ptr %i, align 4
  %mul18 = mul nsw i32 %12, 3
  %13 = load i32, ptr %j, align 4
  %add19 = add nsw i32 %mul18, %13
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %11, i64 %idxprom20
  store double %conv17, ptr %arrayidx21, align 8
  br label %for.inc22

for.inc22:                                        ; preds = %for.body16
  %14 = load i32, ptr %j, align 4
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, ptr %j, align 4
  br label %for.cond13, !llvm.loop !13

for.end24:                                        ; preds = %for.cond13
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %15 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %15, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond9, !llvm.loop !14

for.end27:                                        ; preds = %for.cond9
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %16 = load ptr, ptr %matrix1, align 8
  call void @print_matrix(i32 noundef 3, i32 noundef 2, ptr noundef %16)
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %17 = load ptr, ptr %matrix2, align 8
  call void @print_matrix(i32 noundef 2, i32 noundef 3, ptr noundef %17)
  %18 = load ptr, ptr %matrix1, align 8
  %19 = load ptr, ptr %matrix2, align 8
  %20 = load ptr, ptr %result, align 8
  call void @multiply(i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef %18, ptr noundef %19, ptr noundef %20)
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %21 = load ptr, ptr %result, align 8
  call void @print_matrix(i32 noundef 3, i32 noundef 3, ptr noundef %21)
  %22 = load ptr, ptr %matrix1, align 8
  call void @free_matrix(ptr noundef %22)
  %23 = load ptr, ptr %matrix2, align 8
  call void @free_matrix(ptr noundef %23)
  %24 = load ptr, ptr %result, align 8
  call void @free_matrix(ptr noundef %24)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(0) }
attributes #6 = { cold noreturn }

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
