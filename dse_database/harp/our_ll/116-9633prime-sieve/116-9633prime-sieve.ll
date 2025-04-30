; ModuleID = 'code/116-9633prime-sieve.c'
source_filename = "code/116-9633prime-sieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bool_str = dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_prime_numbers() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100489
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** @bool_str, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 49
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 100490) #3
  store i8* %call, i8** @bool_str, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100489
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i8*, i8** @bool_str, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 49, i8* %arrayidx, align 1
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i8*, i8** @bool_str, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 48, i8* %arrayidx1, align 1
  %5 = load i8*, i8** @bool_str, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 48, i8* %arrayidx2, align 1
  %6 = load i8*, i8** @bool_str, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 100489
  store i8 0, i8* %arrayidx3, align 1
  store i32 2, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc21, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %7, 317
  br i1 %cmp5, label %for.body6, label %for.end23

for.body6:                                        ; preds = %for.cond4
  %8 = load i8*, i8** @bool_str, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  %10 = load i8, i8* %arrayidx8, align 1
  %conv = sext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv, 49
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  store i32 1, i32* %j, align 4
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %11, %12
  store i32 %mul, i32* %k, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc18, %if.then
  %13 = load i32, i32* %k, align 4
  %cmp12 = icmp slt i32 %13, 100489
  br i1 %cmp12, label %for.body14, label %for.end20

for.body14:                                       ; preds = %for.cond11
  %14 = load i8*, i8** @bool_str, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %idxprom15
  store i8 48, i8* %arrayidx16, align 1
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %add = add nsw i32 %17, %18
  %mul17 = mul nsw i32 %16, %add
  store i32 %mul17, i32* %k, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body14
  %19 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond11, !llvm.loop !7

for.end20:                                        ; preds = %for.cond11
  br label %if.end

if.end:                                           ; preds = %for.end20, %for.body6
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond4, !llvm.loop !8

for.end23:                                        ; preds = %for.cond4
  call void @print_prime_numbers()
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
