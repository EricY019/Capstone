; ModuleID = 'code/298-1086059.c'
source_filename = "code/298-1086059.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.n = private unnamed_addr constant [5 x i32] [i32 3, i32 5, i32 8, i32 10, i32 11], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @generateMatrix(i32 %n) #0 {
entry:
  %retval = alloca i32**, align 8
  %n.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %ret = alloca i32**, align 8
  %i = alloca i32, align 4
  %round = alloca i32, align 4
  %i7 = alloca i32, align 4
  %j = alloca i32, align 4
  %j23 = alloca i32, align 4
  %j40 = alloca i32, align 4
  %j59 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32** null, i32*** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %size, align 4
  %3 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %3 to i64
  %mul1 = mul i64 %conv, 8
  %call = call noalias align 16 i8* @malloc(i64 %mul1) #4
  %4 = bitcast i8* %call to i32**
  store i32** %4, i32*** %ret, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %n.addr, align 4
  %conv4 = sext i32 %7 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call noalias align 16 i8* @malloc(i64 %mul5) #4
  %8 = bitcast i8* %call6 to i32*
  %9 = load i32**, i32*** %ret, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %9, i64 %idxprom
  store i32* %8, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %round, align 4
  store i32 1, i32* %i7, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end75, %for.end
  %12 = load i32, i32* %i7, align 4
  %13 = load i32, i32* %size, align 4
  %cmp8 = icmp slt i32 %12, %13
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %round, align 4
  store i32 %14, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc19, %while.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %16, 1
  %17 = load i32, i32* %round, align 4
  %sub11 = sub nsw i32 %sub, %17
  %cmp12 = icmp slt i32 %15, %sub11
  br i1 %cmp12, label %for.body14, label %for.end22

for.body14:                                       ; preds = %for.cond10
  %18 = load i32, i32* %i7, align 4
  %19 = load i32**, i32*** %ret, align 8
  %20 = load i32, i32* %round, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds i32*, i32** %19, i64 %idxprom15
  %21 = load i32*, i32** %arrayidx16, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %21, i64 %idxprom17
  store i32 %18, i32* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body14
  %23 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, i32* %j, align 4
  %24 = load i32, i32* %i7, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %i7, align 4
  br label %for.cond10, !llvm.loop !6

for.end22:                                        ; preds = %for.cond10
  %25 = load i32, i32* %round, align 4
  store i32 %25, i32* %j23, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc36, %for.end22
  %26 = load i32, i32* %j23, align 4
  %27 = load i32, i32* %n.addr, align 4
  %sub25 = sub nsw i32 %27, 1
  %28 = load i32, i32* %round, align 4
  %sub26 = sub nsw i32 %sub25, %28
  %cmp27 = icmp slt i32 %26, %sub26
  br i1 %cmp27, label %for.body29, label %for.end39

for.body29:                                       ; preds = %for.cond24
  %29 = load i32, i32* %i7, align 4
  %30 = load i32**, i32*** %ret, align 8
  %31 = load i32, i32* %j23, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds i32*, i32** %30, i64 %idxprom30
  %32 = load i32*, i32** %arrayidx31, align 8
  %33 = load i32, i32* %n.addr, align 4
  %sub32 = sub nsw i32 %33, 1
  %34 = load i32, i32* %round, align 4
  %sub33 = sub nsw i32 %sub32, %34
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %32, i64 %idxprom34
  store i32 %29, i32* %arrayidx35, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %for.body29
  %35 = load i32, i32* %j23, align 4
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, i32* %j23, align 4
  %36 = load i32, i32* %i7, align 4
  %inc38 = add nsw i32 %36, 1
  store i32 %inc38, i32* %i7, align 4
  br label %for.cond24, !llvm.loop !7

for.end39:                                        ; preds = %for.cond24
  %37 = load i32, i32* %round, align 4
  store i32 %37, i32* %j40, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc55, %for.end39
  %38 = load i32, i32* %j40, align 4
  %39 = load i32, i32* %n.addr, align 4
  %sub42 = sub nsw i32 %39, 1
  %40 = load i32, i32* %round, align 4
  %sub43 = sub nsw i32 %sub42, %40
  %cmp44 = icmp slt i32 %38, %sub43
  br i1 %cmp44, label %for.body46, label %for.end58

for.body46:                                       ; preds = %for.cond41
  %41 = load i32, i32* %i7, align 4
  %42 = load i32**, i32*** %ret, align 8
  %43 = load i32, i32* %n.addr, align 4
  %sub47 = sub nsw i32 %43, 1
  %44 = load i32, i32* %round, align 4
  %sub48 = sub nsw i32 %sub47, %44
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i32*, i32** %42, i64 %idxprom49
  %45 = load i32*, i32** %arrayidx50, align 8
  %46 = load i32, i32* %n.addr, align 4
  %sub51 = sub nsw i32 %46, 1
  %47 = load i32, i32* %j40, align 4
  %sub52 = sub nsw i32 %sub51, %47
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %45, i64 %idxprom53
  store i32 %41, i32* %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body46
  %48 = load i32, i32* %j40, align 4
  %inc56 = add nsw i32 %48, 1
  store i32 %inc56, i32* %j40, align 4
  %49 = load i32, i32* %i7, align 4
  %inc57 = add nsw i32 %49, 1
  store i32 %inc57, i32* %i7, align 4
  br label %for.cond41, !llvm.loop !8

for.end58:                                        ; preds = %for.cond41
  %50 = load i32, i32* %round, align 4
  store i32 %50, i32* %j59, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.end58
  %51 = load i32, i32* %j59, align 4
  %52 = load i32, i32* %n.addr, align 4
  %sub61 = sub nsw i32 %52, 1
  %53 = load i32, i32* %round, align 4
  %sub62 = sub nsw i32 %sub61, %53
  %cmp63 = icmp slt i32 %51, %sub62
  br i1 %cmp63, label %for.body65, label %for.end75

for.body65:                                       ; preds = %for.cond60
  %54 = load i32, i32* %i7, align 4
  %55 = load i32**, i32*** %ret, align 8
  %56 = load i32, i32* %n.addr, align 4
  %sub66 = sub nsw i32 %56, 1
  %57 = load i32, i32* %j59, align 4
  %sub67 = sub nsw i32 %sub66, %57
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds i32*, i32** %55, i64 %idxprom68
  %58 = load i32*, i32** %arrayidx69, align 8
  %59 = load i32, i32* %round, align 4
  %idxprom70 = sext i32 %59 to i64
  %arrayidx71 = getelementptr inbounds i32, i32* %58, i64 %idxprom70
  store i32 %54, i32* %arrayidx71, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %for.body65
  %60 = load i32, i32* %j59, align 4
  %inc73 = add nsw i32 %60, 1
  store i32 %inc73, i32* %j59, align 4
  %61 = load i32, i32* %i7, align 4
  %inc74 = add nsw i32 %61, 1
  store i32 %inc74, i32* %i7, align 4
  br label %for.cond60, !llvm.loop !9

for.end75:                                        ; preds = %for.cond60
  %62 = load i32, i32* %round, align 4
  %inc76 = add nsw i32 %62, 1
  store i32 %inc76, i32* %round, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %63 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %63, 2
  %mul77 = mul nsw i32 %div, 2
  %64 = load i32, i32* %n.addr, align 4
  %cmp78 = icmp ne i32 %mul77, %64
  br i1 %cmp78, label %if.then80, label %if.end87

if.then80:                                        ; preds = %while.end
  %65 = load i32, i32* %size, align 4
  %66 = load i32**, i32*** %ret, align 8
  %67 = load i32, i32* %n.addr, align 4
  %div81 = sdiv i32 %67, 2
  %idxprom82 = sext i32 %div81 to i64
  %arrayidx83 = getelementptr inbounds i32*, i32** %66, i64 %idxprom82
  %68 = load i32*, i32** %arrayidx83, align 8
  %69 = load i32, i32* %n.addr, align 4
  %div84 = sdiv i32 %69, 2
  %idxprom85 = sext i32 %div84 to i64
  %arrayidx86 = getelementptr inbounds i32, i32* %68, i64 %idxprom85
  store i32 %65, i32* %arrayidx86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then80, %while.end
  %70 = load i32**, i32*** %ret, align 8
  store i32** %70, i32*** %retval, align 8
  br label %return

return:                                           ; preds = %if.end87, %if.then
  %71 = load i32**, i32*** %retval, align 8
  ret i32** %71
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca [5 x i32], align 16
  %k = alloca i32, align 4
  %m = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i32]* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.main.n to i8*), i64 20, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %n, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32** @generateMatrix(i32 %3)
  store i32** %call, i32*** %m, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* %n, i64 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %4, %6
  br i1 %cmp4, label %for.body5, label %for.end19

for.body5:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body5
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [5 x i32], [5 x i32]* %n, i64 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp slt i32 %7, %9
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  %10 = load i32**, i32*** %m, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds i32*, i32** %10, i64 %idxprom11
  %12 = load i32*, i32** %arrayidx12, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %12, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6, !llvm.loop !11

for.end:                                          ; preds = %for.cond6
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond1, !llvm.loop !12

for.end19:                                        ; preds = %for.cond1
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc21

for.inc21:                                        ; preds = %for.end19
  %17 = load i32, i32* %k, align 4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, i32* %k, align 4
  br label %for.cond, !llvm.loop !13

for.end23:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
