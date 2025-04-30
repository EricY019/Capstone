; ModuleID = 'code/246-23443switch-statement.armle.c'
source_filename = "code/246-23443switch-statement.armle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @call_me(i32 %sub, i8** %1)
  %2 = load i32, i32* %argc.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %sw.bb11
    i32 5, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, i32* %argc.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %4 = load i8**, i8*** %argv.addr, align 8
  %call2 = call i32 @call_me(i32 %sub1, i8** %4)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load i32, i32* %argc.addr, align 4
  %add = add nsw i32 %5, 1
  %6 = load i8**, i8*** %argv.addr, align 8
  %call4 = call i32 @call_me(i32 %add, i8** %6)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load i32, i32* %argc.addr, align 4
  %sub6 = sub nsw i32 %7, 2
  %8 = load i8**, i8*** %argv.addr, align 8
  %call7 = call i32 @call_me(i32 %sub6, i8** %8)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %9 = load i32, i32* %argc.addr, align 4
  %sub9 = sub nsw i32 %9, 5
  %10 = load i8**, i8*** %argv.addr, align 8
  %call10 = call i32 @call_me(i32 %sub9, i8** %10)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %11 = load i32, i32* %argc.addr, align 4
  %add12 = add nsw i32 %11, 3
  %12 = load i8**, i8*** %argv.addr, align 8
  %call13 = call i32 @call_me(i32 %add12, i8** %12)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %13 = load i32, i32* %argc.addr, align 4
  %add15 = add nsw i32 %13, 2
  %14 = load i8**, i8*** %argv.addr, align 8
  %call16 = call i32 @call_me(i32 %add15, i8** %14)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @call_me(i32 %x, i8** %p) #0 {
entry:
  %x.addr = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %a = alloca i8*, align 8
  %orig_a = alloca i8*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i8** %p, i8*** %p.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %a, align 8
  %3 = load i8*, i8** %a, align 8
  store i8* %3, i8** %orig_a, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i8*, i8** %a, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %a, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %a, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %a, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = load i8*, i8** %orig_a, align 8
  %10 = ptrtoint i8* %9 to i32
  %sub = sub nsw i32 %8, %10
  ret i32 %sub
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
