; ModuleID = 'code/206-28020knr_3_5.c'
source_filename = "code/206-28020knr_3_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"\0A The value of the 10 base number %d in hex is %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca [13 x i8], align 1
  %base = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ret, align 4
  store i32 -31, i32* %n, align 4
  store i32 16, i32* %base, align 4
  %0 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %s, i64 0, i64 0
  %1 = load i32, i32* %base, align 4
  call void @itob(i32 %0, i8* %arraydecay, i32 %1)
  %arraydecay1 = getelementptr inbounds [13 x i8], [13 x i8]* %s, i64 0, i64 0
  call void @reverse(i8* %arraydecay1)
  %2 = load i32, i32* %n, align 4
  %arraydecay2 = getelementptr inbounds [13 x i8], [13 x i8]* %s, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %2, i8* %arraydecay2)
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @itob(i32 %n, i8* %s, i32 %base) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  %digit = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %sign, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %sign, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %base.addr, align 4
  %div = sdiv i32 %2, %3
  %4 = load i32, i32* %base.addr, align 4
  %mul = mul nsw i32 %div, %4
  %sub = sub nsw i32 %1, %mul
  %call = call i32 @abs(i32 %sub) #4
  %add = add nsw i32 %call, 48
  store i32 %add, i32* %digit, align 4
  %5 = load i32, i32* %digit, align 4
  %cmp = icmp sgt i32 %5, 57
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %digit, align 4
  %add1 = add nsw i32 %6, 7
  store i32 %add1, i32* %digit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %7 = load i32, i32* %digit, align 4
  %conv = trunc i32 %7 to i8
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %10 = load i32, i32* %base.addr, align 4
  %11 = load i32, i32* %n.addr, align 4
  %div2 = sdiv i32 %11, %10
  store i32 %div2, i32* %n.addr, align 4
  %tobool = icmp ne i32 %div2, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %12 = load i32, i32* %sign, align 4
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %do.end
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %14, 1
  store i32 %inc6, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom7
  store i8 45, i8* %arrayidx8, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end
  %15 = load i8*, i8** %s.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 %idxprom10
  store i8 0, i8* %arrayidx11, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %c, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %div = udiv i64 %call, 2
  %cmp = icmp ult i64 %conv, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  store i32 %conv2, i32* %c, align 4
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %call3 = call i64 @strlen(i8* %6) #5
  %7 = load i32, i32* %i, align 4
  %conv4 = sext i32 %7 to i64
  %sub = sub i64 %call3, %conv4
  %sub5 = sub i64 %sub, 1
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 %sub5
  %8 = load i8, i8* %arrayidx6, align 1
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 %idxprom7
  store i8 %8, i8* %arrayidx8, align 1
  %11 = load i32, i32* %c, align 4
  %conv9 = trunc i32 %11 to i8
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %call10 = call i64 @strlen(i8* %13) #5
  %14 = load i32, i32* %i, align 4
  %conv11 = sext i32 %14 to i64
  %sub12 = sub i64 %call10, %conv11
  %sub13 = sub i64 %sub12, 1
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 %sub13
  store i8 %conv9, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
