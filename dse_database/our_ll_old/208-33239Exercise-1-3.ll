; ModuleID = './code/208-33239Exercise-1-3.c'
source_filename = "./code/208-33239Exercise-1-3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [26 x i8] c"Fahrenheit-Celsius table\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%3.0f %6.1f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahr = alloca float, align 4
  %celsius = alloca float, align 4
  %lower = alloca float, align 4
  %upper = alloca float, align 4
  %step = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store float 0.000000e+00, ptr %lower, align 4
  store float 3.000000e+02, ptr %upper, align 4
  store float 2.000000e+01, ptr %step, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load float, ptr %lower, align 4
  store float %0, ptr %fahr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, ptr %fahr, align 4
  %2 = load float, ptr %upper, align 4
  %cmp = fcmp ole float %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load float, ptr %fahr, align 4
  %conv = fpext float %3 to double
  %sub = fsub double %conv, 3.200000e+01
  %mul = fmul double 0x3FE1C71C71C71C72, %sub
  %conv1 = fptrunc double %mul to float
  store float %conv1, ptr %celsius, align 4
  %4 = load float, ptr %fahr, align 4
  %conv2 = fpext float %4 to double
  %5 = load float, ptr %celsius, align 4
  %conv3 = fpext float %5 to double
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv2, double noundef %conv3)
  %6 = load float, ptr %fahr, align 4
  %7 = load float, ptr %step, align 4
  %add = fadd float %6, %7
  store float %add, ptr %fahr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
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
