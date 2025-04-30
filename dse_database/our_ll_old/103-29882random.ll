; ModuleID = './code/103-29882random.c'
source_filename = "./code/103-29882random.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1
@gen_random.last = internal global i64 42, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %N = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 400000000, %cond.false ]
  %sub = sub nsw i32 %cond, 1
  store i32 %sub, ptr %N, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %3 = load i32, ptr %N, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %N, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call double @gen_random(double noundef 1.000000e+02)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call2 = call double @gen_random(double noundef 1.000000e+02)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %call2)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal double @gen_random(double noundef %max) #0 {
entry:
  %max.addr = alloca double, align 8
  store double %max, ptr %max.addr, align 8
  %0 = load i64, ptr @gen_random.last, align 8
  %mul = mul nsw i64 %0, 3877
  %add = add nsw i64 %mul, 29573
  %rem = srem i64 %add, 139968
  store i64 %rem, ptr @gen_random.last, align 8
  %1 = load double, ptr %max.addr, align 8
  %2 = load i64, ptr @gen_random.last, align 8
  %conv = sitofp i64 %2 to double
  %mul1 = fmul double %1, %conv
  %div = fdiv double %mul1, 1.399680e+05
  ret double %div
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
