; ModuleID = 'code/382-28395christmas_tree.c'
source_filename = "code/382-28395christmas_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @christmas_tree(i32 %h) #0 {
entry:
  %h.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %ch = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 1, i32* %d, align 4
  store i32 1, i32* %ch, align 4
  store i32 2, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %h.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %d, align 4
  %add = add nsw i32 %2, 2
  store i32 %add, i32* %d, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %a, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %d, align 4
  %div = sdiv i32 %4, 2
  store i32 %div, i32* %e, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc19, %for.end
  %5 = load i32, i32* %a, align 4
  %6 = load i32, i32* %h.addr, align 4
  %cmp2 = icmp sle i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end21

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %b, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc7, %for.body3
  %7 = load i32, i32* %b, align 4
  %8 = load i32, i32* %e, align 4
  %cmp5 = icmp sle i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end9

for.body6:                                        ; preds = %for.cond4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %for.inc7

for.inc7:                                         ; preds = %for.body6
  %9 = load i32, i32* %b, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %b, align 4
  br label %for.cond4, !llvm.loop !6

for.end9:                                         ; preds = %for.cond4
  store i32 1, i32* %c, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc14, %for.end9
  %10 = load i32, i32* %c, align 4
  %11 = load i32, i32* %ch, align 4
  %cmp11 = icmp sle i32 %10, %11
  br i1 %cmp11, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond10
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc14

for.inc14:                                        ; preds = %for.body12
  %12 = load i32, i32* %c, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, i32* %c, align 4
  br label %for.cond10, !llvm.loop !7

for.end16:                                        ; preds = %for.cond10
  %13 = load i32, i32* %ch, align 4
  %add17 = add nsw i32 %13, 2
  store i32 %add17, i32* %ch, align 4
  %14 = load i32, i32* %e, align 4
  %sub = sub nsw i32 %14, 1
  store i32 %sub, i32* %e, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc19

for.inc19:                                        ; preds = %for.end16
  %15 = load i32, i32* %a, align 4
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, i32* %a, align 4
  br label %for.cond1, !llvm.loop !8

for.end21:                                        ; preds = %for.cond1
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @christmas_tree(i32 4)
  call void @christmas_tree(i32 7)
  call void @christmas_tree(i32 11)
  ret i32 0
}

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
!8 = distinct !{!8, !5}
