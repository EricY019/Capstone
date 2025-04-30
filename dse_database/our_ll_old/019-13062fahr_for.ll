; ModuleID = './code/019-13062fahr_for.c'
source_filename = "./code/019-13062fahr_for.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [11 x i8] c"%3s = %6s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Fahrenheit\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Celsius\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%3.0f\C2\B0F = %6.2f\C2\B0C\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%3.0f\C2\B0C = %6.2f\C2\B0F\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahrenheit = alloca float, align 4
  %celsius = alloca float, align 4
  %celsius6 = alloca float, align 4
  %fahrenheit11 = alloca float, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2)
  store float -5.000000e+01, ptr %fahrenheit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load float, ptr %fahrenheit, align 4
  %cmp = fcmp ole float %0, 2.500000e+02
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
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv2, double noundef %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load float, ptr %fahrenheit, align 4
  %add = fadd float %4, 1.000000e+01
  store float %add, ptr %fahrenheit, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.2, ptr noundef @.str.1)
  store float -5.000000e+01, ptr %celsius6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc19, %for.end
  %5 = load float, ptr %celsius6, align 4
  %cmp8 = fcmp ole float %5, 2.500000e+02
  br i1 %cmp8, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond7
  %6 = load float, ptr %celsius6, align 4
  %conv12 = fpext float %6 to double
  %mul13 = fmul double %conv12, 9.000000e+00
  %div = fdiv double %mul13, 5.000000e+00
  %add14 = fadd double %div, 3.200000e+01
  %conv15 = fptrunc double %add14 to float
  store float %conv15, ptr %fahrenheit11, align 4
  %7 = load float, ptr %celsius6, align 4
  %conv16 = fpext float %7 to double
  %8 = load float, ptr %fahrenheit11, align 4
  %conv17 = fpext float %8 to double
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %conv16, double noundef %conv17)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %9 = load float, ptr %celsius6, align 4
  %add20 = fadd float %9, 1.000000e+01
  store float %add20, ptr %celsius6, align 4
  br label %for.cond7, !llvm.loop !7

for.end21:                                        ; preds = %for.cond7
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
!7 = distinct !{!7, !6}
