; ModuleID = './code/023-30037pe18.c'
source_filename = "./code/023-30037pe18.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@triangle = global <{ <{ i32, [14 x i32] }>, <{ i32, i32, [13 x i32] }>, <{ i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [8 x i32] }>, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32] }> <{ <{ i32, [14 x i32] }> <{ i32 75, [14 x i32] zeroinitializer }>, <{ i32, i32, [13 x i32] }> <{ i32 95, i32 64, [13 x i32] zeroinitializer }>, <{ i32, i32, i32, [12 x i32] }> <{ i32 17, i32 47, i32 82, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [11 x i32] }> <{ i32 18, i32 35, i32 87, i32 10, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 20, i32 4, i32 82, i32 47, i32 65, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 19, i32 1, i32 23, i32 75, i32 3, i32 34, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [8 x i32] }> <{ i32 88, i32 2, i32 77, i32 73, i32 7, i32 63, i32 67, [8 x i32] zeroinitializer }>, [15 x i32] [i32 99, i32 65, i32 4, i32 28, i32 6, i32 16, i32 70, i32 92, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [15 x i32] [i32 41, i32 41, i32 26, i32 56, i32 83, i32 40, i32 80, i32 70, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [15 x i32] [i32 41, i32 48, i32 72, i32 33, i32 47, i32 32, i32 37, i32 16, i32 94, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0], [15 x i32] [i32 53, i32 71, i32 44, i32 65, i32 25, i32 43, i32 91, i32 52, i32 97, i32 51, i32 14, i32 0, i32 0, i32 0, i32 0], [15 x i32] [i32 70, i32 11, i32 33, i32 28, i32 77, i32 73, i32 17, i32 78, i32 39, i32 68, i32 17, i32 57, i32 0, i32 0, i32 0], [15 x i32] [i32 91, i32 71, i32 52, i32 38, i32 17, i32 14, i32 91, i32 43, i32 58, i32 50, i32 27, i32 29, i32 48, i32 0, i32 0], [15 x i32] [i32 63, i32 66, i32 4, i32 68, i32 89, i32 53, i32 67, i32 30, i32 73, i32 16, i32 69, i32 87, i32 40, i32 31, i32 0], [15 x i32] [i32 4, i32 62, i32 98, i32 27, i32 23, i32 9, i32 70, i32 98, i32 73, i32 93, i32 38, i32 53, i32 60, i32 4, i32 23] }>, align 4
@.str = private unnamed_addr constant [18 x i8] c"Comparing row %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Comparing column %d against %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"row 1 = %d\0Arow 1, column 1 = %d\0A\00", align 1
@euler = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @trisum() #0 {
entry:
  %row = alloca i32, align 4
  %column = alloca i32, align 4
  store i32 14, ptr %row, align 4
  store i32 0, ptr %column, align 4
  store i32 14, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, ptr %row, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %row, align 4
  %add = add nsw i32 %1, 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add)
  store i32 0, ptr %column, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %column, align 4
  %3 = load i32, ptr %row, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %column, align 4
  %5 = load i32, ptr %column, align 4
  %add4 = add nsw i32 %5, 1
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4, i32 noundef %add4)
  %6 = load i32, ptr %row, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [15 x [15 x i32]], ptr @triangle, i64 0, i64 %idxprom
  %7 = load i32, ptr %column, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [15 x i32], ptr %arrayidx, i64 0, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4
  %9 = load i32, ptr %row, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [15 x [15 x i32]], ptr @triangle, i64 0, i64 %idxprom8
  %10 = load i32, ptr %column, align 4
  %add10 = add nsw i32 %10, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [15 x i32], ptr %arrayidx9, i64 0, i64 %idxprom11
  %11 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp sge i32 %8, %11
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %12 = load i32, ptr %row, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [15 x [15 x i32]], ptr @triangle, i64 0, i64 %idxprom14
  %13 = load i32, ptr %column, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [15 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4
  %15 = load i32, ptr %row, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds [15 x [15 x i32]], ptr @triangle, i64 0, i64 %idxprom18
  %16 = load i32, ptr %column, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [15 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4
  %add22 = add nsw i32 %17, %14
  store i32 %add22, ptr %arrayidx21, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  %18 = load i32, ptr %row, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [15 x [15 x i32]], ptr @triangle, i64 0, i64 %idxprom23
  %19 = load i32, ptr %column, align 4
  %add25 = add nsw i32 %19, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [15 x i32], ptr %arrayidx24, i64 0, i64 %idxprom26
  %20 = load i32, ptr %arrayidx27, align 4
  %21 = load i32, ptr %row, align 4
  %sub28 = sub nsw i32 %21, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [15 x [15 x i32]], ptr @triangle, i64 0, i64 %idxprom29
  %22 = load i32, ptr %column, align 4
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [15 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  %23 = load i32, ptr %arrayidx32, align 4
  %add33 = add nsw i32 %23, %20
  store i32 %add33, ptr %arrayidx32, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, ptr %column, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %column, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %25 = load i32, ptr %row, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %row, align 4
  br label %for.cond, !llvm.loop !7

for.end35:                                        ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr @triangle, align 4
  %1 = load i32, ptr getelementptr inbounds ([15 x [15 x i32]], ptr @triangle, i64 0, i64 1), align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %0, i32 noundef %1)
  call void @trisum()
  %2 = load i32, ptr @triangle, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr @euler, align 8
  %3 = load i64, ptr @euler, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %3)
  ret i32 0
}

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
