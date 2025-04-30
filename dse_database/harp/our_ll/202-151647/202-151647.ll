; ModuleID = 'code/202-151647.c'
source_filename = "code/202-151647.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seive = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @distinct(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %prev = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32*, i32** @seive, align 8
  %1 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %x, align 4
  store i32 1, i32* %prev, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %prev, align 4
  %cmp1 = icmp ne i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %count, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i32, i32* %x, align 4
  store i32 %7, i32* %prev, align 4
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %9, %8
  store i32 %div, i32* %n.addr, align 4
  %10 = load i32*, i32** @seive, align 8
  %11 = load i32, i32* %n.addr, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 %idxprom2
  %12 = load i32, i32* %arrayidx3, align 4
  store i32 %12, i32* %x, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %count, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @calloc(i64 10000000, i64 4) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** @seive, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10000000
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** @seive, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %6 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %6, 10000000
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, i32* %i, align 4
  %8 = load i32*, i32** @seive, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %8, i64 %idxprom5
  store i32 %7, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %j, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc7

for.inc7:                                         ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  store i32 1, i32* %x, align 4
  store i32 4, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %for.end8
  %13 = load i32, i32* %c, align 4
  %14 = load i32, i32* %n, align 4
  %cmp9 = icmp ne i32 %13, %14
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %x, align 4
  %call10 = call i32 @distinct(i32 %15)
  %16 = load i32, i32* %n, align 4
  %cmp11 = icmp eq i32 %call10, %16
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body
  %17 = load i32, i32* %c, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %c, align 4
  br label %if.end14

if.else:                                          ; preds = %while.body
  store i32 0, i32* %c, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %18 = load i32, i32* %x, align 4
  %inc15 = add nsw i32 %18, 1
  store i32 %inc15, i32* %x, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %19, %20
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %sub)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

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
!8 = distinct !{!8, !5}
