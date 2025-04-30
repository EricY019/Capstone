; ModuleID = 'code/331-9783p94.c'
source_filename = "code/331-9783p94.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"sum: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"number of triangles: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %curr_square = alloca i64, align 8
  %curr_sqrt = alloca i64, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %two_a = alloca i64, align 8
  %test1 = alloca i64, align 8
  %test2 = alloca i64, align 8
  %sum = alloca i64, align 8
  %num_of_times = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %num_of_times, align 4
  store i64 0, i64* %curr_square, align 8
  store i64 0, i64* %curr_sqrt, align 8
  store i64 0, i64* %sum, align 8
  store i64 0, i64* %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %a, align 8
  %cmp = icmp ult i64 %0, 333333334
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %a, align 8
  %shl = shl i64 %1, 1
  store i64 %shl, i64* %two_a, align 8
  %2 = load i64, i64* %a, align 8
  %mul = mul i64 3, %2
  %3 = load i64, i64* %a, align 8
  %mul1 = mul i64 %mul, %3
  %4 = load i64, i64* %two_a, align 8
  %sub = sub i64 %mul1, %4
  %sub2 = sub i64 %sub, 1
  store i64 %sub2, i64* %test1, align 8
  %5 = load i64, i64* %test1, align 8
  %6 = load i64, i64* %two_a, align 8
  %shl3 = shl i64 %6, 1
  %add = add i64 %5, %shl3
  store i64 %add, i64* %test2, align 8
  %7 = load i64, i64* %curr_square, align 8
  %8 = load i64, i64* %test1, align 8
  %cmp4 = icmp ult i64 %7, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i64, i64* %curr_sqrt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %curr_sqrt, align 8
  %10 = load i64, i64* %curr_sqrt, align 8
  %11 = load i64, i64* %curr_sqrt, align 8
  %mul5 = mul i64 %10, %11
  store i64 %mul5, i64* %curr_square, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load i64, i64* %curr_square, align 8
  %13 = load i64, i64* %test1, align 8
  %cmp6 = icmp eq i64 %12, %13
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %14 = load i64, i64* %a, align 8
  %shl8 = shl i64 %14, 1
  %15 = load i64, i64* %a, align 8
  %add9 = add i64 %shl8, %15
  %add10 = add i64 %add9, 1
  %16 = load i64, i64* %sum, align 8
  %add11 = add i64 %16, %add10
  store i64 %add11, i64* %sum, align 8
  %17 = load i32, i32* %num_of_times, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %num_of_times, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end
  %18 = load i64, i64* %curr_square, align 8
  %19 = load i64, i64* %test2, align 8
  %cmp14 = icmp ult i64 %18, %19
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end13
  %20 = load i64, i64* %curr_sqrt, align 8
  %inc16 = add i64 %20, 1
  store i64 %inc16, i64* %curr_sqrt, align 8
  %21 = load i64, i64* %curr_sqrt, align 8
  %22 = load i64, i64* %curr_sqrt, align 8
  %mul17 = mul i64 %21, %22
  store i64 %mul17, i64* %curr_square, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13
  %23 = load i64, i64* %curr_square, align 8
  %24 = load i64, i64* %test2, align 8
  %cmp19 = icmp eq i64 %23, %24
  br i1 %cmp19, label %if.then20, label %if.end29

if.then20:                                        ; preds = %if.end18
  %25 = load i64, i64* %a, align 8
  %cmp21 = icmp ne i64 %25, 1
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.then20
  %26 = load i64, i64* %a, align 8
  %shl23 = shl i64 %26, 1
  %27 = load i64, i64* %a, align 8
  %add24 = add i64 %shl23, %27
  %sub25 = sub i64 %add24, 1
  %28 = load i64, i64* %sum, align 8
  %add26 = add i64 %28, %sub25
  store i64 %add26, i64* %sum, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then20
  %29 = load i32, i32* %num_of_times, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %num_of_times, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %30 = load i64, i64* %a, align 8
  %inc30 = add i64 %30, 1
  store i64 %inc30, i64* %a, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %31 = load i64, i64* %sum, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %31)
  %32 = load i32, i32* %num_of_times, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
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
