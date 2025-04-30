; ModuleID = 'code/200-28412pr28982b.c'
source_filename = "code/200-28412pr28982b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big = type { [65536 x i32] }

@incs = dso_local global [20 x i32] zeroinitializer, align 16
@ptrs = dso_local global [20 x float*] zeroinitializer, align 16
@results = dso_local global [20 x float] zeroinitializer, align 16
@input = dso_local global [80 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(%struct.big* byval(%struct.big) align 8 %b) #0 {
entry:
  %i = getelementptr inbounds %struct.big, %struct.big* %b, i32 0, i32 0
  %arrayidx = getelementptr inbounds [65536 x i32], [65536 x i32]* %i, i64 0, i64 0
  %0 = load i32, i32* %arrayidx, align 8
  %1 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  %add = add nsw i32 %1, %0
  store i32 %add, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %b = alloca %struct.big, align 8
  %inc0 = alloca i32, align 4
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %inc3 = alloca i32, align 4
  %inc4 = alloca i32, align 4
  %inc5 = alloca i32, align 4
  %inc6 = alloca i32, align 4
  %inc7 = alloca i32, align 4
  %inc8 = alloca i32, align 4
  %inc9 = alloca i32, align 4
  %inc10 = alloca i32, align 4
  %inc11 = alloca i32, align 4
  %inc12 = alloca i32, align 4
  %inc13 = alloca i32, align 4
  %inc14 = alloca i32, align 4
  %inc15 = alloca i32, align 4
  %inc16 = alloca i32, align 4
  %inc17 = alloca i32, align 4
  %inc18 = alloca i32, align 4
  %inc19 = alloca i32, align 4
  %ptr0 = alloca float*, align 8
  %result0 = alloca float, align 4
  %ptr1 = alloca float*, align 8
  %result1 = alloca float, align 4
  %ptr2 = alloca float*, align 8
  %result2 = alloca float, align 4
  %ptr3 = alloca float*, align 8
  %result3 = alloca float, align 4
  %ptr4 = alloca float*, align 8
  %result4 = alloca float, align 4
  %ptr5 = alloca float*, align 8
  %result5 = alloca float, align 4
  %ptr6 = alloca float*, align 8
  %result6 = alloca float, align 4
  %ptr7 = alloca float*, align 8
  %result7 = alloca float, align 4
  %ptr8 = alloca float*, align 8
  %result8 = alloca float, align 4
  %ptr9 = alloca float*, align 8
  %result9 = alloca float, align 4
  %ptr10 = alloca float*, align 8
  %result10 = alloca float, align 4
  %ptr11 = alloca float*, align 8
  %result11 = alloca float, align 4
  %ptr12 = alloca float*, align 8
  %result12 = alloca float, align 4
  %ptr13 = alloca float*, align 8
  %result13 = alloca float, align 4
  %ptr14 = alloca float*, align 8
  %result14 = alloca float, align 4
  %ptr15 = alloca float*, align 8
  %result15 = alloca float, align 4
  %ptr16 = alloca float*, align 8
  %result16 = alloca float, align 4
  %ptr17 = alloca float*, align 8
  %result17 = alloca float, align 4
  %ptr18 = alloca float*, align 8
  %result18 = alloca float, align 4
  %ptr19 = alloca float*, align 8
  %result19 = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = bitcast %struct.big* %b to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 262144, i1 false)
  %1 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  store i32 %1, i32* %inc0, align 4
  %2 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 1), align 4
  store i32 %2, i32* %inc1, align 4
  %3 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 2), align 8
  store i32 %3, i32* %inc2, align 4
  %4 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 3), align 4
  store i32 %4, i32* %inc3, align 4
  %5 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 4), align 16
  store i32 %5, i32* %inc4, align 4
  %6 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 5), align 4
  store i32 %6, i32* %inc5, align 4
  %7 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 6), align 8
  store i32 %7, i32* %inc6, align 4
  %8 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 7), align 4
  store i32 %8, i32* %inc7, align 4
  %9 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 8), align 16
  store i32 %9, i32* %inc8, align 4
  %10 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 9), align 4
  store i32 %10, i32* %inc9, align 4
  %11 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 10), align 8
  store i32 %11, i32* %inc10, align 4
  %12 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 11), align 4
  store i32 %12, i32* %inc11, align 4
  %13 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 12), align 16
  store i32 %13, i32* %inc12, align 4
  %14 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 13), align 4
  store i32 %14, i32* %inc13, align 4
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 14), align 8
  store i32 %15, i32* %inc14, align 4
  %16 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 15), align 4
  store i32 %16, i32* %inc15, align 4
  %17 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 16), align 16
  store i32 %17, i32* %inc16, align 4
  %18 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 17), align 4
  store i32 %18, i32* %inc17, align 4
  %19 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 18), align 8
  store i32 %19, i32* %inc18, align 4
  %20 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 19), align 4
  store i32 %20, i32* %inc19, align 4
  %21 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 0), align 16
  store float* %21, float** %ptr0, align 8
  store float 0.000000e+00, float* %result0, align 4
  %22 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 1), align 8
  store float* %22, float** %ptr1, align 8
  store float 0.000000e+00, float* %result1, align 4
  %23 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 2), align 16
  store float* %23, float** %ptr2, align 8
  store float 0.000000e+00, float* %result2, align 4
  %24 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 3), align 8
  store float* %24, float** %ptr3, align 8
  store float 0.000000e+00, float* %result3, align 4
  %25 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 4), align 16
  store float* %25, float** %ptr4, align 8
  store float 0.000000e+00, float* %result4, align 4
  %26 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 5), align 8
  store float* %26, float** %ptr5, align 8
  store float 0.000000e+00, float* %result5, align 4
  %27 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 6), align 16
  store float* %27, float** %ptr6, align 8
  store float 0.000000e+00, float* %result6, align 4
  %28 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 7), align 8
  store float* %28, float** %ptr7, align 8
  store float 0.000000e+00, float* %result7, align 4
  %29 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 8), align 16
  store float* %29, float** %ptr8, align 8
  store float 0.000000e+00, float* %result8, align 4
  %30 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 9), align 8
  store float* %30, float** %ptr9, align 8
  store float 0.000000e+00, float* %result9, align 4
  %31 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 10), align 16
  store float* %31, float** %ptr10, align 8
  store float 0.000000e+00, float* %result10, align 4
  %32 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 11), align 8
  store float* %32, float** %ptr11, align 8
  store float 0.000000e+00, float* %result11, align 4
  %33 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 12), align 16
  store float* %33, float** %ptr12, align 8
  store float 0.000000e+00, float* %result12, align 4
  %34 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 13), align 8
  store float* %34, float** %ptr13, align 8
  store float 0.000000e+00, float* %result13, align 4
  %35 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 14), align 16
  store float* %35, float** %ptr14, align 8
  store float 0.000000e+00, float* %result14, align 4
  %36 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 15), align 8
  store float* %36, float** %ptr15, align 8
  store float 0.000000e+00, float* %result15, align 4
  %37 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 16), align 16
  store float* %37, float** %ptr16, align 8
  store float 0.000000e+00, float* %result16, align 4
  %38 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 17), align 8
  store float* %38, float** %ptr17, align 8
  store float 0.000000e+00, float* %result17, align 4
  %39 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 18), align 16
  store float* %39, float** %ptr18, align 8
  store float 0.000000e+00, float* %result18, align 4
  %40 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 19), align 8
  store float* %40, float** %ptr19, align 8
  store float 0.000000e+00, float* %result19, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %41 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load float*, float** %ptr0, align 8
  %43 = load float, float* %42, align 4
  %44 = load float, float* %result0, align 4
  %add = fadd float %44, %43
  store float %add, float* %result0, align 4
  %45 = load i32, i32* %inc0, align 4
  %46 = load float*, float** %ptr0, align 8
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds float, float* %46, i64 %idx.ext
  store float* %add.ptr, float** %ptr0, align 8
  %47 = load float*, float** %ptr1, align 8
  %48 = load float, float* %47, align 4
  %49 = load float, float* %result1, align 4
  %add1 = fadd float %49, %48
  store float %add1, float* %result1, align 4
  %50 = load i32, i32* %inc1, align 4
  %51 = load float*, float** %ptr1, align 8
  %idx.ext2 = sext i32 %50 to i64
  %add.ptr3 = getelementptr inbounds float, float* %51, i64 %idx.ext2
  store float* %add.ptr3, float** %ptr1, align 8
  %52 = load float*, float** %ptr2, align 8
  %53 = load float, float* %52, align 4
  %54 = load float, float* %result2, align 4
  %add4 = fadd float %54, %53
  store float %add4, float* %result2, align 4
  %55 = load i32, i32* %inc2, align 4
  %56 = load float*, float** %ptr2, align 8
  %idx.ext5 = sext i32 %55 to i64
  %add.ptr6 = getelementptr inbounds float, float* %56, i64 %idx.ext5
  store float* %add.ptr6, float** %ptr2, align 8
  %57 = load float*, float** %ptr3, align 8
  %58 = load float, float* %57, align 4
  %59 = load float, float* %result3, align 4
  %add7 = fadd float %59, %58
  store float %add7, float* %result3, align 4
  %60 = load i32, i32* %inc3, align 4
  %61 = load float*, float** %ptr3, align 8
  %idx.ext8 = sext i32 %60 to i64
  %add.ptr9 = getelementptr inbounds float, float* %61, i64 %idx.ext8
  store float* %add.ptr9, float** %ptr3, align 8
  %62 = load float*, float** %ptr4, align 8
  %63 = load float, float* %62, align 4
  %64 = load float, float* %result4, align 4
  %add10 = fadd float %64, %63
  store float %add10, float* %result4, align 4
  %65 = load i32, i32* %inc4, align 4
  %66 = load float*, float** %ptr4, align 8
  %idx.ext11 = sext i32 %65 to i64
  %add.ptr12 = getelementptr inbounds float, float* %66, i64 %idx.ext11
  store float* %add.ptr12, float** %ptr4, align 8
  %67 = load float*, float** %ptr5, align 8
  %68 = load float, float* %67, align 4
  %69 = load float, float* %result5, align 4
  %add13 = fadd float %69, %68
  store float %add13, float* %result5, align 4
  %70 = load i32, i32* %inc5, align 4
  %71 = load float*, float** %ptr5, align 8
  %idx.ext14 = sext i32 %70 to i64
  %add.ptr15 = getelementptr inbounds float, float* %71, i64 %idx.ext14
  store float* %add.ptr15, float** %ptr5, align 8
  %72 = load float*, float** %ptr6, align 8
  %73 = load float, float* %72, align 4
  %74 = load float, float* %result6, align 4
  %add16 = fadd float %74, %73
  store float %add16, float* %result6, align 4
  %75 = load i32, i32* %inc6, align 4
  %76 = load float*, float** %ptr6, align 8
  %idx.ext17 = sext i32 %75 to i64
  %add.ptr18 = getelementptr inbounds float, float* %76, i64 %idx.ext17
  store float* %add.ptr18, float** %ptr6, align 8
  %77 = load float*, float** %ptr7, align 8
  %78 = load float, float* %77, align 4
  %79 = load float, float* %result7, align 4
  %add19 = fadd float %79, %78
  store float %add19, float* %result7, align 4
  %80 = load i32, i32* %inc7, align 4
  %81 = load float*, float** %ptr7, align 8
  %idx.ext20 = sext i32 %80 to i64
  %add.ptr21 = getelementptr inbounds float, float* %81, i64 %idx.ext20
  store float* %add.ptr21, float** %ptr7, align 8
  %82 = load float*, float** %ptr8, align 8
  %83 = load float, float* %82, align 4
  %84 = load float, float* %result8, align 4
  %add22 = fadd float %84, %83
  store float %add22, float* %result8, align 4
  %85 = load i32, i32* %inc8, align 4
  %86 = load float*, float** %ptr8, align 8
  %idx.ext23 = sext i32 %85 to i64
  %add.ptr24 = getelementptr inbounds float, float* %86, i64 %idx.ext23
  store float* %add.ptr24, float** %ptr8, align 8
  %87 = load float*, float** %ptr9, align 8
  %88 = load float, float* %87, align 4
  %89 = load float, float* %result9, align 4
  %add25 = fadd float %89, %88
  store float %add25, float* %result9, align 4
  %90 = load i32, i32* %inc9, align 4
  %91 = load float*, float** %ptr9, align 8
  %idx.ext26 = sext i32 %90 to i64
  %add.ptr27 = getelementptr inbounds float, float* %91, i64 %idx.ext26
  store float* %add.ptr27, float** %ptr9, align 8
  %92 = load float*, float** %ptr10, align 8
  %93 = load float, float* %92, align 4
  %94 = load float, float* %result10, align 4
  %add28 = fadd float %94, %93
  store float %add28, float* %result10, align 4
  %95 = load i32, i32* %inc10, align 4
  %96 = load float*, float** %ptr10, align 8
  %idx.ext29 = sext i32 %95 to i64
  %add.ptr30 = getelementptr inbounds float, float* %96, i64 %idx.ext29
  store float* %add.ptr30, float** %ptr10, align 8
  %97 = load float*, float** %ptr11, align 8
  %98 = load float, float* %97, align 4
  %99 = load float, float* %result11, align 4
  %add31 = fadd float %99, %98
  store float %add31, float* %result11, align 4
  %100 = load i32, i32* %inc11, align 4
  %101 = load float*, float** %ptr11, align 8
  %idx.ext32 = sext i32 %100 to i64
  %add.ptr33 = getelementptr inbounds float, float* %101, i64 %idx.ext32
  store float* %add.ptr33, float** %ptr11, align 8
  %102 = load float*, float** %ptr12, align 8
  %103 = load float, float* %102, align 4
  %104 = load float, float* %result12, align 4
  %add34 = fadd float %104, %103
  store float %add34, float* %result12, align 4
  %105 = load i32, i32* %inc12, align 4
  %106 = load float*, float** %ptr12, align 8
  %idx.ext35 = sext i32 %105 to i64
  %add.ptr36 = getelementptr inbounds float, float* %106, i64 %idx.ext35
  store float* %add.ptr36, float** %ptr12, align 8
  %107 = load float*, float** %ptr13, align 8
  %108 = load float, float* %107, align 4
  %109 = load float, float* %result13, align 4
  %add37 = fadd float %109, %108
  store float %add37, float* %result13, align 4
  %110 = load i32, i32* %inc13, align 4
  %111 = load float*, float** %ptr13, align 8
  %idx.ext38 = sext i32 %110 to i64
  %add.ptr39 = getelementptr inbounds float, float* %111, i64 %idx.ext38
  store float* %add.ptr39, float** %ptr13, align 8
  %112 = load float*, float** %ptr14, align 8
  %113 = load float, float* %112, align 4
  %114 = load float, float* %result14, align 4
  %add40 = fadd float %114, %113
  store float %add40, float* %result14, align 4
  %115 = load i32, i32* %inc14, align 4
  %116 = load float*, float** %ptr14, align 8
  %idx.ext41 = sext i32 %115 to i64
  %add.ptr42 = getelementptr inbounds float, float* %116, i64 %idx.ext41
  store float* %add.ptr42, float** %ptr14, align 8
  %117 = load float*, float** %ptr15, align 8
  %118 = load float, float* %117, align 4
  %119 = load float, float* %result15, align 4
  %add43 = fadd float %119, %118
  store float %add43, float* %result15, align 4
  %120 = load i32, i32* %inc15, align 4
  %121 = load float*, float** %ptr15, align 8
  %idx.ext44 = sext i32 %120 to i64
  %add.ptr45 = getelementptr inbounds float, float* %121, i64 %idx.ext44
  store float* %add.ptr45, float** %ptr15, align 8
  %122 = load float*, float** %ptr16, align 8
  %123 = load float, float* %122, align 4
  %124 = load float, float* %result16, align 4
  %add46 = fadd float %124, %123
  store float %add46, float* %result16, align 4
  %125 = load i32, i32* %inc16, align 4
  %126 = load float*, float** %ptr16, align 8
  %idx.ext47 = sext i32 %125 to i64
  %add.ptr48 = getelementptr inbounds float, float* %126, i64 %idx.ext47
  store float* %add.ptr48, float** %ptr16, align 8
  %127 = load float*, float** %ptr17, align 8
  %128 = load float, float* %127, align 4
  %129 = load float, float* %result17, align 4
  %add49 = fadd float %129, %128
  store float %add49, float* %result17, align 4
  %130 = load i32, i32* %inc17, align 4
  %131 = load float*, float** %ptr17, align 8
  %idx.ext50 = sext i32 %130 to i64
  %add.ptr51 = getelementptr inbounds float, float* %131, i64 %idx.ext50
  store float* %add.ptr51, float** %ptr17, align 8
  %132 = load float*, float** %ptr18, align 8
  %133 = load float, float* %132, align 4
  %134 = load float, float* %result18, align 4
  %add52 = fadd float %134, %133
  store float %add52, float* %result18, align 4
  %135 = load i32, i32* %inc18, align 4
  %136 = load float*, float** %ptr18, align 8
  %idx.ext53 = sext i32 %135 to i64
  %add.ptr54 = getelementptr inbounds float, float* %136, i64 %idx.ext53
  store float* %add.ptr54, float** %ptr18, align 8
  %137 = load float*, float** %ptr19, align 8
  %138 = load float, float* %137, align 4
  %139 = load float, float* %result19, align 4
  %add55 = fadd float %139, %138
  store float %add55, float* %result19, align 4
  %140 = load i32, i32* %inc19, align 4
  %141 = load float*, float** %ptr19, align 8
  %idx.ext56 = sext i32 %140 to i64
  %add.ptr57 = getelementptr inbounds float, float* %141, i64 %idx.ext56
  store float* %add.ptr57, float** %ptr19, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %142 = load float, float* %result0, align 4
  store float %142, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 0), align 16
  %143 = load float, float* %result1, align 4
  store float %143, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 1), align 4
  %144 = load float, float* %result2, align 4
  store float %144, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 2), align 8
  %145 = load float, float* %result3, align 4
  store float %145, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 3), align 4
  %146 = load float, float* %result4, align 4
  store float %146, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 4), align 16
  %147 = load float, float* %result5, align 4
  store float %147, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 5), align 4
  %148 = load float, float* %result6, align 4
  store float %148, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 6), align 8
  %149 = load float, float* %result7, align 4
  store float %149, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 7), align 4
  %150 = load float, float* %result8, align 4
  store float %150, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 8), align 16
  %151 = load float, float* %result9, align 4
  store float %151, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 9), align 4
  %152 = load float, float* %result10, align 4
  store float %152, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 10), align 8
  %153 = load float, float* %result11, align 4
  store float %153, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 11), align 4
  %154 = load float, float* %result12, align 4
  store float %154, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 12), align 16
  %155 = load float, float* %result13, align 4
  store float %155, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 13), align 4
  %156 = load float, float* %result14, align 4
  store float %156, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 14), align 8
  %157 = load float, float* %result15, align 4
  store float %157, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 15), align 4
  %158 = load float, float* %result16, align 4
  store float %158, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 16), align 16
  %159 = load float, float* %result17, align 4
  store float %159, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 17), align 4
  %160 = load float, float* %result18, align 4
  store float %160, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 18), align 8
  %161 = load float, float* %result19, align 4
  store float %161, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 19), align 4
  call void @bar(%struct.big* byval(%struct.big) align 8 %b)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds float, float* getelementptr inbounds ([80 x float], [80 x float]* @input, i64 0, i64 0), i64 %idx.ext
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x float*], [20 x float*]* @ptrs, i64 0, i64 %idxprom
  store float* %add.ptr, float** %arrayidx, align 8
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], [20 x i32]* @incs, i64 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %6, 80
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i, align 4
  %conv = sitofp i32 %7 to float
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [80 x float], [80 x float]* @input, i64 0, i64 %idxprom6
  store float %conv, float* %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %9 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end10:                                        ; preds = %for.cond3
  call void @foo(i32 4)
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc21, %for.end10
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 20
  br i1 %cmp12, label %for.body14, label %for.end23

for.body14:                                       ; preds = %for.cond11
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* @results, i64 0, i64 %idxprom15
  %12 = load float, float* %arrayidx16, align 4
  %13 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %13, 4
  %mul17 = mul nsw i32 %mul, 5
  %div = sdiv i32 %mul17, 2
  %conv18 = sitofp i32 %div to float
  %cmp19 = fcmp une float %12, %conv18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body14
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %14, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond11, !llvm.loop !8

for.end23:                                        ; preds = %for.cond11
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end23, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
