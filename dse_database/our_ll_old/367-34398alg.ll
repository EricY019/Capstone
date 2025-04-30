; ModuleID = './code/367-34398alg.c'
source_filename = "./code/367-34398alg.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @absolute(i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @packFloat(i32 noundef %exponent, i32 noundef %magnitude) #0 {
entry:
  %retval = alloca float, align 4
  %exponent.addr = alloca i32, align 4
  %magnitude.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %exponent, ptr %exponent.addr, align 4
  store i32 %magnitude, ptr %magnitude.addr, align 4
  %0 = load i32, ptr %magnitude.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %magnitude.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  %2 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 0
  %shl = shl i32 %cond, 31
  store i32 %shl, ptr %res, align 4
  %3 = load i32, ptr %exponent.addr, align 4
  %add = add nsw i32 %3, 127
  %shl2 = shl i32 %add, 23
  %and = and i32 %shl2, 2139095040
  %4 = load i32, ptr %res, align 4
  %or = or i32 %4, %and
  store i32 %or, ptr %res, align 4
  %5 = load i32, ptr %magnitude.addr, align 4
  %call = call i32 @absolute(i32 noundef %5)
  %and3 = and i32 %call, 8388607
  %6 = load i32, ptr %res, align 4
  %or4 = or i32 %6, %and3
  store i32 %or4, ptr %res, align 4
  %7 = load float, ptr %res, align 4
  store float %7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load float, ptr %retval, align 4
  ret float %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @unpackFloat(float noundef %aV, ptr noundef %exponent, ptr noundef %magnitude) #0 {
entry:
  %aV.addr = alloca float, align 4
  %exponent.addr = alloca ptr, align 8
  %magnitude.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  store float %aV, ptr %aV.addr, align 4
  store ptr %exponent, ptr %exponent.addr, align 8
  store ptr %magnitude, ptr %magnitude.addr, align 8
  %0 = load i32, ptr %aV.addr, align 4
  store i32 %0, ptr %a, align 4
  %1 = load i32, ptr %a, align 4
  %and = and i32 %1, 2139095040
  %shr = ashr i32 %and, 23
  %sub = sub nsw i32 %shr, 127
  %2 = load ptr, ptr %exponent.addr, align 8
  store i32 %sub, ptr %2, align 4
  %3 = load i32, ptr %a, align 4
  %and1 = and i32 %3, 8388607
  %add = add nsw i32 %and1, 8388608
  %4 = load ptr, ptr %magnitude.addr, align 8
  store i32 %add, ptr %4, align 4
  %5 = load i32, ptr %a, align 4
  %and2 = and i32 %5, -2147483648
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %magnitude.addr, align 8
  %7 = load i32, ptr %6, align 4
  %sub3 = sub nsw i32 0, %7
  %8 = load ptr, ptr %magnitude.addr, align 8
  store i32 %sub3, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @normalizeFloat(ptr noundef %exponent, ptr noundef %magnitude) #0 {
entry:
  %exponent.addr = alloca ptr, align 8
  %magnitude.addr = alloca ptr, align 8
  %sign = alloca i32, align 4
  store ptr %exponent, ptr %exponent.addr, align 8
  store ptr %magnitude, ptr %magnitude.addr, align 8
  %0 = load ptr, ptr %magnitude.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %exponent.addr, align 8
  store i32 0, ptr %2, align 4
  br label %if.end12

if.end:                                           ; preds = %entry
  store i32 0, ptr %sign, align 4
  %3 = load ptr, ptr %magnitude.addr, align 8
  %4 = load i32, ptr %3, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %sign, align 4
  %5 = load ptr, ptr %magnitude.addr, align 8
  %6 = load i32, ptr %5, align 4
  %sub = sub nsw i32 0, %6
  %7 = load ptr, ptr %magnitude.addr, align 8
  store i32 %sub, ptr %7, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %8 = load ptr, ptr %magnitude.addr, align 8
  %9 = load i32, ptr %8, align 4
  %and = and i32 %9, -8388608
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %magnitude.addr, align 8
  %11 = load i32, ptr %10, align 4
  %shl = shl i32 %11, 1
  store i32 %shl, ptr %10, align 4
  %12 = load ptr, ptr %exponent.addr, align 8
  %13 = load i32, ptr %12, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %12, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond5

while.cond5:                                      ; preds = %while.body7, %while.end
  %14 = load ptr, ptr %magnitude.addr, align 8
  %15 = load i32, ptr %14, align 4
  %and6 = and i32 %15, -16777216
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %while.body7, label %while.end8

while.body7:                                      ; preds = %while.cond5
  %16 = load ptr, ptr %magnitude.addr, align 8
  %17 = load i32, ptr %16, align 4
  %shr = ashr i32 %17, 1
  store i32 %shr, ptr %16, align 4
  %18 = load ptr, ptr %exponent.addr, align 8
  %19 = load i32, ptr %18, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %18, align 4
  br label %while.cond5, !llvm.loop !7

while.end8:                                       ; preds = %while.cond5
  %20 = load i32, ptr %sign, align 4
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.end8
  %21 = load ptr, ptr %magnitude.addr, align 8
  %22 = load i32, ptr %21, align 4
  %sub11 = sub nsw i32 0, %22
  %23 = load ptr, ptr %magnitude.addr, align 8
  store i32 %sub11, ptr %23, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then10, %while.end8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @fSum(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aExp = alloca i32, align 4
  %aMag = alloca i32, align 4
  %bExp = alloca i32, align 4
  %bMag = alloca i32, align 4
  %cExp = alloca i32, align 4
  %cMag = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store float %b, ptr %b.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  call void @unpackFloat(float noundef %0, ptr noundef %aExp, ptr noundef %aMag)
  %1 = load float, ptr %b.addr, align 4
  call void @unpackFloat(float noundef %1, ptr noundef %bExp, ptr noundef %bMag)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %aExp, align 4
  %3 = load i32, ptr %bExp, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %aExp, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %aExp, align 4
  %5 = load i32, ptr %aMag, align 4
  %shr = ashr i32 %5, 1
  store i32 %shr, ptr %aMag, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %6 = load i32, ptr %bExp, align 4
  %7 = load i32, ptr %aExp, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %while.body3, label %while.end6

while.body3:                                      ; preds = %while.cond1
  %8 = load i32, ptr %bExp, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, ptr %bExp, align 4
  %9 = load i32, ptr %bMag, align 4
  %shr5 = ashr i32 %9, 1
  store i32 %shr5, ptr %bMag, align 4
  br label %while.cond1, !llvm.loop !9

while.end6:                                       ; preds = %while.cond1
  %10 = load i32, ptr %bExp, align 4
  store i32 %10, ptr %cExp, align 4
  %11 = load i32, ptr %aMag, align 4
  %12 = load i32, ptr %bMag, align 4
  %add = add nsw i32 %11, %12
  store i32 %add, ptr %cMag, align 4
  call void @normalizeFloat(ptr noundef %cExp, ptr noundef %cMag)
  %13 = load i32, ptr %cExp, align 4
  %14 = load i32, ptr %cMag, align 4
  %call = call float @packFloat(i32 noundef %13, i32 noundef %14)
  ret float %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @fDiff(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4
  store float %b, ptr %b.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  %1 = load float, ptr %b.addr, align 4
  %fneg = fneg float %1
  %call = call float @fSum(float noundef %0, float noundef %fneg)
  ret float %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @fProd(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aExp = alloca i32, align 4
  %aMag = alloca i32, align 4
  %bExp = alloca i32, align 4
  %bMag = alloca i32, align 4
  %lcMag = alloca i64, align 8
  %icMag = alloca i32, align 4
  %cExp = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store float %b, ptr %b.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  call void @unpackFloat(float noundef %0, ptr noundef %aExp, ptr noundef %aMag)
  %1 = load float, ptr %b.addr, align 4
  call void @unpackFloat(float noundef %1, ptr noundef %bExp, ptr noundef %bMag)
  %2 = load i32, ptr %aMag, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, ptr %bMag, align 4
  %conv1 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, ptr %lcMag, align 8
  %4 = load i64, ptr %lcMag, align 8
  %shr = ashr i64 %4, 23
  store i64 %shr, ptr %lcMag, align 8
  %5 = load i64, ptr %lcMag, align 8
  %conv2 = trunc i64 %5 to i32
  store i32 %conv2, ptr %icMag, align 4
  %6 = load i32, ptr %aExp, align 4
  %7 = load i32, ptr %bExp, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, ptr %cExp, align 4
  call void @normalizeFloat(ptr noundef %cExp, ptr noundef %icMag)
  %8 = load i32, ptr %cExp, align 4
  %9 = load i32, ptr %icMag, align 4
  %call = call float @packFloat(i32 noundef %8, i32 noundef %9)
  ret float %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %sum = alloca float, align 4
  %diff = alloca float, align 4
  %prod = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store float 0x3FD3333340000000, ptr %a, align 4
  store float 0xC011333340000000, ptr %b, align 4
  %0 = load float, ptr %a, align 4
  %1 = load float, ptr %b, align 4
  %call = call float @fSum(float noundef %0, float noundef %1)
  store float %call, ptr %sum, align 4
  %2 = load float, ptr %a, align 4
  %3 = load float, ptr %b, align 4
  %call1 = call float @fDiff(float noundef %2, float noundef %3)
  store float %call1, ptr %diff, align 4
  %4 = load float, ptr %a, align 4
  %5 = load float, ptr %b, align 4
  %call2 = call float @fProd(float noundef %4, float noundef %5)
  store float %call2, ptr %prod, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
!9 = distinct !{!9, !6}
