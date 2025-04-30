; ModuleID = 'code/253-1006e5.c'
source_filename = "code/253-1006e5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i64, align 8
  %mod = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 20, i64* %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i64, i64* %t, align 8
  %cmp = icmp ult i64 %0, -1
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 3, i32* %mod, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %mod, align 4
  %cmp2 = icmp slt i32 %1, 20
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i64, i64* %t, align 8
  %3 = load i32, i32* %mod, align 4
  %conv = sext i32 %3 to i64
  %rem = urem i64 %2, %conv
  %cmp4 = icmp ne i64 %rem, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  br label %for.end

if.else:                                          ; preds = %for.body3
  %4 = load i32, i32* %mod, align 4
  %cmp6 = icmp eq i32 %4, 19
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %5 = load i64, i64* %t, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %5)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %6 = load i32, i32* %mod, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %mod, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %7 = load i64, i64* %t, align 8
  %add = add i64 %7, 20
  store i64 %add, i64* %t, align 8
  br label %for.cond, !llvm.loop !6

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end11, %if.then8
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
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
