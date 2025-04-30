; ModuleID = 'code/157-28022pr61839_1.c'
source_filename = "code/157-28022pr61839_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 -1, i32* %a, align 4
  store volatile i32 1, i32* %b, align 4
  store i32 1, i32* %c, align 4
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 972195718
  %1 = load volatile i32, i32* %b, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp ule i64 1, %conv
  %conv1 = zext i1 %cmp to i32
  %shr = ashr i32 %add, %conv1
  store i32 %shr, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %2, 486097858
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bar() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 -1, i32* %a, align 4
  store volatile i32 1, i32* %b, align 4
  store i32 1, i32* %c, align 4
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 972195718
  %1 = load volatile i32, i32* %b, align 4
  %tobool = icmp ne i32 %1, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 3
  %shr = ashr i32 %add, %cond
  store i32 %shr, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %3, 243048929
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call i32 @foo()
  %call1 = call i32 @bar()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
