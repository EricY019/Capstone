; ModuleID = './code/089-26705fahr.c'
source_filename = "./code/089-26705fahr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [21 x i8] c"%3.0f\C2\B0F = %5.1f\C2\B0C\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahrenheit = alloca float, align 4
  %celsius = alloca float, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %by = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -50, ptr %start, align 4
  store i32 300, ptr %end, align 4
  store i32 10, ptr %by, align 4
  %0 = load i32, ptr %start, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, ptr %fahrenheit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, ptr %fahrenheit, align 4
  %2 = load i32, ptr %end, align 4
  %conv1 = sitofp i32 %2 to float
  %cmp = fcmp ole float %1, %conv1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load float, ptr %fahrenheit, align 4
  %sub = fsub float %3, 3.200000e+01
  %conv3 = fpext float %sub to double
  %mul = fmul double 0x3FE1C71C71C71C72, %conv3
  %conv4 = fptrunc double %mul to float
  store float %conv4, ptr %celsius, align 4
  %4 = load float, ptr %fahrenheit, align 4
  %conv5 = fpext float %4 to double
  %5 = load float, ptr %celsius, align 4
  %conv6 = fpext float %5 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv5, double noundef %conv6)
  %6 = load float, ptr %fahrenheit, align 4
  %7 = load i32, ptr %by, align 4
  %conv7 = sitofp i32 %7 to float
  %add = fadd float %6, %conv7
  store float %add, ptr %fahrenheit, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
