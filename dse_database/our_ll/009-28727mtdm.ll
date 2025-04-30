; ModuleID = 'code/009-28727mtdm.c'
source_filename = "code/009-28727mtdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@m = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@loop = dso_local global i32 0, align 4
@cnt = dso_local global i32 0, align 4
@t = dso_local global [4 x i64] zeroinitializer, align 16
@.str = private unnamed_addr constant [16 x i8] c"total runs: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread_code(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @loop, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #4
  %1 = load i32, i32* @cnt, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @cnt, align 4
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #4
  %call2 = call i32 @sched_yield() #4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @sched_yield() #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* @loop, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* @t, i64 0, i64 %idxprom
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = inttoptr i64 %conv to i8*
  %call = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @thread_code, i8* %3) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 5
  br i1 %cmp2, label %for.body4, label %for.end8

for.body4:                                        ; preds = %for.cond1
  %call5 = call i32 @sleep(i32 1)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body4
  %6 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end8:                                         ; preds = %for.cond1
  store i32 0, i32* @loop, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end8
  %7 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %7, 4
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %8 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [4 x i64], [4 x i64]* @t, i64 0, i64 %idxprom13
  %9 = load i64, i64* %arrayidx14, align 8
  %call15 = call i32 @pthread_join(i64 %9, i8** null)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %10 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %10, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end18:                                        ; preds = %for.cond9
  %11 = load i32, i32* @cnt, align 4
  %div = sdiv i32 %11, 5
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %div)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @sleep(i32) #3

declare dso_local i32 @pthread_join(i64, i8**) #3

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
