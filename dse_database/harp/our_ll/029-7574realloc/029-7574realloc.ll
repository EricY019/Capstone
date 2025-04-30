; ModuleID = 'code/029-7574realloc.c'
source_filename = "code/029-7574realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"p[%d] = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"=================\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Testing for NULL is positive\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_all(i32* %p, i32 %p_len) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %p_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %p_len, i32* %p_len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %p_len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %p.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32* null, i32** %p, align 8
  %0 = load i32*, i32** %p, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias align 16 i8* @malloc(i64 20) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 17, i32* %arrayidx, align 4
  %3 = load i32*, i32** %p, align 8
  call void @print_all(i32* %3, i32 5)
  %4 = load i32*, i32** %p, align 8
  %5 = bitcast i32* %4 to i8*
  %call1 = call align 16 i8* @realloc(i8* %5, i64 44) #3
  %6 = bitcast i8* %call1 to i32*
  store i32* %6, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 9
  store i32 9, i32* %arrayidx2, align 4
  %8 = load i32*, i32** %p, align 8
  call void @print_all(i32* %8, i32 11)
  %9 = load i32*, i32** %p, align 8
  %10 = bitcast i32* %9 to i8*
  call void @free(i8* %10) #3
  store i32* null, i32** %p, align 8
  %11 = load i32*, i32** %p, align 8
  %cmp3 = icmp eq i32* %11, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = call noalias align 16 i8* @malloc(i64 24) #3
  %12 = bitcast i8* %call7 to i32*
  store i32* %12, i32** %p, align 8
  %13 = load i32*, i32** %p, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 4444, i32* %arrayidx8, align 4
  %14 = load i32*, i32** %p, align 8
  call void @print_all(i32* %14, i32 6)
  %15 = load i32*, i32** %p, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* %16) #3
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

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
