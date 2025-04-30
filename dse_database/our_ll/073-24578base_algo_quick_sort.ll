; ModuleID = 'code/073-24578base_algo_quick_sort.c'
source_filename = "code/073-24578base_algo_quick_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"pivot: %d (%d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hello world\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\0Aquick sort\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0Adone\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quick_sort(i32* %s, i32 %l, i32 %r) #0 {
entry:
  %s.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %s, i32** %s.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %s.addr, align 8
  %3 = load i32, i32* %l.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %l.addr, align 4
  %6 = load i32, i32* %r.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6)
  %7 = load i32, i32* %l.addr, align 4
  store i32 %7, i32* %i, align 4
  %8 = load i32, i32* %r.addr, align 4
  store i32 %8, i32* %j, align 4
  %9 = load i32*, i32** %s.addr, align 8
  %10 = load i32, i32* %l.addr, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %11 = load i32, i32* %arrayidx2, align 4
  store i32 %11, i32* %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %if.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %12, %13
  br i1 %cmp3, label %while.body, label %while.end35

while.body:                                       ; preds = %while.cond
  br label %while.cond4

while.cond4:                                      ; preds = %while.body9, %while.body
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond4
  %16 = load i32, i32* %x, align 4
  %17 = load i32*, i32** %s.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 %idxprom6
  %19 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sle i32 %16, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond4
  %20 = phi i1 [ false, %while.cond4 ], [ %cmp8, %land.rhs ]
  br i1 %20, label %while.body9, label %while.end

while.body9:                                      ; preds = %land.end
  %21 = load i32, i32* %j, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond4, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %22, %23
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %while.end
  %24 = load i32*, i32** %s.addr, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %24, i64 %idxprom12
  %26 = load i32, i32* %arrayidx13, align 4
  %27 = load i32*, i32** %s.addr, align 8
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %27, i64 %idxprom14
  store i32 %26, i32* %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %while.end
  br label %while.cond17

while.cond17:                                     ; preds = %while.body24, %if.end16
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %j, align 4
  %cmp18 = icmp slt i32 %29, %30
  br i1 %cmp18, label %land.rhs19, label %land.end23

land.rhs19:                                       ; preds = %while.cond17
  %31 = load i32*, i32** %s.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %32 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %31, i64 %idxprom20
  %33 = load i32, i32* %arrayidx21, align 4
  %34 = load i32, i32* %x, align 4
  %cmp22 = icmp slt i32 %33, %34
  br label %land.end23

land.end23:                                       ; preds = %land.rhs19, %while.cond17
  %35 = phi i1 [ false, %while.cond17 ], [ %cmp22, %land.rhs19 ]
  br i1 %35, label %while.body24, label %while.end26

while.body24:                                     ; preds = %land.end23
  %36 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %36, 1
  store i32 %inc25, i32* %i, align 4
  br label %while.cond17, !llvm.loop !6

while.end26:                                      ; preds = %land.end23
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %37, %38
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %while.end26
  %39 = load i32*, i32** %s.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %39, i64 %idxprom29
  %41 = load i32, i32* %arrayidx30, align 4
  %42 = load i32*, i32** %s.addr, align 8
  %43 = load i32, i32* %j, align 4
  %dec31 = add nsw i32 %43, -1
  store i32 %dec31, i32* %j, align 4
  %idxprom32 = sext i32 %43 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %42, i64 %idxprom32
  store i32 %41, i32* %arrayidx33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %while.end26
  br label %while.cond, !llvm.loop !7

while.end35:                                      ; preds = %while.cond
  %44 = load i32, i32* %x, align 4
  %45 = load i32*, i32** %s.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %45, i64 %idxprom36
  store i32 %44, i32* %arrayidx37, align 4
  %47 = load i32*, i32** %s.addr, align 8
  %48 = load i32, i32* %l.addr, align 4
  %49 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %49, 1
  call void @quick_sort(i32* %47, i32 %48, i32 %sub)
  %50 = load i32*, i32** %s.addr, align 8
  %51 = load i32, i32* %i, align 4
  %add = add nsw i32 %51, 1
  %52 = load i32, i32* %r.addr, align 4
  call void @quick_sort(i32* %50, i32 %add, i32 %52)
  br label %return

return:                                           ; preds = %while.end35, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %iArr = alloca [20 x i32], align 16
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand() #3
  %rem = srem i32 %call3, 100
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %iArr, i64 0, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], [20 x i32]* %iArr, i64 0, i64 %idxprom4
  %3 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %iArr, i64 0, i64 0
  call void @quick_sort(i32* %arraydecay, i32 0, i32 19)
  store i32 0, i32* %i8, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %5 = load i32, i32* %i8, align 4
  %cmp10 = icmp slt i32 %5, 20
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %6 = load i32, i32* %i8, align 4
  %idxprom13 = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], [20 x i32]* %iArr, i64 0, i64 %idxprom13
  %7 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %8 = load i32, i32* %i8, align 4
  %inc17 = add nsw i32 %8, 1
  store i32 %inc17, i32* %i8, align 4
  br label %for.cond9, !llvm.loop !9

for.end18:                                        ; preds = %for.cond9
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
