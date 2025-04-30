; ModuleID = 'code/197-21858bucket_brigade_silly_loop.c'
source_filename = "code/197-21858bucket_brigade_silly_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.closure_t = type { void (i32, i32)*, i32, i32 }

@m = dso_local global i32 10, align 4
@closures = dso_local global [10 x %struct.closure_t] zeroinitializer, align 16
@c = dso_local global %struct.closure_t* getelementptr inbounds ([10 x %struct.closure_t], [10 x %struct.closure_t]* @closures, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"Done!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, 10
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [10 x %struct.closure_t], [10 x %struct.closure_t]* @closures, i64 0, i64 %idxprom
  store %struct.closure_t* %arrayidx, %struct.closure_t** @c, align 8
  %1 = load i32, i32* %x.addr, align 4
  %cmp = icmp eq i32 %1, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.closure_t*, %struct.closure_t** @c, align 8
  %y1 = getelementptr inbounds %struct.closure_t, %struct.closure_t* %2, i32 0, i32 2
  %3 = load i32, i32* %y1, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %y1, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* @m, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store %struct.closure_t* null, %struct.closure_t** @c, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end8

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %x.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x %struct.closure_t], [10 x %struct.closure_t]* @closures, i64 0, i64 %idxprom4
  %y6 = getelementptr inbounds %struct.closure_t, %struct.closure_t* %arrayidx5, i32 0, i32 2
  %7 = load i32, i32* %y6, align 4
  %8 = load %struct.closure_t*, %struct.closure_t** @c, align 8
  %y7 = getelementptr inbounds %struct.closure_t, %struct.closure_t* %8, i32 0, i32 2
  store i32 %7, i32* %y7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  ret void
}

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
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @atol(i8* %2) #3
  %conv = trunc i64 %call to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 10, %cond.false ]
  store i32 %cond, i32* @m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp ult i32 %3, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [10 x %struct.closure_t], [10 x %struct.closure_t]* @closures, i64 0, i64 %idxprom
  %f = getelementptr inbounds %struct.closure_t, %struct.closure_t* %arrayidx3, i32 0, i32 0
  store void (i32, i32)* @f, void (i32, i32)** %f, align 16
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x %struct.closure_t], [10 x %struct.closure_t]* @closures, i64 0, i64 %idxprom4
  %x = getelementptr inbounds %struct.closure_t, %struct.closure_t* %arrayidx5, i32 0, i32 1
  store i32 %5, i32* %x, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x %struct.closure_t], [10 x %struct.closure_t]* @closures, i64 0, i64 %idxprom6
  %y = getelementptr inbounds %struct.closure_t, %struct.closure_t* %arrayidx7, i32 0, i32 2
  store i32 0, i32* %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load %struct.closure_t*, %struct.closure_t** @c, align 8
  %tobool = icmp ne %struct.closure_t* %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.closure_t*, %struct.closure_t** @c, align 8
  %f8 = getelementptr inbounds %struct.closure_t, %struct.closure_t* %10, i32 0, i32 0
  %11 = load void (i32, i32)*, void (i32, i32)** %f8, align 8
  %12 = load %struct.closure_t*, %struct.closure_t** @c, align 8
  %x9 = getelementptr inbounds %struct.closure_t, %struct.closure_t* %12, i32 0, i32 1
  %13 = load i32, i32* %x9, align 8
  %14 = load %struct.closure_t*, %struct.closure_t** @c, align 8
  %y10 = getelementptr inbounds %struct.closure_t, %struct.closure_t* %14, i32 0, i32 2
  %15 = load i32, i32* %y10, align 4
  call void %11(i32 %13, i32 %15)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
