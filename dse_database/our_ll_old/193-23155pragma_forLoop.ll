; ModuleID = './code/193-23155pragma_forLoop.c'
source_filename = "./code/193-23155pragma_forLoop.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %k, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %k, align 4
  %2 = load i32, ptr %k, align 4
  %inc1 = add nsw i32 %2, 1
  store i32 %inc1, ptr %k, align 4
  %3 = load i32, ptr %k, align 4
  %inc2 = add nsw i32 %3, 1
  store i32 %inc2, ptr %k, align 4
  %4 = load i32, ptr %k, align 4
  %inc3 = add nsw i32 %4, 1
  store i32 %inc3, ptr %k, align 4
  %5 = load i32, ptr %k, align 4
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, ptr %k, align 4
  %6 = load i32, ptr %k, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, ptr %k, align 4
  %7 = load i32, ptr %k, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, ptr %k, align 4
  br label %label

label:                                            ; preds = %for.body
  %8 = load i32, ptr %k, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr %k, align 4
  %9 = load i32, ptr %k, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %k, align 4
  %10 = load i32, ptr %k, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, ptr %k, align 4
  %11 = load i32, ptr %k, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, ptr %k, align 4
  %12 = load i32, ptr %k, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, ptr %k, align 4
  %13 = load i32, ptr %k, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, ptr %k, align 4
  %14 = load i32, ptr %k, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, ptr %k, align 4
  %15 = load i32, ptr %k, align 4
  %inc14 = add nsw i32 %15, 1
  store i32 %inc14, ptr %k, align 4
  %16 = load i32, ptr %k, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, ptr %k, align 4
  %17 = load i32, ptr %k, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, ptr %k, align 4
  %18 = load i32, ptr %k, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, ptr %k, align 4
  %19 = load i32, ptr %k, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, ptr %k, align 4
  %20 = load i32, ptr %k, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, ptr %k, align 4
  %21 = load i32, ptr %k, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, ptr %k, align 4
  %22 = load i32, ptr %k, align 4
  %inc21 = add nsw i32 %22, 1
  store i32 %inc21, ptr %k, align 4
  %23 = load i32, ptr %k, align 4
  %inc22 = add nsw i32 %23, 1
  store i32 %inc22, ptr %k, align 4
  %24 = load i32, ptr %k, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, ptr %k, align 4
  %25 = load i32, ptr %k, align 4
  %inc24 = add nsw i32 %25, 1
  store i32 %inc24, ptr %k, align 4
  %26 = load i32, ptr %k, align 4
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, ptr %k, align 4
  %27 = load i32, ptr %k, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, ptr %k, align 4
  %28 = load i32, ptr %k, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, ptr %k, align 4
  %29 = load i32, ptr %k, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, ptr %k, align 4
  %30 = load i32, ptr %k, align 4
  %inc29 = add nsw i32 %30, 1
  store i32 %inc29, ptr %k, align 4
  %31 = load i32, ptr %k, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, ptr %k, align 4
  %32 = load i32, ptr %k, align 4
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, ptr %k, align 4
  %33 = load i32, ptr %k, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, ptr %k, align 4
  %34 = load i32, ptr %k, align 4
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, ptr %k, align 4
  %35 = load i32, ptr %k, align 4
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, ptr %k, align 4
  %36 = load i32, ptr %k, align 4
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, ptr %k, align 4
  %37 = load i32, ptr %k, align 4
  %inc36 = add nsw i32 %37, 1
  store i32 %inc36, ptr %k, align 4
  %38 = load i32, ptr %k, align 4
  %inc37 = add nsw i32 %38, 1
  store i32 %inc37, ptr %k, align 4
  %39 = load i32, ptr %k, align 4
  %inc38 = add nsw i32 %39, 1
  store i32 %inc38, ptr %k, align 4
  %40 = load i32, ptr %k, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, ptr %k, align 4
  %41 = load i32, ptr %k, align 4
  %inc40 = add nsw i32 %41, 1
  store i32 %inc40, ptr %k, align 4
  %42 = load i32, ptr %k, align 4
  %inc41 = add nsw i32 %42, 1
  store i32 %inc41, ptr %k, align 4
  %43 = load i32, ptr %k, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, ptr %k, align 4
  %44 = load i32, ptr %k, align 4
  %inc43 = add nsw i32 %44, 1
  store i32 %inc43, ptr %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %label
  %45 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
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
