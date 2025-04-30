; ModuleID = './code/030-23137p073.c'
source_filename = "./code/030-23137p073.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %max = alloca i32, align 4
  %primes = alloca ptr, align 8
  %factors = alloca ptr, align 8
  %count = alloca i32, align 4
  %d = alloca i32, align 4
  %n = alloca i32, align 4
  %result = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 12000, ptr %max, align 4
  %call = call ptr @gen_primes(i32 noundef 12000)
  store ptr %call, ptr %primes, align 8
  %0 = load ptr, ptr %primes, align 8
  %call1 = call ptr @gen_factors(i32 noundef 12001, ptr noundef %0)
  store ptr %call1, ptr %factors, align 8
  store i32 0, ptr %count, align 4
  store i32 2, ptr %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %1 = load i32, ptr %d, align 4
  %cmp = icmp sle i32 %1, 12000
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %d, align 4
  %div = sdiv i32 %2, 3
  %add = add nsw i32 %div, 1
  store i32 %add, ptr %n, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %n, align 4
  %4 = load i32, ptr %d, align 4
  %sub = sub nsw i32 %4, 1
  %div3 = sdiv i32 %sub, 2
  %add4 = add nsw i32 %div3, 1
  %cmp5 = icmp slt i32 %3, %add4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %5 = load i32, ptr %n, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double 1.000000e+00, %conv
  %6 = load i32, ptr %d, align 4
  %conv7 = sitofp i32 %6 to double
  %div8 = fdiv double %mul, %conv7
  store double %div8, ptr %result, align 8
  %7 = load double, ptr %result, align 8
  %cmp9 = fcmp ogt double %7, 0x3FD5555555555555
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %8 = load double, ptr %result, align 8
  %cmp11 = fcmp olt double %8, 5.000000e-01
  br i1 %cmp11, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %9 = load i32, ptr %n, align 4
  %10 = load i32, ptr %d, align 4
  %11 = load ptr, ptr %factors, align 8
  %call14 = call i32 @relative_prime(i32 noundef %9, i32 noundef %10, ptr noundef %11)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true13
  %12 = load i32, ptr %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true13, %land.lhs.true, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %n, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, ptr %n, align 4
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %14 = load i32, ptr %d, align 4
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, ptr %d, align 4
  br label %for.cond, !llvm.loop !7

for.end18:                                        ; preds = %for.cond
  %15 = load i32, ptr %count, align 4
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @gen_primes(i32 noundef %max) #0 {
entry:
  %max.addr = alloca i32, align 4
  %primes = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %head = alloca ptr, align 8
  %curr = alloca ptr, align 8
  %i18 = alloca i32, align 4
  %n = alloca ptr, align 8
  store i32 %max, ptr %max.addr, align 4
  %0 = load i32, ptr %max.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call ptr @calloc(i64 noundef %conv, i64 noundef 4) #3
  store ptr %call, ptr %primes, align 8
  %1 = load ptr, ptr %primes, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  store i32 1, ptr %arrayidx, align 4
  %2 = load ptr, ptr %primes, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 1, ptr %arrayidx1, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end16, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %max.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %5, 2
  store i32 %mul, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %max.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %primes, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 %idxprom
  store i32 1, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %j, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, ptr %j, align 4
  br label %for.cond3, !llvm.loop !8

for.end:                                          ; preds = %for.cond3
  %12 = load i32, ptr %i, align 4
  %add8 = add nsw i32 %12, 1
  store i32 %add8, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %max.addr, align 4
  %cmp10 = icmp slt i32 %13, %14
  br i1 %cmp10, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond9
  %15 = load ptr, ptr %primes, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %15, i64 %idxprom13
  %17 = load i32, ptr %arrayidx14, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body12
  br label %for.end16

if.end:                                           ; preds = %for.body12
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond9, !llvm.loop !9

for.end16:                                        ; preds = %if.then, %for.cond9
  br label %for.cond, !llvm.loop !10

for.end17:                                        ; preds = %for.cond
  store ptr null, ptr %head, align 8
  store ptr null, ptr %curr, align 8
  store i32 0, ptr %i18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc32, %for.end17
  %19 = load i32, ptr %i18, align 4
  %20 = load i32, ptr %max.addr, align 4
  %cmp20 = icmp slt i32 %19, %20
  br i1 %cmp20, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond19
  %21 = load ptr, ptr %primes, align 8
  %22 = load i32, ptr %i18, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %21, i64 %idxprom23
  %23 = load i32, ptr %arrayidx24, align 4
  %tobool25 = icmp ne i32 %23, 0
  br i1 %tobool25, label %if.end31, label %if.then26

if.then26:                                        ; preds = %for.body22
  %call27 = call ptr @calloc(i64 noundef 1, i64 noundef 16) #3
  store ptr %call27, ptr %n, align 8
  %24 = load i32, ptr %i18, align 4
  %25 = load ptr, ptr %n, align 8
  %value = getelementptr inbounds %struct.node, ptr %25, i32 0, i32 0
  store i32 %24, ptr %value, align 8
  %26 = load ptr, ptr %head, align 8
  %tobool28 = icmp ne ptr %26, null
  br i1 %tobool28, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then26
  %27 = load ptr, ptr %n, align 8
  store ptr %27, ptr %head, align 8
  br label %if.end30

if.else:                                          ; preds = %if.then26
  %28 = load ptr, ptr %n, align 8
  %29 = load ptr, ptr %curr, align 8
  %next = getelementptr inbounds %struct.node, ptr %29, i32 0, i32 1
  store ptr %28, ptr %next, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %30 = load ptr, ptr %n, align 8
  store ptr %30, ptr %curr, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %for.body22
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %31 = load i32, ptr %i18, align 4
  %inc33 = add nsw i32 %31, 1
  store i32 %inc33, ptr %i18, align 4
  br label %for.cond19, !llvm.loop !11

for.end34:                                        ; preds = %for.cond19
  %32 = load ptr, ptr %primes, align 8
  call void @free(ptr noundef %32)
  %33 = load ptr, ptr %head, align 8
  ret ptr %33
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @gen_factors(i32 noundef %max, ptr noundef %primes) #0 {
entry:
  %max.addr = alloca i32, align 4
  %primes.addr = alloca ptr, align 8
  %factors = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %n_factors = alloca ptr, align 8
  %curr = alloca ptr, align 8
  %factor = alloca ptr, align 8
  store i32 %max, ptr %max.addr, align 4
  store ptr %primes, ptr %primes.addr, align 8
  %0 = load i32, ptr %max.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call ptr @calloc(i64 noundef %conv, i64 noundef 8) #3
  store ptr %call, ptr %factors, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %max.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  store i32 %3, ptr %n, align 4
  %4 = load ptr, ptr %factors, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %n_factors, align 8
  %7 = load ptr, ptr %primes.addr, align 8
  store ptr %7, ptr %curr, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load ptr, ptr %curr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %9 = load i32, ptr %n, align 4
  %10 = load ptr, ptr %curr, align 8
  %value = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %value, align 8
  %rem = srem i32 %9, %11
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.else15

if.then:                                          ; preds = %for.body3
  %12 = load ptr, ptr %curr, align 8
  %value6 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %value6, align 8
  %14 = load i32, ptr %n, align 4
  %div = sdiv i32 %14, %13
  store i32 %div, ptr %n, align 4
  %call7 = call ptr @calloc(i64 noundef 1, i64 noundef 16) #3
  store ptr %call7, ptr %factor, align 8
  %15 = load ptr, ptr %curr, align 8
  %value8 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %value8, align 8
  %17 = load ptr, ptr %factor, align 8
  %value9 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 0
  store i32 %16, ptr %value9, align 8
  %18 = load ptr, ptr %n_factors, align 8
  %cmp10 = icmp eq ptr %18, null
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %19 = load ptr, ptr %factor, align 8
  store ptr %19, ptr %n_factors, align 8
  %20 = load ptr, ptr %n_factors, align 8
  %21 = load ptr, ptr %factors, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %21, i64 %idxprom13
  store ptr %20, ptr %arrayidx14, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load ptr, ptr %factor, align 8
  %24 = load ptr, ptr %n_factors, align 8
  %next = getelementptr inbounds %struct.node, ptr %24, i32 0, i32 1
  store ptr %23, ptr %next, align 8
  %25 = load ptr, ptr %factor, align 8
  store ptr %25, ptr %n_factors, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  br label %if.end21

if.else15:                                        ; preds = %for.body3
  %26 = load ptr, ptr %curr, align 8
  %value16 = getelementptr inbounds %struct.node, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %value16, align 8
  %28 = load i32, ptr %n, align 4
  %cmp17 = icmp sgt i32 %27, %28
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else15
  br label %for.end

if.end20:                                         ; preds = %if.else15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %29 = load ptr, ptr %curr, align 8
  %next22 = getelementptr inbounds %struct.node, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %next22, align 8
  store ptr %30, ptr %curr, align 8
  br label %for.cond2, !llvm.loop !12

for.end:                                          ; preds = %if.then19, %for.cond2
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end24:                                        ; preds = %for.cond
  %32 = load ptr, ptr %factors, align 8
  ret ptr %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @relative_prime(i32 noundef %n, i32 noundef %d, ptr noundef %factors) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %factors.addr = alloca ptr, align 8
  %n_factor = alloca ptr, align 8
  %d_factor = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  store ptr %factors, ptr %factors.addr, align 8
  %0 = load ptr, ptr %factors.addr, align 8
  %1 = load i32, ptr %n.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %n_factor, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %3 = load ptr, ptr %n_factor, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %factors.addr, align 8
  %5 = load i32, ptr %d.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 %idxprom1
  %6 = load ptr, ptr %arrayidx2, align 8
  store ptr %6, ptr %d_factor, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load ptr, ptr %d_factor, align 8
  %tobool4 = icmp ne ptr %7, null
  br i1 %tobool4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %n_factor, align 8
  %value = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %value, align 8
  %10 = load ptr, ptr %d_factor, align 8
  %value6 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %value6, align 8
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %d_factor, align 8
  %next = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %next, align 8
  store ptr %13, ptr %d_factor, align 8
  br label %for.cond3, !llvm.loop !14

for.end:                                          ; preds = %for.cond3
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load ptr, ptr %n_factor, align 8
  %next8 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %next8, align 8
  store ptr %15, ptr %n_factor, align 8
  br label %for.cond, !llvm.loop !15

for.end9:                                         ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end9, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) }

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
