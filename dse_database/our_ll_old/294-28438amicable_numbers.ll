; ModuleID = './code/294-28438amicable_numbers.c'
source_filename = "./code/294-28438amicable_numbers.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [37 x i8] c"Amicable Numbers below 10000 are:- \0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 1, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, ptr %m, align 4
  %cmp = icmp sle i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %m, align 4
  store i32 %1, ptr %x, align 4
  store i32 0, ptr %sum1, align 4
  store i32 0, ptr %sum2, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %x, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %x, align 4
  %5 = load i32, ptr %i, align 4
  %rem = srem i32 %4, %5
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %sum1, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, ptr %sum1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %9 = load i32, ptr %sum1, align 4
  store i32 %9, ptr %y, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.end
  %10 = load i32, ptr %j, align 4
  %11 = load i32, ptr %y, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %12 = load i32, ptr %y, align 4
  %13 = load i32, ptr %j, align 4
  %rem8 = srem i32 %12, %13
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body7
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %sum2, align 4
  %add11 = add nsw i32 %15, %14
  store i32 %add11, ptr %sum2, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body7
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %16 = load i32, ptr %j, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, ptr %j, align 4
  br label %for.cond5, !llvm.loop !7

for.end15:                                        ; preds = %for.cond5
  %17 = load i32, ptr %sum2, align 4
  %18 = load i32, ptr %x, align 4
  %cmp16 = icmp eq i32 %17, %18
  br i1 %cmp16, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.end15
  %19 = load i32, ptr %x, align 4
  %20 = load i32, ptr %y, align 4
  %cmp17 = icmp ne i32 %19, %20
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %21 = load i32, ptr %x, align 4
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true, %for.end15
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %22 = load i32, ptr %m, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, ptr %m, align 4
  br label %for.cond, !llvm.loop !8

for.end23:                                        ; preds = %for.cond
  ret i32 0
}

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
