; ModuleID = 'code/261-14481hardstride.c'
source_filename = "code/261-14481hardstride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %MEM_SIZE = alloca i32, align 4
  %DURATION = alloca i32, align 4
  %DELAY_OPS = alloca i32, align 4
  %count = alloca i32, align 4
  %mem = alloca i32*, align 8
  %elapsed = alloca i32, align 4
  %tmp = alloca i32, align 4
  %read_addr = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10485760, i32* %MEM_SIZE, align 4
  store i32 60000000, i32* %DURATION, align 4
  store i32 1, i32* %DELAY_OPS, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %MEM_SIZE, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %mem, align 8
  store i32 0, i32* %elapsed, align 4
  store i32 0, i32* %tmp, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %elapsed, align 4
  %3 = load i32, i32* %DURATION, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %count, align 4
  %5 = load i32, i32* %MEM_SIZE, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %read_addr, align 4
  %6 = load i32*, i32** %mem, align 8
  %7 = load i32, i32* %read_addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %tmp, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %tmp, align 4
  %10 = load i32, i32* %DELAY_OPS, align 4
  %11 = load i32, i32* %elapsed, align 4
  %add2 = add nsw i32 %11, %10
  store i32 %add2, i32* %elapsed, align 4
  %12 = load i32, i32* %count, align 4
  %add3 = add nsw i32 %12, 16
  store i32 %add3, i32* %count, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %tmp, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

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
