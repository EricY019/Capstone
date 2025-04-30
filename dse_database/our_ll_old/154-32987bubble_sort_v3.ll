; ModuleID = './code/154-32987bubble_sort_v3.c'
source_filename = "./code/154-32987bubble_sort_v3.c"
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
  %at_i = alloca i32, align 4
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

while.cond:                                       ; preds = %while.end, %for.end
  %3 = load i32, ptr %i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr %i, align 4
  %cmp2 = icmp slt i32 %inc1, 65535
  br i1 %cmp2, label %while.body, label %while.end18

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, ptr %j, align 4
  %5 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom3
  %6 = load i32, ptr %arrayidx4, align 4
  store i32 %6, ptr %at_i, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %while.body10, %while.body
  %7 = load i32, ptr %j, align 4
  %cmp6 = icmp sgt i32 %7, -1
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond5
  %8 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom7
  %9 = load i32, ptr %arrayidx8, align 4
  %10 = load i32, ptr %at_i, align 4
  %cmp9 = icmp sgt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond5
  %11 = phi i1 [ false, %while.cond5 ], [ %cmp9, %land.rhs ]
  br i1 %11, label %while.body10, label %while.end

while.body10:                                     ; preds = %land.end
  %12 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom11
  %13 = load i32, ptr %arrayidx12, align 4
  %14 = load i32, ptr %j, align 4
  %add = add nsw i32 %14, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom13
  store i32 %13, ptr %arrayidx14, align 4
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond5, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %16 = load i32, ptr %at_i, align 4
  %17 = load i32, ptr %j, align 4
  %add15 = add nsw i32 %17, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom16
  store i32 %16, ptr %arrayidx17, align 4
  br label %while.cond, !llvm.loop !8

while.end18:                                      ; preds = %while.cond
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %while.end18
  %18 = load i32, ptr %i, align 4
  %cmp20 = icmp slt i32 %18, 65535
  br i1 %cmp20, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond19
  %19 = load i32, ptr %i, align 4
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %19)
  %20 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [65535 x i32], ptr %big_array, i64 0, i64 %idxprom23
  %21 = load i32, ptr %arrayidx24, align 4
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %22 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond19, !llvm.loop !9

for.end28:                                        ; preds = %for.cond19
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
