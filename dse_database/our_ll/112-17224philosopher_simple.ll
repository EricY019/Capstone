; ModuleID = 'code/112-17224philosopher_simple.c'
source_filename = "code/112-17224philosopher_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sem_t = type { i64, [24 x i8] }
%union.pthread_attr_t = type { i64, [48 x i8] }

@room = dso_local global %union.sem_t zeroinitializer, align 8
@chopstick = dso_local global [5 x %union.sem_t] zeroinitializer, align 16
@.str = private unnamed_addr constant [33 x i8] c"\0APhilosopher %d has entered room\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\0APhilosopher %d has finished eating\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\0APhilosopher %d is eating\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [5 x i32], align 16
  %tid = alloca [5 x i64], align 16
  store i32 0, i32* %retval, align 4
  %call = call i32 @sem_init(%union.sem_t* @room, i32 0, i32 4) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %union.sem_t], [5 x %union.sem_t]* @chopstick, i64 0, i64 %idxprom
  %call1 = call i32 @sem_init(%union.sem_t* %arrayidx, i32 0, i32 1) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 5
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i64 0, i64 %idxprom5
  store i32 %4, i32* %arrayidx6, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [5 x i64], [5 x i64]* %tid, i64 0, i64 %idxprom7
  %7 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i64 0, i64 %idxprom9
  %8 = bitcast i32* %arrayidx10 to i8*
  %call11 = call i32 @pthread_create(i64* %arrayidx8, %union.pthread_attr_t* null, i8* (i8*)* @philosopher, i8* %8) #3
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4
  %9 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end14:                                        ; preds = %for.cond2
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc21, %for.end14
  %10 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %10, 5
  br i1 %cmp16, label %for.body17, label %for.end23

for.body17:                                       ; preds = %for.cond15
  %11 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [5 x i64], [5 x i64]* %tid, i64 0, i64 %idxprom18
  %12 = load i64, i64* %arrayidx19, align 8
  %call20 = call i32 @pthread_join(i64 %12, i8** null)
  br label %for.inc21

for.inc21:                                        ; preds = %for.body17
  %13 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %13, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond15, !llvm.loop !7

for.end23:                                        ; preds = %for.cond15
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare dso_local i32 @sem_init(%union.sem_t*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @philosopher(i8* %num) #0 {
entry:
  %retval = alloca i8*, align 8
  %num.addr = alloca i8*, align 8
  %phil = alloca i32, align 4
  store i8* %num, i8** %num.addr, align 8
  %0 = load i8*, i8** %num.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %phil, align 4
  %call = call i32 @sem_wait(%union.sem_t* @room)
  %3 = load i32, i32* %phil, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %3)
  %4 = load i32, i32* %phil, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [5 x %union.sem_t], [5 x %union.sem_t]* @chopstick, i64 0, i64 %idxprom
  %call2 = call i32 @sem_wait(%union.sem_t* %arrayidx)
  %5 = load i32, i32* %phil, align 4
  %add = add nsw i32 %5, 1
  %rem = srem i32 %add, 5
  %idxprom3 = sext i32 %rem to i64
  %arrayidx4 = getelementptr inbounds [5 x %union.sem_t], [5 x %union.sem_t]* @chopstick, i64 0, i64 %idxprom3
  %call5 = call i32 @sem_wait(%union.sem_t* %arrayidx4)
  %6 = load i32, i32* %phil, align 4
  call void @eat(i32 %6)
  %call6 = call i32 @sleep(i32 2)
  %7 = load i32, i32* %phil, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %8 = load i32, i32* %phil, align 4
  %add8 = add nsw i32 %8, 1
  %rem9 = srem i32 %add8, 5
  %idxprom10 = sext i32 %rem9 to i64
  %arrayidx11 = getelementptr inbounds [5 x %union.sem_t], [5 x %union.sem_t]* @chopstick, i64 0, i64 %idxprom10
  %call12 = call i32 @sem_post(%union.sem_t* %arrayidx11) #3
  %9 = load i32, i32* %phil, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [5 x %union.sem_t], [5 x %union.sem_t]* @chopstick, i64 0, i64 %idxprom13
  %call15 = call i32 @sem_post(%union.sem_t* %arrayidx14) #3
  %call16 = call i32 @sem_post(%union.sem_t* @room) #3
  %10 = load i8*, i8** %retval, align 8
  ret i8* %10
}

declare dso_local i32 @pthread_join(i64, i8**) #2

declare dso_local i32 @sem_wait(%union.sem_t*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eat(i32 %phil) #0 {
entry:
  %phil.addr = alloca i32, align 4
  store i32 %phil, i32* %phil.addr, align 4
  %0 = load i32, i32* %phil.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %0)
  ret void
}

declare dso_local i32 @sleep(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @sem_post(%union.sem_t*) #1

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
