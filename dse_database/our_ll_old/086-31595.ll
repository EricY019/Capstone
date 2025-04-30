; ModuleID = './code/086-31595.c'
source_filename = "./code/086-31595.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [19 x i8] c"%d [in %f seconds]\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @solve() #0 {
entry:
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 2520, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  store i32 0, ptr %found, align 4
  store i32 2, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.cond
  %0 = load i32, ptr %j, align 4
  %cmp = icmp sle i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %j, align 4
  %rem = srem i32 %1, %2
  %cmp2 = icmp ne i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %found, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  store i32 1, ptr %found, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond1
  %4 = load i32, ptr %found, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  ret i32 %5

if.end4:                                          ; preds = %for.end
  br label %for.inc5

for.inc5:                                         ; preds = %if.end4
  %6 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %6, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %begin = alloca i64, align 8
  %result = alloca i32, align 4
  %end = alloca i64, align 8
  %time = alloca double, align 8
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %begin, align 8
  %call1 = call i32 @solve()
  store i32 %call1, ptr %result, align 4
  %call2 = call i64 @"\01_clock"()
  store i64 %call2, ptr %end, align 8
  %0 = load i64, ptr %end, align 8
  %1 = load i64, ptr %begin, align 8
  %sub = sub i64 %0, %1
  %conv = uitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, ptr %time, align 8
  %2 = load i32, ptr %result, align 4
  %3 = load double, ptr %time, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, double noundef %3)
  ret i32 0
}

declare i64 @"\01_clock"() #1

declare i32 @printf(ptr noundef, ...) #1

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
