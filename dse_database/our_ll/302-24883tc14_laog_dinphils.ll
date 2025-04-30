; ModuleID = 'code/302-24883tc14_laog_dinphils.c'
source_filename = "code/302-24883tc14_laog_dinphils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@chop = internal global [5 x %union.pthread_mutex_t] zeroinitializer, align 16
@phil = internal global [5 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dine(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %left = alloca i64, align 8
  %right = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  store i64 %1, i64* %left, align 8
  %2 = load i64, i64* %left, align 8
  %add = add nsw i64 %2, 1
  %rem = srem i64 %add, 5
  store i64 %rem, i64* %right, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %left, align 8
  %arrayidx = getelementptr inbounds [5 x %union.pthread_mutex_t], [5 x %union.pthread_mutex_t]* @chop, i64 0, i64 %4
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %arrayidx) #3
  %5 = load i64, i64* %right, align 8
  %arrayidx1 = getelementptr inbounds [5 x %union.pthread_mutex_t], [5 x %union.pthread_mutex_t]* @chop, i64 0, i64 %5
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %arrayidx1) #3
  %6 = load i64, i64* %left, align 8
  %arrayidx3 = getelementptr inbounds [5 x %union.pthread_mutex_t], [5 x %union.pthread_mutex_t]* @chop, i64 0, i64 %6
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %arrayidx3) #3
  %7 = load i64, i64* %right, align 8
  %arrayidx5 = getelementptr inbounds [5 x %union.pthread_mutex_t], [5 x %union.pthread_mutex_t]* @chop, i64 0, i64 %7
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %arrayidx5) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [5 x %union.pthread_mutex_t], [5 x %union.pthread_mutex_t]* @chop, i64 0, i64 %1
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %arrayidx, %union.pthread_mutexattr_t* null) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, i64* %i, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %3 = load i64, i64* %i, align 8
  %cmp2 = icmp slt i64 %3, 5
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %4 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds [5 x i64], [5 x i64]* @phil, i64 0, i64 %4
  %5 = load i64, i64* %i, align 8
  %6 = inttoptr i64 %5 to i8*
  %call5 = call i32 @pthread_create(i64* %arrayidx4, %union.pthread_attr_t* null, i8* (i8*)* @dine, i8* %6) #3
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %7 = load i64, i64* %i, align 8
  %inc7 = add nsw i64 %7, 1
  store i64 %inc7, i64* %i, align 8
  br label %for.cond1, !llvm.loop !7

for.end8:                                         ; preds = %for.cond1
  %call9 = call i32 @sleep(i32 1)
  store i64 0, i64* %i, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end8
  %8 = load i64, i64* %i, align 8
  %cmp11 = icmp slt i64 %8, 5
  br i1 %cmp11, label %for.body12, label %for.end17

for.body12:                                       ; preds = %for.cond10
  %9 = load i64, i64* %i, align 8
  %arrayidx13 = getelementptr inbounds [5 x i64], [5 x i64]* @phil, i64 0, i64 %9
  %10 = load i64, i64* %arrayidx13, align 8
  %call14 = call i32 @pthread_join(i64 %10, i8** null)
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %11 = load i64, i64* %i, align 8
  %inc16 = add nsw i64 %11, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond10, !llvm.loop !8

for.end17:                                        ; preds = %for.cond10
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @pthread_join(i64, i8**) #2

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
!8 = distinct !{!8, !5}
