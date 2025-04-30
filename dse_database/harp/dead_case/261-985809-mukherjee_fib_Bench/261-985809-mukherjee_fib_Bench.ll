; ModuleID = 'code/261-985809-mukherjee_fib_Bench.c'
source_filename = "code/261-985809-mukherjee_fib_Bench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@lock = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@NUM = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"i < 144\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"code/261-985809-mukherjee_fib_Bench.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"j < 144\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @W1_Fib_Bench_False_Unreach_Call(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* @NUM, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @lock) #4
  %2 = load i32, i32* @j, align 4
  %3 = load i32, i32* @i, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* @i, align 4
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @lock) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @W2_Fib_Bench_False_Unreach_Call(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* @NUM, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @lock) #4
  %2 = load i32, i32* @i, align 4
  %3 = load i32, i32* @j, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* @j, align 4
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @lock) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 1, i32* @i, align 4
  store i32 1, i32* @j, align 4
  store i32 5, i32* @NUM, align 4
  %call = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @W1_Fib_Bench_False_Unreach_Call, i8* null) #4
  %call1 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @W2_Fib_Bench_False_Unreach_Call, i8* null) #4
  %0 = load i64, i64* %t1, align 8
  %call2 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* %t2, align 8
  %call3 = call i32 @pthread_join(i64 %1, i8** null)
  %2 = load i32, i32* @i, align 4
  %cmp = icmp slt i32 %2, 144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i32, i32* @j, align 4
  %cmp4 = icmp slt i32 %4, 144
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end7

cond.end7:                                        ; preds = %5, %cond.true5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
