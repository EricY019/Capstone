; ModuleID = './code/299-7473code21.c'
source_filename = "./code/299-7473code21.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"delay for 5 seconds.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Finished delay.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %current = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef %start)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call2 = call i64 @time(ptr noundef %current)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i64, ptr %current, align 8
  %1 = load i64, ptr %start, align 8
  %call3 = call double @difftime(i64 noundef %0, i64 noundef %1)
  %cmp = fcmp olt double %call3, 5.000000e+00
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
