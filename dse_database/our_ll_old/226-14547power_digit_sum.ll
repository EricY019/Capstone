; ModuleID = './code/226-14547power_digit_sum.c'
source_filename = "./code/226-14547power_digit_sum.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"226-14547power_digit_sum.c\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"5 == power_digit_sum(5)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"26 == power_digit_sum(15)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"115 == power_digit_sum(100)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"679 == power_digit_sum(500)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"1366 == power_digit_sum(1000)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"2035 == power_digit_sum(1500)\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"2704 == power_digit_sum(2000)\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"3871 == power_digit_sum(3000)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @array_sum(ptr noundef %arr, i32 noundef %length) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %sum, align 4
  %3 = load ptr, ptr %arr.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %add = add nsw i32 %2, %5
  store i32 %add, ptr %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %sum, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @power_digit_sum(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %max_required_space = alloca i64, align 8
  %power = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double 3.500000e-01, %conv
  %1 = call double @llvm.ceil.f64(double %mul)
  %conv1 = fptoui double %1 to i64
  store i64 %conv1, ptr %max_required_space, align 8
  %2 = load i64, ptr %max_required_space, align 8
  %call = call ptr @calloc(i64 noundef %2, i64 noundef 4) #4
  store ptr %call, ptr %power, align 8
  %3 = load ptr, ptr %power, align 8
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 0
  store i32 1, ptr %arrayidx, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %power, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 0
  %7 = load i32, ptr %arrayidx3, align 4
  %mul4 = mul nsw i32 2, %7
  %8 = load ptr, ptr %power, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %8, i64 0
  store i32 %mul4, ptr %arrayidx5, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %k, align 4
  %conv7 = sext i32 %9 to i64
  %10 = load i64, ptr %max_required_space, align 8
  %cmp8 = icmp ult i64 %conv7, %10
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  %11 = load ptr, ptr %power, align 8
  %12 = load i32, ptr %k, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %11, i64 %idxprom
  %13 = load i32, ptr %arrayidx11, align 4
  %mul12 = mul nsw i32 2, %13
  %14 = load ptr, ptr %power, align 8
  %15 = load i32, ptr %k, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom13 = sext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %14, i64 %idxprom13
  %16 = load i32, ptr %arrayidx14, align 4
  %div = sdiv i32 %16, 10
  %add = add nsw i32 %mul12, %div
  %17 = load ptr, ptr %power, align 8
  %18 = load i32, ptr %k, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %17, i64 %idxprom15
  store i32 %add, ptr %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %19 = load i32, ptr %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond6, !llvm.loop !7

for.end:                                          ; preds = %for.cond6
  store i32 0, ptr %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.end
  %20 = load i32, ptr %j, align 4
  %conv18 = sext i32 %20 to i64
  %21 = load i64, ptr %max_required_space, align 8
  %cmp19 = icmp ult i64 %conv18, %21
  br i1 %cmp19, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond17
  %22 = load ptr, ptr %power, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %22, i64 %idxprom22
  %24 = load i32, ptr %arrayidx23, align 4
  %rem = srem i32 %24, 10
  %25 = load ptr, ptr %power, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %25, i64 %idxprom24
  store i32 %rem, ptr %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %27 = load i32, ptr %j, align 4
  %inc27 = add nsw i32 %27, 1
  store i32 %inc27, ptr %j, align 4
  br label %for.cond17, !llvm.loop !8

for.end28:                                        ; preds = %for.cond17
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %28 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %28, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end31:                                        ; preds = %for.cond
  %29 = load ptr, ptr %power, align 8
  %30 = load i64, ptr %max_required_space, align 8
  %conv32 = trunc i64 %30 to i32
  %call33 = call i32 @array_sum(ptr noundef %29, i32 noundef %conv32)
  ret i32 %call33
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @power_digit_sum(i32 noundef 5)
  %cmp = icmp eq i32 5, %call
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 46, ptr noundef @.str.1) #5
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %call1 = call i32 @power_digit_sum(i32 noundef 15)
  %cmp2 = icmp eq i32 26, %call1
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 47, ptr noundef @.str.2) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %1
  %call11 = call i32 @power_digit_sum(i32 noundef 100)
  %cmp12 = icmp eq i32 115, %call11
  %lnot14 = xor i1 %cmp12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 48, ptr noundef @.str.3) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %2
  %call21 = call i32 @power_digit_sum(i32 noundef 500)
  %cmp22 = icmp eq i32 679, %call21
  %lnot24 = xor i1 %cmp22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end20
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 49, ptr noundef @.str.4) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end20
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %3
  %call31 = call i32 @power_digit_sum(i32 noundef 1000)
  %cmp32 = icmp eq i32 1366, %call31
  %lnot34 = xor i1 %cmp32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end30
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 50, ptr noundef @.str.5) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end30
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %4
  %call41 = call i32 @power_digit_sum(i32 noundef 1500)
  %cmp42 = icmp eq i32 2035, %call41
  %lnot44 = xor i1 %cmp42, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = sext i32 %lnot.ext45 to i64
  %tobool47 = icmp ne i64 %conv46, 0
  br i1 %tobool47, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.end40
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 51, ptr noundef @.str.6) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end50

cond.false49:                                     ; preds = %cond.end40
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %5
  %call51 = call i32 @power_digit_sum(i32 noundef 2000)
  %cmp52 = icmp eq i32 2704, %call51
  %lnot54 = xor i1 %cmp52, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  %conv56 = sext i32 %lnot.ext55 to i64
  %tobool57 = icmp ne i64 %conv56, 0
  br i1 %tobool57, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %cond.end50
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 52, ptr noundef @.str.7) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end50
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %6
  %call61 = call i32 @power_digit_sum(i32 noundef 3000)
  %cmp62 = icmp eq i32 3871, %call61
  %lnot64 = xor i1 %cmp62, true
  %lnot.ext65 = zext i1 %lnot64 to i32
  %conv66 = sext i32 %lnot.ext65 to i64
  %tobool67 = icmp ne i64 %conv66, 0
  br i1 %tobool67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %cond.end60
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 53, ptr noundef @.str.8) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end70

cond.false69:                                     ; preds = %cond.end60
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %7
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0,1) }
attributes #5 = { cold noreturn }

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
