; ModuleID = 'code/112-32621bin2bf.c'
source_filename = "code/112-32621bin2bf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [6 x i8] c".[-]\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"[<\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c">-]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"[<++>-]<\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"[<++++++>-]<\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_and_reset() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bf10(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bf50(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 7, i32* %m, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i32, i32* %m, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %d, align 4
  %2 = load i32, i32* %c.addr, align 4
  %3 = load i32, i32* %m, align 4
  %rem = srem i32 %2, %3
  store i32 %rem, i32* %r, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc7, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %d, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond3
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %9 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end9:                                         ; preds = %for.cond3
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %10 = load i32, i32* %r, align 4
  call void @bf10(i32 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bf100(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %rem = srem i32 %0, 2
  store i32 %rem, i32* %r, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %1 = load i32, i32* %c.addr, align 4
  %div = sdiv i32 %1, 2
  call void @bf50(i32 %div)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %2 = load i32, i32* %r, align 4
  call void @bf10(i32 %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bf255(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %rem = srem i32 %0, 6
  store i32 %rem, i32* %r, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %1 = load i32, i32* %c.addr, align 4
  %div = sdiv i32 %1, 6
  call void @bf50(i32 %div)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %2 = load i32, i32* %r, align 4
  call void @bf10(i32 %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp sle i32 %1, 10
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  call void @bf10(i32 %2)
  call void @print_and_reset()
  br label %if.end9

if.else:                                          ; preds = %while.body
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp sle i32 %3, 50
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %4 = load i32, i32* %c, align 4
  call void @bf50(i32 %4)
  call void @print_and_reset()
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %5 = load i32, i32* %c, align 4
  %cmp5 = icmp sle i32 %5, 100
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  %6 = load i32, i32* %c, align 4
  call void @bf100(i32 %6)
  call void @print_and_reset()
  br label %if.end

if.else7:                                         ; preds = %if.else4
  %7 = load i32, i32* %c, align 4
  call void @bf255(i32 %7)
  call void @print_and_reset()
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
