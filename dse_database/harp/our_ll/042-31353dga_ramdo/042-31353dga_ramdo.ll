; ModuleID = 'code/042-31353dga_ramdo.c'
source_filename = "code/042-31353dga_ramdo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".org\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %numdoms = alloca i32, align 4
  %domain_iterator = alloca i32, align 4
  %domain_length = alloca i32, align 4
  %initial_seed = alloca i32, align 4
  %dom = alloca [16 x i8], align 16
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
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 177228, i32* %initial_seed, align 4
  store i32 0, i32* %domain_length, align 4
  store i32 0, i32* %domain_iterator, align 4
  store i32 0, i32* %numdoms, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i32, i32* %numdoms, align 4
  %cmp = icmp ult i32 %0, 30
  br i1 %cmp, label %while.body, label %while.end23

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %xor1, align 4
  %1 = load i32, i32* %initial_seed, align 4
  %shl1 = shl i32 %1, 1
  store i32 %shl1, i32* %shl, align 4
  %2 = load i32, i32* %domain_iterator, align 4
  %add = add i32 %2, 1
  store i32 %add, i32* %domain_iterator, align 4
  %3 = load i32, i32* %domain_iterator, align 4
  %4 = load i32, i32* %shl, align 4
  %mul = mul i32 %3, %4
  store i32 %mul, i32* %step1, align 4
  %5 = load i32, i32* %domain_iterator, align 4
  %6 = load i32, i32* %initial_seed, align 4
  %mul2 = mul i32 %5, %6
  store i32 %mul2, i32* %step1b, align 4
  %7 = load i32, i32* %domain_iterator, align 4
  %sub = sub i32 %7, 1
  store i32 %sub, i32* %domain_iterator, align 4
  %8 = load i32, i32* %domain_iterator, align 4
  %9 = load i32, i32* %initial_seed, align 4
  %mul3 = mul i32 %8, %9
  store i32 %mul3, i32* %iter_seed, align 4
  %10 = load i32, i32* %iter_seed, align 4
  %mul4 = mul i32 %10, 26
  store i32 %mul4, i32* %imul_edx, align 4
  %11 = load i32, i32* %step1, align 4
  %12 = load i32, i32* %imul_edx, align 4
  %xor = xor i32 %11, %12
  store i32 %xor, i32* %xor1, align 4
  store i32 0, i32* %domain_length, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %while.body7, %while.body
  %13 = load i32, i32* %domain_length, align 4
  %cmp6 = icmp ult i32 %13, 16
  br i1 %cmp6, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond5
  %14 = load i32, i32* %xor1, align 4
  %div = udiv i32 %14, 26
  store i32 %div, i32* %xor1_divide, align 4
  %15 = load i32, i32* %xor1, align 4
  %rem = urem i32 %15, 26
  store i32 %rem, i32* %xor1_remainder, align 4
  %16 = load i32, i32* %xor1_remainder, align 4
  %add8 = add i32 %16, 32
  store i32 %add8, i32* %xo1_rem_20, align 4
  %17 = load i32, i32* %xo1_rem_20, align 4
  %xor9 = xor i32 %17, 161
  store i32 %xor9, i32* %xo1_step2, align 4
  %18 = load i32, i32* %xo1_step2, align 4
  %xor10 = xor i32 161, %18
  %add11 = add i32 65, %xor10
  store i32 %add11, i32* %dom_byte, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %dom, i64 0, i64 0
  %19 = load i32, i32* %dom_byte, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19) #3
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %dom, i64 0, i64 0
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay12)
  %20 = load i32, i32* %domain_length, align 4
  %21 = load i32, i32* %step1, align 4
  %mul14 = mul i32 %20, %21
  store i32 %mul14, i32* %imul_iter, align 4
  %22 = load i32, i32* %domain_length, align 4
  %23 = load i32, i32* %imul_iter, align 4
  %mul15 = mul i32 %22, %23
  store i32 %mul15, i32* %imul_result, align 4
  %24 = load i32, i32* %imul_result, align 4
  %mul16 = mul i32 26, %24
  store i32 %mul16, i32* %imul_1a, align 4
  %25 = load i32, i32* %xor1, align 4
  %26 = load i32, i32* %imul_1a, align 4
  %xor17 = xor i32 %25, %26
  store i32 %xor17, i32* %xor2, align 4
  %27 = load i32, i32* %xor1, align 4
  %28 = load i32, i32* %xor2, align 4
  %add18 = add i32 %27, %28
  store i32 %add18, i32* %xor1, align 4
  %29 = load i32, i32* %domain_length, align 4
  %add19 = add i32 %29, 1
  store i32 %add19, i32* %domain_length, align 4
  br label %while.cond5, !llvm.loop !4

while.end:                                        ; preds = %while.cond5
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %domain_iterator, align 4
  %add21 = add i32 %30, 1
  store i32 %add21, i32* %domain_iterator, align 4
  %31 = load i32, i32* %numdoms, align 4
  %add22 = add i32 %31, 1
  store i32 %add22, i32* %numdoms, align 4
  br label %while.cond, !llvm.loop !6

while.end23:                                      ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
