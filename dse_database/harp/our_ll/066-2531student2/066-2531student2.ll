; ModuleID = 'code/066-2531student2.c'
source_filename = "code/066-2531student2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.student = type { [10 x i8], i32 }

@stu = dso_local global [5 x %struct.student] [%struct.student { [10 x i8] c"A\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.student { [10 x i8] c"B\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.student { [10 x i8] c"C\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.student { [10 x i8] c"D\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.student { [10 x i8] c"E\00\00\00\00\00\00\00\00\00", i32 0 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"\0A%s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %a, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %if.end, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 5
  br i1 %cmp2, label %for.body4, label %for.end17

for.body4:                                        ; preds = %for.cond1
  %call5 = call i32 @rand() #3
  %rem = srem i32 %call5, 5
  store i32 %rem, i32* %index, align 4
  %5 = load i32, i32* %index, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i64 0, i64 %idxprom6
  %6 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp ne i32 %6, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %7 = load i32, i32* %index, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i64 0, i64 %idxprom10
  %8 = load i32, i32* %arrayidx11, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [5 x %struct.student], [5 x %struct.student]* @stu, i64 0, i64 %idxprom12
  %num = getelementptr inbounds %struct.student, %struct.student* %arrayidx13, i32 0, i32 1
  store i32 %8, i32* %num, align 4
  %10 = load i32, i32* %index, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i64 0, i64 %idxprom14
  store i32 0, i32* %arrayidx15, align 4
  %11 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %11, 1
  store i32 %inc16, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.cond1, !llvm.loop !6

for.end17:                                        ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc28, %for.end17
  %12 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %12, 5
  br i1 %cmp19, label %for.body21, label %for.end30

for.body21:                                       ; preds = %for.cond18
  %13 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [5 x %struct.student], [5 x %struct.student]* @stu, i64 0, i64 %idxprom22
  %name = getelementptr inbounds %struct.student, %struct.student* %arrayidx23, i32 0, i32 0
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0
  %14 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [5 x %struct.student], [5 x %struct.student]* @stu, i64 0, i64 %idxprom24
  %num26 = getelementptr inbounds %struct.student, %struct.student* %arrayidx25, i32 0, i32 1
  %15 = load i32, i32* %num26, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, i32 %15)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body21
  %16 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %16, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond18, !llvm.loop !7

for.end30:                                        ; preds = %for.cond18
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

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
