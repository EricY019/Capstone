; ModuleID = './code/002-1248302mutualExclusionWithSem.c'
source_filename = "./code/002-1248302mutualExclusionWithSem.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.s_threadParams = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Threads finished. Main going to finish \0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"thread %d in Critical Section\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"thread %d going out from Critical Section\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %idThreads = alloca [3 x ptr], align 8
  %theSemaphore = alloca i32, align 4
  %params = alloca [3 x %struct.s_threadParams], align 8
  store i32 0, ptr %retval, align 4
  %pTheSemaphore = getelementptr inbounds %struct.s_threadParams, ptr %params, i32 0, i32 0
  store ptr %theSemaphore, ptr %pTheSemaphore, align 8
  %threadNumber = getelementptr inbounds %struct.s_threadParams, ptr %params, i32 0, i32 1
  store i32 0, ptr %threadNumber, align 8
  %sleepTime = getelementptr inbounds %struct.s_threadParams, ptr %params, i32 0, i32 2
  store i32 0, ptr %sleepTime, align 4
  %nLoops = getelementptr inbounds %struct.s_threadParams, ptr %params, i32 0, i32 3
  store i32 10, ptr %nLoops, align 8
  %arrayinit.element = getelementptr inbounds %struct.s_threadParams, ptr %params, i64 1
  %pTheSemaphore1 = getelementptr inbounds %struct.s_threadParams, ptr %arrayinit.element, i32 0, i32 0
  store ptr %theSemaphore, ptr %pTheSemaphore1, align 8
  %threadNumber2 = getelementptr inbounds %struct.s_threadParams, ptr %arrayinit.element, i32 0, i32 1
  store i32 1, ptr %threadNumber2, align 8
  %sleepTime3 = getelementptr inbounds %struct.s_threadParams, ptr %arrayinit.element, i32 0, i32 2
  store i32 3, ptr %sleepTime3, align 4
  %nLoops4 = getelementptr inbounds %struct.s_threadParams, ptr %arrayinit.element, i32 0, i32 3
  store i32 2, ptr %nLoops4, align 8
  %arrayinit.element5 = getelementptr inbounds %struct.s_threadParams, ptr %params, i64 2
  %pTheSemaphore6 = getelementptr inbounds %struct.s_threadParams, ptr %arrayinit.element5, i32 0, i32 0
  store ptr %theSemaphore, ptr %pTheSemaphore6, align 8
  %threadNumber7 = getelementptr inbounds %struct.s_threadParams, ptr %arrayinit.element5, i32 0, i32 1
  store i32 2, ptr %threadNumber7, align 8
  %sleepTime8 = getelementptr inbounds %struct.s_threadParams, ptr %arrayinit.element5, i32 0, i32 2
  store i32 1, ptr %sleepTime8, align 4
  %nLoops9 = getelementptr inbounds %struct.s_threadParams, ptr %arrayinit.element5, i32 0, i32 3
  store i32 4, ptr %nLoops9, align 8
  %call = call i32 @sem_init(ptr noundef %theSemaphore, i32 noundef 0, i32 noundef 1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %idThreads, i64 0, i64 %idxprom
  %2 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %2 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct.s_threadParams], ptr %params, i64 0, i64 %idxprom10
  %call12 = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @threadMainFunction, ptr noundef %arrayidx11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc19, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp14 = icmp slt i32 %4, 3
  br i1 %cmp14, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %5 to i64
  %arrayidx17 = getelementptr inbounds [3 x ptr], ptr %idThreads, i64 0, i64 %idxprom16
  %6 = load ptr, ptr %arrayidx17, align 8
  %call18 = call i32 @"\01_pthread_join"(ptr noundef %6, ptr noundef null)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %7 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %7, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond13, !llvm.loop !7

for.end21:                                        ; preds = %for.cond13
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret i32 0
}

declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @threadMainFunction(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pParams = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  store ptr %0, ptr %pParams, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %pParams, align 8
  %nLoops = getelementptr inbounds %struct.s_threadParams, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %nLoops, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pParams, align 8
  %pTheSemaphore = getelementptr inbounds %struct.s_threadParams, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pTheSemaphore, align 8
  %call = call i32 @"\01_sem_wait"(ptr noundef %5)
  %6 = load ptr, ptr %pParams, align 8
  %threadNumber = getelementptr inbounds %struct.s_threadParams, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %threadNumber, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  %8 = load ptr, ptr %pParams, align 8
  %threadNumber2 = getelementptr inbounds %struct.s_threadParams, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %threadNumber2, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9)
  %10 = load ptr, ptr %pParams, align 8
  %pTheSemaphore4 = getelementptr inbounds %struct.s_threadParams, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pTheSemaphore4, align 8
  %call5 = call i32 @sem_post(ptr noundef %11)
  %12 = load ptr, ptr %pParams, align 8
  %sleepTime = getelementptr inbounds %struct.s_threadParams, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %sleepTime, align 4
  %call6 = call i32 @"\01_sleep"(i32 noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_sem_wait"(ptr noundef) #1

declare i32 @sem_post(ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

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
