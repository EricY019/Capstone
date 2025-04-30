; ModuleID = './code/033-15392fizzbuz.c'
source_filename = "./code/033-15392fizzbuz.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"FizzBuzz\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Fizz\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Buzz\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %fizz = alloca i32, align 4
  %buzz = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %rem = srem i32 %1, 3
  %tobool = icmp ne i32 %rem, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %fizz, align 4
  %2 = load i32, ptr %i, align 4
  %rem1 = srem i32 %2, 5
  %tobool2 = icmp ne i32 %rem1, 0
  %lnot3 = xor i1 %tobool2, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  store i32 %lnot.ext4, ptr %buzz, align 4
  %3 = load i32, ptr %fizz, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, ptr %buzz, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @puts(ptr noundef @.str)
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %for.body
  %5 = load i32, ptr %fizz, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  %call9 = call i32 @puts(ptr noundef @.str.1)
  br label %if.end16

if.else10:                                        ; preds = %if.else
  %6 = load i32, ptr %buzz, align 4
  %tobool11 = icmp ne i32 %6, 0
  br i1 %tobool11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  %call13 = call i32 @puts(ptr noundef @.str.2)
  br label %if.end

if.else14:                                        ; preds = %if.else10
  %7 = load i32, ptr %i, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
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
