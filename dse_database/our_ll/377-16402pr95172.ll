; ModuleID = 'code/377-16402pr95172.c'
source_filename = "code/377-16402pr95172.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32* @a, align 8
@c = dso_local global i16 0, align 2
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* @c, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end4

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.body3, %for.body
  %1 = load i32, i32* @d, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  store i32 1, i32* @a, align 4
  %2 = load i32*, i32** @b, align 8
  store i32 0, i32* %2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %3 = load i16, i16* @c, align 2
  %dec = add i16 %3, -1
  store i16 %dec, i16* @c, align 2
  br label %for.cond, !llvm.loop !6

for.end4:                                         ; preds = %for.cond
  %4 = load i32, i32* @a, align 4
  %cmp5 = icmp ne i32 %4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end4
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end4
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
!6 = distinct !{!6, !5}
