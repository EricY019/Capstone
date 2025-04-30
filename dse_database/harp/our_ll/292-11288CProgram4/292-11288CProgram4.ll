; ModuleID = 'code/292-11288CProgram4.c'
source_filename = "code/292-11288CProgram4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@staticFn.x = internal global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Value of autoFn(): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Value of registerFn(): %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Value of staticFn(): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticFn() #0 {
entry:
  %0 = load i32, i32* @staticFn.x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @staticFn.x, align 4
  %1 = load i32, i32* @staticFn.x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autoFn() #0 {
entry:
  %x = alloca i32, align 4
  store i32 0, i32* %x, align 4
  %0 = load i32, i32* %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registerFn() #0 {
entry:
  %x = alloca i32, align 4
  store i32 0, i32* %x, align 4
  %0 = load i32, i32* %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @autoFn()
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %j, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %2 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %2, 5
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %call5 = call i32 @registerFn()
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %call5)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %3 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %3, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond2, !llvm.loop !6

for.end9:                                         ; preds = %for.cond2
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end9
  %4 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %4, 5
  br i1 %cmp11, label %for.body12, label %for.end17

for.body12:                                       ; preds = %for.cond10
  %call13 = call i32 @staticFn()
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %call13)
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %5 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %5, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond10, !llvm.loop !7

for.end17:                                        ; preds = %for.cond10
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
