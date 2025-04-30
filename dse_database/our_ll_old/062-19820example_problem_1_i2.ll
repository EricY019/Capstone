; ModuleID = './code/062-19820example_problem_1_i2.c'
source_filename = "./code/062-19820example_problem_1_i2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d+%d=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %A = alloca [100 x i32], align 4
  %B = alloca [100 x i32], align 4
  %An = alloca i32, align 4
  %Bn = alloca i32, align 4
  %i = alloca i32, align 4
  %X = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 4, ptr %An, align 4
  %arrayidx = getelementptr inbounds [100 x i32], ptr %A, i64 0, i64 0
  store i32 6, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %A, i64 0, i64 1
  store i32 4, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %A, i64 0, i64 2
  store i32 3, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [100 x i32], ptr %A, i64 0, i64 3
  store i32 2, ptr %arrayidx3, align 4
  store i32 5, ptr %Bn, align 4
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %B, i64 0, i64 0
  store i32 2, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %B, i64 0, i64 1
  store i32 3, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %B, i64 0, i64 2
  store i32 4, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %B, i64 0, i64 3
  store i32 6, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %B, i64 0, i64 4
  store i32 9, ptr %arrayidx8, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %An, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %A, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx9, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc17, %for.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %Bn, align 4
  %cmp12 = icmp slt i32 %5, %6
  br i1 %cmp12, label %for.body13, label %for.end19

for.body13:                                       ; preds = %for.cond11
  %7 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %B, i64 0, i64 %idxprom14
  %8 = load i32, ptr %arrayidx15, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body13
  %9 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %9, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond11, !llvm.loop !7

for.end19:                                        ; preds = %for.cond11
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 8, ptr %X, align 4
  store i32 0, ptr %i, align 4
  %10 = load i32, ptr %Bn, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end19
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %An, align 4
  %cmp21 = icmp slt i32 %11, %12
  br i1 %cmp21, label %while.body, label %while.end38

while.body:                                       ; preds = %while.cond
  br label %while.cond22

while.cond22:                                     ; preds = %while.body29, %while.body
  %13 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %A, i64 0, i64 %idxprom23
  %14 = load i32, ptr %arrayidx24, align 4
  %15 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %B, i64 0, i64 %idxprom25
  %16 = load i32, ptr %arrayidx26, align 4
  %add = add nsw i32 %14, %16
  %17 = load i32, ptr %X, align 4
  %cmp27 = icmp sgt i32 %add, %17
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond22
  %18 = load i32, ptr %j, align 4
  %cmp28 = icmp sgt i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond22
  %19 = phi i1 [ false, %while.cond22 ], [ %cmp28, %land.rhs ]
  br i1 %19, label %while.body29, label %while.end

while.body29:                                     ; preds = %land.end
  %20 = load i32, ptr %j, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond22, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %21 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %A, i64 0, i64 %idxprom30
  %22 = load i32, ptr %arrayidx31, align 4
  %23 = load i32, ptr %j, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %B, i64 0, i64 %idxprom32
  %24 = load i32, ptr %arrayidx33, align 4
  %add34 = add nsw i32 %22, %24
  %25 = load i32, ptr %X, align 4
  %cmp35 = icmp eq i32 %add34, %25
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %j, align 4
  %28 = load i32, ptr %X, align 4
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %26, i32 noundef %27, i32 noundef %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %29 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, ptr %i, align 4
  br label %while.cond, !llvm.loop !9

while.end38:                                      ; preds = %while.cond
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
