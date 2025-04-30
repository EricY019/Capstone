; ModuleID = 'code/179-28343ashrti3.c'
source_filename = "code/179-28343ashrti3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"x >> shift == y\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"code/179-28343ashrti3.c\00", align 1
@__PRETTY_FUNCTION__.run = private unnamed_addr constant [19 x i8] c"void run(__int128)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %max = alloca i128, align 16
  %x = alloca i128, align 16
  %coerce = alloca i128, align 16
  %x1 = alloca i128, align 16
  %coerce4 = alloca i128, align 16
  store i32 0, i32* %retval, align 4
  store i128 170141183460469231731687303715884105727, i128* %max, align 16
  store i128 1, i128* %x, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i128, i128* %x, align 16
  %tobool = icmp ne i128 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i128, i128* %x, align 16
  store i128 %1, i128* %coerce, align 16
  %2 = bitcast i128* %coerce to { i64, i64 }*
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 16
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  call void @run(i64 %4, i64 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i128, i128* %x, align 16
  %mul = mul i128 %7, 2
  store i128 %mul, i128* %x, align 16
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i128 1, i128* %x1, align 16
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc5, %for.end
  %8 = load i128, i128* %x1, align 16
  %shr = lshr i128 %8, 104
  %cmp = icmp ne i128 %shr, 3224432
  br i1 %cmp, label %for.body3, label %for.end7

for.body3:                                        ; preds = %for.cond2
  %9 = load i128, i128* %x1, align 16
  %10 = load i128, i128* %max, align 16
  %and = and i128 %9, %10
  store i128 %and, i128* %coerce4, align 16
  %11 = bitcast i128* %coerce4 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 16
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  call void @run(i64 %13, i64 %15)
  br label %for.inc5

for.inc5:                                         ; preds = %for.body3
  %16 = load i128, i128* %x1, align 16
  %mul6 = mul i128 %16, 3
  store i128 %mul6, i128* %x1, align 16
  br label %for.cond2, !llvm.loop !6

for.end7:                                         ; preds = %for.cond2
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(i64 %x.coerce0, i64 %x.coerce1) #0 {
entry:
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %y = alloca i128, align 16
  %shift = alloca i32, align 4
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  %3 = load i128, i128* %x.addr, align 16
  store i128 %3, i128* %y, align 16
  store i32 0, i32* %shift, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %shift, align 4
  %cmp = icmp slt i32 %4, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i128, i128* %x.addr, align 16
  %6 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %6 to i128
  %shr = ashr i128 %5, %sh_prom
  %7 = load i128, i128* %y, align 16
  %cmp2 = icmp eq i128 %shr, %7
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.run, i64 0, i64 0)) #2
  unreachable

8:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load i128, i128* %y, align 16
  %shr3 = ashr i128 %9, 1
  store i128 %shr3, i128* %y, align 16
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %10 = load i32, i32* %shift, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %shift, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
