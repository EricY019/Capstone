; ModuleID = 'code/049-148351064.c'
source_filename = "code/049-148351064.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"input.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count(i32 %a, i32 %b, i32 %c, i32 %d) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %mul = mul nsw i32 1000, %0
  %1 = load i32, i32* %b.addr, align 4
  %mul1 = mul nsw i32 100, %1
  %add = add nsw i32 %mul, %mul1
  %2 = load i32, i32* %c.addr, align 4
  %mul2 = mul nsw i32 10, %2
  %add3 = add nsw i32 %add, %mul2
  %3 = load i32, i32* %d.addr, align 4
  %add4 = add nsw i32 %add3, %3
  ret i32 %add4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %0)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 10
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.body3
  %3 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %3, 10
  br i1 %cmp5, label %for.body6, label %for.end16

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %m, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, i32* %m, align 4
  %cmp8 = icmp slt i32 %4, 10
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %m, align 4
  %call10 = call i32 @count(i32 %5, i32 %6, i32 %7, i32 %8)
  store i32 %call10, i32* %t, align 4
  %9 = load i32, i32* %t, align 4
  %mul = mul nsw i32 9, %9
  %10 = load i32, i32* %m, align 4
  %11 = load i32, i32* %k, align 4
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %call11 = call i32 @count(i32 %10, i32 %11, i32 %12, i32 %13)
  %cmp12 = icmp eq i32 %mul, %call11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  %14 = load i32, i32* %t, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %m, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond7, !llvm.loop !4

for.end:                                          ; preds = %for.cond7
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %16 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond4, !llvm.loop !6

for.end16:                                        ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %17 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end22:                                        ; preds = %for.cond
  ret i32 0
}

declare dso_local %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

declare dso_local i32 @printf(i8*, ...) #1

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
