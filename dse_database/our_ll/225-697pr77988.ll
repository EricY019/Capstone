; ModuleID = 'code/225-697pr77988.c'
source_filename = "code/225-697pr77988.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal global i32 2, align 4
@b = dso_local global [1 x i32] zeroinitializer, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* @a, align 4
  store i32 %0, i32* %e, align 4
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @b, i64 0, i64 0), i32** %f, align 8
  %1 = load i32, i32* @d, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %e, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %e, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %e, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %e, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %4 = load i32, i32* %e, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  br label %L1

L1:                                               ; preds = %if.end10, %if.then2
  %5 = load i32*, i32** %f, align 8
  %cmp3 = icmp ult i32* getelementptr inbounds ([1 x i32], [1 x i32]* @b, i64 0, i64 0), %5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %L1
  call void @abort() #2
  unreachable

if.end5:                                          ; preds = %L1
  %6 = load i32*, i32** %f, align 8
  %7 = load i32, i32* %6, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %8 = load i32, i32* @c, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* @c, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  ret i32 0

if.end10:                                         ; preds = %if.end
  store i32* null, i32** %f, align 8
  br label %L1
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
