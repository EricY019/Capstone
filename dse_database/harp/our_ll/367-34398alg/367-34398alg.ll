; ModuleID = 'code/367-34398alg.c'
source_filename = "code/367-34398alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @absolute(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @packFloat(i32 %exponent, i32 %magnitude) #0 {
entry:
  %retval = alloca float, align 4
  %exponent.addr = alloca i32, align 4
  %magnitude.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %exponent, i32* %exponent.addr, align 4
  store i32 %magnitude, i32* %magnitude.addr, align 4
  %0 = load i32, i32* %magnitude.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %magnitude.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  %2 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 0
  %shl = shl i32 %cond, 31
  store i32 %shl, i32* %res, align 4
  %3 = load i32, i32* %exponent.addr, align 4
  %add = add nsw i32 %3, 127
  %shl2 = shl i32 %add, 23
  %and = and i32 %shl2, 2139095040
  %4 = load i32, i32* %res, align 4
  %or = or i32 %4, %and
  store i32 %or, i32* %res, align 4
  %5 = load i32, i32* %magnitude.addr, align 4
  %call = call i32 @absolute(i32 %5)
  %and3 = and i32 %call, 8388607
  %6 = load i32, i32* %res, align 4
  %or4 = or i32 %6, %and3
  store i32 %or4, i32* %res, align 4
  %7 = bitcast i32* %res to i8*
  %8 = bitcast i8* %7 to float*
  %9 = load float, float* %8, align 4
  store float %9, float* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load float, float* %retval, align 4
  ret float %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unpackFloat(float %aV, i32* %exponent, i32* %magnitude) #0 {
entry:
  %aV.addr = alloca float, align 4
  %exponent.addr = alloca i32*, align 8
  %magnitude.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  store float %aV, float* %aV.addr, align 4
  store i32* %exponent, i32** %exponent.addr, align 8
  store i32* %magnitude, i32** %magnitude.addr, align 8
  %0 = bitcast float* %aV.addr to i8*
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %a, align 4
  %3 = load i32, i32* %a, align 4
  %and = and i32 %3, 2139095040
  %shr = ashr i32 %and, 23
  %sub = sub nsw i32 %shr, 127
  %4 = load i32*, i32** %exponent.addr, align 8
  store i32 %sub, i32* %4, align 4
  %5 = load i32, i32* %a, align 4
  %and1 = and i32 %5, 8388607
  %add = add nsw i32 %and1, 8388608
  %6 = load i32*, i32** %magnitude.addr, align 8
  store i32 %add, i32* %6, align 4
  %7 = load i32, i32* %a, align 4
  %and2 = and i32 %7, -2147483648
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %magnitude.addr, align 8
  %9 = load i32, i32* %8, align 4
  %sub3 = sub nsw i32 0, %9
  %10 = load i32*, i32** %magnitude.addr, align 8
  store i32 %sub3, i32* %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @normalizeFloat(i32* %exponent, i32* %magnitude) #0 {
entry:
  %exponent.addr = alloca i32*, align 8
  %magnitude.addr = alloca i32*, align 8
  %sign = alloca i32, align 4
  store i32* %exponent, i32** %exponent.addr, align 8
  store i32* %magnitude, i32** %magnitude.addr, align 8
  %0 = load i32*, i32** %magnitude.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %exponent.addr, align 8
  store i32 0, i32* %2, align 4
  br label %if.end12

if.end:                                           ; preds = %entry
  store i32 0, i32* %sign, align 4
  %3 = load i32*, i32** %magnitude.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %sign, align 4
  %5 = load i32*, i32** %magnitude.addr, align 8
  %6 = load i32, i32* %5, align 4
  %sub = sub nsw i32 0, %6
  %7 = load i32*, i32** %magnitude.addr, align 8
  store i32 %sub, i32* %7, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %8 = load i32*, i32** %magnitude.addr, align 8
  %9 = load i32, i32* %8, align 4
  %and = and i32 %9, -8388608
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32*, i32** %magnitude.addr, align 8
  %11 = load i32, i32* %10, align 4
  %shl = shl i32 %11, 1
  store i32 %shl, i32* %10, align 4
  %12 = load i32*, i32** %exponent.addr, align 8
  %13 = load i32, i32* %12, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %12, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %while.cond5

while.cond5:                                      ; preds = %while.body7, %while.end
  %14 = load i32*, i32** %magnitude.addr, align 8
  %15 = load i32, i32* %14, align 4
  %and6 = and i32 %15, -16777216
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %while.body7, label %while.end8

while.body7:                                      ; preds = %while.cond5
  %16 = load i32*, i32** %magnitude.addr, align 8
  %17 = load i32, i32* %16, align 4
  %shr = ashr i32 %17, 1
  store i32 %shr, i32* %16, align 4
  %18 = load i32*, i32** %exponent.addr, align 8
  %19 = load i32, i32* %18, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %18, align 4
  br label %while.cond5, !llvm.loop !6

while.end8:                                       ; preds = %while.cond5
  %20 = load i32, i32* %sign, align 4
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.end8
  %21 = load i32*, i32** %magnitude.addr, align 8
  %22 = load i32, i32* %21, align 4
  %sub11 = sub nsw i32 0, %22
  %23 = load i32*, i32** %magnitude.addr, align 8
  store i32 %sub11, i32* %23, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then10, %while.end8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fSum(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %aExp = alloca i32, align 4
  %aMag = alloca i32, align 4
  %bExp = alloca i32, align 4
  %bMag = alloca i32, align 4
  %cExp = alloca i32, align 4
  %cMag = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  call void @unpackFloat(float %0, i32* %aExp, i32* %aMag)
  %1 = load float, float* %b.addr, align 4
  call void @unpackFloat(float %1, i32* %bExp, i32* %bMag)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %aExp, align 4
  %3 = load i32, i32* %bExp, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %aExp, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %aExp, align 4
  %5 = load i32, i32* %aMag, align 4
  %shr = ashr i32 %5, 1
  store i32 %shr, i32* %aMag, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %6 = load i32, i32* %bExp, align 4
  %7 = load i32, i32* %aExp, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %while.body3, label %while.end6

while.body3:                                      ; preds = %while.cond1
  %8 = load i32, i32* %bExp, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* %bExp, align 4
  %9 = load i32, i32* %bMag, align 4
  %shr5 = ashr i32 %9, 1
  store i32 %shr5, i32* %bMag, align 4
  br label %while.cond1, !llvm.loop !8

while.end6:                                       ; preds = %while.cond1
  %10 = load i32, i32* %bExp, align 4
  store i32 %10, i32* %cExp, align 4
  %11 = load i32, i32* %aMag, align 4
  %12 = load i32, i32* %bMag, align 4
  %add = add nsw i32 %11, %12
  store i32 %add, i32* %cMag, align 4
  call void @normalizeFloat(i32* %cExp, i32* %cMag)
  %13 = load i32, i32* %cExp, align 4
  %14 = load i32, i32* %cMag, align 4
  %call = call float @packFloat(i32 %13, i32 %14)
  ret float %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fDiff(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %fneg = fneg float %1
  %call = call float @fSum(float %0, float %fneg)
  ret float %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fProd(float %a, float %b) #0 {
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
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  call void @unpackFloat(float %0, i32* %aExp, i32* %aMag)
  %1 = load float, float* %b.addr, align 4
  call void @unpackFloat(float %1, i32* %bExp, i32* %bMag)
  %2 = load i32, i32* %aMag, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, i32* %bMag, align 4
  %conv1 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* %lcMag, align 8
  %4 = load i64, i64* %lcMag, align 8
  %shr = ashr i64 %4, 23
  store i64 %shr, i64* %lcMag, align 8
  %5 = load i64, i64* %lcMag, align 8
  %conv2 = trunc i64 %5 to i32
  store i32 %conv2, i32* %icMag, align 4
  %6 = load i32, i32* %aExp, align 4
  %7 = load i32, i32* %bExp, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %cExp, align 4
  call void @normalizeFloat(i32* %cExp, i32* %icMag)
  %8 = load i32, i32* %cExp, align 4
  %9 = load i32, i32* %icMag, align 4
  %call = call float @packFloat(i32 %8, i32 %9)
  ret float %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %sum = alloca float, align 4
  %diff = alloca float, align 4
  %prod = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float 0x3FD3333340000000, float* %a, align 4
  store float 0xC011333340000000, float* %b, align 4
  %0 = load float, float* %a, align 4
  %1 = load float, float* %b, align 4
  %call = call float @fSum(float %0, float %1)
  store float %call, float* %sum, align 4
  %2 = load float, float* %a, align 4
  %3 = load float, float* %b, align 4
  %call1 = call float @fDiff(float %2, float %3)
  store float %call1, float* %diff, align 4
  %4 = load float, float* %a, align 4
  %5 = load float, float* %b, align 4
  %call2 = call float @fProd(float %4, float %5)
  store float %call2, float* %prod, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
