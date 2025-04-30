; ModuleID = './code/059-19519mandel.c'
source_filename = "./code/059-19519mandel.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.complextype = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"059-19519mandel.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"res[0][0]\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
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
  %res = alloca [1024 x [1024 x i32]], align 4
  store i32 0, ptr %retval, align 4
  store i32 1024, ptr %iters, align 4
  %call = call ptr @getenv(ptr noundef @.str)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @getenv(ptr noundef @.str)
  %call2 = call i32 @atoi(ptr noundef %call1)
  store i32 %call2, ptr %iters, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc54, %if.end
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end56

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp4 = icmp slt i32 %1, 1024
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %imag = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 1
  store float 0.000000e+00, ptr %imag, align 4
  %real = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 0
  store float 0.000000e+00, ptr %real, align 4
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double %conv, 4.000000e+00
  %div = fdiv double %mul, 1.024000e+03
  %add = fadd double -2.000000e+00, %div
  %conv6 = fptrunc double %add to float
  %real7 = getelementptr inbounds %struct.complextype, ptr %c, i32 0, i32 0
  store float %conv6, ptr %real7, align 4
  %3 = load i32, ptr %i, align 4
  %conv8 = sitofp i32 %3 to double
  %mul9 = fmul double %conv8, 4.000000e+00
  %div10 = fdiv double %mul9, 1.024000e+03
  %sub = fsub double 2.000000e+00, %div10
  %conv11 = fptrunc double %sub to float
  %imag12 = getelementptr inbounds %struct.complextype, ptr %c, i32 0, i32 1
  store float %conv11, ptr %imag12, align 4
  store i32 0, ptr %k, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %for.body5
  %real13 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 0
  %4 = load float, ptr %real13, align 4
  %real14 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 0
  %5 = load float, ptr %real14, align 4
  %imag16 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 1
  %6 = load float, ptr %imag16, align 4
  %imag17 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 1
  %7 = load float, ptr %imag17, align 4
  %mul18 = fmul float %6, %7
  %neg = fneg float %mul18
  %8 = call float @llvm.fmuladd.f32(float %4, float %5, float %neg)
  %real19 = getelementptr inbounds %struct.complextype, ptr %c, i32 0, i32 0
  %9 = load float, ptr %real19, align 4
  %add20 = fadd float %8, %9
  store float %add20, ptr %temp, align 4
  %real21 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 0
  %10 = load float, ptr %real21, align 4
  %conv22 = fpext float %10 to double
  %mul23 = fmul double 2.000000e+00, %conv22
  %imag24 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 1
  %11 = load float, ptr %imag24, align 4
  %conv25 = fpext float %11 to double
  %imag27 = getelementptr inbounds %struct.complextype, ptr %c, i32 0, i32 1
  %12 = load float, ptr %imag27, align 4
  %conv28 = fpext float %12 to double
  %13 = call double @llvm.fmuladd.f64(double %mul23, double %conv25, double %conv28)
  %conv29 = fptrunc double %13 to float
  %imag30 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 1
  store float %conv29, ptr %imag30, align 4
  %14 = load float, ptr %temp, align 4
  %real31 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 0
  store float %14, ptr %real31, align 4
  %real32 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 0
  %15 = load float, ptr %real32, align 4
  %real33 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 0
  %16 = load float, ptr %real33, align 4
  %imag35 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 1
  %17 = load float, ptr %imag35, align 4
  %imag36 = getelementptr inbounds %struct.complextype, ptr %z, i32 0, i32 1
  %18 = load float, ptr %imag36, align 4
  %mul37 = fmul float %17, %18
  %19 = call float @llvm.fmuladd.f32(float %15, float %16, float %mul37)
  store float %19, ptr %lensq, align 4
  %20 = load i32, ptr %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %21 = load float, ptr %lensq, align 4
  %conv38 = fpext float %21 to double
  %cmp39 = fcmp olt double %conv38, 4.000000e+00
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %22 = load i32, ptr %k, align 4
  %23 = load i32, ptr %iters, align 4
  %cmp41 = icmp slt i32 %22, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %24 = phi i1 [ false, %do.cond ], [ %cmp41, %land.rhs ]
  br i1 %24, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %land.end
  %25 = load i32, ptr %k, align 4
  %26 = load i32, ptr %iters, align 4
  %cmp43 = icmp sge i32 %25, %26
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %do.end
  %27 = load i32, ptr %i, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [1024 x [1024 x i32]], ptr %res, i64 0, i64 %idxprom
  %28 = load i32, ptr %j, align 4
  %idxprom46 = sext i32 %28 to i64
  %arrayidx47 = getelementptr inbounds [1024 x i32], ptr %arrayidx, i64 0, i64 %idxprom46
  store i32 0, ptr %arrayidx47, align 4
  br label %if.end52

if.else:                                          ; preds = %do.end
  %29 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %29 to i64
  %arrayidx49 = getelementptr inbounds [1024 x [1024 x i32]], ptr %res, i64 0, i64 %idxprom48
  %30 = load i32, ptr %j, align 4
  %idxprom50 = sext i32 %30 to i64
  %arrayidx51 = getelementptr inbounds [1024 x i32], ptr %arrayidx49, i64 0, i64 %idxprom50
  store i32 1, ptr %arrayidx51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then45
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %31 = load i32, ptr %j, align 4
  %inc53 = add nsw i32 %31, 1
  store i32 %inc53, ptr %j, align 4
  br label %for.cond3, !llvm.loop !7

for.end:                                          ; preds = %for.cond3
  br label %for.inc54

for.inc54:                                        ; preds = %for.end
  %32 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %32, 1
  store i32 %inc55, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end56:                                        ; preds = %for.cond
  %arrayidx57 = getelementptr inbounds [1024 x [1024 x i32]], ptr %res, i64 0, i64 0
  %arrayidx58 = getelementptr inbounds [1024 x i32], ptr %arrayidx57, i64 0, i64 0
  %33 = load i32, ptr %arrayidx58, align 4
  %tobool59 = icmp ne i32 %33, 0
  %lnot = xor i1 %tobool59, true
  %lnot.ext = zext i1 %lnot to i32
  %conv60 = sext i32 %lnot.ext to i64
  %tobool61 = icmp ne i64 %conv60, 0
  br i1 %tobool61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end56
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 57, ptr noundef @.str.2) #4
  unreachable

34:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.end56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %34
  ret i32 0
}

declare ptr @getenv(ptr noundef) #1

declare i32 @atoi(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
