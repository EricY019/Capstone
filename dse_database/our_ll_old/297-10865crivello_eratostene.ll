; ModuleID = './code/297-10865crivello_eratostene.c'
source_filename = "./code/297-10865crivello_eratostene.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"%4d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %arr = alloca [10000 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 2, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %3, 10000
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load i32, ptr %i, align 4
  store i32 %6, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %if.then
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %7, %8
  %cmp7 = icmp slt i32 %mul, 10000
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %j, align 4
  %mul9 = mul nsw i32 %9, %10
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom10
  store i32 0, ptr %arrayidx11, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %11 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond6, !llvm.loop !7

for.end14:                                        ; preds = %for.cond6
  br label %if.end

if.end:                                           ; preds = %for.end14, %for.body3
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end17:                                        ; preds = %for.cond1
  store i32 2, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc26, %for.end17
  %13 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %13, 10000
  br i1 %cmp19, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond18
  %14 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom21
  %15 = load i32, ptr %arrayidx22, align 4
  %tobool23 = icmp ne i32 %15, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body20
  %16 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %16)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.body20
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %17 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond18, !llvm.loop !9

for.end28:                                        ; preds = %for.cond18
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
