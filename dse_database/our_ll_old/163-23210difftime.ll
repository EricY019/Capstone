; ModuleID = './code/163-23210difftime.c'
source_filename = "./code/163-23210difftime.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"i = %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"elapsed = %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %elapsed = alloca double, align 8
  %i = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  store i64 %call, ptr %start, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ne i64 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %3)
  %call3 = call i64 @time(ptr noundef null)
  store i64 %call3, ptr %end, align 8
  %4 = load i64, ptr %end, align 8
  %5 = load i64, ptr %start, align 8
  %call4 = call double @difftime(i64 noundef %4, i64 noundef %5)
  store double %call4, ptr %elapsed, align 8
  %6 = load double, ptr %elapsed, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %6)
  ret i32 0
}

declare i64 @time(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare double @difftime(i64 noundef, i64 noundef) #1

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
