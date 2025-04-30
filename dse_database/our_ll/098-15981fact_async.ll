; ModuleID = 'code/098-15981fact_async.c'
source_filename = "code/098-15981fact_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._factorialData = type { i32, i32, void (%struct._factorialData*)* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"Factorial is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @factorial(i8* %args) #0 {
entry:
  %args.addr = alloca i8*, align 8
  %factorialData = alloca %struct._factorialData*, align 8
  %callback = alloca void (%struct._factorialData*)*, align 8
  %number = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %args, i8** %args.addr, align 8
  %0 = load i8*, i8** %args.addr, align 8
  %1 = bitcast i8* %0 to %struct._factorialData*
  store %struct._factorialData* %1, %struct._factorialData** %factorialData, align 8
  %2 = load %struct._factorialData*, %struct._factorialData** %factorialData, align 8
  %number1 = getelementptr inbounds %struct._factorialData, %struct._factorialData* %2, i32 0, i32 0
  %3 = load i32, i32* %number1, align 8
  store i32 %3, i32* %number, align 4
  %4 = load %struct._factorialData*, %struct._factorialData** %factorialData, align 8
  %callback2 = getelementptr inbounds %struct._factorialData, %struct._factorialData* %4, i32 0, i32 2
  %5 = load void (%struct._factorialData*)*, void (%struct._factorialData*)** %callback2, align 8
  store void (%struct._factorialData*)* %5, void (%struct._factorialData*)** %callback, align 8
  store i32 1, i32* %num, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %number, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %num, align 4
  %mul = mul nsw i32 %9, %8
  store i32 %mul, i32* %num, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %num, align 4
  %12 = load %struct._factorialData*, %struct._factorialData** %factorialData, align 8
  %result = getelementptr inbounds %struct._factorialData, %struct._factorialData* %12, i32 0, i32 1
  store i32 %11, i32* %result, align 4
  %13 = load void (%struct._factorialData*)*, void (%struct._factorialData*)** %callback, align 8
  %14 = load %struct._factorialData*, %struct._factorialData** %factorialData, align 8
  call void %13(%struct._factorialData* %14)
  call void @pthread_exit(i8* null) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startThread(%struct._factorialData* %data) #0 {
entry:
  %data.addr = alloca %struct._factorialData*, align 8
  %thread_id = alloca i64, align 8
  %thread = alloca i32, align 4
  store %struct._factorialData* %data, %struct._factorialData** %data.addr, align 8
  %0 = load %struct._factorialData*, %struct._factorialData** %data.addr, align 8
  %1 = bitcast %struct._factorialData* %0 to i8*
  %call = call i32 @pthread_create(i64* %thread_id, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void (i8*)* @factorial to i8* (i8*)*), i8* %1) #5
  store i32 %call, i32* %thread, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callbackFunction(%struct._factorialData* %factorialData) #0 {
entry:
  %factorialData.addr = alloca %struct._factorialData*, align 8
  store %struct._factorialData* %factorialData, %struct._factorialData** %factorialData.addr, align 8
  %0 = load %struct._factorialData*, %struct._factorialData** %factorialData.addr, align 8
  %result = getelementptr inbounds %struct._factorialData, %struct._factorialData* %0, i32 0, i32 1
  %1 = load i32, i32* %result, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %1)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca %struct._factorialData*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #5
  %0 = bitcast i8* %call to %struct._factorialData*
  store %struct._factorialData* %0, %struct._factorialData** %data, align 8
  %1 = load %struct._factorialData*, %struct._factorialData** %data, align 8
  %tobool = icmp ne %struct._factorialData* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._factorialData*, %struct._factorialData** %data, align 8
  %number = getelementptr inbounds %struct._factorialData, %struct._factorialData* %2, i32 0, i32 0
  store i32 5, i32* %number, align 8
  %3 = load %struct._factorialData*, %struct._factorialData** %data, align 8
  %callback = getelementptr inbounds %struct._factorialData, %struct._factorialData* %3, i32 0, i32 2
  store void (%struct._factorialData*)* @callbackFunction, void (%struct._factorialData*)** %callback, align 8
  %4 = load %struct._factorialData*, %struct._factorialData** %data, align 8
  call void @startThread(%struct._factorialData* %4)
  %call2 = call i32 @sleep(i32 2)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

declare dso_local i32 @sleep(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
