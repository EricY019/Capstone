; ModuleID = './code/340-21526task_3.c'
source_filename = "./code/340-21526task_3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"(%d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  %twinPrimes = alloca [20 x i32], align 4
  %br = alloca i32, align 4
  %simplNum = alloca [50 x i32], align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %a, align 4
  store i32 2, ptr %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, ptr %num, align 4
  %cmp = icmp sle i32 %0, 300
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  store i32 2, ptr %br, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %br, align 4
  %2 = load i32, ptr %num, align 4
  %cmp2 = icmp sle i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %num, align 4
  %4 = load i32, ptr %br, align 4
  %rem = srem i32 %3, %4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.end

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %br, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %br, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond1
  %6 = load i32, ptr %br, align 4
  %7 = load i32, ptr %num, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %if.then6, label %if.end33

if.then6:                                         ; preds = %for.end
  %8 = load i32, ptr %num, align 4
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [50 x i32], ptr %simplNum, i64 0, i64 %idxprom
  store i32 %8, ptr %arrayidx, align 4
  %10 = load i32, ptr %i, align 4
  %add7 = add nsw i32 %10, 1
  store i32 %add7, ptr %i, align 4
  %11 = load i32, ptr %a, align 4
  %cmp8 = icmp sgt i32 %11, 18
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  br label %for.end36

if.end10:                                         ; preds = %if.then6
  %12 = load i32, ptr %i, align 4
  %cmp11 = icmp sgt i32 %12, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end10
  %13 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [50 x i32], ptr %simplNum, i64 0, i64 %idxprom12
  %14 = load i32, ptr %arrayidx13, align 4
  %15 = load i32, ptr %i, align 4
  %sub14 = sub nsw i32 %15, 2
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [50 x i32], ptr %simplNum, i64 0, i64 %idxprom15
  %16 = load i32, ptr %arrayidx16, align 4
  %sub17 = sub nsw i32 %14, %16
  %cmp18 = icmp eq i32 %sub17, 2
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %land.lhs.true
  %17 = load i32, ptr %i, align 4
  %sub20 = sub nsw i32 %17, 2
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds [50 x i32], ptr %simplNum, i64 0, i64 %idxprom21
  %18 = load i32, ptr %arrayidx22, align 4
  %19 = load i32, ptr %a, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [20 x i32], ptr %twinPrimes, i64 0, i64 %idxprom23
  store i32 %18, ptr %arrayidx24, align 4
  %20 = load i32, ptr %i, align 4
  %sub25 = sub nsw i32 %20, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [50 x i32], ptr %simplNum, i64 0, i64 %idxprom26
  %21 = load i32, ptr %arrayidx27, align 4
  %22 = load i32, ptr %a, align 4
  %add28 = add nsw i32 %22, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [20 x i32], ptr %twinPrimes, i64 0, i64 %idxprom29
  store i32 %21, ptr %arrayidx30, align 4
  %23 = load i32, ptr %a, align 4
  %add31 = add nsw i32 %23, 2
  store i32 %add31, ptr %a, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %land.lhs.true, %if.end10
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %for.end
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %24 = load i32, ptr %num, align 4
  %add35 = add nsw i32 %24, 1
  store i32 %add35, ptr %num, align 4
  br label %for.cond, !llvm.loop !7

for.end36:                                        ; preds = %if.then9, %for.cond
  store i32 0, ptr %br, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc45, %for.end36
  %25 = load i32, ptr %br, align 4
  %26 = load i32, ptr %a, align 4
  %cmp38 = icmp slt i32 %25, %26
  br i1 %cmp38, label %for.body39, label %for.end47

for.body39:                                       ; preds = %for.cond37
  %27 = load i32, ptr %br, align 4
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [20 x i32], ptr %twinPrimes, i64 0, i64 %idxprom40
  %28 = load i32, ptr %arrayidx41, align 4
  %29 = load i32, ptr %br, align 4
  %add42 = add nsw i32 %29, 1
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [20 x i32], ptr %twinPrimes, i64 0, i64 %idxprom43
  %30 = load i32, ptr %arrayidx44, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %28, i32 noundef %30)
  br label %for.inc45

for.inc45:                                        ; preds = %for.body39
  %31 = load i32, ptr %br, align 4
  %add46 = add nsw i32 %31, 2
  store i32 %add46, ptr %br, align 4
  br label %for.cond37, !llvm.loop !8

for.end47:                                        ; preds = %for.cond37
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
