; ModuleID = './code/085-126672015.02.10.lucky-numbers.c'
source_filename = "./code/085-126672015.02.10.lucky-numbers.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [19 x i8] c"Lucky numbers: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @num_repeats(i32 noundef %test, i32 noundef %num) #0 {
entry:
  %test.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %test, ptr %test.addr, align 4
  store i32 %num, ptr %num.addr, align 4
  %0 = load i32, ptr %num.addr, align 4
  store i32 %0, ptr %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %result, align 4
  %2 = load i32, ptr %test.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %result, align 4
  %mul = mul i32 %3, 10
  %4 = load i32, ptr %num.addr, align 4
  %add = add i32 %mul, %4
  store i32 %add, ptr %result, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %test.addr, align 4
  %6 = load i32, ptr %result, align 4
  %cmp1 = icmp eq i32 %5, %6
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @numlen(i32 noundef %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 1, ptr %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %num.addr, align 4
  %div = udiv i32 %0, 10
  store i32 %div, ptr %num.addr, align 4
  %tobool = icmp ne i32 %div, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %result, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %result, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %2 = load i32, ptr %result, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @lucky_nums(i32 noundef %limit) #0 {
entry:
  %limit.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %limit, ptr %limit.addr, align 4
  store i32 0, ptr %result, align 4
  store i32 0, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %limit.addr, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %len, align 4
  %cmp1 = icmp eq i32 3, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, ptr %len, align 4
  %cmp2 = icmp eq i32 7, %3
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %i, align 4
  %call = call i32 @num_repeats(i32 noundef %4, i32 noundef 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false3
  %5 = load i32, ptr %i, align 4
  %call5 = call i32 @num_repeats(i32 noundef %5, i32 noundef 7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false3, %lor.lhs.false, %for.body
  %6 = load i32, ptr %result, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %inc7 = add i32 %7, 1
  store i32 %inc7, ptr %i, align 4
  %8 = load i32, ptr %i, align 4
  %call8 = call i32 @numlen(i32 noundef %8)
  store i32 %call8, ptr %len, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %result, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @lucky_nums(i32 noundef 1000000)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
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
