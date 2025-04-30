; ModuleID = './code/183-30093issue_001.c'
source_filename = "./code/183-30093issue_001.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [34 x i8] c"Error at A[%d], h = %lf, d = %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fail = alloca i32, align 4
  %A = alloca [320000 x double], align 8
  %B = alloca [320000 x double], align 8
  %C = alloca [320000 x double], align 8
  %i = alloca i32, align 4
  %nte = alloca i32, align 4
  %tl = alloca i32, align 4
  %blockSize = alloca i32, align 4
  %t = alloca i32, align 4
  %j = alloca i32, align 4
  %i11 = alloca i32, align 4
  %i32 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %fail, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 320000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [320000 x double], ptr %A, i64 0, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [320000 x double], ptr %B, i64 0, i64 %idxprom1
  store double 0.000000e+00, ptr %arrayidx2, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [320000 x double], ptr %C, i64 0, i64 %idxprom3
  store double 1.000000e+00, ptr %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 32, ptr %nte, align 4
  store i32 64, ptr %tl, align 4
  %5 = load i32, ptr %tl, align 4
  store i32 %5, ptr %blockSize, align 4
  store i32 0, ptr %t, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %6 = load i32, ptr %t, align 4
  %cmp6 = icmp slt i32 %6, 919
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %7 = load i32, ptr %j, align 4
  %cmp9 = icmp slt i32 %7, 320000
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %8 = load i32, ptr %j, align 4
  store i32 %8, ptr %i11, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc23, %for.body10
  %9 = load i32, ptr %i11, align 4
  %10 = load i32, ptr %j, align 4
  %11 = load i32, ptr %blockSize, align 4
  %add = add nsw i32 %10, %11
  %cmp13 = icmp slt i32 %9, %add
  br i1 %cmp13, label %for.body14, label %for.end25

for.body14:                                       ; preds = %for.cond12
  %12 = load i32, ptr %i11, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [320000 x double], ptr %B, i64 0, i64 %idxprom15
  %13 = load double, ptr %arrayidx16, align 8
  %14 = load i32, ptr %i11, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [320000 x double], ptr %C, i64 0, i64 %idxprom17
  %15 = load double, ptr %arrayidx18, align 8
  %add19 = fadd double %13, %15
  %16 = load i32, ptr %i11, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [320000 x double], ptr %A, i64 0, i64 %idxprom20
  %17 = load double, ptr %arrayidx21, align 8
  %add22 = fadd double %17, %add19
  store double %add22, ptr %arrayidx21, align 8
  br label %for.inc23

for.inc23:                                        ; preds = %for.body14
  %18 = load i32, ptr %i11, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, ptr %i11, align 4
  br label %for.cond12, !llvm.loop !7

for.end25:                                        ; preds = %for.cond12
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %19 = load i32, ptr %blockSize, align 4
  %20 = load i32, ptr %j, align 4
  %add27 = add nsw i32 %20, %19
  store i32 %add27, ptr %j, align 4
  br label %for.cond8, !llvm.loop !8

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %21 = load i32, ptr %t, align 4
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, ptr %t, align 4
  br label %for.cond5, !llvm.loop !9

for.end31:                                        ; preds = %for.cond5
  store i32 0, ptr %i32, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc41, %for.end31
  %22 = load i32, ptr %i32, align 4
  %cmp34 = icmp slt i32 %22, 320000
  br i1 %cmp34, label %for.body35, label %for.end43

for.body35:                                       ; preds = %for.cond33
  %23 = load i32, ptr %i32, align 4
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [320000 x double], ptr %A, i64 0, i64 %idxprom36
  %24 = load double, ptr %arrayidx37, align 8
  %cmp38 = fcmp une double %24, 9.190000e+02
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %for.body35
  %25 = load i32, ptr %i32, align 4
  %26 = load i32, ptr %i32, align 4
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [320000 x double], ptr %A, i64 0, i64 %idxprom39
  %27 = load double, ptr %arrayidx40, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %25, double noundef 4.595000e+03, double noundef %27)
  store i32 1, ptr %fail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body35
  br label %for.inc41

for.inc41:                                        ; preds = %if.end
  %28 = load i32, ptr %i32, align 4
  %inc42 = add nsw i32 %28, 1
  store i32 %inc42, ptr %i32, align 4
  br label %for.cond33, !llvm.loop !10

for.end43:                                        ; preds = %for.cond33
  %29 = load i32, ptr %fail, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then44, label %if.else

if.then44:                                        ; preds = %for.end43
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end47

if.else:                                          ; preds = %for.end43
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then44
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
