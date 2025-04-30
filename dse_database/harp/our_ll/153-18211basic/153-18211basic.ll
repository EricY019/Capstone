; ModuleID = 'code/153-18211basic.c'
source_filename = "code/153-18211basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.global_software_watchpoint = type { i32, [1000 x i8] }

@a = dso_local global %struct.test { i32 1, i32 2, i32 3 }, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"ABCDEFGHI\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ABCDEFGH\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ABCDEFG\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ABCDEF\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ABCDE\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ABCD\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ABC\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"AB\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"A\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Yo\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"returned from init\0A\00", align 1
@software_watchpoint = dso_local global %struct.global_software_watchpoint zeroinitializer, align 4

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
  %call = call i32 @sleep(i32 3)
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @long_func()
  call void @short_func()
  call void @short_func()
  call void @short_func()
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc14, %for.end
  %12 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %12, 100000
  br i1 %cmp11, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond10
  %13 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body12
  %14 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond10, !llvm.loop !6

for.end16:                                        ; preds = %for.cond10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %call17 = call i32 @one(i32 %15, i32 %16)
  store i32 %call17, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %call18 = call i32 @two(i32 %17)
  store i32 %call18, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc23, %for.end16
  %18 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %18, 6
  br i1 %cmp20, label %for.body21, label %for.end25

for.body21:                                       ; preds = %for.cond19
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %for.inc23

for.inc23:                                        ; preds = %for.body21
  %20 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond19, !llvm.loop !7

for.end25:                                        ; preds = %for.cond19
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc29, %for.end25
  %21 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %21, 100000
  br i1 %cmp27, label %for.body28, label %for.end31

for.body28:                                       ; preds = %for.cond26
  %22 = load i32, i32* %i, align 4
  %rem = srem i32 %22, 40
  %add = add nsw i32 %rem, 40
  %conv = trunc i32 %add to i8
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [100000 x i8], [100000 x i8]* %temp, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc29

for.inc29:                                        ; preds = %for.body28
  %24 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond26, !llvm.loop !8

for.end31:                                        ; preds = %for.cond26
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %26, %25
  store i32 %add32, i32* %i, align 4
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
