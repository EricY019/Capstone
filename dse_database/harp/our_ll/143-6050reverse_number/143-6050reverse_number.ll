; ModuleID = 'code/143-6050reverse_number.c'
source_filename = "code/143-6050reverse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%6d  \09->  \09%6d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reverse(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %neg = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %res, align 4
  store i32 0, i32* %neg, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %1, -1
  store i32 %mul, i32* %x.addr, align 4
  store i32 1, i32* %neg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %x.addr, align 4
  %rem = srem i32 %3, 10
  %4 = load i32, i32* %res, align 4
  %mul2 = mul nsw i32 %4, 10
  %add = add nsw i32 %rem, %mul2
  store i32 %add, i32* %res, align 4
  %5 = load i32, i32* %x.addr, align 4
  %div = sdiv i32 %5, 10
  store i32 %div, i32* %x.addr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %neg, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then3, label %if.end5

if.then3:                                         ; preds = %while.end
  %7 = load i32, i32* %res, align 4
  %mul4 = mul nsw i32 %7, -1
  store i32 %mul4, i32* %res, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %while.end
  %8 = load i32, i32* %res, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #3
  %rem = srem i32 %call2, 100000
  store i32 %rem, i32* %i, align 4
  %call3 = call i32 @rand() #3
  %cmp4 = icmp slt i32 %call3, 1073741823
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, -1
  store i32 %mul, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %call6 = call i32 @reverse(i32 %3)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %call6)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %c, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
