; ModuleID = './code/031-15476rand_decay_average.c'
source_filename = "./code/031-15476rand_decay_average.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"data_rand_average.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N_0 = alloca float, align 4
  %Lambda = alloca float, align 4
  %Dt = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store float 1.000000e+02, ptr %N_0, align 4
  store float 5.000000e-01, ptr %Lambda, align 4
  store float 0x3F50624DE0000000, ptr %Dt, align 4
  call void @srand48(i64 noundef 1)
  %0 = load float, ptr %N_0, align 4
  %1 = load float, ptr %Lambda, align 4
  %2 = load float, ptr %Dt, align 4
  call void @single_decay(float noundef %0, float noundef %1, float noundef %2)
  ret i32 0
}

declare void @srand48(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @single_decay(float noundef %N0, float noundef %lambda, float noundef %dt) #0 {
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
  %array_n = alloca ptr, align 8
  %array_t = alloca ptr, align 8
  %out = alloca ptr, align 8
  %array_n_temp = alloca ptr, align 8
  %array_t_temp = alloca ptr, align 8
  %delta_n = alloca float, align 4
  store float %N0, ptr %N0.addr, align 4
  store float %lambda, ptr %lambda.addr, align 4
  store float %dt, ptr %dt.addr, align 4
  %0 = load float, ptr %lambda.addr, align 4
  %conv = fpext float %0 to double
  %div = fdiv double 5.000000e+00, %conv
  %conv1 = fptrunc double %div to float
  store float %conv1, ptr %t_total, align 4
  %1 = load float, ptr %t_total, align 4
  %conv2 = fptosi float %1 to i32
  %conv3 = sitofp i32 %conv2 to float
  %2 = load float, ptr %dt.addr, align 4
  %div4 = fdiv float %conv3, %2
  %conv5 = fptosi float %div4 to i32
  store i32 %conv5, ptr %n_points, align 4
  store float 5.000000e+00, ptr %M, align 4
  store float 0.000000e+00, ptr %t, align 4
  %3 = load float, ptr %N0.addr, align 4
  store float %3, ptr %n, align 4
  %4 = load i32, ptr %n_points, align 4
  %conv6 = sext i32 %4 to i64
  %mul = mul i64 %conv6, 4
  %call = call ptr @malloc(i64 noundef %mul) #4
  store ptr %call, ptr %array_n, align 8
  %5 = load i32, ptr %n_points, align 4
  %conv7 = sext i32 %5 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call ptr @malloc(i64 noundef %mul8) #4
  store ptr %call9, ptr %array_t, align 8
  %call10 = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call10, ptr %out, align 8
  %6 = load ptr, ptr %out, align 8
  %7 = load float, ptr %t, align 4
  %conv11 = fpext float %7 to double
  %8 = load float, ptr %n, align 4
  %conv12 = fpext float %8 to double
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.2, double noundef %conv11, double noundef %conv12) #5
  %9 = load float, ptr %n, align 4
  %10 = load ptr, ptr %array_n, align 8
  %arrayidx = getelementptr inbounds float, ptr %10, i64 0
  store float %9, ptr %arrayidx, align 4
  %11 = load float, ptr %t, align 4
  %12 = load ptr, ptr %array_t, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %12, i64 0
  store float %11, ptr %arrayidx14, align 4
  %13 = load i32, ptr %n_points, align 4
  %conv15 = sext i32 %13 to i64
  %mul16 = mul i64 %conv15, 4
  %call17 = call ptr @malloc(i64 noundef %mul16) #4
  store ptr %call17, ptr %array_n_temp, align 8
  %14 = load i32, ptr %n_points, align 4
  %conv18 = sext i32 %14 to i64
  %mul19 = mul i64 %conv18, 4
  %call20 = call ptr @malloc(i64 noundef %mul19) #4
  store ptr %call20, ptr %array_t_temp, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %15 = load i32, ptr %j, align 4
  %conv21 = sitofp i32 %15 to float
  %16 = load float, ptr %M, align 4
  %cmp = fcmp olt float %conv21, %16
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %17 = load float, ptr %N0.addr, align 4
  %18 = load ptr, ptr %array_n_temp, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %18, i64 0
  store float %17, ptr %arrayidx23, align 4
  %19 = load ptr, ptr %array_t_temp, align 8
  %arrayidx24 = getelementptr inbounds float, ptr %19, i64 0
  store float 0.000000e+00, ptr %arrayidx24, align 4
  %20 = load float, ptr %N0.addr, align 4
  store float %20, ptr %n, align 4
  store float 0.000000e+00, ptr %t, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc, %for.body
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %n_points, align 4
  %cmp26 = icmp slt i32 %21, %22
  br i1 %cmp26, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond25
  %23 = load float, ptr %dt.addr, align 4
  %24 = load float, ptr %t, align 4
  %add = fadd float %24, %23
  store float %add, ptr %t, align 4
  %25 = load float, ptr %n, align 4
  %26 = load float, ptr %lambda.addr, align 4
  %27 = load float, ptr %dt.addr, align 4
  %call29 = call float @delta_n_step(float noundef %25, float noundef %26, float noundef %27)
  store float %call29, ptr %delta_n, align 4
  %28 = load float, ptr %delta_n, align 4
  %29 = load float, ptr %n, align 4
  %add30 = fadd float %29, %28
  store float %add30, ptr %n, align 4
  %30 = load float, ptr %n, align 4
  %31 = load ptr, ptr %array_n_temp, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds float, ptr %31, i64 %idxprom
  store float %30, ptr %arrayidx31, align 4
  %33 = load float, ptr %t, align 4
  %34 = load ptr, ptr %array_t_temp, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %35 to i64
  %arrayidx33 = getelementptr inbounds float, ptr %34, i64 %idxprom32
  store float %33, ptr %arrayidx33, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body28
  %36 = load i32, ptr %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond25, !llvm.loop !5

for.end:                                          ; preds = %for.cond25
  store i32 1, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc52, %for.end
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %n_points, align 4
  %cmp35 = icmp slt i32 %37, %38
  br i1 %cmp35, label %for.body37, label %for.end54

for.body37:                                       ; preds = %for.cond34
  %39 = load ptr, ptr %array_n, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %40 to i64
  %arrayidx39 = getelementptr inbounds float, ptr %39, i64 %idxprom38
  %41 = load float, ptr %arrayidx39, align 4
  %42 = load ptr, ptr %array_n_temp, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds float, ptr %42, i64 %idxprom40
  %44 = load float, ptr %arrayidx41, align 4
  %add42 = fadd float %41, %44
  %45 = load ptr, ptr %array_n, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds float, ptr %45, i64 %idxprom43
  store float %add42, ptr %arrayidx44, align 4
  %47 = load ptr, ptr %array_t, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %48 to i64
  %arrayidx46 = getelementptr inbounds float, ptr %47, i64 %idxprom45
  %49 = load float, ptr %arrayidx46, align 4
  %50 = load ptr, ptr %array_t_temp, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %51 to i64
  %arrayidx48 = getelementptr inbounds float, ptr %50, i64 %idxprom47
  %52 = load float, ptr %arrayidx48, align 4
  %add49 = fadd float %49, %52
  %53 = load ptr, ptr %array_t, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %54 to i64
  %arrayidx51 = getelementptr inbounds float, ptr %53, i64 %idxprom50
  store float %add49, ptr %arrayidx51, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %for.body37
  %55 = load i32, ptr %i, align 4
  %inc53 = add nsw i32 %55, 1
  store i32 %inc53, ptr %i, align 4
  br label %for.cond34, !llvm.loop !7

for.end54:                                        ; preds = %for.cond34
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %56 = load i32, ptr %j, align 4
  %inc56 = add nsw i32 %56, 1
  store i32 %inc56, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end57:                                        ; preds = %for.cond
  store i32 1, ptr %k, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc79, %for.end57
  %57 = load i32, ptr %k, align 4
  %58 = load i32, ptr %n_points, align 4
  %cmp59 = icmp slt i32 %57, %58
  br i1 %cmp59, label %for.body61, label %for.end81

for.body61:                                       ; preds = %for.cond58
  %59 = load ptr, ptr %array_n, align 8
  %60 = load i32, ptr %k, align 4
  %idxprom62 = sext i32 %60 to i64
  %arrayidx63 = getelementptr inbounds float, ptr %59, i64 %idxprom62
  %61 = load float, ptr %arrayidx63, align 4
  %62 = load float, ptr %M, align 4
  %div64 = fdiv float %61, %62
  %63 = load ptr, ptr %array_n, align 8
  %64 = load i32, ptr %k, align 4
  %idxprom65 = sext i32 %64 to i64
  %arrayidx66 = getelementptr inbounds float, ptr %63, i64 %idxprom65
  store float %div64, ptr %arrayidx66, align 4
  %65 = load ptr, ptr %array_t, align 8
  %66 = load i32, ptr %k, align 4
  %idxprom67 = sext i32 %66 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %65, i64 %idxprom67
  %67 = load float, ptr %arrayidx68, align 4
  %68 = load float, ptr %M, align 4
  %div69 = fdiv float %67, %68
  %69 = load ptr, ptr %array_t, align 8
  %70 = load i32, ptr %k, align 4
  %idxprom70 = sext i32 %70 to i64
  %arrayidx71 = getelementptr inbounds float, ptr %69, i64 %idxprom70
  store float %div69, ptr %arrayidx71, align 4
  %71 = load ptr, ptr %out, align 8
  %72 = load ptr, ptr %array_t, align 8
  %73 = load i32, ptr %k, align 4
  %idxprom72 = sext i32 %73 to i64
  %arrayidx73 = getelementptr inbounds float, ptr %72, i64 %idxprom72
  %74 = load float, ptr %arrayidx73, align 4
  %conv74 = fpext float %74 to double
  %75 = load ptr, ptr %array_n, align 8
  %76 = load i32, ptr %k, align 4
  %idxprom75 = sext i32 %76 to i64
  %arrayidx76 = getelementptr inbounds float, ptr %75, i64 %idxprom75
  %77 = load float, ptr %arrayidx76, align 4
  %conv77 = fpext float %77 to double
  %call78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.2, double noundef %conv74, double noundef %conv77) #5
  br label %for.inc79

for.inc79:                                        ; preds = %for.body61
  %78 = load i32, ptr %k, align 4
  %inc80 = add nsw i32 %78, 1
  store i32 %inc80, ptr %k, align 4
  br label %for.cond58, !llvm.loop !9

for.end81:                                        ; preds = %for.cond58
  %79 = load ptr, ptr %out, align 8
  %call82 = call i32 @fclose(ptr noundef %79)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @delta_n_step(float noundef %n, float noundef %lambda, float noundef %dt) #0 {
entry:
  %retval = alloca float, align 4
  %n.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %dt.addr = alloca float, align 4
  %rand_num = alloca float, align 4
  store float %n, ptr %n.addr, align 4
  store float %lambda, ptr %lambda.addr, align 4
  store float %dt, ptr %dt.addr, align 4
  %call = call double @drand48()
  %conv = fptrunc double %call to float
  store float %conv, ptr %rand_num, align 4
  %0 = load float, ptr %rand_num, align 4
  %1 = load float, ptr %lambda.addr, align 4
  %2 = load float, ptr %n.addr, align 4
  %mul = fmul float %1, %2
  %3 = load float, ptr %dt.addr, align 4
  %mul1 = fmul float %mul, %3
  %cmp = fcmp olt float %0, %mul1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float -1.000000e+00, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store float 0.000000e+00, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load float, ptr %retval, align 4
  ret float %4
}

declare double @drand48() #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !6}
