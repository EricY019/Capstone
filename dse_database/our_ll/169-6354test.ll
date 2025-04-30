; ModuleID = 'code/169-6354test.c'
source_filename = "code/169-6354test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@a = dso_local global %struct.test { i32 1, i32 2, i32 3 }, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"HAHAAHA\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"AHAAHA\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HAAHA\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"AAHA\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"AHA\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"HA\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yo\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"returned from init\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @two(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @one(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %call = call i32 @two(i32 %0)
  %1 = load i32, i32* %b.addr, align 4
  %call1 = call i32 @two(i32 %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @short_func() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %call = call i32 @sleep(i32 1)
  store i32 1, i32* %i, align 4
  store i32 2, i32* %i, align 4
  ret void
}

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @long_func() #0 {
entry:
  %k = alloca i32, align 4
  store i32 0, i32* %k, align 4
  %call = call i32 @sleep(i32 5)
  store i32 1, i32* %k, align 4
  store i32 2, i32* %k, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca [100000 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 3, i32* %i, align 4
  store i32 4, i32* %j, align 4
  call void @long_func()
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @short_func()
  call void @short_func()
  call void @short_func()
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc12, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %10, 100000
  br i1 %cmp9, label %for.body10, label %for.end14

for.body10:                                       ; preds = %for.cond8
  %11 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body10
  %12 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond8, !llvm.loop !6

for.end14:                                        ; preds = %for.cond8
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %j, align 4
  %call15 = call i32 @one(i32 %13, i32 %14)
  store i32 %call15, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %call16 = call i32 @two(i32 %15)
  store i32 %call16, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc21, %for.end14
  %16 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %16, 6
  br i1 %cmp18, label %for.body19, label %for.end23

for.body19:                                       ; preds = %for.cond17
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %for.inc21

for.inc21:                                        ; preds = %for.body19
  %18 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %18, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond17, !llvm.loop !7

for.end23:                                        ; preds = %for.cond17
  store i32 0, i32* %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc27, %for.end23
  %19 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %19, 100000
  br i1 %cmp25, label %for.body26, label %for.end29

for.body26:                                       ; preds = %for.cond24
  %20 = load i32, i32* %i, align 4
  %rem = srem i32 %20, 40
  %add = add nsw i32 %rem, 40
  %conv = trunc i32 %add to i8
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [100000 x i8], [100000 x i8]* %temp, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc27

for.inc27:                                        ; preds = %for.body26
  %22 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %22, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond24, !llvm.loop !8

for.end29:                                        ; preds = %for.cond24
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %24, %23
  store i32 %add30, i32* %i, align 4
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

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
