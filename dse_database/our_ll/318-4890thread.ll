; ModuleID = 'code/318-4890thread.c'
source_filename = "code/318-4890thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@tid = dso_local global [2 x i64] zeroinitializer, align 16
@.str = private unnamed_addr constant [27 x i8] c"\0A First thread processing\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\0A Second thread processing\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0Acan't create thread :[%s]\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\0A Thread created successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @doSomeThing(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %id = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 0, i64* %i, align 8
  %call = call i64 @pthread_self() #4
  store i64 %call, i64* %id, align 8
  %0 = load i64, i64* %id, align 8
  %1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @tid, i64 0, i64 0), align 16
  %call1 = call i32 @pthread_equal(i64 %0, i64 %1) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* null
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @pthread_self() #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @pthread_equal(i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* @tid, i64 0, i64 %idxprom
  %call = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @doSomeThing, i8* null) #5
  store i32 %call, i32* %err, align 4
  %2 = load i32, i32* %err, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %err, align 4
  %call2 = call i8* @strerror(i32 %3) #5
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %call2)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call5 = call i32 @sleep(i32 2)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #3

declare dso_local i32 @sleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
