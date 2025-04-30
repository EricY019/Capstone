; ModuleID = 'code/321-18035mutex.c'
source_filename = "code/321-18035mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@count = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\E7\BA\BF\E7\A8\8B%d\E6\AD\A3\E5\9C\A8\E8\BF\90\E8\A1\8C...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\E7\BA\BF\E7\A8\8B%d running...%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\E7\BA\BF\E7\A8\8B%d\E7\BB\93\E6\9D\9F\0A\00", align 1
@__const.main.arg = private unnamed_addr constant [2 x i32] [i32 1, i32 2], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @func(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %th = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %th, align 4
  %3 = load i32, i32* %th, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #5
  %5 = load i32, i32* @count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @count, align 4
  %call2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #5
  %6 = load i32, i32* %th, align 4
  %7 = load i32, i32* @count, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7)
  %call4 = call i32 @usleep(i32 10000)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %th, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  call void @pthread_exit(i8* null) #6
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

declare dso_local i32 @usleep(i32) #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thrd1 = alloca i64, align 8
  %thrd2 = alloca i64, align 8
  %arg = alloca [2 x i32], align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x i32]* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([2 x i32]* @__const.main.arg to i8*), i64 8, i1 false)
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %arg, i64 0, i64 0
  %1 = bitcast i32* %arrayidx to i8*
  %call = call i32 @pthread_create(i64* %thrd1, %union.pthread_attr_t* null, i8* (i8*)* @func, i8* %1) #5
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arg, i64 0, i64 1
  %2 = bitcast i32* %arrayidx1 to i8*
  %call2 = call i32 @pthread_create(i64* %thrd2, %union.pthread_attr_t* null, i8* (i8*)* @func, i8* %2) #5
  %3 = load i64, i64* %thrd1, align 8
  %call3 = call i32 @pthread_join(i64 %3, i8** null)
  %4 = load i64, i64* %thrd2, align 8
  %call4 = call i32 @pthread_join(i64 %4, i8** null)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
