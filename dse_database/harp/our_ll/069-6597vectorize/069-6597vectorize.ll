; ModuleID = 'code/069-6597vectorize.c'
source_filename = "code/069-6597vectorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double*, align 8
  %y = alloca double*, align 8
  %z = alloca double*, align 8
  %stopper_for_apply = alloca i8*, align 8
  %.compoundliteral = alloca [1 x i32], align 4
  %list_for_apply = alloca i8**, align 8
  %.compoundliteral3 = alloca [4 x i8*], align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 10) #2
  %0 = bitcast i8* %call to double*
  store double* %0, double** %x, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 100) #2
  %1 = bitcast i8* %call1 to double*
  store double* %1, double** %y, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 1000) #2
  %2 = bitcast i8* %call2 to double*
  store double* %2, double** %z, align 8
  %arrayinit.begin = getelementptr inbounds [1 x i32], [1 x i32]* %.compoundliteral, i64 0, i64 0
  store i32 0, i32* %arrayinit.begin, align 4
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %.compoundliteral, i64 0, i64 0
  %3 = bitcast i32* %arraydecay to i8*
  store i8* %3, i8** %stopper_for_apply, align 8
  %arrayinit.begin4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.compoundliteral3, i64 0, i64 0
  %4 = load double*, double** %x, align 8
  %5 = bitcast double* %4 to i8*
  store i8* %5, i8** %arrayinit.begin4, align 8
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin4, i64 1
  %6 = load double*, double** %y, align 8
  %7 = bitcast double* %6 to i8*
  store i8* %7, i8** %arrayinit.element, align 8
  %arrayinit.element5 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1
  %8 = load double*, double** %z, align 8
  %9 = bitcast double* %8 to i8*
  store i8* %9, i8** %arrayinit.element5, align 8
  %arrayinit.element6 = getelementptr inbounds i8*, i8** %arrayinit.element5, i64 1
  %10 = load i8*, i8** %stopper_for_apply, align 8
  store i8* %10, i8** %arrayinit.element6, align 8
  %arraydecay7 = getelementptr inbounds [4 x i8*], [4 x i8*]* %.compoundliteral3, i64 0, i64 0
  store i8** %arraydecay7, i8*** %list_for_apply, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i8**, i8*** %list_for_apply, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %14 = load i8*, i8** %stopper_for_apply, align 8
  %cmp = icmp ne i8* %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8**, i8*** %list_for_apply, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %15, i64 %idxprom8
  %17 = load i8*, i8** %arrayidx9, align 8
  call void @free(i8* %17) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

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
