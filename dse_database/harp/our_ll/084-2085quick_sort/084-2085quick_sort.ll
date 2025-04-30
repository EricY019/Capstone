; ModuleID = 'code/084-2085quick_sort.c'
source_filename = "code/084-2085quick_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.test1 = private unnamed_addr constant [7 x i32] [i32 4, i32 5, i32 1, i32 8, i32 9, i32 0, i32 1], align 16
@__const.main.test2 = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 1], align 16
@__const.main.test3 = private unnamed_addr constant [7 x i32] [i32 4, i32 0, i32 -1, i32 -8, i32 -9, i32 0, i32 1], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"Before\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"After\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_array(i32* %elements, i32 %size, i8* %info) #0 {
entry:
  %elements.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %info.addr = alloca i8*, align 8
  %iter = alloca i32, align 4
  store i32* %elements, i32** %elements.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* %info, i8** %info.addr, align 8
  store i32 0, i32* %iter, align 4
  %0 = load i8*, i8** %info.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %0)
  store i32 0, i32* %iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %iter, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %elements.addr, align 8
  %4 = load i32, i32* %iter, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %iter, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %iter, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %b.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %b.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %temp, align 4
  %6 = load i32*, i32** %a.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partion(i32* %elements, i32 %low, i32 %high) #0 {
entry:
  %elements.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %pivot = alloca i32, align 4
  store i32* %elements, i32** %elements.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  %0 = load i32, i32* %low.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %l, align 4
  %1 = load i32, i32* %high.addr, align 4
  store i32 %1, i32* %h, align 4
  %2 = load i32, i32* %low.addr, align 4
  store i32 %2, i32* %pivot, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %3 = load i32, i32* %h, align 4
  %4 = load i32, i32* %l, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end30

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %5 = load i32*, i32** %elements.addr, align 8
  %6 = load i32, i32* %l, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %elements.addr, align 8
  %9 = load i32, i32* %pivot, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sle i32 %7, %10
  br i1 %cmp4, label %while.body5, label %while.end

while.body5:                                      ; preds = %while.cond1
  %11 = load i32, i32* %l, align 4
  %12 = load i32, i32* %high.addr, align 4
  %cmp6 = icmp eq i32 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body5
  br label %while.end

if.end:                                           ; preds = %while.body5
  %13 = load i32, i32* %l, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %l, align 4
  br label %while.cond1, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond1
  br label %while.cond7

while.cond7:                                      ; preds = %if.end16, %while.end
  %14 = load i32*, i32** %elements.addr, align 8
  %15 = load i32, i32* %h, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %17 = load i32*, i32** %elements.addr, align 8
  %18 = load i32, i32* %pivot, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %19 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp sge i32 %16, %19
  br i1 %cmp12, label %while.body13, label %while.end17

while.body13:                                     ; preds = %while.cond7
  %20 = load i32, i32* %h, align 4
  %21 = load i32, i32* %low.addr, align 4
  %cmp14 = icmp eq i32 %20, %21
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body13
  br label %while.end17

if.end16:                                         ; preds = %while.body13
  %22 = load i32, i32* %h, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %h, align 4
  br label %while.cond7, !llvm.loop !7

while.end17:                                      ; preds = %if.then15, %while.cond7
  %23 = load i32*, i32** %elements.addr, align 8
  %24 = load i32, i32* %l, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %23, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  %26 = load i32*, i32** %elements.addr, align 8
  %27 = load i32, i32* %h, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %26, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp sge i32 %25, %28
  br i1 %cmp22, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %while.end17
  %29 = load i32, i32* %l, align 4
  %30 = load i32, i32* %h, align 4
  %cmp23 = icmp slt i32 %29, %30
  br i1 %cmp23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %land.lhs.true
  %31 = load i32*, i32** %elements.addr, align 8
  %32 = load i32, i32* %l, align 4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %31, i64 %idxprom25
  %33 = load i32*, i32** %elements.addr, align 8
  %34 = load i32, i32* %h, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %33, i64 %idxprom27
  call void @swap(i32* %arrayidx26, i32* %arrayidx28)
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true, %while.end17
  br label %while.cond, !llvm.loop !8

while.end30:                                      ; preds = %while.cond
  %35 = load i32*, i32** %elements.addr, align 8
  %36 = load i32, i32* %low.addr, align 4
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %35, i64 %idxprom31
  %37 = load i32, i32* %arrayidx32, align 4
  %38 = load i32*, i32** %elements.addr, align 8
  %39 = load i32, i32* %h, align 4
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %38, i64 %idxprom33
  %40 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp sgt i32 %37, %40
  br i1 %cmp35, label %if.then36, label %if.end41

if.then36:                                        ; preds = %while.end30
  %41 = load i32*, i32** %elements.addr, align 8
  %42 = load i32, i32* %low.addr, align 4
  %idxprom37 = sext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %41, i64 %idxprom37
  %43 = load i32*, i32** %elements.addr, align 8
  %44 = load i32, i32* %h, align 4
  %idxprom39 = sext i32 %44 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %43, i64 %idxprom39
  call void @swap(i32* %arrayidx38, i32* %arrayidx40)
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %while.end30
  %45 = load i32, i32* %h, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quick_sort(i32* %elements, i32 %low, i32 %high) #0 {
entry:
  %elements.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  store i32* %elements, i32** %elements.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 0, i32* %pivot, align 4
  %0 = load i32, i32* %high.addr, align 4
  %1 = load i32, i32* %low.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %elements.addr, align 8
  %3 = load i32, i32* %low.addr, align 4
  %4 = load i32, i32* %high.addr, align 4
  %call = call i32 @partion(i32* %2, i32 %3, i32 %4)
  store i32 %call, i32* %pivot, align 4
  %5 = load i32*, i32** %elements.addr, align 8
  %6 = load i32, i32* %low.addr, align 4
  %7 = load i32, i32* %pivot, align 4
  %sub = sub nsw i32 %7, 1
  call void @quick_sort(i32* %5, i32 %6, i32 %sub)
  %8 = load i32*, i32** %elements.addr, align 8
  %9 = load i32, i32* %pivot, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %high.addr, align 4
  call void @quick_sort(i32* %8, i32 %add, i32 %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %test1 = alloca [7 x i32], align 16
  %test2 = alloca [7 x i32], align 16
  %test3 = alloca [7 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i32]* %test1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.main.test1 to i8*), i64 28, i1 false)
  %1 = bitcast [7 x i32]* %test2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([7 x i32]* @__const.main.test2 to i8*), i64 28, i1 false)
  %2 = bitcast [7 x i32]* %test3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([7 x i32]* @__const.main.test3 to i8*), i64 28, i1 false)
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %test1, i64 0, i64 0
  call void @print_array(i32* %arraydecay, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %arraydecay1 = getelementptr inbounds [7 x i32], [7 x i32]* %test1, i64 0, i64 0
  call void @quick_sort(i32* %arraydecay1, i32 0, i32 6)
  %arraydecay2 = getelementptr inbounds [7 x i32], [7 x i32]* %test1, i64 0, i64 0
  call void @print_array(i32* %arraydecay2, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %arraydecay3 = getelementptr inbounds [7 x i32], [7 x i32]* %test2, i64 0, i64 0
  call void @print_array(i32* %arraydecay3, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %arraydecay4 = getelementptr inbounds [7 x i32], [7 x i32]* %test2, i64 0, i64 0
  call void @quick_sort(i32* %arraydecay4, i32 0, i32 6)
  %arraydecay5 = getelementptr inbounds [7 x i32], [7 x i32]* %test2, i64 0, i64 0
  call void @print_array(i32* %arraydecay5, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %arraydecay6 = getelementptr inbounds [7 x i32], [7 x i32]* %test3, i64 0, i64 0
  call void @print_array(i32* %arraydecay6, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %arraydecay7 = getelementptr inbounds [7 x i32], [7 x i32]* %test3, i64 0, i64 0
  call void @quick_sort(i32* %arraydecay7, i32 0, i32 6)
  %arraydecay8 = getelementptr inbounds [7 x i32], [7 x i32]* %test3, i64 0, i64 0
  call void @print_array(i32* %arraydecay8, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
