; ModuleID = 'code/352-31227euler13.c'
source_filename = "code/352-31227euler13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"number.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%lld += %llu * %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"result: %lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %numbers = alloca [100 x [50 x i32]], align 16
  %_12digits = alloca i64, align 8
  %result = alloca i64, align 8
  %i = alloca i32, align 4
  %k = alloca i64, align 8
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @setvbuf(%struct._IO_FILE* %0, i8* null, i32 2, i64 0) #3
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call2, i32* %c, align 4
  %cmp = icmp ne i32 %call2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %3, 48
  %4 = load i32, i32* %x, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x [50 x i32]], [100 x [50 x i32]]* %numbers, i64 0, i64 %idxprom
  %5 = load i32, i32* %y, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx, i64 0, i64 %idxprom3
  store i32 %sub, i32* %arrayidx4, align 4
  %6 = load i32, i32* %y, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %y, align 4
  %7 = load i32, i32* %y, align 4
  %cmp5 = icmp eq i32 %7, 50
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  store i32 0, i32* %y, align 4
  %8 = load i32, i32* %x, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %if.end8

if.end8:                                          ; preds = %while.end, %entry
  store i64 0, i64* %_12digits, align 8
  store i64 0, i64* %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %if.end8
  %9 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %9, 100
  br i1 %cmp9, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i64 1, i64* %k, align 8
  store i32 10, i32* %a, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %a, align 4
  %cmp11 = icmp sge i32 %10, 0
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %11 = load i64, i64* %k, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [100 x [50 x i32]], [100 x [50 x i32]]* %numbers, i64 0, i64 %idxprom13
  %13 = load i32, i32* %a, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %conv = sext i32 %14 to i64
  %mul = mul i64 %11, %conv
  %15 = load i64, i64* %_12digits, align 8
  %add = add i64 %15, %mul
  store i64 %add, i64* %_12digits, align 8
  %16 = load i64, i64* %_12digits, align 8
  %17 = load i64, i64* %k, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [100 x [50 x i32]], [100 x [50 x i32]]* %numbers, i64 0, i64 %idxprom17
  %19 = load i32, i32* %a, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx18, i64 0, i64 %idxprom19
  %20 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %16, i64 %17, i32 %20)
  %21 = load i64, i64* %k, align 8
  %mul22 = mul i64 10, %21
  store i64 %mul22, i64* %k, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %22 = load i32, i32* %a, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %a, align 4
  br label %for.cond10, !llvm.loop !6

for.end:                                          ; preds = %for.cond10
  %23 = load i64, i64* %_12digits, align 8
  %24 = load i64, i64* %result, align 8
  %add23 = add i64 %24, %23
  store i64 %add23, i64* %result, align 8
  store i64 0, i64* %_12digits, align 8
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end26:                                        ; preds = %for.cond
  %26 = load i64, i64* %result, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %26)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @_IO_getc(%struct._IO_FILE*) #2

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
