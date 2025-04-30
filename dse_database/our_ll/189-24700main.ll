; ModuleID = 'code/189-24700main.c'
source_filename = "code/189-24700main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@palindrome.str = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [10 x i8] c"([{}()])\00\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"len: %d, mid: %d, next: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ret: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @palindrome() #0 {
entry:
  %arr = alloca [10 x i8], align 1
  %len = alloca i32, align 4
  %next = alloca i32, align 4
  %top = alloca i32, align 4
  %mid = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = bitcast [10 x i8]* %arr to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 10, i1 false)
  %1 = load i8*, i8** @palindrome.str, align 8
  %call = call i64 @strlen(i8* %1) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %next, align 4
  store i32 0, i32* %top, align 4
  %2 = load i32, i32* %len, align 4
  %div = sdiv i32 %2, 2
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %mid, align 4
  %3 = load i32, i32* %len, align 4
  %rem = srem i32 %3, 2
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %mid, align 4
  %add = add nsw i32 %4, 2
  store i32 %add, i32* %next, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %mid, align 4
  %add2 = add nsw i32 %5, 1
  store i32 %add2, i32* %next, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %len, align 4
  %7 = load i32, i32* %mid, align 4
  %8 = load i32, i32* %next, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7, i32 %8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %mid, align 4
  %cmp4 = icmp sle i32 %9, %10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** @palindrome.str, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %14 = load i32, i32* %top, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %top, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [10 x i8], [10 x i8]* %arr, i64 0, i64 %idxprom6
  store i8 %13, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %15, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %top, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %top, align 4
  store i32 0, i32* %ret, align 4
  %17 = load i32, i32* %next, align 4
  store i32 %17, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc24, %for.end
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %len, align 4
  %cmp10 = icmp slt i32 %18, %19
  br i1 %cmp10, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond9
  %20 = load i8*, i8** @palindrome.str, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  %22 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %22 to i32
  %23 = load i32, i32* %top, align 4
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [10 x i8], [10 x i8]* %arr, i64 0, i64 %idxprom16
  %24 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %24 to i32
  %cmp19 = icmp ne i32 %conv15, %conv18
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %for.body12
  store i32 0, i32* %ret, align 4
  br label %for.end27

if.else22:                                        ; preds = %for.body12
  store i32 1, i32* %ret, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else22
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %25 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, i32* %j, align 4
  %26 = load i32, i32* %top, align 4
  %dec26 = add nsw i32 %26, -1
  store i32 %dec26, i32* %top, align 4
  br label %for.cond9, !llvm.loop !6

for.end27:                                        ; preds = %if.then21, %for.cond9
  %27 = load i32, i32* %ret, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @palindrome()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
