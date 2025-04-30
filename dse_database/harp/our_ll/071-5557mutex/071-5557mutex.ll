; ModuleID = 'code/071-5557mutex.c'
source_filename = "code/071-5557mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i8, %struct.Node* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@head = dso_local global %struct.Node* null, align 8
@m = dso_local global %union.pthread_mutex_t zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printlist() #0 {
entry:
  %p = alloca %struct.Node*, align 8
  %0 = load %struct.Node*, %struct.Node** @head, align 8
  store %struct.Node* %0, %struct.Node** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.Node*, %struct.Node** %p, align 8
  %tobool = icmp ne %struct.Node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.Node*, %struct.Node** %p, align 8
  %c = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 0
  %call = call i64 @write(i32 1, i8* %c, i64 1)
  %3 = load %struct.Node*, %struct.Node** %p, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 1
  %4 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %4, %struct.Node** %p, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call1 = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @putchar(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f1(i8* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %q = alloca %struct.Node*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8 65, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %1 = bitcast i8* %call to %struct.Node*
  store %struct.Node* %1, %struct.Node** %q, align 8
  %2 = load i8, i8* %i, align 1
  %3 = load %struct.Node*, %struct.Node** %q, align 8
  %c = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 0
  store i8 %2, i8* %c, align 8
  %4 = load %struct.Node*, %struct.Node** @head, align 8
  %5 = load %struct.Node*, %struct.Node** %q, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  store %struct.Node* %4, %struct.Node** %next, align 8
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #4
  %call3 = call i32 @usleep(i32 100000)
  %6 = load %struct.Node*, %struct.Node** %q, align 8
  store %struct.Node* %6, %struct.Node** @head, align 8
  call void @printlist()
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8, i8* %i, align 1
  %inc = add i8 %7, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %retval, align 8
  ret i8* %8
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

declare dso_local i32 @usleep(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f2(i8* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %q = alloca %struct.Node*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8 97, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %1 = bitcast i8* %call to %struct.Node*
  store %struct.Node* %1, %struct.Node** %q, align 8
  %2 = load i8, i8* %i, align 1
  %3 = load %struct.Node*, %struct.Node** %q, align 8
  %c = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 0
  store i8 %2, i8* %c, align 8
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #4
  %4 = load %struct.Node*, %struct.Node** @head, align 8
  %5 = load %struct.Node*, %struct.Node** %q, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  store %struct.Node* %4, %struct.Node** %next, align 8
  %call3 = call i32 @usleep(i32 90000)
  %6 = load %struct.Node*, %struct.Node** %q, align 8
  store %struct.Node* %6, %struct.Node** @head, align 8
  call void @printlist()
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8, i8* %i, align 1
  %inc = add i8 %7, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %retval, align 8
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ids = alloca [2 x i64], align 16
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ids, i64 0, i64 0
  %call = call i32 @pthread_create(i64* %arraydecay, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #4
  %call1 = call i32 @sleep(i32 1)
  %arraydecay2 = getelementptr inbounds [2 x i64], [2 x i64]* %ids, i64 0, i64 0
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay2, i64 1
  %call3 = call i32 @pthread_create(i64* %add.ptr, %union.pthread_attr_t* null, i8* (i8*)* @f2, i8* null) #4
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
