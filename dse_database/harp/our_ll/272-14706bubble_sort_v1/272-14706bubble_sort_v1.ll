; ModuleID = 'code/272-14706bubble_sort_v1.c'
source_filename = "code/272-14706bubble_sort_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d : \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %big_array = alloca [65535 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 65535
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #3
  %mul = mul nsw i32 2, %call
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end
  %3 = load i32, i32* %i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* %i, align 4
  %cmp2 = icmp slt i32 %inc1, 65535
  br i1 %cmp2, label %while.body, label %while.end21

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond3

while.cond3:                                      ; preds = %while.body10, %while.body
  %5 = load i32, i32* %j, align 4
  %cmp4 = icmp sgt i32 %5, -1
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond3
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load i32, i32* %j, align 4
  %add = add nsw i32 %8, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp sgt i32 %7, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond3
  %10 = phi i1 [ false, %while.cond3 ], [ %cmp9, %land.rhs ]
  br i1 %10, label %while.body10, label %while.end

while.body10:                                     ; preds = %land.end
  %11 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx12, align 4
  store i32 %12, i32* %tmp, align 4
  %13 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %13, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom14
  %14 = load i32, i32* %arrayidx15, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom16
  store i32 %14, i32* %arrayidx17, align 4
  %16 = load i32, i32* %tmp, align 4
  %17 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %17, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom19
  store i32 %16, i32* %arrayidx20, align 4
  %18 = load i32, i32* %j, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond3, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond, !llvm.loop !7

while.end21:                                      ; preds = %while.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc29, %while.end21
  %19 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %19, 65535
  br i1 %cmp23, label %for.body24, label %for.end31

for.body24:                                       ; preds = %for.cond22
  %20 = load i32, i32* %i, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %21 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom26
  %22 = load i32, i32* %arrayidx27, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %for.inc29

for.inc29:                                        ; preds = %for.body24
  %23 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %23, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond22, !llvm.loop !8

for.end31:                                        ; preds = %for.cond22
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

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
