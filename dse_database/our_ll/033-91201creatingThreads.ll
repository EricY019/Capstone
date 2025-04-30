; ModuleID = 'code/033-91201creatingThreads.c'
source_filename = "code/033-91201creatingThreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [25 x i8] c"creating threads ......\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kuku\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Threads finished. Main going to finish \0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" ...... %d ...........\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %idThread1 = alloca i64, align 8
  %idThread2 = alloca i64, align 8
  %idThread3 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 @pthread_create(i64* %idThread1, %union.pthread_attr_t* null, i8* (i8*)* @threadMainFunction1, i8* inttoptr (i64 1 to i8*)) #3
  %call2 = call i32 @pthread_create(i64* %idThread2, %union.pthread_attr_t* null, i8* (i8*)* @threadMainFunction1, i8* inttoptr (i64 2 to i8*)) #3
  %call3 = call i32 @pthread_create(i64* %idThread3, %union.pthread_attr_t* null, i8* (i8*)* @threadMainFunction2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #3
  %0 = load i64, i64* %idThread1, align 8
  %call4 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* %idThread2, align 8
  %call5 = call i32 @pthread_join(i64 %1, i8** null)
  %2 = load i64, i64* %idThread3, align 8
  %call6 = call i32 @pthread_join(i64 %2, i8** null)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @threadMainFunction1(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  store i32 %1, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %call = call i32 @sleep(i32 1)
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %6 = load i32, i32* %n, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %6)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @threadMainFunction2(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %pStr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  store i8* %0, i8** %pStr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @sleep(i32 2)
  %2 = load i8*, i8** %pStr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @pthread_join(i64, i8**) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
