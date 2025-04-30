; ModuleID = 'code/031-15476rand_decay_average.c'
source_filename = "code/031-15476rand_decay_average.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"data_rand_average.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N_0 = alloca float, align 4
  %Lambda = alloca float, align 4
  %Dt = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float 1.000000e+02, float* %N_0, align 4
  store float 5.000000e-01, float* %Lambda, align 4
  store float 0x3F50624DE0000000, float* %Dt, align 4
  call void @srand48(i64 1) #3
  %0 = load float, float* %N_0, align 4
  %1 = load float, float* %Lambda, align 4
  %2 = load float, float* %Dt, align 4
  call void @single_decay(float %0, float %1, float %2)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand48(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @single_decay(float %N0, float %lambda, float %dt) #0 {
entry:
  %N0.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %dt.addr = alloca float, align 4
  %t_total = alloca float, align 4
  %n_points = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %M = alloca float, align 4
  %t = alloca float, align 4
  %n = alloca float, align 4
  %array_n = alloca float*, align 8
  %array_t = alloca float*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %array_n_temp = alloca float*, align 8
  %array_t_temp = alloca float*, align 8
  %delta_n = alloca float, align 4
  store float %N0, float* %N0.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  store float %dt, float* %dt.addr, align 4
  %0 = load float, float* %lambda.addr, align 4
  %conv = fpext float %0 to double
  %div = fdiv double 5.000000e+00, %conv
  %conv1 = fptrunc double %div to float
  store float %conv1, float* %t_total, align 4
  %1 = load float, float* %t_total, align 4
  %conv2 = fptosi float %1 to i32
  %conv3 = sitofp i32 %conv2 to float
  %2 = load float, float* %dt.addr, align 4
  %div4 = fdiv float %conv3, %2
  %conv5 = fptosi float %div4 to i32
  store i32 %conv5, i32* %n_points, align 4
  store float 5.000000e+00, float* %M, align 4
  store float 0.000000e+00, float* %t, align 4
  %3 = load float, float* %N0.addr, align 4
  store float %3, float* %n, align 4
  %4 = load i32, i32* %n_points, align 4
  %conv6 = sext i32 %4 to i64
  %mul = mul i64 %conv6, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #3
  %5 = bitcast i8* %call to float*
  store float* %5, float** %array_n, align 8
  %6 = load i32, i32* %n_points, align 4
  %conv7 = sext i32 %6 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call noalias align 16 i8* @malloc(i64 %mul8) #3
  %7 = bitcast i8* %call9 to float*
  store float* %7, float** %array_t, align 8
  %call10 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %out, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %9 = load float, float* %t, align 4
  %conv11 = fpext float %9 to double
  %10 = load float, float* %n, align 4
  %conv12 = fpext float %10 to double
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %conv11, double %conv12)
  %11 = load float, float* %n, align 4
  %12 = load float*, float** %array_n, align 8
  %arrayidx = getelementptr inbounds float, float* %12, i64 0
  store float %11, float* %arrayidx, align 4
  %13 = load float, float* %t, align 4
  %14 = load float*, float** %array_t, align 8
  %arrayidx14 = getelementptr inbounds float, float* %14, i64 0
  store float %13, float* %arrayidx14, align 4
  %15 = load i32, i32* %n_points, align 4
  %conv15 = sext i32 %15 to i64
  %mul16 = mul i64 %conv15, 4
  %call17 = call noalias align 16 i8* @malloc(i64 %mul16) #3
  %16 = bitcast i8* %call17 to float*
  store float* %16, float** %array_n_temp, align 8
  %17 = load i32, i32* %n_points, align 4
  %conv18 = sext i32 %17 to i64
  %mul19 = mul i64 %conv18, 4
  %call20 = call noalias align 16 i8* @malloc(i64 %mul19) #3
  %18 = bitcast i8* %call20 to float*
  store float* %18, float** %array_t_temp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %19 = load i32, i32* %j, align 4
  %conv21 = sitofp i32 %19 to float
  %20 = load float, float* %M, align 4
  %cmp = fcmp olt float %conv21, %20
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %21 = load float, float* %N0.addr, align 4
  %22 = load float*, float** %array_n_temp, align 8
  %arrayidx23 = getelementptr inbounds float, float* %22, i64 0
  store float %21, float* %arrayidx23, align 4
  %23 = load float*, float** %array_t_temp, align 8
  %arrayidx24 = getelementptr inbounds float, float* %23, i64 0
  store float 0.000000e+00, float* %arrayidx24, align 4
  %24 = load float, float* %N0.addr, align 4
  store float %24, float* %n, align 4
  store float 0.000000e+00, float* %t, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc, %for.body
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n_points, align 4
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond25
  %27 = load float, float* %dt.addr, align 4
  %28 = load float, float* %t, align 4
  %add = fadd float %28, %27
  store float %add, float* %t, align 4
  %29 = load float, float* %n, align 4
  %30 = load float, float* %lambda.addr, align 4
  %31 = load float, float* %dt.addr, align 4
  %call29 = call float @delta_n_step(float %29, float %30, float %31)
  store float %call29, float* %delta_n, align 4
  %32 = load float, float* %delta_n, align 4
  %33 = load float, float* %n, align 4
  %add30 = fadd float %33, %32
  store float %add30, float* %n, align 4
  %34 = load float, float* %n, align 4
  %35 = load float*, float** %array_n_temp, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx31 = getelementptr inbounds float, float* %35, i64 %idxprom
  store float %34, float* %arrayidx31, align 4
  %37 = load float, float* %t, align 4
  %38 = load float*, float** %array_t_temp, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds float, float* %38, i64 %idxprom32
  store float %37, float* %arrayidx33, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body28
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond25, !llvm.loop !4

for.end:                                          ; preds = %for.cond25
  store i32 1, i32* %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc52, %for.end
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %n_points, align 4
  %cmp35 = icmp slt i32 %41, %42
  br i1 %cmp35, label %for.body37, label %for.end54

for.body37:                                       ; preds = %for.cond34
  %43 = load float*, float** %array_n, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds float, float* %43, i64 %idxprom38
  %45 = load float, float* %arrayidx39, align 4
  %46 = load float*, float** %array_n_temp, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %47 to i64
  %arrayidx41 = getelementptr inbounds float, float* %46, i64 %idxprom40
  %48 = load float, float* %arrayidx41, align 4
  %add42 = fadd float %45, %48
  %49 = load float*, float** %array_n, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %50 to i64
  %arrayidx44 = getelementptr inbounds float, float* %49, i64 %idxprom43
  store float %add42, float* %arrayidx44, align 4
  %51 = load float*, float** %array_t, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %52 to i64
  %arrayidx46 = getelementptr inbounds float, float* %51, i64 %idxprom45
  %53 = load float, float* %arrayidx46, align 4
  %54 = load float*, float** %array_t_temp, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %55 to i64
  %arrayidx48 = getelementptr inbounds float, float* %54, i64 %idxprom47
  %56 = load float, float* %arrayidx48, align 4
  %add49 = fadd float %53, %56
  %57 = load float*, float** %array_t, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %58 to i64
  %arrayidx51 = getelementptr inbounds float, float* %57, i64 %idxprom50
  store float %add49, float* %arrayidx51, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %for.body37
  %59 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %59, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond34, !llvm.loop !6

for.end54:                                        ; preds = %for.cond34
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %60 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %60, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond, !llvm.loop !7

for.end57:                                        ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc79, %for.end57
  %61 = load i32, i32* %k, align 4
  %62 = load i32, i32* %n_points, align 4
  %cmp59 = icmp slt i32 %61, %62
  br i1 %cmp59, label %for.body61, label %for.end81

for.body61:                                       ; preds = %for.cond58
  %63 = load float*, float** %array_n, align 8
  %64 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %64 to i64
  %arrayidx63 = getelementptr inbounds float, float* %63, i64 %idxprom62
  %65 = load float, float* %arrayidx63, align 4
  %66 = load float, float* %M, align 4
  %div64 = fdiv float %65, %66
  %67 = load float*, float** %array_n, align 8
  %68 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %68 to i64
  %arrayidx66 = getelementptr inbounds float, float* %67, i64 %idxprom65
  store float %div64, float* %arrayidx66, align 4
  %69 = load float*, float** %array_t, align 8
  %70 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %70 to i64
  %arrayidx68 = getelementptr inbounds float, float* %69, i64 %idxprom67
  %71 = load float, float* %arrayidx68, align 4
  %72 = load float, float* %M, align 4
  %div69 = fdiv float %71, %72
  %73 = load float*, float** %array_t, align 8
  %74 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %74 to i64
  %arrayidx71 = getelementptr inbounds float, float* %73, i64 %idxprom70
  store float %div69, float* %arrayidx71, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %76 = load float*, float** %array_t, align 8
  %77 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %77 to i64
  %arrayidx73 = getelementptr inbounds float, float* %76, i64 %idxprom72
  %78 = load float, float* %arrayidx73, align 4
  %conv74 = fpext float %78 to double
  %79 = load float*, float** %array_n, align 8
  %80 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %80 to i64
  %arrayidx76 = getelementptr inbounds float, float* %79, i64 %idxprom75
  %81 = load float, float* %arrayidx76, align 4
  %conv77 = fpext float %81 to double
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %conv74, double %conv77)
  br label %for.inc79

for.inc79:                                        ; preds = %for.body61
  %82 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %82, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond58, !llvm.loop !8

for.end81:                                        ; preds = %for.cond58
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call82 = call i32 @fclose(%struct._IO_FILE* %83)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @delta_n_step(float %n, float %lambda, float %dt) #0 {
entry:
  %retval = alloca float, align 4
  %n.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %dt.addr = alloca float, align 4
  %rand_num = alloca float, align 4
  store float %n, float* %n.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  store float %dt, float* %dt.addr, align 4
  %call = call double @drand48() #3
  %conv = fptrunc double %call to float
  store float %conv, float* %rand_num, align 4
  %0 = load float, float* %rand_num, align 4
  %1 = load float, float* %lambda.addr, align 4
  %2 = load float, float* %n.addr, align 4
  %mul = fmul float %1, %2
  %3 = load float, float* %dt.addr, align 4
  %mul1 = fmul float %mul, %3
  %cmp = fcmp olt float %0, %mul1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float -1.000000e+00, float* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load float, float* %retval, align 4
  ret float %4
}

; Function Attrs: nounwind
declare dso_local double @drand48() #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

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
!8 = distinct !{!8, !5}
