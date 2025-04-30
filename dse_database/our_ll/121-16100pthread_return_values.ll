; ModuleID = 'code/121-16100pthread_return_values.c'
source_filename = "code/121-16100pthread_return_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [28 x i8] c"Computing factorial of %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"The factorial of %d is %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @compute_factorial(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %factorial = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %n, align 4
  store i32 1, i32* %i, align 4
  store i32 1, i32* %factorial, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %factorial, align 4
  %mul = mul nsw i32 %6, %5
  store i32 %mul, i32* %factorial, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %factorial, align 4
  %conv = sext i32 %8 to i64
  %9 = inttoptr i64 %conv to i8*
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thread = alloca i64, align 8
  %number = alloca i32, align 4
  %factorial = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* %number, align 4
  store i32 0, i32* %factorial, align 4
  %0 = bitcast i32* %number to i8*
  %call = call i32 @pthread_create(i64* %thread, %union.pthread_attr_t* null, i8* (i8*)* @compute_factorial, i8* %0) #3
  %1 = load i32, i32* %number, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %1)
  %2 = load i64, i64* %thread, align 8
  %3 = bitcast i32* %factorial to i8*
  %4 = bitcast i8* %3 to i8**
  %call2 = call i32 @pthread_join(i64 %2, i8** %4)
  %5 = load i32, i32* %number, align 4
  %6 = load i32, i32* %factorial, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %5, i32 %6)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

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
