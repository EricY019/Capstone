; ModuleID = './code/066-257536.c'
source_filename = "./code/066-257536.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [19 x i8] c"%d [in %f seconds]\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @solve() #0 {
entry:
  %sum = alloca i32, align 4
  %sum_of_squares = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sum_of_squares, align 4
  store i32 100, ptr %N, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %N, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %sum, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %sum, align 4
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, ptr %sum_of_squares, align 4
  %add1 = add nsw i32 %6, %mul
  store i32 %add1, ptr %sum_of_squares, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %sum_of_squares, align 4
  %9 = load i32, ptr %sum, align 4
  %10 = load i32, ptr %sum, align 4
  %mul2 = mul nsw i32 %9, %10
  %sub = sub nsw i32 %8, %mul2
  store i32 %sub, ptr %result, align 4
  %11 = load i32, ptr %result, align 4
  %cmp3 = icmp sgt i32 %11, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %12 = load i32, ptr %result, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %13 = load i32, ptr %result, align 4
  %sub4 = sub nsw i32 0, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %sub4, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %begin = alloca i64, align 8
  %result = alloca i32, align 4
  %end = alloca i64, align 8
  %time = alloca double, align 8
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %begin, align 8
  %call1 = call i32 @solve()
  store i32 %call1, ptr %result, align 4
  %call2 = call i64 @"\01_clock"()
  store i64 %call2, ptr %end, align 8
  %0 = load i64, ptr %end, align 8
  %1 = load i64, ptr %begin, align 8
  %sub = sub i64 %0, %1
  %conv = uitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, ptr %time, align 8
  %2 = load i32, ptr %result, align 4
  %3 = load double, ptr %time, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, double noundef %3)
  ret i32 0
}

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
