; ModuleID = './code/047-8651problem_two.c'
source_filename = "./code/047-8651problem_two.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"fibonacci(i) is: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The sum of the even fibonacci numbers below 4000000 is: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %sum = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %sum, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %call = call i64 @fibonacci(i64 noundef %0)
  %cmp = icmp slt i64 %call, 4000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %call1 = call i64 @fibonacci(i64 noundef %1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %call1)
  %2 = load i64, ptr %i, align 8
  %call3 = call i64 @fibonacci(i64 noundef %2)
  %rem = srem i64 %call3, 2
  %cmp4 = icmp eq i64 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8
  %call5 = call i64 @fibonacci(i64 noundef %3)
  %4 = load i64, ptr %sum, align 8
  %add = add nsw i64 %4, %call5
  store i64 %add, ptr %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i64, ptr %i, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %6 = load i64, ptr %sum, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %6)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @fibonacci(i64 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8
  %cmp1 = icmp eq i64 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i64 1, ptr %retval, align 8
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load i64, ptr %n.addr, align 8
  %sub = sub nsw i64 %2, 1
  %call = call i64 @fibonacci(i64 noundef %sub)
  %3 = load i64, ptr %n.addr, align 8
  %sub4 = sub nsw i64 %3, 2
  %call5 = call i64 @fibonacci(i64 noundef %sub4)
  %add = add nsw i64 %call, %call5
  store i64 %add, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
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
