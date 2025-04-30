; ModuleID = 'code/103-25177execinfo.c'
source_filename = "code/103-25177execinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Obtained %zd stack frames.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_trace() #0 {
entry:
  %array = alloca [10 x i8*], align 16
  %size = alloca i64, align 8
  %strings = alloca i8**, align 8
  %i = alloca i64, align 8
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %array, i64 0, i64 0
  %call = call i32 @backtrace(i8** %arraydecay, i32 10)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %size, align 8
  %arraydecay1 = getelementptr inbounds [10 x i8*], [10 x i8*]* %array, i64 0, i64 0
  %0 = load i64, i64* %size, align 8
  %conv2 = trunc i64 %0 to i32
  %call3 = call i8** @backtrace_symbols(i8** %arraydecay1, i32 %conv2) #3
  store i8** %call3, i8*** %strings, align 8
  %1 = load i64, i64* %size, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %strings, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %5
  %6 = load i8*, i8** %arrayidx, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i8**, i8*** %strings, align 8
  %9 = bitcast i8** %8 to i8*
  call void @free(i8* %9) #3
  ret void
}

declare dso_local i32 @backtrace(i8**, i32) #1

; Function Attrs: nounwind
declare dso_local i8** @backtrace_symbols(i8**, i32) #2

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dummy_function() #0 {
entry:
  call void @print_trace()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @dummy_function()
  ret i32 0
}

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
