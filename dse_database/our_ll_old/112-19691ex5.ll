; ModuleID = './code/112-19691ex5.c'
source_filename = "./code/112-19691ex5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [40 x i8] c"This is a simple program that converts\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Celsius to Fahrenheit in decimal format\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Celsius: %6.2f Fahrenheit: %3.1f\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Now let's print the reverse\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Fahrenheit: %6.2f Celsius: %3.1f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahr = alloca float, align 4
  %celsius = alloca float, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %step = alloca i32, align 4
  %ratio = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %lower, align 4
  store i32 300, ptr %upper, align 4
  store i32 20, ptr %step, align 4
  store float 0x3FE1C71C80000000, ptr %ratio, align 4
  %0 = load i32, ptr %upper, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, ptr %fahr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, ptr %fahr, align 4
  %2 = load i32, ptr %lower, align 4
  %conv2 = sitofp i32 %2 to float
  %cmp = fcmp oge float %1, %conv2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load float, ptr %ratio, align 4
  %4 = load float, ptr %fahr, align 4
  %sub = fsub float %4, 3.200000e+01
  %mul = fmul float %3, %sub
  store float %mul, ptr %celsius, align 4
  %5 = load float, ptr %celsius, align 4
  %conv4 = fpext float %5 to double
  %6 = load float, ptr %fahr, align 4
  %conv5 = fpext float %6 to double
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv4, double noundef %conv5)
  %7 = load float, ptr %fahr, align 4
  %8 = load i32, ptr %step, align 4
  %conv7 = sitofp i32 %8 to float
  %sub8 = fsub float %7, %conv7
  store float %sub8, ptr %fahr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %upper, align 4
  %conv9 = sitofp i32 %9 to float
  store float %conv9, ptr %celsius, align 4
  store float 0x3FFCCCCCC0000000, ptr %ratio, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %while.cond11

while.cond11:                                     ; preds = %while.body15, %while.end
  %10 = load float, ptr %celsius, align 4
  %11 = load i32, ptr %lower, align 4
  %conv12 = sitofp i32 %11 to float
  %cmp13 = fcmp oge float %10, %conv12
  br i1 %cmp13, label %while.body15, label %while.end22

while.body15:                                     ; preds = %while.cond11
  %12 = load float, ptr %celsius, align 4
  %13 = load float, ptr %ratio, align 4
  %14 = call float @llvm.fmuladd.f32(float %12, float %13, float 3.200000e+01)
  store float %14, ptr %fahr, align 4
  %15 = load float, ptr %fahr, align 4
  %conv17 = fpext float %15 to double
  %16 = load float, ptr %celsius, align 4
  %conv18 = fpext float %16 to double
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %conv17, double noundef %conv18)
  %17 = load float, ptr %celsius, align 4
  %18 = load i32, ptr %step, align 4
  %conv20 = sitofp i32 %18 to float
  %sub21 = fsub float %17, %conv20
  store float %sub21, ptr %celsius, align 4
  br label %while.cond11, !llvm.loop !7

while.end22:                                      ; preds = %while.cond11
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
