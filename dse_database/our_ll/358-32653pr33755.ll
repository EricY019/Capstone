; ModuleID = 'code/358-32653pr33755.c'
source_filename = "code/358-32653pr33755.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Some text\00", align 1
@gv = dso_local global i32 0, align 4
@ptrs = dso_local global [2 x i8*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* %v, i8** %ptrs) #0 {
entry:
  %v.addr = alloca i32*, align 8
  %ptrs.addr = alloca i8**, align 8
  store i32* %v, i32** %v.addr, align 8
  store i8** %ptrs, i8*** %ptrs.addr, align 8
  %0 = load i32*, i32** %v.addr, align 8
  %1 = load volatile i32, i32* %0, align 4
  %and = and i32 %1, 1
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8**, i8*** %ptrs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  store i8* null, i8** %arrayidx, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load i8**, i8*** %ptrs.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %3, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %arrayidx2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %4 = load i32*, i32** %v.addr, align 8
  %5 = load volatile i32, i32* %4, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32*, i32** %v.addr, align 8
  %7 = load volatile i32, i32* %6, align 4
  %sub = sub nsw i32 %7, 1
  store volatile i32 %sub, i32* %6, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(i32* @gv, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @ptrs, i64 0, i64 0))
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
