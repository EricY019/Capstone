; ModuleID = './code/389-20762solution.c'
source_filename = "./code/389-20762solution.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@even_odd_digits.odd_digits = internal global [100001 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"Naive: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Lookup table: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @even_odd_digits() #0 {
entry:
  %res = alloca i32, align 4
  %i = alloca i64, align 8
  %mult = alloca i64, align 8
  store i32 0, ptr %res, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 100001
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %cmp1 = icmp ult i64 %1, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load i64, ptr %i, align 8
  %and = and i64 %3, 1
  %conv = trunc i64 %and to i32
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [100001 x i32], ptr @even_odd_digits.odd_digits, i64 0, i64 %4
  store i32 %conv, ptr %arrayidx, align 4
  %5 = load i64, ptr %i, align 8
  %arrayidx2 = getelementptr inbounds [100001 x i32], ptr @even_odd_digits.odd_digits, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx2, align 4
  %tobool = icmp ne i32 %6, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %7 = load i32, ptr %res, align 4
  %add = add i32 %7, %lnot.ext
  store i32 %add, ptr %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %land.end
  store i64 10, ptr %mult, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc28, %for.end
  %9 = load i64, ptr %mult, align 8
  %cmp4 = icmp ult i64 %9, 100001
  br i1 %cmp4, label %for.body6, label %for.end30

for.body6:                                        ; preds = %for.cond3
  %10 = load i64, ptr %mult, align 8
  store i64 %10, ptr %i, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.body6
  %11 = load i64, ptr %i, align 8
  %cmp8 = icmp ult i64 %11, 100001
  br i1 %cmp8, label %land.rhs10, label %land.end13

land.rhs10:                                       ; preds = %for.cond7
  %12 = load i64, ptr %i, align 8
  %13 = load i64, ptr %mult, align 8
  %mul = mul i64 %13, 10
  %cmp11 = icmp ult i64 %12, %mul
  br label %land.end13

land.end13:                                       ; preds = %land.rhs10, %for.cond7
  %14 = phi i1 [ false, %for.cond7 ], [ %cmp11, %land.rhs10 ]
  br i1 %14, label %for.body14, label %for.end27

for.body14:                                       ; preds = %land.end13
  %15 = load i64, ptr %i, align 8
  %16 = load i64, ptr %mult, align 8
  %rem = urem i64 %15, %16
  %arrayidx15 = getelementptr inbounds [100001 x i32], ptr @even_odd_digits.odd_digits, i64 0, i64 %rem
  %17 = load i32, ptr %arrayidx15, align 4
  %18 = load i64, ptr %i, align 8
  %19 = load i64, ptr %mult, align 8
  %div = udiv i64 %18, %19
  %arrayidx16 = getelementptr inbounds [100001 x i32], ptr @even_odd_digits.odd_digits, i64 0, i64 %div
  %20 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %17, %20
  %21 = load i64, ptr %i, align 8
  %arrayidx18 = getelementptr inbounds [100001 x i32], ptr @even_odd_digits.odd_digits, i64 0, i64 %21
  store i32 %add17, ptr %arrayidx18, align 4
  %22 = load i64, ptr %i, align 8
  %arrayidx19 = getelementptr inbounds [100001 x i32], ptr @even_odd_digits.odd_digits, i64 0, i64 %22
  %23 = load i32, ptr %arrayidx19, align 4
  %and20 = and i32 %23, 1
  %tobool21 = icmp ne i32 %and20, 0
  %lnot22 = xor i1 %tobool21, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %24 = load i32, ptr %res, align 4
  %add24 = add i32 %24, %lnot.ext23
  store i32 %add24, ptr %res, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body14
  %25 = load i64, ptr %i, align 8
  %inc26 = add i64 %25, 1
  store i64 %inc26, ptr %i, align 8
  br label %for.cond7, !llvm.loop !7

for.end27:                                        ; preds = %land.end13
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %26 = load i64, ptr %mult, align 8
  %mul29 = mul i64 %26, 10
  store i64 %mul29, ptr %mult, align 8
  br label %for.cond3, !llvm.loop !8

for.end30:                                        ; preds = %for.cond3
  %27 = load i32, ptr %res, align 4
  %sub = sub i32 %27, 1
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @even_odd_digits_naive() #0 {
entry:
  %res = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %odd_digits = alloca i32, align 4
  store i32 0, ptr %res, align 4
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 100001
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  store i64 %1, ptr %j, align 8
  store i32 0, ptr %odd_digits, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %2 = load i64, ptr %j, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %j, align 8
  %rem = urem i64 %3, 10
  %and = and i64 %rem, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, ptr %odd_digits, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %odd_digits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i64, ptr %j, align 8
  %div = udiv i64 %5, 10
  store i64 %div, ptr %j, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %odd_digits, align 4
  %and2 = and i32 %6, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %while.end
  %7 = load i32, ptr %res, align 4
  %inc5 = add i32 %7, 1
  store i32 %inc5, ptr %res, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %8 = load i64, ptr %i, align 8
  %inc7 = add i64 %8, 1
  store i64 %inc7, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %res, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @even_odd_digits_naive()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  %call2 = call i32 @even_odd_digits()
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call2)
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
