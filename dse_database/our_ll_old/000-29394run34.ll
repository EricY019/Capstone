; ModuleID = './code/000-29394run34.c'
source_filename = "./code/000-29394run34.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [15 x i8] c"x = %d (0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09ref: %d (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\09Got: %d (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @test_trueThreeFourths(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %x3 = alloca i64, align 8
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 3
  store i64 %mul, ptr %x3, align 8
  %1 = load i64, ptr %x3, align 8
  %div = sdiv i64 %1, 4
  %conv1 = trunc i64 %div to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @trueThreeFourths(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %xs1 = alloca i32, align 4
  %xs2 = alloca i32, align 4
  %bias = alloca i32, align 4
  %xl2 = alloca i32, align 4
  %xl1 = alloca i32, align 4
  %incr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, ptr %xs1, align 4
  %1 = load i32, ptr %x.addr, align 4
  %shr1 = ashr i32 %1, 2
  store i32 %shr1, ptr %xs2, align 4
  %2 = load i32, ptr %x.addr, align 4
  %shr2 = ashr i32 %2, 31
  %and = and i32 %shr2, 3
  store i32 %and, ptr %bias, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %3, 3
  store i32 %and3, ptr %xl2, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %4, 1
  %shl = shl i32 %and4, 1
  store i32 %shl, ptr %xl1, align 4
  %5 = load i32, ptr %xl2, align 4
  %6 = load i32, ptr %xl1, align 4
  %add = add nsw i32 %5, %6
  %7 = load i32, ptr %bias, align 4
  %add5 = add nsw i32 %add, %7
  %shr6 = ashr i32 %add5, 2
  store i32 %shr6, ptr %incr, align 4
  %8 = load i32, ptr %xs1, align 4
  %9 = load i32, ptr %xs2, align 4
  %add7 = add nsw i32 %8, %9
  %10 = load i32, ptr %incr, align 4
  %add8 = add nsw i32 %add7, %10
  ret i32 %add8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %4)
  store i32 %call, ptr %x, align 4
  %5 = load i32, ptr %x, align 4
  %call1 = call i32 @trueThreeFourths(i32 noundef %5)
  store i32 %call1, ptr %v1, align 4
  %6 = load i32, ptr %x, align 4
  %call2 = call i32 @test_trueThreeFourths(i32 noundef %6)
  store i32 %call2, ptr %v2, align 4
  %7 = load i32, ptr %x, align 4
  %8 = load i32, ptr %x, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7, i32 noundef %8)
  %9 = load i32, ptr %v2, align 4
  %10 = load i32, ptr %v2, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9, i32 noundef %10)
  %11 = load i32, ptr %v1, align 4
  %12 = load i32, ptr %v1, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %11, i32 noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @atoi(ptr noundef) #1

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
