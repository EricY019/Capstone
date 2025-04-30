; ModuleID = 'code/277-17112backtrace-tst.c'
source_filename = "code/277-17112backtrace-tst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"called from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"            %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arr = alloca [20 x i32], align 16
  %cnt = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %cnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %cnt, align 8
  %cmp = icmp ult i64 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @random() #3
  %conv = trunc i64 %call to i32
  %1 = load i64, i64* %cnt, align 8
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %arr, i64 0, i64 %1
  store i32 %conv, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, i64* %cnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %cnt, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %arr, i64 0, i64 0
  %3 = bitcast i32* %arraydecay to i8*
  call void @qsort(i8* %3, i64 20, i64 4, i32 (i8*, i8*)* @compare)
  store i64 0, i64* %cnt, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %4 = load i64, i64* %cnt, align 8
  %cmp2 = icmp ult i64 %4, 20
  br i1 %cmp2, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond1
  %5 = load i64, i64* %cnt, align 8
  %arrayidx5 = getelementptr inbounds [20 x i32], [20 x i32]* %arr, i64 0, i64 %5
  %6 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i64, i64* %cnt, align 8
  %inc8 = add i64 %7, 1
  store i64 %inc8, i64* %cnt, align 8
  br label %for.cond1, !llvm.loop !6

for.end9:                                         ; preds = %for.cond1
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @random() #1

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare(i8* %p1, i8* %p2) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %ba = alloca [20 x i8*], align 16
  %n = alloca i32, align 4
  %names = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %arraydecay = getelementptr inbounds [20 x i8*], [20 x i8*]* %ba, i64 0, i64 0
  %call = call i32 @backtrace(i8** %arraydecay, i32 20)
  store i32 %call, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [20 x i8*], [20 x i8*]* %ba, i64 0, i64 0
  %1 = load i32, i32* %n, align 4
  %call2 = call i8** @backtrace_symbols(i8** %arraydecay1, i32 %1) #3
  store i8** %call2, i8*** %names, align 8
  %2 = load i8**, i8*** %names, align 8
  %cmp3 = icmp ne i8** %2, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %3 = load i8**, i8*** %names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %names, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %9 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %11 = load i8**, i8*** %names, align 8
  %12 = bitcast i8** %11 to i8*
  call void @free(i8* %12) #3
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %13 = load i8*, i8** %p1.addr, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %p2.addr, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %sub = sub i32 %15, %18
  ret i32 %sub
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @backtrace(i8**, i32) #2

; Function Attrs: nounwind
declare dso_local i8** @backtrace_symbols(i8**, i32) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

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
