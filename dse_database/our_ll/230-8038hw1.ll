; ModuleID = 'code/230-8038hw1.c'
source_filename = "code/230-8038hw1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"Hello 0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Hello 1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Hello 2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Hello 3\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Error !!!\00", align 1
@messages = dso_local global [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [24 x i8] c"My Thread's ID [%d] %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Create thread %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Hello(i8* %pthreadid) #0 {
entry:
  %pthreadid.addr = alloca i8*, align 8
  %idp = alloca i32*, align 8
  %id = alloca i32, align 4
  store i8* %pthreadid, i8** %pthreadid.addr, align 8
  %0 = load i8*, i8** %pthreadid.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %idp, align 8
  %2 = load i32*, i32** %idp, align 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %id, align 4
  %4 = load i32, i32* %id, align 4
  %5 = load i32, i32* %id, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @messages, i64 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %4, i8* %6)
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %child = alloca [4 x i64], align 16
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  %id2 = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %id, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias align 16 i8* @malloc(i64 4) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %id2, align 8
  %2 = load i32, i32* %id, align 4
  %3 = load i32*, i32** %id2, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %id, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %4)
  %5 = load i32, i32* %id, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %child, i64 0, i64 %idxprom
  %6 = load i32*, i32** %id2, align 8
  %7 = bitcast i32* %6 to i8*
  %call2 = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @Hello, i8* %7) #3
  %call3 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %id, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %9, 4
  br i1 %cmp5, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond4
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [4 x i64], [4 x i64]* %child, i64 0, i64 %idxprom7
  %11 = load i64, i64* %arrayidx8, align 8
  %call9 = call i32 @pthread_join(i64 %11, i8** null)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %12 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond4, !llvm.loop !6

for.end12:                                        ; preds = %for.cond4
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
