; ModuleID = 'code/327-10398problem_nine.c'
source_filename = "code/327-10398problem_nine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"The product is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 1000
  br i1 %cmp, label %while.body, label %while.end12

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %j, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %i, align 4
  %sub = sub i32 1000, %2
  %cmp2 = icmp ult i32 %1, %sub
  br i1 %cmp2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %3 = load i32, i32* %i, align 4
  %sub4 = sub i32 1000, %3
  %4 = load i32, i32* %j, align 4
  %sub5 = sub i32 %sub4, %4
  store i32 %sub5, i32* %k, align 4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %mul = mul i32 %5, %6
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %j, align 4
  %mul6 = mul i32 %7, %8
  %add = add i32 %mul, %mul6
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %k, align 4
  %mul7 = mul i32 %9, %10
  %cmp8 = icmp eq i32 %add, %mul7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body3
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %mul9 = mul i32 %11, %12
  %13 = load i32, i32* %k, align 4
  %mul10 = mul i32 %mul9, %13
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %mul10)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body3
  %14 = load i32, i32* %j, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %while.cond1
  %15 = load i32, i32* %i, align 4
  %inc11 = add i32 %15, 1
  store i32 %inc11, i32* %i, align 4
  br label %while.cond, !llvm.loop !6

while.end12:                                      ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end12, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
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
