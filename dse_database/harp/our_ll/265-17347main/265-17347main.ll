; ModuleID = 'code/265-17347main.c'
source_filename = "code/265-17347main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Before sorting... \0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"After sorting... \0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %size = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %x = alloca i32, align 4
  %start = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 100, i32* %size, align 4
  %0 = load i32, i32* %size, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %x, align 4
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #4
  %5 = load i32, i32* %size, align 4
  %rem = srem i32 %call2, %5
  %6 = load i32, i32* %x, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32* %vla, i32** %start, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %size, align 4
  call void @print(i32* %vla, i32 %8)
  %9 = load i32*, i32** %start, align 8
  %10 = load i32, i32* %size, align 4
  call void @quick_sort(i32* %9, i32 0, i32 %10)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* %size, align 4
  call void @print(i32* %vla, i32 %11)
  store i32 0, i32* %retval, align 4
  %12 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %12)
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(i32* %array, i32 %size) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %rem = srem i32 %2, 30
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32*, i32** %array.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quick_sort(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  %1 = load i32, i32* %end.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %4 = load i32, i32* %end.addr, align 4
  %call = call i32 @partition(i32* %2, i32 %3, i32 %4)
  store i32 %call, i32* %pivot, align 4
  %5 = load i32*, i32** %array.addr, align 8
  %6 = load i32, i32* %start.addr, align 4
  %7 = load i32, i32* %pivot, align 4
  %sub = sub nsw i32 %7, 1
  call void @quick_sort(i32* %5, i32 %6, i32 %sub)
  %8 = load i32*, i32** %array.addr, align 8
  %9 = load i32, i32* %pivot, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %end.addr, align 4
  call void @quick_sort(i32* %8, i32 %add, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %array, i32 %idx1, i32 %idx2) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %idx1.addr = alloca i32, align 4
  %idx2.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %idx1, i32* %idx1.addr, align 4
  store i32 %idx2, i32* %idx2.addr, align 4
  %0 = load i32*, i32** %array.addr, align 8
  %1 = load i32, i32* %idx1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32*, i32** %array.addr, align 8
  %4 = load i32, i32* %idx2.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %array.addr, align 8
  %7 = load i32, i32* %idx1.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  store i32 %5, i32* %arrayidx4, align 4
  %8 = load i32, i32* %tmp, align 4
  %9 = load i32*, i32** %array.addr, align 8
  %10 = load i32, i32* %idx2.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  store i32 %8, i32* %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %pivot_value = alloca i32, align 4
  %pivot_idx = alloca i32, align 4
  %idx = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32*, i32** %array.addr, align 8
  %1 = load i32, i32* %end.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %pivot_value, align 4
  %3 = load i32, i32* %start.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %pivot_idx, align 4
  %4 = load i32, i32* %start.addr, align 4
  store i32 %4, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %idx, align 4
  %6 = load i32, i32* %end.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %array.addr, align 8
  %8 = load i32, i32* %idx, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %pivot_value, align 4
  %cmp3 = icmp sle i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %pivot_idx, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %pivot_idx, align 4
  %12 = load i32*, i32** %array.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %pivot_idx, align 4
  %14 = load i32, i32* %idx, align 4
  call void @swap(i32* %arrayidx4, i32 %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %idx, align 4
  %inc5 = add nsw i32 %15, 1
  store i32 %inc5, i32* %idx, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %16 = load i32*, i32** %array.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %pivot_idx, align 4
  %add = add nsw i32 %17, 1
  %18 = load i32, i32* %end.addr, align 4
  call void @swap(i32* %arrayidx6, i32 %add, i32 %18)
  %19 = load i32, i32* %pivot_idx, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
