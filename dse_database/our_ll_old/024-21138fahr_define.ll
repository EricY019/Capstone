; ModuleID = './code/024-21138fahr_define.c'
source_filename = "./code/024-21138fahr_define.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [21 x i8] c"%3.0f\C2\B0F = %6.2f\C2\B0C\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahrenheit = alloca float, align 4
  %celsius = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store float -1.000000e+02, ptr %fahrenheit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load float, ptr %fahrenheit, align 4
  %cmp = fcmp ole float %0, 3.000000e+02
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float, ptr %fahrenheit, align 4
  %sub = fsub float %1, 3.200000e+01
  %conv = fpext float %sub to double
  %mul = fmul double 0x3FE1C71C71C71C72, %conv
  %conv1 = fptrunc double %mul to float
  store float %conv1, ptr %celsius, align 4
  %2 = load float, ptr %fahrenheit, align 4
  %conv2 = fpext float %2 to double
  %3 = load float, ptr %celsius, align 4
  %conv3 = fpext float %3 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv2, double noundef %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load float, ptr %fahrenheit, align 4
  %add = fadd float %4, 1.500000e+01
  store float %add, ptr %fahrenheit, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
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
