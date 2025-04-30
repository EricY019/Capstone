; ModuleID = 'code/002-1248302mutualExclusionWithSem.c'
source_filename = "code/002-1248302mutualExclusionWithSem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sem_t = type { i64, [24 x i8] }
%struct.s_threadParams = type { %union.sem_t*, i32, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [41 x i8] c"Threads finished. Main going to finish \0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"thread %d in Critical Section\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"thread %d going out from Critical Section\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %idThreads = alloca [3 x i64], align 16
  %theSemaphore = alloca %union.sem_t, align 8
  %params = alloca [3 x %struct.s_threadParams], align 16
  store i32 0, i32* %retval, align 4
  %arrayinit.begin = getelementptr inbounds [3 x %struct.s_threadParams], [3 x %struct.s_threadParams]* %params, i64 0, i64 0
  %pTheSemaphore = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.begin, i32 0, i32 0
  store %union.sem_t* %theSemaphore, %union.sem_t** %pTheSemaphore, align 8
  %threadNumber = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.begin, i32 0, i32 1
  store i32 0, i32* %threadNumber, align 8
  %sleepTime = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.begin, i32 0, i32 2
  store i32 0, i32* %sleepTime, align 4
  %nLoops = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.begin, i32 0, i32 3
  store i32 10, i32* %nLoops, align 8
  %arrayinit.element = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.begin, i64 1
  %pTheSemaphore1 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element, i32 0, i32 0
  store %union.sem_t* %theSemaphore, %union.sem_t** %pTheSemaphore1, align 8
  %threadNumber2 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element, i32 0, i32 1
  store i32 1, i32* %threadNumber2, align 8
  %sleepTime3 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element, i32 0, i32 2
  store i32 3, i32* %sleepTime3, align 4
  %nLoops4 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element, i32 0, i32 3
  store i32 2, i32* %nLoops4, align 8
  %arrayinit.element5 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element, i64 1
  %pTheSemaphore6 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element5, i32 0, i32 0
  store %union.sem_t* %theSemaphore, %union.sem_t** %pTheSemaphore6, align 8
  %threadNumber7 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element5, i32 0, i32 1
  store i32 2, i32* %threadNumber7, align 8
  %sleepTime8 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element5, i32 0, i32 2
  store i32 1, i32* %sleepTime8, align 4
  %nLoops9 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %arrayinit.element5, i32 0, i32 3
  store i32 4, i32* %nLoops9, align 8
  %call = call i32 @sem_init(%union.sem_t* %theSemaphore, i32 0, i32 1) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %idThreads, i64 0, i64 %idxprom
  %2 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %2 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct.s_threadParams], [3 x %struct.s_threadParams]* %params, i64 0, i64 %idxprom10
  %3 = bitcast %struct.s_threadParams* %arrayidx11 to i8*
  %call12 = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @threadMainFunction, i8* %3) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc19, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %5, 3
  br i1 %cmp14, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond13
  %6 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %6 to i64
  %arrayidx17 = getelementptr inbounds [3 x i64], [3 x i64]* %idThreads, i64 0, i64 %idxprom16
  %7 = load i64, i64* %arrayidx17, align 8
  %call18 = call i32 @pthread_join(i64 %7, i8** null)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %8 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %8, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond13, !llvm.loop !6

for.end21:                                        ; preds = %for.cond13
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @sem_init(%union.sem_t*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @threadMainFunction(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %pParams = alloca %struct.s_threadParams*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct.s_threadParams*
  store %struct.s_threadParams* %1, %struct.s_threadParams** %pParams, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.s_threadParams*, %struct.s_threadParams** %pParams, align 8
  %nLoops = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %3, i32 0, i32 3
  %4 = load i32, i32* %nLoops, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.s_threadParams*, %struct.s_threadParams** %pParams, align 8
  %pTheSemaphore = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %5, i32 0, i32 0
  %6 = load %union.sem_t*, %union.sem_t** %pTheSemaphore, align 8
  %call = call i32 @sem_wait(%union.sem_t* %6)
  %7 = load %struct.s_threadParams*, %struct.s_threadParams** %pParams, align 8
  %threadNumber = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %7, i32 0, i32 1
  %8 = load i32, i32* %threadNumber, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %9 = load %struct.s_threadParams*, %struct.s_threadParams** %pParams, align 8
  %threadNumber2 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %9, i32 0, i32 1
  %10 = load i32, i32* %threadNumber2, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %11 = load %struct.s_threadParams*, %struct.s_threadParams** %pParams, align 8
  %pTheSemaphore4 = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %11, i32 0, i32 0
  %12 = load %union.sem_t*, %union.sem_t** %pTheSemaphore4, align 8
  %call5 = call i32 @sem_post(%union.sem_t* %12) #3
  %13 = load %struct.s_threadParams*, %struct.s_threadParams** %pParams, align 8
  %sleepTime = getelementptr inbounds %struct.s_threadParams, %struct.s_threadParams* %13, i32 0, i32 2
  %14 = load i32, i32* %sleepTime, align 4
  %call6 = call i32 @sleep(i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @pthread_join(i64, i8**) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sem_wait(%union.sem_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @sem_post(%union.sem_t*) #1

declare dso_local i32 @sleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
