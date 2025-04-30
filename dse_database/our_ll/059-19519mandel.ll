; ModuleID = 'code/059-19519mandel.c'
source_filename = "code/059-19519mandel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complextype = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"res[0][0]\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"code/059-19519mandel.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %z = alloca %struct.complextype, align 4
  %c = alloca %struct.complextype, align 4
  %lensq = alloca float, align 4
  %temp = alloca float, align 4
  %iters = alloca i32, align 4
  %res = alloca [1024 x [1024 x i32]], align 16
  store i32 0, i32* %retval, align 4
  store i32 1024, i32* %iters, align 4
  %call = call i8* @getenv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #4
  %call2 = call i32 @atoi(i8* %call1) #5
  store i32 %call2, i32* %iters, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %if.end
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %1, 1024
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %imag = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 1
  store float 0.000000e+00, float* %imag, align 4
  %real = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 0
  store float 0.000000e+00, float* %real, align 4
  %2 = load i32, i32* %j, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double %conv, 4.000000e+00
  %div = fdiv double %mul, 1.024000e+03
  %add = fadd double -2.000000e+00, %div
  %conv6 = fptrunc double %add to float
  %real7 = getelementptr inbounds %struct.complextype, %struct.complextype* %c, i32 0, i32 0
  store float %conv6, float* %real7, align 4
  %3 = load i32, i32* %i, align 4
  %conv8 = sitofp i32 %3 to double
  %mul9 = fmul double %conv8, 4.000000e+00
  %div10 = fdiv double %mul9, 1.024000e+03
  %sub = fsub double 2.000000e+00, %div10
  %conv11 = fptrunc double %sub to float
  %imag12 = getelementptr inbounds %struct.complextype, %struct.complextype* %c, i32 0, i32 1
  store float %conv11, float* %imag12, align 4
  store i32 0, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %for.body5
  %real13 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 0
  %4 = load float, float* %real13, align 4
  %real14 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 0
  %5 = load float, float* %real14, align 4
  %mul15 = fmul float %4, %5
  %imag16 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 1
  %6 = load float, float* %imag16, align 4
  %imag17 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 1
  %7 = load float, float* %imag17, align 4
  %mul18 = fmul float %6, %7
  %sub19 = fsub float %mul15, %mul18
  %real20 = getelementptr inbounds %struct.complextype, %struct.complextype* %c, i32 0, i32 0
  %8 = load float, float* %real20, align 4
  %add21 = fadd float %sub19, %8
  store float %add21, float* %temp, align 4
  %real22 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 0
  %9 = load float, float* %real22, align 4
  %conv23 = fpext float %9 to double
  %mul24 = fmul double 2.000000e+00, %conv23
  %imag25 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 1
  %10 = load float, float* %imag25, align 4
  %conv26 = fpext float %10 to double
  %mul27 = fmul double %mul24, %conv26
  %imag28 = getelementptr inbounds %struct.complextype, %struct.complextype* %c, i32 0, i32 1
  %11 = load float, float* %imag28, align 4
  %conv29 = fpext float %11 to double
  %add30 = fadd double %mul27, %conv29
  %conv31 = fptrunc double %add30 to float
  %imag32 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 1
  store float %conv31, float* %imag32, align 4
  %12 = load float, float* %temp, align 4
  %real33 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 0
  store float %12, float* %real33, align 4
  %real34 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 0
  %13 = load float, float* %real34, align 4
  %real35 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 0
  %14 = load float, float* %real35, align 4
  %mul36 = fmul float %13, %14
  %imag37 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 1
  %15 = load float, float* %imag37, align 4
  %imag38 = getelementptr inbounds %struct.complextype, %struct.complextype* %z, i32 0, i32 1
  %16 = load float, float* %imag38, align 4
  %mul39 = fmul float %15, %16
  %add40 = fadd float %mul36, %mul39
  store float %add40, float* %lensq, align 4
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load float, float* %lensq, align 4
  %conv41 = fpext float %18 to double
  %cmp42 = fcmp olt double %conv41, 4.000000e+00
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %iters, align 4
  %cmp44 = icmp slt i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %21 = phi i1 [ false, %do.cond ], [ %cmp44, %land.rhs ]
  br i1 %21, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %land.end
  %22 = load i32, i32* %k, align 4
  %23 = load i32, i32* %iters, align 4
  %cmp46 = icmp sge i32 %22, %23
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %do.end
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %res, i64 0, i64 %idxprom
  %25 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %25 to i64
  %arrayidx50 = getelementptr inbounds [1024 x i32], [1024 x i32]* %arrayidx, i64 0, i64 %idxprom49
  store i32 0, i32* %arrayidx50, align 4
  br label %if.end55

if.else:                                          ; preds = %do.end
  %26 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %26 to i64
  %arrayidx52 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %res, i64 0, i64 %idxprom51
  %27 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %27 to i64
  %arrayidx54 = getelementptr inbounds [1024 x i32], [1024 x i32]* %arrayidx52, i64 0, i64 %idxprom53
  store i32 1, i32* %arrayidx54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then48
  br label %for.inc

for.inc:                                          ; preds = %if.end55
  %28 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %28, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond3, !llvm.loop !6

for.end:                                          ; preds = %for.cond3
  br label %for.inc57

for.inc57:                                        ; preds = %for.end
  %29 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %29, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end59:                                        ; preds = %for.cond
  %arrayidx60 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %res, i64 0, i64 0
  %arrayidx61 = getelementptr inbounds [1024 x i32], [1024 x i32]* %arrayidx60, i64 0, i64 0
  %30 = load i32, i32* %arrayidx61, align 16
  %tobool62 = icmp ne i32 %30, 0
  br i1 %tobool62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end59
  br label %cond.end

cond.false:                                       ; preds = %for.end59
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

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
