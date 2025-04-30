; ModuleID = 'code/047-849main.c'
source_filename = "code/047-849main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Init tableau.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Lecture argument si present.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0D%d%%\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Ecart %d => %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %rnd = alloca i32, align 4
  %max = alloca i32, align 4
  %vals = alloca [10 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 1000000, i32* %max, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* %argc.addr, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.end8

if.then:                                          ; preds = %for.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #4
  store i32 %call4, i32* %max, align 4
  %6 = load i32, i32* %max, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  %7 = load i32, i32* %max, align 4
  %cmp6 = icmp sle i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 1000000, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.end
  %call9 = call i64 @time(i64* null) #5
  %conv = trunc i64 %call9 to i32
  call void @srand(i32 %conv) #5
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc20, %if.end8
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %max, align 4
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond10
  %call14 = call i32 @rand() #5
  %rem = srem i32 %call14, 10
  store i32 %rem, i32* %rnd, align 4
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %10, 100
  %11 = load i32, i32* %max, align 4
  %div = sdiv i32 %mul, %11
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %div)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fflush(%struct._IO_FILE* %12)
  %13 = load i32, i32* %rnd, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i64 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, i32* %arrayidx18, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body13
  %15 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond10, !llvm.loop !6

for.end22:                                        ; preds = %for.cond10
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc32, %for.end22
  %16 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %16, 10
  br i1 %cmp25, label %for.body27, label %for.end34

for.body27:                                       ; preds = %for.cond24
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i64 0, i64 %idxprom28
  %19 = load i32, i32* %arrayidx29, align 4
  %20 = load i32, i32* %max, align 4
  %div30 = sdiv i32 %20, 10
  %sub = sub nsw i32 %19, %div30
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %17, i32 %sub)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body27
  %21 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond24, !llvm.loop !7

for.end34:                                        ; preds = %for.cond24
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
