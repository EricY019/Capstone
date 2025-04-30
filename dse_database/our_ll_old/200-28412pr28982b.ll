; ModuleID = './code/200-28412pr28982b.c'
source_filename = "./code/200-28412pr28982b.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.big = type { [65536 x i32] }

@incs = global [20 x i32] zeroinitializer, align 4
@ptrs = global [20 x ptr] zeroinitializer, align 8
@results = global [20 x float] zeroinitializer, align 4
@input = global [80 x float] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bar(ptr noundef %b) #0 {
entry:
  %b.indirect_addr = alloca ptr, align 8
  store ptr %b, ptr %b.indirect_addr, align 8
  %i = getelementptr inbounds %struct.big, ptr %b, i32 0, i32 0
  %arrayidx = getelementptr inbounds [65536 x i32], ptr %i, i64 0, i64 0
  %0 = load i32, ptr %arrayidx, align 4
  %1 = load i32, ptr @incs, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @incs, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %b = alloca %struct.big, align 4
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
  %ptr0 = alloca ptr, align 8
  %result0 = alloca float, align 4
  %ptr1 = alloca ptr, align 8
  %result1 = alloca float, align 4
  %ptr2 = alloca ptr, align 8
  %result2 = alloca float, align 4
  %ptr3 = alloca ptr, align 8
  %result3 = alloca float, align 4
  %ptr4 = alloca ptr, align 8
  %result4 = alloca float, align 4
  %ptr5 = alloca ptr, align 8
  %result5 = alloca float, align 4
  %ptr6 = alloca ptr, align 8
  %result6 = alloca float, align 4
  %ptr7 = alloca ptr, align 8
  %result7 = alloca float, align 4
  %ptr8 = alloca ptr, align 8
  %result8 = alloca float, align 4
  %ptr9 = alloca ptr, align 8
  %result9 = alloca float, align 4
  %ptr10 = alloca ptr, align 8
  %result10 = alloca float, align 4
  %ptr11 = alloca ptr, align 8
  %result11 = alloca float, align 4
  %ptr12 = alloca ptr, align 8
  %result12 = alloca float, align 4
  %ptr13 = alloca ptr, align 8
  %result13 = alloca float, align 4
  %ptr14 = alloca ptr, align 8
  %result14 = alloca float, align 4
  %ptr15 = alloca ptr, align 8
  %result15 = alloca float, align 4
  %ptr16 = alloca ptr, align 8
  %result16 = alloca float, align 4
  %ptr17 = alloca ptr, align 8
  %result17 = alloca float, align 4
  %ptr18 = alloca ptr, align 8
  %result18 = alloca float, align 4
  %ptr19 = alloca ptr, align 8
  %result19 = alloca float, align 4
  %byval-temp = alloca %struct.big, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %b, i8 0, i64 262144, i1 false)
  %0 = load i32, ptr @incs, align 4
  store i32 %0, ptr %inc0, align 4
  %1 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 1), align 4
  store i32 %1, ptr %inc1, align 4
  %2 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 2), align 4
  store i32 %2, ptr %inc2, align 4
  %3 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 3), align 4
  store i32 %3, ptr %inc3, align 4
  %4 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 4), align 4
  store i32 %4, ptr %inc4, align 4
  %5 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 5), align 4
  store i32 %5, ptr %inc5, align 4
  %6 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 6), align 4
  store i32 %6, ptr %inc6, align 4
  %7 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 7), align 4
  store i32 %7, ptr %inc7, align 4
  %8 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 8), align 4
  store i32 %8, ptr %inc8, align 4
  %9 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 9), align 4
  store i32 %9, ptr %inc9, align 4
  %10 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 10), align 4
  store i32 %10, ptr %inc10, align 4
  %11 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 11), align 4
  store i32 %11, ptr %inc11, align 4
  %12 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 12), align 4
  store i32 %12, ptr %inc12, align 4
  %13 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 13), align 4
  store i32 %13, ptr %inc13, align 4
  %14 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 14), align 4
  store i32 %14, ptr %inc14, align 4
  %15 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 15), align 4
  store i32 %15, ptr %inc15, align 4
  %16 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 16), align 4
  store i32 %16, ptr %inc16, align 4
  %17 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 17), align 4
  store i32 %17, ptr %inc17, align 4
  %18 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 18), align 4
  store i32 %18, ptr %inc18, align 4
  %19 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @incs, i64 0, i64 19), align 4
  store i32 %19, ptr %inc19, align 4
  %20 = load ptr, ptr @ptrs, align 8
  store ptr %20, ptr %ptr0, align 8
  store float 0.000000e+00, ptr %result0, align 4
  %21 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 1), align 8
  store ptr %21, ptr %ptr1, align 8
  store float 0.000000e+00, ptr %result1, align 4
  %22 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 2), align 8
  store ptr %22, ptr %ptr2, align 8
  store float 0.000000e+00, ptr %result2, align 4
  %23 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 3), align 8
  store ptr %23, ptr %ptr3, align 8
  store float 0.000000e+00, ptr %result3, align 4
  %24 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 4), align 8
  store ptr %24, ptr %ptr4, align 8
  store float 0.000000e+00, ptr %result4, align 4
  %25 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 5), align 8
  store ptr %25, ptr %ptr5, align 8
  store float 0.000000e+00, ptr %result5, align 4
  %26 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 6), align 8
  store ptr %26, ptr %ptr6, align 8
  store float 0.000000e+00, ptr %result6, align 4
  %27 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 7), align 8
  store ptr %27, ptr %ptr7, align 8
  store float 0.000000e+00, ptr %result7, align 4
  %28 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 8), align 8
  store ptr %28, ptr %ptr8, align 8
  store float 0.000000e+00, ptr %result8, align 4
  %29 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 9), align 8
  store ptr %29, ptr %ptr9, align 8
  store float 0.000000e+00, ptr %result9, align 4
  %30 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 10), align 8
  store ptr %30, ptr %ptr10, align 8
  store float 0.000000e+00, ptr %result10, align 4
  %31 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 11), align 8
  store ptr %31, ptr %ptr11, align 8
  store float 0.000000e+00, ptr %result11, align 4
  %32 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 12), align 8
  store ptr %32, ptr %ptr12, align 8
  store float 0.000000e+00, ptr %result12, align 4
  %33 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 13), align 8
  store ptr %33, ptr %ptr13, align 8
  store float 0.000000e+00, ptr %result13, align 4
  %34 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 14), align 8
  store ptr %34, ptr %ptr14, align 8
  store float 0.000000e+00, ptr %result14, align 4
  %35 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 15), align 8
  store ptr %35, ptr %ptr15, align 8
  store float 0.000000e+00, ptr %result15, align 4
  %36 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 16), align 8
  store ptr %36, ptr %ptr16, align 8
  store float 0.000000e+00, ptr %result16, align 4
  %37 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 17), align 8
  store ptr %37, ptr %ptr17, align 8
  store float 0.000000e+00, ptr %result17, align 4
  %38 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 18), align 8
  store ptr %38, ptr %ptr18, align 8
  store float 0.000000e+00, ptr %result18, align 4
  %39 = load ptr, ptr getelementptr inbounds ([20 x ptr], ptr @ptrs, i64 0, i64 19), align 8
  store ptr %39, ptr %ptr19, align 8
  store float 0.000000e+00, ptr %result19, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %40 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, ptr %n.addr, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load ptr, ptr %ptr0, align 8
  %42 = load float, ptr %41, align 4
  %43 = load float, ptr %result0, align 4
  %add = fadd float %43, %42
  store float %add, ptr %result0, align 4
  %44 = load i32, ptr %inc0, align 4
  %45 = load ptr, ptr %ptr0, align 8
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds float, ptr %45, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr0, align 8
  %46 = load ptr, ptr %ptr1, align 8
  %47 = load float, ptr %46, align 4
  %48 = load float, ptr %result1, align 4
  %add1 = fadd float %48, %47
  store float %add1, ptr %result1, align 4
  %49 = load i32, ptr %inc1, align 4
  %50 = load ptr, ptr %ptr1, align 8
  %idx.ext2 = sext i32 %49 to i64
  %add.ptr3 = getelementptr inbounds float, ptr %50, i64 %idx.ext2
  store ptr %add.ptr3, ptr %ptr1, align 8
  %51 = load ptr, ptr %ptr2, align 8
  %52 = load float, ptr %51, align 4
  %53 = load float, ptr %result2, align 4
  %add4 = fadd float %53, %52
  store float %add4, ptr %result2, align 4
  %54 = load i32, ptr %inc2, align 4
  %55 = load ptr, ptr %ptr2, align 8
  %idx.ext5 = sext i32 %54 to i64
  %add.ptr6 = getelementptr inbounds float, ptr %55, i64 %idx.ext5
  store ptr %add.ptr6, ptr %ptr2, align 8
  %56 = load ptr, ptr %ptr3, align 8
  %57 = load float, ptr %56, align 4
  %58 = load float, ptr %result3, align 4
  %add7 = fadd float %58, %57
  store float %add7, ptr %result3, align 4
  %59 = load i32, ptr %inc3, align 4
  %60 = load ptr, ptr %ptr3, align 8
  %idx.ext8 = sext i32 %59 to i64
  %add.ptr9 = getelementptr inbounds float, ptr %60, i64 %idx.ext8
  store ptr %add.ptr9, ptr %ptr3, align 8
  %61 = load ptr, ptr %ptr4, align 8
  %62 = load float, ptr %61, align 4
  %63 = load float, ptr %result4, align 4
  %add10 = fadd float %63, %62
  store float %add10, ptr %result4, align 4
  %64 = load i32, ptr %inc4, align 4
  %65 = load ptr, ptr %ptr4, align 8
  %idx.ext11 = sext i32 %64 to i64
  %add.ptr12 = getelementptr inbounds float, ptr %65, i64 %idx.ext11
  store ptr %add.ptr12, ptr %ptr4, align 8
  %66 = load ptr, ptr %ptr5, align 8
  %67 = load float, ptr %66, align 4
  %68 = load float, ptr %result5, align 4
  %add13 = fadd float %68, %67
  store float %add13, ptr %result5, align 4
  %69 = load i32, ptr %inc5, align 4
  %70 = load ptr, ptr %ptr5, align 8
  %idx.ext14 = sext i32 %69 to i64
  %add.ptr15 = getelementptr inbounds float, ptr %70, i64 %idx.ext14
  store ptr %add.ptr15, ptr %ptr5, align 8
  %71 = load ptr, ptr %ptr6, align 8
  %72 = load float, ptr %71, align 4
  %73 = load float, ptr %result6, align 4
  %add16 = fadd float %73, %72
  store float %add16, ptr %result6, align 4
  %74 = load i32, ptr %inc6, align 4
  %75 = load ptr, ptr %ptr6, align 8
  %idx.ext17 = sext i32 %74 to i64
  %add.ptr18 = getelementptr inbounds float, ptr %75, i64 %idx.ext17
  store ptr %add.ptr18, ptr %ptr6, align 8
  %76 = load ptr, ptr %ptr7, align 8
  %77 = load float, ptr %76, align 4
  %78 = load float, ptr %result7, align 4
  %add19 = fadd float %78, %77
  store float %add19, ptr %result7, align 4
  %79 = load i32, ptr %inc7, align 4
  %80 = load ptr, ptr %ptr7, align 8
  %idx.ext20 = sext i32 %79 to i64
  %add.ptr21 = getelementptr inbounds float, ptr %80, i64 %idx.ext20
  store ptr %add.ptr21, ptr %ptr7, align 8
  %81 = load ptr, ptr %ptr8, align 8
  %82 = load float, ptr %81, align 4
  %83 = load float, ptr %result8, align 4
  %add22 = fadd float %83, %82
  store float %add22, ptr %result8, align 4
  %84 = load i32, ptr %inc8, align 4
  %85 = load ptr, ptr %ptr8, align 8
  %idx.ext23 = sext i32 %84 to i64
  %add.ptr24 = getelementptr inbounds float, ptr %85, i64 %idx.ext23
  store ptr %add.ptr24, ptr %ptr8, align 8
  %86 = load ptr, ptr %ptr9, align 8
  %87 = load float, ptr %86, align 4
  %88 = load float, ptr %result9, align 4
  %add25 = fadd float %88, %87
  store float %add25, ptr %result9, align 4
  %89 = load i32, ptr %inc9, align 4
  %90 = load ptr, ptr %ptr9, align 8
  %idx.ext26 = sext i32 %89 to i64
  %add.ptr27 = getelementptr inbounds float, ptr %90, i64 %idx.ext26
  store ptr %add.ptr27, ptr %ptr9, align 8
  %91 = load ptr, ptr %ptr10, align 8
  %92 = load float, ptr %91, align 4
  %93 = load float, ptr %result10, align 4
  %add28 = fadd float %93, %92
  store float %add28, ptr %result10, align 4
  %94 = load i32, ptr %inc10, align 4
  %95 = load ptr, ptr %ptr10, align 8
  %idx.ext29 = sext i32 %94 to i64
  %add.ptr30 = getelementptr inbounds float, ptr %95, i64 %idx.ext29
  store ptr %add.ptr30, ptr %ptr10, align 8
  %96 = load ptr, ptr %ptr11, align 8
  %97 = load float, ptr %96, align 4
  %98 = load float, ptr %result11, align 4
  %add31 = fadd float %98, %97
  store float %add31, ptr %result11, align 4
  %99 = load i32, ptr %inc11, align 4
  %100 = load ptr, ptr %ptr11, align 8
  %idx.ext32 = sext i32 %99 to i64
  %add.ptr33 = getelementptr inbounds float, ptr %100, i64 %idx.ext32
  store ptr %add.ptr33, ptr %ptr11, align 8
  %101 = load ptr, ptr %ptr12, align 8
  %102 = load float, ptr %101, align 4
  %103 = load float, ptr %result12, align 4
  %add34 = fadd float %103, %102
  store float %add34, ptr %result12, align 4
  %104 = load i32, ptr %inc12, align 4
  %105 = load ptr, ptr %ptr12, align 8
  %idx.ext35 = sext i32 %104 to i64
  %add.ptr36 = getelementptr inbounds float, ptr %105, i64 %idx.ext35
  store ptr %add.ptr36, ptr %ptr12, align 8
  %106 = load ptr, ptr %ptr13, align 8
  %107 = load float, ptr %106, align 4
  %108 = load float, ptr %result13, align 4
  %add37 = fadd float %108, %107
  store float %add37, ptr %result13, align 4
  %109 = load i32, ptr %inc13, align 4
  %110 = load ptr, ptr %ptr13, align 8
  %idx.ext38 = sext i32 %109 to i64
  %add.ptr39 = getelementptr inbounds float, ptr %110, i64 %idx.ext38
  store ptr %add.ptr39, ptr %ptr13, align 8
  %111 = load ptr, ptr %ptr14, align 8
  %112 = load float, ptr %111, align 4
  %113 = load float, ptr %result14, align 4
  %add40 = fadd float %113, %112
  store float %add40, ptr %result14, align 4
  %114 = load i32, ptr %inc14, align 4
  %115 = load ptr, ptr %ptr14, align 8
  %idx.ext41 = sext i32 %114 to i64
  %add.ptr42 = getelementptr inbounds float, ptr %115, i64 %idx.ext41
  store ptr %add.ptr42, ptr %ptr14, align 8
  %116 = load ptr, ptr %ptr15, align 8
  %117 = load float, ptr %116, align 4
  %118 = load float, ptr %result15, align 4
  %add43 = fadd float %118, %117
  store float %add43, ptr %result15, align 4
  %119 = load i32, ptr %inc15, align 4
  %120 = load ptr, ptr %ptr15, align 8
  %idx.ext44 = sext i32 %119 to i64
  %add.ptr45 = getelementptr inbounds float, ptr %120, i64 %idx.ext44
  store ptr %add.ptr45, ptr %ptr15, align 8
  %121 = load ptr, ptr %ptr16, align 8
  %122 = load float, ptr %121, align 4
  %123 = load float, ptr %result16, align 4
  %add46 = fadd float %123, %122
  store float %add46, ptr %result16, align 4
  %124 = load i32, ptr %inc16, align 4
  %125 = load ptr, ptr %ptr16, align 8
  %idx.ext47 = sext i32 %124 to i64
  %add.ptr48 = getelementptr inbounds float, ptr %125, i64 %idx.ext47
  store ptr %add.ptr48, ptr %ptr16, align 8
  %126 = load ptr, ptr %ptr17, align 8
  %127 = load float, ptr %126, align 4
  %128 = load float, ptr %result17, align 4
  %add49 = fadd float %128, %127
  store float %add49, ptr %result17, align 4
  %129 = load i32, ptr %inc17, align 4
  %130 = load ptr, ptr %ptr17, align 8
  %idx.ext50 = sext i32 %129 to i64
  %add.ptr51 = getelementptr inbounds float, ptr %130, i64 %idx.ext50
  store ptr %add.ptr51, ptr %ptr17, align 8
  %131 = load ptr, ptr %ptr18, align 8
  %132 = load float, ptr %131, align 4
  %133 = load float, ptr %result18, align 4
  %add52 = fadd float %133, %132
  store float %add52, ptr %result18, align 4
  %134 = load i32, ptr %inc18, align 4
  %135 = load ptr, ptr %ptr18, align 8
  %idx.ext53 = sext i32 %134 to i64
  %add.ptr54 = getelementptr inbounds float, ptr %135, i64 %idx.ext53
  store ptr %add.ptr54, ptr %ptr18, align 8
  %136 = load ptr, ptr %ptr19, align 8
  %137 = load float, ptr %136, align 4
  %138 = load float, ptr %result19, align 4
  %add55 = fadd float %138, %137
  store float %add55, ptr %result19, align 4
  %139 = load i32, ptr %inc19, align 4
  %140 = load ptr, ptr %ptr19, align 8
  %idx.ext56 = sext i32 %139 to i64
  %add.ptr57 = getelementptr inbounds float, ptr %140, i64 %idx.ext56
  store ptr %add.ptr57, ptr %ptr19, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %141 = load float, ptr %result0, align 4
  store float %141, ptr @results, align 4
  %142 = load float, ptr %result1, align 4
  store float %142, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 1), align 4
  %143 = load float, ptr %result2, align 4
  store float %143, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 2), align 4
  %144 = load float, ptr %result3, align 4
  store float %144, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 3), align 4
  %145 = load float, ptr %result4, align 4
  store float %145, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 4), align 4
  %146 = load float, ptr %result5, align 4
  store float %146, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 5), align 4
  %147 = load float, ptr %result6, align 4
  store float %147, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 6), align 4
  %148 = load float, ptr %result7, align 4
  store float %148, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 7), align 4
  %149 = load float, ptr %result8, align 4
  store float %149, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 8), align 4
  %150 = load float, ptr %result9, align 4
  store float %150, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 9), align 4
  %151 = load float, ptr %result10, align 4
  store float %151, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 10), align 4
  %152 = load float, ptr %result11, align 4
  store float %152, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 11), align 4
  %153 = load float, ptr %result12, align 4
  store float %153, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 12), align 4
  %154 = load float, ptr %result13, align 4
  store float %154, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 13), align 4
  %155 = load float, ptr %result14, align 4
  store float %155, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 14), align 4
  %156 = load float, ptr %result15, align 4
  store float %156, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 15), align 4
  %157 = load float, ptr %result16, align 4
  store float %157, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 16), align 4
  %158 = load float, ptr %result17, align 4
  store float %158, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 17), align 4
  %159 = load float, ptr %result18, align 4
  store float %159, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 18), align 4
  %160 = load float, ptr %result19, align 4
  store float %160, ptr getelementptr inbounds ([20 x float], ptr @results, i64 0, i64 19), align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp, ptr align 4 %b, i64 262144, i1 false)
  call void @bar(ptr noundef %byval-temp)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds float, ptr @input, i64 %idx.ext
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x ptr], ptr @ptrs, i64 0, i64 %idxprom
  store ptr %add.ptr, ptr %arrayidx, align 8
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], ptr @incs, i64 0, i64 %idxprom1
  store i32 %3, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %6, 80
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i, align 4
  %conv = sitofp i32 %7 to float
  %8 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [80 x float], ptr @input, i64 0, i64 %idxprom6
  store float %conv, ptr %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %9 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end10:                                        ; preds = %for.cond3
  call void @foo(i32 noundef 4)
  store i32 0, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc21, %for.end10
  %10 = load i32, ptr %i, align 4
  %cmp12 = icmp slt i32 %10, 20
  br i1 %cmp12, label %for.body14, label %for.end23

for.body14:                                       ; preds = %for.cond11
  %11 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [20 x float], ptr @results, i64 0, i64 %idxprom15
  %12 = load float, ptr %arrayidx16, align 4
  %13 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %13, 4
  %mul17 = mul nsw i32 %mul, 5
  %div = sdiv i32 %mul17, 2
  %conv18 = sitofp i32 %div to float
  %cmp19 = fcmp une float %12, %conv18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body14
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %14, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond11, !llvm.loop !9

for.end23:                                        ; preds = %for.cond11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end23, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
