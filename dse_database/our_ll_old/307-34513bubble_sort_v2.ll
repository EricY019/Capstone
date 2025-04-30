; ModuleID = './code/307-34513bubble_sort_v2.c'
source_filename = "./code/307-34513bubble_sort_v2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%d : \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %big_array = alloca [65535 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %big_array_at_i_old = alloca i32, align 4
  %tmp_i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 65535
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand()
  %mul = mul nsw i32 2, %call
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom
  store i32 %mul, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end21, %for.end
  %3 = load i32, ptr %i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr %i, align 4
  %cmp2 = icmp slt i32 %inc1, 65535
  br i1 %cmp2, label %while.body, label %while.end25

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, ptr %j, align 4
  br label %while.cond3

while.cond3:                                      ; preds = %while.body9, %while.body
  %5 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom4
  %6 = load i32, ptr %arrayidx5, align 4
  %7 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %6, %8
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond3
  %9 = load i32, ptr %j, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %j, align 4
  %tobool = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond3
  %10 = phi i1 [ false, %while.cond3 ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body9, label %while.end

while.body9:                                      ; preds = %land.end
  br label %while.cond3, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %11 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom10
  %12 = load i32, ptr %arrayidx11, align 4
  store i32 %12, ptr %big_array_at_i_old, align 4
  %13 = load i32, ptr %i, align 4
  store i32 %13, ptr %tmp_i, align 4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %while.end
  %14 = load i32, ptr %j, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, ptr %tmp_i, align 4
  %cmp13 = icmp ne i32 %add, %15
  br i1 %cmp13, label %while.body14, label %while.end21

while.body14:                                     ; preds = %while.cond12
  %16 = load i32, ptr %tmp_i, align 4
  %sub15 = sub nsw i32 %16, 1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom16
  %17 = load i32, ptr %arrayidx17, align 4
  %18 = load i32, ptr %tmp_i, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom18
  store i32 %17, ptr %arrayidx19, align 4
  %19 = load i32, ptr %tmp_i, align 4
  %dec20 = add nsw i32 %19, -1
  store i32 %dec20, ptr %tmp_i, align 4
  br label %while.cond12, !llvm.loop !8

while.end21:                                      ; preds = %while.cond12
  %20 = load i32, ptr %big_array_at_i_old, align 4
  %21 = load i32, ptr %j, align 4
  %add22 = add nsw i32 %21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom23
  store i32 %20, ptr %arrayidx24, align 4
  br label %while.cond, !llvm.loop !9

while.end25:                                      ; preds = %while.cond
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %while.end25
  %22 = load i32, ptr %i, align 4
  %cmp27 = icmp slt i32 %22, 65535
  br i1 %cmp27, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond26
  %23 = load i32, ptr %i, align 4
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %23)
  %24 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom30
  %25 = load i32, ptr %arrayidx31, align 4
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %25)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body28
  %26 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %26, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond26, !llvm.loop !10

for.end35:                                        ; preds = %for.cond26
  ret i32 0
}

declare i32 @rand() #1

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
