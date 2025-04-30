; ModuleID = './code/189-6703prob0012.c'
source_filename = "./code/189-6703prob0012.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [17 x i8] c"\0ALargest is %llu\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %flag = alloca i64, align 8
  %n = alloca i64, align 8
  %div = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %flag, align 8
  store i64 0, ptr %n, align 8
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %flag, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i64 1, ptr %n, align 8
  br label %if.end3

if.else:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %n, align 8
  %add = add i64 %3, %2
  store i64 %add, ptr %n, align 8
  %4 = load i64, ptr %n, align 8
  %call = call i64 @divisors(i64 noundef %4)
  store i64 %call, ptr %div, align 8
  %5 = load i64, ptr %div, align 8
  %cmp1 = icmp ugt i64 %5, 500
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i64 1, ptr %flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end3
  %6 = load i64, ptr %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %n, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %7)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @divisors(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %primes = alloca [10000 x i32], align 4
  %i = alloca i64, align 8
  %div = alloca i16, align 2
  store i64 %n, ptr %n.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 10000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %n.addr, align 8
  %cmp1 = icmp ule i64 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [10000 x i32], ptr %primes, i64 0, i64 %4
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %land.end
  store i16 1, ptr %div, align 2
  store i64 2, ptr %i, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc15, %for.end
  %6 = load i64, ptr %i, align 8
  %cmp3 = icmp ult i64 %6, 10000
  br i1 %cmp3, label %land.rhs4, label %land.end6

land.rhs4:                                        ; preds = %for.cond2
  %7 = load i64, ptr %i, align 8
  %8 = load i64, ptr %n.addr, align 8
  %cmp5 = icmp ule i64 %7, %8
  br label %land.end6

land.end6:                                        ; preds = %land.rhs4, %for.cond2
  %9 = phi i1 [ false, %for.cond2 ], [ %cmp5, %land.rhs4 ]
  br i1 %9, label %for.body7, label %for.end17

for.body7:                                        ; preds = %land.end6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body7
  %10 = load i64, ptr %n.addr, align 8
  %11 = load i64, ptr %i, align 8
  %rem = urem i64 %10, %11
  %tobool = icmp ne i64 %rem, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i64, ptr %i, align 8
  %13 = load i64, ptr %n.addr, align 8
  %div8 = udiv i64 %13, %12
  store i64 %div8, ptr %n.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds [10000 x i32], ptr %primes, i64 0, i64 %14
  %15 = load i32, ptr %arrayidx9, align 4
  %inc10 = add i32 %15, 1
  store i32 %inc10, ptr %arrayidx9, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %16 = load i64, ptr %i, align 8
  %arrayidx11 = getelementptr inbounds [10000 x i32], ptr %primes, i64 0, i64 %16
  %17 = load i32, ptr %arrayidx11, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %18 = load i64, ptr %i, align 8
  %arrayidx13 = getelementptr inbounds [10000 x i32], ptr %primes, i64 0, i64 %18
  %19 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %19, 1
  %20 = load i16, ptr %div, align 2
  %conv = zext i16 %20 to i32
  %mul = mul i32 %conv, %add
  %conv14 = trunc i32 %mul to i16
  store i16 %conv14, ptr %div, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %21 = load i64, ptr %i, align 8
  %inc16 = add i64 %21, 1
  store i64 %inc16, ptr %i, align 8
  br label %for.cond2, !llvm.loop !9

for.end17:                                        ; preds = %land.end6
  %22 = load i16, ptr %div, align 2
  %conv18 = zext i16 %22 to i64
  ret i64 %conv18
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
!9 = distinct !{!9, !6}
