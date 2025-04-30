; ModuleID = './code/005-9841task3.c'
source_filename = "./code/005-9841task3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [51 x i8] c"\D0\A2\D0\B0\D0\B1\D0\BB\D0\B8\D1\86\D0\B0 \D0\BF\D0\B5\D1\80\D0\B5\D0\B2\D0\BE\D0\B4\D0\B0 \D0\B8\D0\B7 fahr \D0\B2 cels\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"fahr: %7.3f\09cels: %7.3f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %fahr = alloca float, align 4
  %celsius = alloca float, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %step = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %lower, align 4
  store i32 300, ptr %upper, align 4
  store i32 20, ptr %step, align 4
  %0 = load i32, ptr %lower, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, ptr %fahr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, ptr %fahr, align 4
  %2 = load i32, ptr %upper, align 4
  %conv1 = sitofp i32 %2 to float
  %cmp = fcmp ole float %1, %conv1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load float, ptr %fahr, align 4
  %sub = fsub float %3, 3.200000e+01
  %conv3 = fpext float %sub to double
  %mul = fmul double 0x3FE1C71C71C71C72, %conv3
  %conv4 = fptrunc double %mul to float
  store float %conv4, ptr %celsius, align 4
  %4 = load float, ptr %fahr, align 4
  %conv5 = fpext float %4 to double
  %5 = load float, ptr %celsius, align 4
  %conv6 = fpext float %5 to double
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv5, double noundef %conv6)
  %6 = load i32, ptr %step, align 4
  %conv8 = sitofp i32 %6 to float
  %7 = load float, ptr %fahr, align 4
  %add = fadd float %7, %conv8
  store float %add, ptr %fahr, align 4
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
