; ModuleID = 'code/220-2465pointer.c'
source_filename = "code/220-2465pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"\0D!0x%p does not hold\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A!0x%p holds\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0D(0x%p != NULL) does not hold\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\0A(0x%p != NULL) holds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i8* inttoptr (i64 1 to i8*), i8** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %ptr, align 8
  %1 = ptrtoint i8* %0 to i64
  %shl = shl i64 %1, 1
  %2 = inttoptr i64 %shl to i8*
  store i8* %2, i8** %ptr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %ptr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %3)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %ptr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  store i8* inttoptr (i64 1 to i8*), i8** %ptr, align 8
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %while.end
  %5 = load i8*, i8** %ptr, align 8
  %6 = ptrtoint i8* %5 to i64
  %shl3 = shl i64 %6, 1
  %7 = inttoptr i64 %shl3 to i8*
  store i8* %7, i8** %ptr, align 8
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %while.body4, label %while.end6

while.body4:                                      ; preds = %while.cond2
  %8 = load i8*, i8** %ptr, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  br label %while.cond2, !llvm.loop !6

while.end6:                                       ; preds = %while.cond2
  %9 = load i8*, i8** %ptr, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %9)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
