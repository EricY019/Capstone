; ModuleID = 'code/027-28741main.c'
source_filename = "code/027-28741main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@ALL_IS_OK = dso_local global i8* inttoptr (i64 123456789 to i8*), align 8
@.str = private unnamed_addr constant [5 x i8] c"boys\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"girls\00", align 1
@mess = dso_local global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"Hi %s! (I'm %lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Thread %lx completed ok \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @writer(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arg.addr, align 8
  %call = call i64 @pthread_self() #4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %1, i64 %call)
  store i32 800000, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i32, i32* %j, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i8*, i8** @ALL_IS_OK, align 8
  ret i8* %4
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @pthread_self() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i8*, align 8
  %writer1_pid = alloca i64, align 8
  %writer2_pid = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %0 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @mess, i64 0, i64 1), align 8
  %call = call i32 @pthread_create(i64* %writer1_pid, %union.pthread_attr_t* null, i8* (i8*)* @writer, i8* %0) #5
  %1 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @mess, i64 0, i64 0), align 16
  %call1 = call i32 @pthread_create(i64* %writer2_pid, %union.pthread_attr_t* null, i8* (i8*)* @writer, i8* %1) #5
  %2 = load i64, i64* %writer1_pid, align 8
  %call2 = call i32 @pthread_join(i64 %2, i8** %status)
  %3 = load i8*, i8** %status, align 8
  %4 = load i8*, i8** @ALL_IS_OK, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %writer1_pid, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %writer2_pid, align 8
  %call4 = call i32 @pthread_join(i64 %6, i8** %status)
  %7 = load i8*, i8** %status, align 8
  %8 = load i8*, i8** @ALL_IS_OK, align 8
  %cmp5 = icmp eq i8* %7, %8
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %9 = load i64, i64* %writer2_pid, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %9)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
