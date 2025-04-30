; ModuleID = 'code/092-12111pr97888-1.c'
source_filename = "code/092-12111pr97888-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@c = dso_local global i32 4, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca i32, align 4
  %b = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 -173, i32* %f, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %b, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %f, align 4
  %2 = load i32, i32* @a, align 4
  %tobool = icmp ne i32 %2, 0
  %land.ext = zext i1 %tobool to i32
  %rem = srem i32 %1, %land.ext
  store i32 %rem, i32* %g, align 4
  store i32 0, i32* %h, align 4
  store i32 0, i32* %i, align 4
  %3 = load i32, i32* %g, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  unreachable

if.end:                                           ; preds = %for.body
  %4 = load i32, i32* @c, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %f, align 4
  store i32 %5, i32* %h, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %h, align 4
  %cmp5 = icmp sgt i32 %6, -173
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %7 = load i32, i32* @d, align 4
  %8 = load i32, i32* %i, align 4
  %div = sdiv i32 %7, %8
  store i32 %div, i32* @e, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %9 = load i32, i32* %h, align 4
  store i32 %9, i32* %f, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %10 = load i32, i32* %b, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %f, align 4
  %cmp8 = icmp ne i32 %11, -173
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  call void @abort() #2
  unreachable

if.end10:                                         ; preds = %for.end
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
