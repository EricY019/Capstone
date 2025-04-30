; ModuleID = 'code/329-33660DelayTest.c'
source_filename = "code/329-33660DelayTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Starting ... \0Adelay 1/2 second ... \0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"now delay 3 seconds ... \0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"now delay 5 seconds ... \0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Done \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %delay = alloca i64, align 8
  store i64 500, i64* %delay, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %0 = load i64, i64* %delay, align 8
  call void @pause2(i64 %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 3000, i64* %delay, align 8
  %1 = load i64, i64* %delay, align 8
  call void @pause2(i64 %1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  call void @pause2(i64 5000)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pause2(i64 %msecs) #0 {
entry:
  %msecs.addr = alloca i64, align 8
  %finish = alloca i64, align 8
  %start = alloca i64, align 8
  store i64 %msecs, i64* %msecs.addr, align 8
  store i64 0, i64* %finish, align 8
  store i64 0, i64* %start, align 8
  %call = call i64 @clock() #3
  store i64 %call, i64* %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %finish, align 8
  %1 = load i64, i64* %msecs.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i64 @clock() #3
  %2 = load i64, i64* %start, align 8
  %sub = sub i64 %call1, %2
  store i64 %sub, i64* %finish, align 8
  %3 = load i64, i64* %finish, align 8
  %div = udiv i64 %3, 1000
  store i64 %div, i64* %finish, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

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
