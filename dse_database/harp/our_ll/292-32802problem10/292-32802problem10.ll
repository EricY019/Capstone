; ModuleID = 'code/292-32802problem10.c'
source_filename = "code/292-32802problem10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"ANSWER: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sieve_and_sum(i32 %max) #0 {
entry:
  %max.addr = alloca i32, align 4
  %sum = alloca i64, align 8
  %list = alloca i32*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 %max, i32* %max.addr, align 4
  store i64 0, i64* %sum, align 8
  %0 = load i32, i32* %max.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias align 16 i8* @calloc(i64 %conv, i64 4) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %list, align 8
  store i64 2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i32, i32* %max.addr, align 4
  %conv1 = sext i32 %3 to i64
  %cmp = icmp slt i64 %2, %conv1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %list, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %5
  %6 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  store i64 %7, i64* %j, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.then
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %j, align 8
  %mul = mul nsw i64 %8, %9
  %10 = load i32, i32* %max.addr, align 4
  %conv6 = sext i32 %10 to i64
  %cmp7 = icmp slt i64 %mul, %conv6
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond5
  %11 = load i32*, i32** %list, align 8
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %j, align 8
  %mul10 = mul nsw i64 %12, %13
  %arrayidx11 = getelementptr inbounds i32, i32* %11, i64 %mul10
  store i32 -1, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %14 = load i64, i64* %j, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond5, !llvm.loop !4

for.end:                                          ; preds = %for.cond5
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc12

for.inc12:                                        ; preds = %if.end
  %15 = load i64, i64* %i, align 8
  %inc13 = add nsw i64 %15, 1
  store i64 %inc13, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end14:                                        ; preds = %for.cond
  store i64 2, i64* %i, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.end14
  %16 = load i64, i64* %i, align 8
  %17 = load i32, i32* %max.addr, align 4
  %conv16 = sext i32 %17 to i64
  %cmp17 = icmp slt i64 %16, %conv16
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond15
  %18 = load i32*, i32** %list, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 %19
  %20 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body19
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %sum, align 8
  %add = add nsw i64 %22, %21
  store i64 %add, i64* %sum, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.body19
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %23 = load i64, i64* %i, align 8
  %inc26 = add nsw i64 %23, 1
  store i64 %inc26, i64* %i, align 8
  br label %for.cond15, !llvm.loop !7

for.end27:                                        ; preds = %for.cond15
  %24 = load i64, i64* %sum, align 8
  ret i64 %24
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %sum, align 8
  %call = call i64 @sieve_and_sum(i32 2000000)
  store i64 %call, i64* %sum, align 8
  %0 = load i64, i64* %sum, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %0)
  ret i32 0
}

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
