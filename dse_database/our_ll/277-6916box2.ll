; ModuleID = 'code/277-6916box2.c'
source_filename = "code/277-6916box2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"graf2.dat\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d\09 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nleft = alloca i32, align 4
  %N = alloca i32, align 4
  %t = alloca i32, align 4
  %r = alloca double, align 8
  %graf = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %graf, align 8
  %call1 = call i64 @time(i64* null) #3
  %conv = trunc i64 %call1 to i32
  call void @srand(i32 %conv) #3
  store i32 8, i32* %N, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %N, align 4
  %cmp = icmp sle i32 %0, 10000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %N, align 4
  store i32 %1, i32* %nleft, align 4
  store i32 0, i32* %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %2 = load i32, i32* %nleft, align 4
  %3 = load i32, i32* %N, align 4
  %div = sdiv i32 %3, 2
  %cmp3 = icmp ne i32 %2, %div
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i32 @rand() #3
  %conv6 = sitofp i32 %call5 to double
  %mul = fmul double %conv6, 1.000000e+00
  %div7 = fdiv double %mul, 0x41DFFFFFFFC00000
  store double %div7, double* %r, align 8
  %4 = load double, double* %r, align 8
  %5 = load i32, i32* %nleft, align 4
  %conv8 = sitofp i32 %5 to double
  %mul9 = fmul double %conv8, 1.000000e+00
  %6 = load i32, i32* %N, align 4
  %conv10 = sitofp i32 %6 to double
  %div11 = fdiv double %mul9, %conv10
  %cmp12 = fcmp ole double %4, %div11
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %nleft, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %nleft, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load i32, i32* %nleft, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %nleft, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %t, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, i32* %t, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %graf, align 8
  %11 = load i32, i32* %N, align 4
  %12 = load i32, i32* %t, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %13 = load i32, i32* %N, align 4
  %mul16 = mul nsw i32 %13, 2
  store i32 %mul16, i32* %N, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

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
