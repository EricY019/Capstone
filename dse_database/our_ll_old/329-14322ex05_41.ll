; ModuleID = './code/329-14322ex05_41.c'
source_filename = "./code/329-14322ex05_41.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@DEBUG = global i32 1, align 4
@start = global i32 1, align 4
@.str = private unnamed_addr constant [13 x i8] c"%2d! = %1d\0A\0A\00", align 1
@factorial.calls = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"=== First call to function ===\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Call #%d: Number = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Call #%d: Recursive call parameter = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 1, ptr @start, align 4
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %conv = sext i32 %2 to i64
  %call = call i64 @factorial(i64 noundef %conv)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1, i64 noundef %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @factorial(i64 noundef %number) #0 {
entry:
  %retval = alloca i64, align 8
  %number.addr = alloca i64, align 8
  %rcParam = alloca i32, align 4
  store i64 %number, ptr %number.addr, align 8
  %0 = load i32, ptr @start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr @factorial.calls, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr @start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr @factorial.calls, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @factorial.calls, align 4
  %2 = load i32, ptr @DEBUG, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr @factorial.calls, align 4
  %4 = load i64, ptr %number.addr, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %3, i64 noundef %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load i64, ptr %number.addr, align 8
  %cmp = icmp sle i64 %5, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  store i64 1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end4
  %6 = load i64, ptr %number.addr, align 8
  %7 = load i64, ptr %number.addr, align 8
  %sub = sub nsw i64 %7, 1
  %call6 = call i64 @factorial(i64 noundef %sub)
  %mul = mul nsw i64 %6, %call6
  %conv = trunc i64 %mul to i32
  store i32 %conv, ptr %rcParam, align 4
  %8 = load i32, ptr @DEBUG, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else
  %9 = load i32, ptr @factorial.calls, align 4
  %10 = load i32, ptr %rcParam, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %9, i32 noundef %10)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else
  %11 = load i32, ptr %rcParam, align 4
  %conv11 = sext i32 %11 to i64
  store i64 %conv11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then5
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
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
