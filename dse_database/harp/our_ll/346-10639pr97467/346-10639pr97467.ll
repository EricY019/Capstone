; ModuleID = 'code/346-10639pr97467.c'
source_filename = "code/346-10639pr97467.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 1, align 4
@b = dso_local global i64 0, align 8
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @c, align 4
  %cmp = icmp ule i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %f, align 4
  %1 = load i32, i32* %e, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* @b, align 8
  %2 = load i32, i32* %f, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %3 = load i64, i64* @b, align 8
  %4 = load i32, i32* @c, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 %3, %sh_prom
  %tobool1 = icmp ne i64 %shl, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %5 = phi i1 [ true, %for.body ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* @a, align 4
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %6 = load i32, i32* @c, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* @c, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
