; ModuleID = 'code/221-5741demo1.c'
source_filename = "code/221-5741demo1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"Total is %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @child_thread(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %num = alloca i64, align 8
  %i = alloca i64, align 8
  %sum = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  store i64 %1, i64* %num, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %sum, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %i, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, i64* %i, align 8
  %3 = load i64, i64* %num, align 8
  %cmp = icmp sle i64 %inc, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %sum, align 8
  %add = add nsw i64 %5, %4
  store i64 %add, i64* %sum, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i64, i64* %sum, align 8
  %7 = inttoptr i64 %6 to i8*
  call void @pthread_exit(i8* %7) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %total = alloca i64, align 8
  %h_thread = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_create(i64* %h_thread, %union.pthread_attr_t* null, i8* (i8*)* @child_thread, i8* inttoptr (i64 100 to i8*)) #5
  %0 = load i64, i64* %h_thread, align 8
  %1 = bitcast i64* %total to i8*
  %2 = bitcast i8* %1 to i8**
  %call1 = call i32 @pthread_join(i64 %0, i8** %2)
  %3 = load i64, i64* %total, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %3)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #3

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
