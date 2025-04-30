; ModuleID = './code/195-26584fibonacci.c'
source_filename = "./code/195-26584fibonacci.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [31 x i8] c"single execution time: %.2g s\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"fib(%d) = %d  [average execution time: %.2g s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @compute_fibonacci(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %a, align 4
  store i32 %2, ptr %temp, align 4
  %3 = load i32, ptr %b, align 4
  %4 = load i32, ptr %a, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %a, align 4
  %5 = load i32, ptr %temp, align 4
  store i32 %5, ptr %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %a, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %number_of_times = alloca i32, align 4
  %fib_n = alloca i32, align 4
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %single_time = alloca double, align 8
  %time_spent = alloca double, align 8
  %i = alloca i32, align 4
  %avg_time = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store volatile i32 20, ptr %n, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  store volatile i32 %call, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 100000, ptr %number_of_times, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  store i32 %call4, ptr %number_of_times, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load volatile i32, ptr %n, align 4
  %call6 = call i32 @compute_fibonacci(i32 noundef %6)
  store i32 %call6, ptr %fib_n, align 4
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %begin, align 8
  %7 = load volatile i32, ptr %n, align 4
  %call8 = call i32 @compute_fibonacci(i32 noundef %7)
  %call9 = call i64 @"\01_clock"()
  store i64 %call9, ptr %end, align 8
  %8 = load i64, ptr %end, align 8
  %9 = load i64, ptr %begin, align 8
  %sub = sub i64 %8, %9
  %conv = uitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, ptr %single_time, align 8
  %10 = load double, ptr %single_time, align 8
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %10)
  store double 0.000000e+00, ptr %time_spent, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %number_of_times, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call13 = call i64 @"\01_clock"()
  store i64 %call13, ptr %begin, align 8
  %13 = load volatile i32, ptr %n, align 4
  %call14 = call i32 @compute_fibonacci(i32 noundef %13)
  %call15 = call i64 @"\01_clock"()
  store i64 %call15, ptr %end, align 8
  %14 = load i64, ptr %end, align 8
  %15 = load i64, ptr %begin, align 8
  %sub16 = sub i64 %14, %15
  %conv17 = uitofp i64 %sub16 to double
  %div18 = fdiv double %conv17, 1.000000e+06
  %16 = load double, ptr %time_spent, align 8
  %add = fadd double %16, %div18
  store double %add, ptr %time_spent, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %18 = load double, ptr %time_spent, align 8
  %19 = load i32, ptr %number_of_times, align 4
  %conv19 = sitofp i32 %19 to double
  %div20 = fdiv double %18, %conv19
  store double %div20, ptr %avg_time, align 8
  %20 = load volatile i32, ptr %n, align 4
  %21 = load i32, ptr %fib_n, align 4
  %22 = load double, ptr %avg_time, align 8
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %20, i32 noundef %21, double noundef %22)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #1

declare i64 @"\01_clock"() #1

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
