; ModuleID = './code/112-17224philosopher_simple.c'
source_filename = "./code/112-17224philosopher_simple.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@room = global i32 0, align 4
@chopstick = global [5 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"\0APhilosopher %d has entered room\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\0APhilosopher %d has finished eating\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\0APhilosopher %d is eating\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [5 x i32], align 4
  %tid = alloca [5 x ptr], align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @sem_init(ptr noundef @room, i32 noundef 0, i32 noundef 4)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr @chopstick, i64 0, i64 %idxprom
  %call1 = call i32 @sem_init(ptr noundef %arrayidx, i32 noundef 0, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %3, 5
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 %idxprom5
  store i32 %4, ptr %arrayidx6, align 4
  %6 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [5 x ptr], ptr %tid, i64 0, i64 %idxprom7
  %7 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 %idxprom9
  %call11 = call i32 @pthread_create(ptr noundef %arrayidx8, ptr noundef null, ptr noundef @philosopher, ptr noundef %arrayidx10)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4
  %8 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %8, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end14:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc21, %for.end14
  %9 = load i32, ptr %i, align 4
  %cmp16 = icmp slt i32 %9, 5
  br i1 %cmp16, label %for.body17, label %for.end23

for.body17:                                       ; preds = %for.cond15
  %10 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [5 x ptr], ptr %tid, i64 0, i64 %idxprom18
  %11 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 @"\01_pthread_join"(ptr noundef %11, ptr noundef null)
  br label %for.inc21

for.inc21:                                        ; preds = %for.body17
  %12 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %12, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond15, !llvm.loop !8

for.end23:                                        ; preds = %for.cond15
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @philosopher(ptr noundef %num) #0 {
entry:
  %retval = alloca ptr, align 8
  %num.addr = alloca ptr, align 8
  %phil = alloca i32, align 4
  store ptr %num, ptr %num.addr, align 8
  %0 = load ptr, ptr %num.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %phil, align 4
  %call = call i32 @"\01_sem_wait"(ptr noundef @room)
  %2 = load i32, ptr %phil, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load i32, ptr %phil, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr @chopstick, i64 0, i64 %idxprom
  %call2 = call i32 @"\01_sem_wait"(ptr noundef %arrayidx)
  %4 = load i32, ptr %phil, align 4
  %add = add nsw i32 %4, 1
  %rem = srem i32 %add, 5
  %idxprom3 = sext i32 %rem to i64
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr @chopstick, i64 0, i64 %idxprom3
  %call5 = call i32 @"\01_sem_wait"(ptr noundef %arrayidx4)
  %5 = load i32, ptr %phil, align 4
  call void @eat(i32 noundef %5)
  %call6 = call i32 @"\01_sleep"(i32 noundef 2)
  %6 = load i32, ptr %phil, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  %7 = load i32, ptr %phil, align 4
  %add8 = add nsw i32 %7, 1
  %rem9 = srem i32 %add8, 5
  %idxprom10 = sext i32 %rem9 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr @chopstick, i64 0, i64 %idxprom10
  %call12 = call i32 @sem_post(ptr noundef %arrayidx11)
  %8 = load i32, ptr %phil, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [5 x i32], ptr @chopstick, i64 0, i64 %idxprom13
  %call15 = call i32 @sem_post(ptr noundef %arrayidx14)
  %call16 = call i32 @sem_post(ptr noundef @room)
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @"\01_sem_wait"(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @eat(i32 noundef %phil) #0 {
entry:
  %phil.addr = alloca i32, align 4
  store i32 %phil, ptr %phil.addr, align 4
  %0 = load i32, ptr %phil.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %0)
  ret void
}

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @sem_post(ptr noundef) #1

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
