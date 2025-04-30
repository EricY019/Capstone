; ModuleID = 'code/172-5462hello.c'
source_filename = "code/172-5462hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"sqrt(%f) = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @sqrt2(float %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %x0 = alloca float, align 4
  %x1 = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float 1.000000e+00, float* %x0, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %x0, align 4
  %mul = fmul float 2.000000e+00, %1
  %div = fdiv float %0, %mul
  %2 = load float, float* %x0, align 4
  %div1 = fdiv float %2, 2.000000e+00
  %add = fadd float %div, %div1
  store float %add, float* %x1, align 4
  %3 = load float, float* %x0, align 4
  %4 = load float, float* %x1, align 4
  %sub = fsub float %3, %4
  %conv = fpext float %sub to double
  %5 = call double @llvm.fabs.f64(double %conv)
  %cmp = fcmp olt double %5, 1.000000e-02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %6 = load float, float* %x1, align 4
  store float %6, float* %x0, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %7 = load float, float* %x0, align 4
  ret float %7
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call double @atof(i8* %2) #4
  %conv = fptrunc double %call to float
  store float %conv, float* %a, align 4
  %3 = load float, float* %a, align 4
  %conv1 = fpext float %3 to double
  %4 = load float, float* %a, align 4
  %call2 = call float @sqrt2(float %4)
  %conv3 = fpext float %call2 to double
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), double %conv1, double %conv3)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind readonly willreturn
declare dso_local double @atof(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
