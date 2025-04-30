; ModuleID = 'code/237-38Problem_23.c'
source_filename = "code/237-38Problem_23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tabela = dso_local global i32* null, align 8
@pregledano = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [94 x i8] c"Sum of all the positive integers which cannot be written as the sum of two abundant numbers:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isAbundant(i32 %stevilo) #0 {
entry:
  %stevilo.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vsota = alloca i32, align 4
  store i32 %stevilo, i32* %stevilo.addr, align 4
  store i32 0, i32* %vsota, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %stevilo.addr, align 4
  %div = sdiv i32 %1, 2
  %add = add nsw i32 %div, 1
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %stevilo.addr, align 4
  %3 = load i32, i32* %i, align 4
  %rem = srem i32 %2, %3
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %vsota, align 4
  %add2 = add nsw i32 %5, %4
  store i32 %add2, i32* %vsota, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %vsota, align 4
  %8 = load i32, i32* %stevilo.addr, align 4
  %cmp3 = icmp sgt i32 %7, %8
  %9 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %indeks = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %vsota = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %indeks, align 4
  %call = call noalias align 16 i8* @malloc(i64 27860) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** @tabela, align 8
  store i32 28123, i32* %limit, align 4
  %call1 = call noalias align 16 i8* @malloc(i64 112492) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** @pregledano, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %2, 28123
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %call2 = call i32 @isAbundant(i32 %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** @tabela, align 8
  %6 = load i32, i32* %indeks, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %indeks, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %vsota, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc27, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %indeks, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end29

for.body6:                                        ; preds = %for.cond4
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %x, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc24, %for.body6
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %indeks, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body9, label %for.end26

for.body9:                                        ; preds = %for.cond7
  %13 = load i32*, i32** @tabela, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32*, i32** @tabela, align 8
  %17 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %16, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  %add = add nsw i32 %15, %18
  %cmp14 = icmp sle i32 %add, 28123
  br i1 %cmp14, label %if.then15, label %if.end23

if.then15:                                        ; preds = %for.body9
  %19 = load i32*, i32** @pregledano, align 8
  %20 = load i32*, i32** @tabela, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %20, i64 %idxprom16
  %22 = load i32, i32* %arrayidx17, align 4
  %23 = load i32*, i32** @tabela, align 8
  %24 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %23, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %22, %25
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %19, i64 %idxprom21
  store i32 1, i32* %arrayidx22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %for.body9
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %26 = load i32, i32* %x, align 4
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, i32* %x, align 4
  br label %for.cond7, !llvm.loop !7

for.end26:                                        ; preds = %for.cond7
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %27 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond4, !llvm.loop !8

for.end29:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end29
  %28 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %28, 28123
  br i1 %cmp31, label %for.body32, label %for.end41

for.body32:                                       ; preds = %for.cond30
  %29 = load i32*, i32** @pregledano, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %29, i64 %idxprom33
  %31 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp eq i32 %31, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %for.body32
  %32 = load i32, i32* %i, align 4
  %conv = sext i32 %32 to i64
  %33 = load i64, i64* %vsota, align 8
  %add37 = add nsw i64 %33, %conv
  store i64 %add37, i64* %vsota, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %for.body32
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %34 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond30, !llvm.loop !9

for.end41:                                        ; preds = %for.cond30
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %vsota, align 8
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

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
