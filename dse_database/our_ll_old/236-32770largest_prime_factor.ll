; ModuleID = './code/236-32770largest_prime_factor.c'
source_filename = "./code/236-32770largest_prime_factor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { ptr, i32 }

@N = global i64 600851475143, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @next_prime(ptr noundef %primes, i32 noundef %n) #0 {
entry:
  %primes.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %found = alloca i8, align 1
  %aux = alloca ptr, align 8
  store ptr %primes, ptr %primes.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i8 0, ptr %found, align 1
  %0 = load ptr, ptr %primes.addr, align 8
  store ptr %0, ptr %aux, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %1 = load i8, ptr %found, align 1
  %tobool = icmp ne i8 %1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %n.addr, align 4
  %3 = load ptr, ptr %aux, align 8
  %val = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %val, align 8
  %rem = srem i32 %2, %4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %n.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %n.addr, align 4
  %6 = load ptr, ptr %primes.addr, align 8
  store ptr %6, ptr %aux, align 8
  br label %if.end10

if.else:                                          ; preds = %while.body
  %7 = load ptr, ptr %aux, align 8
  %next = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next, align 8
  %cmp1 = icmp eq ptr %8, null
  br i1 %cmp1, label %if.then2, label %if.else8

if.then2:                                         ; preds = %if.else
  store i8 1, ptr %found, align 1
  %call = call ptr @malloc(i64 noundef 16) #3
  %9 = load ptr, ptr %aux, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 0
  store ptr %call, ptr %next3, align 8
  %10 = load i32, ptr %n.addr, align 4
  %11 = load ptr, ptr %aux, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %next4, align 8
  %val5 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  store i32 %10, ptr %val5, align 8
  %13 = load ptr, ptr %aux, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %next6, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 0
  store ptr null, ptr %next7, align 8
  br label %if.end

if.else8:                                         ; preds = %if.else
  %15 = load ptr, ptr %aux, align 8
  %next9 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %next9, align 8
  store ptr %16, ptr %aux, align 8
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then2
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %primes = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %primes, align 8
  %0 = load ptr, ptr %primes, align 8
  %val = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1
  store i32 2, ptr %val, align 8
  %1 = load ptr, ptr %primes, align 8
  %next = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store ptr null, ptr %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, ptr @N, align 8
  %cmp = icmp sgt i64 %2, 1
  br i1 %cmp, label %while.body, label %while.end12

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body5, %while.body
  %3 = load i64, ptr @N, align 8
  %4 = load ptr, ptr %primes, align 8
  %val2 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %val2, align 8
  %conv = sext i32 %5 to i64
  %rem = srem i64 %3, %conv
  %cmp3 = icmp eq i64 %rem, 0
  br i1 %cmp3, label %while.body5, label %while.end

while.body5:                                      ; preds = %while.cond1
  %6 = load ptr, ptr %primes, align 8
  %val6 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %val6, align 8
  %conv7 = sext i32 %7 to i64
  %8 = load i64, ptr @N, align 8
  %div = sdiv i64 %8, %conv7
  store i64 %div, ptr @N, align 8
  br label %while.cond1, !llvm.loop !7

while.end:                                        ; preds = %while.cond1
  %9 = load i64, ptr @N, align 8
  %cmp8 = icmp sgt i64 %9, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load ptr, ptr %primes, align 8
  %11 = load ptr, ptr %primes, align 8
  %val10 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %val10, align 8
  call void @next_prime(ptr noundef %10, i32 noundef %12)
  %13 = load ptr, ptr %primes, align 8
  %next11 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %next11, align 8
  store ptr %14, ptr %primes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond, !llvm.loop !8

while.end12:                                      ; preds = %while.cond
  %15 = load ptr, ptr %primes, align 8
  %val13 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %val13, align 8
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %16)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
