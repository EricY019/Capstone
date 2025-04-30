; ModuleID = 'code/013-6163bytetostring.c'
source_filename = "code/013-6163bytetostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %str = alloca i8*, align 8
  %buf = alloca [20 x i8], align 16
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %str, align 8
  %0 = load i8*, i8** %str, align 8
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @byteToString(i8* %0, i32 8, i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @byteToString(i8* %buffer, i32 %len, i8* %string) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shr = ashr i32 %conv, 4
  store i32 %shr, i32* %tmp, align 4
  %5 = load i32, i32* %tmp, align 4
  %cmp1 = icmp sge i32 %5, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %tmp, align 4
  %cmp3 = icmp sle i32 %6, 9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %tmp, align 4
  %add = add nsw i32 %7, 48
  %conv5 = trunc i32 %add to i8
  %8 = load i8*, i8** %string.addr, align 8
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, 2
  %idxprom6 = sext i32 %mul to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %for.body
  %10 = load i32, i32* %tmp, align 4
  %cmp8 = icmp sge i32 %10, 10
  br i1 %cmp8, label %land.lhs.true10, label %if.else19

land.lhs.true10:                                  ; preds = %if.else
  %11 = load i32, i32* %tmp, align 4
  %cmp11 = icmp sle i32 %11, 15
  br i1 %cmp11, label %if.then13, label %if.else19

if.then13:                                        ; preds = %land.lhs.true10
  %12 = load i32, i32* %tmp, align 4
  %sub = sub nsw i32 %12, 10
  %add14 = add nsw i32 %sub, 65
  %conv15 = trunc i32 %add14 to i8
  %13 = load i8*, i8** %string.addr, align 8
  %14 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %14, 2
  %idxprom17 = sext i32 %mul16 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %idxprom17
  store i8 %conv15, i8* %arrayidx18, align 1
  br label %if.end

if.else19:                                        ; preds = %land.lhs.true10, %if.else
  %15 = load i8*, i8** %string.addr, align 8
  %16 = load i32, i32* %i, align 4
  %mul20 = mul nsw i32 %16, 2
  %idxprom21 = sext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %15, i64 %idxprom21
  store i8 70, i8* %arrayidx22, align 1
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then13
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then
  %17 = load i8*, i8** %buffer.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 %idxprom24
  %19 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %and = and i32 %conv26, 15
  store i32 %and, i32* %tmp, align 4
  %20 = load i32, i32* %tmp, align 4
  %cmp27 = icmp sge i32 %20, 0
  br i1 %cmp27, label %land.lhs.true29, label %if.else39

land.lhs.true29:                                  ; preds = %if.end23
  %21 = load i32, i32* %tmp, align 4
  %cmp30 = icmp sle i32 %21, 9
  br i1 %cmp30, label %if.then32, label %if.else39

if.then32:                                        ; preds = %land.lhs.true29
  %22 = load i32, i32* %tmp, align 4
  %add33 = add nsw i32 %22, 48
  %conv34 = trunc i32 %add33 to i8
  %23 = load i8*, i8** %string.addr, align 8
  %24 = load i32, i32* %i, align 4
  %mul35 = mul nsw i32 %24, 2
  %add36 = add nsw i32 %mul35, 1
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i8, i8* %23, i64 %idxprom37
  store i8 %conv34, i8* %arrayidx38, align 1
  br label %if.end59

if.else39:                                        ; preds = %land.lhs.true29, %if.end23
  %25 = load i32, i32* %tmp, align 4
  %cmp40 = icmp sge i32 %25, 10
  br i1 %cmp40, label %land.lhs.true42, label %if.else53

land.lhs.true42:                                  ; preds = %if.else39
  %26 = load i32, i32* %tmp, align 4
  %cmp43 = icmp sle i32 %26, 15
  br i1 %cmp43, label %if.then45, label %if.else53

if.then45:                                        ; preds = %land.lhs.true42
  %27 = load i32, i32* %tmp, align 4
  %sub46 = sub nsw i32 %27, 10
  %add47 = add nsw i32 %sub46, 65
  %conv48 = trunc i32 %add47 to i8
  %28 = load i8*, i8** %string.addr, align 8
  %29 = load i32, i32* %i, align 4
  %mul49 = mul nsw i32 %29, 2
  %add50 = add nsw i32 %mul49, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, i8* %28, i64 %idxprom51
  store i8 %conv48, i8* %arrayidx52, align 1
  br label %if.end58

if.else53:                                        ; preds = %land.lhs.true42, %if.else39
  %30 = load i8*, i8** %string.addr, align 8
  %31 = load i32, i32* %i, align 4
  %mul54 = mul nsw i32 %31, 2
  %add55 = add nsw i32 %mul54, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i8, i8* %30, i64 %idxprom56
  store i8 70, i8* %arrayidx57, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else53, %if.then45
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then32
  br label %for.inc

for.inc:                                          ; preds = %if.end59
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %33 = load i8*, i8** %string.addr, align 8
  %34 = load i32, i32* %i, align 4
  %mul60 = mul nsw i32 %34, 2
  %idxprom61 = sext i32 %mul60 to i64
  %arrayidx62 = getelementptr inbounds i8, i8* %33, i64 %idxprom61
  store i8 0, i8* %arrayidx62, align 1
  ret void
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
