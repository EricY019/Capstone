; ModuleID = './code/291-12040euler7.c'
source_filename = "./code/291-12040euler7.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [33 x i8] c"[*] Locating the %dst prime...\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[+] Success!\0AThe %dst prime is: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @check_if_prime(i32 noundef %c, i32 noundef %i) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 2, ptr %c.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %c.addr, align 4
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i.addr, align 4
  %3 = load i32, ptr %c.addr, align 4
  %rem = srem i32 %2, %3
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %c.addr, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %c.addr, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, ptr %c.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nth = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 3, ptr %i, align 4
  store i32 10001, ptr %nth, align 4
  %0 = load i32, ptr %nth, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  store i32 2, ptr %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end6, %entry
  %1 = load i32, ptr %count, align 4
  %2 = load i32, ptr %nth, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %count, align 4
  %4 = load i32, ptr %i, align 4
  %call1 = call i32 @check_if_prime(i32 noundef %3, i32 noundef %4)
  store i32 %call1, ptr %c, align 4
  %5 = load i32, ptr %c, align 4
  %6 = load i32, ptr %i, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %count, align 4
  %8 = load i32, ptr %nth, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %9 = load i32, ptr %count, align 4
  %10 = load i32, ptr %i, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i32, ptr %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body
  %12 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
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
