; ModuleID = './code/199-1286thdm.c'
source_filename = "./code/199-1286thdm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@loop = global i32 0, align 4
@cnt = global [4 x i32] zeroinitializer, align 4
@t = global [4 x ptr] zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"thread %i runs: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @thread_code(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = ptrtoint ptr %0 to i32
  store i32 %1, ptr %idx, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr @loop, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @cnt, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  %call = call i32 @sched_yield()
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

declare i32 @sched_yield() #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @cnt, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 1, ptr @loop, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %3, 4
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr @t, i64 0, i64 %idxprom4
  %5 = load i32, ptr %i, align 4
  %conv = sext i32 %5 to i64
  %6 = inttoptr i64 %conv to ptr
  %call = call i32 @pthread_create(ptr noundef %arrayidx5, ptr noundef null, ptr noundef @thread_code, ptr noundef %6)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %7 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end8:                                         ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc14, %for.end8
  %8 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %8, 1
  br i1 %cmp10, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond9
  %call13 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body12
  %9 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %9, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond9, !llvm.loop !9

for.end16:                                        ; preds = %for.cond9
  store i32 0, ptr @loop, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc24, %for.end16
  %10 = load i32, ptr %i, align 4
  %cmp18 = icmp slt i32 %10, 4
  br i1 %cmp18, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.cond17
  %11 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [4 x ptr], ptr @t, i64 0, i64 %idxprom21
  %12 = load ptr, ptr %arrayidx22, align 8
  %call23 = call i32 @"\01_pthread_join"(ptr noundef %12, ptr noundef null)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20
  %13 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %13, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond17, !llvm.loop !10

for.end26:                                        ; preds = %for.cond17
  store i32 0, ptr %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc34, %for.end26
  %14 = load i32, ptr %i, align 4
  %cmp28 = icmp slt i32 %14, 4
  br i1 %cmp28, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond27
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds [4 x i32], ptr @cnt, i64 0, i64 %idxprom31
  %17 = load i32, ptr %arrayidx32, align 4
  %div = sdiv i32 %17, 1
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15, i32 noundef %div)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %18 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %18, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond27, !llvm.loop !11

for.end36:                                        ; preds = %for.cond27
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
