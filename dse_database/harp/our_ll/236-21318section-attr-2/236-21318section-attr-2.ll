; ModuleID = 'code/236-21318section-attr-2.c'
source_filename = "code/236-21318section-attr-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@buf_hot = dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@buf_cold = dso_local global i8* null, align 8
@foo.i = internal global i32 0, section ".data", align 4
@sarr = dso_local global [10000 x i8*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** @buf_hot, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** @buf_cold, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %argc.addr, align 4
  call void @foo(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %path) #0 {
entry:
  %path.addr = alloca i32, align 4
  store i32 %path, i32* %path.addr, align 4
  %0 = load i32, i32* %path.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @foo.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* @foo.i, align 4
  %cmp = icmp slt i32 %1, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** @buf_hot, align 8
  %3 = load i32, i32* @foo.i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @sarr, i64 0, i64 %idxprom
  store i8* %2, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* @foo.i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @foo.i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @foo.i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %if.else
  %5 = load i32, i32* @foo.i, align 4
  %cmp2 = icmp slt i32 %5, 10000
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %6 = load i8*, i8** @buf_cold, align 8
  %7 = load i32, i32* @foo.i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @sarr, i64 0, i64 %idxprom4
  store i8* %6, i8** %arrayidx5, align 8
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %8 = load i32, i32* @foo.i, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* @foo.i, align 4
  br label %for.cond1, !llvm.loop !7

for.end8:                                         ; preds = %for.cond1
  br label %if.end

if.end:                                           ; preds = %for.end8, %for.end
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
