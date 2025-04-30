; ModuleID = './code/389-3355choose_idea6_other1.c'
source_filename = "./code/389-3355choose_idea6_other1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@C = global [1001 x [1001 x i32]] zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @initial() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1001 x i32], ptr @C, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [1001 x [1001 x i32]], ptr @C, i64 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [1001 x i32], ptr %arrayidx2, i64 0, i64 0
  store i32 1, ptr %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc27, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp5 = icmp sle i32 %4, 1000
  br i1 %cmp5, label %for.body6, label %for.end29

for.body6:                                        ; preds = %for.cond4
  store i32 1, ptr %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc24, %for.body6
  %5 = load i32, ptr %j, align 4
  %cmp8 = icmp sle i32 %5, 1000
  br i1 %cmp8, label %for.body9, label %for.end26

for.body9:                                        ; preds = %for.cond7
  %6 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [1001 x [1001 x i32]], ptr @C, i64 0, i64 %idxprom10
  %7 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [1001 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  %8 = load i32, ptr %arrayidx13, align 4
  %9 = load i32, ptr %i, align 4
  %sub14 = sub nsw i32 %9, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [1001 x [1001 x i32]], ptr @C, i64 0, i64 %idxprom15
  %10 = load i32, ptr %j, align 4
  %sub17 = sub nsw i32 %10, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds [1001 x i32], ptr %arrayidx16, i64 0, i64 %idxprom18
  %11 = load i32, ptr %arrayidx19, align 4
  %add = add nsw i32 %8, %11
  %12 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [1001 x [1001 x i32]], ptr @C, i64 0, i64 %idxprom20
  %13 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [1001 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  store i32 %add, ptr %arrayidx23, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body9
  %14 = load i32, ptr %j, align 4
  %inc25 = add nsw i32 %14, 1
  store i32 %inc25, ptr %j, align 4
  br label %for.cond7, !llvm.loop !7

for.end26:                                        ; preds = %for.cond7
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %15 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %15, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond4, !llvm.loop !8

for.end29:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @choose(i32 noundef %n, i32 noundef %k) #0 {
entry:
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1001 x [1001 x i32]], ptr @C, i64 0, i64 %idxprom
  %1 = load i32, ptr %k.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [1001 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %2 = load i32, ptr %arrayidx2, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @initial()
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %k, align 4
  %2 = load i32, ptr %n, align 4
  %cmp2 = icmp sle i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %n, align 4
  %4 = load i32, ptr %k, align 4
  %call = call i32 @choose(i32 noundef %3, i32 noundef %4)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %6 = load i32, ptr %n, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, ptr %n, align 4
  br label %for.cond, !llvm.loop !10

for.end8:                                         ; preds = %for.cond
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
