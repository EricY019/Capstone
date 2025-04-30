; ModuleID = 'code/189-26350pr63594-2.c'
source_filename = "code/189-26350pr63594-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <64 x i8> @test1char64(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <64 x i8>, align 64
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %vecinit = insertelement <64 x i8> undef, i8 %0, i32 0
  %1 = load i8, i8* %c.addr, align 1
  %vecinit1 = insertelement <64 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, i8* %c.addr, align 1
  %vecinit2 = insertelement <64 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, i8* %c.addr, align 1
  %vecinit3 = insertelement <64 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, i8* %c.addr, align 1
  %vecinit4 = insertelement <64 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, i8* %c.addr, align 1
  %vecinit5 = insertelement <64 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, i8* %c.addr, align 1
  %vecinit6 = insertelement <64 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, i8* %c.addr, align 1
  %vecinit7 = insertelement <64 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, i8* %c.addr, align 1
  %vecinit8 = insertelement <64 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, i8* %c.addr, align 1
  %vecinit9 = insertelement <64 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, i8* %c.addr, align 1
  %vecinit10 = insertelement <64 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, i8* %c.addr, align 1
  %vecinit11 = insertelement <64 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, i8* %c.addr, align 1
  %vecinit12 = insertelement <64 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, i8* %c.addr, align 1
  %vecinit13 = insertelement <64 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, i8* %c.addr, align 1
  %vecinit14 = insertelement <64 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, i8* %c.addr, align 1
  %vecinit15 = insertelement <64 x i8> %vecinit14, i8 %15, i32 15
  %16 = load i8, i8* %c.addr, align 1
  %vecinit16 = insertelement <64 x i8> %vecinit15, i8 %16, i32 16
  %17 = load i8, i8* %c.addr, align 1
  %vecinit17 = insertelement <64 x i8> %vecinit16, i8 %17, i32 17
  %18 = load i8, i8* %c.addr, align 1
  %vecinit18 = insertelement <64 x i8> %vecinit17, i8 %18, i32 18
  %19 = load i8, i8* %c.addr, align 1
  %vecinit19 = insertelement <64 x i8> %vecinit18, i8 %19, i32 19
  %20 = load i8, i8* %c.addr, align 1
  %vecinit20 = insertelement <64 x i8> %vecinit19, i8 %20, i32 20
  %21 = load i8, i8* %c.addr, align 1
  %vecinit21 = insertelement <64 x i8> %vecinit20, i8 %21, i32 21
  %22 = load i8, i8* %c.addr, align 1
  %vecinit22 = insertelement <64 x i8> %vecinit21, i8 %22, i32 22
  %23 = load i8, i8* %c.addr, align 1
  %vecinit23 = insertelement <64 x i8> %vecinit22, i8 %23, i32 23
  %24 = load i8, i8* %c.addr, align 1
  %vecinit24 = insertelement <64 x i8> %vecinit23, i8 %24, i32 24
  %25 = load i8, i8* %c.addr, align 1
  %vecinit25 = insertelement <64 x i8> %vecinit24, i8 %25, i32 25
  %26 = load i8, i8* %c.addr, align 1
  %vecinit26 = insertelement <64 x i8> %vecinit25, i8 %26, i32 26
  %27 = load i8, i8* %c.addr, align 1
  %vecinit27 = insertelement <64 x i8> %vecinit26, i8 %27, i32 27
  %28 = load i8, i8* %c.addr, align 1
  %vecinit28 = insertelement <64 x i8> %vecinit27, i8 %28, i32 28
  %29 = load i8, i8* %c.addr, align 1
  %vecinit29 = insertelement <64 x i8> %vecinit28, i8 %29, i32 29
  %30 = load i8, i8* %c.addr, align 1
  %vecinit30 = insertelement <64 x i8> %vecinit29, i8 %30, i32 30
  %31 = load i8, i8* %c.addr, align 1
  %vecinit31 = insertelement <64 x i8> %vecinit30, i8 %31, i32 31
  %32 = load i8, i8* %c.addr, align 1
  %vecinit32 = insertelement <64 x i8> %vecinit31, i8 %32, i32 32
  %33 = load i8, i8* %c.addr, align 1
  %vecinit33 = insertelement <64 x i8> %vecinit32, i8 %33, i32 33
  %34 = load i8, i8* %c.addr, align 1
  %vecinit34 = insertelement <64 x i8> %vecinit33, i8 %34, i32 34
  %35 = load i8, i8* %c.addr, align 1
  %vecinit35 = insertelement <64 x i8> %vecinit34, i8 %35, i32 35
  %36 = load i8, i8* %c.addr, align 1
  %vecinit36 = insertelement <64 x i8> %vecinit35, i8 %36, i32 36
  %37 = load i8, i8* %c.addr, align 1
  %vecinit37 = insertelement <64 x i8> %vecinit36, i8 %37, i32 37
  %38 = load i8, i8* %c.addr, align 1
  %vecinit38 = insertelement <64 x i8> %vecinit37, i8 %38, i32 38
  %39 = load i8, i8* %c.addr, align 1
  %vecinit39 = insertelement <64 x i8> %vecinit38, i8 %39, i32 39
  %40 = load i8, i8* %c.addr, align 1
  %vecinit40 = insertelement <64 x i8> %vecinit39, i8 %40, i32 40
  %41 = load i8, i8* %c.addr, align 1
  %vecinit41 = insertelement <64 x i8> %vecinit40, i8 %41, i32 41
  %42 = load i8, i8* %c.addr, align 1
  %vecinit42 = insertelement <64 x i8> %vecinit41, i8 %42, i32 42
  %43 = load i8, i8* %c.addr, align 1
  %vecinit43 = insertelement <64 x i8> %vecinit42, i8 %43, i32 43
  %44 = load i8, i8* %c.addr, align 1
  %vecinit44 = insertelement <64 x i8> %vecinit43, i8 %44, i32 44
  %45 = load i8, i8* %c.addr, align 1
  %vecinit45 = insertelement <64 x i8> %vecinit44, i8 %45, i32 45
  %46 = load i8, i8* %c.addr, align 1
  %vecinit46 = insertelement <64 x i8> %vecinit45, i8 %46, i32 46
  %47 = load i8, i8* %c.addr, align 1
  %vecinit47 = insertelement <64 x i8> %vecinit46, i8 %47, i32 47
  %48 = load i8, i8* %c.addr, align 1
  %vecinit48 = insertelement <64 x i8> %vecinit47, i8 %48, i32 48
  %49 = load i8, i8* %c.addr, align 1
  %vecinit49 = insertelement <64 x i8> %vecinit48, i8 %49, i32 49
  %50 = load i8, i8* %c.addr, align 1
  %vecinit50 = insertelement <64 x i8> %vecinit49, i8 %50, i32 50
  %51 = load i8, i8* %c.addr, align 1
  %vecinit51 = insertelement <64 x i8> %vecinit50, i8 %51, i32 51
  %52 = load i8, i8* %c.addr, align 1
  %vecinit52 = insertelement <64 x i8> %vecinit51, i8 %52, i32 52
  %53 = load i8, i8* %c.addr, align 1
  %vecinit53 = insertelement <64 x i8> %vecinit52, i8 %53, i32 53
  %54 = load i8, i8* %c.addr, align 1
  %vecinit54 = insertelement <64 x i8> %vecinit53, i8 %54, i32 54
  %55 = load i8, i8* %c.addr, align 1
  %vecinit55 = insertelement <64 x i8> %vecinit54, i8 %55, i32 55
  %56 = load i8, i8* %c.addr, align 1
  %vecinit56 = insertelement <64 x i8> %vecinit55, i8 %56, i32 56
  %57 = load i8, i8* %c.addr, align 1
  %vecinit57 = insertelement <64 x i8> %vecinit56, i8 %57, i32 57
  %58 = load i8, i8* %c.addr, align 1
  %vecinit58 = insertelement <64 x i8> %vecinit57, i8 %58, i32 58
  %59 = load i8, i8* %c.addr, align 1
  %vecinit59 = insertelement <64 x i8> %vecinit58, i8 %59, i32 59
  %60 = load i8, i8* %c.addr, align 1
  %vecinit60 = insertelement <64 x i8> %vecinit59, i8 %60, i32 60
  %61 = load i8, i8* %c.addr, align 1
  %vecinit61 = insertelement <64 x i8> %vecinit60, i8 %61, i32 61
  %62 = load i8, i8* %c.addr, align 1
  %vecinit62 = insertelement <64 x i8> %vecinit61, i8 %62, i32 62
  %63 = load i8, i8* %c.addr, align 1
  %vecinit63 = insertelement <64 x i8> %vecinit62, i8 %63, i32 63
  store <64 x i8> %vecinit63, <64 x i8>* %v, align 64
  %64 = load <64 x i8>, <64 x i8>* %v, align 64
  ret <64 x i8> %64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <64 x i8> @test2char64(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %v = alloca <64 x i8>, align 64
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %vecinit = insertelement <64 x i8> undef, i8 %2, i32 0
  %3 = load i8, i8* %c, align 1
  %vecinit1 = insertelement <64 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, i8* %c, align 1
  %vecinit2 = insertelement <64 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, i8* %c, align 1
  %vecinit3 = insertelement <64 x i8> %vecinit2, i8 %5, i32 3
  %6 = load i8, i8* %c, align 1
  %vecinit4 = insertelement <64 x i8> %vecinit3, i8 %6, i32 4
  %7 = load i8, i8* %c, align 1
  %vecinit5 = insertelement <64 x i8> %vecinit4, i8 %7, i32 5
  %8 = load i8, i8* %c, align 1
  %vecinit6 = insertelement <64 x i8> %vecinit5, i8 %8, i32 6
  %9 = load i8, i8* %c, align 1
  %vecinit7 = insertelement <64 x i8> %vecinit6, i8 %9, i32 7
  %10 = load i8, i8* %c, align 1
  %vecinit8 = insertelement <64 x i8> %vecinit7, i8 %10, i32 8
  %11 = load i8, i8* %c, align 1
  %vecinit9 = insertelement <64 x i8> %vecinit8, i8 %11, i32 9
  %12 = load i8, i8* %c, align 1
  %vecinit10 = insertelement <64 x i8> %vecinit9, i8 %12, i32 10
  %13 = load i8, i8* %c, align 1
  %vecinit11 = insertelement <64 x i8> %vecinit10, i8 %13, i32 11
  %14 = load i8, i8* %c, align 1
  %vecinit12 = insertelement <64 x i8> %vecinit11, i8 %14, i32 12
  %15 = load i8, i8* %c, align 1
  %vecinit13 = insertelement <64 x i8> %vecinit12, i8 %15, i32 13
  %16 = load i8, i8* %c, align 1
  %vecinit14 = insertelement <64 x i8> %vecinit13, i8 %16, i32 14
  %17 = load i8, i8* %c, align 1
  %vecinit15 = insertelement <64 x i8> %vecinit14, i8 %17, i32 15
  %18 = load i8, i8* %c, align 1
  %vecinit16 = insertelement <64 x i8> %vecinit15, i8 %18, i32 16
  %19 = load i8, i8* %c, align 1
  %vecinit17 = insertelement <64 x i8> %vecinit16, i8 %19, i32 17
  %20 = load i8, i8* %c, align 1
  %vecinit18 = insertelement <64 x i8> %vecinit17, i8 %20, i32 18
  %21 = load i8, i8* %c, align 1
  %vecinit19 = insertelement <64 x i8> %vecinit18, i8 %21, i32 19
  %22 = load i8, i8* %c, align 1
  %vecinit20 = insertelement <64 x i8> %vecinit19, i8 %22, i32 20
  %23 = load i8, i8* %c, align 1
  %vecinit21 = insertelement <64 x i8> %vecinit20, i8 %23, i32 21
  %24 = load i8, i8* %c, align 1
  %vecinit22 = insertelement <64 x i8> %vecinit21, i8 %24, i32 22
  %25 = load i8, i8* %c, align 1
  %vecinit23 = insertelement <64 x i8> %vecinit22, i8 %25, i32 23
  %26 = load i8, i8* %c, align 1
  %vecinit24 = insertelement <64 x i8> %vecinit23, i8 %26, i32 24
  %27 = load i8, i8* %c, align 1
  %vecinit25 = insertelement <64 x i8> %vecinit24, i8 %27, i32 25
  %28 = load i8, i8* %c, align 1
  %vecinit26 = insertelement <64 x i8> %vecinit25, i8 %28, i32 26
  %29 = load i8, i8* %c, align 1
  %vecinit27 = insertelement <64 x i8> %vecinit26, i8 %29, i32 27
  %30 = load i8, i8* %c, align 1
  %vecinit28 = insertelement <64 x i8> %vecinit27, i8 %30, i32 28
  %31 = load i8, i8* %c, align 1
  %vecinit29 = insertelement <64 x i8> %vecinit28, i8 %31, i32 29
  %32 = load i8, i8* %c, align 1
  %vecinit30 = insertelement <64 x i8> %vecinit29, i8 %32, i32 30
  %33 = load i8, i8* %c, align 1
  %vecinit31 = insertelement <64 x i8> %vecinit30, i8 %33, i32 31
  %34 = load i8, i8* %c, align 1
  %vecinit32 = insertelement <64 x i8> %vecinit31, i8 %34, i32 32
  %35 = load i8, i8* %c, align 1
  %vecinit33 = insertelement <64 x i8> %vecinit32, i8 %35, i32 33
  %36 = load i8, i8* %c, align 1
  %vecinit34 = insertelement <64 x i8> %vecinit33, i8 %36, i32 34
  %37 = load i8, i8* %c, align 1
  %vecinit35 = insertelement <64 x i8> %vecinit34, i8 %37, i32 35
  %38 = load i8, i8* %c, align 1
  %vecinit36 = insertelement <64 x i8> %vecinit35, i8 %38, i32 36
  %39 = load i8, i8* %c, align 1
  %vecinit37 = insertelement <64 x i8> %vecinit36, i8 %39, i32 37
  %40 = load i8, i8* %c, align 1
  %vecinit38 = insertelement <64 x i8> %vecinit37, i8 %40, i32 38
  %41 = load i8, i8* %c, align 1
  %vecinit39 = insertelement <64 x i8> %vecinit38, i8 %41, i32 39
  %42 = load i8, i8* %c, align 1
  %vecinit40 = insertelement <64 x i8> %vecinit39, i8 %42, i32 40
  %43 = load i8, i8* %c, align 1
  %vecinit41 = insertelement <64 x i8> %vecinit40, i8 %43, i32 41
  %44 = load i8, i8* %c, align 1
  %vecinit42 = insertelement <64 x i8> %vecinit41, i8 %44, i32 42
  %45 = load i8, i8* %c, align 1
  %vecinit43 = insertelement <64 x i8> %vecinit42, i8 %45, i32 43
  %46 = load i8, i8* %c, align 1
  %vecinit44 = insertelement <64 x i8> %vecinit43, i8 %46, i32 44
  %47 = load i8, i8* %c, align 1
  %vecinit45 = insertelement <64 x i8> %vecinit44, i8 %47, i32 45
  %48 = load i8, i8* %c, align 1
  %vecinit46 = insertelement <64 x i8> %vecinit45, i8 %48, i32 46
  %49 = load i8, i8* %c, align 1
  %vecinit47 = insertelement <64 x i8> %vecinit46, i8 %49, i32 47
  %50 = load i8, i8* %c, align 1
  %vecinit48 = insertelement <64 x i8> %vecinit47, i8 %50, i32 48
  %51 = load i8, i8* %c, align 1
  %vecinit49 = insertelement <64 x i8> %vecinit48, i8 %51, i32 49
  %52 = load i8, i8* %c, align 1
  %vecinit50 = insertelement <64 x i8> %vecinit49, i8 %52, i32 50
  %53 = load i8, i8* %c, align 1
  %vecinit51 = insertelement <64 x i8> %vecinit50, i8 %53, i32 51
  %54 = load i8, i8* %c, align 1
  %vecinit52 = insertelement <64 x i8> %vecinit51, i8 %54, i32 52
  %55 = load i8, i8* %c, align 1
  %vecinit53 = insertelement <64 x i8> %vecinit52, i8 %55, i32 53
  %56 = load i8, i8* %c, align 1
  %vecinit54 = insertelement <64 x i8> %vecinit53, i8 %56, i32 54
  %57 = load i8, i8* %c, align 1
  %vecinit55 = insertelement <64 x i8> %vecinit54, i8 %57, i32 55
  %58 = load i8, i8* %c, align 1
  %vecinit56 = insertelement <64 x i8> %vecinit55, i8 %58, i32 56
  %59 = load i8, i8* %c, align 1
  %vecinit57 = insertelement <64 x i8> %vecinit56, i8 %59, i32 57
  %60 = load i8, i8* %c, align 1
  %vecinit58 = insertelement <64 x i8> %vecinit57, i8 %60, i32 58
  %61 = load i8, i8* %c, align 1
  %vecinit59 = insertelement <64 x i8> %vecinit58, i8 %61, i32 59
  %62 = load i8, i8* %c, align 1
  %vecinit60 = insertelement <64 x i8> %vecinit59, i8 %62, i32 60
  %63 = load i8, i8* %c, align 1
  %vecinit61 = insertelement <64 x i8> %vecinit60, i8 %63, i32 61
  %64 = load i8, i8* %c, align 1
  %vecinit62 = insertelement <64 x i8> %vecinit61, i8 %64, i32 62
  %65 = load i8, i8* %c, align 1
  %vecinit63 = insertelement <64 x i8> %vecinit62, i8 %65, i32 63
  store <64 x i8> %vecinit63, <64 x i8>* %v, align 64
  %66 = load <64 x i8>, <64 x i8>* %v, align 64
  ret <64 x i8> %66
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3char64() #0 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <64 x i8>, align 64
  %b = alloca <64 x i8>, align 64
  store i8 17, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %call = call <64 x i8> @test1char64(i8 signext %0)
  store <64 x i8> %call, <64 x i8>* %a, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <64 x i8>, <64 x i8>* %a, align 64
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <64 x i8> %2, i32 %3
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call3 = call <64 x i8> @test2char64(i8* %c)
  store <64 x i8> %call3, <64 x i8>* %b, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 64
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <64 x i8>, <64 x i8>* %a, align 64
  %7 = load i32, i32* %i, align 4
  %vecext8 = extractelement <64 x i8> %6, i32 %7
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond4, !llvm.loop !6

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <32 x i8> @test1char32(i8 signext %c) #2 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <32 x i8>, align 32
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %vecinit = insertelement <32 x i8> undef, i8 %0, i32 0
  %1 = load i8, i8* %c.addr, align 1
  %vecinit1 = insertelement <32 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, i8* %c.addr, align 1
  %vecinit2 = insertelement <32 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, i8* %c.addr, align 1
  %vecinit3 = insertelement <32 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, i8* %c.addr, align 1
  %vecinit4 = insertelement <32 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, i8* %c.addr, align 1
  %vecinit5 = insertelement <32 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, i8* %c.addr, align 1
  %vecinit6 = insertelement <32 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, i8* %c.addr, align 1
  %vecinit7 = insertelement <32 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, i8* %c.addr, align 1
  %vecinit8 = insertelement <32 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, i8* %c.addr, align 1
  %vecinit9 = insertelement <32 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, i8* %c.addr, align 1
  %vecinit10 = insertelement <32 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, i8* %c.addr, align 1
  %vecinit11 = insertelement <32 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, i8* %c.addr, align 1
  %vecinit12 = insertelement <32 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, i8* %c.addr, align 1
  %vecinit13 = insertelement <32 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, i8* %c.addr, align 1
  %vecinit14 = insertelement <32 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, i8* %c.addr, align 1
  %vecinit15 = insertelement <32 x i8> %vecinit14, i8 %15, i32 15
  %16 = load i8, i8* %c.addr, align 1
  %vecinit16 = insertelement <32 x i8> %vecinit15, i8 %16, i32 16
  %17 = load i8, i8* %c.addr, align 1
  %vecinit17 = insertelement <32 x i8> %vecinit16, i8 %17, i32 17
  %18 = load i8, i8* %c.addr, align 1
  %vecinit18 = insertelement <32 x i8> %vecinit17, i8 %18, i32 18
  %19 = load i8, i8* %c.addr, align 1
  %vecinit19 = insertelement <32 x i8> %vecinit18, i8 %19, i32 19
  %20 = load i8, i8* %c.addr, align 1
  %vecinit20 = insertelement <32 x i8> %vecinit19, i8 %20, i32 20
  %21 = load i8, i8* %c.addr, align 1
  %vecinit21 = insertelement <32 x i8> %vecinit20, i8 %21, i32 21
  %22 = load i8, i8* %c.addr, align 1
  %vecinit22 = insertelement <32 x i8> %vecinit21, i8 %22, i32 22
  %23 = load i8, i8* %c.addr, align 1
  %vecinit23 = insertelement <32 x i8> %vecinit22, i8 %23, i32 23
  %24 = load i8, i8* %c.addr, align 1
  %vecinit24 = insertelement <32 x i8> %vecinit23, i8 %24, i32 24
  %25 = load i8, i8* %c.addr, align 1
  %vecinit25 = insertelement <32 x i8> %vecinit24, i8 %25, i32 25
  %26 = load i8, i8* %c.addr, align 1
  %vecinit26 = insertelement <32 x i8> %vecinit25, i8 %26, i32 26
  %27 = load i8, i8* %c.addr, align 1
  %vecinit27 = insertelement <32 x i8> %vecinit26, i8 %27, i32 27
  %28 = load i8, i8* %c.addr, align 1
  %vecinit28 = insertelement <32 x i8> %vecinit27, i8 %28, i32 28
  %29 = load i8, i8* %c.addr, align 1
  %vecinit29 = insertelement <32 x i8> %vecinit28, i8 %29, i32 29
  %30 = load i8, i8* %c.addr, align 1
  %vecinit30 = insertelement <32 x i8> %vecinit29, i8 %30, i32 30
  %31 = load i8, i8* %c.addr, align 1
  %vecinit31 = insertelement <32 x i8> %vecinit30, i8 %31, i32 31
  store <32 x i8> %vecinit31, <32 x i8>* %v, align 32
  %32 = load <32 x i8>, <32 x i8>* %v, align 32
  ret <32 x i8> %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <32 x i8> @test2char32(i8* %p) #2 {
entry:
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %v = alloca <32 x i8>, align 32
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %vecinit = insertelement <32 x i8> undef, i8 %2, i32 0
  %3 = load i8, i8* %c, align 1
  %vecinit1 = insertelement <32 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, i8* %c, align 1
  %vecinit2 = insertelement <32 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, i8* %c, align 1
  %vecinit3 = insertelement <32 x i8> %vecinit2, i8 %5, i32 3
  %6 = load i8, i8* %c, align 1
  %vecinit4 = insertelement <32 x i8> %vecinit3, i8 %6, i32 4
  %7 = load i8, i8* %c, align 1
  %vecinit5 = insertelement <32 x i8> %vecinit4, i8 %7, i32 5
  %8 = load i8, i8* %c, align 1
  %vecinit6 = insertelement <32 x i8> %vecinit5, i8 %8, i32 6
  %9 = load i8, i8* %c, align 1
  %vecinit7 = insertelement <32 x i8> %vecinit6, i8 %9, i32 7
  %10 = load i8, i8* %c, align 1
  %vecinit8 = insertelement <32 x i8> %vecinit7, i8 %10, i32 8
  %11 = load i8, i8* %c, align 1
  %vecinit9 = insertelement <32 x i8> %vecinit8, i8 %11, i32 9
  %12 = load i8, i8* %c, align 1
  %vecinit10 = insertelement <32 x i8> %vecinit9, i8 %12, i32 10
  %13 = load i8, i8* %c, align 1
  %vecinit11 = insertelement <32 x i8> %vecinit10, i8 %13, i32 11
  %14 = load i8, i8* %c, align 1
  %vecinit12 = insertelement <32 x i8> %vecinit11, i8 %14, i32 12
  %15 = load i8, i8* %c, align 1
  %vecinit13 = insertelement <32 x i8> %vecinit12, i8 %15, i32 13
  %16 = load i8, i8* %c, align 1
  %vecinit14 = insertelement <32 x i8> %vecinit13, i8 %16, i32 14
  %17 = load i8, i8* %c, align 1
  %vecinit15 = insertelement <32 x i8> %vecinit14, i8 %17, i32 15
  %18 = load i8, i8* %c, align 1
  %vecinit16 = insertelement <32 x i8> %vecinit15, i8 %18, i32 16
  %19 = load i8, i8* %c, align 1
  %vecinit17 = insertelement <32 x i8> %vecinit16, i8 %19, i32 17
  %20 = load i8, i8* %c, align 1
  %vecinit18 = insertelement <32 x i8> %vecinit17, i8 %20, i32 18
  %21 = load i8, i8* %c, align 1
  %vecinit19 = insertelement <32 x i8> %vecinit18, i8 %21, i32 19
  %22 = load i8, i8* %c, align 1
  %vecinit20 = insertelement <32 x i8> %vecinit19, i8 %22, i32 20
  %23 = load i8, i8* %c, align 1
  %vecinit21 = insertelement <32 x i8> %vecinit20, i8 %23, i32 21
  %24 = load i8, i8* %c, align 1
  %vecinit22 = insertelement <32 x i8> %vecinit21, i8 %24, i32 22
  %25 = load i8, i8* %c, align 1
  %vecinit23 = insertelement <32 x i8> %vecinit22, i8 %25, i32 23
  %26 = load i8, i8* %c, align 1
  %vecinit24 = insertelement <32 x i8> %vecinit23, i8 %26, i32 24
  %27 = load i8, i8* %c, align 1
  %vecinit25 = insertelement <32 x i8> %vecinit24, i8 %27, i32 25
  %28 = load i8, i8* %c, align 1
  %vecinit26 = insertelement <32 x i8> %vecinit25, i8 %28, i32 26
  %29 = load i8, i8* %c, align 1
  %vecinit27 = insertelement <32 x i8> %vecinit26, i8 %29, i32 27
  %30 = load i8, i8* %c, align 1
  %vecinit28 = insertelement <32 x i8> %vecinit27, i8 %30, i32 28
  %31 = load i8, i8* %c, align 1
  %vecinit29 = insertelement <32 x i8> %vecinit28, i8 %31, i32 29
  %32 = load i8, i8* %c, align 1
  %vecinit30 = insertelement <32 x i8> %vecinit29, i8 %32, i32 30
  %33 = load i8, i8* %c, align 1
  %vecinit31 = insertelement <32 x i8> %vecinit30, i8 %33, i32 31
  store <32 x i8> %vecinit31, <32 x i8>* %v, align 32
  %34 = load <32 x i8>, <32 x i8>* %v, align 32
  ret <32 x i8> %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3char32() #2 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <32 x i8>, align 32
  %b = alloca <32 x i8>, align 32
  store i8 17, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %call = call <32 x i8> @test1char32(i8 signext %0)
  store <32 x i8> %call, <32 x i8>* %a, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <32 x i8>, <32 x i8>* %a, align 32
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <32 x i8> %2, i32 %3
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call3 = call <32 x i8> @test2char32(i8* %c)
  store <32 x i8> %call3, <32 x i8>* %b, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 32
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <32 x i8>, <32 x i8>* %a, align 32
  %7 = load i32, i32* %i, align 4
  %vecext8 = extractelement <32 x i8> %6, i32 %7
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond4, !llvm.loop !8

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <16 x i8> @test1char16(i8 signext %c) #3 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <16 x i8>, align 16
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %vecinit = insertelement <16 x i8> undef, i8 %0, i32 0
  %1 = load i8, i8* %c.addr, align 1
  %vecinit1 = insertelement <16 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, i8* %c.addr, align 1
  %vecinit2 = insertelement <16 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, i8* %c.addr, align 1
  %vecinit3 = insertelement <16 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, i8* %c.addr, align 1
  %vecinit4 = insertelement <16 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, i8* %c.addr, align 1
  %vecinit5 = insertelement <16 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, i8* %c.addr, align 1
  %vecinit6 = insertelement <16 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, i8* %c.addr, align 1
  %vecinit7 = insertelement <16 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, i8* %c.addr, align 1
  %vecinit8 = insertelement <16 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, i8* %c.addr, align 1
  %vecinit9 = insertelement <16 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, i8* %c.addr, align 1
  %vecinit10 = insertelement <16 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, i8* %c.addr, align 1
  %vecinit11 = insertelement <16 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, i8* %c.addr, align 1
  %vecinit12 = insertelement <16 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, i8* %c.addr, align 1
  %vecinit13 = insertelement <16 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, i8* %c.addr, align 1
  %vecinit14 = insertelement <16 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, i8* %c.addr, align 1
  %vecinit15 = insertelement <16 x i8> %vecinit14, i8 %15, i32 15
  store <16 x i8> %vecinit15, <16 x i8>* %v, align 16
  %16 = load <16 x i8>, <16 x i8>* %v, align 16
  ret <16 x i8> %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <16 x i8> @test2char16(i8* %p) #3 {
entry:
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %v = alloca <16 x i8>, align 16
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %vecinit = insertelement <16 x i8> undef, i8 %2, i32 0
  %3 = load i8, i8* %c, align 1
  %vecinit1 = insertelement <16 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, i8* %c, align 1
  %vecinit2 = insertelement <16 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, i8* %c, align 1
  %vecinit3 = insertelement <16 x i8> %vecinit2, i8 %5, i32 3
  %6 = load i8, i8* %c, align 1
  %vecinit4 = insertelement <16 x i8> %vecinit3, i8 %6, i32 4
  %7 = load i8, i8* %c, align 1
  %vecinit5 = insertelement <16 x i8> %vecinit4, i8 %7, i32 5
  %8 = load i8, i8* %c, align 1
  %vecinit6 = insertelement <16 x i8> %vecinit5, i8 %8, i32 6
  %9 = load i8, i8* %c, align 1
  %vecinit7 = insertelement <16 x i8> %vecinit6, i8 %9, i32 7
  %10 = load i8, i8* %c, align 1
  %vecinit8 = insertelement <16 x i8> %vecinit7, i8 %10, i32 8
  %11 = load i8, i8* %c, align 1
  %vecinit9 = insertelement <16 x i8> %vecinit8, i8 %11, i32 9
  %12 = load i8, i8* %c, align 1
  %vecinit10 = insertelement <16 x i8> %vecinit9, i8 %12, i32 10
  %13 = load i8, i8* %c, align 1
  %vecinit11 = insertelement <16 x i8> %vecinit10, i8 %13, i32 11
  %14 = load i8, i8* %c, align 1
  %vecinit12 = insertelement <16 x i8> %vecinit11, i8 %14, i32 12
  %15 = load i8, i8* %c, align 1
  %vecinit13 = insertelement <16 x i8> %vecinit12, i8 %15, i32 13
  %16 = load i8, i8* %c, align 1
  %vecinit14 = insertelement <16 x i8> %vecinit13, i8 %16, i32 14
  %17 = load i8, i8* %c, align 1
  %vecinit15 = insertelement <16 x i8> %vecinit14, i8 %17, i32 15
  store <16 x i8> %vecinit15, <16 x i8>* %v, align 16
  %18 = load <16 x i8>, <16 x i8>* %v, align 16
  ret <16 x i8> %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3char16() #3 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <16 x i8>, align 16
  %b = alloca <16 x i8>, align 16
  store i8 17, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %call = call <16 x i8> @test1char16(i8 signext %0)
  store <16 x i8> %call, <16 x i8>* %a, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <16 x i8>, <16 x i8>* %a, align 16
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <16 x i8> %2, i32 %3
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call3 = call <16 x i8> @test2char16(i8* %c)
  store <16 x i8> %call3, <16 x i8>* %b, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 16
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <16 x i8>, <16 x i8>* %a, align 16
  %7 = load i32, i32* %i, align 4
  %vecext8 = extractelement <16 x i8> %6, i32 %7
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond4, !llvm.loop !10

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test1char8(i8 signext %c) #4 {
entry:
  %retval = alloca <8 x i8>, align 8
  %c.addr = alloca i8, align 1
  %v = alloca <8 x i8>, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %vecinit = insertelement <8 x i8> undef, i8 %0, i32 0
  %1 = load i8, i8* %c.addr, align 1
  %vecinit1 = insertelement <8 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, i8* %c.addr, align 1
  %vecinit2 = insertelement <8 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, i8* %c.addr, align 1
  %vecinit3 = insertelement <8 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, i8* %c.addr, align 1
  %vecinit4 = insertelement <8 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, i8* %c.addr, align 1
  %vecinit5 = insertelement <8 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, i8* %c.addr, align 1
  %vecinit6 = insertelement <8 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, i8* %c.addr, align 1
  %vecinit7 = insertelement <8 x i8> %vecinit6, i8 %7, i32 7
  store <8 x i8> %vecinit7, <8 x i8>* %v, align 8
  %8 = load <8 x i8>, <8 x i8>* %v, align 8
  store <8 x i8> %8, <8 x i8>* %retval, align 8
  %9 = bitcast <8 x i8>* %retval to double*
  %10 = load double, double* %9, align 8
  ret double %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test2char8(i8* %p) #4 {
entry:
  %retval = alloca <8 x i8>, align 8
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %v = alloca <8 x i8>, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %vecinit = insertelement <8 x i8> undef, i8 %2, i32 0
  %3 = load i8, i8* %c, align 1
  %vecinit1 = insertelement <8 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, i8* %c, align 1
  %vecinit2 = insertelement <8 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, i8* %c, align 1
  %vecinit3 = insertelement <8 x i8> %vecinit2, i8 %5, i32 3
  %6 = load i8, i8* %c, align 1
  %vecinit4 = insertelement <8 x i8> %vecinit3, i8 %6, i32 4
  %7 = load i8, i8* %c, align 1
  %vecinit5 = insertelement <8 x i8> %vecinit4, i8 %7, i32 5
  %8 = load i8, i8* %c, align 1
  %vecinit6 = insertelement <8 x i8> %vecinit5, i8 %8, i32 6
  %9 = load i8, i8* %c, align 1
  %vecinit7 = insertelement <8 x i8> %vecinit6, i8 %9, i32 7
  store <8 x i8> %vecinit7, <8 x i8>* %v, align 8
  %10 = load <8 x i8>, <8 x i8>* %v, align 8
  store <8 x i8> %10, <8 x i8>* %retval, align 8
  %11 = bitcast <8 x i8>* %retval to double*
  %12 = load double, double* %11, align 8
  ret double %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3char8() #4 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store i8 17, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %call = call double @test1char8(i8 signext %0)
  %1 = bitcast <8 x i8>* %coerce to double*
  store double %call, double* %1, align 8
  %2 = load <8 x i8>, <8 x i8>* %coerce, align 8
  store <8 x i8> %2, <8 x i8>* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <8 x i8>, <8 x i8>* %a, align 8
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <8 x i8> %4, i32 %5
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %call3 = call double @test2char8(i8* %c)
  %7 = bitcast <8 x i8>* %coerce4 to double*
  store double %call3, double* %7, align 8
  %8 = load <8 x i8>, <8 x i8>* %coerce4, align 8
  store <8 x i8> %8, <8 x i8>* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 8
  br i1 %cmp6, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond5
  %10 = load <8 x i8>, <8 x i8>* %a, align 8
  %11 = load i32, i32* %i, align 4
  %vecext9 = extractelement <8 x i8> %10, i32 %11
  %conv10 = sext i8 %vecext9 to i32
  %cmp11 = icmp ne i32 %conv10, 17
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  call void @abort() #6
  unreachable

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond5, !llvm.loop !12

for.end17:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test1char4(i8 signext %c) #4 {
entry:
  %retval = alloca <4 x i8>, align 4
  %c.addr = alloca i8, align 1
  %v = alloca <4 x i8>, align 4
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %vecinit = insertelement <4 x i8> undef, i8 %0, i32 0
  %1 = load i8, i8* %c.addr, align 1
  %vecinit1 = insertelement <4 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, i8* %c.addr, align 1
  %vecinit2 = insertelement <4 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, i8* %c.addr, align 1
  %vecinit3 = insertelement <4 x i8> %vecinit2, i8 %3, i32 3
  store <4 x i8> %vecinit3, <4 x i8>* %v, align 4
  %4 = load <4 x i8>, <4 x i8>* %v, align 4
  store <4 x i8> %4, <4 x i8>* %retval, align 4
  %5 = bitcast <4 x i8>* %retval to i32*
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test2char4(i8* %p) #4 {
entry:
  %retval = alloca <4 x i8>, align 4
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %v = alloca <4 x i8>, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %vecinit = insertelement <4 x i8> undef, i8 %2, i32 0
  %3 = load i8, i8* %c, align 1
  %vecinit1 = insertelement <4 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, i8* %c, align 1
  %vecinit2 = insertelement <4 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, i8* %c, align 1
  %vecinit3 = insertelement <4 x i8> %vecinit2, i8 %5, i32 3
  store <4 x i8> %vecinit3, <4 x i8>* %v, align 4
  %6 = load <4 x i8>, <4 x i8>* %v, align 4
  store <4 x i8> %6, <4 x i8>* %retval, align 4
  %7 = bitcast <4 x i8>* %retval to i32*
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3char4() #4 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <4 x i8>, align 4
  %coerce = alloca <4 x i8>, align 4
  %b = alloca <4 x i8>, align 4
  %coerce4 = alloca <4 x i8>, align 4
  store i8 17, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %call = call i32 @test1char4(i8 signext %0)
  %1 = bitcast <4 x i8>* %coerce to i32*
  store i32 %call, i32* %1, align 4
  %2 = load <4 x i8>, <4 x i8>* %coerce, align 4
  store <4 x i8> %2, <4 x i8>* %a, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <4 x i8>, <4 x i8>* %a, align 4
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <4 x i8> %4, i32 %5
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @test2char4(i8* %c)
  %7 = bitcast <4 x i8>* %coerce4 to i32*
  store i32 %call3, i32* %7, align 4
  %8 = load <4 x i8>, <4 x i8>* %coerce4, align 4
  store <4 x i8> %8, <4 x i8>* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 4
  br i1 %cmp6, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond5
  %10 = load <4 x i8>, <4 x i8>* %a, align 4
  %11 = load i32, i32* %i, align 4
  %vecext9 = extractelement <4 x i8> %10, i32 %11
  %conv10 = sext i8 %vecext9 to i32
  %cmp11 = icmp ne i32 %conv10, 17
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  call void @abort() #6
  unreachable

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond5, !llvm.loop !14

for.end17:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @test1char2(i8 signext %c) #4 {
entry:
  %retval = alloca <2 x i8>, align 2
  %c.addr = alloca i8, align 1
  %v = alloca <2 x i8>, align 2
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %vecinit = insertelement <2 x i8> undef, i8 %0, i32 0
  %1 = load i8, i8* %c.addr, align 1
  %vecinit1 = insertelement <2 x i8> %vecinit, i8 %1, i32 1
  store <2 x i8> %vecinit1, <2 x i8>* %v, align 2
  %2 = load <2 x i8>, <2 x i8>* %v, align 2
  store <2 x i8> %2, <2 x i8>* %retval, align 2
  %3 = bitcast <2 x i8>* %retval to i16*
  %4 = load i16, i16* %3, align 2
  ret i16 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @test2char2(i8* %p) #4 {
entry:
  %retval = alloca <2 x i8>, align 2
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %v = alloca <2 x i8>, align 2
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %vecinit = insertelement <2 x i8> undef, i8 %2, i32 0
  %3 = load i8, i8* %c, align 1
  %vecinit1 = insertelement <2 x i8> %vecinit, i8 %3, i32 1
  store <2 x i8> %vecinit1, <2 x i8>* %v, align 2
  %4 = load <2 x i8>, <2 x i8>* %v, align 2
  store <2 x i8> %4, <2 x i8>* %retval, align 2
  %5 = bitcast <2 x i8>* %retval to i16*
  %6 = load i16, i16* %5, align 2
  ret i16 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3char2() #4 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <2 x i8>, align 2
  %coerce = alloca <2 x i8>, align 2
  %b = alloca <2 x i8>, align 2
  %coerce4 = alloca <2 x i8>, align 2
  store i8 17, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %call = call i16 @test1char2(i8 signext %0)
  %1 = bitcast <2 x i8>* %coerce to i16*
  store i16 %call, i16* %1, align 2
  %2 = load <2 x i8>, <2 x i8>* %coerce, align 2
  store <2 x i8> %2, <2 x i8>* %a, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <2 x i8>, <2 x i8>* %a, align 2
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <2 x i8> %4, i32 %5
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %call3 = call i16 @test2char2(i8* %c)
  %7 = bitcast <2 x i8>* %coerce4 to i16*
  store i16 %call3, i16* %7, align 2
  %8 = load <2 x i8>, <2 x i8>* %coerce4, align 2
  store <2 x i8> %8, <2 x i8>* %b, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 2
  br i1 %cmp6, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond5
  %10 = load <2 x i8>, <2 x i8>* %a, align 2
  %11 = load i32, i32* %i, align 4
  %vecext9 = extractelement <2 x i8> %10, i32 %11
  %conv10 = sext i8 %vecext9 to i32
  %cmp11 = icmp ne i32 %conv10, 17
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  call void @abort() #6
  unreachable

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond5, !llvm.loop !16

for.end17:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8 @test1char1(i8 signext %c) #4 {
entry:
  %retval = alloca <1 x i8>, align 1
  %c.addr = alloca i8, align 1
  %v = alloca <1 x i8>, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %vecinit = insertelement <1 x i8> undef, i8 %0, i32 0
  store <1 x i8> %vecinit, <1 x i8>* %v, align 1
  %1 = load <1 x i8>, <1 x i8>* %v, align 1
  store <1 x i8> %1, <1 x i8>* %retval, align 1
  %2 = bitcast <1 x i8>* %retval to i8*
  %3 = load i8, i8* %2, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8 @test2char1(i8* %p) #4 {
entry:
  %retval = alloca <1 x i8>, align 1
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %v = alloca <1 x i8>, align 1
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %vecinit = insertelement <1 x i8> undef, i8 %2, i32 0
  store <1 x i8> %vecinit, <1 x i8>* %v, align 1
  %3 = load <1 x i8>, <1 x i8>* %v, align 1
  store <1 x i8> %3, <1 x i8>* %retval, align 1
  %4 = bitcast <1 x i8>* %retval to i8*
  %5 = load i8, i8* %4, align 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3char1() #4 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <1 x i8>, align 1
  %coerce = alloca <1 x i8>, align 1
  %b = alloca <1 x i8>, align 1
  %coerce4 = alloca <1 x i8>, align 1
  store i8 17, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %call = call i8 @test1char1(i8 signext %0)
  %1 = bitcast <1 x i8>* %coerce to i8*
  store i8 %call, i8* %1, align 1
  %2 = load <1 x i8>, <1 x i8>* %coerce, align 1
  store <1 x i8> %2, <1 x i8>* %a, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <1 x i8>, <1 x i8>* %a, align 1
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <1 x i8> %4, i32 %5
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %call3 = call i8 @test2char1(i8* %c)
  %7 = bitcast <1 x i8>* %coerce4 to i8*
  store i8 %call3, i8* %7, align 1
  %8 = load <1 x i8>, <1 x i8>* %coerce4, align 1
  store <1 x i8> %8, <1 x i8>* %b, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 1
  br i1 %cmp6, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond5
  %10 = load <1 x i8>, <1 x i8>* %a, align 1
  %11 = load i32, i32* %i, align 4
  %vecext9 = extractelement <1 x i8> %10, i32 %11
  %conv10 = sext i8 %vecext9 to i32
  %cmp11 = icmp ne i32 %conv10, 17
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  call void @abort() #6
  unreachable

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond5, !llvm.loop !18

for.end17:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <32 x i16> @test1short32(i16 signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <32 x i16>, align 64
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %vecinit = insertelement <32 x i16> undef, i16 %0, i32 0
  %1 = load i16, i16* %c.addr, align 2
  %vecinit1 = insertelement <32 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, i16* %c.addr, align 2
  %vecinit2 = insertelement <32 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, i16* %c.addr, align 2
  %vecinit3 = insertelement <32 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, i16* %c.addr, align 2
  %vecinit4 = insertelement <32 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, i16* %c.addr, align 2
  %vecinit5 = insertelement <32 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, i16* %c.addr, align 2
  %vecinit6 = insertelement <32 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, i16* %c.addr, align 2
  %vecinit7 = insertelement <32 x i16> %vecinit6, i16 %7, i32 7
  %8 = load i16, i16* %c.addr, align 2
  %vecinit8 = insertelement <32 x i16> %vecinit7, i16 %8, i32 8
  %9 = load i16, i16* %c.addr, align 2
  %vecinit9 = insertelement <32 x i16> %vecinit8, i16 %9, i32 9
  %10 = load i16, i16* %c.addr, align 2
  %vecinit10 = insertelement <32 x i16> %vecinit9, i16 %10, i32 10
  %11 = load i16, i16* %c.addr, align 2
  %vecinit11 = insertelement <32 x i16> %vecinit10, i16 %11, i32 11
  %12 = load i16, i16* %c.addr, align 2
  %vecinit12 = insertelement <32 x i16> %vecinit11, i16 %12, i32 12
  %13 = load i16, i16* %c.addr, align 2
  %vecinit13 = insertelement <32 x i16> %vecinit12, i16 %13, i32 13
  %14 = load i16, i16* %c.addr, align 2
  %vecinit14 = insertelement <32 x i16> %vecinit13, i16 %14, i32 14
  %15 = load i16, i16* %c.addr, align 2
  %vecinit15 = insertelement <32 x i16> %vecinit14, i16 %15, i32 15
  %16 = load i16, i16* %c.addr, align 2
  %vecinit16 = insertelement <32 x i16> %vecinit15, i16 %16, i32 16
  %17 = load i16, i16* %c.addr, align 2
  %vecinit17 = insertelement <32 x i16> %vecinit16, i16 %17, i32 17
  %18 = load i16, i16* %c.addr, align 2
  %vecinit18 = insertelement <32 x i16> %vecinit17, i16 %18, i32 18
  %19 = load i16, i16* %c.addr, align 2
  %vecinit19 = insertelement <32 x i16> %vecinit18, i16 %19, i32 19
  %20 = load i16, i16* %c.addr, align 2
  %vecinit20 = insertelement <32 x i16> %vecinit19, i16 %20, i32 20
  %21 = load i16, i16* %c.addr, align 2
  %vecinit21 = insertelement <32 x i16> %vecinit20, i16 %21, i32 21
  %22 = load i16, i16* %c.addr, align 2
  %vecinit22 = insertelement <32 x i16> %vecinit21, i16 %22, i32 22
  %23 = load i16, i16* %c.addr, align 2
  %vecinit23 = insertelement <32 x i16> %vecinit22, i16 %23, i32 23
  %24 = load i16, i16* %c.addr, align 2
  %vecinit24 = insertelement <32 x i16> %vecinit23, i16 %24, i32 24
  %25 = load i16, i16* %c.addr, align 2
  %vecinit25 = insertelement <32 x i16> %vecinit24, i16 %25, i32 25
  %26 = load i16, i16* %c.addr, align 2
  %vecinit26 = insertelement <32 x i16> %vecinit25, i16 %26, i32 26
  %27 = load i16, i16* %c.addr, align 2
  %vecinit27 = insertelement <32 x i16> %vecinit26, i16 %27, i32 27
  %28 = load i16, i16* %c.addr, align 2
  %vecinit28 = insertelement <32 x i16> %vecinit27, i16 %28, i32 28
  %29 = load i16, i16* %c.addr, align 2
  %vecinit29 = insertelement <32 x i16> %vecinit28, i16 %29, i32 29
  %30 = load i16, i16* %c.addr, align 2
  %vecinit30 = insertelement <32 x i16> %vecinit29, i16 %30, i32 30
  %31 = load i16, i16* %c.addr, align 2
  %vecinit31 = insertelement <32 x i16> %vecinit30, i16 %31, i32 31
  store <32 x i16> %vecinit31, <32 x i16>* %v, align 64
  %32 = load <32 x i16>, <32 x i16>* %v, align 64
  ret <32 x i16> %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <32 x i16> @test2short32(i16* %p) #0 {
entry:
  %p.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %v = alloca <32 x i16>, align 64
  store i16* %p, i16** %p.addr, align 8
  %0 = load i16*, i16** %p.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %c, align 2
  %2 = load i16, i16* %c, align 2
  %vecinit = insertelement <32 x i16> undef, i16 %2, i32 0
  %3 = load i16, i16* %c, align 2
  %vecinit1 = insertelement <32 x i16> %vecinit, i16 %3, i32 1
  %4 = load i16, i16* %c, align 2
  %vecinit2 = insertelement <32 x i16> %vecinit1, i16 %4, i32 2
  %5 = load i16, i16* %c, align 2
  %vecinit3 = insertelement <32 x i16> %vecinit2, i16 %5, i32 3
  %6 = load i16, i16* %c, align 2
  %vecinit4 = insertelement <32 x i16> %vecinit3, i16 %6, i32 4
  %7 = load i16, i16* %c, align 2
  %vecinit5 = insertelement <32 x i16> %vecinit4, i16 %7, i32 5
  %8 = load i16, i16* %c, align 2
  %vecinit6 = insertelement <32 x i16> %vecinit5, i16 %8, i32 6
  %9 = load i16, i16* %c, align 2
  %vecinit7 = insertelement <32 x i16> %vecinit6, i16 %9, i32 7
  %10 = load i16, i16* %c, align 2
  %vecinit8 = insertelement <32 x i16> %vecinit7, i16 %10, i32 8
  %11 = load i16, i16* %c, align 2
  %vecinit9 = insertelement <32 x i16> %vecinit8, i16 %11, i32 9
  %12 = load i16, i16* %c, align 2
  %vecinit10 = insertelement <32 x i16> %vecinit9, i16 %12, i32 10
  %13 = load i16, i16* %c, align 2
  %vecinit11 = insertelement <32 x i16> %vecinit10, i16 %13, i32 11
  %14 = load i16, i16* %c, align 2
  %vecinit12 = insertelement <32 x i16> %vecinit11, i16 %14, i32 12
  %15 = load i16, i16* %c, align 2
  %vecinit13 = insertelement <32 x i16> %vecinit12, i16 %15, i32 13
  %16 = load i16, i16* %c, align 2
  %vecinit14 = insertelement <32 x i16> %vecinit13, i16 %16, i32 14
  %17 = load i16, i16* %c, align 2
  %vecinit15 = insertelement <32 x i16> %vecinit14, i16 %17, i32 15
  %18 = load i16, i16* %c, align 2
  %vecinit16 = insertelement <32 x i16> %vecinit15, i16 %18, i32 16
  %19 = load i16, i16* %c, align 2
  %vecinit17 = insertelement <32 x i16> %vecinit16, i16 %19, i32 17
  %20 = load i16, i16* %c, align 2
  %vecinit18 = insertelement <32 x i16> %vecinit17, i16 %20, i32 18
  %21 = load i16, i16* %c, align 2
  %vecinit19 = insertelement <32 x i16> %vecinit18, i16 %21, i32 19
  %22 = load i16, i16* %c, align 2
  %vecinit20 = insertelement <32 x i16> %vecinit19, i16 %22, i32 20
  %23 = load i16, i16* %c, align 2
  %vecinit21 = insertelement <32 x i16> %vecinit20, i16 %23, i32 21
  %24 = load i16, i16* %c, align 2
  %vecinit22 = insertelement <32 x i16> %vecinit21, i16 %24, i32 22
  %25 = load i16, i16* %c, align 2
  %vecinit23 = insertelement <32 x i16> %vecinit22, i16 %25, i32 23
  %26 = load i16, i16* %c, align 2
  %vecinit24 = insertelement <32 x i16> %vecinit23, i16 %26, i32 24
  %27 = load i16, i16* %c, align 2
  %vecinit25 = insertelement <32 x i16> %vecinit24, i16 %27, i32 25
  %28 = load i16, i16* %c, align 2
  %vecinit26 = insertelement <32 x i16> %vecinit25, i16 %28, i32 26
  %29 = load i16, i16* %c, align 2
  %vecinit27 = insertelement <32 x i16> %vecinit26, i16 %29, i32 27
  %30 = load i16, i16* %c, align 2
  %vecinit28 = insertelement <32 x i16> %vecinit27, i16 %30, i32 28
  %31 = load i16, i16* %c, align 2
  %vecinit29 = insertelement <32 x i16> %vecinit28, i16 %31, i32 29
  %32 = load i16, i16* %c, align 2
  %vecinit30 = insertelement <32 x i16> %vecinit29, i16 %32, i32 30
  %33 = load i16, i16* %c, align 2
  %vecinit31 = insertelement <32 x i16> %vecinit30, i16 %33, i32 31
  store <32 x i16> %vecinit31, <32 x i16>* %v, align 64
  %34 = load <32 x i16>, <32 x i16>* %v, align 64
  ret <32 x i16> %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3short32() #0 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <32 x i16>, align 64
  %b = alloca <32 x i16>, align 64
  store i16 17, i16* %c, align 2
  %0 = load i16, i16* %c, align 2
  %call = call <32 x i16> @test1short32(i16 signext %0)
  store <32 x i16> %call, <32 x i16>* %a, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <32 x i16>, <32 x i16>* %a, align 64
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <32 x i16> %2, i32 %3
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %call3 = call <32 x i16> @test2short32(i16* %c)
  store <32 x i16> %call3, <32 x i16>* %b, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 32
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <32 x i16>, <32 x i16>* %a, align 64
  %7 = load i32, i32* %i, align 4
  %vecext8 = extractelement <32 x i16> %6, i32 %7
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond4, !llvm.loop !20

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <16 x i16> @test1short16(i16 signext %c) #2 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <16 x i16>, align 32
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %vecinit = insertelement <16 x i16> undef, i16 %0, i32 0
  %1 = load i16, i16* %c.addr, align 2
  %vecinit1 = insertelement <16 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, i16* %c.addr, align 2
  %vecinit2 = insertelement <16 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, i16* %c.addr, align 2
  %vecinit3 = insertelement <16 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, i16* %c.addr, align 2
  %vecinit4 = insertelement <16 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, i16* %c.addr, align 2
  %vecinit5 = insertelement <16 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, i16* %c.addr, align 2
  %vecinit6 = insertelement <16 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, i16* %c.addr, align 2
  %vecinit7 = insertelement <16 x i16> %vecinit6, i16 %7, i32 7
  %8 = load i16, i16* %c.addr, align 2
  %vecinit8 = insertelement <16 x i16> %vecinit7, i16 %8, i32 8
  %9 = load i16, i16* %c.addr, align 2
  %vecinit9 = insertelement <16 x i16> %vecinit8, i16 %9, i32 9
  %10 = load i16, i16* %c.addr, align 2
  %vecinit10 = insertelement <16 x i16> %vecinit9, i16 %10, i32 10
  %11 = load i16, i16* %c.addr, align 2
  %vecinit11 = insertelement <16 x i16> %vecinit10, i16 %11, i32 11
  %12 = load i16, i16* %c.addr, align 2
  %vecinit12 = insertelement <16 x i16> %vecinit11, i16 %12, i32 12
  %13 = load i16, i16* %c.addr, align 2
  %vecinit13 = insertelement <16 x i16> %vecinit12, i16 %13, i32 13
  %14 = load i16, i16* %c.addr, align 2
  %vecinit14 = insertelement <16 x i16> %vecinit13, i16 %14, i32 14
  %15 = load i16, i16* %c.addr, align 2
  %vecinit15 = insertelement <16 x i16> %vecinit14, i16 %15, i32 15
  store <16 x i16> %vecinit15, <16 x i16>* %v, align 32
  %16 = load <16 x i16>, <16 x i16>* %v, align 32
  ret <16 x i16> %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <16 x i16> @test2short16(i16* %p) #2 {
entry:
  %p.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %v = alloca <16 x i16>, align 32
  store i16* %p, i16** %p.addr, align 8
  %0 = load i16*, i16** %p.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %c, align 2
  %2 = load i16, i16* %c, align 2
  %vecinit = insertelement <16 x i16> undef, i16 %2, i32 0
  %3 = load i16, i16* %c, align 2
  %vecinit1 = insertelement <16 x i16> %vecinit, i16 %3, i32 1
  %4 = load i16, i16* %c, align 2
  %vecinit2 = insertelement <16 x i16> %vecinit1, i16 %4, i32 2
  %5 = load i16, i16* %c, align 2
  %vecinit3 = insertelement <16 x i16> %vecinit2, i16 %5, i32 3
  %6 = load i16, i16* %c, align 2
  %vecinit4 = insertelement <16 x i16> %vecinit3, i16 %6, i32 4
  %7 = load i16, i16* %c, align 2
  %vecinit5 = insertelement <16 x i16> %vecinit4, i16 %7, i32 5
  %8 = load i16, i16* %c, align 2
  %vecinit6 = insertelement <16 x i16> %vecinit5, i16 %8, i32 6
  %9 = load i16, i16* %c, align 2
  %vecinit7 = insertelement <16 x i16> %vecinit6, i16 %9, i32 7
  %10 = load i16, i16* %c, align 2
  %vecinit8 = insertelement <16 x i16> %vecinit7, i16 %10, i32 8
  %11 = load i16, i16* %c, align 2
  %vecinit9 = insertelement <16 x i16> %vecinit8, i16 %11, i32 9
  %12 = load i16, i16* %c, align 2
  %vecinit10 = insertelement <16 x i16> %vecinit9, i16 %12, i32 10
  %13 = load i16, i16* %c, align 2
  %vecinit11 = insertelement <16 x i16> %vecinit10, i16 %13, i32 11
  %14 = load i16, i16* %c, align 2
  %vecinit12 = insertelement <16 x i16> %vecinit11, i16 %14, i32 12
  %15 = load i16, i16* %c, align 2
  %vecinit13 = insertelement <16 x i16> %vecinit12, i16 %15, i32 13
  %16 = load i16, i16* %c, align 2
  %vecinit14 = insertelement <16 x i16> %vecinit13, i16 %16, i32 14
  %17 = load i16, i16* %c, align 2
  %vecinit15 = insertelement <16 x i16> %vecinit14, i16 %17, i32 15
  store <16 x i16> %vecinit15, <16 x i16>* %v, align 32
  %18 = load <16 x i16>, <16 x i16>* %v, align 32
  ret <16 x i16> %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3short16() #2 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <16 x i16>, align 32
  %b = alloca <16 x i16>, align 32
  store i16 17, i16* %c, align 2
  %0 = load i16, i16* %c, align 2
  %call = call <16 x i16> @test1short16(i16 signext %0)
  store <16 x i16> %call, <16 x i16>* %a, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <16 x i16>, <16 x i16>* %a, align 32
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <16 x i16> %2, i32 %3
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %call3 = call <16 x i16> @test2short16(i16* %c)
  store <16 x i16> %call3, <16 x i16>* %b, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 16
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <16 x i16>, <16 x i16>* %a, align 32
  %7 = load i32, i32* %i, align 4
  %vecext8 = extractelement <16 x i16> %6, i32 %7
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond4, !llvm.loop !22

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x i16> @test1short8(i16 signext %c) #3 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <8 x i16>, align 16
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %vecinit = insertelement <8 x i16> undef, i16 %0, i32 0
  %1 = load i16, i16* %c.addr, align 2
  %vecinit1 = insertelement <8 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, i16* %c.addr, align 2
  %vecinit2 = insertelement <8 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, i16* %c.addr, align 2
  %vecinit3 = insertelement <8 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, i16* %c.addr, align 2
  %vecinit4 = insertelement <8 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, i16* %c.addr, align 2
  %vecinit5 = insertelement <8 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, i16* %c.addr, align 2
  %vecinit6 = insertelement <8 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, i16* %c.addr, align 2
  %vecinit7 = insertelement <8 x i16> %vecinit6, i16 %7, i32 7
  store <8 x i16> %vecinit7, <8 x i16>* %v, align 16
  %8 = load <8 x i16>, <8 x i16>* %v, align 16
  ret <8 x i16> %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x i16> @test2short8(i16* %p) #3 {
entry:
  %p.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %v = alloca <8 x i16>, align 16
  store i16* %p, i16** %p.addr, align 8
  %0 = load i16*, i16** %p.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %c, align 2
  %2 = load i16, i16* %c, align 2
  %vecinit = insertelement <8 x i16> undef, i16 %2, i32 0
  %3 = load i16, i16* %c, align 2
  %vecinit1 = insertelement <8 x i16> %vecinit, i16 %3, i32 1
  %4 = load i16, i16* %c, align 2
  %vecinit2 = insertelement <8 x i16> %vecinit1, i16 %4, i32 2
  %5 = load i16, i16* %c, align 2
  %vecinit3 = insertelement <8 x i16> %vecinit2, i16 %5, i32 3
  %6 = load i16, i16* %c, align 2
  %vecinit4 = insertelement <8 x i16> %vecinit3, i16 %6, i32 4
  %7 = load i16, i16* %c, align 2
  %vecinit5 = insertelement <8 x i16> %vecinit4, i16 %7, i32 5
  %8 = load i16, i16* %c, align 2
  %vecinit6 = insertelement <8 x i16> %vecinit5, i16 %8, i32 6
  %9 = load i16, i16* %c, align 2
  %vecinit7 = insertelement <8 x i16> %vecinit6, i16 %9, i32 7
  store <8 x i16> %vecinit7, <8 x i16>* %v, align 16
  %10 = load <8 x i16>, <8 x i16>* %v, align 16
  ret <8 x i16> %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3short8() #3 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <8 x i16>, align 16
  %b = alloca <8 x i16>, align 16
  store i16 17, i16* %c, align 2
  %0 = load i16, i16* %c, align 2
  %call = call <8 x i16> @test1short8(i16 signext %0)
  store <8 x i16> %call, <8 x i16>* %a, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <8 x i16>, <8 x i16>* %a, align 16
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <8 x i16> %2, i32 %3
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %call3 = call <8 x i16> @test2short8(i16* %c)
  store <8 x i16> %call3, <8 x i16>* %b, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 8
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <8 x i16>, <8 x i16>* %a, align 16
  %7 = load i32, i32* %i, align 4
  %vecext8 = extractelement <8 x i16> %6, i32 %7
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond4, !llvm.loop !24

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test1short4(i16 signext %c) #4 {
entry:
  %retval = alloca <4 x i16>, align 8
  %c.addr = alloca i16, align 2
  %v = alloca <4 x i16>, align 8
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %vecinit = insertelement <4 x i16> undef, i16 %0, i32 0
  %1 = load i16, i16* %c.addr, align 2
  %vecinit1 = insertelement <4 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, i16* %c.addr, align 2
  %vecinit2 = insertelement <4 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, i16* %c.addr, align 2
  %vecinit3 = insertelement <4 x i16> %vecinit2, i16 %3, i32 3
  store <4 x i16> %vecinit3, <4 x i16>* %v, align 8
  %4 = load <4 x i16>, <4 x i16>* %v, align 8
  store <4 x i16> %4, <4 x i16>* %retval, align 8
  %5 = bitcast <4 x i16>* %retval to double*
  %6 = load double, double* %5, align 8
  ret double %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test2short4(i16* %p) #4 {
entry:
  %retval = alloca <4 x i16>, align 8
  %p.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %v = alloca <4 x i16>, align 8
  store i16* %p, i16** %p.addr, align 8
  %0 = load i16*, i16** %p.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %c, align 2
  %2 = load i16, i16* %c, align 2
  %vecinit = insertelement <4 x i16> undef, i16 %2, i32 0
  %3 = load i16, i16* %c, align 2
  %vecinit1 = insertelement <4 x i16> %vecinit, i16 %3, i32 1
  %4 = load i16, i16* %c, align 2
  %vecinit2 = insertelement <4 x i16> %vecinit1, i16 %4, i32 2
  %5 = load i16, i16* %c, align 2
  %vecinit3 = insertelement <4 x i16> %vecinit2, i16 %5, i32 3
  store <4 x i16> %vecinit3, <4 x i16>* %v, align 8
  %6 = load <4 x i16>, <4 x i16>* %v, align 8
  store <4 x i16> %6, <4 x i16>* %retval, align 8
  %7 = bitcast <4 x i16>* %retval to double*
  %8 = load double, double* %7, align 8
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3short4() #4 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  store i16 17, i16* %c, align 2
  %0 = load i16, i16* %c, align 2
  %call = call double @test1short4(i16 signext %0)
  %1 = bitcast <4 x i16>* %coerce to double*
  store double %call, double* %1, align 8
  %2 = load <4 x i16>, <4 x i16>* %coerce, align 8
  store <4 x i16> %2, <4 x i16>* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <4 x i16>, <4 x i16>* %a, align 8
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <4 x i16> %4, i32 %5
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %call3 = call double @test2short4(i16* %c)
  %7 = bitcast <4 x i16>* %coerce4 to double*
  store double %call3, double* %7, align 8
  %8 = load <4 x i16>, <4 x i16>* %coerce4, align 8
  store <4 x i16> %8, <4 x i16>* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 4
  br i1 %cmp6, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond5
  %10 = load <4 x i16>, <4 x i16>* %a, align 8
  %11 = load i32, i32* %i, align 4
  %vecext9 = extractelement <4 x i16> %10, i32 %11
  %conv10 = sext i16 %vecext9 to i32
  %cmp11 = icmp ne i32 %conv10, 17
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  call void @abort() #6
  unreachable

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond5, !llvm.loop !26

for.end17:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test1short2(i16 signext %c) #4 {
entry:
  %retval = alloca <2 x i16>, align 4
  %c.addr = alloca i16, align 2
  %v = alloca <2 x i16>, align 4
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %vecinit = insertelement <2 x i16> undef, i16 %0, i32 0
  %1 = load i16, i16* %c.addr, align 2
  %vecinit1 = insertelement <2 x i16> %vecinit, i16 %1, i32 1
  store <2 x i16> %vecinit1, <2 x i16>* %v, align 4
  %2 = load <2 x i16>, <2 x i16>* %v, align 4
  store <2 x i16> %2, <2 x i16>* %retval, align 4
  %3 = bitcast <2 x i16>* %retval to i32*
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test2short2(i16* %p) #4 {
entry:
  %retval = alloca <2 x i16>, align 4
  %p.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %v = alloca <2 x i16>, align 4
  store i16* %p, i16** %p.addr, align 8
  %0 = load i16*, i16** %p.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %c, align 2
  %2 = load i16, i16* %c, align 2
  %vecinit = insertelement <2 x i16> undef, i16 %2, i32 0
  %3 = load i16, i16* %c, align 2
  %vecinit1 = insertelement <2 x i16> %vecinit, i16 %3, i32 1
  store <2 x i16> %vecinit1, <2 x i16>* %v, align 4
  %4 = load <2 x i16>, <2 x i16>* %v, align 4
  store <2 x i16> %4, <2 x i16>* %retval, align 4
  %5 = bitcast <2 x i16>* %retval to i32*
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3short2() #4 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <2 x i16>, align 4
  %coerce = alloca <2 x i16>, align 4
  %b = alloca <2 x i16>, align 4
  %coerce4 = alloca <2 x i16>, align 4
  store i16 17, i16* %c, align 2
  %0 = load i16, i16* %c, align 2
  %call = call i32 @test1short2(i16 signext %0)
  %1 = bitcast <2 x i16>* %coerce to i32*
  store i32 %call, i32* %1, align 4
  %2 = load <2 x i16>, <2 x i16>* %coerce, align 4
  store <2 x i16> %2, <2 x i16>* %a, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <2 x i16>, <2 x i16>* %a, align 4
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <2 x i16> %4, i32 %5
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @test2short2(i16* %c)
  %7 = bitcast <2 x i16>* %coerce4 to i32*
  store i32 %call3, i32* %7, align 4
  %8 = load <2 x i16>, <2 x i16>* %coerce4, align 4
  store <2 x i16> %8, <2 x i16>* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 2
  br i1 %cmp6, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond5
  %10 = load <2 x i16>, <2 x i16>* %a, align 4
  %11 = load i32, i32* %i, align 4
  %vecext9 = extractelement <2 x i16> %10, i32 %11
  %conv10 = sext i16 %vecext9 to i32
  %cmp11 = icmp ne i32 %conv10, 17
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  call void @abort() #6
  unreachable

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond5, !llvm.loop !28

for.end17:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @test1short1(i16 signext %c) #4 {
entry:
  %retval = alloca <1 x i16>, align 2
  %c.addr = alloca i16, align 2
  %v = alloca <1 x i16>, align 2
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %vecinit = insertelement <1 x i16> undef, i16 %0, i32 0
  store <1 x i16> %vecinit, <1 x i16>* %v, align 2
  %1 = load <1 x i16>, <1 x i16>* %v, align 2
  store <1 x i16> %1, <1 x i16>* %retval, align 2
  %2 = bitcast <1 x i16>* %retval to i16*
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @test2short1(i16* %p) #4 {
entry:
  %retval = alloca <1 x i16>, align 2
  %p.addr = alloca i16*, align 8
  %c = alloca i16, align 2
  %v = alloca <1 x i16>, align 2
  store i16* %p, i16** %p.addr, align 8
  %0 = load i16*, i16** %p.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %c, align 2
  %2 = load i16, i16* %c, align 2
  %vecinit = insertelement <1 x i16> undef, i16 %2, i32 0
  store <1 x i16> %vecinit, <1 x i16>* %v, align 2
  %3 = load <1 x i16>, <1 x i16>* %v, align 2
  store <1 x i16> %3, <1 x i16>* %retval, align 2
  %4 = bitcast <1 x i16>* %retval to i16*
  %5 = load i16, i16* %4, align 2
  ret i16 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3short1() #4 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <1 x i16>, align 2
  %coerce = alloca <1 x i16>, align 2
  %b = alloca <1 x i16>, align 2
  %coerce4 = alloca <1 x i16>, align 2
  store i16 17, i16* %c, align 2
  %0 = load i16, i16* %c, align 2
  %call = call i16 @test1short1(i16 signext %0)
  %1 = bitcast <1 x i16>* %coerce to i16*
  store i16 %call, i16* %1, align 2
  %2 = load <1 x i16>, <1 x i16>* %coerce, align 2
  store <1 x i16> %2, <1 x i16>* %a, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <1 x i16>, <1 x i16>* %a, align 2
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <1 x i16> %4, i32 %5
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %call3 = call i16 @test2short1(i16* %c)
  %7 = bitcast <1 x i16>* %coerce4 to i16*
  store i16 %call3, i16* %7, align 2
  %8 = load <1 x i16>, <1 x i16>* %coerce4, align 2
  store <1 x i16> %8, <1 x i16>* %b, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 1
  br i1 %cmp6, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond5
  %10 = load <1 x i16>, <1 x i16>* %a, align 2
  %11 = load i32, i32* %i, align 4
  %vecext9 = extractelement <1 x i16> %10, i32 %11
  %conv10 = sext i16 %vecext9 to i32
  %cmp11 = icmp ne i32 %conv10, 17
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  call void @abort() #6
  unreachable

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond5, !llvm.loop !30

for.end17:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <16 x i32> @test1int16(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %v = alloca <16 x i32>, align 64
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %vecinit = insertelement <16 x i32> undef, i32 %0, i32 0
  %1 = load i32, i32* %c.addr, align 4
  %vecinit1 = insertelement <16 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, i32* %c.addr, align 4
  %vecinit2 = insertelement <16 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, i32* %c.addr, align 4
  %vecinit3 = insertelement <16 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, i32* %c.addr, align 4
  %vecinit4 = insertelement <16 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, i32* %c.addr, align 4
  %vecinit5 = insertelement <16 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, i32* %c.addr, align 4
  %vecinit6 = insertelement <16 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, i32* %c.addr, align 4
  %vecinit7 = insertelement <16 x i32> %vecinit6, i32 %7, i32 7
  %8 = load i32, i32* %c.addr, align 4
  %vecinit8 = insertelement <16 x i32> %vecinit7, i32 %8, i32 8
  %9 = load i32, i32* %c.addr, align 4
  %vecinit9 = insertelement <16 x i32> %vecinit8, i32 %9, i32 9
  %10 = load i32, i32* %c.addr, align 4
  %vecinit10 = insertelement <16 x i32> %vecinit9, i32 %10, i32 10
  %11 = load i32, i32* %c.addr, align 4
  %vecinit11 = insertelement <16 x i32> %vecinit10, i32 %11, i32 11
  %12 = load i32, i32* %c.addr, align 4
  %vecinit12 = insertelement <16 x i32> %vecinit11, i32 %12, i32 12
  %13 = load i32, i32* %c.addr, align 4
  %vecinit13 = insertelement <16 x i32> %vecinit12, i32 %13, i32 13
  %14 = load i32, i32* %c.addr, align 4
  %vecinit14 = insertelement <16 x i32> %vecinit13, i32 %14, i32 14
  %15 = load i32, i32* %c.addr, align 4
  %vecinit15 = insertelement <16 x i32> %vecinit14, i32 %15, i32 15
  store <16 x i32> %vecinit15, <16 x i32>* %v, align 64
  %16 = load <16 x i32>, <16 x i32>* %v, align 64
  ret <16 x i32> %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <16 x i32> @test2int16(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %v = alloca <16 x i32>, align 64
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %vecinit = insertelement <16 x i32> undef, i32 %2, i32 0
  %3 = load i32, i32* %c, align 4
  %vecinit1 = insertelement <16 x i32> %vecinit, i32 %3, i32 1
  %4 = load i32, i32* %c, align 4
  %vecinit2 = insertelement <16 x i32> %vecinit1, i32 %4, i32 2
  %5 = load i32, i32* %c, align 4
  %vecinit3 = insertelement <16 x i32> %vecinit2, i32 %5, i32 3
  %6 = load i32, i32* %c, align 4
  %vecinit4 = insertelement <16 x i32> %vecinit3, i32 %6, i32 4
  %7 = load i32, i32* %c, align 4
  %vecinit5 = insertelement <16 x i32> %vecinit4, i32 %7, i32 5
  %8 = load i32, i32* %c, align 4
  %vecinit6 = insertelement <16 x i32> %vecinit5, i32 %8, i32 6
  %9 = load i32, i32* %c, align 4
  %vecinit7 = insertelement <16 x i32> %vecinit6, i32 %9, i32 7
  %10 = load i32, i32* %c, align 4
  %vecinit8 = insertelement <16 x i32> %vecinit7, i32 %10, i32 8
  %11 = load i32, i32* %c, align 4
  %vecinit9 = insertelement <16 x i32> %vecinit8, i32 %11, i32 9
  %12 = load i32, i32* %c, align 4
  %vecinit10 = insertelement <16 x i32> %vecinit9, i32 %12, i32 10
  %13 = load i32, i32* %c, align 4
  %vecinit11 = insertelement <16 x i32> %vecinit10, i32 %13, i32 11
  %14 = load i32, i32* %c, align 4
  %vecinit12 = insertelement <16 x i32> %vecinit11, i32 %14, i32 12
  %15 = load i32, i32* %c, align 4
  %vecinit13 = insertelement <16 x i32> %vecinit12, i32 %15, i32 13
  %16 = load i32, i32* %c, align 4
  %vecinit14 = insertelement <16 x i32> %vecinit13, i32 %16, i32 14
  %17 = load i32, i32* %c, align 4
  %vecinit15 = insertelement <16 x i32> %vecinit14, i32 %17, i32 15
  store <16 x i32> %vecinit15, <16 x i32>* %v, align 64
  %18 = load <16 x i32>, <16 x i32>* %v, align 64
  ret <16 x i32> %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3int16() #0 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <16 x i32>, align 64
  %b = alloca <16 x i32>, align 64
  store i32 17, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call = call <16 x i32> @test1int16(i32 %0)
  store <16 x i32> %call, <16 x i32>* %a, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <16 x i32>, <16 x i32>* %a, align 64
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <16 x i32> %2, i32 %3
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %call2 = call <16 x i32> @test2int16(i32* %c)
  store <16 x i32> %call2, <16 x i32>* %b, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 16
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <16 x i32>, <16 x i32>* %a, align 64
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <16 x i32> %6, i32 %7
  %cmp7 = icmp ne i32 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !32

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x i32> @test1int8(i32 %c) #2 {
entry:
  %c.addr = alloca i32, align 4
  %v = alloca <8 x i32>, align 32
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %vecinit = insertelement <8 x i32> undef, i32 %0, i32 0
  %1 = load i32, i32* %c.addr, align 4
  %vecinit1 = insertelement <8 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, i32* %c.addr, align 4
  %vecinit2 = insertelement <8 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, i32* %c.addr, align 4
  %vecinit3 = insertelement <8 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, i32* %c.addr, align 4
  %vecinit4 = insertelement <8 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, i32* %c.addr, align 4
  %vecinit5 = insertelement <8 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, i32* %c.addr, align 4
  %vecinit6 = insertelement <8 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, i32* %c.addr, align 4
  %vecinit7 = insertelement <8 x i32> %vecinit6, i32 %7, i32 7
  store <8 x i32> %vecinit7, <8 x i32>* %v, align 32
  %8 = load <8 x i32>, <8 x i32>* %v, align 32
  ret <8 x i32> %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x i32> @test2int8(i32* %p) #2 {
entry:
  %p.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %v = alloca <8 x i32>, align 32
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %vecinit = insertelement <8 x i32> undef, i32 %2, i32 0
  %3 = load i32, i32* %c, align 4
  %vecinit1 = insertelement <8 x i32> %vecinit, i32 %3, i32 1
  %4 = load i32, i32* %c, align 4
  %vecinit2 = insertelement <8 x i32> %vecinit1, i32 %4, i32 2
  %5 = load i32, i32* %c, align 4
  %vecinit3 = insertelement <8 x i32> %vecinit2, i32 %5, i32 3
  %6 = load i32, i32* %c, align 4
  %vecinit4 = insertelement <8 x i32> %vecinit3, i32 %6, i32 4
  %7 = load i32, i32* %c, align 4
  %vecinit5 = insertelement <8 x i32> %vecinit4, i32 %7, i32 5
  %8 = load i32, i32* %c, align 4
  %vecinit6 = insertelement <8 x i32> %vecinit5, i32 %8, i32 6
  %9 = load i32, i32* %c, align 4
  %vecinit7 = insertelement <8 x i32> %vecinit6, i32 %9, i32 7
  store <8 x i32> %vecinit7, <8 x i32>* %v, align 32
  %10 = load <8 x i32>, <8 x i32>* %v, align 32
  ret <8 x i32> %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3int8() #2 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <8 x i32>, align 32
  %b = alloca <8 x i32>, align 32
  store i32 17, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call = call <8 x i32> @test1int8(i32 %0)
  store <8 x i32> %call, <8 x i32>* %a, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <8 x i32>, <8 x i32>* %a, align 32
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <8 x i32> %2, i32 %3
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %call2 = call <8 x i32> @test2int8(i32* %c)
  store <8 x i32> %call2, <8 x i32>* %b, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 8
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <8 x i32>, <8 x i32>* %a, align 32
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <8 x i32> %6, i32 %7
  %cmp7 = icmp ne i32 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !34

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <4 x i32> @test1int4(i32 %c) #3 {
entry:
  %c.addr = alloca i32, align 4
  %v = alloca <4 x i32>, align 16
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %1 = load i32, i32* %c.addr, align 4
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, i32* %c.addr, align 4
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, i32* %c.addr, align 4
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %3, i32 3
  store <4 x i32> %vecinit3, <4 x i32>* %v, align 16
  %4 = load <4 x i32>, <4 x i32>* %v, align 16
  ret <4 x i32> %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <4 x i32> @test2int4(i32* %p) #3 {
entry:
  %p.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %v = alloca <4 x i32>, align 16
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %vecinit = insertelement <4 x i32> undef, i32 %2, i32 0
  %3 = load i32, i32* %c, align 4
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %3, i32 1
  %4 = load i32, i32* %c, align 4
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %4, i32 2
  %5 = load i32, i32* %c, align 4
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %5, i32 3
  store <4 x i32> %vecinit3, <4 x i32>* %v, align 16
  %6 = load <4 x i32>, <4 x i32>* %v, align 16
  ret <4 x i32> %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3int4() #3 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <4 x i32>, align 16
  %b = alloca <4 x i32>, align 16
  store i32 17, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call = call <4 x i32> @test1int4(i32 %0)
  store <4 x i32> %call, <4 x i32>* %a, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <4 x i32>, <4 x i32>* %a, align 16
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <4 x i32> %2, i32 %3
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %call2 = call <4 x i32> @test2int4(i32* %c)
  store <4 x i32> %call2, <4 x i32>* %b, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 4
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <4 x i32>, <4 x i32>* %a, align 16
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <4 x i32> %6, i32 %7
  %cmp7 = icmp ne i32 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !36

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test1int2(i32 %c) #4 {
entry:
  %retval = alloca <2 x i32>, align 8
  %c.addr = alloca i32, align 4
  %v = alloca <2 x i32>, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %vecinit = insertelement <2 x i32> undef, i32 %0, i32 0
  %1 = load i32, i32* %c.addr, align 4
  %vecinit1 = insertelement <2 x i32> %vecinit, i32 %1, i32 1
  store <2 x i32> %vecinit1, <2 x i32>* %v, align 8
  %2 = load <2 x i32>, <2 x i32>* %v, align 8
  store <2 x i32> %2, <2 x i32>* %retval, align 8
  %3 = bitcast <2 x i32>* %retval to double*
  %4 = load double, double* %3, align 8
  ret double %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test2int2(i32* %p) #4 {
entry:
  %retval = alloca <2 x i32>, align 8
  %p.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %v = alloca <2 x i32>, align 8
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %vecinit = insertelement <2 x i32> undef, i32 %2, i32 0
  %3 = load i32, i32* %c, align 4
  %vecinit1 = insertelement <2 x i32> %vecinit, i32 %3, i32 1
  store <2 x i32> %vecinit1, <2 x i32>* %v, align 8
  %4 = load <2 x i32>, <2 x i32>* %v, align 8
  store <2 x i32> %4, <2 x i32>* %retval, align 8
  %5 = bitcast <2 x i32>* %retval to double*
  %6 = load double, double* %5, align 8
  ret double %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3int2() #4 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %coerce3 = alloca <2 x i32>, align 8
  store i32 17, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call = call double @test1int2(i32 %0)
  %1 = bitcast <2 x i32>* %coerce to double*
  store double %call, double* %1, align 8
  %2 = load <2 x i32>, <2 x i32>* %coerce, align 8
  store <2 x i32> %2, <2 x i32>* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <2 x i32>, <2 x i32>* %a, align 8
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <2 x i32> %4, i32 %5
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %call2 = call double @test2int2(i32* %c)
  %7 = bitcast <2 x i32>* %coerce3 to double*
  store double %call2, double* %7, align 8
  %8 = load <2 x i32>, <2 x i32>* %coerce3, align 8
  store <2 x i32> %8, <2 x i32>* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %9, 2
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %10 = load <2 x i32>, <2 x i32>* %a, align 8
  %11 = load i32, i32* %i, align 4
  %vecext7 = extractelement <2 x i32> %10, i32 %11
  %cmp8 = icmp ne i32 %vecext7, 17
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body6
  call void @abort() #6
  unreachable

if.end10:                                         ; preds = %for.body6
  br label %for.inc11

for.inc11:                                        ; preds = %if.end10
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4, !llvm.loop !38

for.end13:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test1int1(i32 %c) #4 {
entry:
  %retval = alloca <1 x i32>, align 4
  %c.addr = alloca i32, align 4
  %v = alloca <1 x i32>, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %vecinit = insertelement <1 x i32> undef, i32 %0, i32 0
  store <1 x i32> %vecinit, <1 x i32>* %v, align 4
  %1 = load <1 x i32>, <1 x i32>* %v, align 4
  store <1 x i32> %1, <1 x i32>* %retval, align 4
  %2 = bitcast <1 x i32>* %retval to i32*
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test2int1(i32* %p) #4 {
entry:
  %retval = alloca <1 x i32>, align 4
  %p.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %v = alloca <1 x i32>, align 4
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %vecinit = insertelement <1 x i32> undef, i32 %2, i32 0
  store <1 x i32> %vecinit, <1 x i32>* %v, align 4
  %3 = load <1 x i32>, <1 x i32>* %v, align 4
  store <1 x i32> %3, <1 x i32>* %retval, align 4
  %4 = bitcast <1 x i32>* %retval to i32*
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3int1() #4 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <1 x i32>, align 4
  %coerce = alloca <1 x i32>, align 4
  %b = alloca <1 x i32>, align 4
  %coerce3 = alloca <1 x i32>, align 4
  store i32 17, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call = call i32 @test1int1(i32 %0)
  %1 = bitcast <1 x i32>* %coerce to i32*
  store i32 %call, i32* %1, align 4
  %2 = load <1 x i32>, <1 x i32>* %coerce, align 4
  store <1 x i32> %2, <1 x i32>* %a, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <1 x i32>, <1 x i32>* %a, align 4
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <1 x i32> %4, i32 %5
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %call2 = call i32 @test2int1(i32* %c)
  %7 = bitcast <1 x i32>* %coerce3 to i32*
  store i32 %call2, i32* %7, align 4
  %8 = load <1 x i32>, <1 x i32>* %coerce3, align 4
  store <1 x i32> %8, <1 x i32>* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %9, 1
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %10 = load <1 x i32>, <1 x i32>* %a, align 4
  %11 = load i32, i32* %i, align 4
  %vecext7 = extractelement <1 x i32> %10, i32 %11
  %cmp8 = icmp ne i32 %vecext7, 17
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body6
  call void @abort() #6
  unreachable

if.end10:                                         ; preds = %for.body6
  br label %for.inc11

for.inc11:                                        ; preds = %if.end10
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4, !llvm.loop !40

for.end13:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <16 x float> @test1float16(float %c) #0 {
entry:
  %c.addr = alloca float, align 4
  %v = alloca <16 x float>, align 64
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %c.addr, align 4
  %vecinit = insertelement <16 x float> undef, float %0, i32 0
  %1 = load float, float* %c.addr, align 4
  %vecinit1 = insertelement <16 x float> %vecinit, float %1, i32 1
  %2 = load float, float* %c.addr, align 4
  %vecinit2 = insertelement <16 x float> %vecinit1, float %2, i32 2
  %3 = load float, float* %c.addr, align 4
  %vecinit3 = insertelement <16 x float> %vecinit2, float %3, i32 3
  %4 = load float, float* %c.addr, align 4
  %vecinit4 = insertelement <16 x float> %vecinit3, float %4, i32 4
  %5 = load float, float* %c.addr, align 4
  %vecinit5 = insertelement <16 x float> %vecinit4, float %5, i32 5
  %6 = load float, float* %c.addr, align 4
  %vecinit6 = insertelement <16 x float> %vecinit5, float %6, i32 6
  %7 = load float, float* %c.addr, align 4
  %vecinit7 = insertelement <16 x float> %vecinit6, float %7, i32 7
  %8 = load float, float* %c.addr, align 4
  %vecinit8 = insertelement <16 x float> %vecinit7, float %8, i32 8
  %9 = load float, float* %c.addr, align 4
  %vecinit9 = insertelement <16 x float> %vecinit8, float %9, i32 9
  %10 = load float, float* %c.addr, align 4
  %vecinit10 = insertelement <16 x float> %vecinit9, float %10, i32 10
  %11 = load float, float* %c.addr, align 4
  %vecinit11 = insertelement <16 x float> %vecinit10, float %11, i32 11
  %12 = load float, float* %c.addr, align 4
  %vecinit12 = insertelement <16 x float> %vecinit11, float %12, i32 12
  %13 = load float, float* %c.addr, align 4
  %vecinit13 = insertelement <16 x float> %vecinit12, float %13, i32 13
  %14 = load float, float* %c.addr, align 4
  %vecinit14 = insertelement <16 x float> %vecinit13, float %14, i32 14
  %15 = load float, float* %c.addr, align 4
  %vecinit15 = insertelement <16 x float> %vecinit14, float %15, i32 15
  store <16 x float> %vecinit15, <16 x float>* %v, align 64
  %16 = load <16 x float>, <16 x float>* %v, align 64
  ret <16 x float> %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <16 x float> @test2float16(float* %p) #0 {
entry:
  %p.addr = alloca float*, align 8
  %c = alloca float, align 4
  %v = alloca <16 x float>, align 64
  store float* %p, float** %p.addr, align 8
  %0 = load float*, float** %p.addr, align 8
  %1 = load float, float* %0, align 4
  store float %1, float* %c, align 4
  %2 = load float, float* %c, align 4
  %vecinit = insertelement <16 x float> undef, float %2, i32 0
  %3 = load float, float* %c, align 4
  %vecinit1 = insertelement <16 x float> %vecinit, float %3, i32 1
  %4 = load float, float* %c, align 4
  %vecinit2 = insertelement <16 x float> %vecinit1, float %4, i32 2
  %5 = load float, float* %c, align 4
  %vecinit3 = insertelement <16 x float> %vecinit2, float %5, i32 3
  %6 = load float, float* %c, align 4
  %vecinit4 = insertelement <16 x float> %vecinit3, float %6, i32 4
  %7 = load float, float* %c, align 4
  %vecinit5 = insertelement <16 x float> %vecinit4, float %7, i32 5
  %8 = load float, float* %c, align 4
  %vecinit6 = insertelement <16 x float> %vecinit5, float %8, i32 6
  %9 = load float, float* %c, align 4
  %vecinit7 = insertelement <16 x float> %vecinit6, float %9, i32 7
  %10 = load float, float* %c, align 4
  %vecinit8 = insertelement <16 x float> %vecinit7, float %10, i32 8
  %11 = load float, float* %c, align 4
  %vecinit9 = insertelement <16 x float> %vecinit8, float %11, i32 9
  %12 = load float, float* %c, align 4
  %vecinit10 = insertelement <16 x float> %vecinit9, float %12, i32 10
  %13 = load float, float* %c, align 4
  %vecinit11 = insertelement <16 x float> %vecinit10, float %13, i32 11
  %14 = load float, float* %c, align 4
  %vecinit12 = insertelement <16 x float> %vecinit11, float %14, i32 12
  %15 = load float, float* %c, align 4
  %vecinit13 = insertelement <16 x float> %vecinit12, float %15, i32 13
  %16 = load float, float* %c, align 4
  %vecinit14 = insertelement <16 x float> %vecinit13, float %16, i32 14
  %17 = load float, float* %c, align 4
  %vecinit15 = insertelement <16 x float> %vecinit14, float %17, i32 15
  store <16 x float> %vecinit15, <16 x float>* %v, align 64
  %18 = load <16 x float>, <16 x float>* %v, align 64
  ret <16 x float> %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3float16() #0 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <16 x float>, align 64
  %b = alloca <16 x float>, align 64
  store float 1.700000e+01, float* %c, align 4
  %0 = load float, float* %c, align 4
  %call = call <16 x float> @test1float16(float %0)
  store <16 x float> %call, <16 x float>* %a, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <16 x float>, <16 x float>* %a, align 64
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <16 x float> %2, i32 %3
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %call2 = call <16 x float> @test2float16(float* %c)
  store <16 x float> %call2, <16 x float>* %b, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 16
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <16 x float>, <16 x float>* %a, align 64
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <16 x float> %6, i32 %7
  %cmp7 = fcmp une float %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !42

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x float> @test1float8(float %c) #2 {
entry:
  %c.addr = alloca float, align 4
  %v = alloca <8 x float>, align 32
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %c.addr, align 4
  %vecinit = insertelement <8 x float> undef, float %0, i32 0
  %1 = load float, float* %c.addr, align 4
  %vecinit1 = insertelement <8 x float> %vecinit, float %1, i32 1
  %2 = load float, float* %c.addr, align 4
  %vecinit2 = insertelement <8 x float> %vecinit1, float %2, i32 2
  %3 = load float, float* %c.addr, align 4
  %vecinit3 = insertelement <8 x float> %vecinit2, float %3, i32 3
  %4 = load float, float* %c.addr, align 4
  %vecinit4 = insertelement <8 x float> %vecinit3, float %4, i32 4
  %5 = load float, float* %c.addr, align 4
  %vecinit5 = insertelement <8 x float> %vecinit4, float %5, i32 5
  %6 = load float, float* %c.addr, align 4
  %vecinit6 = insertelement <8 x float> %vecinit5, float %6, i32 6
  %7 = load float, float* %c.addr, align 4
  %vecinit7 = insertelement <8 x float> %vecinit6, float %7, i32 7
  store <8 x float> %vecinit7, <8 x float>* %v, align 32
  %8 = load <8 x float>, <8 x float>* %v, align 32
  ret <8 x float> %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x float> @test2float8(float* %p) #2 {
entry:
  %p.addr = alloca float*, align 8
  %c = alloca float, align 4
  %v = alloca <8 x float>, align 32
  store float* %p, float** %p.addr, align 8
  %0 = load float*, float** %p.addr, align 8
  %1 = load float, float* %0, align 4
  store float %1, float* %c, align 4
  %2 = load float, float* %c, align 4
  %vecinit = insertelement <8 x float> undef, float %2, i32 0
  %3 = load float, float* %c, align 4
  %vecinit1 = insertelement <8 x float> %vecinit, float %3, i32 1
  %4 = load float, float* %c, align 4
  %vecinit2 = insertelement <8 x float> %vecinit1, float %4, i32 2
  %5 = load float, float* %c, align 4
  %vecinit3 = insertelement <8 x float> %vecinit2, float %5, i32 3
  %6 = load float, float* %c, align 4
  %vecinit4 = insertelement <8 x float> %vecinit3, float %6, i32 4
  %7 = load float, float* %c, align 4
  %vecinit5 = insertelement <8 x float> %vecinit4, float %7, i32 5
  %8 = load float, float* %c, align 4
  %vecinit6 = insertelement <8 x float> %vecinit5, float %8, i32 6
  %9 = load float, float* %c, align 4
  %vecinit7 = insertelement <8 x float> %vecinit6, float %9, i32 7
  store <8 x float> %vecinit7, <8 x float>* %v, align 32
  %10 = load <8 x float>, <8 x float>* %v, align 32
  ret <8 x float> %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3float8() #2 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <8 x float>, align 32
  %b = alloca <8 x float>, align 32
  store float 1.700000e+01, float* %c, align 4
  %0 = load float, float* %c, align 4
  %call = call <8 x float> @test1float8(float %0)
  store <8 x float> %call, <8 x float>* %a, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <8 x float>, <8 x float>* %a, align 32
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <8 x float> %2, i32 %3
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %call2 = call <8 x float> @test2float8(float* %c)
  store <8 x float> %call2, <8 x float>* %b, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 8
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <8 x float>, <8 x float>* %a, align 32
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <8 x float> %6, i32 %7
  %cmp7 = fcmp une float %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !44

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <4 x float> @test1float4(float %c) #3 {
entry:
  %c.addr = alloca float, align 4
  %v = alloca <4 x float>, align 16
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %c.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, float* %c.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, float* %c.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, float* %c.addr, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, <4 x float>* %v, align 16
  %4 = load <4 x float>, <4 x float>* %v, align 16
  ret <4 x float> %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <4 x float> @test2float4(float* %p) #3 {
entry:
  %p.addr = alloca float*, align 8
  %c = alloca float, align 4
  %v = alloca <4 x float>, align 16
  store float* %p, float** %p.addr, align 8
  %0 = load float*, float** %p.addr, align 8
  %1 = load float, float* %0, align 4
  store float %1, float* %c, align 4
  %2 = load float, float* %c, align 4
  %vecinit = insertelement <4 x float> undef, float %2, i32 0
  %3 = load float, float* %c, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %3, i32 1
  %4 = load float, float* %c, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %4, i32 2
  %5 = load float, float* %c, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %5, i32 3
  store <4 x float> %vecinit3, <4 x float>* %v, align 16
  %6 = load <4 x float>, <4 x float>* %v, align 16
  ret <4 x float> %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3float4() #3 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  store float 1.700000e+01, float* %c, align 4
  %0 = load float, float* %c, align 4
  %call = call <4 x float> @test1float4(float %0)
  store <4 x float> %call, <4 x float>* %a, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <4 x float>, <4 x float>* %a, align 16
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <4 x float> %2, i32 %3
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %call2 = call <4 x float> @test2float4(float* %c)
  store <4 x float> %call2, <4 x float>* %b, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 4
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <4 x float>, <4 x float>* %a, align 16
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <4 x float> %6, i32 %7
  %cmp7 = fcmp une float %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !46

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test1float2(float %c) #4 {
entry:
  %retval = alloca <2 x float>, align 8
  %c.addr = alloca float, align 4
  %v = alloca <2 x float>, align 8
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %c.addr, align 4
  %vecinit = insertelement <2 x float> undef, float %0, i32 0
  %1 = load float, float* %c.addr, align 4
  %vecinit1 = insertelement <2 x float> %vecinit, float %1, i32 1
  store <2 x float> %vecinit1, <2 x float>* %v, align 8
  %2 = load <2 x float>, <2 x float>* %v, align 8
  store <2 x float> %2, <2 x float>* %retval, align 8
  %3 = bitcast <2 x float>* %retval to double*
  %4 = load double, double* %3, align 8
  ret double %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test2float2(float* %p) #4 {
entry:
  %retval = alloca <2 x float>, align 8
  %p.addr = alloca float*, align 8
  %c = alloca float, align 4
  %v = alloca <2 x float>, align 8
  store float* %p, float** %p.addr, align 8
  %0 = load float*, float** %p.addr, align 8
  %1 = load float, float* %0, align 4
  store float %1, float* %c, align 4
  %2 = load float, float* %c, align 4
  %vecinit = insertelement <2 x float> undef, float %2, i32 0
  %3 = load float, float* %c, align 4
  %vecinit1 = insertelement <2 x float> %vecinit, float %3, i32 1
  store <2 x float> %vecinit1, <2 x float>* %v, align 8
  %4 = load <2 x float>, <2 x float>* %v, align 8
  store <2 x float> %4, <2 x float>* %retval, align 8
  %5 = bitcast <2 x float>* %retval to double*
  %6 = load double, double* %5, align 8
  ret double %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3float2() #4 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <2 x float>, align 8
  %coerce = alloca <2 x float>, align 8
  %b = alloca <2 x float>, align 8
  %coerce3 = alloca <2 x float>, align 8
  store float 1.700000e+01, float* %c, align 4
  %0 = load float, float* %c, align 4
  %call = call double @test1float2(float %0)
  %1 = bitcast <2 x float>* %coerce to double*
  store double %call, double* %1, align 8
  %2 = load <2 x float>, <2 x float>* %coerce, align 8
  store <2 x float> %2, <2 x float>* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <2 x float>, <2 x float>* %a, align 8
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <2 x float> %4, i32 %5
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %call2 = call double @test2float2(float* %c)
  %7 = bitcast <2 x float>* %coerce3 to double*
  store double %call2, double* %7, align 8
  %8 = load <2 x float>, <2 x float>* %coerce3, align 8
  store <2 x float> %8, <2 x float>* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %9, 2
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %10 = load <2 x float>, <2 x float>* %a, align 8
  %11 = load i32, i32* %i, align 4
  %vecext7 = extractelement <2 x float> %10, i32 %11
  %cmp8 = fcmp une float %vecext7, 1.700000e+01
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body6
  call void @abort() #6
  unreachable

if.end10:                                         ; preds = %for.body6
  br label %for.inc11

for.inc11:                                        ; preds = %if.end10
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4, !llvm.loop !48

for.end13:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test1float1(float %c) #4 {
entry:
  %retval = alloca <1 x float>, align 4
  %c.addr = alloca float, align 4
  %v = alloca <1 x float>, align 4
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %c.addr, align 4
  %vecinit = insertelement <1 x float> undef, float %0, i32 0
  store <1 x float> %vecinit, <1 x float>* %v, align 4
  %1 = load <1 x float>, <1 x float>* %v, align 4
  store <1 x float> %1, <1 x float>* %retval, align 4
  %2 = bitcast <1 x float>* %retval to i32*
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test2float1(float* %p) #4 {
entry:
  %retval = alloca <1 x float>, align 4
  %p.addr = alloca float*, align 8
  %c = alloca float, align 4
  %v = alloca <1 x float>, align 4
  store float* %p, float** %p.addr, align 8
  %0 = load float*, float** %p.addr, align 8
  %1 = load float, float* %0, align 4
  store float %1, float* %c, align 4
  %2 = load float, float* %c, align 4
  %vecinit = insertelement <1 x float> undef, float %2, i32 0
  store <1 x float> %vecinit, <1 x float>* %v, align 4
  %3 = load <1 x float>, <1 x float>* %v, align 4
  store <1 x float> %3, <1 x float>* %retval, align 4
  %4 = bitcast <1 x float>* %retval to i32*
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3float1() #4 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <1 x float>, align 4
  %coerce = alloca <1 x float>, align 4
  %b = alloca <1 x float>, align 4
  %coerce3 = alloca <1 x float>, align 4
  store float 1.700000e+01, float* %c, align 4
  %0 = load float, float* %c, align 4
  %call = call i32 @test1float1(float %0)
  %1 = bitcast <1 x float>* %coerce to i32*
  store i32 %call, i32* %1, align 4
  %2 = load <1 x float>, <1 x float>* %coerce, align 4
  store <1 x float> %2, <1 x float>* %a, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <1 x float>, <1 x float>* %a, align 4
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <1 x float> %4, i32 %5
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %call2 = call i32 @test2float1(float* %c)
  %7 = bitcast <1 x float>* %coerce3 to i32*
  store i32 %call2, i32* %7, align 4
  %8 = load <1 x float>, <1 x float>* %coerce3, align 4
  store <1 x float> %8, <1 x float>* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %9, 1
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %10 = load <1 x float>, <1 x float>* %a, align 4
  %11 = load i32, i32* %i, align 4
  %vecext7 = extractelement <1 x float> %10, i32 %11
  %cmp8 = fcmp une float %vecext7, 1.700000e+01
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body6
  call void @abort() #6
  unreachable

if.end10:                                         ; preds = %for.body6
  br label %for.inc11

for.inc11:                                        ; preds = %if.end10
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4, !llvm.loop !50

for.end13:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x i64> @test1llong8(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %v = alloca <8 x i64>, align 64
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %vecinit = insertelement <8 x i64> undef, i64 %0, i32 0
  %1 = load i64, i64* %c.addr, align 8
  %vecinit1 = insertelement <8 x i64> %vecinit, i64 %1, i32 1
  %2 = load i64, i64* %c.addr, align 8
  %vecinit2 = insertelement <8 x i64> %vecinit1, i64 %2, i32 2
  %3 = load i64, i64* %c.addr, align 8
  %vecinit3 = insertelement <8 x i64> %vecinit2, i64 %3, i32 3
  %4 = load i64, i64* %c.addr, align 8
  %vecinit4 = insertelement <8 x i64> %vecinit3, i64 %4, i32 4
  %5 = load i64, i64* %c.addr, align 8
  %vecinit5 = insertelement <8 x i64> %vecinit4, i64 %5, i32 5
  %6 = load i64, i64* %c.addr, align 8
  %vecinit6 = insertelement <8 x i64> %vecinit5, i64 %6, i32 6
  %7 = load i64, i64* %c.addr, align 8
  %vecinit7 = insertelement <8 x i64> %vecinit6, i64 %7, i32 7
  store <8 x i64> %vecinit7, <8 x i64>* %v, align 64
  %8 = load <8 x i64>, <8 x i64>* %v, align 64
  ret <8 x i64> %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x i64> @test2llong8(i64* %p) #0 {
entry:
  %p.addr = alloca i64*, align 8
  %c = alloca i64, align 8
  %v = alloca <8 x i64>, align 64
  store i64* %p, i64** %p.addr, align 8
  %0 = load i64*, i64** %p.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %c, align 8
  %2 = load i64, i64* %c, align 8
  %vecinit = insertelement <8 x i64> undef, i64 %2, i32 0
  %3 = load i64, i64* %c, align 8
  %vecinit1 = insertelement <8 x i64> %vecinit, i64 %3, i32 1
  %4 = load i64, i64* %c, align 8
  %vecinit2 = insertelement <8 x i64> %vecinit1, i64 %4, i32 2
  %5 = load i64, i64* %c, align 8
  %vecinit3 = insertelement <8 x i64> %vecinit2, i64 %5, i32 3
  %6 = load i64, i64* %c, align 8
  %vecinit4 = insertelement <8 x i64> %vecinit3, i64 %6, i32 4
  %7 = load i64, i64* %c, align 8
  %vecinit5 = insertelement <8 x i64> %vecinit4, i64 %7, i32 5
  %8 = load i64, i64* %c, align 8
  %vecinit6 = insertelement <8 x i64> %vecinit5, i64 %8, i32 6
  %9 = load i64, i64* %c, align 8
  %vecinit7 = insertelement <8 x i64> %vecinit6, i64 %9, i32 7
  store <8 x i64> %vecinit7, <8 x i64>* %v, align 64
  %10 = load <8 x i64>, <8 x i64>* %v, align 64
  ret <8 x i64> %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3llong8() #0 {
entry:
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  store i64 17, i64* %c, align 8
  %0 = load i64, i64* %c, align 8
  %call = call <8 x i64> @test1llong8(i64 %0)
  store <8 x i64> %call, <8 x i64>* %a, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <8 x i64>, <8 x i64>* %a, align 64
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <8 x i64> %2, i32 %3
  %cmp1 = icmp ne i64 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %call2 = call <8 x i64> @test2llong8(i64* %c)
  store <8 x i64> %call2, <8 x i64>* %b, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 8
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <8 x i64>, <8 x i64>* %a, align 64
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <8 x i64> %6, i32 %7
  %cmp7 = icmp ne i64 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !52

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <4 x i64> @test1llong4(i64 %c) #2 {
entry:
  %c.addr = alloca i64, align 8
  %v = alloca <4 x i64>, align 32
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %vecinit = insertelement <4 x i64> undef, i64 %0, i32 0
  %1 = load i64, i64* %c.addr, align 8
  %vecinit1 = insertelement <4 x i64> %vecinit, i64 %1, i32 1
  %2 = load i64, i64* %c.addr, align 8
  %vecinit2 = insertelement <4 x i64> %vecinit1, i64 %2, i32 2
  %3 = load i64, i64* %c.addr, align 8
  %vecinit3 = insertelement <4 x i64> %vecinit2, i64 %3, i32 3
  store <4 x i64> %vecinit3, <4 x i64>* %v, align 32
  %4 = load <4 x i64>, <4 x i64>* %v, align 32
  ret <4 x i64> %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <4 x i64> @test2llong4(i64* %p) #2 {
entry:
  %p.addr = alloca i64*, align 8
  %c = alloca i64, align 8
  %v = alloca <4 x i64>, align 32
  store i64* %p, i64** %p.addr, align 8
  %0 = load i64*, i64** %p.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %c, align 8
  %2 = load i64, i64* %c, align 8
  %vecinit = insertelement <4 x i64> undef, i64 %2, i32 0
  %3 = load i64, i64* %c, align 8
  %vecinit1 = insertelement <4 x i64> %vecinit, i64 %3, i32 1
  %4 = load i64, i64* %c, align 8
  %vecinit2 = insertelement <4 x i64> %vecinit1, i64 %4, i32 2
  %5 = load i64, i64* %c, align 8
  %vecinit3 = insertelement <4 x i64> %vecinit2, i64 %5, i32 3
  store <4 x i64> %vecinit3, <4 x i64>* %v, align 32
  %6 = load <4 x i64>, <4 x i64>* %v, align 32
  ret <4 x i64> %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3llong4() #2 {
entry:
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  store i64 17, i64* %c, align 8
  %0 = load i64, i64* %c, align 8
  %call = call <4 x i64> @test1llong4(i64 %0)
  store <4 x i64> %call, <4 x i64>* %a, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <4 x i64>, <4 x i64>* %a, align 32
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <4 x i64> %2, i32 %3
  %cmp1 = icmp ne i64 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  %call2 = call <4 x i64> @test2llong4(i64* %c)
  store <4 x i64> %call2, <4 x i64>* %b, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 4
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <4 x i64>, <4 x i64>* %a, align 32
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <4 x i64> %6, i32 %7
  %cmp7 = icmp ne i64 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !54

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <2 x i64> @test1llong2(i64 %c) #3 {
entry:
  %c.addr = alloca i64, align 8
  %v = alloca <2 x i64>, align 16
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %vecinit = insertelement <2 x i64> undef, i64 %0, i32 0
  %1 = load i64, i64* %c.addr, align 8
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 %1, i32 1
  store <2 x i64> %vecinit1, <2 x i64>* %v, align 16
  %2 = load <2 x i64>, <2 x i64>* %v, align 16
  ret <2 x i64> %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <2 x i64> @test2llong2(i64* %p) #3 {
entry:
  %p.addr = alloca i64*, align 8
  %c = alloca i64, align 8
  %v = alloca <2 x i64>, align 16
  store i64* %p, i64** %p.addr, align 8
  %0 = load i64*, i64** %p.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %c, align 8
  %2 = load i64, i64* %c, align 8
  %vecinit = insertelement <2 x i64> undef, i64 %2, i32 0
  %3 = load i64, i64* %c, align 8
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 %3, i32 1
  store <2 x i64> %vecinit1, <2 x i64>* %v, align 16
  %4 = load <2 x i64>, <2 x i64>* %v, align 16
  ret <2 x i64> %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3llong2() #3 {
entry:
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  store i64 17, i64* %c, align 8
  %0 = load i64, i64* %c, align 8
  %call = call <2 x i64> @test1llong2(i64 %0)
  store <2 x i64> %call, <2 x i64>* %a, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <2 x i64>, <2 x i64>* %a, align 16
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <2 x i64> %2, i32 %3
  %cmp1 = icmp ne i64 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %call2 = call <2 x i64> @test2llong2(i64* %c)
  store <2 x i64> %call2, <2 x i64>* %b, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 2
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <2 x i64>, <2 x i64>* %a, align 16
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <2 x i64> %6, i32 %7
  %cmp7 = icmp ne i64 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !56

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test1llong1(i64 %c) #4 {
entry:
  %retval = alloca <1 x i64>, align 8
  %c.addr = alloca i64, align 8
  %v = alloca <1 x i64>, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %vecinit = insertelement <1 x i64> undef, i64 %0, i32 0
  store <1 x i64> %vecinit, <1 x i64>* %v, align 8
  %1 = load <1 x i64>, <1 x i64>* %v, align 8
  store <1 x i64> %1, <1 x i64>* %retval, align 8
  %2 = bitcast <1 x i64>* %retval to double*
  %3 = load double, double* %2, align 8
  ret double %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @test2llong1(i64* %p) #4 {
entry:
  %retval = alloca <1 x i64>, align 8
  %p.addr = alloca i64*, align 8
  %c = alloca i64, align 8
  %v = alloca <1 x i64>, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load i64*, i64** %p.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %c, align 8
  %2 = load i64, i64* %c, align 8
  %vecinit = insertelement <1 x i64> undef, i64 %2, i32 0
  store <1 x i64> %vecinit, <1 x i64>* %v, align 8
  %3 = load <1 x i64>, <1 x i64>* %v, align 8
  store <1 x i64> %3, <1 x i64>* %retval, align 8
  %4 = bitcast <1 x i64>* %retval to double*
  %5 = load double, double* %4, align 8
  ret double %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3llong1() #4 {
entry:
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca <1 x i64>, align 8
  %coerce = alloca <1 x i64>, align 8
  %b = alloca <1 x i64>, align 8
  %coerce3 = alloca <1 x i64>, align 8
  store i64 17, i64* %c, align 8
  %0 = load i64, i64* %c, align 8
  %call = call double @test1llong1(i64 %0)
  %1 = bitcast <1 x i64>* %coerce to double*
  store double %call, double* %1, align 8
  %2 = load <1 x i64>, <1 x i64>* %coerce, align 8
  store <1 x i64> %2, <1 x i64>* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load <1 x i64>, <1 x i64>* %a, align 8
  %5 = load i32, i32* %i, align 4
  %vecext = extractelement <1 x i64> %4, i32 %5
  %cmp1 = icmp ne i64 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %call2 = call double @test2llong1(i64* %c)
  %7 = bitcast <1 x i64>* %coerce3 to double*
  store double %call2, double* %7, align 8
  %8 = load <1 x i64>, <1 x i64>* %coerce3, align 8
  store <1 x i64> %8, <1 x i64>* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %9, 1
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %10 = load <1 x i64>, <1 x i64>* %a, align 8
  %11 = load i32, i32* %i, align 4
  %vecext7 = extractelement <1 x i64> %10, i32 %11
  %cmp8 = icmp ne i64 %vecext7, 17
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body6
  call void @abort() #6
  unreachable

if.end10:                                         ; preds = %for.body6
  br label %for.inc11

for.inc11:                                        ; preds = %if.end10
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4, !llvm.loop !58

for.end13:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x double> @test1double8(double %c) #0 {
entry:
  %c.addr = alloca double, align 8
  %v = alloca <8 x double>, align 64
  store double %c, double* %c.addr, align 8
  %0 = load double, double* %c.addr, align 8
  %vecinit = insertelement <8 x double> undef, double %0, i32 0
  %1 = load double, double* %c.addr, align 8
  %vecinit1 = insertelement <8 x double> %vecinit, double %1, i32 1
  %2 = load double, double* %c.addr, align 8
  %vecinit2 = insertelement <8 x double> %vecinit1, double %2, i32 2
  %3 = load double, double* %c.addr, align 8
  %vecinit3 = insertelement <8 x double> %vecinit2, double %3, i32 3
  %4 = load double, double* %c.addr, align 8
  %vecinit4 = insertelement <8 x double> %vecinit3, double %4, i32 4
  %5 = load double, double* %c.addr, align 8
  %vecinit5 = insertelement <8 x double> %vecinit4, double %5, i32 5
  %6 = load double, double* %c.addr, align 8
  %vecinit6 = insertelement <8 x double> %vecinit5, double %6, i32 6
  %7 = load double, double* %c.addr, align 8
  %vecinit7 = insertelement <8 x double> %vecinit6, double %7, i32 7
  store <8 x double> %vecinit7, <8 x double>* %v, align 64
  %8 = load <8 x double>, <8 x double>* %v, align 64
  ret <8 x double> %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <8 x double> @test2double8(double* %p) #0 {
entry:
  %p.addr = alloca double*, align 8
  %c = alloca double, align 8
  %v = alloca <8 x double>, align 64
  store double* %p, double** %p.addr, align 8
  %0 = load double*, double** %p.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %c, align 8
  %2 = load double, double* %c, align 8
  %vecinit = insertelement <8 x double> undef, double %2, i32 0
  %3 = load double, double* %c, align 8
  %vecinit1 = insertelement <8 x double> %vecinit, double %3, i32 1
  %4 = load double, double* %c, align 8
  %vecinit2 = insertelement <8 x double> %vecinit1, double %4, i32 2
  %5 = load double, double* %c, align 8
  %vecinit3 = insertelement <8 x double> %vecinit2, double %5, i32 3
  %6 = load double, double* %c, align 8
  %vecinit4 = insertelement <8 x double> %vecinit3, double %6, i32 4
  %7 = load double, double* %c, align 8
  %vecinit5 = insertelement <8 x double> %vecinit4, double %7, i32 5
  %8 = load double, double* %c, align 8
  %vecinit6 = insertelement <8 x double> %vecinit5, double %8, i32 6
  %9 = load double, double* %c, align 8
  %vecinit7 = insertelement <8 x double> %vecinit6, double %9, i32 7
  store <8 x double> %vecinit7, <8 x double>* %v, align 64
  %10 = load <8 x double>, <8 x double>* %v, align 64
  ret <8 x double> %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3double8() #0 {
entry:
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca <8 x double>, align 64
  %b = alloca <8 x double>, align 64
  store double 1.700000e+01, double* %c, align 8
  %0 = load double, double* %c, align 8
  %call = call <8 x double> @test1double8(double %0)
  store <8 x double> %call, <8 x double>* %a, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <8 x double>, <8 x double>* %a, align 64
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <8 x double> %2, i32 %3
  %cmp1 = fcmp une double %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  %call2 = call <8 x double> @test2double8(double* %c)
  store <8 x double> %call2, <8 x double>* %b, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 8
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <8 x double>, <8 x double>* %a, align 64
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <8 x double> %6, i32 %7
  %cmp7 = fcmp une double %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !60

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <4 x double> @test1double4(double %c) #2 {
entry:
  %c.addr = alloca double, align 8
  %v = alloca <4 x double>, align 32
  store double %c, double* %c.addr, align 8
  %0 = load double, double* %c.addr, align 8
  %vecinit = insertelement <4 x double> undef, double %0, i32 0
  %1 = load double, double* %c.addr, align 8
  %vecinit1 = insertelement <4 x double> %vecinit, double %1, i32 1
  %2 = load double, double* %c.addr, align 8
  %vecinit2 = insertelement <4 x double> %vecinit1, double %2, i32 2
  %3 = load double, double* %c.addr, align 8
  %vecinit3 = insertelement <4 x double> %vecinit2, double %3, i32 3
  store <4 x double> %vecinit3, <4 x double>* %v, align 32
  %4 = load <4 x double>, <4 x double>* %v, align 32
  ret <4 x double> %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <4 x double> @test2double4(double* %p) #2 {
entry:
  %p.addr = alloca double*, align 8
  %c = alloca double, align 8
  %v = alloca <4 x double>, align 32
  store double* %p, double** %p.addr, align 8
  %0 = load double*, double** %p.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %c, align 8
  %2 = load double, double* %c, align 8
  %vecinit = insertelement <4 x double> undef, double %2, i32 0
  %3 = load double, double* %c, align 8
  %vecinit1 = insertelement <4 x double> %vecinit, double %3, i32 1
  %4 = load double, double* %c, align 8
  %vecinit2 = insertelement <4 x double> %vecinit1, double %4, i32 2
  %5 = load double, double* %c, align 8
  %vecinit3 = insertelement <4 x double> %vecinit2, double %5, i32 3
  store <4 x double> %vecinit3, <4 x double>* %v, align 32
  %6 = load <4 x double>, <4 x double>* %v, align 32
  ret <4 x double> %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3double4() #2 {
entry:
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca <4 x double>, align 32
  %b = alloca <4 x double>, align 32
  store double 1.700000e+01, double* %c, align 8
  %0 = load double, double* %c, align 8
  %call = call <4 x double> @test1double4(double %0)
  store <4 x double> %call, <4 x double>* %a, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <4 x double>, <4 x double>* %a, align 32
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <4 x double> %2, i32 %3
  %cmp1 = fcmp une double %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %call2 = call <4 x double> @test2double4(double* %c)
  store <4 x double> %call2, <4 x double>* %b, align 32
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 4
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <4 x double>, <4 x double>* %a, align 32
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <4 x double> %6, i32 %7
  %cmp7 = fcmp une double %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !62

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <2 x double> @test1double2(double %c) #3 {
entry:
  %c.addr = alloca double, align 8
  %v = alloca <2 x double>, align 16
  store double %c, double* %c.addr, align 8
  %0 = load double, double* %c.addr, align 8
  %vecinit = insertelement <2 x double> undef, double %0, i32 0
  %1 = load double, double* %c.addr, align 8
  %vecinit1 = insertelement <2 x double> %vecinit, double %1, i32 1
  store <2 x double> %vecinit1, <2 x double>* %v, align 16
  %2 = load <2 x double>, <2 x double>* %v, align 16
  ret <2 x double> %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <2 x double> @test2double2(double* %p) #3 {
entry:
  %p.addr = alloca double*, align 8
  %c = alloca double, align 8
  %v = alloca <2 x double>, align 16
  store double* %p, double** %p.addr, align 8
  %0 = load double*, double** %p.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %c, align 8
  %2 = load double, double* %c, align 8
  %vecinit = insertelement <2 x double> undef, double %2, i32 0
  %3 = load double, double* %c, align 8
  %vecinit1 = insertelement <2 x double> %vecinit, double %3, i32 1
  store <2 x double> %vecinit1, <2 x double>* %v, align 16
  %4 = load <2 x double>, <2 x double>* %v, align 16
  ret <2 x double> %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3double2() #3 {
entry:
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %b = alloca <2 x double>, align 16
  store double 1.700000e+01, double* %c, align 8
  %0 = load double, double* %c, align 8
  %call = call <2 x double> @test1double2(double %0)
  store <2 x double> %call, <2 x double>* %a, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <2 x double>, <2 x double>* %a, align 16
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <2 x double> %2, i32 %3
  %cmp1 = fcmp une double %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %call2 = call <2 x double> @test2double2(double* %c)
  store <2 x double> %call2, <2 x double>* %b, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 2
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <2 x double>, <2 x double>* %a, align 16
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <2 x double> %6, i32 %7
  %cmp7 = fcmp une double %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !64

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <1 x double> @test1double1(double %c) #5 {
entry:
  %c.addr = alloca double, align 8
  %v = alloca <1 x double>, align 8
  store double %c, double* %c.addr, align 8
  %0 = load double, double* %c.addr, align 8
  %vecinit = insertelement <1 x double> undef, double %0, i32 0
  store <1 x double> %vecinit, <1 x double>* %v, align 8
  %1 = load <1 x double>, <1 x double>* %v, align 8
  ret <1 x double> %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <1 x double> @test2double1(double* %p) #5 {
entry:
  %p.addr = alloca double*, align 8
  %c = alloca double, align 8
  %v = alloca <1 x double>, align 8
  store double* %p, double** %p.addr, align 8
  %0 = load double*, double** %p.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %c, align 8
  %2 = load double, double* %c, align 8
  %vecinit = insertelement <1 x double> undef, double %2, i32 0
  store <1 x double> %vecinit, <1 x double>* %v, align 8
  %3 = load <1 x double>, <1 x double>* %v, align 8
  ret <1 x double> %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3double1() #5 {
entry:
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca <1 x double>, align 8
  %b = alloca <1 x double>, align 8
  store double 1.700000e+01, double* %c, align 8
  %0 = load double, double* %c, align 8
  %call = call <1 x double> @test1double1(double %0)
  store <1 x double> %call, <1 x double>* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <1 x double>, <1 x double>* %a, align 8
  %3 = load i32, i32* %i, align 4
  %vecext = extractelement <1 x double> %2, i32 %3
  %cmp1 = fcmp une double %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  %call2 = call <1 x double> @test2double1(double* %c)
  store <1 x double> %call2, <1 x double>* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 1
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <1 x double>, <1 x double>* %a, align 8
  %7 = load i32, i32* %i, align 4
  %vecext6 = extractelement <1 x double> %6, i32 %7
  %cmp7 = fcmp une double %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #6
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3, !llvm.loop !66

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @test3char64()
  call void @test3char32()
  call void @test3char16()
  call void @test3char8()
  call void @test3char4()
  call void @test3char2()
  call void @test3char1()
  call void @test3short32()
  call void @test3short16()
  call void @test3short8()
  call void @test3short4()
  call void @test3short2()
  call void @test3short1()
  call void @test3int16()
  call void @test3int8()
  call void @test3int4()
  call void @test3int2()
  call void @test3int1()
  call void @test3float16()
  call void @test3float8()
  call void @test3float4()
  call void @test3float2()
  call void @test3float1()
  call void @test3llong8()
  call void @test3llong4()
  call void @test3llong2()
  call void @test3llong1()
  call void @test3double8()
  call void @test3double4()
  call void @test3double2()
  call void @test3double1()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
