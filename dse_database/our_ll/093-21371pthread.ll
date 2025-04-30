; ModuleID = 'code/093-21371pthread.c'
source_filename = "code/093-21371pthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"mytid=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\E7\BA\BF\E7\A8\8B%u\E8\BF\94\E5\9B\9E%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\E7\BA\BF\E7\A8\8B%u\E8\BF\94\E5\9B\9E%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\E7\BA\BF\E7\A8\8B%u\E8\BF\94\E5\9B\9E%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f1(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %call = call i64 @pthread_self() #5
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %call)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  %call3 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i8* inttoptr (i64 123 to i8*)
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @pthread_self() #2

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f2(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %call = call i64 @pthread_self() #5
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %call)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
  %call3 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f3(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %call = call i64 @pthread_self() #5
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %call)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call2 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %call3 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.cond
  %0 = load i32, i32* %i, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %ids = alloca [3 x i64], align 16
  %ret = alloca i8*, align 8
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 0
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay, i64 0
  %call = call i32 @pthread_create(i64* %add.ptr, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #7
  %arraydecay1 = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 0
  %add.ptr2 = getelementptr inbounds i64, i64* %arraydecay1, i64 1
  %call3 = call i32 @pthread_create(i64* %add.ptr2, %union.pthread_attr_t* null, i8* (i8*)* @f2, i8* null) #7
  %arraydecay4 = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 0
  %add.ptr5 = getelementptr inbounds i64, i64* %arraydecay4, i64 2
  %call6 = call i32 @pthread_create(i64* %add.ptr5, %union.pthread_attr_t* null, i8* (i8*)* @f3, i8* null) #7
  %call7 = call i32 @sleep(i32 3)
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 2
  %0 = load i64, i64* %arrayidx, align 16
  %call8 = call i32 @pthread_cancel(i64 %0)
  %arrayidx9 = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 0
  %1 = load i64, i64* %arrayidx9, align 16
  %call10 = call i32 @pthread_join(i64 %1, i8** %ret)
  %arrayidx11 = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 0
  %2 = load i64, i64* %arrayidx11, align 16
  %3 = load i8*, i8** %ret, align 8
  %4 = ptrtoint i8* %3 to i32
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %2, i32 %4)
  %arrayidx13 = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 1
  %5 = load i64, i64* %arrayidx13, align 8
  %call14 = call i32 @pthread_join(i64 %5, i8** %ret)
  %arrayidx15 = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 1
  %6 = load i64, i64* %arrayidx15, align 8
  %7 = load i8*, i8** %ret, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %6, i8* %7)
  %arrayidx17 = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 2
  %8 = load i64, i64* %arrayidx17, align 16
  %call18 = call i32 @pthread_join(i64 %8, i8** %ret)
  %arrayidx19 = getelementptr inbounds [3 x i64], [3 x i64]* %ids, i64 0, i64 2
  %9 = load i64, i64* %arrayidx19, align 16
  %10 = load i8*, i8** %ret, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 %9, i8* %10)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

declare dso_local i32 @pthread_cancel(i64) #1

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
