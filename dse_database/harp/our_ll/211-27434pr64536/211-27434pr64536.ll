; ModuleID = 'code/211-27434pr64536.c'
source_filename = "code/211-27434pr64536.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i64 }

@e = dso_local global i64* null, align 8
@b = dso_local global i64 0, align 8
@a = dso_local global i64 0, align 8
@d = dso_local global i64* null, align 8
@f = dso_local global i64* null, align 8
@k = dso_local global i64 0, align 8
@g = dso_local global i64 0, align 8
@h = dso_local global %struct.S* null, align 8
@j = dso_local global i64 0, align 8
@i = dso_local global i64* null, align 8
@c = dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @baz() #0 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  %0 = load i64*, i64** @e, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* @b, align 8
  switch i64 %2, label %sw.epilog [
    i64 0, label %sw.bb
    i64 2, label %sw.bb
    i64 3, label %sw.bb1
    i64 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %3 = load i64, i64* @a, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* @a, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.body
  %4 = load i64, i64* @a, align 8
  %inc2 = add nsw i64 %4, 1
  store i64 %inc2, i64* @a, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  %5 = load i64, i64* @a, align 8
  %inc4 = add nsw i64 %5, 1
  store i64 %inc4, i64* @a, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %for.body, %sw.bb1, %sw.bb
  %6 = load i64*, i64** @d, align 8
  %tobool = icmp ne i64* %6, null
  br i1 %tobool, label %if.then, label %if.else10

if.then:                                          ; preds = %sw.epilog
  %call = call i64* @baz()
  store i64* %call, i64** @f, align 8
  %7 = load i64, i64* @k, align 8
  %inc5 = add nsw i64 %7, 1
  store i64 %inc5, i64* @k, align 8
  store i64 %7, i64* @g, align 8
  %8 = load %struct.S*, %struct.S** @h, align 8
  %q = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 0
  %tobool6 = icmp ne i64* %q, null
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %9 = load i64*, i64** @f, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* @j, align 8
  %11 = load i64*, i64** @f, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.S*, %struct.S** @h, align 8
  %q8 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 0
  store i64 %12, i64* %q8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load i64*, i64** @f, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.S*, %struct.S** @h, align 8
  %q9 = getelementptr inbounds %struct.S, %struct.S* %16, i32 0, i32 0
  store i64 %15, i64* %q9, align 8
  %17 = inttoptr i64 %15 to i64*
  store i64* %17, i64** @i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %18 = load i64*, i64** @f, align 8
  %19 = ptrtoint i64* %18 to i64
  %20 = load i64*, i64** @c, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %incdec.ptr, i64** @c, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64*, i64** @e, align 8
  %add.ptr = getelementptr inbounds i64, i64* %21, i64 6
  store i64* %add.ptr, i64** @e, align 8
  br label %if.end22

if.else10:                                        ; preds = %sw.epilog
  %call11 = call i64* @baz()
  store i64* %call11, i64** @f, align 8
  %22 = load i64, i64* @k, align 8
  %inc12 = add nsw i64 %22, 1
  store i64 %inc12, i64* @k, align 8
  store i64 %22, i64* @g, align 8
  %23 = load %struct.S*, %struct.S** @h, align 8
  %q13 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 0
  %tobool14 = icmp ne i64* %q13, null
  br i1 %tobool14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else10
  %24 = load i64*, i64** @f, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* @j, align 8
  %26 = load i64*, i64** @f, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.S*, %struct.S** @h, align 8
  %q16 = getelementptr inbounds %struct.S, %struct.S* %28, i32 0, i32 0
  store i64 %27, i64* %q16, align 8
  br label %if.end19

if.else17:                                        ; preds = %if.else10
  %29 = load i64*, i64** @f, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.S*, %struct.S** @h, align 8
  %q18 = getelementptr inbounds %struct.S, %struct.S* %31, i32 0, i32 0
  store i64 %30, i64* %q18, align 8
  %32 = inttoptr i64 %30 to i64*
  store i64* %32, i64** @i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  %33 = load i64*, i64** @f, align 8
  %34 = ptrtoint i64* %33 to i64
  %35 = load i64*, i64** @c, align 8
  %incdec.ptr20 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %incdec.ptr20, i64** @c, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** @e, align 8
  %add.ptr21 = getelementptr inbounds i64, i64* %36, i64 6
  store i64* %add.ptr21, i64** @e, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %37 = load i32, i32* %y, align 4
  %inc23 = add nsw i32 %37, 1
  store i32 %inc23, i32* %y, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 239}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
