; ModuleID = 'code/197-9828declare-vla.c'
source_filename = "code/197-9828declare-vla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"A[i] == i\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"code/197-9828declare-vla.c\00", align 1
@__PRETTY_FUNCTION__.f = private unnamed_addr constant [13 x i8] c"void f(void)\00", align 1
@__PRETTY_FUNCTION__.f_data = private unnamed_addr constant [18 x i8] c"void f_data(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f() #0 {
entry:
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 1000, i32* %N, align 4
  %0 = load i32, i32* %N, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %N, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 0, %5
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %sub, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %N, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %vla, i64 %idxprom4
  store i32 %10, i32* %arrayidx5, align 4
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %12 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end8:                                         ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end8
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %N, align 4
  %cmp10 = icmp slt i32 %13, %14
  br i1 %cmp10, label %for.body11, label %for.end17

for.body11:                                       ; preds = %for.cond9
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %vla, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %17 = load i32, i32* %i, align 4
  %cmp14 = icmp eq i32 %16, %17
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body11
  br label %cond.end

cond.false:                                       ; preds = %for.body11
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__PRETTY_FUNCTION__.f, i64 0, i64 0)) #3
  unreachable

18:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %18, %cond.true
  br label %for.inc15

for.inc15:                                        ; preds = %cond.end
  %19 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond9, !llvm.loop !7

for.end17:                                        ; preds = %for.cond9
  %20 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %20)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_data() #0 {
entry:
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 1000, i32* %N, align 4
  %0 = load i32, i32* %N, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %N, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 0, %5
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %sub, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %N, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %vla, i64 %idxprom4
  store i32 %10, i32* %arrayidx5, align 4
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %12 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond1, !llvm.loop !9

for.end8:                                         ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end8
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %N, align 4
  %cmp10 = icmp slt i32 %13, %14
  br i1 %cmp10, label %for.body11, label %for.end17

for.body11:                                       ; preds = %for.cond9
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %vla, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %17 = load i32, i32* %i, align 4
  %cmp14 = icmp eq i32 %16, %17
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body11
  br label %cond.end

cond.false:                                       ; preds = %for.body11
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__PRETTY_FUNCTION__.f_data, i64 0, i64 0)) #3
  unreachable

18:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %18, %cond.true
  br label %for.inc15

for.inc15:                                        ; preds = %cond.end
  %19 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond9, !llvm.loop !10

for.end17:                                        ; preds = %for.cond9
  %20 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %20)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @f()
  call void @f_data()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
