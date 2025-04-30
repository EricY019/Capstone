; ModuleID = 'code/354-136133_4.c'
source_filename = "code/354-136133_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, i32* %k, align 4
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom5
  store i8 %8, i8* %arrayidx6, align 1
  %11 = load i32, i32* %k, align 4
  %conv7 = trunc i32 %11 to i8
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i32, i32* %j, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @itoa(i32 %n, i8* %s) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %sign, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %1, 10
  %call = call i32 @abs(i32 %rem) #5
  %add = add nsw i32 %call, 48
  %conv = trunc i32 %add to i8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %4, 10
  store i32 %div, i32* %n.addr, align 4
  %tobool = icmp ne i32 %div, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %5 = load i32, i32* %sign, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i32, i32* %i, align 4
  %inc2 = add nsw i32 %7, 1
  store i32 %inc2, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  store i8 45, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1
  %10 = load i8*, i8** %s.addr, align 8
  call void @reverse(i8* %10)
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %result = alloca [1024 x i8], align 16
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %result, i64 0, i64 0
  call void @itoa(i32 -2147483648, i8* %arraydecay)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -2147483648)
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %result, i64 0, i64 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay1)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
