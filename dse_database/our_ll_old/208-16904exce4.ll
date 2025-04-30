; ModuleID = './code/208-16904exce4.c'
source_filename = "./code/208-16904exce4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%.3f\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"squareRoot(2.0) = %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"squareRoot(144.0) = %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"squareRoot(17.5) = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @absoluteValue(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  %0 = load float, ptr %x.addr, align 4
  %cmp = fcmp olt float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float, ptr %x.addr, align 4
  %fneg = fneg float %1
  store float %fneg, ptr %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load float, ptr %x.addr, align 4
  ret float %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @squareRoot(float noundef %x, float noundef %epsilon) #0 {
entry:
  %x.addr = alloca float, align 4
  %epsilon.addr = alloca float, align 4
  %guess = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  store float %epsilon, ptr %epsilon.addr, align 4
  store float 1.000000e+00, ptr %guess, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load float, ptr %guess, align 4
  %1 = load float, ptr %guess, align 4
  %2 = load float, ptr %x.addr, align 4
  %neg = fneg float %2
  %3 = call float @llvm.fmuladd.f32(float %0, float %1, float %neg)
  %call = call float @absoluteValue(float noundef %3)
  %4 = load float, ptr %epsilon.addr, align 4
  %cmp = fcmp oge float %call, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load float, ptr %x.addr, align 4
  %6 = load float, ptr %guess, align 4
  %div = fdiv float %5, %6
  %7 = load float, ptr %guess, align 4
  %add = fadd float %div, %7
  %conv = fpext float %add to double
  %div1 = fdiv double %conv, 2.000000e+00
  %conv2 = fptrunc double %div1 to float
  store float %conv2, ptr %guess, align 4
  %8 = load float, ptr %guess, align 4
  %conv3 = fpext float %8 to double
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv3)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load float, ptr %guess, align 4
  ret float %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call float @squareRoot(float noundef 2.000000e+00, float noundef 0x3EE4F8B580000000)
  %conv = fpext float %call to double
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv)
  %call2 = call float @squareRoot(float noundef 1.440000e+02, float noundef 0x3EE4F8B580000000)
  %conv3 = fpext float %call2 to double
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv3)
  %call5 = call float @squareRoot(float noundef 1.750000e+01, float noundef 0x3EE4F8B580000000)
  %conv6 = fpext float %call5 to double
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv6)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
