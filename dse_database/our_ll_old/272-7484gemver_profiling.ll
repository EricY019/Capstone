; ModuleID = './code/272-7484gemver_profiling.c'
source_filename = "./code/272-7484gemver_profiling.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@u1 = global [5000 x double] zeroinitializer, align 8
@u2 = global [5000 x double] zeroinitializer, align 8
@v1 = global [5000 x double] zeroinitializer, align 8
@v2 = global [5000 x double] zeroinitializer, align 8
@y = global [5000 x double] zeroinitializer, align 8
@z = global [5000 x double] zeroinitializer, align 8
@x = global [5000 x double] zeroinitializer, align 8
@w = global [5000 x double] zeroinitializer, align 8
@A = global [5000 x [5000 x double]] zeroinitializer, align 8
@B = global [5000 x [5000 x double]] zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init_array() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5000 x double], ptr @u1, i64 0, i64 %idxprom
  store double %conv, ptr %arrayidx, align 8
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 %3, 1
  %div = sdiv i32 %add, 5000
  %conv1 = sitofp i32 %div to double
  %div2 = fdiv double %conv1, 2.000000e+00
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5000 x double], ptr @u2, i64 0, i64 %idxprom3
  store double %div2, ptr %arrayidx4, align 8
  %5 = load i32, ptr %i, align 4
  %add5 = add nsw i32 %5, 1
  %div6 = sdiv i32 %add5, 5000
  %conv7 = sitofp i32 %div6 to double
  %div8 = fdiv double %conv7, 4.000000e+00
  %6 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [5000 x double], ptr @v1, i64 0, i64 %idxprom9
  store double %div8, ptr %arrayidx10, align 8
  %7 = load i32, ptr %i, align 4
  %add11 = add nsw i32 %7, 1
  %div12 = sdiv i32 %add11, 5000
  %conv13 = sitofp i32 %div12 to double
  %div14 = fdiv double %conv13, 6.000000e+00
  %8 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [5000 x double], ptr @v2, i64 0, i64 %idxprom15
  store double %div14, ptr %arrayidx16, align 8
  %9 = load i32, ptr %i, align 4
  %add17 = add nsw i32 %9, 1
  %div18 = sdiv i32 %add17, 5000
  %conv19 = sitofp i32 %div18 to double
  %div20 = fdiv double %conv19, 8.000000e+00
  %10 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %10 to i64
  %arrayidx22 = getelementptr inbounds [5000 x double], ptr @y, i64 0, i64 %idxprom21
  store double %div20, ptr %arrayidx22, align 8
  %11 = load i32, ptr %i, align 4
  %add23 = add nsw i32 %11, 1
  %div24 = sdiv i32 %add23, 5000
  %conv25 = sitofp i32 %div24 to double
  %div26 = fdiv double %conv25, 9.000000e+00
  %12 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %12 to i64
  %arrayidx28 = getelementptr inbounds [5000 x double], ptr @z, i64 0, i64 %idxprom27
  store double %div26, ptr %arrayidx28, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %13 to i64
  %arrayidx30 = getelementptr inbounds [5000 x double], ptr @x, i64 0, i64 %idxprom29
  store double 0.000000e+00, ptr %arrayidx30, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %14 to i64
  %arrayidx32 = getelementptr inbounds [5000 x double], ptr @w, i64 0, i64 %idxprom31
  store double 0.000000e+00, ptr %arrayidx32, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %for.body
  %15 = load i32, ptr %j, align 4
  %cmp34 = icmp slt i32 %15, 5000
  br i1 %cmp34, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond33
  %16 = load i32, ptr %i, align 4
  %conv37 = sitofp i32 %16 to double
  %17 = load i32, ptr %j, align 4
  %conv38 = sitofp i32 %17 to double
  %mul = fmul double %conv37, %conv38
  %div39 = fdiv double %mul, 5.000000e+03
  %18 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %18 to i64
  %arrayidx41 = getelementptr inbounds [5000 x [5000 x double]], ptr @A, i64 0, i64 %idxprom40
  %19 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %19 to i64
  %arrayidx43 = getelementptr inbounds [5000 x double], ptr %arrayidx41, i64 0, i64 %idxprom42
  store double %div39, ptr %arrayidx43, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond33, !llvm.loop !5

for.end:                                          ; preds = %for.cond33
  br label %for.inc44

for.inc44:                                        ; preds = %for.end
  %21 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %21, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end46:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @init_array()
  %0 = load double, ptr @w, align 8
  %conv = fptosi double %0 to i32
  ret i32 %conv
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
