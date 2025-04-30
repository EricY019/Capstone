; ModuleID = './code/056-1765divcon_sum_serial.c'
source_filename = "./code/056-1765divcon_sum_serial.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"error=%g\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Took %g s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @sum(ptr noundef %a, i64 noundef %n) #0 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %half = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8
  %cmp1 = icmp eq i64 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load double, ptr %2, align 8
  store double %3, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %n.addr, align 8
  %div = udiv i64 %4, 2
  store i64 %div, ptr %half, align 8
  %5 = load ptr, ptr %a.addr, align 8
  %6 = load i64, ptr %half, align 8
  %call = call double @sum(ptr noundef %5, i64 noundef %6)
  %7 = load ptr, ptr %a.addr, align 8
  %8 = load i64, ptr %half, align 8
  %add.ptr = getelementptr inbounds double, ptr %7, i64 %8
  %9 = load i64, ptr %n.addr, align 8
  %10 = load i64, ptr %half, align 8
  %sub = sub i64 %9, %10
  %call4 = call double @sum(ptr noundef %add.ptr, i64 noundef %sub)
  %add = fadd double %call, %call4
  store double %add, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca ptr, align 8
  %res = alloca double, align 8
  %kgo = alloca double, align 8
  %t_start = alloca i64, align 8
  %t_end = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 100000000, ptr %N, align 4
  %0 = load i32, ptr %N, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %list, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %N, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load ptr, ptr %list, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom
  store double %conv2, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call3 = call i64 @"\01_clock"()
  store i64 %call3, ptr %t_start, align 8
  %7 = load ptr, ptr %list, align 8
  %8 = load i32, ptr %N, align 4
  %conv4 = sext i32 %8 to i64
  %call5 = call double @sum(ptr noundef %7, i64 noundef %conv4)
  store double %call5, ptr %res, align 8
  %call6 = call i64 @"\01_clock"()
  store i64 %call6, ptr %t_end, align 8
  %9 = load i32, ptr %N, align 4
  %conv7 = sitofp i32 %9 to double
  %mul8 = fmul double 5.000000e-01, %conv7
  %10 = load i32, ptr %N, align 4
  %sub = sub nsw i32 %10, 1
  %conv9 = sitofp i32 %sub to double
  %mul10 = fmul double %mul8, %conv9
  store double %mul10, ptr %kgo, align 8
  %11 = load double, ptr %res, align 8
  %12 = load double, ptr %kgo, align 8
  %sub11 = fsub double %11, %12
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %sub11)
  %13 = load i64, ptr %t_end, align 8
  %14 = load i64, ptr %t_start, align 8
  %sub13 = sub i64 %13, %14
  %conv14 = uitofp i64 %sub13 to double
  %div = fdiv double %conv14, 1.000000e+06
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %div)
  %15 = load ptr, ptr %list, align 8
  call void @free(ptr noundef %15)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i64 @"\01_clock"() #2

declare i32 @printf(ptr noundef, ...) #2

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
