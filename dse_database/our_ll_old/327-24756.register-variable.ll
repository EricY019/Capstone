; ModuleID = './code/327-24756.register-variable.c'
source_filename = "./code/327-24756.register-variable.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [27 x i8] c"withRegister duration: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"withoutRegister duration: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %start = alloca i64, align 8
  %finish = alloca i64, align 8
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %start, align 8
  call void @withRegister()
  %call1 = call i64 @"\01_clock"()
  store i64 %call1, ptr %finish, align 8
  %0 = load i64, ptr %finish, align 8
  %1 = load i64, ptr %start, align 8
  %sub = sub i64 %0, %1
  %conv = uitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %div)
  %call3 = call i64 @"\01_clock"()
  store i64 %call3, ptr %start, align 8
  call void @withoutRegister()
  %call4 = call i64 @"\01_clock"()
  store i64 %call4, ptr %finish, align 8
  %2 = load i64, ptr %finish, align 8
  %3 = load i64, ptr %start, align 8
  %sub5 = sub i64 %2, %3
  %conv6 = uitofp i64 %sub5 to double
  %div7 = fdiv double %conv6, 1.000000e+06
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %div7)
  ret i32 0
}

declare i64 @"\01_clock"() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @withRegister() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sitofp i32 %0 to double
  %cmp = fcmp olt double %conv, 1.000000e+08
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @withoutRegister() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sitofp i32 %0 to double
  %cmp = fcmp olt double %conv, 1.000000e+08
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
