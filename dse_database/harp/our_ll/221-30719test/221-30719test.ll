; ModuleID = 'code/221-30719test.c'
source_filename = "code/221-30719test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca [20 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 12345, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  call void @itoa(i32 %0, i8* %arraydecay, i32 19)
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %arraydecay1)
  store i32 -12345, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %arraydecay2 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  call void @itoa(i32 %1, i8* %arraydecay2, i32 19)
  %arraydecay3 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %arraydecay3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @itoa(i32 %i, i8* %str, i32 %c) #0 {
entry:
  %i.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  store i32 %0, i32* %d, align 4
  store i32 0, i32* %flag, align 4
  %1 = load i32, i32* %i.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %flag, align 4
  %2 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %2, -1
  store i32 %mul, i32* %i.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i32, i32* %c.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %c.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %i.addr, align 4
  %rem = srem i32 %6, 10
  %add = add nsw i32 %rem, 48
  %conv = trunc i32 %add to i8
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i32, i32* %c.addr, align 4
  %dec2 = add nsw i32 %8, -1
  store i32 %dec2, i32* %c.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  store i8 %conv, i8* %arrayidx4, align 1
  %9 = load i32, i32* %i.addr, align 4
  %div = sdiv i32 %9, 10
  store i32 %div, i32* %i.addr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %flag, align 4
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %while.end
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i32, i32* %c.addr, align 4
  %dec8 = add nsw i32 %12, -1
  store i32 %dec8, i32* %c.addr, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  store i8 45, i8* %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %while.end
  %13 = load i32, i32* %c.addr, align 4
  %14 = load i32, i32* %d, align 4
  %sub = sub nsw i32 %14, %13
  store i32 %sub, i32* %d, align 4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %if.end11
  %15 = load i32, i32* %d, align 4
  %dec13 = add nsw i32 %15, -1
  store i32 %dec13, i32* %d, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %while.body14, label %while.end21

while.body14:                                     ; preds = %while.cond12
  %16 = load i8*, i8** %str.addr, align 8
  %17 = load i32, i32* %i.addr, align 4
  %18 = load i32, i32* %c.addr, align 4
  %add15 = add nsw i32 %17, %18
  %add16 = add nsw i32 %add15, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 %idxprom17
  %19 = load i8, i8* %arrayidx18, align 1
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i32, i32* %i.addr, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i.addr, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 %idxprom19
  store i8 %19, i8* %arrayidx20, align 1
  br label %while.cond12, !llvm.loop !6

while.end21:                                      ; preds = %while.cond12
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
!6 = distinct !{!6, !5}
