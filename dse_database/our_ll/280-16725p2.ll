; ModuleID = 'code/280-16725p2.c'
source_filename = "code/280-16725p2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING = dso_local constant i32 10, align 4
@.str = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gra\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"catcher\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bird\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cats\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"drib\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"scat\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tac\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertionSort(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end27

if.end:                                           ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.end
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 %idxprom7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 %idxprom10
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp slt i32 %conv9, %conv12
  br i1 %cmp13, label %if.then15, label %if.end24

if.then15:                                        ; preds = %for.body6
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %idxprom16
  %14 = load i8, i8* %arrayidx17, align 1
  store i8 %14, i8* %temp, align 1
  %15 = load i8*, i8** %str.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 %idxprom18
  %17 = load i8, i8* %arrayidx19, align 1
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %idxprom20
  store i8 %17, i8* %arrayidx21, align 1
  %20 = load i8, i8* %temp, align 1
  %21 = load i8*, i8** %str.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %21, i64 %idxprom22
  store i8 %20, i8* %arrayidx23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !4

for.end:                                          ; preds = %for.cond3
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end27:                                        ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareViaAnagram(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  call void @insertionSort(i8* %0)
  %1 = load i8*, i8** %str2.addr, align 8
  call void @insertionSort(i8* %1)
  %2 = load i8*, i8** %str1.addr, align 8
  %3 = load i8*, i8** %str2.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @anagramSort(i8* %strArray) #0 {
entry:
  %strArray.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  store i8* %strArray, i8** %strArray.addr, align 8
  %0 = call i8* @llvm.stacksave()
  store i8* %0, i8** %saved_stack, align 8
  %vla = alloca i8, i64 10, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i8*, i8** %strArray.addr, align 8
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 10
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8*, i8** %strArray.addr, align 8
  %7 = load i32, i32* %j, align 4
  %mul4 = mul nsw i32 %7, 10
  %idxprom5 = sext i32 %mul4 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 %idxprom5
  %call = call i32 @compareViaAnagram(i8* %arrayidx, i8* %arrayidx6)
  %cmp7 = icmp sle i32 %call, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %8 = load i8*, i8** %strArray.addr, align 8
  %9 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %9, 10
  %idxprom9 = sext i32 %mul8 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 %idxprom9
  %call11 = call i8* @strcpy(i8* %vla, i8* %arrayidx10) #6
  %10 = load i8*, i8** %strArray.addr, align 8
  %11 = load i32, i32* %j, align 4
  %mul12 = mul nsw i32 %11, 10
  %idxprom13 = sext i32 %mul12 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 %idxprom13
  %12 = load i8*, i8** %strArray.addr, align 8
  %13 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 %13, 10
  %idxprom16 = sext i32 %mul15 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %idxprom16
  %call18 = call i8* @strcpy(i8* %arrayidx14, i8* %arrayidx17) #6
  %14 = load i8*, i8** %strArray.addr, align 8
  %15 = load i32, i32* %i, align 4
  %mul19 = mul nsw i32 %15, 10
  %idxprom20 = sext i32 %mul19 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 %idxprom20
  %call22 = call i8* @strcpy(i8* %arrayidx21, i8* %vla) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end25:                                        ; preds = %for.cond
  %18 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %18)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %0 = call i8* @llvm.stacksave()
  store i8* %0, i8** %saved_stack, align 8
  %vla = alloca i8, i64 100, align 16
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 0
  %call = call i8* @strcpy(i8* %arrayidx, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6
  %arrayidx1 = getelementptr inbounds i8, i8* %vla, i64 10
  %call2 = call i8* @strcpy(i8* %arrayidx1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6
  %arrayidx3 = getelementptr inbounds i8, i8* %vla, i64 20
  %call4 = call i8* @strcpy(i8* %arrayidx3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6
  %arrayidx5 = getelementptr inbounds i8, i8* %vla, i64 30
  %call6 = call i8* @strcpy(i8* %arrayidx5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  %arrayidx7 = getelementptr inbounds i8, i8* %vla, i64 40
  %call8 = call i8* @strcpy(i8* %arrayidx7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  %arrayidx9 = getelementptr inbounds i8, i8* %vla, i64 50
  %call10 = call i8* @strcpy(i8* %arrayidx9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #6
  %arrayidx11 = getelementptr inbounds i8, i8* %vla, i64 60
  %call12 = call i8* @strcpy(i8* %arrayidx11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #6
  %arrayidx13 = getelementptr inbounds i8, i8* %vla, i64 70
  %call14 = call i8* @strcpy(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6
  %arrayidx15 = getelementptr inbounds i8, i8* %vla, i64 80
  %call16 = call i8* @strcpy(i8* %arrayidx15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #6
  %arrayidx17 = getelementptr inbounds i8, i8* %vla, i64 90
  %call18 = call i8* @strcpy(i8* %arrayidx17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #6
  call void @anagramSort(i8* %vla)
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = mul nsw i64 %idxprom, 10
  %arrayidx20 = getelementptr inbounds i8, i8* %vla, i64 %3
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %arrayidx20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %5 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %5)
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

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
!9 = distinct !{!9, !5}
