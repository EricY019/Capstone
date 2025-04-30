; ModuleID = 'code/183-11129compara.c'
source_filename = "code/183-11129compara.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.arrange = type { x86_fp80 }

@one = dso_local global %union.arrange { x86_fp80 0xK3C1BA2DE8AFCFD9FD800 }, align 16
@two = dso_local global %union.arrange { x86_fp80 0xK7FFF8000000000000000 }, align 16
@.str = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 15, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %x, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* bitcast (%union.arrange* @one to [16 x i8]*), i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %x, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %x, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @putchar(i32 10)
  store i32 15, i32* %x, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, i32* %x, align 4
  %cmp3 = icmp sgt i32 %4, -1
  br i1 %cmp3, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond2
  %5 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* bitcast (%union.arrange* @two to [16 x i8]*), i64 0, i64 %idxprom6
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %conv8)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body5
  %7 = load i32, i32* %x, align 4
  %dec11 = add nsw i32 %7, -1
  store i32 %dec11, i32* %x, align 4
  br label %for.cond2, !llvm.loop !6

for.end12:                                        ; preds = %for.cond2
  %call13 = call i32 @putchar(i32 10)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i32) #1

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
