; ModuleID = 'code/180-12269testeGrafo.c'
source_filename = "code/180-12269testeGrafo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Matriz sem os valores do grafo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Matriz com os valores do grafo\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"\0AA primeira vez que cada v\C3\A9rtice \C3\A9 a origem (Dijkstra \C3\A9 usado)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca i32**, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2000, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias align 16 i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32**
  store i32** %1, i32*** %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %n, align 4
  %conv2 = sext i32 %4 to i64
  %call3 = call noalias align 16 i8* @calloc(i64 %conv2, i64 4) #3
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32**, i32*** %v, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %6, i64 %idxprom
  store i32* %5, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc8, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body7, label %for.end10

for.body7:                                        ; preds = %for.cond4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body7
  %11 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond4, !llvm.loop !6

for.end10:                                        ; preds = %for.cond4
  %call11 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc29, %for.end10
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n, align 4
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %for.body15, label %for.end31

for.body15:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.body15
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %n, align 4
  %cmp17 = icmp slt i32 %14, %15
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %16 = load i32**, i32*** %v, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds i32*, i32** %16, i64 %idxprom20
  %18 = load i32*, i32** %arrayidx21, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %18, i64 %idxprom22
  %20 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %21 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond16, !llvm.loop !7

for.end27:                                        ; preds = %for.cond16
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc29

for.inc29:                                        ; preds = %for.end27
  %22 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond12, !llvm.loop !8

for.end31:                                        ; preds = %for.cond12
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc49, %for.end31
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n, align 4
  %cmp34 = icmp slt i32 %23, %24
  br i1 %cmp34, label %for.body36, label %for.end51

for.body36:                                       ; preds = %for.cond33
  store i32 0, i32* %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc46, %for.body36
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %n, align 4
  %cmp38 = icmp slt i32 %25, %26
  br i1 %cmp38, label %for.body40, label %for.end48

for.body40:                                       ; preds = %for.cond37
  %call41 = call i32 @rand() #3
  %rem = srem i32 %call41, 2000
  %27 = load i32**, i32*** %v, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds i32*, i32** %27, i64 %idxprom42
  %29 = load i32*, i32** %arrayidx43, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds i32, i32* %29, i64 %idxprom44
  store i32 %rem, i32* %arrayidx45, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %for.body40
  %31 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %31, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond37, !llvm.loop !9

for.end48:                                        ; preds = %for.cond37
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %32 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %32, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond33, !llvm.loop !10

for.end51:                                        ; preds = %for.cond33
  %call52 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc70, %for.end51
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %n, align 4
  %cmp54 = icmp slt i32 %33, %34
  br i1 %cmp54, label %for.body56, label %for.end72

for.body56:                                       ; preds = %for.cond53
  store i32 0, i32* %j, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc66, %for.body56
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %n, align 4
  %cmp58 = icmp slt i32 %35, %36
  br i1 %cmp58, label %for.body60, label %for.end68

for.body60:                                       ; preds = %for.cond57
  %37 = load i32**, i32*** %v, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %38 to i64
  %arrayidx62 = getelementptr inbounds i32*, i32** %37, i64 %idxprom61
  %39 = load i32*, i32** %arrayidx62, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %40 to i64
  %arrayidx64 = getelementptr inbounds i32, i32* %39, i64 %idxprom63
  %41 = load i32, i32* %arrayidx64, align 4
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %for.inc66

for.inc66:                                        ; preds = %for.body60
  %42 = load i32, i32* %j, align 4
  %inc67 = add nsw i32 %42, 1
  store i32 %inc67, i32* %j, align 4
  br label %for.cond57, !llvm.loop !11

for.end68:                                        ; preds = %for.cond57
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc70

for.inc70:                                        ; preds = %for.end68
  %43 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %43, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond53, !llvm.loop !12

for.end72:                                        ; preds = %for.cond53
  %call73 = call i32 @puts(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
