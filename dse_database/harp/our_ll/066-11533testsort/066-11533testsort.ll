; ModuleID = 'code/066-11533testsort.c'
source_filename = "code/066-11533testsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %bufs = alloca [500 x [20 x i8]], align 16
  %lines = alloca [500 x i8*], align 16
  %lens = alloca [500 x i64], align 16
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @srandom(i32 1) #4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 500
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %call = call i64 @random() #4
  %rem = srem i64 %call, 19
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [500 x i64], [500 x i64]* %lens, i64 0, i64 %1
  store i64 %rem, i64* %arrayidx, align 8
  %2 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [500 x [20 x i8]], [500 x [20 x i8]]* %bufs, i64 0, i64 %2
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx1, i64 0, i64 0
  %3 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds [500 x i8*], [500 x i8*]* %lines, i64 0, i64 %3
  store i8* %arraydecay, i8** %arrayidx2, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %j, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds [500 x i64], [500 x i64]* %lens, i64 0, i64 %5
  %6 = load i64, i64* %arrayidx4, align 8
  %cmp5 = icmp ult i64 %4, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %call7 = call i64 @random() #4
  %rem8 = srem i64 %call7, 26
  %add = add nsw i64 %rem8, 97
  %conv = trunc i64 %add to i8
  %7 = load i64, i64* %i, align 8
  %arrayidx9 = getelementptr inbounds [500 x i8*], [500 x i8*]* %lines, i64 0, i64 %7
  %8 = load i8*, i8** %arrayidx9, align 8
  %9 = load i64, i64* %j, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8 %conv, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %10 = load i64, i64* %j, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond3, !llvm.loop !4

for.end:                                          ; preds = %for.cond3
  %11 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds [500 x i8*], [500 x i8*]* %lines, i64 0, i64 %11
  %12 = load i8*, i8** %arrayidx11, align 8
  %13 = load i64, i64* %j, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8 0, i8* %arrayidx12, align 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %14 = load i64, i64* %i, align 8
  %inc14 = add i64 %14, 1
  store i64 %inc14, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end15:                                        ; preds = %for.cond
  %arraydecay16 = getelementptr inbounds [500 x i8*], [500 x i8*]* %lines, i64 0, i64 0
  %15 = bitcast i8** %arraydecay16 to i8*
  call void @qsort(i8* %15, i64 500, i64 8, i32 (i8*, i8*)* @compare)
  store i64 0, i64* %i, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.end15
  %16 = load i64, i64* %i, align 8
  %cmp18 = icmp ult i64 %16, 500
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond17
  %17 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds [500 x i8*], [500 x i8*]* %lines, i64 0, i64 %17
  %18 = load i8*, i8** %arrayidx20, align 8
  %cmp21 = icmp ne i8* %18, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond17
  %19 = phi i1 [ false, %for.cond17 ], [ %cmp21, %land.rhs ]
  br i1 %19, label %for.body23, label %for.end28

for.body23:                                       ; preds = %land.end
  %20 = load i64, i64* %i, align 8
  %arrayidx24 = getelementptr inbounds [500 x i8*], [500 x i8*]* %lines, i64 0, i64 %20
  %21 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i32 @puts(i8* %21)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body23
  %22 = load i64, i64* %i, align 8
  %inc27 = add i64 %22, 1
  store i64 %inc27, i64* %i, align 8
  br label %for.cond17, !llvm.loop !7

for.end28:                                        ; preds = %land.end
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srandom(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @random() #1

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %call = call i32 @strcmp(i8* %2, i8* %5) #5
  ret i32 %call
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
