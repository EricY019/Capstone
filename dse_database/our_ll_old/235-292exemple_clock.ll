; ModuleID = './code/235-292exemple_clock.c'
source_filename = "./code/235-292exemple_clock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"Dur\C3\A9e = %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"exemple_setitimer_2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %debut = alloca i64, align 8
  %duree = alloca double, align 8
  store i32 0, ptr %retval, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %debut, align 8
  call void @action_a_mesurer()
  %call1 = call i64 @"\01_clock"()
  %0 = load i64, ptr %debut, align 8
  %sub = sub i64 %call1, %0
  %conv = uitofp i64 %sub to double
  store double %conv, ptr %duree, align 8
  %1 = load double, ptr %duree, align 8
  %div = fdiv double %1, 1.000000e+06
  store double %div, ptr %duree, align 8
  %2 = load ptr, ptr @__stdoutp, align 8
  %3 = load double, ptr %duree, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, double noundef %3) #3
  ret i32 0
}

declare i64 @"\01_clock"() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @action_a_mesurer() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fp1 = alloca ptr, align 8
  %fp2 = alloca ptr, align 8
  %x = alloca double, align 8
  store double 0.000000e+00, ptr %x, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %2, %3
  %conv = sitofp i32 %mul to double
  %4 = load double, ptr %x, align 8
  %add = fadd double %4, %conv
  store double %add, ptr %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %6 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end6:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc24, %for.end6
  %7 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %7, 500
  br i1 %cmp8, label %for.body10, label %for.end26

for.body10:                                       ; preds = %for.cond7
  %call = call ptr @"\01_fopen"(ptr noundef @.str.1, ptr noundef @.str.2)
  store ptr %call, ptr %fp1, align 8
  %cmp11 = icmp ne ptr %call, null
  br i1 %cmp11, label %if.then, label %if.end23

if.then:                                          ; preds = %for.body10
  %call13 = call ptr @"\01_fopen"(ptr noundef @.str.3, ptr noundef @.str.4)
  store ptr %call13, ptr %fp2, align 8
  %cmp14 = icmp ne ptr %call13, null
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %8 = load ptr, ptr %fp1, align 8
  %call17 = call i64 @fread(ptr noundef %j, i64 noundef 4, i64 noundef 1, ptr noundef %8)
  %cmp18 = icmp eq i64 %call17, 1
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %fp2, align 8
  %call20 = call i64 @"\01_fwrite"(ptr noundef %j, i64 noundef 4, i64 noundef 1, ptr noundef %9)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %fp2, align 8
  %call21 = call i32 @fclose(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %11 = load ptr, ptr %fp1, align 8
  %call22 = call i32 @fclose(ptr noundef %11)
  br label %if.end23

if.end23:                                         ; preds = %if.end, %for.body10
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %12 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond7, !llvm.loop !9

for.end26:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
