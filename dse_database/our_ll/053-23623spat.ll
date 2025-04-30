; ModuleID = 'code/053-23623spat.c'
source_filename = "code/053-23623spat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@m = dso_local global [1 x %union.pthread_mutex_t] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @th(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %id, align 4
  %2 = load i32, i32* %id, align 4
  store i32 %2, i32* %i, align 4
  store i32 1, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %4, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1 x %union.pthread_mutex_t], [1 x %union.pthread_mutex_t]* @m, i64 0, i64 %idxprom
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %arrayidx) #3
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7, %while.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %id, align 4
  %cmp5 = icmp ugt i32 %10, %11
  br i1 %cmp5, label %while.body7, label %while.end11

while.body7:                                      ; preds = %while.cond4
  %12 = load i32, i32* %j, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %j, align 4
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, %13
  store i32 %sub, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [1 x %union.pthread_mutex_t], [1 x %union.pthread_mutex_t]* @m, i64 0, i64 %idxprom8
  %call10 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %arrayidx9) #3
  br label %while.cond4, !llvm.loop !6

while.end11:                                      ; preds = %while.cond4
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
  %i = alloca i32, align 4
  %ids = alloca [1 x i64], align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1 x %union.pthread_mutex_t], [1 x %union.pthread_mutex_t]* @m, i64 0, i64 %idxprom
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %arrayidx, %union.pthread_mutexattr_t* null) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 1
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1 x i64], [1 x i64]* %ids, i64 0, i64 %idxprom4
  %5 = load i32, i32* %i, align 4
  %conv = sext i32 %5 to i64
  %6 = inttoptr i64 %conv to i8*
  %call6 = call i32 @pthread_create(i64* %arrayidx5, %union.pthread_attr_t* null, i8* (i8*)* @th, i8* %6) #3
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %7 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end9:                                         ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc17, %for.end9
  %8 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %8, 1
  br i1 %cmp11, label %for.body13, label %for.end19

for.body13:                                       ; preds = %for.cond10
  %9 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [1 x i64], [1 x i64]* %ids, i64 0, i64 %idxprom14
  %10 = load i64, i64* %arrayidx15, align 8
  %call16 = call i32 @pthread_join(i64 %10, i8** null)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body13
  %11 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %11, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond10, !llvm.loop !9

for.end19:                                        ; preds = %for.cond10
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

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
!9 = distinct !{!9, !5}
