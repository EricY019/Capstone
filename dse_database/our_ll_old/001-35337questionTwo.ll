; ModuleID = './code/001-35337questionTwo.c'
source_filename = "./code/001-35337questionTwo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"There's nothing to show!\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"This is over 4 mill.\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"This gives you 4 mill\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Under 4 mill\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Your sum is %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @printFibSum(i32 noundef 32)
  %call = call i32 @"\01_system"(ptr noundef @.str)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printFibSum(i32 noundef %range) #0 {
entry:
  %range.addr = alloca i32, align 4
  %sum = alloca i64, align 8
  %fibNum1 = alloca i32, align 4
  %fibNum2 = alloca i32, align 4
  %sumNum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %range, ptr %range.addr, align 4
  store i64 0, ptr %sum, align 8
  store i32 1, ptr %fibNum1, align 4
  store i32 2, ptr %fibNum2, align 4
  %0 = load i32, ptr %range.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end3

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %range.addr, align 4
  %cmp1 = icmp sge i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %range.addr, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %for.body
  %5 = load i64, ptr %sum, align 8
  %add = add nsw i64 %5, 2
  store i64 %add, ptr %sum, align 8
  br label %if.end13

if.else7:                                         ; preds = %for.body
  %6 = load i32, ptr %fibNum1, align 4
  %7 = load i32, ptr %fibNum2, align 4
  %add8 = add nsw i32 %6, %7
  store i32 %add8, ptr %sumNum, align 4
  %8 = load i32, ptr %sumNum, align 4
  %rem = srem i32 %8, 2
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else7
  %9 = load i32, ptr %sumNum, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, ptr %sum, align 8
  %add11 = add nsw i64 %10, %conv
  store i64 %add11, ptr %sum, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else7
  %11 = load i32, ptr %fibNum2, align 4
  store i32 %11, ptr %fibNum1, align 4
  %12 = load i32, ptr %sumNum, align 4
  store i32 %12, ptr %fibNum2, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %14 = load i64, ptr %sum, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %14)
  ret void
}

declare i32 @"\01_system"(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printFib(i32 noundef %range) #0 {
entry:
  %range.addr = alloca i32, align 4
  %fibNum1 = alloca i32, align 4
  %fibNum2 = alloca i32, align 4
  %sumNum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %range, ptr %range.addr, align 4
  store i32 1, ptr %fibNum1, align 4
  store i32 2, ptr %fibNum2, align 4
  %0 = load i32, ptr %range.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @puts(ptr noundef @.str.1)
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %range.addr, align 4
  %cmp1 = icmp sge i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %range.addr, align 4
  %cmp5 = icmp slt i32 %2, %3
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %cmp6 = icmp eq i32 %4, 1
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %for.body
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 2)
  br label %if.end22

if.else9:                                         ; preds = %for.body
  %5 = load i32, ptr %fibNum1, align 4
  %6 = load i32, ptr %fibNum2, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, ptr %sumNum, align 4
  %7 = load i32, ptr %sumNum, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %7)
  %8 = load i32, ptr %sumNum, align 4
  %cmp11 = icmp sgt i32 %8, 4000000
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else9
  %call13 = call i32 @puts(ptr noundef @.str.3)
  br label %if.end21

if.else14:                                        ; preds = %if.else9
  %9 = load i32, ptr %sumNum, align 4
  %cmp15 = icmp eq i32 %9, 4000000
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else14
  %call17 = call i32 @puts(ptr noundef @.str.4)
  br label %if.end20

if.else18:                                        ; preds = %if.else14
  %call19 = call i32 @puts(ptr noundef @.str.5)
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then12
  %10 = load i32, ptr %fibNum2, align 4
  store i32 %10, ptr %fibNum1, align 4
  %11 = load i32, ptr %sumNum, align 4
  store i32 %11, ptr %fibNum2, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then7
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @puts(ptr noundef) #1

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
