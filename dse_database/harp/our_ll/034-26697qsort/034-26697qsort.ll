; ModuleID = 'code/034-26697qsort.c'
source_filename = "code/034-26697qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %t = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %t, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %a.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %t, align 4
  %6 = load i32*, i32** %b.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(i32* %arr, i32 %lo, i32 %hi) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %hi.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %pivot, align 4
  %3 = load i32, i32* %lo.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  %4 = load i32, i32* %lo.addr, align 4
  store i32 %4, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %hi.addr, align 4
  %sub1 = sub nsw i32 %6, 1
  %cmp = icmp sle i32 %5, %sub1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %arr.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32, i32* %pivot, align 4
  %cmp4 = icmp sle i32 %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load i32*, i32** %arr.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %14 = load i32*, i32** %arr.addr, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  call void @swap(i32* %arrayidx6, i32* %arrayidx8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, i32* %j, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %arr.addr, align 8
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 1
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %19 = load i32*, i32** %arr.addr, align 8
  %20 = load i32, i32* %hi.addr, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  call void @swap(i32* %arrayidx11, i32* %arrayidx13)
  %21 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %21, 1
  ret i32 %add14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qsort(i32* %arr, i32 %lo, i32 %hi) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %wall = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  %0 = load i32, i32* %lo.addr, align 4
  %1 = load i32, i32* %hi.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %arr.addr, align 8
  %3 = load i32, i32* %lo.addr, align 4
  %4 = load i32, i32* %hi.addr, align 4
  %call = call i32 @partition(i32* %2, i32 %3, i32 %4)
  store i32 %call, i32* %wall, align 4
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %lo.addr, align 4
  %7 = load i32, i32* %wall, align 4
  %sub = sub nsw i32 %7, 1
  call void @qsort(i32* %5, i32 %6, i32 %sub)
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %wall, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %hi.addr, align 4
  call void @qsort(i32* %8, i32 %add, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 0
  store i32 9, i32* %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 1
  store i32 4, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 2
  store i32 1, i32* %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 3
  store i32 -18, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 4
  store i32 3, i32* %arrayidx4, align 16
  %arrayidx5 = getelementptr inbounds i32, i32* %vla, i64 5
  store i32 6, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds i32, i32* %vla, i64 6
  store i32 7, i32* %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %vla, i64 7
  store i32 2, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds i32, i32* %vla, i64 8
  store i32 0, i32* %arrayidx8, align 16
  %arrayidx9 = getelementptr inbounds i32, i32* %vla, i64 9
  store i32 -2, i32* %arrayidx9, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  %6 = load i32, i32* %arrayidx10, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %8, 1
  call void @qsort(i32* %vla, i32 0, i32 %sub)
  store i32 0, i32* %i12, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc19, %for.end
  %9 = load i32, i32* %i12, align 4
  %10 = load i32, i32* %n, align 4
  %cmp14 = icmp slt i32 %9, %10
  br i1 %cmp14, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond13
  %11 = load i32, i32* %i12, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %vla, i64 %idxprom16
  %12 = load i32, i32* %arrayidx17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %13 = load i32, i32* %i12, align 4
  %inc20 = add nsw i32 %13, 1
  store i32 %inc20, i32* %i12, align 4
  br label %for.cond13, !llvm.loop !7

for.end21:                                        ; preds = %for.cond13
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %14)
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
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
