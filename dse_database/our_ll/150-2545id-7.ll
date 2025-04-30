; ModuleID = 'code/150-2545id-7.c'
source_filename = "code/150-2545id-7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* %BM_tab) #0 {
entry:
  %BM_tab.addr = alloca i32*, align 8
  %BM_tab_base = alloca i32*, align 8
  store i32* %BM_tab, i32** %BM_tab.addr, align 8
  %0 = load i32*, i32** %BM_tab.addr, align 8
  store i32* %0, i32** %BM_tab_base, align 8
  %1 = load i32*, i32** %BM_tab.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 256
  store i32* %add.ptr, i32** %BM_tab.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32*, i32** %BM_tab_base, align 8
  %3 = load i32*, i32** %BM_tab.addr, align 8
  %cmp = icmp ne i32* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32*, i32** %BM_tab.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 -1
  store i32* %incdec.ptr, i32** %BM_tab.addr, align 8
  store i32 6, i32* %incdec.ptr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %BM_tab = alloca [256 x i32], align 16
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i64 0, i64 0
  call void @foo(i32* %arraydecay)
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
