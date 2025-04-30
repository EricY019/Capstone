; ModuleID = 'code/280-21035config.align.c'
source_filename = "code/280-21035config.align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca i8*, align 8
  %v = alloca i8*, align 8
  %sp = alloca i16*, align 8
  %sq = alloca i16*, align 8
  %ip = alloca i32*, align 8
  %iq = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 30) #2
  store i8* %call, i8** %buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i8*, i8** %buf, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %5 = load i8*, i8** %buf, align 8
  store i8* %5, i8** %v, align 8
  %6 = load i8*, i8** %v, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 1
  %7 = bitcast i8* %add.ptr to i16*
  store i16* %7, i16** %sp, align 8
  %8 = load i8*, i8** %v, align 8
  %add.ptr1 = getelementptr i8, i8* %8, i64 2
  %9 = bitcast i8* %add.ptr1 to i16*
  store i16* %9, i16** %sq, align 8
  %10 = load i16*, i16** %sp, align 8
  %11 = load i16, i16* %10, align 2
  %conv2 = sext i16 %11 to i32
  %12 = load i16*, i16** %sq, align 8
  %13 = load i16, i16* %12, align 2
  %conv3 = sext i16 %13 to i32
  %cmp4 = icmp eq i32 %conv2, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %14 = load i8*, i8** %v, align 8
  %add.ptr6 = getelementptr i8, i8* %14, i64 1
  %15 = bitcast i8* %add.ptr6 to i32*
  store i32* %15, i32** %ip, align 8
  %16 = load i8*, i8** %v, align 8
  %add.ptr7 = getelementptr i8, i8* %16, i64 2
  %17 = bitcast i8* %add.ptr7 to i32*
  store i32* %17, i32** %iq, align 8
  %18 = load i32*, i32** %ip, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %iq, align 8
  %21 = load i32, i32* %20, align 4
  %cmp8 = icmp eq i32 %19, %21
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
