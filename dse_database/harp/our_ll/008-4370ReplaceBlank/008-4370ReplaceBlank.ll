; ModuleID = 'code/008-4370ReplaceBlank.c'
source_filename = "code/008-4370ReplaceBlank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [100 x i8] c"Hooray! Oh My Zsh has been update and/or is at the current version.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplaceBlank(i8* %str, i32 %N) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %N.addr = alloca i32, align 4
  %originalLength = alloca i32, align 4
  %currentLength = alloca i32, align 4
  %amountOfSpace = alloca i32, align 4
  %orginalEnd = alloca i8*, align 8
  %newEnd = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %originalLength, align 4
  store i32 0, i32* %currentLength, align 4
  store i32 0, i32* %amountOfSpace, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %N.addr, align 4
  %cmp1 = icmp eq i32 0, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.end30

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %originalLength, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i32, i32* %originalLength, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %originalLength, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 32
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %while.body
  %8 = load i32, i32* %amountOfSpace, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* %amountOfSpace, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %originalLength, align 4
  %10 = load i32, i32* %amountOfSpace, align 4
  %mul = mul nsw i32 2, %10
  %add = add nsw i32 %9, %mul
  store i32 %add, i32* %currentLength, align 4
  %11 = load i32, i32* %currentLength, align 4
  %12 = load i32, i32* %N.addr, align 4
  %cmp9 = icmp sgt i32 %11, %12
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.end
  br label %while.end30

if.end12:                                         ; preds = %while.end
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i32, i32* %originalLength, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %orginalEnd, align 8
  %15 = load i8*, i8** %str.addr, align 8
  %16 = load i32, i32* %currentLength, align 4
  %idx.ext13 = sext i32 %16 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %15, i64 %idx.ext13
  store i8* %add.ptr14, i8** %newEnd, align 8
  br label %while.cond15

while.cond15:                                     ; preds = %if.end29, %if.end12
  %17 = load i8*, i8** %orginalEnd, align 8
  %18 = load i8*, i8** %str.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %18, i64 -1
  %cmp17 = icmp ne i8* %17, %add.ptr16
  br i1 %cmp17, label %while.body19, label %while.end30

while.body19:                                     ; preds = %while.cond15
  %19 = load i8*, i8** %orginalEnd, align 8
  %20 = load i8, i8* %19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 32
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.body19
  %21 = load i8*, i8** %newEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr, i8** %newEnd, align 8
  store i8 48, i8* %21, align 1
  %22 = load i8*, i8** %newEnd, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr24, i8** %newEnd, align 8
  store i8 50, i8* %22, align 1
  %23 = load i8*, i8** %newEnd, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr25, i8** %newEnd, align 8
  store i8 37, i8* %23, align 1
  %24 = load i8*, i8** %orginalEnd, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %incdec.ptr26, i8** %orginalEnd, align 8
  br label %if.end29

if.else:                                          ; preds = %while.body19
  %25 = load i8*, i8** %orginalEnd, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr27, i8** %orginalEnd, align 8
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %newEnd, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr28, i8** %newEnd, align 8
  store i8 %26, i8* %27, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23
  br label %while.cond15, !llvm.loop !6

while.end30:                                      ; preds = %if.then, %if.then11, %while.cond15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %str = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [100 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @__const.main.str, i32 0, i32 0), i64 100, i1 false)
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %str, i64 0, i64 0
  call void @ReplaceBlank(i8* %arraydecay, i32 100)
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %str, i64 0, i64 0
  %call = call i32 @puts(i8* %arraydecay1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @puts(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
