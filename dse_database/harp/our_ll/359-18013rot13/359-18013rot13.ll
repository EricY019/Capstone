; ModuleID = 'code/359-18013rot13.c'
source_filename = "code/359-18013rot13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rot13(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %0, 1
  %div = sdiv i32 %sub, 32
  store i32 %div, i32* %q, align 4
  %1 = load i32, i32* %x.addr, align 4
  %sub1 = sub nsw i32 %1, 1
  %rem = srem i32 %sub1, 32
  store i32 %rem, i32* %r, align 4
  %2 = load i32, i32* %q, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %q, align 4
  %cmp2 = icmp ne i32 %3, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %x.addr, align 4
  store i32 %4, i32* %retval, align 4
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %r, align 4
  %div3 = sdiv i32 %5, 13
  store i32 %div3, i32* %q, align 4
  %6 = load i32, i32* %q, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %7, 13
  store i32 %add, i32* %retval, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %8 = load i32, i32* %x.addr, align 4
  %sub5 = sub nsw i32 %8, 13
  store i32 %sub5, i32* %retval, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %9 = load i32, i32* %x.addr, align 4
  store i32 %9, i32* %retval, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb, %sw.bb4, %sw.bb6, %if.end
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %call1 = call i32 @rot13(i32 %1)
  %call2 = call i32 @putchar(i32 %call1)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i32 @putchar(i32) #1

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
