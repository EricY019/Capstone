; ModuleID = './code/085-13559time_diff7.c'
source_filename = "./code/085-13559time_diff7.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Time to do %ld empty loops is \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%lf seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %finish = alloca i64, align 8
  %duration = alloca double, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %start, align 8
  %call1 = call i32 @"\01_sleep"(i32 noundef 3)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp slt i64 %0, 100
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i64, ptr %j, align 8
  %cmp3 = icmp slt i64 %1, 10
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %call5 = call i32 @"\01_system"(ptr noundef @.str)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %2 = load i64, ptr %j, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %3 = load i64, ptr %i, align 8
  %inc7 = add nsw i64 %3, 1
  store i64 %inc7, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  %call9 = call i64 @"\01_clock"()
  store i64 %call9, ptr %finish, align 8
  %4 = load i64, ptr %finish, align 8
  %5 = load i64, ptr %start, align 8
  %sub = sub i64 %4, %5
  %conv = uitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, ptr %duration, align 8
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %j, align 8
  %mul = mul nsw i64 %6, %7
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %mul)
  %8 = load double, ptr %duration, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %8)
  ret i32 0
}

declare i64 @"\01_clock"() #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @"\01_system"(ptr noundef) #1

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
