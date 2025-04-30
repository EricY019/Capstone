; ModuleID = './code/367-20909ex05_38.c'
source_filename = "./code/367-20909ex05_38.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"fibonacciNR(%d) = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"fibonacciDubs(%d) = %.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 49
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %call = call i32 @fibonacciNR(i32 noundef %2)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1, i32 noundef %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %4, 1479
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %conv = sitofp i32 %6 to double
  %call5 = call double @fibonacciDubs(double noundef %conv)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5, double noundef %call5)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end9:                                         ; preds = %for.cond2
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @fibonacciNR(i32 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %fib = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 0, ptr %a, align 4
  store i32 1, ptr %b, align 4
  store i32 1, ptr %fib, align 4
  %0 = load i32, ptr %num.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %num.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %a, align 4
  %4 = load i32, ptr %b, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, ptr %fib, align 4
  %5 = load i32, ptr %b, align 4
  store i32 %5, ptr %a, align 4
  %6 = load i32, ptr %fib, align 4
  store i32 %6, ptr %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %fib, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @fibonacciDubs(double noundef %num) #0 {
entry:
  %retval = alloca double, align 8
  %num.addr = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %fib = alloca double, align 8
  %i = alloca i32, align 4
  store double %num, ptr %num.addr, align 8
  store double 0.000000e+00, ptr %a, align 8
  store double 1.000000e+00, ptr %b, align 8
  store double 1.000000e+00, ptr %fib, align 8
  %0 = load double, ptr %num.addr, align 8
  %cmp = fcmp oeq double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, ptr %num.addr, align 8
  %cmp1 = fcmp olt double %conv, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, ptr %a, align 8
  %4 = load double, ptr %b, align 8
  %add = fadd double %3, %4
  store double %add, ptr %fib, align 8
  %5 = load double, ptr %b, align 8
  store double %5, ptr %a, align 8
  %6 = load double, ptr %fib, align 8
  store double %6, ptr %b, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %8 = load double, ptr %fib, align 8
  store double %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load double, ptr %retval, align 8
  ret double %9
}

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
