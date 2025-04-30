; ModuleID = 'code/366-74713.c'
source_filename = "code/366-74713.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@sharedi = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sharedi = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %thrd1 = alloca i64, align 8
  %thrd2 = alloca i64, align 8
  %thrd3 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_create(i64* %thrd1, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @increse_num to i8* (i8*)*), i8* null) #3
  store i32 %call, i32* %ret, align 4
  %call1 = call i32 @pthread_create(i64* %thrd2, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @increse_num to i8* (i8*)*), i8* null) #3
  store i32 %call1, i32* %ret, align 4
  %call2 = call i32 @pthread_create(i64* %thrd3, %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @increse_num to i8* (i8*)*), i8* null) #3
  store i32 %call2, i32* %ret, align 4
  %0 = load i64, i64* %thrd1, align 8
  %call3 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* %thrd2, align 8
  %call4 = call i32 @pthread_join(i64 %1, i8** null)
  %2 = load i64, i64* %thrd3, align 8
  %call5 = call i32 @pthread_join(i64 %2, i8** null)
  %3 = load i32, i32* @sharedi, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %3)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @increse_num() #0 {
entry:
  %i = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp sle i64 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @sharedi, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %tmp, align 8
  %2 = load i64, i64* %tmp, align 8
  %add = add nsw i64 %2, 1
  store i64 %add, i64* %tmp, align 8
  %3 = load i64, i64* %tmp, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, i32* @sharedi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %inc = add nsw i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @pthread_join(i64, i8**) #2

declare dso_local i32 @printf(i8*, ...) #2

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
