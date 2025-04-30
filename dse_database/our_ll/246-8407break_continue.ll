; ModuleID = 'code/246-8407break_continue.c'
source_filename = "code/246-8407break_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i29 = alloca i32, align 4
  %j30 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %if.then, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %rem = srem i32 %2, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !4

if.end:                                           ; preds = %while.body
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %3, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %while.end

if.end3:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then2, %while.cond
  store i32 0, i32* %i, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.end27, %if.then10, %while.end
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 20
  br i1 %cmp5, label %while.body6, label %while.end28

while.body6:                                      ; preds = %while.cond4
  %6 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %6, 1
  store i32 %add7, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %rem8 = srem i32 %7, 2
  %tobool9 = icmp ne i32 %rem8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body6
  br label %while.cond4, !llvm.loop !6

if.end11:                                         ; preds = %while.body6
  %8 = load i32, i32* %i, align 4
  %cmp12 = icmp eq i32 %8, 16
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  br label %while.end28

if.end14:                                         ; preds = %if.end11
  %9 = load i32, i32* %i, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 20, i32* %j, align 4
  br label %while.cond16

while.cond16:                                     ; preds = %if.end25, %if.then21, %if.end14
  %10 = load i32, i32* %j, align 4
  %tobool17 = icmp ne i32 %10, 0
  br i1 %tobool17, label %while.body18, label %while.end27

while.body18:                                     ; preds = %while.cond16
  %11 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* %j, align 4
  %12 = load i32, i32* %j, align 4
  %rem19 = srem i32 %12, 2
  %tobool20 = icmp ne i32 %rem19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %while.body18
  br label %while.cond16, !llvm.loop !7

if.end22:                                         ; preds = %while.body18
  %13 = load i32, i32* %j, align 4
  %cmp23 = icmp eq i32 %13, 4
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  br label %while.end27

if.end25:                                         ; preds = %if.end22
  %14 = load i32, i32* %j, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %while.cond16, !llvm.loop !7

while.end27:                                      ; preds = %if.then24, %while.cond16
  br label %while.cond4, !llvm.loop !6

while.end28:                                      ; preds = %if.then13, %while.cond4
  store i32 0, i32* %i29, align 4
  store i32 10, i32* %j30, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end28
  %15 = load i32, i32* %i29, align 4
  %rem31 = srem i32 %15, 2
  %tobool32 = icmp ne i32 %rem31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.cond
  br label %for.inc

if.end34:                                         ; preds = %for.cond
  %16 = load i32, i32* %i29, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %17 = load i32, i32* %i29, align 4
  %18 = load i32, i32* %j30, align 4
  %cmp36 = icmp eq i32 %17, %18
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  br label %for.end

if.end38:                                         ; preds = %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %if.then33
  %19 = load i32, i32* %i29, align 4
  %add39 = add nsw i32 %19, 1
  store i32 %add39, i32* %i29, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then37
  %20 = load i32, i32* %i, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
