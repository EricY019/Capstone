; ModuleID = './code/183-27420pe23.c'
source_filename = "./code/183-27420pe23.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@euler = global i64 0, align 8
@abundantArray = global [28125 x i32] zeroinitializer, align 4
@arrayMarked = global [28125 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"euler = %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @abundant(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %flag = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %call = call i64 @sumDivisors(i32 noundef %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %temp, align 4
  %1 = load i32, ptr %temp, align 4
  %2 = load i32, ptr %a.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %flag, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %flag, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @sumDivisors(i32 noundef %number) #0 {
entry:
  %number.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  store i32 %number, ptr %number.addr, align 4
  store i32 1, ptr %i, align 4
  store i64 0, ptr %sum, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %number.addr, align 4
  %div = sdiv i32 %1, 2
  %cmp = icmp sle i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %number.addr, align 4
  %3 = load i32, ptr %i, align 4
  %rem = srem i32 %2, %3
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, ptr %sum, align 8
  %add = add i64 %5, %conv
  store i64 %add, ptr %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %sum, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %counter, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 28125
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call = call i32 @abundant(i32 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %counter, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [28125 x i32], ptr @abundantArray, i64 0, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4
  %4 = load i32, ptr %counter, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc1 = add nsw i32 %5, 1
  store i32 %inc1, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc36, %for.end
  %6 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %6, 28125
  br i1 %cmp3, label %for.body4, label %for.end38

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [28125 x i32], ptr @abundantArray, i64 0, i64 %idxprom5
  %8 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body4
  br label %for.end38

if.end9:                                          ; preds = %for.body4
  store i32 0, ptr %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc33, %if.end9
  %9 = load i32, ptr %j, align 4
  %cmp11 = icmp slt i32 %9, 28125
  br i1 %cmp11, label %for.body12, label %for.end35

for.body12:                                       ; preds = %for.cond10
  %10 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [28125 x i32], ptr @abundantArray, i64 0, i64 %idxprom13
  %11 = load i32, ptr %arrayidx14, align 4
  %cmp15 = icmp eq i32 %11, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body12
  br label %for.end35

if.else:                                          ; preds = %for.body12
  %12 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [28125 x i32], ptr @abundantArray, i64 0, i64 %idxprom17
  %13 = load i32, ptr %arrayidx18, align 4
  %14 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [28125 x i32], ptr @abundantArray, i64 0, i64 %idxprom19
  %15 = load i32, ptr %arrayidx20, align 4
  %add = add nsw i32 %13, %15
  %cmp21 = icmp sle i32 %add, 28125
  br i1 %cmp21, label %if.then22, label %if.else30

if.then22:                                        ; preds = %if.else
  %16 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [28125 x i32], ptr @abundantArray, i64 0, i64 %idxprom23
  %17 = load i32, ptr %arrayidx24, align 4
  %18 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [28125 x i32], ptr @abundantArray, i64 0, i64 %idxprom25
  %19 = load i32, ptr %arrayidx26, align 4
  %add27 = add nsw i32 %17, %19
  store i32 %add27, ptr %temp, align 4
  %20 = load i32, ptr %temp, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [28125 x i32], ptr @arrayMarked, i64 0, i64 %idxprom28
  store i32 1, ptr %arrayidx29, align 4
  br label %if.end31

if.else30:                                        ; preds = %if.else
  br label %for.end35

if.end31:                                         ; preds = %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %21 = load i32, ptr %j, align 4
  %inc34 = add nsw i32 %21, 1
  store i32 %inc34, ptr %j, align 4
  br label %for.cond10, !llvm.loop !8

for.end35:                                        ; preds = %if.else30, %if.then16, %for.cond10
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %22 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %22, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond2, !llvm.loop !9

for.end38:                                        ; preds = %if.then8, %for.cond2
  store i32 4, ptr %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc48, %for.end38
  %23 = load i32, ptr %i, align 4
  %cmp40 = icmp slt i32 %23, 28125
  br i1 %cmp40, label %for.body41, label %for.end50

for.body41:                                       ; preds = %for.cond39
  %24 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %24 to i64
  %arrayidx43 = getelementptr inbounds [28125 x i32], ptr @arrayMarked, i64 0, i64 %idxprom42
  %25 = load i32, ptr %arrayidx43, align 4
  %cmp44 = icmp eq i32 %25, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %for.body41
  %26 = load i32, ptr %i, align 4
  %conv = sext i32 %26 to i64
  %27 = load i64, ptr @euler, align 8
  %add46 = add i64 %27, %conv
  store i64 %add46, ptr @euler, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.body41
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %28 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %28, 1
  store i32 %inc49, ptr %i, align 4
  br label %for.cond39, !llvm.loop !10

for.end50:                                        ; preds = %for.cond39
  %29 = load i64, ptr @euler, align 8
  %add51 = add i64 %29, 6
  store i64 %add51, ptr @euler, align 8
  %30 = load i64, ptr @euler, align 8
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %30)
  ret i32 0
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
