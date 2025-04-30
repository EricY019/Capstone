; ModuleID = 'code/215-2077box5.c'
source_filename = "code/215-2077box5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"graf5.dat\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%d\09 %d\09 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nleft = alloca i32, align 4
  %t = alloca i32, align 4
  %r = alloca double, align 8
  %error_bar = alloca double, align 8
  %error = alloca double, align 8
  %sigma = alloca double, align 8
  %graf = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  store i32 800, i32* %nleft, align 4
  store i32 0, i32* %t, align 4
  store double 0.000000e+00, double* %error, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %graf, align 8
  %call1 = call i64 @time(i64* null) #3
  %conv = trunc i64 %call1 to i32
  call void @srand(i32 %conv) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %0 = load i32, i32* %t, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 @rand() #3
  %conv4 = sitofp i32 %call3 to double
  %mul = fmul double %conv4, 1.000000e+00
  %div = fdiv double %mul, 0x41DFFFFFFFC00000
  store double %div, double* %r, align 8
  %1 = load double, double* %r, align 8
  %cmp5 = fcmp ole double %1, 5.000000e-01
  %conv6 = zext i1 %cmp5 to i32
  %2 = load i32, i32* %nleft, align 4
  %cmp7 = icmp sgt i32 %2, 0
  %conv8 = zext i1 %cmp7 to i32
  %and = and i32 %conv6, %conv8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %nleft, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %nleft, align 4
  br label %if.end16

if.else:                                          ; preds = %while.body
  %4 = load double, double* %r, align 8
  %cmp9 = fcmp oge double %4, 5.000000e-01
  %conv10 = zext i1 %cmp9 to i32
  %5 = load i32, i32* %nleft, align 4
  %sub = sub nsw i32 800, %5
  %cmp11 = icmp sgt i32 %sub, 0
  %conv12 = zext i1 %cmp11 to i32
  %and13 = and i32 %conv10, %conv12
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %6 = load i32, i32* %nleft, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nleft, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %t, align 4
  %inc17 = add nsw i32 %7, 1
  store i32 %inc17, i32* %t, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %graf, align 8
  %9 = load i32, i32* %t, align 4
  %10 = load i32, i32* %nleft, align 4
  %11 = load i32, i32* %nleft, align 4
  %sub18 = sub nsw i32 800, %11
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %9, i32 %10, i32 %sub18)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
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
