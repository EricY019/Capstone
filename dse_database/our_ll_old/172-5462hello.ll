; ModuleID = './code/172-5462hello.c'
source_filename = "./code/172-5462hello.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [15 x i8] c"sqrt(%f) = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @sqrt2(float noundef %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %x0 = alloca float, align 4
  %x1 = alloca float, align 4
  store float %a, ptr %a.addr, align 4
  store float 1.000000e+00, ptr %x0, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load float, ptr %a.addr, align 4
  %1 = load float, ptr %x0, align 4
  %mul = fmul float 2.000000e+00, %1
  %div = fdiv float %0, %mul
  %2 = load float, ptr %x0, align 4
  %div1 = fdiv float %2, 2.000000e+00
  %add = fadd float %div, %div1
  store float %add, ptr %x1, align 4
  %3 = load float, ptr %x0, align 4
  %4 = load float, ptr %x1, align 4
  %sub = fsub float %3, %4
  %conv = fpext float %sub to double
  %5 = call double @llvm.fabs.f64(double %conv)
  %cmp = fcmp olt double %5, 1.000000e-02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %6 = load float, ptr %x1, align 4
  store float %6, ptr %x0, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %7 = load float, ptr %x0, align 4
  ret float %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call double @atof(ptr noundef %2)
  %conv = fptrunc double %call to float
  store float %conv, ptr %a, align 4
  %3 = load float, ptr %a, align 4
  %conv1 = fpext float %3 to double
  %4 = load float, ptr %a, align 4
  %call2 = call float @sqrt2(float noundef %4)
  %conv3 = fpext float %call2 to double
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv1, double noundef %conv3)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare double @atof(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
