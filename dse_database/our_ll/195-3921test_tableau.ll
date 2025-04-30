; ModuleID = 'code/195-3921test_tableau.c'
source_filename = "code/195-3921test_tableau.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* %N, align 4
  %0 = load i32, i32* %N, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %N, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %N, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %while.body3, label %while.end15

while.body3:                                      ; preds = %while.cond1
  %9 = load i32, i32* %N, align 4
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, %10
  %sub4 = sub nsw i32 %sub, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %vla, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %vla, i64 %idxprom7
  store i32 %11, i32* %arrayidx8, align 4
  %13 = load i32, i32* %N, align 4
  %14 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 %13, %14
  %sub10 = sub nsw i32 %sub9, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %vla, i64 %idxprom11
  %15 = load i32, i32* %arrayidx12, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, i32* %arrayidx12, align 4
  %16 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %i, align 4
  br label %while.cond1, !llvm.loop !6

while.end15:                                      ; preds = %while.cond1
  store i32 0, i32* %i, align 4
  br label %while.cond16

while.cond16:                                     ; preds = %while.body18, %while.end15
  %17 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %17, 10
  br i1 %cmp17, label %while.body18, label %while.end22

while.body18:                                     ; preds = %while.cond16
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %vla, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %20 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, i32* %i, align 4
  br label %while.cond16, !llvm.loop !7

while.end22:                                      ; preds = %while.cond16
  store i32 0, i32* %retval, align 4
  %21 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %21)
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
