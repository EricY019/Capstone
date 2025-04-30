; ModuleID = 'code/048-2415515_dekker_true-unreach-call.c'
source_filename = "code/048-2415515_dekker_true-unreach-call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@flag1 = dso_local global i32 0, align 4
@flag2 = dso_local global i32 0, align 4
@turn = dso_local global i32 0, align 4
@x = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thr1(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 1, i32* @flag1, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* @flag2, align 4
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end5

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @turn, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* @flag1, align 4
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %if.then
  %2 = load i32, i32* @turn, align 4
  %cmp3 = icmp ne i32 %2, 0
  br i1 %cmp3, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  br label %while.cond2, !llvm.loop !4

while.end:                                        ; preds = %while.cond2
  store i32 1, i32* @flag1, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %while.body
  br label %while.cond, !llvm.loop !6

while.end5:                                       ; preds = %while.cond
  store i32 0, i32* @x, align 4
  %3 = load i32, i32* @x, align 4
  %cmp6 = icmp sle i32 %3, 0
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.end5
  br label %ERROR

ERROR:                                            ; preds = %if.then7
  call void (...) @__VERIFIER_error() #3
  unreachable

if.end8:                                          ; preds = %while.end5
  store i32 1, i32* @turn, align 4
  store i32 0, i32* @flag1, align 4
  ret i8* null
}

; Function Attrs: noreturn
declare dso_local void @__VERIFIER_error(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thr2(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 1, i32* @flag2, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* @flag1, align 4
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end5

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @turn, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* @flag2, align 4
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %if.then
  %2 = load i32, i32* @turn, align 4
  %cmp3 = icmp ne i32 %2, 1
  br i1 %cmp3, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  br label %while.cond2, !llvm.loop !7

while.end:                                        ; preds = %while.cond2
  store i32 1, i32* @flag2, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %while.body
  br label %while.cond, !llvm.loop !8

while.end5:                                       ; preds = %while.cond
  store i32 1, i32* @x, align 4
  %3 = load i32, i32* @x, align 4
  %cmp6 = icmp sge i32 %3, 1
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.end5
  br label %ERROR

ERROR:                                            ; preds = %if.then7
  call void (...) @__VERIFIER_error() #3
  unreachable

if.end8:                                          ; preds = %while.end5
  store i32 1, i32* @turn, align 4
  store i32 0, i32* @flag2, align 4
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_create(i64* %t, %union.pthread_attr_t* null, i8* (i8*)* @thr1, i8* null) #4
  %call1 = call i8* @thr2(i8* null)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }

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
