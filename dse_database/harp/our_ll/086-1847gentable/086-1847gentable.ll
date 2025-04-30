; ModuleID = 'code/086-1847gentable.c'
source_filename = "code/086-1847gentable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@permutations = dso_local global [1000000 x i32*] zeroinitializer, align 16
@permCount = dso_local global [1000000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"-%d, \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-%d\0A\00", align 1
@nums = dso_local global [1000000 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca [10 x i32], align 16
  %j59 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* %num, align 4
  %2 = bitcast [10 x i32]* %p to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, i32* %num, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %num, align 4
  %rem = srem i32 %4, 10
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %p, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %arrayidx, align 4
  %6 = load i32, i32* %num, align 4
  %div = sdiv i32 %6, 10
  store i32 %div, i32* %num, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %while.end
  %7 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %7, 10
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %p, i64 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %10 = load i32, i32* %j, align 4
  store i32 %10, i32* %num, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %p, i64 0, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %arrayidx9, align 4
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond2
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc23, %for.end
  %14 = load i32, i32* %j, align 4
  %cmp12 = icmp slt i32 %14, 10
  br i1 %cmp12, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond11
  br label %while.cond14

while.cond14:                                     ; preds = %while.body18, %for.body13
  %15 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %p, i64 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp sgt i32 %16, 0
  br i1 %cmp17, label %while.body18, label %while.end22

while.body18:                                     ; preds = %while.cond14
  %17 = load i32, i32* %num, align 4
  %mul = mul nsw i32 10, %17
  %18 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %18
  store i32 %add, i32* %num, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %p, i64 0, i64 %idxprom19
  %20 = load i32, i32* %arrayidx20, align 4
  %dec21 = add nsw i32 %20, -1
  store i32 %dec21, i32* %arrayidx20, align 4
  br label %while.cond14, !llvm.loop !7

while.end22:                                      ; preds = %while.cond14
  br label %for.inc23

for.inc23:                                        ; preds = %while.end22
  %21 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond11, !llvm.loop !8

for.end25:                                        ; preds = %for.cond11
  %22 = load i32, i32* %num, align 4
  %idxprom26 = sext i32 %22 to i64
  %arrayidx27 = getelementptr inbounds [1000000 x i32*], [1000000 x i32*]* @permutations, i64 0, i64 %idxprom26
  %23 = load i32*, i32** %arrayidx27, align 8
  %cmp28 = icmp eq i32* %23, null
  br i1 %cmp28, label %if.then29, label %if.end45

if.then29:                                        ; preds = %for.end25
  %24 = load i32, i32* %num, align 4
  %cmp30 = icmp sge i32 %24, 100000
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then29
  %call = call noalias align 16 i8* @calloc(i64 720, i64 4) #4
  %25 = bitcast i8* %call to i32*
  %26 = load i32, i32* %num, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [1000000 x i32*], [1000000 x i32*]* @permutations, i64 0, i64 %idxprom32
  store i32* %25, i32** %arrayidx33, align 8
  br label %if.end44

if.else:                                          ; preds = %if.then29
  %27 = load i32, i32* %num, align 4
  %cmp34 = icmp sge i32 %27, 10000
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.else
  %call36 = call noalias align 16 i8* @calloc(i64 120, i64 4) #4
  %28 = bitcast i8* %call36 to i32*
  %29 = load i32, i32* %num, align 4
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [1000000 x i32*], [1000000 x i32*]* @permutations, i64 0, i64 %idxprom37
  store i32* %28, i32** %arrayidx38, align 8
  br label %if.end43

if.else39:                                        ; preds = %if.else
  %call40 = call noalias align 16 i8* @calloc(i64 24, i64 4) #4
  %30 = bitcast i8* %call40 to i32*
  %31 = load i32, i32* %num, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [1000000 x i32*], [1000000 x i32*]* @permutations, i64 0, i64 %idxprom41
  store i32* %30, i32** %arrayidx42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.then35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then31
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end25
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %num, align 4
  %idxprom46 = sext i32 %33 to i64
  %arrayidx47 = getelementptr inbounds [1000000 x i32*], [1000000 x i32*]* @permutations, i64 0, i64 %idxprom46
  %34 = load i32*, i32** %arrayidx47, align 8
  %35 = load i32, i32* %num, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [1000000 x i32], [1000000 x i32]* @permCount, i64 0, i64 %idxprom48
  %36 = load i32, i32* %arrayidx49, align 4
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, i32* %arrayidx49, align 4
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %34, i64 %idxprom51
  store i32 %32, i32* %arrayidx52, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %if.end45
  %37 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %37, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end55:                                        ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc80, %for.end55
  %38 = load i32, i32* %i, align 4
  %cmp57 = icmp slt i32 %38, 1000000
  br i1 %cmp57, label %for.body58, label %for.end82

for.body58:                                       ; preds = %for.cond56
  %39 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %39 to i64
  %arrayidx61 = getelementptr inbounds [1000000 x i32*], [1000000 x i32*]* @permutations, i64 0, i64 %idxprom60
  %40 = load i32*, i32** %arrayidx61, align 8
  %cmp62 = icmp ne i32* %40, null
  br i1 %cmp62, label %if.then63, label %if.end79

if.then63:                                        ; preds = %for.body58
  %41 = load i32, i32* %i, align 4
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 1, i32* %j59, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc75, %if.then63
  %42 = load i32, i32* %j59, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %43 to i64
  %arrayidx67 = getelementptr inbounds [1000000 x i32], [1000000 x i32]* @permCount, i64 0, i64 %idxprom66
  %44 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp slt i32 %42, %44
  br i1 %cmp68, label %for.body69, label %for.end77

for.body69:                                       ; preds = %for.cond65
  %45 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %45 to i64
  %arrayidx71 = getelementptr inbounds [1000000 x i32*], [1000000 x i32*]* @permutations, i64 0, i64 %idxprom70
  %46 = load i32*, i32** %arrayidx71, align 8
  %47 = load i32, i32* %j59, align 4
  %idxprom72 = sext i32 %47 to i64
  %arrayidx73 = getelementptr inbounds i32, i32* %46, i64 %idxprom72
  %48 = load i32, i32* %arrayidx73, align 4
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %for.inc75

for.inc75:                                        ; preds = %for.body69
  %49 = load i32, i32* %j59, align 4
  %inc76 = add nsw i32 %49, 1
  store i32 %inc76, i32* %j59, align 4
  br label %for.cond65, !llvm.loop !10

for.end77:                                        ; preds = %for.cond65
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end79

if.end79:                                         ; preds = %for.end77, %for.body58
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %50 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %50, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond56, !llvm.loop !11

for.end82:                                        ; preds = %for.cond56
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 1000000)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
