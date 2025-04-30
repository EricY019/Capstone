; ModuleID = 'code/292-34570test-scan-pthread.c'
source_filename = "code/292-34570test-scan-pthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@size = dso_local global i32 4096, align 4
@p = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s p[%d] at %p is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"thread 1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"thread 2\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Allocate %d ints at %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"create thread 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"create thread 2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mem_scan(i8* %ptr) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @size, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %i, align 4
  %4 = load i32*, i32** @p, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %rem = srem i32 %6, 1024
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load i8*, i8** %ptr.addr, align 8
  %8 = load i32, i32* %i, align 4
  %9 = load i32*, i32** @p, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  %11 = load i32*, i32** @p, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %8, i32* %arrayidx6, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %add = add nsw i32 %14, 1024
  store i32 %add, i32* %i, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond, !llvm.loop !6

for.end10:                                        ; preds = %for.cond
  %16 = load i8*, i8** %retval, align 8
  ret i8* %16
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thread1 = alloca i64, align 8
  %thread2 = alloca i64, align 8
  %msg1 = alloca i8*, align 8
  %msg2 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %msg1, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %msg2, align 8
  %0 = load i32, i32* @size, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** @p, align 8
  %2 = load i32, i32* @size, align 4
  %3 = load i32*, i32** @p, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %2, i32* %3)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %4 = load i8*, i8** %msg1, align 8
  %call3 = call i32 @pthread_create(i64* %thread1, %union.pthread_attr_t* null, i8* (i8*)* @mem_scan, i8* %4) #3
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %5 = load i8*, i8** %msg2, align 8
  %call5 = call i32 @pthread_create(i64* %thread2, %union.pthread_attr_t* null, i8* (i8*)* @mem_scan, i8* %5) #3
  %6 = load i64, i64* %thread1, align 8
  %call6 = call i32 @pthread_join(i64 %6, i8** null)
  %7 = load i64, i64* %thread2, align 8
  %call7 = call i32 @pthread_join(i64 %7, i8** null)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

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
!6 = distinct !{!6, !5}
