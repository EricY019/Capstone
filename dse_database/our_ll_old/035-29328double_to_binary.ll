; ModuleID = './code/035-29328double_to_binary.c'
source_filename = "./code/035-29328double_to_binary.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [19 x i8] c"Unsupported input.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Overflow error\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @to_binary(double noundef %input) #0 {
entry:
  %input.addr = alloca double, align 8
  %frac = alloca double, align 8
  %i = alloca i32, align 4
  store double %input, ptr %input.addr, align 8
  %0 = load double, ptr %input.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, ptr %input.addr, align 8
  %cmp1 = fcmp oge double %1, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store double 1.000000e+00, ptr %frac, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %2, 32
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, ptr %input.addr, align 8
  %cmp4 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %for.end

if.end6:                                          ; preds = %for.body
  %4 = load double, ptr %frac, align 8
  %div = fdiv double %4, 2.000000e+00
  store double %div, ptr %frac, align 8
  %5 = load double, ptr %input.addr, align 8
  %6 = load double, ptr %frac, align 8
  %cmp7 = fcmp oge double %5, %6
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %7 = load double, ptr %frac, align 8
  %8 = load double, ptr %input.addr, align 8
  %sub = fsub double %8, %7
  store double %sub, ptr %input.addr, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end11

if.else:                                          ; preds = %if.end6
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then5, %for.cond
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %10 = load double, ptr %input.addr, align 8
  %cmp13 = fcmp ogt double %10, 0.000000e+00
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.end
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.end
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  call void @to_binary(double noundef 1.250000e-01)
  call void @to_binary(double noundef 1.000000e-01)
  ret i32 0
}

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
