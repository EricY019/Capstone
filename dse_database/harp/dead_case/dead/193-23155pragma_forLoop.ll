; ModuleID = 'code/193-23155pragma_forLoop.c'
source_filename = "code/193-23155pragma_forLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %k, align 4
  %2 = load i32, i32* %k, align 4
  %inc1 = add nsw i32 %2, 1
  store i32 %inc1, i32* %k, align 4
  %3 = load i32, i32* %k, align 4
  %inc2 = add nsw i32 %3, 1
  store i32 %inc2, i32* %k, align 4
  %4 = load i32, i32* %k, align 4
  %inc3 = add nsw i32 %4, 1
  store i32 %inc3, i32* %k, align 4
  %5 = load i32, i32* %k, align 4
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, i32* %k, align 4
  %6 = load i32, i32* %k, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, i32* %k, align 4
  %7 = load i32, i32* %k, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* %k, align 4
  br label %label

label:                                            ; preds = %for.body
  %8 = load i32, i32* %k, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* %k, align 4
  %9 = load i32, i32* %k, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %k, align 4
  %10 = load i32, i32* %k, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %k, align 4
  %11 = load i32, i32* %k, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %k, align 4
  %12 = load i32, i32* %k, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* %k, align 4
  %13 = load i32, i32* %k, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %k, align 4
  %14 = load i32, i32* %k, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %k, align 4
  %15 = load i32, i32* %k, align 4
  %inc14 = add nsw i32 %15, 1
  store i32 %inc14, i32* %k, align 4
  %16 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %k, align 4
  %17 = load i32, i32* %k, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %k, align 4
  %18 = load i32, i32* %k, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, i32* %k, align 4
  %19 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* %k, align 4
  %20 = load i32, i32* %k, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %k, align 4
  %21 = load i32, i32* %k, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %k, align 4
  %22 = load i32, i32* %k, align 4
  %inc21 = add nsw i32 %22, 1
  store i32 %inc21, i32* %k, align 4
  %23 = load i32, i32* %k, align 4
  %inc22 = add nsw i32 %23, 1
  store i32 %inc22, i32* %k, align 4
  %24 = load i32, i32* %k, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, i32* %k, align 4
  %25 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %25, 1
  store i32 %inc24, i32* %k, align 4
  %26 = load i32, i32* %k, align 4
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, i32* %k, align 4
  %27 = load i32, i32* %k, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, i32* %k, align 4
  %28 = load i32, i32* %k, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, i32* %k, align 4
  %29 = load i32, i32* %k, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %k, align 4
  %30 = load i32, i32* %k, align 4
  %inc29 = add nsw i32 %30, 1
  store i32 %inc29, i32* %k, align 4
  %31 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, i32* %k, align 4
  %32 = load i32, i32* %k, align 4
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, i32* %k, align 4
  %33 = load i32, i32* %k, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, i32* %k, align 4
  %34 = load i32, i32* %k, align 4
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, i32* %k, align 4
  %35 = load i32, i32* %k, align 4
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %k, align 4
  %36 = load i32, i32* %k, align 4
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, i32* %k, align 4
  %37 = load i32, i32* %k, align 4
  %inc36 = add nsw i32 %37, 1
  store i32 %inc36, i32* %k, align 4
  %38 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %38, 1
  store i32 %inc37, i32* %k, align 4
  %39 = load i32, i32* %k, align 4
  %inc38 = add nsw i32 %39, 1
  store i32 %inc38, i32* %k, align 4
  %40 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, i32* %k, align 4
  %41 = load i32, i32* %k, align 4
  %inc40 = add nsw i32 %41, 1
  store i32 %inc40, i32* %k, align 4
  %42 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %42, 1
  store i32 %inc41, i32* %k, align 4
  %43 = load i32, i32* %k, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* %k, align 4
  %44 = load i32, i32* %k, align 4
  %inc43 = add nsw i32 %44, 1
  store i32 %inc43, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %label
  %45 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
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
