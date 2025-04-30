; ModuleID = 'code/189-12218Exercise_1_8.c'
source_filename = "code/189-12218Exercise_1_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal = type { [12 x i8], i32 }

@__const.main.c = private unnamed_addr constant [12 x %struct.cal] [%struct.cal { [12 x i8] c"January\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"Febrav\00\00\00\00\00\00", i32 28 }, %struct.cal { [12 x i8] c"March\00\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"April\00\00\00\00\00\00\00", i32 30 }, %struct.cal { [12 x i8] c"May\00\00\00\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"June\00\00\00\00\00\00\00\00", i32 30 }, %struct.cal { [12 x i8] c"July\00\00\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"August\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"Septem\00\00\00\00\00\00", i32 30 }, %struct.cal { [12 x i8] c"Octobe\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"Novemb\00\00\00\00\00\00", i32 30 }, %struct.cal { [12 x i8] c"Decemb\00\00\00\00\00\00", i32 31 }], align 16
@.str = private unnamed_addr constant [9 x i8] c"%s\09\09 %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Months\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"No. of Days\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s\09\09 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca [12 x %struct.cal], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [12 x %struct.cal]* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([12 x %struct.cal], [12 x %struct.cal]* @__const.main.c, i32 0, i32 0, i32 0, i32 0), i64 192, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [12 x %struct.cal], [12 x %struct.cal]* %c, i64 0, i64 %idxprom
  %monthName = getelementptr inbounds %struct.cal, %struct.cal* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %monthName, i64 0, i64 0
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [12 x %struct.cal], [12 x %struct.cal]* %c, i64 0, i64 %idxprom1
  %monthDays = getelementptr inbounds %struct.cal, %struct.cal* %arrayidx2, i32 0, i32 1
  %4 = load i32, i32* %monthDays, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay, i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
