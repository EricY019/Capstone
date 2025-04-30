; ModuleID = 'code/129-31934exce14.c'
source_filename = "code/129-31934exce14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intToStr(i32 %value, i8* %result) #0 {
entry:
  %value.addr = alloca i32, align 4
  %result.addr = alloca i8*, align 8
  %intString = alloca [81 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  store i8* %result, i8** %result.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load i32, i32* %value.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %result.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 45, i8* %arrayidx, align 1
  %2 = load i32, i32* %value.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %value.addr, align 4
  store i32 1, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load i32, i32* %value.addr, align 4
  %rem = srem i32 %3, 10
  %conv = trunc i32 %rem to i8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds [81 x i8], [81 x i8]* %intString, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %6 = load i32, i32* %value.addr, align 4
  %div = sdiv i32 %6, 10
  store i32 %div, i32* %value.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %value.addr, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, i32* %i, align 4
  %cmp4 = icmp sge i32 %9, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [81 x i8], [81 x i8]* %intString, i64 0, i64 %idxprom6
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %add = add nsw i32 %conv8, 48
  %conv9 = trunc i32 %add to i8
  %12 = load i8*, i8** %result.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx11, align 1
  %14 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %dec13 = add nsw i32 %15, -1
  store i32 %dec13, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** %result.addr, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 %idxprom14
  store i8 0, i8* %arrayidx15, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %result = alloca [81 x i8], align 16
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [81 x i8], [81 x i8]* %result, i64 0, i64 0
  call void @intToStr(i32 -867, i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [81 x i8], [81 x i8]* %result, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %arraydecay1)
  ret i32 0
}

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
