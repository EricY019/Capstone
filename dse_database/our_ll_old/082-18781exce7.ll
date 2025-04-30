; ModuleID = './code/082-18781exce7.c'
source_filename = "./code/082-18781exce7.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%i \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %P = alloca [151 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 150, ptr %n, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [151 x i32], ptr %P, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 2, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [151 x i32], ptr %P, i64 0, i64 %idxprom4
  %7 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %8 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  store i32 1, ptr %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %if.end
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, ptr %n, align 4
  %cmp8 = icmp sle i32 %mul, %11
  br i1 %cmp8, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond7
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %j, align 4
  %mul10 = mul nsw i32 %12, %13
  %idxprom11 = sext i32 %mul10 to i64
  %arrayidx12 = getelementptr inbounds [151 x i32], ptr %P, i64 0, i64 %idxprom11
  store i32 1, ptr %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %14 = load i32, ptr %j, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, ptr %j, align 4
  br label %for.cond7, !llvm.loop !7

for.end15:                                        ; preds = %for.cond7
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %15 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end18:                                        ; preds = %for.cond1
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
