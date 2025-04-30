; ModuleID = './code/185-30297progbar.c'
source_filename = "./code/185-30297progbar.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"] %g%%\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0D%s\00", align 1
@__stdoutp = external global ptr, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %pc = alloca double, align 8
  %items = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %str = alloca ptr, align 8
  %tmp = alloca [100 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %a, align 4
  store double 0.000000e+00, ptr %pc, align 8
  store i32 100, ptr %items, align 4
  store i32 0, ptr %j, align 4
  %call = call ptr @malloc(i64 noundef 256) #5
  store ptr %call, ptr %str, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @atoi(ptr noundef %2)
  store i32 %call1, ptr %items, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %str, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %items, align 4
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %str, align 8
  %7 = load ptr, ptr %str, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memset_chk(ptr noundef %6, i32 noundef 0, i64 noundef 256, i64 noundef %8) #6
  %9 = load ptr, ptr %str, align 8
  %10 = load ptr, ptr %str, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call7 = call ptr @__strcpy_chk(ptr noundef %9, ptr noundef @.str, i64 noundef %11) #6
  %12 = load i32, ptr %i, align 4
  %conv = sitofp i32 %12 to double
  %13 = load i32, ptr %items, align 4
  %conv8 = sitofp i32 %13 to double
  %div = fdiv double %conv, %conv8
  %mul = fmul double %div, 1.000000e+02
  store double %mul, ptr %pc, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %14 = load double, ptr %pc, align 8
  %dec = fadd double %14, -1.000000e+00
  store double %dec, ptr %pc, align 8
  %conv9 = fptosi double %14 to i32
  %tobool = icmp ne i32 %conv9, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %str, align 8
  %16 = load ptr, ptr %str, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %16, i1 false, i1 true, i1 false)
  %call10 = call ptr @__strcat_chk(ptr noundef %15, ptr noundef @.str.1, i64 noundef %17) #6
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %str, align 8
  %19 = load ptr, ptr %str, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call11 = call ptr @__strcat_chk(ptr noundef %18, ptr noundef @.str.2, i64 noundef %20) #6
  %21 = load i32, ptr %i, align 4
  %conv12 = sitofp i32 %21 to double
  %22 = load i32, ptr %items, align 4
  %conv13 = sitofp i32 %22 to double
  %div14 = fdiv double %conv12, %conv13
  %neg = fneg double %div14
  %23 = call double @llvm.fmuladd.f64(double %neg, double 1.000000e+02, double 1.000000e+02)
  store double %23, ptr %pc, align 8
  br label %while.cond16

while.cond16:                                     ; preds = %while.body20, %while.end
  %24 = load double, ptr %pc, align 8
  %dec17 = fadd double %24, -1.000000e+00
  store double %dec17, ptr %pc, align 8
  %conv18 = fptosi double %24 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %while.body20, label %while.end22

while.body20:                                     ; preds = %while.cond16
  %25 = load ptr, ptr %str, align 8
  %26 = load ptr, ptr %str, align 8
  %27 = call i64 @llvm.objectsize.i64.p0(ptr %26, i1 false, i1 true, i1 false)
  %call21 = call ptr @__strcat_chk(ptr noundef %25, ptr noundef @.str.3, i64 noundef %27) #6
  br label %while.cond16, !llvm.loop !7

while.end22:                                      ; preds = %while.cond16
  %arraydecay = getelementptr inbounds [100 x i8], ptr %tmp, i64 0, i64 0
  %28 = load i32, ptr %i, align 4
  %conv23 = sitofp i32 %28 to double
  %29 = load i32, ptr %items, align 4
  %conv24 = sitofp i32 %29 to double
  %div25 = fdiv double %conv23, %conv24
  %mul26 = fmul double %div25, 1.000000e+02
  %call27 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 100, ptr noundef @.str.4, double noundef %mul26)
  %30 = load ptr, ptr %str, align 8
  %arraydecay28 = getelementptr inbounds [100 x i8], ptr %tmp, i64 0, i64 0
  %31 = load ptr, ptr %str, align 8
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %31, i1 false, i1 true, i1 false)
  %call29 = call ptr @__strcat_chk(ptr noundef %30, ptr noundef %arraydecay28, i64 noundef %32) #6
  %33 = load ptr, ptr %str, align 8
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %33)
  %34 = load ptr, ptr @__stdoutp, align 8
  %call31 = call i32 @fflush(ptr noundef %34)
  br label %for.inc

for.inc:                                          ; preds = %while.end22
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %36 = load ptr, ptr %str, align 8
  call void @free(ptr noundef %36)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @atoi(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
