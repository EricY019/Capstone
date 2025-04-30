; ModuleID = 'code/301-22486fig1b.c'
source_filename = "code/301-22486fig1b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"x>0 || y>0\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"code/301-22486fig1b.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* %y, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %add = add nsw i32 %2, %3
  %cmp2 = icmp sle i32 %add, -2
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %x, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  %5 = load i32, i32* %x, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %x, align 4
  br label %if.end6

if.else:                                          ; preds = %while.body
  %6 = load i32, i32* %y, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, i32* %y, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %x, align 4
  %cmp7 = icmp sgt i32 %7, 0
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %while.end
  %8 = load i32, i32* %y, align 4
  %cmp9 = icmp sgt i32 %8, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false8, %while.end
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false8
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

9:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

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
