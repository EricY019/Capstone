; ModuleID = './code/047-245951098_sequence_ij_4.c'
source_filename = "./code/047-245951098_sequence_ij_4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [15 x i8] c"I=%.1f J=%.1f\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"I=%.0f J=%.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iR = alloca float, align 4
  %jR = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 10, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp sle i32 %1, 30
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %conv = sitofp i32 %2 to float
  %div = fdiv float %conv, 1.000000e+01
  store float %div, ptr %iR, align 4
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %j, align 4
  %add = add nsw i32 %3, %4
  %conv4 = sitofp i32 %add to float
  %div5 = fdiv float %conv4, 1.000000e+01
  store float %div5, ptr %jR, align 4
  %5 = load i32, ptr %i, align 4
  %rem = srem i32 %5, 10
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %6 = load float, ptr %iR, align 4
  %conv6 = fpext float %6 to double
  %7 = load float, ptr %jR, align 4
  %conv7 = fpext float %7 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv6, double noundef %conv7)
  br label %if.end

if.else:                                          ; preds = %for.body3
  %8 = load float, ptr %iR, align 4
  %conv8 = fpext float %8 to double
  %9 = load float, ptr %jR, align 4
  %conv9 = fpext float %9 to double
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv8, double noundef %conv9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %j, align 4
  %add11 = add nsw i32 %10, 10
  store i32 %add11, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, ptr %i, align 4
  %add13 = add nsw i32 %11, 2
  store i32 %add13, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end14:                                        ; preds = %for.cond
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
!7 = distinct !{!7, !6}
