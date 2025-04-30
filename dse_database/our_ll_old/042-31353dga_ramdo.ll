; ModuleID = './code/042-31353dga_ramdo.c'
source_filename = "./code/042-31353dga_ramdo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".org\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %numdoms = alloca i32, align 4
  %domain_iterator = alloca i32, align 4
  %domain_length = alloca i32, align 4
  %initial_seed = alloca i32, align 4
  %dom = alloca [16 x i8], align 1
  %dom_byte = alloca i32, align 4
  %xor1 = alloca i32, align 4
  %shl = alloca i32, align 4
  %step1 = alloca i32, align 4
  %step1b = alloca i32, align 4
  %iter_seed = alloca i32, align 4
  %imul_edx = alloca i32, align 4
  %xor1_divide = alloca i32, align 4
  %xor1_remainder = alloca i32, align 4
  %xo1_rem_20 = alloca i32, align 4
  %xo1_step2 = alloca i32, align 4
  %imul_iter = alloca i32, align 4
  %imul_result = alloca i32, align 4
  %imul_1a = alloca i32, align 4
  %xor2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 177228, ptr %initial_seed, align 4
  store i32 0, ptr %domain_length, align 4
  store i32 0, ptr %domain_iterator, align 4
  store i32 0, ptr %numdoms, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i32, ptr %numdoms, align 4
  %cmp = icmp ult i32 %0, 30
  br i1 %cmp, label %while.body, label %while.end23

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %xor1, align 4
  %1 = load i32, ptr %initial_seed, align 4
  %shl1 = shl i32 %1, 1
  store i32 %shl1, ptr %shl, align 4
  %2 = load i32, ptr %domain_iterator, align 4
  %add = add i32 %2, 1
  store i32 %add, ptr %domain_iterator, align 4
  %3 = load i32, ptr %domain_iterator, align 4
  %4 = load i32, ptr %shl, align 4
  %mul = mul i32 %3, %4
  store i32 %mul, ptr %step1, align 4
  %5 = load i32, ptr %domain_iterator, align 4
  %6 = load i32, ptr %initial_seed, align 4
  %mul2 = mul i32 %5, %6
  store i32 %mul2, ptr %step1b, align 4
  %7 = load i32, ptr %domain_iterator, align 4
  %sub = sub i32 %7, 1
  store i32 %sub, ptr %domain_iterator, align 4
  %8 = load i32, ptr %domain_iterator, align 4
  %9 = load i32, ptr %initial_seed, align 4
  %mul3 = mul i32 %8, %9
  store i32 %mul3, ptr %iter_seed, align 4
  %10 = load i32, ptr %iter_seed, align 4
  %mul4 = mul i32 %10, 26
  store i32 %mul4, ptr %imul_edx, align 4
  %11 = load i32, ptr %step1, align 4
  %12 = load i32, ptr %imul_edx, align 4
  %xor = xor i32 %11, %12
  store i32 %xor, ptr %xor1, align 4
  store i32 0, ptr %domain_length, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %while.body7, %while.body
  %13 = load i32, ptr %domain_length, align 4
  %cmp6 = icmp ult i32 %13, 16
  br i1 %cmp6, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond5
  %14 = load i32, ptr %xor1, align 4
  %div = udiv i32 %14, 26
  store i32 %div, ptr %xor1_divide, align 4
  %15 = load i32, ptr %xor1, align 4
  %rem = urem i32 %15, 26
  store i32 %rem, ptr %xor1_remainder, align 4
  %16 = load i32, ptr %xor1_remainder, align 4
  %add8 = add i32 %16, 32
  store i32 %add8, ptr %xo1_rem_20, align 4
  %17 = load i32, ptr %xo1_rem_20, align 4
  %xor9 = xor i32 %17, 161
  store i32 %xor9, ptr %xo1_step2, align 4
  %18 = load i32, ptr %xo1_step2, align 4
  %xor10 = xor i32 161, %18
  %add11 = add i32 65, %xor10
  store i32 %add11, ptr %dom_byte, align 4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %dom, i64 0, i64 0
  %19 = load i32, ptr %dom_byte, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 16, ptr noundef @.str, i32 noundef %19)
  %arraydecay12 = getelementptr inbounds [16 x i8], ptr %dom, i64 0, i64 0
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay12)
  %20 = load i32, ptr %domain_length, align 4
  %21 = load i32, ptr %step1, align 4
  %mul14 = mul i32 %20, %21
  store i32 %mul14, ptr %imul_iter, align 4
  %22 = load i32, ptr %domain_length, align 4
  %23 = load i32, ptr %imul_iter, align 4
  %mul15 = mul i32 %22, %23
  store i32 %mul15, ptr %imul_result, align 4
  %24 = load i32, ptr %imul_result, align 4
  %mul16 = mul i32 26, %24
  store i32 %mul16, ptr %imul_1a, align 4
  %25 = load i32, ptr %xor1, align 4
  %26 = load i32, ptr %imul_1a, align 4
  %xor17 = xor i32 %25, %26
  store i32 %xor17, ptr %xor2, align 4
  %27 = load i32, ptr %xor1, align 4
  %28 = load i32, ptr %xor2, align 4
  %add18 = add i32 %27, %28
  store i32 %add18, ptr %xor1, align 4
  %29 = load i32, ptr %domain_length, align 4
  %add19 = add i32 %29, 1
  store i32 %add19, ptr %domain_length, align 4
  br label %while.cond5, !llvm.loop !5

while.end:                                        ; preds = %while.cond5
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %30 = load i32, ptr %domain_iterator, align 4
  %add21 = add i32 %30, 1
  store i32 %add21, ptr %domain_iterator, align 4
  %31 = load i32, ptr %numdoms, align 4
  %add22 = add i32 %31, 1
  store i32 %add22, ptr %numdoms, align 4
  br label %while.cond, !llvm.loop !7

while.end23:                                      ; preds = %while.cond
  ret i32 0
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

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
