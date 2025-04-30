; ModuleID = 'code/210-11266quick.c'
source_filename = "code/210-11266quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %d,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quickSort(i32* %vetor, i32 %esq, i32 %dir) #0 {
entry:
  %vetor.addr = alloca i32*, align 8
  %esq.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32* %vetor, i32** %vetor.addr, align 8
  store i32 %esq, i32* %esq.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load i32, i32* %esq.addr, align 4
  store i32 %0, i32* %i, align 4
  %1 = load i32, i32* %dir.addr, align 4
  store i32 %1, i32* %j, align 4
  %2 = load i32*, i32** %vetor.addr, align 8
  %3 = load i32, i32* %esq.addr, align 4
  %4 = load i32, i32* %dir.addr, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end27

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body6, %while.body
  %8 = load i32*, i32** %vetor.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i32, i32* %x, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %dir.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %14 = phi i1 [ false, %while.cond1 ], [ %cmp5, %land.rhs ]
  br i1 %14, label %while.body6, label %while.end

while.body6:                                      ; preds = %land.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %land.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body14, %while.end
  %16 = load i32*, i32** %vetor.addr, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  %19 = load i32, i32* %x, align 4
  %cmp10 = icmp sgt i32 %18, %19
  br i1 %cmp10, label %land.rhs11, label %land.end13

land.rhs11:                                       ; preds = %while.cond7
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %esq.addr, align 4
  %cmp12 = icmp sgt i32 %20, %21
  br label %land.end13

land.end13:                                       ; preds = %land.rhs11, %while.cond7
  %22 = phi i1 [ false, %while.cond7 ], [ %cmp12, %land.rhs11 ]
  br i1 %22, label %while.body14, label %while.end15

while.body14:                                     ; preds = %land.end13
  %23 = load i32, i32* %j, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond7, !llvm.loop !6

while.end15:                                      ; preds = %land.end13
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %j, align 4
  %cmp16 = icmp sle i32 %24, %25
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %while.end15
  %26 = load i32*, i32** %vetor.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %26, i64 %idxprom17
  %28 = load i32, i32* %arrayidx18, align 4
  store i32 %28, i32* %y, align 4
  %29 = load i32*, i32** %vetor.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 %idxprom19
  %31 = load i32, i32* %arrayidx20, align 4
  %32 = load i32*, i32** %vetor.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %33 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %32, i64 %idxprom21
  store i32 %31, i32* %arrayidx22, align 4
  %34 = load i32, i32* %y, align 4
  %35 = load i32*, i32** %vetor.addr, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %35, i64 %idxprom23
  store i32 %34, i32* %arrayidx24, align 4
  %37 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %37, 1
  store i32 %inc25, i32* %i, align 4
  %38 = load i32, i32* %j, align 4
  %dec26 = add nsw i32 %38, -1
  store i32 %dec26, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end15
  br label %while.cond, !llvm.loop !7

while.end27:                                      ; preds = %while.cond
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %esq.addr, align 4
  %cmp28 = icmp sgt i32 %39, %40
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end27
  %41 = load i32*, i32** %vetor.addr, align 8
  %42 = load i32, i32* %esq.addr, align 4
  %43 = load i32, i32* %j, align 4
  call void @quickSort(i32* %41, i32 %42, i32 %43)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %while.end27
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %dir.addr, align 4
  %cmp31 = icmp slt i32 %44, %45
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  %46 = load i32*, i32** %vetor.addr, align 8
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %dir.addr, align 4
  call void @quickSort(i32* %46, i32 %47, i32 %48)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %vetor = alloca [10000 x i32], align 16
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
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #3
  %rem = srem i32 %call2, 10000
  %add = add nsw i32 %rem, 1
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %vetor, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10000 x i32], [10000 x i32]* %vetor, i64 0, i64 0
  call void @quickSort(i32* %arraydecay, i32 0, i32 9999)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %3, 10000
  br i1 %cmp5, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond4
  %4 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds [10000 x i32], [10000 x i32]* %vetor, i64 0, i64 %idxprom8
  %5 = load i32, i32* %arrayidx9, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body7
  %6 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %6, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4, !llvm.loop !9

for.end13:                                        ; preds = %for.cond4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
