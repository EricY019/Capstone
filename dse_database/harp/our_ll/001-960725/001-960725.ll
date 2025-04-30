; ModuleID = 'code/001-960725.c'
source_filename = "code/001-960725.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d %d %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %first_code = alloca i64, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 20151125, i64* %first_code, align 8
  store i32 1, i32* %row, align 4
  store i32 1, i32* %col, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %row, align 4
  %cmp = icmp ne i32 %0, 2947
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i32, i32* %col, align 4
  %cmp1 = icmp ne i32 %1, 3029
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load i64, i64* %first_code, align 8
  %call = call i64 @next_code(i64 %3)
  store i64 %call, i64* %first_code, align 8
  %4 = load i32, i32* %row, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %col, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %row, align 4
  store i32 1, i32* %col, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load i32, i32* %row, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %row, align 4
  %7 = load i32, i32* %col, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %col, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %lor.end
  %8 = load i32, i32* %row, align 4
  %9 = load i32, i32* %col, align 4
  %10 = load i64, i64* %first_code, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i64 %10)
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @next_code(i64 %prev_code) #0 {
entry:
  %prev_code.addr = alloca i64, align 8
  store i64 %prev_code, i64* %prev_code.addr, align 8
  %0 = load i64, i64* %prev_code.addr, align 8
  %mul = mul i64 %0, 252533
  %rem = urem i64 %mul, 33554393
  ret i64 %rem
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
