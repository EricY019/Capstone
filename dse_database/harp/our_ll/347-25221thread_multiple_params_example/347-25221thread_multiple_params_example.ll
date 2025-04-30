; ModuleID = 'code/347-25221thread_multiple_params_example.c'
source_filename = "code/347-25221thread_multiple_params_example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_arg = type { i8*, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [26 x i8] c"Message from thread: %s \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"My msg\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Thread 1 %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"created\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @print_msg(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %pargs = alloca %struct.thread_arg*, align 8
  %i = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  %call = call i32 @sleep(i32 5)
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to %struct.thread_arg*
  store %struct.thread_arg* %1, %struct.thread_arg** %pargs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.thread_arg*, %struct.thread_arg** %pargs, align 8
  %reps = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %3, i32 0, i32 1
  %4 = load i32, i32* %reps, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.thread_arg*, %struct.thread_arg** %pargs, align 8
  %msg = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %5, i32 0, i32 0
  %6 = load i8*, i8** %msg, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca i64, align 8
  %args = alloca %struct.thread_arg, align 8
  %r1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %msg = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %args, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %msg, align 8
  %reps = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %args, i32 0, i32 1
  store i32 5, i32* %reps, align 8
  %0 = bitcast %struct.thread_arg* %args to i8*
  %call = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @print_msg, i8* %0) #3
  store i32 %call, i32* %r1, align 4
  %1 = load i32, i32* %r1, align 4
  %cmp = icmp eq i32 %1, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %cond)
  %3 = load i64, i64* %t1, align 8
  %call2 = call i32 @pthread_join(i64 %3, i8** null)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #1

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
