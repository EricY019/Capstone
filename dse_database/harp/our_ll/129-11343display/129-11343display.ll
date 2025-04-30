; ModuleID = 'code/129-11343display.c'
source_filename = "code/129-11343display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Hello world!\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i64, i64* @i, align 8
  call void @display_i64(i64 %0)
  call void @display_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_i64(i64 %it) #0 {
entry:
  %it.addr = alloca i64, align 8
  %c = alloca i32, align 4
  store i64 %it, i64* %it.addr, align 8
  %0 = load i64, i64* %it.addr, align 8
  %rem = srem i64 %0, 10
  %add = add nsw i64 48, %rem
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %c, align 4
  %1 = load i64, i64* %it.addr, align 8
  %div = sdiv i64 %1, 10
  store i64 %div, i64* %it.addr, align 8
  %2 = load i64, i64* %it.addr, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %it.addr, align 8
  call void @display_i64(i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %c, align 4
  %call = call i32 @putchar(i32 %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_string(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @putchar(i32 %conv2)
  %4 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call3 = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_si64(i64 %it) #0 {
entry:
  %it.addr = alloca i64, align 8
  store i64 %it, i64* %it.addr, align 8
  %0 = load i64, i64* %it.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 45)
  %1 = load i64, i64* %it.addr, align 8
  %sub = sub nsw i64 0, %1
  store i64 %sub, i64* %it.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %it.addr, align 8
  call void @display_i64(i64 %2)
  ret void
}

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
