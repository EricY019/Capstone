; ModuleID = 'code/179-29385pr61375.c'
source_filename = "code/179-29385pr61375.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uint128_central_bitsi_ior(i64 %in1.coerce0, i64 %in1.coerce1, i64 %in2) #0 {
entry:
  %in1 = alloca i128, align 16
  %in1.addr = alloca i128, align 16
  %in2.addr = alloca i64, align 8
  %mask = alloca i128, align 16
  %0 = bitcast i128* %in1 to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %in1.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %in1.coerce1, i64* %2, align 8
  %in11 = load i128, i128* %in1, align 16
  store i128 %in11, i128* %in1.addr, align 16
  store i64 %in2, i64* %in2.addr, align 8
  store i128 4722294425275607285760, i128* %mask, align 16
  %3 = load i128, i128* %in1.addr, align 16
  %4 = load i128, i128* %mask, align 16
  %and = and i128 %3, %4
  %shr = lshr i128 %and, 56
  %5 = load i64, i64* %in2.addr, align 8
  %conv = zext i64 %5 to i128
  %or = or i128 %shr, %conv
  %conv2 = trunc i128 %or to i64
  ret i64 %conv2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca i128, align 16
  %coerce = alloca i128, align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i128 1, i128* %in, align 16
  %0 = load i128, i128* %in, align 16
  %shl = shl i128 %0, 64
  store i128 %shl, i128* %in, align 16
  %1 = load i128, i128* %in, align 16
  store i128 %1, i128* %coerce, align 16
  %2 = bitcast i128* %coerce to { i64, i64 }*
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 16
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %call = call i64 @uint128_central_bitsi_ior(i64 %4, i64 %6, i64 2)
  %cmp = icmp ne i64 %call, 258
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
