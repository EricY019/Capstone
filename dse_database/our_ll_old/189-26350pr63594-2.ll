; ModuleID = './code/189-26350pr63594-2.c'
source_filename = "./code/189-26350pr63594-2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1char64(ptr dead_on_unwind noalias writable sret(<64 x i8>) align 16 %agg.result, i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <64 x i8>, align 16
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %vecinit = insertelement <64 x i8> poison, i8 %0, i32 0
  %1 = load i8, ptr %c.addr, align 1
  %vecinit1 = insertelement <64 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %c.addr, align 1
  %vecinit2 = insertelement <64 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %c.addr, align 1
  %vecinit3 = insertelement <64 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, ptr %c.addr, align 1
  %vecinit4 = insertelement <64 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, ptr %c.addr, align 1
  %vecinit5 = insertelement <64 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, ptr %c.addr, align 1
  %vecinit6 = insertelement <64 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, ptr %c.addr, align 1
  %vecinit7 = insertelement <64 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, ptr %c.addr, align 1
  %vecinit8 = insertelement <64 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, ptr %c.addr, align 1
  %vecinit9 = insertelement <64 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, ptr %c.addr, align 1
  %vecinit10 = insertelement <64 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, ptr %c.addr, align 1
  %vecinit11 = insertelement <64 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, ptr %c.addr, align 1
  %vecinit12 = insertelement <64 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, ptr %c.addr, align 1
  %vecinit13 = insertelement <64 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, ptr %c.addr, align 1
  %vecinit14 = insertelement <64 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, ptr %c.addr, align 1
  %vecinit15 = insertelement <64 x i8> %vecinit14, i8 %15, i32 15
  %16 = load i8, ptr %c.addr, align 1
  %vecinit16 = insertelement <64 x i8> %vecinit15, i8 %16, i32 16
  %17 = load i8, ptr %c.addr, align 1
  %vecinit17 = insertelement <64 x i8> %vecinit16, i8 %17, i32 17
  %18 = load i8, ptr %c.addr, align 1
  %vecinit18 = insertelement <64 x i8> %vecinit17, i8 %18, i32 18
  %19 = load i8, ptr %c.addr, align 1
  %vecinit19 = insertelement <64 x i8> %vecinit18, i8 %19, i32 19
  %20 = load i8, ptr %c.addr, align 1
  %vecinit20 = insertelement <64 x i8> %vecinit19, i8 %20, i32 20
  %21 = load i8, ptr %c.addr, align 1
  %vecinit21 = insertelement <64 x i8> %vecinit20, i8 %21, i32 21
  %22 = load i8, ptr %c.addr, align 1
  %vecinit22 = insertelement <64 x i8> %vecinit21, i8 %22, i32 22
  %23 = load i8, ptr %c.addr, align 1
  %vecinit23 = insertelement <64 x i8> %vecinit22, i8 %23, i32 23
  %24 = load i8, ptr %c.addr, align 1
  %vecinit24 = insertelement <64 x i8> %vecinit23, i8 %24, i32 24
  %25 = load i8, ptr %c.addr, align 1
  %vecinit25 = insertelement <64 x i8> %vecinit24, i8 %25, i32 25
  %26 = load i8, ptr %c.addr, align 1
  %vecinit26 = insertelement <64 x i8> %vecinit25, i8 %26, i32 26
  %27 = load i8, ptr %c.addr, align 1
  %vecinit27 = insertelement <64 x i8> %vecinit26, i8 %27, i32 27
  %28 = load i8, ptr %c.addr, align 1
  %vecinit28 = insertelement <64 x i8> %vecinit27, i8 %28, i32 28
  %29 = load i8, ptr %c.addr, align 1
  %vecinit29 = insertelement <64 x i8> %vecinit28, i8 %29, i32 29
  %30 = load i8, ptr %c.addr, align 1
  %vecinit30 = insertelement <64 x i8> %vecinit29, i8 %30, i32 30
  %31 = load i8, ptr %c.addr, align 1
  %vecinit31 = insertelement <64 x i8> %vecinit30, i8 %31, i32 31
  %32 = load i8, ptr %c.addr, align 1
  %vecinit32 = insertelement <64 x i8> %vecinit31, i8 %32, i32 32
  %33 = load i8, ptr %c.addr, align 1
  %vecinit33 = insertelement <64 x i8> %vecinit32, i8 %33, i32 33
  %34 = load i8, ptr %c.addr, align 1
  %vecinit34 = insertelement <64 x i8> %vecinit33, i8 %34, i32 34
  %35 = load i8, ptr %c.addr, align 1
  %vecinit35 = insertelement <64 x i8> %vecinit34, i8 %35, i32 35
  %36 = load i8, ptr %c.addr, align 1
  %vecinit36 = insertelement <64 x i8> %vecinit35, i8 %36, i32 36
  %37 = load i8, ptr %c.addr, align 1
  %vecinit37 = insertelement <64 x i8> %vecinit36, i8 %37, i32 37
  %38 = load i8, ptr %c.addr, align 1
  %vecinit38 = insertelement <64 x i8> %vecinit37, i8 %38, i32 38
  %39 = load i8, ptr %c.addr, align 1
  %vecinit39 = insertelement <64 x i8> %vecinit38, i8 %39, i32 39
  %40 = load i8, ptr %c.addr, align 1
  %vecinit40 = insertelement <64 x i8> %vecinit39, i8 %40, i32 40
  %41 = load i8, ptr %c.addr, align 1
  %vecinit41 = insertelement <64 x i8> %vecinit40, i8 %41, i32 41
  %42 = load i8, ptr %c.addr, align 1
  %vecinit42 = insertelement <64 x i8> %vecinit41, i8 %42, i32 42
  %43 = load i8, ptr %c.addr, align 1
  %vecinit43 = insertelement <64 x i8> %vecinit42, i8 %43, i32 43
  %44 = load i8, ptr %c.addr, align 1
  %vecinit44 = insertelement <64 x i8> %vecinit43, i8 %44, i32 44
  %45 = load i8, ptr %c.addr, align 1
  %vecinit45 = insertelement <64 x i8> %vecinit44, i8 %45, i32 45
  %46 = load i8, ptr %c.addr, align 1
  %vecinit46 = insertelement <64 x i8> %vecinit45, i8 %46, i32 46
  %47 = load i8, ptr %c.addr, align 1
  %vecinit47 = insertelement <64 x i8> %vecinit46, i8 %47, i32 47
  %48 = load i8, ptr %c.addr, align 1
  %vecinit48 = insertelement <64 x i8> %vecinit47, i8 %48, i32 48
  %49 = load i8, ptr %c.addr, align 1
  %vecinit49 = insertelement <64 x i8> %vecinit48, i8 %49, i32 49
  %50 = load i8, ptr %c.addr, align 1
  %vecinit50 = insertelement <64 x i8> %vecinit49, i8 %50, i32 50
  %51 = load i8, ptr %c.addr, align 1
  %vecinit51 = insertelement <64 x i8> %vecinit50, i8 %51, i32 51
  %52 = load i8, ptr %c.addr, align 1
  %vecinit52 = insertelement <64 x i8> %vecinit51, i8 %52, i32 52
  %53 = load i8, ptr %c.addr, align 1
  %vecinit53 = insertelement <64 x i8> %vecinit52, i8 %53, i32 53
  %54 = load i8, ptr %c.addr, align 1
  %vecinit54 = insertelement <64 x i8> %vecinit53, i8 %54, i32 54
  %55 = load i8, ptr %c.addr, align 1
  %vecinit55 = insertelement <64 x i8> %vecinit54, i8 %55, i32 55
  %56 = load i8, ptr %c.addr, align 1
  %vecinit56 = insertelement <64 x i8> %vecinit55, i8 %56, i32 56
  %57 = load i8, ptr %c.addr, align 1
  %vecinit57 = insertelement <64 x i8> %vecinit56, i8 %57, i32 57
  %58 = load i8, ptr %c.addr, align 1
  %vecinit58 = insertelement <64 x i8> %vecinit57, i8 %58, i32 58
  %59 = load i8, ptr %c.addr, align 1
  %vecinit59 = insertelement <64 x i8> %vecinit58, i8 %59, i32 59
  %60 = load i8, ptr %c.addr, align 1
  %vecinit60 = insertelement <64 x i8> %vecinit59, i8 %60, i32 60
  %61 = load i8, ptr %c.addr, align 1
  %vecinit61 = insertelement <64 x i8> %vecinit60, i8 %61, i32 61
  %62 = load i8, ptr %c.addr, align 1
  %vecinit62 = insertelement <64 x i8> %vecinit61, i8 %62, i32 62
  %63 = load i8, ptr %c.addr, align 1
  %vecinit63 = insertelement <64 x i8> %vecinit62, i8 %63, i32 63
  store <64 x i8> %vecinit63, ptr %v, align 16
  %64 = load <64 x i8>, ptr %v, align 16
  store <64 x i8> %64, ptr %agg.result, align 16
  %65 = load <64 x i8>, ptr %agg.result, align 16
  store <64 x i8> %65, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2char64(ptr dead_on_unwind noalias writable sret(<64 x i8>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %v = alloca <64 x i8>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %vecinit = insertelement <64 x i8> poison, i8 %2, i32 0
  %3 = load i8, ptr %c, align 1
  %vecinit1 = insertelement <64 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, ptr %c, align 1
  %vecinit2 = insertelement <64 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, ptr %c, align 1
  %vecinit3 = insertelement <64 x i8> %vecinit2, i8 %5, i32 3
  %6 = load i8, ptr %c, align 1
  %vecinit4 = insertelement <64 x i8> %vecinit3, i8 %6, i32 4
  %7 = load i8, ptr %c, align 1
  %vecinit5 = insertelement <64 x i8> %vecinit4, i8 %7, i32 5
  %8 = load i8, ptr %c, align 1
  %vecinit6 = insertelement <64 x i8> %vecinit5, i8 %8, i32 6
  %9 = load i8, ptr %c, align 1
  %vecinit7 = insertelement <64 x i8> %vecinit6, i8 %9, i32 7
  %10 = load i8, ptr %c, align 1
  %vecinit8 = insertelement <64 x i8> %vecinit7, i8 %10, i32 8
  %11 = load i8, ptr %c, align 1
  %vecinit9 = insertelement <64 x i8> %vecinit8, i8 %11, i32 9
  %12 = load i8, ptr %c, align 1
  %vecinit10 = insertelement <64 x i8> %vecinit9, i8 %12, i32 10
  %13 = load i8, ptr %c, align 1
  %vecinit11 = insertelement <64 x i8> %vecinit10, i8 %13, i32 11
  %14 = load i8, ptr %c, align 1
  %vecinit12 = insertelement <64 x i8> %vecinit11, i8 %14, i32 12
  %15 = load i8, ptr %c, align 1
  %vecinit13 = insertelement <64 x i8> %vecinit12, i8 %15, i32 13
  %16 = load i8, ptr %c, align 1
  %vecinit14 = insertelement <64 x i8> %vecinit13, i8 %16, i32 14
  %17 = load i8, ptr %c, align 1
  %vecinit15 = insertelement <64 x i8> %vecinit14, i8 %17, i32 15
  %18 = load i8, ptr %c, align 1
  %vecinit16 = insertelement <64 x i8> %vecinit15, i8 %18, i32 16
  %19 = load i8, ptr %c, align 1
  %vecinit17 = insertelement <64 x i8> %vecinit16, i8 %19, i32 17
  %20 = load i8, ptr %c, align 1
  %vecinit18 = insertelement <64 x i8> %vecinit17, i8 %20, i32 18
  %21 = load i8, ptr %c, align 1
  %vecinit19 = insertelement <64 x i8> %vecinit18, i8 %21, i32 19
  %22 = load i8, ptr %c, align 1
  %vecinit20 = insertelement <64 x i8> %vecinit19, i8 %22, i32 20
  %23 = load i8, ptr %c, align 1
  %vecinit21 = insertelement <64 x i8> %vecinit20, i8 %23, i32 21
  %24 = load i8, ptr %c, align 1
  %vecinit22 = insertelement <64 x i8> %vecinit21, i8 %24, i32 22
  %25 = load i8, ptr %c, align 1
  %vecinit23 = insertelement <64 x i8> %vecinit22, i8 %25, i32 23
  %26 = load i8, ptr %c, align 1
  %vecinit24 = insertelement <64 x i8> %vecinit23, i8 %26, i32 24
  %27 = load i8, ptr %c, align 1
  %vecinit25 = insertelement <64 x i8> %vecinit24, i8 %27, i32 25
  %28 = load i8, ptr %c, align 1
  %vecinit26 = insertelement <64 x i8> %vecinit25, i8 %28, i32 26
  %29 = load i8, ptr %c, align 1
  %vecinit27 = insertelement <64 x i8> %vecinit26, i8 %29, i32 27
  %30 = load i8, ptr %c, align 1
  %vecinit28 = insertelement <64 x i8> %vecinit27, i8 %30, i32 28
  %31 = load i8, ptr %c, align 1
  %vecinit29 = insertelement <64 x i8> %vecinit28, i8 %31, i32 29
  %32 = load i8, ptr %c, align 1
  %vecinit30 = insertelement <64 x i8> %vecinit29, i8 %32, i32 30
  %33 = load i8, ptr %c, align 1
  %vecinit31 = insertelement <64 x i8> %vecinit30, i8 %33, i32 31
  %34 = load i8, ptr %c, align 1
  %vecinit32 = insertelement <64 x i8> %vecinit31, i8 %34, i32 32
  %35 = load i8, ptr %c, align 1
  %vecinit33 = insertelement <64 x i8> %vecinit32, i8 %35, i32 33
  %36 = load i8, ptr %c, align 1
  %vecinit34 = insertelement <64 x i8> %vecinit33, i8 %36, i32 34
  %37 = load i8, ptr %c, align 1
  %vecinit35 = insertelement <64 x i8> %vecinit34, i8 %37, i32 35
  %38 = load i8, ptr %c, align 1
  %vecinit36 = insertelement <64 x i8> %vecinit35, i8 %38, i32 36
  %39 = load i8, ptr %c, align 1
  %vecinit37 = insertelement <64 x i8> %vecinit36, i8 %39, i32 37
  %40 = load i8, ptr %c, align 1
  %vecinit38 = insertelement <64 x i8> %vecinit37, i8 %40, i32 38
  %41 = load i8, ptr %c, align 1
  %vecinit39 = insertelement <64 x i8> %vecinit38, i8 %41, i32 39
  %42 = load i8, ptr %c, align 1
  %vecinit40 = insertelement <64 x i8> %vecinit39, i8 %42, i32 40
  %43 = load i8, ptr %c, align 1
  %vecinit41 = insertelement <64 x i8> %vecinit40, i8 %43, i32 41
  %44 = load i8, ptr %c, align 1
  %vecinit42 = insertelement <64 x i8> %vecinit41, i8 %44, i32 42
  %45 = load i8, ptr %c, align 1
  %vecinit43 = insertelement <64 x i8> %vecinit42, i8 %45, i32 43
  %46 = load i8, ptr %c, align 1
  %vecinit44 = insertelement <64 x i8> %vecinit43, i8 %46, i32 44
  %47 = load i8, ptr %c, align 1
  %vecinit45 = insertelement <64 x i8> %vecinit44, i8 %47, i32 45
  %48 = load i8, ptr %c, align 1
  %vecinit46 = insertelement <64 x i8> %vecinit45, i8 %48, i32 46
  %49 = load i8, ptr %c, align 1
  %vecinit47 = insertelement <64 x i8> %vecinit46, i8 %49, i32 47
  %50 = load i8, ptr %c, align 1
  %vecinit48 = insertelement <64 x i8> %vecinit47, i8 %50, i32 48
  %51 = load i8, ptr %c, align 1
  %vecinit49 = insertelement <64 x i8> %vecinit48, i8 %51, i32 49
  %52 = load i8, ptr %c, align 1
  %vecinit50 = insertelement <64 x i8> %vecinit49, i8 %52, i32 50
  %53 = load i8, ptr %c, align 1
  %vecinit51 = insertelement <64 x i8> %vecinit50, i8 %53, i32 51
  %54 = load i8, ptr %c, align 1
  %vecinit52 = insertelement <64 x i8> %vecinit51, i8 %54, i32 52
  %55 = load i8, ptr %c, align 1
  %vecinit53 = insertelement <64 x i8> %vecinit52, i8 %55, i32 53
  %56 = load i8, ptr %c, align 1
  %vecinit54 = insertelement <64 x i8> %vecinit53, i8 %56, i32 54
  %57 = load i8, ptr %c, align 1
  %vecinit55 = insertelement <64 x i8> %vecinit54, i8 %57, i32 55
  %58 = load i8, ptr %c, align 1
  %vecinit56 = insertelement <64 x i8> %vecinit55, i8 %58, i32 56
  %59 = load i8, ptr %c, align 1
  %vecinit57 = insertelement <64 x i8> %vecinit56, i8 %59, i32 57
  %60 = load i8, ptr %c, align 1
  %vecinit58 = insertelement <64 x i8> %vecinit57, i8 %60, i32 58
  %61 = load i8, ptr %c, align 1
  %vecinit59 = insertelement <64 x i8> %vecinit58, i8 %61, i32 59
  %62 = load i8, ptr %c, align 1
  %vecinit60 = insertelement <64 x i8> %vecinit59, i8 %62, i32 60
  %63 = load i8, ptr %c, align 1
  %vecinit61 = insertelement <64 x i8> %vecinit60, i8 %63, i32 61
  %64 = load i8, ptr %c, align 1
  %vecinit62 = insertelement <64 x i8> %vecinit61, i8 %64, i32 62
  %65 = load i8, ptr %c, align 1
  %vecinit63 = insertelement <64 x i8> %vecinit62, i8 %65, i32 63
  store <64 x i8> %vecinit63, ptr %v, align 16
  %66 = load <64 x i8>, ptr %v, align 16
  store <64 x i8> %66, ptr %agg.result, align 16
  %67 = load <64 x i8>, ptr %agg.result, align 16
  store <64 x i8> %67, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3char64() #0 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <64 x i8>, align 16
  %tmp = alloca <64 x i8>, align 16
  %b = alloca <64 x i8>, align 16
  %tmp3 = alloca <64 x i8>, align 16
  store i8 17, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  call void @test1char64(ptr dead_on_unwind writable sret(<64 x i8>) align 16 %tmp, i8 noundef signext %0)
  %1 = load <64 x i8>, ptr %tmp, align 16
  store <64 x i8> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <64 x i8>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <64 x i8> %3, i32 %4
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @test2char64(ptr dead_on_unwind writable sret(<64 x i8>) align 16 %tmp3, ptr noundef %c)
  %6 = load <64 x i8>, ptr %tmp3, align 16
  store <64 x i8> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %7, 64
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %8 = load <64 x i8>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext8 = extractelement <64 x i8> %8, i32 %9
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %10 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1char32(ptr dead_on_unwind noalias writable sret(<32 x i8>) align 16 %agg.result, i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <32 x i8>, align 16
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %vecinit = insertelement <32 x i8> poison, i8 %0, i32 0
  %1 = load i8, ptr %c.addr, align 1
  %vecinit1 = insertelement <32 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %c.addr, align 1
  %vecinit2 = insertelement <32 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %c.addr, align 1
  %vecinit3 = insertelement <32 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, ptr %c.addr, align 1
  %vecinit4 = insertelement <32 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, ptr %c.addr, align 1
  %vecinit5 = insertelement <32 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, ptr %c.addr, align 1
  %vecinit6 = insertelement <32 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, ptr %c.addr, align 1
  %vecinit7 = insertelement <32 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, ptr %c.addr, align 1
  %vecinit8 = insertelement <32 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, ptr %c.addr, align 1
  %vecinit9 = insertelement <32 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, ptr %c.addr, align 1
  %vecinit10 = insertelement <32 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, ptr %c.addr, align 1
  %vecinit11 = insertelement <32 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, ptr %c.addr, align 1
  %vecinit12 = insertelement <32 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, ptr %c.addr, align 1
  %vecinit13 = insertelement <32 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, ptr %c.addr, align 1
  %vecinit14 = insertelement <32 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, ptr %c.addr, align 1
  %vecinit15 = insertelement <32 x i8> %vecinit14, i8 %15, i32 15
  %16 = load i8, ptr %c.addr, align 1
  %vecinit16 = insertelement <32 x i8> %vecinit15, i8 %16, i32 16
  %17 = load i8, ptr %c.addr, align 1
  %vecinit17 = insertelement <32 x i8> %vecinit16, i8 %17, i32 17
  %18 = load i8, ptr %c.addr, align 1
  %vecinit18 = insertelement <32 x i8> %vecinit17, i8 %18, i32 18
  %19 = load i8, ptr %c.addr, align 1
  %vecinit19 = insertelement <32 x i8> %vecinit18, i8 %19, i32 19
  %20 = load i8, ptr %c.addr, align 1
  %vecinit20 = insertelement <32 x i8> %vecinit19, i8 %20, i32 20
  %21 = load i8, ptr %c.addr, align 1
  %vecinit21 = insertelement <32 x i8> %vecinit20, i8 %21, i32 21
  %22 = load i8, ptr %c.addr, align 1
  %vecinit22 = insertelement <32 x i8> %vecinit21, i8 %22, i32 22
  %23 = load i8, ptr %c.addr, align 1
  %vecinit23 = insertelement <32 x i8> %vecinit22, i8 %23, i32 23
  %24 = load i8, ptr %c.addr, align 1
  %vecinit24 = insertelement <32 x i8> %vecinit23, i8 %24, i32 24
  %25 = load i8, ptr %c.addr, align 1
  %vecinit25 = insertelement <32 x i8> %vecinit24, i8 %25, i32 25
  %26 = load i8, ptr %c.addr, align 1
  %vecinit26 = insertelement <32 x i8> %vecinit25, i8 %26, i32 26
  %27 = load i8, ptr %c.addr, align 1
  %vecinit27 = insertelement <32 x i8> %vecinit26, i8 %27, i32 27
  %28 = load i8, ptr %c.addr, align 1
  %vecinit28 = insertelement <32 x i8> %vecinit27, i8 %28, i32 28
  %29 = load i8, ptr %c.addr, align 1
  %vecinit29 = insertelement <32 x i8> %vecinit28, i8 %29, i32 29
  %30 = load i8, ptr %c.addr, align 1
  %vecinit30 = insertelement <32 x i8> %vecinit29, i8 %30, i32 30
  %31 = load i8, ptr %c.addr, align 1
  %vecinit31 = insertelement <32 x i8> %vecinit30, i8 %31, i32 31
  store <32 x i8> %vecinit31, ptr %v, align 16
  %32 = load <32 x i8>, ptr %v, align 16
  store <32 x i8> %32, ptr %agg.result, align 16
  %33 = load <32 x i8>, ptr %agg.result, align 16
  store <32 x i8> %33, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2char32(ptr dead_on_unwind noalias writable sret(<32 x i8>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %v = alloca <32 x i8>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %vecinit = insertelement <32 x i8> poison, i8 %2, i32 0
  %3 = load i8, ptr %c, align 1
  %vecinit1 = insertelement <32 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, ptr %c, align 1
  %vecinit2 = insertelement <32 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, ptr %c, align 1
  %vecinit3 = insertelement <32 x i8> %vecinit2, i8 %5, i32 3
  %6 = load i8, ptr %c, align 1
  %vecinit4 = insertelement <32 x i8> %vecinit3, i8 %6, i32 4
  %7 = load i8, ptr %c, align 1
  %vecinit5 = insertelement <32 x i8> %vecinit4, i8 %7, i32 5
  %8 = load i8, ptr %c, align 1
  %vecinit6 = insertelement <32 x i8> %vecinit5, i8 %8, i32 6
  %9 = load i8, ptr %c, align 1
  %vecinit7 = insertelement <32 x i8> %vecinit6, i8 %9, i32 7
  %10 = load i8, ptr %c, align 1
  %vecinit8 = insertelement <32 x i8> %vecinit7, i8 %10, i32 8
  %11 = load i8, ptr %c, align 1
  %vecinit9 = insertelement <32 x i8> %vecinit8, i8 %11, i32 9
  %12 = load i8, ptr %c, align 1
  %vecinit10 = insertelement <32 x i8> %vecinit9, i8 %12, i32 10
  %13 = load i8, ptr %c, align 1
  %vecinit11 = insertelement <32 x i8> %vecinit10, i8 %13, i32 11
  %14 = load i8, ptr %c, align 1
  %vecinit12 = insertelement <32 x i8> %vecinit11, i8 %14, i32 12
  %15 = load i8, ptr %c, align 1
  %vecinit13 = insertelement <32 x i8> %vecinit12, i8 %15, i32 13
  %16 = load i8, ptr %c, align 1
  %vecinit14 = insertelement <32 x i8> %vecinit13, i8 %16, i32 14
  %17 = load i8, ptr %c, align 1
  %vecinit15 = insertelement <32 x i8> %vecinit14, i8 %17, i32 15
  %18 = load i8, ptr %c, align 1
  %vecinit16 = insertelement <32 x i8> %vecinit15, i8 %18, i32 16
  %19 = load i8, ptr %c, align 1
  %vecinit17 = insertelement <32 x i8> %vecinit16, i8 %19, i32 17
  %20 = load i8, ptr %c, align 1
  %vecinit18 = insertelement <32 x i8> %vecinit17, i8 %20, i32 18
  %21 = load i8, ptr %c, align 1
  %vecinit19 = insertelement <32 x i8> %vecinit18, i8 %21, i32 19
  %22 = load i8, ptr %c, align 1
  %vecinit20 = insertelement <32 x i8> %vecinit19, i8 %22, i32 20
  %23 = load i8, ptr %c, align 1
  %vecinit21 = insertelement <32 x i8> %vecinit20, i8 %23, i32 21
  %24 = load i8, ptr %c, align 1
  %vecinit22 = insertelement <32 x i8> %vecinit21, i8 %24, i32 22
  %25 = load i8, ptr %c, align 1
  %vecinit23 = insertelement <32 x i8> %vecinit22, i8 %25, i32 23
  %26 = load i8, ptr %c, align 1
  %vecinit24 = insertelement <32 x i8> %vecinit23, i8 %26, i32 24
  %27 = load i8, ptr %c, align 1
  %vecinit25 = insertelement <32 x i8> %vecinit24, i8 %27, i32 25
  %28 = load i8, ptr %c, align 1
  %vecinit26 = insertelement <32 x i8> %vecinit25, i8 %28, i32 26
  %29 = load i8, ptr %c, align 1
  %vecinit27 = insertelement <32 x i8> %vecinit26, i8 %29, i32 27
  %30 = load i8, ptr %c, align 1
  %vecinit28 = insertelement <32 x i8> %vecinit27, i8 %30, i32 28
  %31 = load i8, ptr %c, align 1
  %vecinit29 = insertelement <32 x i8> %vecinit28, i8 %31, i32 29
  %32 = load i8, ptr %c, align 1
  %vecinit30 = insertelement <32 x i8> %vecinit29, i8 %32, i32 30
  %33 = load i8, ptr %c, align 1
  %vecinit31 = insertelement <32 x i8> %vecinit30, i8 %33, i32 31
  store <32 x i8> %vecinit31, ptr %v, align 16
  %34 = load <32 x i8>, ptr %v, align 16
  store <32 x i8> %34, ptr %agg.result, align 16
  %35 = load <32 x i8>, ptr %agg.result, align 16
  store <32 x i8> %35, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3char32() #0 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <32 x i8>, align 16
  %tmp = alloca <32 x i8>, align 16
  %b = alloca <32 x i8>, align 16
  %tmp3 = alloca <32 x i8>, align 16
  store i8 17, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  call void @test1char32(ptr dead_on_unwind writable sret(<32 x i8>) align 16 %tmp, i8 noundef signext %0)
  %1 = load <32 x i8>, ptr %tmp, align 16
  store <32 x i8> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <32 x i8>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <32 x i8> %3, i32 %4
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @test2char32(ptr dead_on_unwind writable sret(<32 x i8>) align 16 %tmp3, ptr noundef %c)
  %6 = load <32 x i8>, ptr %tmp3, align 16
  store <32 x i8> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %7, 32
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %8 = load <32 x i8>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext8 = extractelement <32 x i8> %8, i32 %9
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %10 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !9

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <16 x i8> @test1char16(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <16 x i8>, align 16
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %vecinit = insertelement <16 x i8> poison, i8 %0, i32 0
  %1 = load i8, ptr %c.addr, align 1
  %vecinit1 = insertelement <16 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %c.addr, align 1
  %vecinit2 = insertelement <16 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %c.addr, align 1
  %vecinit3 = insertelement <16 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, ptr %c.addr, align 1
  %vecinit4 = insertelement <16 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, ptr %c.addr, align 1
  %vecinit5 = insertelement <16 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, ptr %c.addr, align 1
  %vecinit6 = insertelement <16 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, ptr %c.addr, align 1
  %vecinit7 = insertelement <16 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, ptr %c.addr, align 1
  %vecinit8 = insertelement <16 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, ptr %c.addr, align 1
  %vecinit9 = insertelement <16 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, ptr %c.addr, align 1
  %vecinit10 = insertelement <16 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, ptr %c.addr, align 1
  %vecinit11 = insertelement <16 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, ptr %c.addr, align 1
  %vecinit12 = insertelement <16 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, ptr %c.addr, align 1
  %vecinit13 = insertelement <16 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, ptr %c.addr, align 1
  %vecinit14 = insertelement <16 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, ptr %c.addr, align 1
  %vecinit15 = insertelement <16 x i8> %vecinit14, i8 %15, i32 15
  store <16 x i8> %vecinit15, ptr %v, align 16
  %16 = load <16 x i8>, ptr %v, align 16
  ret <16 x i8> %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <16 x i8> @test2char16(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %v = alloca <16 x i8>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %vecinit = insertelement <16 x i8> poison, i8 %2, i32 0
  %3 = load i8, ptr %c, align 1
  %vecinit1 = insertelement <16 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, ptr %c, align 1
  %vecinit2 = insertelement <16 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, ptr %c, align 1
  %vecinit3 = insertelement <16 x i8> %vecinit2, i8 %5, i32 3
  %6 = load i8, ptr %c, align 1
  %vecinit4 = insertelement <16 x i8> %vecinit3, i8 %6, i32 4
  %7 = load i8, ptr %c, align 1
  %vecinit5 = insertelement <16 x i8> %vecinit4, i8 %7, i32 5
  %8 = load i8, ptr %c, align 1
  %vecinit6 = insertelement <16 x i8> %vecinit5, i8 %8, i32 6
  %9 = load i8, ptr %c, align 1
  %vecinit7 = insertelement <16 x i8> %vecinit6, i8 %9, i32 7
  %10 = load i8, ptr %c, align 1
  %vecinit8 = insertelement <16 x i8> %vecinit7, i8 %10, i32 8
  %11 = load i8, ptr %c, align 1
  %vecinit9 = insertelement <16 x i8> %vecinit8, i8 %11, i32 9
  %12 = load i8, ptr %c, align 1
  %vecinit10 = insertelement <16 x i8> %vecinit9, i8 %12, i32 10
  %13 = load i8, ptr %c, align 1
  %vecinit11 = insertelement <16 x i8> %vecinit10, i8 %13, i32 11
  %14 = load i8, ptr %c, align 1
  %vecinit12 = insertelement <16 x i8> %vecinit11, i8 %14, i32 12
  %15 = load i8, ptr %c, align 1
  %vecinit13 = insertelement <16 x i8> %vecinit12, i8 %15, i32 13
  %16 = load i8, ptr %c, align 1
  %vecinit14 = insertelement <16 x i8> %vecinit13, i8 %16, i32 14
  %17 = load i8, ptr %c, align 1
  %vecinit15 = insertelement <16 x i8> %vecinit14, i8 %17, i32 15
  store <16 x i8> %vecinit15, ptr %v, align 16
  %18 = load <16 x i8>, ptr %v, align 16
  ret <16 x i8> %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3char16() #0 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <16 x i8>, align 16
  %b = alloca <16 x i8>, align 16
  store i8 17, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  %call = call <16 x i8> @test1char16(i8 noundef signext %0)
  store <16 x i8> %call, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <16 x i8>, ptr %a, align 16
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <16 x i8> %2, i32 %3
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call3 = call <16 x i8> @test2char16(ptr noundef %c)
  store <16 x i8> %call3, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 16
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <16 x i8>, ptr %a, align 16
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <16 x i8> %6, i32 %7
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !11

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <8 x i8> @test1char8(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <8 x i8>, align 8
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %vecinit = insertelement <8 x i8> poison, i8 %0, i32 0
  %1 = load i8, ptr %c.addr, align 1
  %vecinit1 = insertelement <8 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %c.addr, align 1
  %vecinit2 = insertelement <8 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %c.addr, align 1
  %vecinit3 = insertelement <8 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, ptr %c.addr, align 1
  %vecinit4 = insertelement <8 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, ptr %c.addr, align 1
  %vecinit5 = insertelement <8 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, ptr %c.addr, align 1
  %vecinit6 = insertelement <8 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, ptr %c.addr, align 1
  %vecinit7 = insertelement <8 x i8> %vecinit6, i8 %7, i32 7
  store <8 x i8> %vecinit7, ptr %v, align 8
  %8 = load <8 x i8>, ptr %v, align 8
  ret <8 x i8> %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <8 x i8> @test2char8(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %v = alloca <8 x i8>, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %vecinit = insertelement <8 x i8> poison, i8 %2, i32 0
  %3 = load i8, ptr %c, align 1
  %vecinit1 = insertelement <8 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, ptr %c, align 1
  %vecinit2 = insertelement <8 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, ptr %c, align 1
  %vecinit3 = insertelement <8 x i8> %vecinit2, i8 %5, i32 3
  %6 = load i8, ptr %c, align 1
  %vecinit4 = insertelement <8 x i8> %vecinit3, i8 %6, i32 4
  %7 = load i8, ptr %c, align 1
  %vecinit5 = insertelement <8 x i8> %vecinit4, i8 %7, i32 5
  %8 = load i8, ptr %c, align 1
  %vecinit6 = insertelement <8 x i8> %vecinit5, i8 %8, i32 6
  %9 = load i8, ptr %c, align 1
  %vecinit7 = insertelement <8 x i8> %vecinit6, i8 %9, i32 7
  store <8 x i8> %vecinit7, ptr %v, align 8
  %10 = load <8 x i8>, ptr %v, align 8
  ret <8 x i8> %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3char8() #0 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  store i8 17, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  %call = call <8 x i8> @test1char8(i8 noundef signext %0)
  store <8 x i8> %call, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <8 x i8>, ptr %a, align 8
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <8 x i8> %2, i32 %3
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %call3 = call <8 x i8> @test2char8(ptr noundef %c)
  store <8 x i8> %call3, ptr %b, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 8
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <8 x i8>, ptr %a, align 8
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <8 x i8> %6, i32 %7
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !13

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <4 x i8> @test1char4(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <4 x i8>, align 4
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %vecinit = insertelement <4 x i8> poison, i8 %0, i32 0
  %1 = load i8, ptr %c.addr, align 1
  %vecinit1 = insertelement <4 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %c.addr, align 1
  %vecinit2 = insertelement <4 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %c.addr, align 1
  %vecinit3 = insertelement <4 x i8> %vecinit2, i8 %3, i32 3
  store <4 x i8> %vecinit3, ptr %v, align 4
  %4 = load <4 x i8>, ptr %v, align 4
  ret <4 x i8> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <4 x i8> @test2char4(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %v = alloca <4 x i8>, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %vecinit = insertelement <4 x i8> poison, i8 %2, i32 0
  %3 = load i8, ptr %c, align 1
  %vecinit1 = insertelement <4 x i8> %vecinit, i8 %3, i32 1
  %4 = load i8, ptr %c, align 1
  %vecinit2 = insertelement <4 x i8> %vecinit1, i8 %4, i32 2
  %5 = load i8, ptr %c, align 1
  %vecinit3 = insertelement <4 x i8> %vecinit2, i8 %5, i32 3
  store <4 x i8> %vecinit3, ptr %v, align 4
  %6 = load <4 x i8>, ptr %v, align 4
  ret <4 x i8> %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3char4() #0 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <4 x i8>, align 4
  %b = alloca <4 x i8>, align 4
  store i8 17, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  %call = call <4 x i8> @test1char4(i8 noundef signext %0)
  store <4 x i8> %call, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <4 x i8>, ptr %a, align 4
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <4 x i8> %2, i32 %3
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %call3 = call <4 x i8> @test2char4(ptr noundef %c)
  store <4 x i8> %call3, ptr %b, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 4
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <4 x i8>, ptr %a, align 4
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <4 x i8> %6, i32 %7
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !15

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x i8> @test1char2(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <2 x i8>, align 2
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %vecinit = insertelement <2 x i8> poison, i8 %0, i32 0
  %1 = load i8, ptr %c.addr, align 1
  %vecinit1 = insertelement <2 x i8> %vecinit, i8 %1, i32 1
  store <2 x i8> %vecinit1, ptr %v, align 2
  %2 = load <2 x i8>, ptr %v, align 2
  ret <2 x i8> %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x i8> @test2char2(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %v = alloca <2 x i8>, align 2
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %vecinit = insertelement <2 x i8> poison, i8 %2, i32 0
  %3 = load i8, ptr %c, align 1
  %vecinit1 = insertelement <2 x i8> %vecinit, i8 %3, i32 1
  store <2 x i8> %vecinit1, ptr %v, align 2
  %4 = load <2 x i8>, ptr %v, align 2
  ret <2 x i8> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3char2() #0 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <2 x i8>, align 2
  %b = alloca <2 x i8>, align 2
  store i8 17, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  %call = call <2 x i8> @test1char2(i8 noundef signext %0)
  store <2 x i8> %call, ptr %a, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <2 x i8>, ptr %a, align 2
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <2 x i8> %2, i32 %3
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %call3 = call <2 x i8> @test2char2(ptr noundef %c)
  store <2 x i8> %call3, ptr %b, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 2
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <2 x i8>, ptr %a, align 2
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <2 x i8> %6, i32 %7
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !17

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x i8> @test1char1(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %v = alloca <1 x i8>, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %vecinit = insertelement <1 x i8> poison, i8 %0, i32 0
  store <1 x i8> %vecinit, ptr %v, align 1
  %1 = load <1 x i8>, ptr %v, align 1
  ret <1 x i8> %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x i8> @test2char1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %v = alloca <1 x i8>, align 1
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %vecinit = insertelement <1 x i8> poison, i8 %2, i32 0
  store <1 x i8> %vecinit, ptr %v, align 1
  %3 = load <1 x i8>, ptr %v, align 1
  ret <1 x i8> %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3char1() #0 {
entry:
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %a = alloca <1 x i8>, align 1
  %b = alloca <1 x i8>, align 1
  store i8 17, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  %call = call <1 x i8> @test1char1(i8 noundef signext %0)
  store <1 x i8> %call, ptr %a, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <1 x i8>, ptr %a, align 1
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <1 x i8> %2, i32 %3
  %conv = sext i8 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %call3 = call <1 x i8> @test2char1(ptr noundef %c)
  store <1 x i8> %call3, ptr %b, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 1
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <1 x i8>, ptr %a, align 1
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <1 x i8> %6, i32 %7
  %conv9 = sext i8 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !19

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1short32(ptr dead_on_unwind noalias writable sret(<32 x i16>) align 16 %agg.result, i16 noundef signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <32 x i16>, align 16
  store i16 %c, ptr %c.addr, align 2
  %0 = load i16, ptr %c.addr, align 2
  %vecinit = insertelement <32 x i16> poison, i16 %0, i32 0
  %1 = load i16, ptr %c.addr, align 2
  %vecinit1 = insertelement <32 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, ptr %c.addr, align 2
  %vecinit2 = insertelement <32 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, ptr %c.addr, align 2
  %vecinit3 = insertelement <32 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, ptr %c.addr, align 2
  %vecinit4 = insertelement <32 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, ptr %c.addr, align 2
  %vecinit5 = insertelement <32 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, ptr %c.addr, align 2
  %vecinit6 = insertelement <32 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, ptr %c.addr, align 2
  %vecinit7 = insertelement <32 x i16> %vecinit6, i16 %7, i32 7
  %8 = load i16, ptr %c.addr, align 2
  %vecinit8 = insertelement <32 x i16> %vecinit7, i16 %8, i32 8
  %9 = load i16, ptr %c.addr, align 2
  %vecinit9 = insertelement <32 x i16> %vecinit8, i16 %9, i32 9
  %10 = load i16, ptr %c.addr, align 2
  %vecinit10 = insertelement <32 x i16> %vecinit9, i16 %10, i32 10
  %11 = load i16, ptr %c.addr, align 2
  %vecinit11 = insertelement <32 x i16> %vecinit10, i16 %11, i32 11
  %12 = load i16, ptr %c.addr, align 2
  %vecinit12 = insertelement <32 x i16> %vecinit11, i16 %12, i32 12
  %13 = load i16, ptr %c.addr, align 2
  %vecinit13 = insertelement <32 x i16> %vecinit12, i16 %13, i32 13
  %14 = load i16, ptr %c.addr, align 2
  %vecinit14 = insertelement <32 x i16> %vecinit13, i16 %14, i32 14
  %15 = load i16, ptr %c.addr, align 2
  %vecinit15 = insertelement <32 x i16> %vecinit14, i16 %15, i32 15
  %16 = load i16, ptr %c.addr, align 2
  %vecinit16 = insertelement <32 x i16> %vecinit15, i16 %16, i32 16
  %17 = load i16, ptr %c.addr, align 2
  %vecinit17 = insertelement <32 x i16> %vecinit16, i16 %17, i32 17
  %18 = load i16, ptr %c.addr, align 2
  %vecinit18 = insertelement <32 x i16> %vecinit17, i16 %18, i32 18
  %19 = load i16, ptr %c.addr, align 2
  %vecinit19 = insertelement <32 x i16> %vecinit18, i16 %19, i32 19
  %20 = load i16, ptr %c.addr, align 2
  %vecinit20 = insertelement <32 x i16> %vecinit19, i16 %20, i32 20
  %21 = load i16, ptr %c.addr, align 2
  %vecinit21 = insertelement <32 x i16> %vecinit20, i16 %21, i32 21
  %22 = load i16, ptr %c.addr, align 2
  %vecinit22 = insertelement <32 x i16> %vecinit21, i16 %22, i32 22
  %23 = load i16, ptr %c.addr, align 2
  %vecinit23 = insertelement <32 x i16> %vecinit22, i16 %23, i32 23
  %24 = load i16, ptr %c.addr, align 2
  %vecinit24 = insertelement <32 x i16> %vecinit23, i16 %24, i32 24
  %25 = load i16, ptr %c.addr, align 2
  %vecinit25 = insertelement <32 x i16> %vecinit24, i16 %25, i32 25
  %26 = load i16, ptr %c.addr, align 2
  %vecinit26 = insertelement <32 x i16> %vecinit25, i16 %26, i32 26
  %27 = load i16, ptr %c.addr, align 2
  %vecinit27 = insertelement <32 x i16> %vecinit26, i16 %27, i32 27
  %28 = load i16, ptr %c.addr, align 2
  %vecinit28 = insertelement <32 x i16> %vecinit27, i16 %28, i32 28
  %29 = load i16, ptr %c.addr, align 2
  %vecinit29 = insertelement <32 x i16> %vecinit28, i16 %29, i32 29
  %30 = load i16, ptr %c.addr, align 2
  %vecinit30 = insertelement <32 x i16> %vecinit29, i16 %30, i32 30
  %31 = load i16, ptr %c.addr, align 2
  %vecinit31 = insertelement <32 x i16> %vecinit30, i16 %31, i32 31
  store <32 x i16> %vecinit31, ptr %v, align 16
  %32 = load <32 x i16>, ptr %v, align 16
  store <32 x i16> %32, ptr %agg.result, align 16
  %33 = load <32 x i16>, ptr %agg.result, align 16
  store <32 x i16> %33, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2short32(ptr dead_on_unwind noalias writable sret(<32 x i16>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i16, align 2
  %v = alloca <32 x i16>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i16, ptr %0, align 2
  store i16 %1, ptr %c, align 2
  %2 = load i16, ptr %c, align 2
  %vecinit = insertelement <32 x i16> poison, i16 %2, i32 0
  %3 = load i16, ptr %c, align 2
  %vecinit1 = insertelement <32 x i16> %vecinit, i16 %3, i32 1
  %4 = load i16, ptr %c, align 2
  %vecinit2 = insertelement <32 x i16> %vecinit1, i16 %4, i32 2
  %5 = load i16, ptr %c, align 2
  %vecinit3 = insertelement <32 x i16> %vecinit2, i16 %5, i32 3
  %6 = load i16, ptr %c, align 2
  %vecinit4 = insertelement <32 x i16> %vecinit3, i16 %6, i32 4
  %7 = load i16, ptr %c, align 2
  %vecinit5 = insertelement <32 x i16> %vecinit4, i16 %7, i32 5
  %8 = load i16, ptr %c, align 2
  %vecinit6 = insertelement <32 x i16> %vecinit5, i16 %8, i32 6
  %9 = load i16, ptr %c, align 2
  %vecinit7 = insertelement <32 x i16> %vecinit6, i16 %9, i32 7
  %10 = load i16, ptr %c, align 2
  %vecinit8 = insertelement <32 x i16> %vecinit7, i16 %10, i32 8
  %11 = load i16, ptr %c, align 2
  %vecinit9 = insertelement <32 x i16> %vecinit8, i16 %11, i32 9
  %12 = load i16, ptr %c, align 2
  %vecinit10 = insertelement <32 x i16> %vecinit9, i16 %12, i32 10
  %13 = load i16, ptr %c, align 2
  %vecinit11 = insertelement <32 x i16> %vecinit10, i16 %13, i32 11
  %14 = load i16, ptr %c, align 2
  %vecinit12 = insertelement <32 x i16> %vecinit11, i16 %14, i32 12
  %15 = load i16, ptr %c, align 2
  %vecinit13 = insertelement <32 x i16> %vecinit12, i16 %15, i32 13
  %16 = load i16, ptr %c, align 2
  %vecinit14 = insertelement <32 x i16> %vecinit13, i16 %16, i32 14
  %17 = load i16, ptr %c, align 2
  %vecinit15 = insertelement <32 x i16> %vecinit14, i16 %17, i32 15
  %18 = load i16, ptr %c, align 2
  %vecinit16 = insertelement <32 x i16> %vecinit15, i16 %18, i32 16
  %19 = load i16, ptr %c, align 2
  %vecinit17 = insertelement <32 x i16> %vecinit16, i16 %19, i32 17
  %20 = load i16, ptr %c, align 2
  %vecinit18 = insertelement <32 x i16> %vecinit17, i16 %20, i32 18
  %21 = load i16, ptr %c, align 2
  %vecinit19 = insertelement <32 x i16> %vecinit18, i16 %21, i32 19
  %22 = load i16, ptr %c, align 2
  %vecinit20 = insertelement <32 x i16> %vecinit19, i16 %22, i32 20
  %23 = load i16, ptr %c, align 2
  %vecinit21 = insertelement <32 x i16> %vecinit20, i16 %23, i32 21
  %24 = load i16, ptr %c, align 2
  %vecinit22 = insertelement <32 x i16> %vecinit21, i16 %24, i32 22
  %25 = load i16, ptr %c, align 2
  %vecinit23 = insertelement <32 x i16> %vecinit22, i16 %25, i32 23
  %26 = load i16, ptr %c, align 2
  %vecinit24 = insertelement <32 x i16> %vecinit23, i16 %26, i32 24
  %27 = load i16, ptr %c, align 2
  %vecinit25 = insertelement <32 x i16> %vecinit24, i16 %27, i32 25
  %28 = load i16, ptr %c, align 2
  %vecinit26 = insertelement <32 x i16> %vecinit25, i16 %28, i32 26
  %29 = load i16, ptr %c, align 2
  %vecinit27 = insertelement <32 x i16> %vecinit26, i16 %29, i32 27
  %30 = load i16, ptr %c, align 2
  %vecinit28 = insertelement <32 x i16> %vecinit27, i16 %30, i32 28
  %31 = load i16, ptr %c, align 2
  %vecinit29 = insertelement <32 x i16> %vecinit28, i16 %31, i32 29
  %32 = load i16, ptr %c, align 2
  %vecinit30 = insertelement <32 x i16> %vecinit29, i16 %32, i32 30
  %33 = load i16, ptr %c, align 2
  %vecinit31 = insertelement <32 x i16> %vecinit30, i16 %33, i32 31
  store <32 x i16> %vecinit31, ptr %v, align 16
  %34 = load <32 x i16>, ptr %v, align 16
  store <32 x i16> %34, ptr %agg.result, align 16
  %35 = load <32 x i16>, ptr %agg.result, align 16
  store <32 x i16> %35, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3short32() #0 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <32 x i16>, align 16
  %tmp = alloca <32 x i16>, align 16
  %b = alloca <32 x i16>, align 16
  %tmp3 = alloca <32 x i16>, align 16
  store i16 17, ptr %c, align 2
  %0 = load i16, ptr %c, align 2
  call void @test1short32(ptr dead_on_unwind writable sret(<32 x i16>) align 16 %tmp, i16 noundef signext %0)
  %1 = load <32 x i16>, ptr %tmp, align 16
  store <32 x i16> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <32 x i16>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <32 x i16> %3, i32 %4
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  call void @test2short32(ptr dead_on_unwind writable sret(<32 x i16>) align 16 %tmp3, ptr noundef %c)
  %6 = load <32 x i16>, ptr %tmp3, align 16
  store <32 x i16> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %7, 32
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %8 = load <32 x i16>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext8 = extractelement <32 x i16> %8, i32 %9
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %10 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !21

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1short16(ptr dead_on_unwind noalias writable sret(<16 x i16>) align 16 %agg.result, i16 noundef signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <16 x i16>, align 16
  store i16 %c, ptr %c.addr, align 2
  %0 = load i16, ptr %c.addr, align 2
  %vecinit = insertelement <16 x i16> poison, i16 %0, i32 0
  %1 = load i16, ptr %c.addr, align 2
  %vecinit1 = insertelement <16 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, ptr %c.addr, align 2
  %vecinit2 = insertelement <16 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, ptr %c.addr, align 2
  %vecinit3 = insertelement <16 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, ptr %c.addr, align 2
  %vecinit4 = insertelement <16 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, ptr %c.addr, align 2
  %vecinit5 = insertelement <16 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, ptr %c.addr, align 2
  %vecinit6 = insertelement <16 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, ptr %c.addr, align 2
  %vecinit7 = insertelement <16 x i16> %vecinit6, i16 %7, i32 7
  %8 = load i16, ptr %c.addr, align 2
  %vecinit8 = insertelement <16 x i16> %vecinit7, i16 %8, i32 8
  %9 = load i16, ptr %c.addr, align 2
  %vecinit9 = insertelement <16 x i16> %vecinit8, i16 %9, i32 9
  %10 = load i16, ptr %c.addr, align 2
  %vecinit10 = insertelement <16 x i16> %vecinit9, i16 %10, i32 10
  %11 = load i16, ptr %c.addr, align 2
  %vecinit11 = insertelement <16 x i16> %vecinit10, i16 %11, i32 11
  %12 = load i16, ptr %c.addr, align 2
  %vecinit12 = insertelement <16 x i16> %vecinit11, i16 %12, i32 12
  %13 = load i16, ptr %c.addr, align 2
  %vecinit13 = insertelement <16 x i16> %vecinit12, i16 %13, i32 13
  %14 = load i16, ptr %c.addr, align 2
  %vecinit14 = insertelement <16 x i16> %vecinit13, i16 %14, i32 14
  %15 = load i16, ptr %c.addr, align 2
  %vecinit15 = insertelement <16 x i16> %vecinit14, i16 %15, i32 15
  store <16 x i16> %vecinit15, ptr %v, align 16
  %16 = load <16 x i16>, ptr %v, align 16
  store <16 x i16> %16, ptr %agg.result, align 16
  %17 = load <16 x i16>, ptr %agg.result, align 16
  store <16 x i16> %17, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2short16(ptr dead_on_unwind noalias writable sret(<16 x i16>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i16, align 2
  %v = alloca <16 x i16>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i16, ptr %0, align 2
  store i16 %1, ptr %c, align 2
  %2 = load i16, ptr %c, align 2
  %vecinit = insertelement <16 x i16> poison, i16 %2, i32 0
  %3 = load i16, ptr %c, align 2
  %vecinit1 = insertelement <16 x i16> %vecinit, i16 %3, i32 1
  %4 = load i16, ptr %c, align 2
  %vecinit2 = insertelement <16 x i16> %vecinit1, i16 %4, i32 2
  %5 = load i16, ptr %c, align 2
  %vecinit3 = insertelement <16 x i16> %vecinit2, i16 %5, i32 3
  %6 = load i16, ptr %c, align 2
  %vecinit4 = insertelement <16 x i16> %vecinit3, i16 %6, i32 4
  %7 = load i16, ptr %c, align 2
  %vecinit5 = insertelement <16 x i16> %vecinit4, i16 %7, i32 5
  %8 = load i16, ptr %c, align 2
  %vecinit6 = insertelement <16 x i16> %vecinit5, i16 %8, i32 6
  %9 = load i16, ptr %c, align 2
  %vecinit7 = insertelement <16 x i16> %vecinit6, i16 %9, i32 7
  %10 = load i16, ptr %c, align 2
  %vecinit8 = insertelement <16 x i16> %vecinit7, i16 %10, i32 8
  %11 = load i16, ptr %c, align 2
  %vecinit9 = insertelement <16 x i16> %vecinit8, i16 %11, i32 9
  %12 = load i16, ptr %c, align 2
  %vecinit10 = insertelement <16 x i16> %vecinit9, i16 %12, i32 10
  %13 = load i16, ptr %c, align 2
  %vecinit11 = insertelement <16 x i16> %vecinit10, i16 %13, i32 11
  %14 = load i16, ptr %c, align 2
  %vecinit12 = insertelement <16 x i16> %vecinit11, i16 %14, i32 12
  %15 = load i16, ptr %c, align 2
  %vecinit13 = insertelement <16 x i16> %vecinit12, i16 %15, i32 13
  %16 = load i16, ptr %c, align 2
  %vecinit14 = insertelement <16 x i16> %vecinit13, i16 %16, i32 14
  %17 = load i16, ptr %c, align 2
  %vecinit15 = insertelement <16 x i16> %vecinit14, i16 %17, i32 15
  store <16 x i16> %vecinit15, ptr %v, align 16
  %18 = load <16 x i16>, ptr %v, align 16
  store <16 x i16> %18, ptr %agg.result, align 16
  %19 = load <16 x i16>, ptr %agg.result, align 16
  store <16 x i16> %19, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3short16() #0 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <16 x i16>, align 16
  %tmp = alloca <16 x i16>, align 16
  %b = alloca <16 x i16>, align 16
  %tmp3 = alloca <16 x i16>, align 16
  store i16 17, ptr %c, align 2
  %0 = load i16, ptr %c, align 2
  call void @test1short16(ptr dead_on_unwind writable sret(<16 x i16>) align 16 %tmp, i16 noundef signext %0)
  %1 = load <16 x i16>, ptr %tmp, align 16
  store <16 x i16> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <16 x i16>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <16 x i16> %3, i32 %4
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @test2short16(ptr dead_on_unwind writable sret(<16 x i16>) align 16 %tmp3, ptr noundef %c)
  %6 = load <16 x i16>, ptr %tmp3, align 16
  store <16 x i16> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %7, 16
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %8 = load <16 x i16>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext8 = extractelement <16 x i16> %8, i32 %9
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %10 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !23

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <8 x i16> @test1short8(i16 noundef signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <8 x i16>, align 16
  store i16 %c, ptr %c.addr, align 2
  %0 = load i16, ptr %c.addr, align 2
  %vecinit = insertelement <8 x i16> poison, i16 %0, i32 0
  %1 = load i16, ptr %c.addr, align 2
  %vecinit1 = insertelement <8 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, ptr %c.addr, align 2
  %vecinit2 = insertelement <8 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, ptr %c.addr, align 2
  %vecinit3 = insertelement <8 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, ptr %c.addr, align 2
  %vecinit4 = insertelement <8 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, ptr %c.addr, align 2
  %vecinit5 = insertelement <8 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, ptr %c.addr, align 2
  %vecinit6 = insertelement <8 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, ptr %c.addr, align 2
  %vecinit7 = insertelement <8 x i16> %vecinit6, i16 %7, i32 7
  store <8 x i16> %vecinit7, ptr %v, align 16
  %8 = load <8 x i16>, ptr %v, align 16
  ret <8 x i16> %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <8 x i16> @test2short8(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i16, align 2
  %v = alloca <8 x i16>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i16, ptr %0, align 2
  store i16 %1, ptr %c, align 2
  %2 = load i16, ptr %c, align 2
  %vecinit = insertelement <8 x i16> poison, i16 %2, i32 0
  %3 = load i16, ptr %c, align 2
  %vecinit1 = insertelement <8 x i16> %vecinit, i16 %3, i32 1
  %4 = load i16, ptr %c, align 2
  %vecinit2 = insertelement <8 x i16> %vecinit1, i16 %4, i32 2
  %5 = load i16, ptr %c, align 2
  %vecinit3 = insertelement <8 x i16> %vecinit2, i16 %5, i32 3
  %6 = load i16, ptr %c, align 2
  %vecinit4 = insertelement <8 x i16> %vecinit3, i16 %6, i32 4
  %7 = load i16, ptr %c, align 2
  %vecinit5 = insertelement <8 x i16> %vecinit4, i16 %7, i32 5
  %8 = load i16, ptr %c, align 2
  %vecinit6 = insertelement <8 x i16> %vecinit5, i16 %8, i32 6
  %9 = load i16, ptr %c, align 2
  %vecinit7 = insertelement <8 x i16> %vecinit6, i16 %9, i32 7
  store <8 x i16> %vecinit7, ptr %v, align 16
  %10 = load <8 x i16>, ptr %v, align 16
  ret <8 x i16> %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3short8() #0 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <8 x i16>, align 16
  %b = alloca <8 x i16>, align 16
  store i16 17, ptr %c, align 2
  %0 = load i16, ptr %c, align 2
  %call = call <8 x i16> @test1short8(i16 noundef signext %0)
  store <8 x i16> %call, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <8 x i16>, ptr %a, align 16
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <8 x i16> %2, i32 %3
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %call3 = call <8 x i16> @test2short8(ptr noundef %c)
  store <8 x i16> %call3, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 8
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <8 x i16>, ptr %a, align 16
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <8 x i16> %6, i32 %7
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !25

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <4 x i16> @test1short4(i16 noundef signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <4 x i16>, align 8
  store i16 %c, ptr %c.addr, align 2
  %0 = load i16, ptr %c.addr, align 2
  %vecinit = insertelement <4 x i16> poison, i16 %0, i32 0
  %1 = load i16, ptr %c.addr, align 2
  %vecinit1 = insertelement <4 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, ptr %c.addr, align 2
  %vecinit2 = insertelement <4 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, ptr %c.addr, align 2
  %vecinit3 = insertelement <4 x i16> %vecinit2, i16 %3, i32 3
  store <4 x i16> %vecinit3, ptr %v, align 8
  %4 = load <4 x i16>, ptr %v, align 8
  ret <4 x i16> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <4 x i16> @test2short4(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i16, align 2
  %v = alloca <4 x i16>, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i16, ptr %0, align 2
  store i16 %1, ptr %c, align 2
  %2 = load i16, ptr %c, align 2
  %vecinit = insertelement <4 x i16> poison, i16 %2, i32 0
  %3 = load i16, ptr %c, align 2
  %vecinit1 = insertelement <4 x i16> %vecinit, i16 %3, i32 1
  %4 = load i16, ptr %c, align 2
  %vecinit2 = insertelement <4 x i16> %vecinit1, i16 %4, i32 2
  %5 = load i16, ptr %c, align 2
  %vecinit3 = insertelement <4 x i16> %vecinit2, i16 %5, i32 3
  store <4 x i16> %vecinit3, ptr %v, align 8
  %6 = load <4 x i16>, ptr %v, align 8
  ret <4 x i16> %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3short4() #0 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  store i16 17, ptr %c, align 2
  %0 = load i16, ptr %c, align 2
  %call = call <4 x i16> @test1short4(i16 noundef signext %0)
  store <4 x i16> %call, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <4 x i16>, ptr %a, align 8
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <4 x i16> %2, i32 %3
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %call3 = call <4 x i16> @test2short4(ptr noundef %c)
  store <4 x i16> %call3, ptr %b, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 4
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <4 x i16>, ptr %a, align 8
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <4 x i16> %6, i32 %7
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !27

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x i16> @test1short2(i16 noundef signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <2 x i16>, align 4
  store i16 %c, ptr %c.addr, align 2
  %0 = load i16, ptr %c.addr, align 2
  %vecinit = insertelement <2 x i16> poison, i16 %0, i32 0
  %1 = load i16, ptr %c.addr, align 2
  %vecinit1 = insertelement <2 x i16> %vecinit, i16 %1, i32 1
  store <2 x i16> %vecinit1, ptr %v, align 4
  %2 = load <2 x i16>, ptr %v, align 4
  ret <2 x i16> %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x i16> @test2short2(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i16, align 2
  %v = alloca <2 x i16>, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i16, ptr %0, align 2
  store i16 %1, ptr %c, align 2
  %2 = load i16, ptr %c, align 2
  %vecinit = insertelement <2 x i16> poison, i16 %2, i32 0
  %3 = load i16, ptr %c, align 2
  %vecinit1 = insertelement <2 x i16> %vecinit, i16 %3, i32 1
  store <2 x i16> %vecinit1, ptr %v, align 4
  %4 = load <2 x i16>, ptr %v, align 4
  ret <2 x i16> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3short2() #0 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <2 x i16>, align 4
  %b = alloca <2 x i16>, align 4
  store i16 17, ptr %c, align 2
  %0 = load i16, ptr %c, align 2
  %call = call <2 x i16> @test1short2(i16 noundef signext %0)
  store <2 x i16> %call, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <2 x i16>, ptr %a, align 4
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <2 x i16> %2, i32 %3
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %call3 = call <2 x i16> @test2short2(ptr noundef %c)
  store <2 x i16> %call3, ptr %b, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 2
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <2 x i16>, ptr %a, align 4
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <2 x i16> %6, i32 %7
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !29

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x i16> @test1short1(i16 noundef signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  %v = alloca <1 x i16>, align 2
  store i16 %c, ptr %c.addr, align 2
  %0 = load i16, ptr %c.addr, align 2
  %vecinit = insertelement <1 x i16> poison, i16 %0, i32 0
  store <1 x i16> %vecinit, ptr %v, align 2
  %1 = load <1 x i16>, ptr %v, align 2
  ret <1 x i16> %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x i16> @test2short1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i16, align 2
  %v = alloca <1 x i16>, align 2
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i16, ptr %0, align 2
  store i16 %1, ptr %c, align 2
  %2 = load i16, ptr %c, align 2
  %vecinit = insertelement <1 x i16> poison, i16 %2, i32 0
  store <1 x i16> %vecinit, ptr %v, align 2
  %3 = load <1 x i16>, ptr %v, align 2
  ret <1 x i16> %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3short1() #0 {
entry:
  %c = alloca i16, align 2
  %i = alloca i32, align 4
  %a = alloca <1 x i16>, align 2
  %b = alloca <1 x i16>, align 2
  store i16 17, ptr %c, align 2
  %0 = load i16, ptr %c, align 2
  %call = call <1 x i16> @test1short1(i16 noundef signext %0)
  store <1 x i16> %call, ptr %a, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <1 x i16>, ptr %a, align 2
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <1 x i16> %2, i32 %3
  %conv = sext i16 %vecext to i32
  %cmp1 = icmp ne i32 %conv, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %call3 = call <1 x i16> @test2short1(ptr noundef %c)
  store <1 x i16> %call3, ptr %b, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 1
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load <1 x i16>, ptr %a, align 2
  %7 = load i32, ptr %i, align 4
  %vecext8 = extractelement <1 x i16> %6, i32 %7
  %conv9 = sext i16 %vecext8 to i32
  %cmp10 = icmp ne i32 %conv9, 17
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.body7
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !31

for.end16:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1int16(ptr dead_on_unwind noalias writable sret(<16 x i32>) align 16 %agg.result, i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %v = alloca <16 x i32>, align 16
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %vecinit = insertelement <16 x i32> poison, i32 %0, i32 0
  %1 = load i32, ptr %c.addr, align 4
  %vecinit1 = insertelement <16 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %c.addr, align 4
  %vecinit2 = insertelement <16 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %c.addr, align 4
  %vecinit3 = insertelement <16 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, ptr %c.addr, align 4
  %vecinit4 = insertelement <16 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, ptr %c.addr, align 4
  %vecinit5 = insertelement <16 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, ptr %c.addr, align 4
  %vecinit6 = insertelement <16 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, ptr %c.addr, align 4
  %vecinit7 = insertelement <16 x i32> %vecinit6, i32 %7, i32 7
  %8 = load i32, ptr %c.addr, align 4
  %vecinit8 = insertelement <16 x i32> %vecinit7, i32 %8, i32 8
  %9 = load i32, ptr %c.addr, align 4
  %vecinit9 = insertelement <16 x i32> %vecinit8, i32 %9, i32 9
  %10 = load i32, ptr %c.addr, align 4
  %vecinit10 = insertelement <16 x i32> %vecinit9, i32 %10, i32 10
  %11 = load i32, ptr %c.addr, align 4
  %vecinit11 = insertelement <16 x i32> %vecinit10, i32 %11, i32 11
  %12 = load i32, ptr %c.addr, align 4
  %vecinit12 = insertelement <16 x i32> %vecinit11, i32 %12, i32 12
  %13 = load i32, ptr %c.addr, align 4
  %vecinit13 = insertelement <16 x i32> %vecinit12, i32 %13, i32 13
  %14 = load i32, ptr %c.addr, align 4
  %vecinit14 = insertelement <16 x i32> %vecinit13, i32 %14, i32 14
  %15 = load i32, ptr %c.addr, align 4
  %vecinit15 = insertelement <16 x i32> %vecinit14, i32 %15, i32 15
  store <16 x i32> %vecinit15, ptr %v, align 16
  %16 = load <16 x i32>, ptr %v, align 16
  store <16 x i32> %16, ptr %agg.result, align 16
  %17 = load <16 x i32>, ptr %agg.result, align 16
  store <16 x i32> %17, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2int16(ptr dead_on_unwind noalias writable sret(<16 x i32>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %v = alloca <16 x i32>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %vecinit = insertelement <16 x i32> poison, i32 %2, i32 0
  %3 = load i32, ptr %c, align 4
  %vecinit1 = insertelement <16 x i32> %vecinit, i32 %3, i32 1
  %4 = load i32, ptr %c, align 4
  %vecinit2 = insertelement <16 x i32> %vecinit1, i32 %4, i32 2
  %5 = load i32, ptr %c, align 4
  %vecinit3 = insertelement <16 x i32> %vecinit2, i32 %5, i32 3
  %6 = load i32, ptr %c, align 4
  %vecinit4 = insertelement <16 x i32> %vecinit3, i32 %6, i32 4
  %7 = load i32, ptr %c, align 4
  %vecinit5 = insertelement <16 x i32> %vecinit4, i32 %7, i32 5
  %8 = load i32, ptr %c, align 4
  %vecinit6 = insertelement <16 x i32> %vecinit5, i32 %8, i32 6
  %9 = load i32, ptr %c, align 4
  %vecinit7 = insertelement <16 x i32> %vecinit6, i32 %9, i32 7
  %10 = load i32, ptr %c, align 4
  %vecinit8 = insertelement <16 x i32> %vecinit7, i32 %10, i32 8
  %11 = load i32, ptr %c, align 4
  %vecinit9 = insertelement <16 x i32> %vecinit8, i32 %11, i32 9
  %12 = load i32, ptr %c, align 4
  %vecinit10 = insertelement <16 x i32> %vecinit9, i32 %12, i32 10
  %13 = load i32, ptr %c, align 4
  %vecinit11 = insertelement <16 x i32> %vecinit10, i32 %13, i32 11
  %14 = load i32, ptr %c, align 4
  %vecinit12 = insertelement <16 x i32> %vecinit11, i32 %14, i32 12
  %15 = load i32, ptr %c, align 4
  %vecinit13 = insertelement <16 x i32> %vecinit12, i32 %15, i32 13
  %16 = load i32, ptr %c, align 4
  %vecinit14 = insertelement <16 x i32> %vecinit13, i32 %16, i32 14
  %17 = load i32, ptr %c, align 4
  %vecinit15 = insertelement <16 x i32> %vecinit14, i32 %17, i32 15
  store <16 x i32> %vecinit15, ptr %v, align 16
  %18 = load <16 x i32>, ptr %v, align 16
  store <16 x i32> %18, ptr %agg.result, align 16
  %19 = load <16 x i32>, ptr %agg.result, align 16
  store <16 x i32> %19, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3int16() #0 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <16 x i32>, align 16
  %tmp = alloca <16 x i32>, align 16
  %b = alloca <16 x i32>, align 16
  %tmp2 = alloca <16 x i32>, align 16
  store i32 17, ptr %c, align 4
  %0 = load i32, ptr %c, align 4
  call void @test1int16(ptr dead_on_unwind writable sret(<16 x i32>) align 16 %tmp, i32 noundef %0)
  %1 = load <16 x i32>, ptr %tmp, align 16
  store <16 x i32> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <16 x i32>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <16 x i32> %3, i32 %4
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  call void @test2int16(ptr dead_on_unwind writable sret(<16 x i32>) align 16 %tmp2, ptr noundef %c)
  %6 = load <16 x i32>, ptr %tmp2, align 16
  store <16 x i32> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 16
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %8 = load <16 x i32>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext6 = extractelement <16 x i32> %8, i32 %9
  %cmp7 = icmp ne i32 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !33

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1int8(ptr dead_on_unwind noalias writable sret(<8 x i32>) align 16 %agg.result, i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %v = alloca <8 x i32>, align 16
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %vecinit = insertelement <8 x i32> poison, i32 %0, i32 0
  %1 = load i32, ptr %c.addr, align 4
  %vecinit1 = insertelement <8 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %c.addr, align 4
  %vecinit2 = insertelement <8 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %c.addr, align 4
  %vecinit3 = insertelement <8 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, ptr %c.addr, align 4
  %vecinit4 = insertelement <8 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, ptr %c.addr, align 4
  %vecinit5 = insertelement <8 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, ptr %c.addr, align 4
  %vecinit6 = insertelement <8 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, ptr %c.addr, align 4
  %vecinit7 = insertelement <8 x i32> %vecinit6, i32 %7, i32 7
  store <8 x i32> %vecinit7, ptr %v, align 16
  %8 = load <8 x i32>, ptr %v, align 16
  store <8 x i32> %8, ptr %agg.result, align 16
  %9 = load <8 x i32>, ptr %agg.result, align 16
  store <8 x i32> %9, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2int8(ptr dead_on_unwind noalias writable sret(<8 x i32>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %v = alloca <8 x i32>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %vecinit = insertelement <8 x i32> poison, i32 %2, i32 0
  %3 = load i32, ptr %c, align 4
  %vecinit1 = insertelement <8 x i32> %vecinit, i32 %3, i32 1
  %4 = load i32, ptr %c, align 4
  %vecinit2 = insertelement <8 x i32> %vecinit1, i32 %4, i32 2
  %5 = load i32, ptr %c, align 4
  %vecinit3 = insertelement <8 x i32> %vecinit2, i32 %5, i32 3
  %6 = load i32, ptr %c, align 4
  %vecinit4 = insertelement <8 x i32> %vecinit3, i32 %6, i32 4
  %7 = load i32, ptr %c, align 4
  %vecinit5 = insertelement <8 x i32> %vecinit4, i32 %7, i32 5
  %8 = load i32, ptr %c, align 4
  %vecinit6 = insertelement <8 x i32> %vecinit5, i32 %8, i32 6
  %9 = load i32, ptr %c, align 4
  %vecinit7 = insertelement <8 x i32> %vecinit6, i32 %9, i32 7
  store <8 x i32> %vecinit7, ptr %v, align 16
  %10 = load <8 x i32>, ptr %v, align 16
  store <8 x i32> %10, ptr %agg.result, align 16
  %11 = load <8 x i32>, ptr %agg.result, align 16
  store <8 x i32> %11, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3int8() #0 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <8 x i32>, align 16
  %tmp = alloca <8 x i32>, align 16
  %b = alloca <8 x i32>, align 16
  %tmp2 = alloca <8 x i32>, align 16
  store i32 17, ptr %c, align 4
  %0 = load i32, ptr %c, align 4
  call void @test1int8(ptr dead_on_unwind writable sret(<8 x i32>) align 16 %tmp, i32 noundef %0)
  %1 = load <8 x i32>, ptr %tmp, align 16
  store <8 x i32> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <8 x i32>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <8 x i32> %3, i32 %4
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  call void @test2int8(ptr dead_on_unwind writable sret(<8 x i32>) align 16 %tmp2, ptr noundef %c)
  %6 = load <8 x i32>, ptr %tmp2, align 16
  store <8 x i32> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 8
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %8 = load <8 x i32>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext6 = extractelement <8 x i32> %8, i32 %9
  %cmp7 = icmp ne i32 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !35

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <4 x i32> @test1int4(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %v = alloca <4 x i32>, align 16
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %vecinit = insertelement <4 x i32> poison, i32 %0, i32 0
  %1 = load i32, ptr %c.addr, align 4
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %c.addr, align 4
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %c.addr, align 4
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %3, i32 3
  store <4 x i32> %vecinit3, ptr %v, align 16
  %4 = load <4 x i32>, ptr %v, align 16
  ret <4 x i32> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <4 x i32> @test2int4(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %v = alloca <4 x i32>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %vecinit = insertelement <4 x i32> poison, i32 %2, i32 0
  %3 = load i32, ptr %c, align 4
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %3, i32 1
  %4 = load i32, ptr %c, align 4
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %4, i32 2
  %5 = load i32, ptr %c, align 4
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %5, i32 3
  store <4 x i32> %vecinit3, ptr %v, align 16
  %6 = load <4 x i32>, ptr %v, align 16
  ret <4 x i32> %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3int4() #0 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <4 x i32>, align 16
  %b = alloca <4 x i32>, align 16
  store i32 17, ptr %c, align 4
  %0 = load i32, ptr %c, align 4
  %call = call <4 x i32> @test1int4(i32 noundef %0)
  store <4 x i32> %call, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <4 x i32>, ptr %a, align 16
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <4 x i32> %2, i32 %3
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %call2 = call <4 x i32> @test2int4(ptr noundef %c)
  store <4 x i32> %call2, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 4
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <4 x i32>, ptr %a, align 16
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <4 x i32> %6, i32 %7
  %cmp7 = icmp ne i32 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !37

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x i32> @test1int2(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %v = alloca <2 x i32>, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %vecinit = insertelement <2 x i32> poison, i32 %0, i32 0
  %1 = load i32, ptr %c.addr, align 4
  %vecinit1 = insertelement <2 x i32> %vecinit, i32 %1, i32 1
  store <2 x i32> %vecinit1, ptr %v, align 8
  %2 = load <2 x i32>, ptr %v, align 8
  ret <2 x i32> %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x i32> @test2int2(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %v = alloca <2 x i32>, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %vecinit = insertelement <2 x i32> poison, i32 %2, i32 0
  %3 = load i32, ptr %c, align 4
  %vecinit1 = insertelement <2 x i32> %vecinit, i32 %3, i32 1
  store <2 x i32> %vecinit1, ptr %v, align 8
  %4 = load <2 x i32>, ptr %v, align 8
  ret <2 x i32> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3int2() #0 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  store i32 17, ptr %c, align 4
  %0 = load i32, ptr %c, align 4
  %call = call <2 x i32> @test1int2(i32 noundef %0)
  store <2 x i32> %call, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <2 x i32>, ptr %a, align 8
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <2 x i32> %2, i32 %3
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %call2 = call <2 x i32> @test2int2(ptr noundef %c)
  store <2 x i32> %call2, ptr %b, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 2
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <2 x i32>, ptr %a, align 8
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <2 x i32> %6, i32 %7
  %cmp7 = icmp ne i32 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !39

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x i32> @test1int1(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %v = alloca <1 x i32>, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %vecinit = insertelement <1 x i32> poison, i32 %0, i32 0
  store <1 x i32> %vecinit, ptr %v, align 4
  %1 = load <1 x i32>, ptr %v, align 4
  ret <1 x i32> %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x i32> @test2int1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %v = alloca <1 x i32>, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %vecinit = insertelement <1 x i32> poison, i32 %2, i32 0
  store <1 x i32> %vecinit, ptr %v, align 4
  %3 = load <1 x i32>, ptr %v, align 4
  ret <1 x i32> %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3int1() #0 {
entry:
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca <1 x i32>, align 4
  %b = alloca <1 x i32>, align 4
  store i32 17, ptr %c, align 4
  %0 = load i32, ptr %c, align 4
  %call = call <1 x i32> @test1int1(i32 noundef %0)
  store <1 x i32> %call, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <1 x i32>, ptr %a, align 4
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <1 x i32> %2, i32 %3
  %cmp1 = icmp ne i32 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %call2 = call <1 x i32> @test2int1(ptr noundef %c)
  store <1 x i32> %call2, ptr %b, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 1
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <1 x i32>, ptr %a, align 4
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <1 x i32> %6, i32 %7
  %cmp7 = icmp ne i32 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !41

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1float16(ptr dead_on_unwind noalias writable sret(<16 x float>) align 16 %agg.result, float noundef %c) #0 {
entry:
  %c.addr = alloca float, align 4
  %v = alloca <16 x float>, align 16
  store float %c, ptr %c.addr, align 4
  %0 = load float, ptr %c.addr, align 4
  %vecinit = insertelement <16 x float> poison, float %0, i32 0
  %1 = load float, ptr %c.addr, align 4
  %vecinit1 = insertelement <16 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %c.addr, align 4
  %vecinit2 = insertelement <16 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %c.addr, align 4
  %vecinit3 = insertelement <16 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %c.addr, align 4
  %vecinit4 = insertelement <16 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %c.addr, align 4
  %vecinit5 = insertelement <16 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %c.addr, align 4
  %vecinit6 = insertelement <16 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %c.addr, align 4
  %vecinit7 = insertelement <16 x float> %vecinit6, float %7, i32 7
  %8 = load float, ptr %c.addr, align 4
  %vecinit8 = insertelement <16 x float> %vecinit7, float %8, i32 8
  %9 = load float, ptr %c.addr, align 4
  %vecinit9 = insertelement <16 x float> %vecinit8, float %9, i32 9
  %10 = load float, ptr %c.addr, align 4
  %vecinit10 = insertelement <16 x float> %vecinit9, float %10, i32 10
  %11 = load float, ptr %c.addr, align 4
  %vecinit11 = insertelement <16 x float> %vecinit10, float %11, i32 11
  %12 = load float, ptr %c.addr, align 4
  %vecinit12 = insertelement <16 x float> %vecinit11, float %12, i32 12
  %13 = load float, ptr %c.addr, align 4
  %vecinit13 = insertelement <16 x float> %vecinit12, float %13, i32 13
  %14 = load float, ptr %c.addr, align 4
  %vecinit14 = insertelement <16 x float> %vecinit13, float %14, i32 14
  %15 = load float, ptr %c.addr, align 4
  %vecinit15 = insertelement <16 x float> %vecinit14, float %15, i32 15
  store <16 x float> %vecinit15, ptr %v, align 16
  %16 = load <16 x float>, ptr %v, align 16
  store <16 x float> %16, ptr %agg.result, align 16
  %17 = load <16 x float>, ptr %agg.result, align 16
  store <16 x float> %17, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2float16(ptr dead_on_unwind noalias writable sret(<16 x float>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca float, align 4
  %v = alloca <16 x float>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load float, ptr %0, align 4
  store float %1, ptr %c, align 4
  %2 = load float, ptr %c, align 4
  %vecinit = insertelement <16 x float> poison, float %2, i32 0
  %3 = load float, ptr %c, align 4
  %vecinit1 = insertelement <16 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %c, align 4
  %vecinit2 = insertelement <16 x float> %vecinit1, float %4, i32 2
  %5 = load float, ptr %c, align 4
  %vecinit3 = insertelement <16 x float> %vecinit2, float %5, i32 3
  %6 = load float, ptr %c, align 4
  %vecinit4 = insertelement <16 x float> %vecinit3, float %6, i32 4
  %7 = load float, ptr %c, align 4
  %vecinit5 = insertelement <16 x float> %vecinit4, float %7, i32 5
  %8 = load float, ptr %c, align 4
  %vecinit6 = insertelement <16 x float> %vecinit5, float %8, i32 6
  %9 = load float, ptr %c, align 4
  %vecinit7 = insertelement <16 x float> %vecinit6, float %9, i32 7
  %10 = load float, ptr %c, align 4
  %vecinit8 = insertelement <16 x float> %vecinit7, float %10, i32 8
  %11 = load float, ptr %c, align 4
  %vecinit9 = insertelement <16 x float> %vecinit8, float %11, i32 9
  %12 = load float, ptr %c, align 4
  %vecinit10 = insertelement <16 x float> %vecinit9, float %12, i32 10
  %13 = load float, ptr %c, align 4
  %vecinit11 = insertelement <16 x float> %vecinit10, float %13, i32 11
  %14 = load float, ptr %c, align 4
  %vecinit12 = insertelement <16 x float> %vecinit11, float %14, i32 12
  %15 = load float, ptr %c, align 4
  %vecinit13 = insertelement <16 x float> %vecinit12, float %15, i32 13
  %16 = load float, ptr %c, align 4
  %vecinit14 = insertelement <16 x float> %vecinit13, float %16, i32 14
  %17 = load float, ptr %c, align 4
  %vecinit15 = insertelement <16 x float> %vecinit14, float %17, i32 15
  store <16 x float> %vecinit15, ptr %v, align 16
  %18 = load <16 x float>, ptr %v, align 16
  store <16 x float> %18, ptr %agg.result, align 16
  %19 = load <16 x float>, ptr %agg.result, align 16
  store <16 x float> %19, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3float16() #0 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <16 x float>, align 16
  %tmp = alloca <16 x float>, align 16
  %b = alloca <16 x float>, align 16
  %tmp2 = alloca <16 x float>, align 16
  store float 1.700000e+01, ptr %c, align 4
  %0 = load float, ptr %c, align 4
  call void @test1float16(ptr dead_on_unwind writable sret(<16 x float>) align 16 %tmp, float noundef %0)
  %1 = load <16 x float>, ptr %tmp, align 16
  store <16 x float> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <16 x float>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <16 x float> %3, i32 %4
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  call void @test2float16(ptr dead_on_unwind writable sret(<16 x float>) align 16 %tmp2, ptr noundef %c)
  %6 = load <16 x float>, ptr %tmp2, align 16
  store <16 x float> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 16
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %8 = load <16 x float>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext6 = extractelement <16 x float> %8, i32 %9
  %cmp7 = fcmp une float %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !43

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1float8(ptr dead_on_unwind noalias writable sret(<8 x float>) align 16 %agg.result, float noundef %c) #0 {
entry:
  %c.addr = alloca float, align 4
  %v = alloca <8 x float>, align 16
  store float %c, ptr %c.addr, align 4
  %0 = load float, ptr %c.addr, align 4
  %vecinit = insertelement <8 x float> poison, float %0, i32 0
  %1 = load float, ptr %c.addr, align 4
  %vecinit1 = insertelement <8 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %c.addr, align 4
  %vecinit2 = insertelement <8 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %c.addr, align 4
  %vecinit3 = insertelement <8 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %c.addr, align 4
  %vecinit4 = insertelement <8 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %c.addr, align 4
  %vecinit5 = insertelement <8 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %c.addr, align 4
  %vecinit6 = insertelement <8 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %c.addr, align 4
  %vecinit7 = insertelement <8 x float> %vecinit6, float %7, i32 7
  store <8 x float> %vecinit7, ptr %v, align 16
  %8 = load <8 x float>, ptr %v, align 16
  store <8 x float> %8, ptr %agg.result, align 16
  %9 = load <8 x float>, ptr %agg.result, align 16
  store <8 x float> %9, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2float8(ptr dead_on_unwind noalias writable sret(<8 x float>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca float, align 4
  %v = alloca <8 x float>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load float, ptr %0, align 4
  store float %1, ptr %c, align 4
  %2 = load float, ptr %c, align 4
  %vecinit = insertelement <8 x float> poison, float %2, i32 0
  %3 = load float, ptr %c, align 4
  %vecinit1 = insertelement <8 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %c, align 4
  %vecinit2 = insertelement <8 x float> %vecinit1, float %4, i32 2
  %5 = load float, ptr %c, align 4
  %vecinit3 = insertelement <8 x float> %vecinit2, float %5, i32 3
  %6 = load float, ptr %c, align 4
  %vecinit4 = insertelement <8 x float> %vecinit3, float %6, i32 4
  %7 = load float, ptr %c, align 4
  %vecinit5 = insertelement <8 x float> %vecinit4, float %7, i32 5
  %8 = load float, ptr %c, align 4
  %vecinit6 = insertelement <8 x float> %vecinit5, float %8, i32 6
  %9 = load float, ptr %c, align 4
  %vecinit7 = insertelement <8 x float> %vecinit6, float %9, i32 7
  store <8 x float> %vecinit7, ptr %v, align 16
  %10 = load <8 x float>, ptr %v, align 16
  store <8 x float> %10, ptr %agg.result, align 16
  %11 = load <8 x float>, ptr %agg.result, align 16
  store <8 x float> %11, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3float8() #0 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <8 x float>, align 16
  %tmp = alloca <8 x float>, align 16
  %b = alloca <8 x float>, align 16
  %tmp2 = alloca <8 x float>, align 16
  store float 1.700000e+01, ptr %c, align 4
  %0 = load float, ptr %c, align 4
  call void @test1float8(ptr dead_on_unwind writable sret(<8 x float>) align 16 %tmp, float noundef %0)
  %1 = load <8 x float>, ptr %tmp, align 16
  store <8 x float> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <8 x float>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <8 x float> %3, i32 %4
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  call void @test2float8(ptr dead_on_unwind writable sret(<8 x float>) align 16 %tmp2, ptr noundef %c)
  %6 = load <8 x float>, ptr %tmp2, align 16
  store <8 x float> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 8
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %8 = load <8 x float>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext6 = extractelement <8 x float> %8, i32 %9
  %cmp7 = fcmp une float %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !45

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <4 x float> @test1float4(float noundef %c) #0 {
entry:
  %c.addr = alloca float, align 4
  %v = alloca <4 x float>, align 16
  store float %c, ptr %c.addr, align 4
  %0 = load float, ptr %c.addr, align 4
  %vecinit = insertelement <4 x float> poison, float %0, i32 0
  %1 = load float, ptr %c.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %c.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %c.addr, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, ptr %v, align 16
  %4 = load <4 x float>, ptr %v, align 16
  ret <4 x float> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <4 x float> @test2float4(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca float, align 4
  %v = alloca <4 x float>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load float, ptr %0, align 4
  store float %1, ptr %c, align 4
  %2 = load float, ptr %c, align 4
  %vecinit = insertelement <4 x float> poison, float %2, i32 0
  %3 = load float, ptr %c, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %c, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %4, i32 2
  %5 = load float, ptr %c, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %5, i32 3
  store <4 x float> %vecinit3, ptr %v, align 16
  %6 = load <4 x float>, ptr %v, align 16
  ret <4 x float> %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3float4() #0 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  store float 1.700000e+01, ptr %c, align 4
  %0 = load float, ptr %c, align 4
  %call = call <4 x float> @test1float4(float noundef %0)
  store <4 x float> %call, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <4 x float>, ptr %a, align 16
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <4 x float> %2, i32 %3
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %call2 = call <4 x float> @test2float4(ptr noundef %c)
  store <4 x float> %call2, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 4
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <4 x float>, ptr %a, align 16
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <4 x float> %6, i32 %7
  %cmp7 = fcmp une float %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !47

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x float> @test1float2(float noundef %c) #0 {
entry:
  %c.addr = alloca float, align 4
  %v = alloca <2 x float>, align 8
  store float %c, ptr %c.addr, align 4
  %0 = load float, ptr %c.addr, align 4
  %vecinit = insertelement <2 x float> poison, float %0, i32 0
  %1 = load float, ptr %c.addr, align 4
  %vecinit1 = insertelement <2 x float> %vecinit, float %1, i32 1
  store <2 x float> %vecinit1, ptr %v, align 8
  %2 = load <2 x float>, ptr %v, align 8
  ret <2 x float> %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x float> @test2float2(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca float, align 4
  %v = alloca <2 x float>, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load float, ptr %0, align 4
  store float %1, ptr %c, align 4
  %2 = load float, ptr %c, align 4
  %vecinit = insertelement <2 x float> poison, float %2, i32 0
  %3 = load float, ptr %c, align 4
  %vecinit1 = insertelement <2 x float> %vecinit, float %3, i32 1
  store <2 x float> %vecinit1, ptr %v, align 8
  %4 = load <2 x float>, ptr %v, align 8
  ret <2 x float> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3float2() #0 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <2 x float>, align 8
  %b = alloca <2 x float>, align 8
  store float 1.700000e+01, ptr %c, align 4
  %0 = load float, ptr %c, align 4
  %call = call <2 x float> @test1float2(float noundef %0)
  store <2 x float> %call, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <2 x float>, ptr %a, align 8
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <2 x float> %2, i32 %3
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %call2 = call <2 x float> @test2float2(ptr noundef %c)
  store <2 x float> %call2, ptr %b, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 2
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <2 x float>, ptr %a, align 8
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <2 x float> %6, i32 %7
  %cmp7 = fcmp une float %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !49

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x float> @test1float1(float noundef %c) #0 {
entry:
  %c.addr = alloca float, align 4
  %v = alloca <1 x float>, align 4
  store float %c, ptr %c.addr, align 4
  %0 = load float, ptr %c.addr, align 4
  %vecinit = insertelement <1 x float> poison, float %0, i32 0
  store <1 x float> %vecinit, ptr %v, align 4
  %1 = load <1 x float>, ptr %v, align 4
  ret <1 x float> %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x float> @test2float1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca float, align 4
  %v = alloca <1 x float>, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load float, ptr %0, align 4
  store float %1, ptr %c, align 4
  %2 = load float, ptr %c, align 4
  %vecinit = insertelement <1 x float> poison, float %2, i32 0
  store <1 x float> %vecinit, ptr %v, align 4
  %3 = load <1 x float>, ptr %v, align 4
  ret <1 x float> %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3float1() #0 {
entry:
  %c = alloca float, align 4
  %i = alloca i32, align 4
  %a = alloca <1 x float>, align 4
  %b = alloca <1 x float>, align 4
  store float 1.700000e+01, ptr %c, align 4
  %0 = load float, ptr %c, align 4
  %call = call <1 x float> @test1float1(float noundef %0)
  store <1 x float> %call, ptr %a, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <1 x float>, ptr %a, align 4
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <1 x float> %2, i32 %3
  %cmp1 = fcmp une float %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %call2 = call <1 x float> @test2float1(ptr noundef %c)
  store <1 x float> %call2, ptr %b, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 1
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <1 x float>, ptr %a, align 4
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <1 x float> %6, i32 %7
  %cmp7 = fcmp une float %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !51

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1llong8(ptr dead_on_unwind noalias writable sret(<8 x i64>) align 16 %agg.result, i64 noundef %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %v = alloca <8 x i64>, align 16
  store i64 %c, ptr %c.addr, align 8
  %0 = load i64, ptr %c.addr, align 8
  %vecinit = insertelement <8 x i64> poison, i64 %0, i32 0
  %1 = load i64, ptr %c.addr, align 8
  %vecinit1 = insertelement <8 x i64> %vecinit, i64 %1, i32 1
  %2 = load i64, ptr %c.addr, align 8
  %vecinit2 = insertelement <8 x i64> %vecinit1, i64 %2, i32 2
  %3 = load i64, ptr %c.addr, align 8
  %vecinit3 = insertelement <8 x i64> %vecinit2, i64 %3, i32 3
  %4 = load i64, ptr %c.addr, align 8
  %vecinit4 = insertelement <8 x i64> %vecinit3, i64 %4, i32 4
  %5 = load i64, ptr %c.addr, align 8
  %vecinit5 = insertelement <8 x i64> %vecinit4, i64 %5, i32 5
  %6 = load i64, ptr %c.addr, align 8
  %vecinit6 = insertelement <8 x i64> %vecinit5, i64 %6, i32 6
  %7 = load i64, ptr %c.addr, align 8
  %vecinit7 = insertelement <8 x i64> %vecinit6, i64 %7, i32 7
  store <8 x i64> %vecinit7, ptr %v, align 16
  %8 = load <8 x i64>, ptr %v, align 16
  store <8 x i64> %8, ptr %agg.result, align 16
  %9 = load <8 x i64>, ptr %agg.result, align 16
  store <8 x i64> %9, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2llong8(ptr dead_on_unwind noalias writable sret(<8 x i64>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i64, align 8
  %v = alloca <8 x i64>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %c, align 8
  %2 = load i64, ptr %c, align 8
  %vecinit = insertelement <8 x i64> poison, i64 %2, i32 0
  %3 = load i64, ptr %c, align 8
  %vecinit1 = insertelement <8 x i64> %vecinit, i64 %3, i32 1
  %4 = load i64, ptr %c, align 8
  %vecinit2 = insertelement <8 x i64> %vecinit1, i64 %4, i32 2
  %5 = load i64, ptr %c, align 8
  %vecinit3 = insertelement <8 x i64> %vecinit2, i64 %5, i32 3
  %6 = load i64, ptr %c, align 8
  %vecinit4 = insertelement <8 x i64> %vecinit3, i64 %6, i32 4
  %7 = load i64, ptr %c, align 8
  %vecinit5 = insertelement <8 x i64> %vecinit4, i64 %7, i32 5
  %8 = load i64, ptr %c, align 8
  %vecinit6 = insertelement <8 x i64> %vecinit5, i64 %8, i32 6
  %9 = load i64, ptr %c, align 8
  %vecinit7 = insertelement <8 x i64> %vecinit6, i64 %9, i32 7
  store <8 x i64> %vecinit7, ptr %v, align 16
  %10 = load <8 x i64>, ptr %v, align 16
  store <8 x i64> %10, ptr %agg.result, align 16
  %11 = load <8 x i64>, ptr %agg.result, align 16
  store <8 x i64> %11, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3llong8() #0 {
entry:
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca <8 x i64>, align 16
  %tmp = alloca <8 x i64>, align 16
  %b = alloca <8 x i64>, align 16
  %tmp2 = alloca <8 x i64>, align 16
  store i64 17, ptr %c, align 8
  %0 = load i64, ptr %c, align 8
  call void @test1llong8(ptr dead_on_unwind writable sret(<8 x i64>) align 16 %tmp, i64 noundef %0)
  %1 = load <8 x i64>, ptr %tmp, align 16
  store <8 x i64> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <8 x i64>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <8 x i64> %3, i32 %4
  %cmp1 = icmp ne i64 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  call void @test2llong8(ptr dead_on_unwind writable sret(<8 x i64>) align 16 %tmp2, ptr noundef %c)
  %6 = load <8 x i64>, ptr %tmp2, align 16
  store <8 x i64> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 8
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %8 = load <8 x i64>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext6 = extractelement <8 x i64> %8, i32 %9
  %cmp7 = icmp ne i64 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !53

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1llong4(ptr dead_on_unwind noalias writable sret(<4 x i64>) align 16 %agg.result, i64 noundef %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %v = alloca <4 x i64>, align 16
  store i64 %c, ptr %c.addr, align 8
  %0 = load i64, ptr %c.addr, align 8
  %vecinit = insertelement <4 x i64> poison, i64 %0, i32 0
  %1 = load i64, ptr %c.addr, align 8
  %vecinit1 = insertelement <4 x i64> %vecinit, i64 %1, i32 1
  %2 = load i64, ptr %c.addr, align 8
  %vecinit2 = insertelement <4 x i64> %vecinit1, i64 %2, i32 2
  %3 = load i64, ptr %c.addr, align 8
  %vecinit3 = insertelement <4 x i64> %vecinit2, i64 %3, i32 3
  store <4 x i64> %vecinit3, ptr %v, align 16
  %4 = load <4 x i64>, ptr %v, align 16
  store <4 x i64> %4, ptr %agg.result, align 16
  %5 = load <4 x i64>, ptr %agg.result, align 16
  store <4 x i64> %5, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2llong4(ptr dead_on_unwind noalias writable sret(<4 x i64>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i64, align 8
  %v = alloca <4 x i64>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %c, align 8
  %2 = load i64, ptr %c, align 8
  %vecinit = insertelement <4 x i64> poison, i64 %2, i32 0
  %3 = load i64, ptr %c, align 8
  %vecinit1 = insertelement <4 x i64> %vecinit, i64 %3, i32 1
  %4 = load i64, ptr %c, align 8
  %vecinit2 = insertelement <4 x i64> %vecinit1, i64 %4, i32 2
  %5 = load i64, ptr %c, align 8
  %vecinit3 = insertelement <4 x i64> %vecinit2, i64 %5, i32 3
  store <4 x i64> %vecinit3, ptr %v, align 16
  %6 = load <4 x i64>, ptr %v, align 16
  store <4 x i64> %6, ptr %agg.result, align 16
  %7 = load <4 x i64>, ptr %agg.result, align 16
  store <4 x i64> %7, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3llong4() #0 {
entry:
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca <4 x i64>, align 16
  %tmp = alloca <4 x i64>, align 16
  %b = alloca <4 x i64>, align 16
  %tmp2 = alloca <4 x i64>, align 16
  store i64 17, ptr %c, align 8
  %0 = load i64, ptr %c, align 8
  call void @test1llong4(ptr dead_on_unwind writable sret(<4 x i64>) align 16 %tmp, i64 noundef %0)
  %1 = load <4 x i64>, ptr %tmp, align 16
  store <4 x i64> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <4 x i64>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <4 x i64> %3, i32 %4
  %cmp1 = icmp ne i64 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  call void @test2llong4(ptr dead_on_unwind writable sret(<4 x i64>) align 16 %tmp2, ptr noundef %c)
  %6 = load <4 x i64>, ptr %tmp2, align 16
  store <4 x i64> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 4
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %8 = load <4 x i64>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext6 = extractelement <4 x i64> %8, i32 %9
  %cmp7 = icmp ne i64 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !55

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x i64> @test1llong2(i64 noundef %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %v = alloca <2 x i64>, align 16
  store i64 %c, ptr %c.addr, align 8
  %0 = load i64, ptr %c.addr, align 8
  %vecinit = insertelement <2 x i64> poison, i64 %0, i32 0
  %1 = load i64, ptr %c.addr, align 8
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 %1, i32 1
  store <2 x i64> %vecinit1, ptr %v, align 16
  %2 = load <2 x i64>, ptr %v, align 16
  ret <2 x i64> %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x i64> @test2llong2(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i64, align 8
  %v = alloca <2 x i64>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %c, align 8
  %2 = load i64, ptr %c, align 8
  %vecinit = insertelement <2 x i64> poison, i64 %2, i32 0
  %3 = load i64, ptr %c, align 8
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 %3, i32 1
  store <2 x i64> %vecinit1, ptr %v, align 16
  %4 = load <2 x i64>, ptr %v, align 16
  ret <2 x i64> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3llong2() #0 {
entry:
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  store i64 17, ptr %c, align 8
  %0 = load i64, ptr %c, align 8
  %call = call <2 x i64> @test1llong2(i64 noundef %0)
  store <2 x i64> %call, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <2 x i64>, ptr %a, align 16
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <2 x i64> %2, i32 %3
  %cmp1 = icmp ne i64 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  %call2 = call <2 x i64> @test2llong2(ptr noundef %c)
  store <2 x i64> %call2, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 2
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <2 x i64>, ptr %a, align 16
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <2 x i64> %6, i32 %7
  %cmp7 = icmp ne i64 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !57

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x i64> @test1llong1(i64 noundef %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %v = alloca <1 x i64>, align 8
  store i64 %c, ptr %c.addr, align 8
  %0 = load i64, ptr %c.addr, align 8
  %vecinit = insertelement <1 x i64> poison, i64 %0, i32 0
  store <1 x i64> %vecinit, ptr %v, align 8
  %1 = load <1 x i64>, ptr %v, align 8
  ret <1 x i64> %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x i64> @test2llong1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca i64, align 8
  %v = alloca <1 x i64>, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %c, align 8
  %2 = load i64, ptr %c, align 8
  %vecinit = insertelement <1 x i64> poison, i64 %2, i32 0
  store <1 x i64> %vecinit, ptr %v, align 8
  %3 = load <1 x i64>, ptr %v, align 8
  ret <1 x i64> %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3llong1() #0 {
entry:
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca <1 x i64>, align 8
  %b = alloca <1 x i64>, align 8
  store i64 17, ptr %c, align 8
  %0 = load i64, ptr %c, align 8
  %call = call <1 x i64> @test1llong1(i64 noundef %0)
  store <1 x i64> %call, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <1 x i64>, ptr %a, align 8
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <1 x i64> %2, i32 %3
  %cmp1 = icmp ne i64 %vecext, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  %call2 = call <1 x i64> @test2llong1(ptr noundef %c)
  store <1 x i64> %call2, ptr %b, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 1
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <1 x i64>, ptr %a, align 8
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <1 x i64> %6, i32 %7
  %cmp7 = icmp ne i64 %vecext6, 17
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !59

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1double8(ptr dead_on_unwind noalias writable sret(<8 x double>) align 16 %agg.result, double noundef %c) #0 {
entry:
  %c.addr = alloca double, align 8
  %v = alloca <8 x double>, align 16
  store double %c, ptr %c.addr, align 8
  %0 = load double, ptr %c.addr, align 8
  %vecinit = insertelement <8 x double> poison, double %0, i32 0
  %1 = load double, ptr %c.addr, align 8
  %vecinit1 = insertelement <8 x double> %vecinit, double %1, i32 1
  %2 = load double, ptr %c.addr, align 8
  %vecinit2 = insertelement <8 x double> %vecinit1, double %2, i32 2
  %3 = load double, ptr %c.addr, align 8
  %vecinit3 = insertelement <8 x double> %vecinit2, double %3, i32 3
  %4 = load double, ptr %c.addr, align 8
  %vecinit4 = insertelement <8 x double> %vecinit3, double %4, i32 4
  %5 = load double, ptr %c.addr, align 8
  %vecinit5 = insertelement <8 x double> %vecinit4, double %5, i32 5
  %6 = load double, ptr %c.addr, align 8
  %vecinit6 = insertelement <8 x double> %vecinit5, double %6, i32 6
  %7 = load double, ptr %c.addr, align 8
  %vecinit7 = insertelement <8 x double> %vecinit6, double %7, i32 7
  store <8 x double> %vecinit7, ptr %v, align 16
  %8 = load <8 x double>, ptr %v, align 16
  store <8 x double> %8, ptr %agg.result, align 16
  %9 = load <8 x double>, ptr %agg.result, align 16
  store <8 x double> %9, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2double8(ptr dead_on_unwind noalias writable sret(<8 x double>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca double, align 8
  %v = alloca <8 x double>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load double, ptr %0, align 8
  store double %1, ptr %c, align 8
  %2 = load double, ptr %c, align 8
  %vecinit = insertelement <8 x double> poison, double %2, i32 0
  %3 = load double, ptr %c, align 8
  %vecinit1 = insertelement <8 x double> %vecinit, double %3, i32 1
  %4 = load double, ptr %c, align 8
  %vecinit2 = insertelement <8 x double> %vecinit1, double %4, i32 2
  %5 = load double, ptr %c, align 8
  %vecinit3 = insertelement <8 x double> %vecinit2, double %5, i32 3
  %6 = load double, ptr %c, align 8
  %vecinit4 = insertelement <8 x double> %vecinit3, double %6, i32 4
  %7 = load double, ptr %c, align 8
  %vecinit5 = insertelement <8 x double> %vecinit4, double %7, i32 5
  %8 = load double, ptr %c, align 8
  %vecinit6 = insertelement <8 x double> %vecinit5, double %8, i32 6
  %9 = load double, ptr %c, align 8
  %vecinit7 = insertelement <8 x double> %vecinit6, double %9, i32 7
  store <8 x double> %vecinit7, ptr %v, align 16
  %10 = load <8 x double>, ptr %v, align 16
  store <8 x double> %10, ptr %agg.result, align 16
  %11 = load <8 x double>, ptr %agg.result, align 16
  store <8 x double> %11, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3double8() #0 {
entry:
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca <8 x double>, align 16
  %tmp = alloca <8 x double>, align 16
  %b = alloca <8 x double>, align 16
  %tmp2 = alloca <8 x double>, align 16
  store double 1.700000e+01, ptr %c, align 8
  %0 = load double, ptr %c, align 8
  call void @test1double8(ptr dead_on_unwind writable sret(<8 x double>) align 16 %tmp, double noundef %0)
  %1 = load <8 x double>, ptr %tmp, align 16
  store <8 x double> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <8 x double>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <8 x double> %3, i32 %4
  %cmp1 = fcmp une double %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  call void @test2double8(ptr dead_on_unwind writable sret(<8 x double>) align 16 %tmp2, ptr noundef %c)
  %6 = load <8 x double>, ptr %tmp2, align 16
  store <8 x double> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 8
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %8 = load <8 x double>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext6 = extractelement <8 x double> %8, i32 %9
  %cmp7 = fcmp une double %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !61

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test1double4(ptr dead_on_unwind noalias writable sret(<4 x double>) align 16 %agg.result, double noundef %c) #0 {
entry:
  %c.addr = alloca double, align 8
  %v = alloca <4 x double>, align 16
  store double %c, ptr %c.addr, align 8
  %0 = load double, ptr %c.addr, align 8
  %vecinit = insertelement <4 x double> poison, double %0, i32 0
  %1 = load double, ptr %c.addr, align 8
  %vecinit1 = insertelement <4 x double> %vecinit, double %1, i32 1
  %2 = load double, ptr %c.addr, align 8
  %vecinit2 = insertelement <4 x double> %vecinit1, double %2, i32 2
  %3 = load double, ptr %c.addr, align 8
  %vecinit3 = insertelement <4 x double> %vecinit2, double %3, i32 3
  store <4 x double> %vecinit3, ptr %v, align 16
  %4 = load <4 x double>, ptr %v, align 16
  store <4 x double> %4, ptr %agg.result, align 16
  %5 = load <4 x double>, ptr %agg.result, align 16
  store <4 x double> %5, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2double4(ptr dead_on_unwind noalias writable sret(<4 x double>) align 16 %agg.result, ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca double, align 8
  %v = alloca <4 x double>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load double, ptr %0, align 8
  store double %1, ptr %c, align 8
  %2 = load double, ptr %c, align 8
  %vecinit = insertelement <4 x double> poison, double %2, i32 0
  %3 = load double, ptr %c, align 8
  %vecinit1 = insertelement <4 x double> %vecinit, double %3, i32 1
  %4 = load double, ptr %c, align 8
  %vecinit2 = insertelement <4 x double> %vecinit1, double %4, i32 2
  %5 = load double, ptr %c, align 8
  %vecinit3 = insertelement <4 x double> %vecinit2, double %5, i32 3
  store <4 x double> %vecinit3, ptr %v, align 16
  %6 = load <4 x double>, ptr %v, align 16
  store <4 x double> %6, ptr %agg.result, align 16
  %7 = load <4 x double>, ptr %agg.result, align 16
  store <4 x double> %7, ptr %agg.result, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3double4() #0 {
entry:
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca <4 x double>, align 16
  %tmp = alloca <4 x double>, align 16
  %b = alloca <4 x double>, align 16
  %tmp2 = alloca <4 x double>, align 16
  store double 1.700000e+01, ptr %c, align 8
  %0 = load double, ptr %c, align 8
  call void @test1double4(ptr dead_on_unwind writable sret(<4 x double>) align 16 %tmp, double noundef %0)
  %1 = load <4 x double>, ptr %tmp, align 16
  store <4 x double> %1, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load <4 x double>, ptr %a, align 16
  %4 = load i32, ptr %i, align 4
  %vecext = extractelement <4 x double> %3, i32 %4
  %cmp1 = fcmp une double %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  call void @test2double4(ptr dead_on_unwind writable sret(<4 x double>) align 16 %tmp2, ptr noundef %c)
  %6 = load <4 x double>, ptr %tmp2, align 16
  store <4 x double> %6, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 4
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %8 = load <4 x double>, ptr %a, align 16
  %9 = load i32, ptr %i, align 4
  %vecext6 = extractelement <4 x double> %8, i32 %9
  %cmp7 = fcmp une double %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !63

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x double> @test1double2(double noundef %c) #0 {
entry:
  %c.addr = alloca double, align 8
  %v = alloca <2 x double>, align 16
  store double %c, ptr %c.addr, align 8
  %0 = load double, ptr %c.addr, align 8
  %vecinit = insertelement <2 x double> poison, double %0, i32 0
  %1 = load double, ptr %c.addr, align 8
  %vecinit1 = insertelement <2 x double> %vecinit, double %1, i32 1
  store <2 x double> %vecinit1, ptr %v, align 16
  %2 = load <2 x double>, ptr %v, align 16
  ret <2 x double> %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <2 x double> @test2double2(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca double, align 8
  %v = alloca <2 x double>, align 16
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load double, ptr %0, align 8
  store double %1, ptr %c, align 8
  %2 = load double, ptr %c, align 8
  %vecinit = insertelement <2 x double> poison, double %2, i32 0
  %3 = load double, ptr %c, align 8
  %vecinit1 = insertelement <2 x double> %vecinit, double %3, i32 1
  store <2 x double> %vecinit1, ptr %v, align 16
  %4 = load <2 x double>, ptr %v, align 16
  ret <2 x double> %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3double2() #0 {
entry:
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %b = alloca <2 x double>, align 16
  store double 1.700000e+01, ptr %c, align 8
  %0 = load double, ptr %c, align 8
  %call = call <2 x double> @test1double2(double noundef %0)
  store <2 x double> %call, ptr %a, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <2 x double>, ptr %a, align 16
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <2 x double> %2, i32 %3
  %cmp1 = fcmp une double %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  %call2 = call <2 x double> @test2double2(ptr noundef %c)
  store <2 x double> %call2, ptr %b, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 2
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <2 x double>, ptr %a, align 16
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <2 x double> %6, i32 %7
  %cmp7 = fcmp une double %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !65

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x double> @test1double1(double noundef %c) #0 {
entry:
  %c.addr = alloca double, align 8
  %v = alloca <1 x double>, align 8
  store double %c, ptr %c.addr, align 8
  %0 = load double, ptr %c.addr, align 8
  %vecinit = insertelement <1 x double> poison, double %0, i32 0
  store <1 x double> %vecinit, ptr %v, align 8
  %1 = load <1 x double>, ptr %v, align 8
  ret <1 x double> %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define <1 x double> @test2double1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c = alloca double, align 8
  %v = alloca <1 x double>, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load double, ptr %0, align 8
  store double %1, ptr %c, align 8
  %2 = load double, ptr %c, align 8
  %vecinit = insertelement <1 x double> poison, double %2, i32 0
  store <1 x double> %vecinit, ptr %v, align 8
  %3 = load <1 x double>, ptr %v, align 8
  ret <1 x double> %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test3double1() #0 {
entry:
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca <1 x double>, align 8
  %b = alloca <1 x double>, align 8
  store double 1.700000e+01, ptr %c, align 8
  %0 = load double, ptr %c, align 8
  %call = call <1 x double> @test1double1(double noundef %0)
  store <1 x double> %call, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load <1 x double>, ptr %a, align 8
  %3 = load i32, ptr %i, align 4
  %vecext = extractelement <1 x double> %2, i32 %3
  %cmp1 = fcmp une double %vecext, 1.700000e+01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  %call2 = call <1 x double> @test2double1(ptr noundef %c)
  store <1 x double> %call2, ptr %b, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 1
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %6 = load <1 x double>, ptr %a, align 8
  %7 = load i32, ptr %i, align 4
  %vecext6 = extractelement <1 x double> %6, i32 %7
  %cmp7 = fcmp une double %vecext6, 1.700000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body5
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body5
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %8 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond3, !llvm.loop !67

for.end12:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
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

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

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
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, !6}
