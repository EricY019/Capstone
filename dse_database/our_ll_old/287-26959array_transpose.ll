; ModuleID = './code/287-26959array_transpose.c'
source_filename = "./code/287-26959array_transpose.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c" %5d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Contents of nums:\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\0ATransposed array:\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dump_array(ptr noundef %nums) #0 {
entry:
  %nums.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %nums.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %j, align 4
  %idxprom4 = zext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc8 = add i32 %7, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end9:                                         ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nums = alloca [4 x [4 x i32]], align 4
  %another = alloca [4 x [4 x i32]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %mul = mul i32 %2, 4
  %3 = load i32, ptr %j, align 4
  %add = add i32 %mul, %3
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i32]], ptr %nums, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  store i32 %add, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc7 = add i32 %7, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end8:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], ptr %nums, i64 0, i64 0
  call void @dump_array(ptr noundef %arraydecay)
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc26, %for.end8
  %8 = load i32, ptr %i, align 4
  %cmp10 = icmp ult i32 %8, 4
  br i1 %cmp10, label %for.body11, label %for.end28

for.body11:                                       ; preds = %for.cond9
  store i32 0, ptr %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc23, %for.body11
  %9 = load i32, ptr %j, align 4
  %cmp13 = icmp ult i32 %9, 4
  br i1 %cmp13, label %for.body14, label %for.end25

for.body14:                                       ; preds = %for.cond12
  %10 = load i32, ptr %i, align 4
  %idxprom15 = zext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [4 x [4 x i32]], ptr %nums, i64 0, i64 %idxprom15
  %11 = load i32, ptr %j, align 4
  %idxprom17 = zext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32], ptr %arrayidx16, i64 0, i64 %idxprom17
  %12 = load i32, ptr %arrayidx18, align 4
  %13 = load i32, ptr %j, align 4
  %idxprom19 = zext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [4 x [4 x i32]], ptr %another, i64 0, i64 %idxprom19
  %14 = load i32, ptr %i, align 4
  %idxprom21 = zext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [4 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  store i32 %12, ptr %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body14
  %15 = load i32, ptr %j, align 4
  %inc24 = add i32 %15, 1
  store i32 %inc24, ptr %j, align 4
  br label %for.cond12, !llvm.loop !10

for.end25:                                        ; preds = %for.cond12
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %16 = load i32, ptr %i, align 4
  %inc27 = add i32 %16, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond9, !llvm.loop !11

for.end28:                                        ; preds = %for.cond9
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %arraydecay30 = getelementptr inbounds [4 x [4 x i32]], ptr %another, i64 0, i64 0
  call void @dump_array(ptr noundef %arraydecay30)
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
