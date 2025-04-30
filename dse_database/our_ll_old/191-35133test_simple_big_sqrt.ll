; ModuleID = './code/191-35133test_simple_big_sqrt.c'
source_filename = "./code/191-35133test_simple_big_sqrt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [37 x i8] c"Math function sqrt of %lli is %Lf \0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Big sqrt mp of %lli is %lli \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Time taken: %f \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i64, align 8
  %x = alloca double, align 8
  %sqrt = alloca i64, align 8
  %starttime = alloca i64, align 8
  %i = alloca i64, align 8
  %endtime = alloca i64, align 8
  %runtimeinsecs = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 581170932765279684, ptr %n, align 8
  %0 = load i64, ptr %n, align 8
  %conv = sitofp i64 %0 to double
  %1 = call double @llvm.sqrt.f64(double %conv)
  store double %1, ptr %x, align 8
  %2 = load i64, ptr %n, align 8
  %3 = load double, ptr %x, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %2, double noundef %3)
  store i64 0, ptr %sqrt, align 8
  %call1 = call i64 @time(ptr noundef null)
  store i64 %call1, ptr %starttime, align 8
  store i64 2, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %i, align 8
  %5 = load i64, ptr %n, align 8
  %div = sdiv i64 %5, 2
  %cmp = icmp slt i64 %4, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %i, align 8
  %mul = mul nsw i64 %6, %7
  %8 = load i64, ptr %n, align 8
  %cmp3 = icmp eq i64 %mul, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  store i64 %9, ptr %sqrt, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, ptr %i, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  %call5 = call i64 @time(ptr noundef null)
  store i64 %call5, ptr %endtime, align 8
  %11 = load i64, ptr %endtime, align 8
  %12 = load i64, ptr %starttime, align 8
  %call6 = call double @difftime(i64 noundef %11, i64 noundef %12)
  store double %call6, ptr %runtimeinsecs, align 8
  %13 = load i64, ptr %n, align 8
  %14 = load i64, ptr %sqrt, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %13, i64 noundef %14)
  %15 = load double, ptr %runtimeinsecs, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %15)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

declare i32 @printf(ptr noundef, ...) #2

declare i64 @time(ptr noundef) #2

declare double @difftime(i64 noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
