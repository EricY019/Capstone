; ModuleID = 'code/238-57253.c'
source_filename = "code/238-57253.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@sum = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"thread: %ld starting. start=%d end=%d\0A\00", align 1
@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@a = dso_local global i32* null, align 8
@b = dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"thread: %ld done. Global sum now is=%li\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Final Global Sum=%li\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dotprod(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %offset = alloca i32, align 4
  %len = alloca i32, align 4
  %tid = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  store i64 %1, i64* %tid, align 8
  %2 = load i64, i64* %tid, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %offset, align 4
  store i32 100000, i32* %len, align 4
  %3 = load i32, i32* %offset, align 4
  %4 = load i32, i32* %len, align 4
  %mul = mul nsw i32 %3, %4
  store i32 %mul, i32* %start, align 4
  %5 = load i32, i32* %start, align 4
  %6 = load i32, i32* %len, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %end, align 4
  %7 = load i64, i64* %tid, align 8
  %8 = load i32, i32* %start, align 4
  %9 = load i32, i32* %end, align 4
  %sub = sub nsw i32 %9, 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %8, i32 %sub)
  %10 = load i32, i32* %start, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #4
  %13 = load i32*, i32** @a, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %16 = load i32*, i32** @b, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %17 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %16, i64 %idxprom3
  %18 = load i32, i32* %arrayidx4, align 4
  %mul5 = mul nsw i32 %15, %18
  %conv6 = sext i32 %mul5 to i64
  %19 = load i64, i64* @sum, align 8
  %add7 = add nsw i64 %19, %conv6
  store i64 %add7, i64* @sum, align 8
  %call8 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %21 = load i64, i64* %tid, align 8
  %22 = load i64, i64* @sum, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %21, i64 %22)
  call void @pthread_exit(i8* null) #5
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  %status = alloca i8*, align 8
  %threads = alloca [8 x i64], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mutex, %union.pthread_mutexattr_t* null) #4
  %call1 = call noalias align 16 i8* @malloc(i64 3200000) #4
  %0 = bitcast i8* %call1 to i32*
  store i32* %0, i32** @a, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 3200000) #4
  %1 = bitcast i8* %call2 to i32*
  store i32* %1, i32** @b, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %2, 800000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** @b, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %4
  store i32 1, i32* %arrayidx, align 4
  %5 = load i32*, i32** @a, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %6
  store i32 1, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add nsw i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %8 = load i64, i64* %i, align 8
  %cmp5 = icmp slt i64 %8, 8
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %9 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds [8 x i64], [8 x i64]* %threads, i64 0, i64 %9
  %10 = load i64, i64* %i, align 8
  %11 = inttoptr i64 %10 to i8*
  %call8 = call i32 @pthread_create(i64* %arrayidx7, %union.pthread_attr_t* null, i8* (i8*)* @dotprod, i8* %11) #4
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %12 = load i64, i64* %i, align 8
  %inc10 = add nsw i64 %12, 1
  store i64 %inc10, i64* %i, align 8
  br label %for.cond4, !llvm.loop !7

for.end11:                                        ; preds = %for.cond4
  store i64 0, i64* %i, align 8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc17, %for.end11
  %13 = load i64, i64* %i, align 8
  %cmp13 = icmp slt i64 %13, 8
  br i1 %cmp13, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond12
  %14 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds [8 x i64], [8 x i64]* %threads, i64 0, i64 %14
  %15 = load i64, i64* %arrayidx15, align 8
  %call16 = call i32 @pthread_join(i64 %15, i8** %status)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %16 = load i64, i64* %i, align 8
  %inc18 = add nsw i64 %16, 1
  store i64 %inc18, i64* %i, align 8
  br label %for.cond12, !llvm.loop !8

for.end19:                                        ; preds = %for.cond12
  %17 = load i64, i64* @sum, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  %18 = load i32*, i32** @a, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* %19) #4
  %20 = load i32*, i32** @b, align 8
  %21 = bitcast i32* %20 to i8*
  call void @free(i8* %21) #4
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

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
!8 = distinct !{!8, !5}
