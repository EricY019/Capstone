; ModuleID = 'code/384-8346pdb-realloc.c'
source_filename = "code/384-8346pdb-realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %x = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 1000) #2
  store i8* %call, i8** %x, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %and = and i32 %1, 255
  %2 = load i8*, i8** %x, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %and1 = and i32 %conv, %and
  %conv2 = trunc i32 %and1 to i8
  store i8 %conv2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %x, align 8
  %call3 = call align 16 i8* @realloc(i8* %6, i64 10000) #2
  store i8* %call3, i8** %x, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %7, 1000
  br i1 %cmp5, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond4
  %8 = load i8*, i8** %x, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %11 = load i32, i32* %t, align 4
  %add = add nsw i32 %11, %conv10
  store i32 %add, i32* %t, align 4
  br label %for.inc11

for.inc11:                                        ; preds = %for.body7
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4, !llvm.loop !6

for.end13:                                        ; preds = %for.cond4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
