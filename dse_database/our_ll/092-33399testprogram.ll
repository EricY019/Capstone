; ModuleID = 'code/092-33399testprogram.c'
source_filename = "code/092-33399testprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Wynik: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %size = alloca i32, align 4
  %jump = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %suma = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i7 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1024, i32* %size, align 4
  store i32 256, i32* %jump, align 4
  %0 = load i32, i32* %size, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i64, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i64, i64* %vla, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc24, %for.end
  %7 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %7, 1000
  br i1 %cmp2, label %for.body3, label %for.end26

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc21, %for.body3
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %jump, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end23

for.body6:                                        ; preds = %for.cond4
  %10 = load i32, i32* %k, align 4
  store i32 %10, i32* %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc18, %for.body6
  %11 = load i32, i32* %i7, align 4
  %12 = load i32, i32* %size, align 4
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %for.body10, label %for.end20

for.body10:                                       ; preds = %for.cond8
  %13 = load i32, i32* %i7, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds i64, i64* %vla, i64 %idxprom11
  %14 = load i64, i64* %arrayidx12, align 8
  %15 = load i32, i32* %i7, align 4
  %conv = sext i32 %15 to i64
  %add = add nsw i64 %14, %conv
  %16 = load i32, i32* %i7, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds i64, i64* %vla, i64 %idxprom13
  store i64 %add, i64* %arrayidx14, align 8
  %17 = load i32, i32* %i7, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds i64, i64* %vla, i64 %idxprom15
  %18 = load i64, i64* %arrayidx16, align 8
  %19 = load i64, i64* %suma, align 8
  %add17 = add nsw i64 %19, %18
  store i64 %add17, i64* %suma, align 8
  br label %for.inc18

for.inc18:                                        ; preds = %for.body10
  %20 = load i32, i32* %jump, align 4
  %21 = load i32, i32* %i7, align 4
  %add19 = add nsw i32 %21, %20
  store i32 %add19, i32* %i7, align 4
  br label %for.cond8, !llvm.loop !6

for.end20:                                        ; preds = %for.cond8
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %22 = load i32, i32* %k, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %k, align 4
  br label %for.cond4, !llvm.loop !7

for.end23:                                        ; preds = %for.cond4
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %23 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %23, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end26:                                        ; preds = %for.cond1
  %24 = load i64, i64* %suma, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %24)
  %25 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %25)
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
