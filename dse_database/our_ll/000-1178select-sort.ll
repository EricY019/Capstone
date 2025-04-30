; ModuleID = 'code/000-1178select-sort.c'
source_filename = "code/000-1178select-sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@icomp = dso_local global i32 0, align 4
@iswap = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"n = %d, tcmp = %d, rcmp = %d, dc = %lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"n = %d, tswp = %d, rswp = %d, ds = %lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"sort faild, [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_fun(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* @icomp, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @icomp, align 4
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %xor = xor i32 %1, %3
  %4 = load i32*, i32** %a.addr, align 8
  store i32 %xor, i32* %4, align 4
  %5 = load i32*, i32** %a.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %b.addr, align 8
  %8 = load i32, i32* %7, align 4
  %xor1 = xor i32 %6, %8
  %9 = load i32*, i32** %b.addr, align 8
  store i32 %xor1, i32* %9, align 4
  %10 = load i32*, i32** %a.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %b.addr, align 8
  %13 = load i32, i32* %12, align 4
  %xor2 = xor i32 %11, %13
  %14 = load i32*, i32** %a.addr, align 8
  store i32 %xor2, i32* %14, align 4
  %15 = load i32, i32* @iswap, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @iswap, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_sort(i32* %pList, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %pList.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %iTop = alloca i32, align 4
  %iPos = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %pList, i32** %pList.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32*, i32** %pList.addr, align 8
  %cmp = icmp eq i32* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %pList.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %iTop, align 4
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %iPos, align 4
  store i32 0, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %len.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %11 = load i32, i32* %iTop, align 4
  %12 = load i32*, i32** %pList.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %call = call i32 @cmp_fun(i32 %11, i32 %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then8, label %if.end11

if.then8:                                         ; preds = %for.body5
  %15 = load i32*, i32** %pList.addr, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  store i32 %17, i32* %iTop, align 4
  %18 = load i32, i32* %j, align 4
  store i32 %18, i32* %iPos, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !4

for.end:                                          ; preds = %for.cond3
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %iPos, align 4
  %cmp12 = icmp ne i32 %20, %21
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %for.end
  %22 = load i32*, i32** %pList.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 %idxprom14
  %24 = load i32*, i32** %pList.addr, align 8
  %25 = load i32, i32* %iPos, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  %call18 = call i32 @swap(i32* %arrayidx15, i32* %arrayidx17)
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %for.end
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %26 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end22, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_list(i32* %list, i32 %len) #0 {
entry:
  %list.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %list, i32** %list.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  call void @srand(i32 374676) #3
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #3
  %2 = load i32, i32* %len.addr, align 4
  %mul = mul nsw i32 %2, 20
  %rem = srem i32 %call, %mul
  %3 = load i32*, i32** %list.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_list(i32* %list, i32 %len) #0 {
entry:
  %list.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %iCnt = alloca i32, align 4
  store i32* %list, i32** %list.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %iCnt, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %list.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %list.addr, align 8
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %call = call i32 @cmp_fun(i32 %4, i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %iCnt, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %iCnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %9, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %iCnt, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_list(i32* %pList, i32 %len) #0 {
entry:
  %pList.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %pList, i32** %pList.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %pList.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_sort(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pList = alloca i32*, align 8
  %iThro = alloca i32, align 4
  %iT = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* @icomp, align 4
  store i32 0, i32* @iswap, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %pList, align 8
  %2 = load i32*, i32** %pList, align 8
  %3 = load i32, i32* %n.addr, align 4
  %call1 = call i32 @get_list(i32* %2, i32 %3)
  %4 = load i32*, i32** %pList, align 8
  %5 = load i32, i32* %n.addr, align 4
  %call2 = call i32 @select_sort(i32* %4, i32 %5)
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %7, 1
  %mul3 = mul nsw i32 %6, %add
  %div = sdiv i32 %mul3, 2
  store i32 %div, i32* %iThro, align 4
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32, i32* %iThro, align 4
  %10 = load i32, i32* @icomp, align 4
  %11 = load i32, i32* @icomp, align 4
  %conv4 = sitofp i32 %11 to double
  %12 = load i32, i32* %iThro, align 4
  %conv5 = sitofp i32 %12 to double
  %div6 = fdiv double %conv4, %conv5
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %8, i32 %9, i32 %10, double %div6)
  %13 = load i32, i32* %n.addr, align 4
  %14 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load i32, i32* @iswap, align 4
  %16 = load i32, i32* @iswap, align 4
  %conv8 = sitofp i32 %16 to double
  %17 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 %17, 1
  %conv10 = sitofp i32 %sub9 to double
  %div11 = fdiv double %conv8, %conv10
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %13, i32 %sub, i32 %15, double %div11)
  %18 = load i32*, i32** %pList, align 8
  %19 = load i32, i32* %n.addr, align 4
  %call13 = call i32 @check_list(i32* %18, i32 %19)
  store i32 %call13, i32* %iT, align 4
  %20 = load i32, i32* %iT, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %iT, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32*, i32** %pList, align 8
  %23 = bitcast i32* %22 to i8*
  call void @free(i8* %23) #3
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 16384
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @test_sort(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 2
  store i32 %mul, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret i32 0
}

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
