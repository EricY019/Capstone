; ModuleID = 'code/035-4268pr91293-1.c'
source_filename = "code/035-4268pr91293-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 62, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e(i64* %f, i32 %p2) #0 {
entry:
  %f.addr = alloca i64*, align 8
  %p2.addr = alloca i32, align 4
  store i64* %f, i64** %f.addr, align 8
  store i32 %p2, i32* %p2.addr, align 4
  %0 = load i32, i32* %p2.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64*, i64** %f.addr, align 8
  store i64 %conv, i64* %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2, i32* %g, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %g, align 4
  %1 = load i32, i32* @d, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %g, align 4
  %add = add nsw i32 %2, 4
  %3 = load i32, i32* @b, align 4
  %add1 = add i32 %3, %add
  store i32 %add1, i32* @b, align 4
  %4 = load i32, i32* %g, align 4
  %sub = sub nsw i32 5, %4
  %5 = load i32, i32* @c, align 4
  %add2 = add i32 %5, %sub
  store i32 %add2, i32* @c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %g, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %g, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* @b, align 4
  call void @e(i64* @a, i32 %7)
  %8 = load i64, i64* @a, align 8
  %cmp3 = icmp ne i64 %8, 2196
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end
  ret i32 0
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
