; ModuleID = 'code/342-31743ex002.c'
source_filename = "code/342-31743ex002.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid = alloca [1025 x i64], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1025
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @spawn_thread()
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1025 x i64], [1025 x i64]* %tid, i64 0, i64 %idxprom
  store i64 %call, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 1025
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1025 x i64], [1025 x i64]* %tid, i64 0, i64 %idxprom4
  %5 = load i64, i64* %arrayidx5, align 8
  %call6 = call i32 @pthread_join(i64 %5, i8** null)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %6 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %6, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end9:                                         ; preds = %for.cond1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spawn_thread() #0 {
entry:
  %tid = alloca i64, align 8
  %attr = alloca %union.pthread_attr_t, align 8
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #3
  %call1 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attr, i64 16384) #3
  %call2 = call i32 @pthread_create(i64* %tid, %union.pthread_attr_t* %attr, i8* (i8*)* @thread_start, i8* null) #3
  %call3 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attr) #3
  %0 = load i64, i64* %tid, align 8
  ret i64 %0
}

declare dso_local i32 @pthread_join(i64, i8**) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_init(%union.pthread_attr_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setstacksize(%union.pthread_attr_t*, i64) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_start(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @usleep(i32 1000)
  %0 = load i8*, i8** %arg.addr, align 8
  ret i8* %0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_destroy(%union.pthread_attr_t*) #2

declare dso_local i32 @usleep(i32) #1

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
