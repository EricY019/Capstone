; ModuleID = 'code/043-28598thread_create.c'
source_filename = "code/043-28598thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"thread1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"thread2\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\E7\BA\BF\E7\A8\8B1\E5\88\9B\E5\BB\BA\E5\A4\B1\E8\B4\A5\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\E7\BA\BF\E7\A8\8B1\E5\88\9B\E5\BB\BA\E6\88\90\E5\8A\9F\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\E7\BA\BF\E7\A8\8B2\E5\88\9B\E5\BB\BA\E5\A4\B1\E8\B4\A5\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\E7\BA\BF\E7\A8\8B2\E5\88\9B\E5\BB\BA\E6\88\90\E5\8A\9F\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"main thread : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"thread1 return value(retval) is %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"thread1 return value(tmp) is %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"cannot join with thread1\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"thread1 end\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"thread2 return value(retval) is %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"thread2 return value(tmp) is %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"cannot join with thread2\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"thread2 end\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"mani thread wait...\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %i = alloca i32, align 4
  %retval1 = alloca i8*, align 8
  %thread1 = alloca i64, align 8
  %thread2 = alloca i64, align 8
  %message1 = alloca i8*, align 8
  %message2 = alloca i8*, align 8
  %ret_thrd1 = alloca i32, align 4
  %ret_thrd2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %message1, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %message2, align 8
  %0 = load i8*, i8** %message1, align 8
  %call = call i32 @pthread_create(i64* %thread1, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void (i8*)* @print_message_function to i8* (i8*)*), i8* %0) #3
  store i32 %call, i32* %ret_thrd1, align 4
  %1 = load i8*, i8** %message2, align 8
  %call2 = call i32 @pthread_create(i64* %thread2, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void (i8*)* @print_message_function to i8* (i8*)*), i8* %1) #3
  store i32 %call2, i32* %ret_thrd2, align 4
  %2 = load i32, i32* %ret_thrd1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %ret_thrd2, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end10

if.else8:                                         ; preds = %if.end
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %thread1, align 8
  %call12 = call i32 @pthread_join(i64 %7, i8** %retval1)
  store i32 %call12, i32* %tmp1, align 4
  %8 = load i8*, i8** %retval1, align 8
  %9 = ptrtoint i8* %8 to i32
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %9)
  %10 = load i32, i32* %tmp1, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %10)
  %11 = load i32, i32* %tmp1, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.end
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %12 = load i64, i64* %thread2, align 8
  %call20 = call i32 @pthread_join(i64 %12, i8** %retval1)
  store i32 %call20, i32* %tmp2, align 4
  %13 = load i8*, i8** %retval1, align 8
  %14 = ptrtoint i8* %13 to i32
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %14)
  %15 = load i32, i32* %tmp1, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %15)
  %16 = load i32, i32* %tmp2, align 4
  %tobool23 = icmp ne i32 %16, 0
  br i1 %tobool23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end18
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end18
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc32, %if.end26
  %17 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %17, 10
  br i1 %cmp29, label %for.body30, label %for.end34

for.body30:                                       ; preds = %for.cond28
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %for.inc32

for.inc32:                                        ; preds = %for.body30
  %18 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %18, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond28, !llvm.loop !6

for.end34:                                        ; preds = %for.cond28
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_message_function(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %2, i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @sleep(i32 10)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @pthread_join(i64, i8**) #2

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
