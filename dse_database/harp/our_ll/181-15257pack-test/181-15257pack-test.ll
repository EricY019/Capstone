; ModuleID = 'code/181-15257pack-test.c'
source_filename = "code/181-15257pack-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._xxu = type { [30 x i32] }
%struct._xx = type { i8, i16, i8, i32 }

@.str = private unnamed_addr constant [16 x i8] c"sizeof st = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %st = alloca %union._xxu, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i1 = bitcast %union._xxu* %st to [30 x i32]*
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [30 x i32], [30 x i32]* %i1, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %s = bitcast %union._xxu* %st to %struct._xx*
  %a = getelementptr inbounds %struct._xx, %struct._xx* %s, i32 0, i32 0
  store i8 49, i8* %a, align 4
  %s2 = bitcast %union._xxu* %st to %struct._xx*
  %b = getelementptr inbounds %struct._xx, %struct._xx* %s2, i32 0, i32 1
  store i16 -21555, i16* %b, align 2
  %s3 = bitcast %union._xxu* %st to %struct._xx*
  %c = getelementptr inbounds %struct._xx, %struct._xx* %s3, i32 0, i32 2
  store i8 50, i8* %c, align 4
  %s4 = bitcast %union._xxu* %st to %struct._xx*
  %d = getelementptr inbounds %struct._xx, %struct._xx* %s4, i32 0, i32 3
  store i32 305419896, i32* %d, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 120)
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
