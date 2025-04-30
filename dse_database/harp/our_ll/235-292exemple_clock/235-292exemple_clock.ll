; ModuleID = 'code/235-292exemple_clock.c'
source_filename = "code/235-292exemple_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"Dur\C3\A9e = %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"exemple_setitimer_2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %debut = alloca i64, align 8
  %duree = alloca double, align 8
  store i32 0, i32* %retval, align 4
  %call = call i64 @clock() #3
  store i64 %call, i64* %debut, align 8
  call void @action_a_mesurer()
  %call1 = call i64 @clock() #3
  %0 = load i64, i64* %debut, align 8
  %sub = sub nsw i64 %call1, %0
  %conv = sitofp i64 %sub to double
  store double %conv, double* %duree, align 8
  %1 = load double, double* %duree, align 8
  %div = fdiv double %1, 1.000000e+06
  store double %div, double* %duree, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = load double, double* %duree, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %3)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_a_mesurer() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fp1 = alloca %struct._IO_FILE*, align 8
  %fp2 = alloca %struct._IO_FILE*, align 8
  %x = alloca double, align 8
  store double 0.000000e+00, double* %x, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %2, %3
  %conv = sitofp i32 %mul to double
  %4 = load double, double* %x, align 8
  %add = fadd double %4, %conv
  store double %add, double* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %6 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end6:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc24, %for.end6
  %7 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %7, 500
  br i1 %cmp8, label %for.body10, label %for.end26

for.body10:                                       ; preds = %for.cond7
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp1, align 8
  %cmp11 = icmp ne %struct._IO_FILE* %call, null
  br i1 %cmp11, label %if.then, label %if.end23

if.then:                                          ; preds = %for.body10
  %call13 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %fp2, align 8
  %cmp14 = icmp ne %struct._IO_FILE* %call13, null
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %8 = bitcast i32* %j to i8*
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call17 = call i64 @fread(i8* %8, i64 4, i64 1, %struct._IO_FILE* %9)
  %cmp18 = icmp eq i64 %call17, 1
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = bitcast i32* %j to i8*
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call20 = call i64 @fwrite(i8* %10, i64 4, i64 1, %struct._IO_FILE* %11)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call21 = call i32 @fclose(%struct._IO_FILE* %12)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %13)
  br label %if.end23

if.end23:                                         ; preds = %if.end, %for.body10
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %14 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %14, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond7, !llvm.loop !8

for.end26:                                        ; preds = %for.cond7
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

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
