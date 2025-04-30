; ModuleID = './code/014-2796850.c'
source_filename = "./code/014-2796850.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %q = alloca i32, align 4
  %sum = alloca i32, align 4
  %maxSum = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %prime = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @calloc(i64 noundef 999998, i64 noundef 1) #4
  store ptr %call, ptr %num, align 8
  %call1 = call ptr @malloc(i64 noundef 3999992) #5
  store ptr %call1, ptr %prime, align 8
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %0, %1
  %cmp = icmp slt i32 %mul, 1000000
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %num, align 8
  %3 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %3, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %mul2 = mul nsw i32 %5, %6
  store i32 %mul2, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %7 = load i32, ptr %j, align 4
  %cmp4 = icmp slt i32 %7, 1000000
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %num, align 8
  %9 = load i32, ptr %j, align 4
  %sub6 = sub nsw i32 %9, 2
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %idxprom7
  store i8 1, ptr %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %j, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, ptr %j, align 4
  br label %for.cond3, !llvm.loop !5

for.end:                                          ; preds = %for.cond3
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc9

for.inc9:                                         ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %q, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc23, %for.end10
  %13 = load i32, ptr %i, align 4
  %cmp12 = icmp slt i32 %13, 1000000
  br i1 %cmp12, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond11
  %14 = load ptr, ptr %num, align 8
  %15 = load i32, ptr %i, align 4
  %sub14 = sub nsw i32 %15, 2
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %14, i64 %idxprom15
  %16 = load i8, ptr %arrayidx16, align 1
  %tobool17 = icmp ne i8 %16, 0
  br i1 %tobool17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %for.body13
  %17 = load i32, ptr %i, align 4
  %18 = load ptr, ptr %prime, align 8
  %19 = load i32, ptr %q, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %18, i64 %idxprom19
  store i32 %17, ptr %arrayidx20, align 4
  %20 = load i32, ptr %q, align 4
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, ptr %q, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %for.body13
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %21 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond11, !llvm.loop !8

for.end25:                                        ; preds = %for.cond11
  store i32 0, ptr %maxLen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc52, %for.end25
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %q, align 4
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body28, label %for.end54

for.body28:                                       ; preds = %for.cond26
  store i32 0, ptr %sum, align 4
  %24 = load i32, ptr %i, align 4
  store i32 %24, ptr %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc49, %for.body28
  %25 = load i32, ptr %j, align 4
  %26 = load i32, ptr %q, align 4
  %cmp30 = icmp slt i32 %25, %26
  br i1 %cmp30, label %for.body31, label %for.end51

for.body31:                                       ; preds = %for.cond29
  %27 = load ptr, ptr %prime, align 8
  %28 = load i32, ptr %j, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %27, i64 %idxprom32
  %29 = load i32, ptr %arrayidx33, align 4
  %30 = load i32, ptr %sum, align 4
  %add34 = add nsw i32 %30, %29
  store i32 %add34, ptr %sum, align 4
  %31 = load i32, ptr %sum, align 4
  %cmp35 = icmp sge i32 %31, 1000000
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body31
  br label %for.end51

if.end37:                                         ; preds = %for.body31
  %32 = load ptr, ptr %num, align 8
  %33 = load i32, ptr %sum, align 4
  %sub38 = sub nsw i32 %33, 2
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %32, i64 %idxprom39
  %34 = load i8, ptr %arrayidx40, align 1
  %tobool41 = icmp ne i8 %34, 0
  br i1 %tobool41, label %if.end48, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end37
  %35 = load i32, ptr %maxLen, align 4
  %36 = load i32, ptr %j, align 4
  %37 = load i32, ptr %i, align 4
  %sub42 = sub nsw i32 %36, %37
  %add43 = add nsw i32 %sub42, 1
  %cmp44 = icmp slt i32 %35, %add43
  br i1 %cmp44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %land.lhs.true
  %38 = load i32, ptr %j, align 4
  %39 = load i32, ptr %i, align 4
  %sub46 = sub nsw i32 %38, %39
  %add47 = add nsw i32 %sub46, 1
  store i32 %add47, ptr %maxLen, align 4
  %40 = load i32, ptr %sum, align 4
  store i32 %40, ptr %maxSum, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true, %if.end37
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %41 = load i32, ptr %j, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, ptr %j, align 4
  br label %for.cond29, !llvm.loop !9

for.end51:                                        ; preds = %if.then36, %for.cond29
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %42 = load i32, ptr %i, align 4
  %inc53 = add nsw i32 %42, 1
  store i32 %inc53, ptr %i, align 4
  br label %for.cond26, !llvm.loop !10

for.end54:                                        ; preds = %for.cond26
  %43 = load i32, ptr %maxSum, align 4
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %43)
  ret i32 0
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0,1) }
attributes #5 = { allocsize(0) }

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
