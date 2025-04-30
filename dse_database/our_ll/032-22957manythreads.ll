; ModuleID = 'code/032-22957manythreads.c'
source_filename = "code/032-22957manythreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"Thread <%d> executing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread_function(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %x, align 4
  %3 = load i32, i32* %x, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %3)
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %attr = alloca %union.pthread_attr_t, align 8
  %threads = alloca [256 x i64], align 16
  %args = alloca [256 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #3
  %call1 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attr, i64 32768) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %1, 256
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 1000
  %3 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %3
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %args, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  %5 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [256 x i64], [256 x i64]* %threads, i64 0, i64 %idxprom5
  %6 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* %args, i64 0, i64 %idxprom7
  %7 = bitcast i32* %arrayidx8 to i8*
  %call9 = call i32 @pthread_create(i64* %arrayidx6, %union.pthread_attr_t* %attr, i8* (i8*)* @thread_function, i8* %7) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc16, %for.end
  %9 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %9, 256
  br i1 %cmp11, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond10
  %10 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [256 x i64], [256 x i64]* %threads, i64 0, i64 %idxprom13
  %11 = load i64, i64* %arrayidx14, align 8
  %call15 = call i32 @pthread_join(i64 %11, i8** null)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %12 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %12, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond10, !llvm.loop !6

for.end18:                                        ; preds = %for.cond10
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %13 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %13, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end21:                                        ; preds = %for.cond
  %call22 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attr) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_init(%union.pthread_attr_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setstacksize(%union.pthread_attr_t*, i64) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_destroy(%union.pthread_attr_t*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
