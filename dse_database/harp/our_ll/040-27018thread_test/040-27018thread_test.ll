; ModuleID = 'code/040-27018thread_test.c'
source_filename = "code/040-27018thread_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [25 x i8] c"thread %d, iteration %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @threadfunc(i8* %c) #0 {
entry:
  %c.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %c, i8** %c.addr, align 8
  %0 = load i8*, i8** %c.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  store i32 %1, i32* %id, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %id, align 4
  %4 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  call void @sleep(i32 1000)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sleep(i32 %ms) #0 {
entry:
  %ms.addr = alloca i32, align 4
  %waittime = alloca %struct.timespec, align 8
  store i32 %ms, i32* %ms.addr, align 4
  %0 = load i32, i32* %ms.addr, align 4
  %div = sdiv i32 %0, 1000
  %conv = sext i32 %div to i64
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %waittime, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %1 = load i32, i32* %ms.addr, align 4
  %rem = srem i32 %1, 1000
  store i32 %rem, i32* %ms.addr, align 4
  %2 = load i32, i32* %ms.addr, align 4
  %mul = mul nsw i32 %2, 1000
  %mul1 = mul nsw i32 %mul, 1000
  %conv2 = sext i32 %mul1 to i64
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %waittime, i32 0, i32 1
  store i64 %conv2, i64* %tv_nsec, align 8
  %call = call i32 @nanosleep(%struct.timespec* %waittime, %struct.timespec* null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %tcb = alloca i64*, align 8
  store i32 0, i32* %retval, align 4
  store i32 4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias align 16 i8* @malloc(i64 8) #3
  %1 = bitcast i8* %call to i64*
  store i64* %1, i64** %tcb, align 8
  %2 = load i64*, i64** %tcb, align 8
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %4 = inttoptr i64 %conv to i8*
  %call1 = call i32 @pthread_create(i64* %2, %union.pthread_attr_t* null, i8* (i8*)* @threadfunc, i8* %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @sleep(i32 4000)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #1

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
