; ModuleID = 'code/069-392zipper.c'
source_filename = "code/069-392zipper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [14 x i8] c"Good morning!\00", align 1
@__const.main.sub1 = private unnamed_addr constant [27 x i8] c"perntgvqszmwajldbicxfkhuoy\00", align 16
@__const.main.sub2 = private unnamed_addr constant [27 x i8] c"gjnecidqlsmwzxpvahbfkortuy\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [14 x i8], align 1
  %sub1 = alloca [27 x i8], align 16
  %sub2 = alloca [27 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %strlength = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [14 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.main.str, i32 0, i32 0), i64 14, i1 false)
  %1 = bitcast [27 x i8]* %sub1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([27 x i8], [27 x i8]* @__const.main.sub1, i32 0, i32 0), i64 27, i1 false)
  %2 = bitcast [27 x i8]* %sub2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 getelementptr inbounds ([27 x i8], [27 x i8]* @__const.main.sub2, i32 0, i32 0), i64 27, i1 false)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.else, %for.cond
  %8 = load i32, i32* %j, align 4
  store i32 %8, i32* %strlength, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc26, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %strlength, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body7, label %for.end28

for.body7:                                        ; preds = %for.cond4
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp sle i32 %conv10, 90
  br i1 %cmp11, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %for.body7
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %cmp16 = icmp sge i32 %conv15, 65
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom19
  %16 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %16 to i32
  %sub = sub nsw i32 %conv21, 65
  %add = add nsw i32 %sub, 97
  %conv22 = trunc i32 %add to i8
  %17 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom23
  store i8 %conv22, i8* %arrayidx24, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %land.lhs.true, %for.body7
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %18 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %18, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond4, !llvm.loop !6

for.end28:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc70, %for.end28
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %strlength, align 4
  %cmp30 = icmp slt i32 %19, %20
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond29
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %strlength, align 4
  %cmp32 = icmp slt i32 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond29
  %23 = phi i1 [ false, %for.cond29 ], [ %cmp32, %land.rhs ]
  br i1 %23, label %for.body34, label %for.end73

for.body34:                                       ; preds = %land.end
  %24 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom35
  %25 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %25 to i32
  %cmp38 = icmp sle i32 %conv37, 122
  br i1 %cmp38, label %land.lhs.true40, label %if.else68

land.lhs.true40:                                  ; preds = %for.body34
  %26 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom41
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %27 to i32
  %cmp44 = icmp sge i32 %conv43, 97
  br i1 %cmp44, label %if.then46, label %if.else68

if.then46:                                        ; preds = %land.lhs.true40
  %28 = load i32, i32* %j, align 4
  %rem = srem i32 %28, 2
  %cmp47 = icmp eq i32 %rem, 0
  br i1 %cmp47, label %if.then49, label %if.else58

if.then49:                                        ; preds = %if.then46
  %29 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %29 to i64
  %arrayidx51 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom50
  %30 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %30 to i32
  %sub53 = sub nsw i32 %conv52, 97
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [27 x i8], [27 x i8]* %sub1, i64 0, i64 %idxprom54
  %31 = load i8, i8* %arrayidx55, align 1
  %32 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %32 to i64
  %arrayidx57 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom56
  store i8 %31, i8* %arrayidx57, align 1
  br label %if.end67

if.else58:                                        ; preds = %if.then46
  %33 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom59
  %34 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %34 to i32
  %sub62 = sub nsw i32 %conv61, 97
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [27 x i8], [27 x i8]* %sub2, i64 0, i64 %idxprom63
  %35 = load i8, i8* %arrayidx64, align 1
  %36 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %36 to i64
  %arrayidx66 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 %idxprom65
  store i8 %35, i8* %arrayidx66, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.else58, %if.then49
  br label %if.end69

if.else68:                                        ; preds = %land.lhs.true40, %for.body34
  %37 = load i32, i32* %j, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %j, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.end67
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %38 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %38, 1
  store i32 %inc71, i32* %i, align 4
  %39 = load i32, i32* %j, align 4
  %inc72 = add nsw i32 %39, 1
  store i32 %inc72, i32* %j, align 4
  br label %for.cond29, !llvm.loop !7

for.end73:                                        ; preds = %land.end
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

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
