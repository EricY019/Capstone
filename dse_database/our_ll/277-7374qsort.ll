; ModuleID = 'code/277-7374qsort.c'
source_filename = "code/277-7374qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"\E6\8E\92\E5\BA\8F\E5\89\8D\EF\BC\9A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0A\E6\8E\92\E5\BA\8F\E5\BE\8C\EF\BC\9A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"i = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %number = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #4
  %0 = bitcast [10 x i32]* %number to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand() #4
  %rem = srem i32 %call3, 100
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %number, i64 0, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %number, i64 0, i64 %idxprom4
  %4 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %number, i64 0, i64 0
  call void @quickSort(i32* %arraydecay, i32 0, i32 9)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %6, 10
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %7 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %number, i64 0, i64 %idxprom13
  %8 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %9 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %9, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond9, !llvm.loop !6

for.end18:                                        ; preds = %for.cond9
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quickSort(i32* %number, i32 %left, i32 %right) #0 {
entry:
  %number.addr = alloca i32*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store i32* %number, i32** %number.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32, i32* %left.addr, align 4
  %1 = load i32, i32* %right.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %number.addr, align 8
  %3 = load i32, i32* %left.addr, align 4
  %4 = load i32, i32* %right.addr, align 4
  %call = call i32 @partition(i32* %2, i32 %3, i32 %4)
  store i32 %call, i32* %q, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %5, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32*, i32** %number.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32*, i32** %number.addr, align 8
  %11 = load i32, i32* %left.addr, align 4
  %12 = load i32, i32* %q, align 4
  %sub = sub nsw i32 %12, 1
  call void @quickSort(i32* %10, i32 %11, i32 %sub)
  %13 = load i32*, i32** %number.addr, align 8
  %14 = load i32, i32* %q, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, i32* %right.addr, align 4
  call void @quickSort(i32* %13, i32 %add, i32 %15)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(i32* %number, i32 %left, i32 %right) #0 {
entry:
  %number.addr = alloca i32*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %t13 = alloca i32, align 4
  store i32* %number, i32** %number.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32, i32* %left.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  %1 = load i32, i32* %left.addr, align 4
  store i32 %1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %right.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %number.addr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %number.addr, align 8
  %8 = load i32, i32* %right.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sle i32 %6, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %11 = load i32*, i32** %number.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %t, align 4
  %14 = load i32*, i32** %number.addr, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4
  %17 = load i32*, i32** %number.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  store i32 %16, i32* %arrayidx9, align 4
  %19 = load i32, i32* %t, align 4
  %20 = load i32*, i32** %number.addr, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  store i32 %19, i32* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %22, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %24 = load i32*, i32** %number.addr, align 8
  %25 = load i32, i32* %i, align 4
  %add = add nsw i32 %25, 1
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 %idxprom14
  %26 = load i32, i32* %arrayidx15, align 4
  store i32 %26, i32* %t13, align 4
  %27 = load i32*, i32** %number.addr, align 8
  %28 = load i32, i32* %right.addr, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %27, i64 %idxprom16
  %29 = load i32, i32* %arrayidx17, align 4
  %30 = load i32*, i32** %number.addr, align 8
  %31 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %31, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 %idxprom19
  store i32 %29, i32* %arrayidx20, align 4
  %32 = load i32, i32* %t13, align 4
  %33 = load i32*, i32** %number.addr, align 8
  %34 = load i32, i32* %right.addr, align 4
  %idxprom21 = sext i32 %34 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %33, i64 %idxprom21
  store i32 %32, i32* %arrayidx22, align 4
  %35 = load i32, i32* %i, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %36 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %36, 1
  ret i32 %add24
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = distinct !{!8, !5}
