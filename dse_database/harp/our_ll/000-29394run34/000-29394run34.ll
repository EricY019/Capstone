; ModuleID = 'code/000-29394run34.c'
source_filename = "code/000-29394run34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"x = %d (0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09ref: %d (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\09Got: %d (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_trueThreeFourths(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %x3 = alloca i64, align 8
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 3
  store i64 %mul, i64* %x3, align 8
  %1 = load i64, i64* %x3, align 8
  %div = sdiv i64 %1, 4
  %conv1 = trunc i64 %div to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trueThreeFourths(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %xs1 = alloca i32, align 4
  %xs2 = alloca i32, align 4
  %bias = alloca i32, align 4
  %xl2 = alloca i32, align 4
  %xl1 = alloca i32, align 4
  %incr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %xs1, align 4
  %1 = load i32, i32* %x.addr, align 4
  %shr1 = ashr i32 %1, 2
  store i32 %shr1, i32* %xs2, align 4
  %2 = load i32, i32* %x.addr, align 4
  %shr2 = ashr i32 %2, 31
  %and = and i32 %shr2, 3
  store i32 %and, i32* %bias, align 4
  %3 = load i32, i32* %x.addr, align 4
  %and3 = and i32 %3, 3
  store i32 %and3, i32* %xl2, align 4
  %4 = load i32, i32* %x.addr, align 4
  %and4 = and i32 %4, 1
  %shl = shl i32 %and4, 1
  store i32 %shl, i32* %xl1, align 4
  %5 = load i32, i32* %xl2, align 4
  %6 = load i32, i32* %xl1, align 4
  %add = add nsw i32 %5, %6
  %7 = load i32, i32* %bias, align 4
  %add5 = add nsw i32 %add, %7
  %shr6 = ashr i32 %add5, 2
  store i32 %shr6, i32* %incr, align 4
  %8 = load i32, i32* %xs1, align 4
  %9 = load i32, i32* %xs2, align 4
  %add7 = add nsw i32 %8, %9
  %10 = load i32, i32* %incr, align 4
  %add8 = add nsw i32 %add7, %10
  ret i32 %add8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %4) #3
  store i32 %call, i32* %x, align 4
  %5 = load i32, i32* %x, align 4
  %call1 = call i32 @trueThreeFourths(i32 %5)
  store i32 %call1, i32* %v1, align 4
  %6 = load i32, i32* %x, align 4
  %call2 = call i32 @test_trueThreeFourths(i32 %6)
  store i32 %call2, i32* %v2, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %x, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %9 = load i32, i32* %v2, align 4
  %10 = load i32, i32* %v2, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10)
  %11 = load i32, i32* %v1, align 4
  %12 = load i32, i32* %v1, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
