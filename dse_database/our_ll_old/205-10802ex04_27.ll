; ModuleID = './code/205-10802ex04_27.c'
source_filename = "./code/205-10802ex04_27.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"A=%d B=%d C=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %a, align 4
  %cmp = icmp sle i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = load i32, ptr %b, align 4
  %cmp2 = icmp sle i32 %1, 500
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %c, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %c, align 4
  %cmp5 = icmp sle i32 %2, 500
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %a, align 4
  %conv = sitofp i32 %3 to float
  %4 = load i32, ptr %b, align 4
  %conv7 = sitofp i32 %4 to float
  %5 = load i32, ptr %c, align 4
  %conv8 = sitofp i32 %5 to float
  %call = call i32 @isValidRATriangle(float noundef %conv, float noundef %conv7, float noundef %conv8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %6 = load i32, ptr %a, align 4
  %7 = load i32, ptr %b, align 4
  %8 = load i32, ptr %c, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %c, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, ptr %b, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %b, align 4
  br label %for.cond1, !llvm.loop !7

for.end12:                                        ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end12
  %11 = load i32, ptr %a, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, ptr %a, align 4
  br label %for.cond, !llvm.loop !8

for.end15:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isValidRATriangle(float noundef %a, float noundef %b, float noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4
  store float %b, ptr %b.addr, align 4
  store float %c, ptr %c.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  %1 = load float, ptr %b.addr, align 4
  %cmp = fcmp ogt float %0, %1
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %2 = load float, ptr %a.addr, align 4
  %3 = load float, ptr %c.addr, align 4
  %cmp1 = fcmp ogt float %2, %3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load float, ptr %c.addr, align 4
  %5 = load float, ptr %c.addr, align 4
  %6 = load float, ptr %b.addr, align 4
  %7 = load float, ptr %b.addr, align 4
  %mul3 = fmul float %6, %7
  %8 = call float @llvm.fmuladd.f32(float %4, float %5, float %mul3)
  %9 = load float, ptr %a.addr, align 4
  %10 = load float, ptr %a.addr, align 4
  %mul = fmul float %9, %10
  %cmp4 = fcmp oeq float %8, %mul
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %11 = load float, ptr %a.addr, align 4
  %12 = load float, ptr %a.addr, align 4
  %13 = load float, ptr %b.addr, align 4
  %14 = load float, ptr %b.addr, align 4
  %mul6 = fmul float %13, %14
  %15 = call float @llvm.fmuladd.f32(float %11, float %12, float %mul6)
  %16 = load float, ptr %c.addr, align 4
  %17 = load float, ptr %c.addr, align 4
  %mul7 = fmul float %16, %17
  %cmp8 = fcmp oeq float %15, %mul7
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, ptr %retval, align 4
  br label %return

if.else10:                                        ; preds = %entry
  %18 = load float, ptr %b.addr, align 4
  %19 = load float, ptr %c.addr, align 4
  %cmp11 = fcmp ogt float %18, %19
  br i1 %cmp11, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.else10
  %20 = load float, ptr %a.addr, align 4
  %21 = load float, ptr %a.addr, align 4
  %22 = load float, ptr %c.addr, align 4
  %23 = load float, ptr %c.addr, align 4
  %mul15 = fmul float %22, %23
  %24 = call float @llvm.fmuladd.f32(float %20, float %21, float %mul15)
  %25 = load float, ptr %b.addr, align 4
  %26 = load float, ptr %b.addr, align 4
  %mul16 = fmul float %25, %26
  %cmp17 = fcmp oeq float %24, %mul16
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, ptr %retval, align 4
  br label %return

if.else19:                                        ; preds = %if.else10
  %27 = load float, ptr %a.addr, align 4
  %28 = load float, ptr %a.addr, align 4
  %29 = load float, ptr %b.addr, align 4
  %30 = load float, ptr %b.addr, align 4
  %mul21 = fmul float %29, %30
  %31 = call float @llvm.fmuladd.f32(float %27, float %28, float %mul21)
  %32 = load float, ptr %c.addr, align 4
  %33 = load float, ptr %c.addr, align 4
  %mul22 = fmul float %32, %33
  %cmp23 = fcmp oeq float %31, %mul22
  %conv24 = zext i1 %cmp23 to i32
  store i32 %conv24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else19, %if.then13, %if.else, %if.then2
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
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
!8 = distinct !{!8, !6}
