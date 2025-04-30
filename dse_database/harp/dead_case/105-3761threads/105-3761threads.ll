; ModuleID = 'code/105-3761threads.c'
source_filename = "code/105-3761threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [15 x i8] c"Thread %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid1 = alloca i64, align 8
  %tid2 = alloca i64, align 8
  %tid3 = alloca i64, align 8
  %thread1 = alloca i32, align 4
  %thread2 = alloca i32, align 4
  %thread3 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %thread1, align 4
  store i32 2, i32* %thread2, align 4
  store i32 3, i32* %thread3, align 4
  %0 = bitcast i32* %thread1 to i8*
  %call = call i32 @pthread_create(i64* %tid1, %union.pthread_attr_t* null, i8* (i8*)* @loop, i8* %0) #3
  %1 = bitcast i32* %thread2 to i8*
  %call1 = call i32 @pthread_create(i64* %tid2, %union.pthread_attr_t* null, i8* (i8*)* @loop, i8* %1) #3
  %2 = bitcast i32* %thread3 to i8*
  %call2 = call i32 @pthread_create(i64* %tid3, %union.pthread_attr_t* null, i8* (i8*)* @loop, i8* %2) #3
  %3 = load i64, i64* %tid1, align 8
  %call3 = call i32 @pthread_join(i64 %3, i8** null)
  %4 = load i64, i64* %tid2, align 8
  %call4 = call i32 @pthread_join(i64 %4, i8** null)
  %5 = load i64, i64* %tid3, align 8
  %call5 = call i32 @pthread_join(i64 %5, i8** null)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @loop(i8* %in) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %name = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  %0 = load i8*, i8** %in.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %name, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 100000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %rem = srem i32 %4, 1000000
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %name, align 4
  %6 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @pthread_join(i64, i8**) #2

declare dso_local i32 @printf(i8*, ...) #2

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
