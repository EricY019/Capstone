; ModuleID = 'code/148-32078quick_sort.c'
source_filename = "code/148-32078quick_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  %cmp = icmp eq i32* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %b.addr, align 8
  %5 = load i32, i32* %4, align 4
  %xor = xor i32 %3, %5
  %6 = load i32*, i32** %a.addr, align 8
  store i32 %xor, i32* %6, align 4
  %7 = load i32*, i32** %a.addr, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %b.addr, align 8
  %10 = load i32, i32* %9, align 4
  %xor1 = xor i32 %8, %10
  %11 = load i32*, i32** %b.addr, align 8
  store i32 %xor1, i32* %11, align 4
  %12 = load i32*, i32** %a.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %b.addr, align 8
  %15 = load i32, i32* %14, align 4
  %xor2 = xor i32 %13, %15
  %16 = load i32*, i32** %a.addr, align 8
  store i32 %xor2, i32* %16, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @random_in_range(i32 %start, i32 %end) #0 {
entry:
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %call = call i32 @rand() #3
  %0 = load i32, i32* %end.addr, align 4
  %1 = load i32, i32* %start.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  %rem = srem i32 %call, %add
  %2 = load i32, i32* %start.addr, align 4
  %add1 = add nsw i32 %rem, %2
  ret i32 %add1
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort_one(i32* %a, i32 %length, i32 %left, i32 %right) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %small = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %left.addr, align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %right.addr, align 4
  %4 = load i32, i32* %length.addr, align 4
  %cmp5 = icmp sge i32 %3, %4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load i32, i32* %left.addr, align 4
  %6 = load i32, i32* %right.addr, align 4
  %call = call i32 @random_in_range(i32 %5, i32 %6)
  store i32 %call, i32* %index, align 4
  %7 = load i32*, i32** %a.addr, align 8
  %8 = load i32, i32* %index, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32*, i32** %a.addr, align 8
  %10 = load i32, i32* %right.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom6
  call void @swap(i32* %arrayidx, i32* %arrayidx7)
  %11 = load i32, i32* %left.addr, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* %small, align 4
  %12 = load i32, i32* %left.addr, align 4
  store i32 %12, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %index, align 4
  %14 = load i32, i32* %right.addr, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %a.addr, align 8
  %16 = load i32, i32* %index, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %18 = load i32*, i32** %a.addr, align 8
  %19 = load i32, i32* %right.addr, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom11
  %20 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp slt i32 %17, %20
  br i1 %cmp13, label %if.then14, label %if.end22

if.then14:                                        ; preds = %for.body
  %21 = load i32, i32* %small, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %small, align 4
  %22 = load i32, i32* %small, align 4
  %23 = load i32, i32* %index, align 4
  %cmp15 = icmp ne i32 %22, %23
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.then14
  %24 = load i32*, i32** %a.addr, align 8
  %25 = load i32, i32* %small, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 %idxprom17
  %26 = load i32*, i32** %a.addr, align 8
  %27 = load i32, i32* %index, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom19
  call void @swap(i32* %arrayidx18, i32* %arrayidx20)
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %28 = load i32, i32* %index, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %index, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %small, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %small, align 4
  %30 = load i32*, i32** %a.addr, align 8
  %31 = load i32, i32* %small, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %30, i64 %idxprom25
  %32 = load i32*, i32** %a.addr, align 8
  %33 = load i32, i32* %right.addr, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %32, i64 %idxprom27
  call void @swap(i32* %arrayidx26, i32* %arrayidx28)
  %34 = load i32, i32* %small, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quick_sort(i32* %a, i32 %length, i32 %left, i32 %right) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %index = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32, i32* %left.addr, align 4
  %1 = load i32, i32* %right.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end9

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %length.addr, align 4
  %4 = load i32, i32* %left.addr, align 4
  %5 = load i32, i32* %right.addr, align 4
  %call = call i32 @sort_one(i32* %2, i32 %3, i32 %4, i32 %5)
  store i32 %call, i32* %index, align 4
  %6 = load i32, i32* %index, align 4
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end9

if.end3:                                          ; preds = %if.end
  %7 = load i32, i32* %index, align 4
  %8 = load i32, i32* %left.addr, align 4
  %cmp4 = icmp sgt i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %9 = load i32*, i32** %a.addr, align 8
  %10 = load i32, i32* %length.addr, align 4
  %11 = load i32, i32* %left.addr, align 4
  %12 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %12, 1
  call void @quick_sort(i32* %9, i32 %10, i32 %11, i32 %sub)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %13 = load i32, i32* %index, align 4
  %14 = load i32, i32* %right.addr, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %15 = load i32*, i32** %a.addr, align 8
  %16 = load i32, i32* %length.addr, align 4
  %17 = load i32, i32* %index, align 4
  %add = add nsw i32 %17, 1
  %18 = load i32, i32* %right.addr, align 4
  call void @quick_sort(i32* %15, i32 %16, i32 %add, i32 %18)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then2, %if.then8, %if.end6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca [20 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #3
  %rem = srem i32 %call2, 1000
  %add = add nsw i32 %rem, 0
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %a, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %a, i64 0, i64 %idxprom3
  %3 = load i32, i32* %arrayidx4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %a, i64 0, i64 0
  call void @quick_sort(i32* %arraydecay, i32 20, i32 0, i32 19)
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %5, 20
  br i1 %cmp8, label %for.body10, label %for.end16

for.body10:                                       ; preds = %for.cond7
  %6 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [20 x i32], [20 x i32]* %a, i64 0, i64 %idxprom11
  %7 = load i32, i32* %arrayidx12, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body10
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond7, !llvm.loop !7

for.end16:                                        ; preds = %for.cond7
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

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
!7 = distinct !{!7, !5}
