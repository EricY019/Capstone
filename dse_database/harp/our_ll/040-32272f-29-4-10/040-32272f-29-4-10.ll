; ModuleID = 'code/040-32272f-29-4-10.c'
source_filename = "code/040-32272f-29-4-10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.u = type { %struct.sss }
%struct.sss = type { i32, i16 }

@u = internal global %union.u zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* bitcast (%union.u* @u to [8 x i8]*), i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %bf.load = load i32, i32* getelementptr inbounds (%union.u, %union.u* @u, i32 0, i32 0, i32 0), align 4
  %bf.clear = and i32 %bf.load, -536870912
  %bf.set = or i32 %bf.clear, 536870911
  store i32 %bf.set, i32* getelementptr inbounds (%union.u, %union.u* @u, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %3 = load i32, i32* %i, align 4
  %conv3 = sext i32 %3 to i64
  %cmp4 = icmp ult i64 %conv3, 8
  br i1 %cmp4, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [8 x i8], [8 x i8]* bitcast (%union.u* @u to [8 x i8]*), i64 0, i64 %idxprom7
  %5 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %5 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %conv9)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %6 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %6, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end12:                                        ; preds = %for.cond2
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %bf.load14 = load i16, i16* getelementptr inbounds (%union.u, %union.u* @u, i32 0, i32 0, i32 1), align 4
  %bf.clear15 = and i16 %bf.load14, -16
  %bf.set16 = or i16 %bf.clear15, 15
  store i16 %bf.set16, i16* getelementptr inbounds (%union.u, %union.u* @u, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.end12
  %7 = load i32, i32* %i, align 4
  %conv18 = sext i32 %7 to i64
  %cmp19 = icmp ult i64 %conv18, 8
  br i1 %cmp19, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond17
  %8 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %8 to i64
  %arrayidx23 = getelementptr inbounds [8 x i8], [8 x i8]* bitcast (%union.u* @u to [8 x i8]*), i64 0, i64 %idxprom22
  %9 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %9 to i32
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %conv24)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %10 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %10, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond17, !llvm.loop !7

for.end28:                                        ; preds = %for.cond17
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %bf.load30 = load i16, i16* getelementptr inbounds (%union.u, %union.u* @u, i32 0, i32 0, i32 1), align 4
  %bf.clear31 = and i16 %bf.load30, -16369
  %bf.set32 = or i16 %bf.clear31, 16368
  store i16 %bf.set32, i16* getelementptr inbounds (%union.u, %union.u* @u, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc42, %for.end28
  %11 = load i32, i32* %i, align 4
  %conv34 = sext i32 %11 to i64
  %cmp35 = icmp ult i64 %conv34, 8
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond33
  %12 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %12 to i64
  %arrayidx39 = getelementptr inbounds [8 x i8], [8 x i8]* bitcast (%union.u* @u to [8 x i8]*), i64 0, i64 %idxprom38
  %13 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %13 to i32
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %conv40)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %14 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %14, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond33, !llvm.loop !8

for.end44:                                        ; preds = %for.cond33
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
