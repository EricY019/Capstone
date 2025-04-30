; ModuleID = 'code/316-23045pages_as_heap.c'
source_filename = "code/316-23045pages_as_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"brk value at failure: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"brk() failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %inc_dec = alloca i32, align 4
  %delta = alloca i32, align 4
  %brk_stat = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %inc_dec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %inc_dec, align 4
  %cmp = icmp sge i32 %0, -1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %delta, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %1 = load i32, i32* %delta, align 4
  %cmp2 = icmp sle i32 %1, 400
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %2, 20000
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %call = call i8* @sbrk(i64 0) #3
  %3 = load i32, i32* %inc_dec, align 4
  %4 = load i32, i32* %delta, align 4
  %mul = mul nsw i32 %3, %4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %call7 = call i32 @brk(i8* %add.ptr) #3
  %conv = sext i32 %call7 to i64
  store i64 %conv, i64* %brk_stat, align 8
  %5 = load i64, i64* %brk_stat, align 8
  %cmp8 = icmp eq i64 %5, -1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %call10 = call i8* @sbrk(i64 0) #3
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %call10)
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %7 = load i32, i32* %delta, align 4
  %add = add nsw i32 %7, 399
  store i32 %add, i32* %delta, align 4
  br label %for.cond1, !llvm.loop !6

for.end13:                                        ; preds = %for.cond1
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %8 = load i32, i32* %inc_dec, align 4
  %sub = sub nsw i32 %8, 2
  store i32 %sub, i32* %inc_dec, align 4
  br label %for.cond, !llvm.loop !7

for.end15:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end15, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local i32 @brk(i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @sbrk(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local void @perror(i8*) #2

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
