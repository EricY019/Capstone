; ModuleID = './code/073-23014nsieve-bits.c'
source_filename = "./code/073-23014nsieve-bits.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %sz = alloca i32, align 4
  %primes = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 40960000, ptr %sz, align 4
  %0 = load i32, ptr %sz, align 4
  %div = udiv i32 %0, 8
  %conv = zext i32 %div to i64
  %add = add i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %add) #5
  store ptr %call, ptr %primes, align 8
  %1 = load ptr, ptr %primes, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %if.end
  %2 = load i32, ptr %m, align 4
  %cmp = icmp ule i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %count, align 4
  %3 = load i32, ptr %sz, align 4
  %4 = load i32, ptr %m, align 4
  %shr = lshr i32 %3, %4
  store i32 %shr, ptr %n, align 4
  %5 = load ptr, ptr %primes, align 8
  %6 = load i32, ptr %n, align 4
  %div2 = udiv i32 %6, 8
  %conv3 = zext i32 %div2 to i64
  %add4 = add i64 %conv3, 4
  %7 = load ptr, ptr %primes, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call5 = call ptr @__memset_chk(ptr noundef %5, i32 noundef 255, i64 noundef %add4, i64 noundef %8) #6
  store i32 2, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc40, %for.body
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %n, align 4
  %cmp7 = icmp ule i32 %9, %10
  br i1 %cmp7, label %for.body9, label %for.end42

for.body9:                                        ; preds = %for.cond6
  %11 = load ptr, ptr %primes, align 8
  %12 = load i32, ptr %i, align 4
  %conv10 = zext i32 %12 to i64
  %div11 = udiv i64 %conv10, 32
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %div11
  %13 = load i32, ptr %arrayidx, align 4
  %14 = load i32, ptr %i, align 4
  %conv12 = zext i32 %14 to i64
  %rem = urem i64 %conv12, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %13, %shl
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then14, label %if.end39

if.then14:                                        ; preds = %for.body9
  %15 = load i32, ptr %count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %count, align 4
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %i, align 4
  %add15 = add i32 %16, %17
  store i32 %add15, ptr %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.then14
  %18 = load i32, ptr %j, align 4
  %19 = load i32, ptr %n, align 4
  %cmp17 = icmp ule i32 %18, %19
  br i1 %cmp17, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond16
  %20 = load ptr, ptr %primes, align 8
  %21 = load i32, ptr %j, align 4
  %conv20 = zext i32 %21 to i64
  %div21 = udiv i64 %conv20, 32
  %arrayidx22 = getelementptr inbounds i32, ptr %20, i64 %div21
  %22 = load i32, ptr %arrayidx22, align 4
  %23 = load i32, ptr %j, align 4
  %conv23 = zext i32 %23 to i64
  %rem24 = urem i64 %conv23, 32
  %sh_prom25 = trunc i64 %rem24 to i32
  %shl26 = shl i32 1, %sh_prom25
  %and27 = and i32 %22, %shl26
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %for.body19
  %24 = load i32, ptr %j, align 4
  %conv30 = zext i32 %24 to i64
  %rem31 = urem i64 %conv30, 32
  %sh_prom32 = trunc i64 %rem31 to i32
  %shl33 = shl i32 1, %sh_prom32
  %25 = load ptr, ptr %primes, align 8
  %26 = load i32, ptr %j, align 4
  %conv34 = zext i32 %26 to i64
  %div35 = udiv i64 %conv34, 32
  %arrayidx36 = getelementptr inbounds i32, ptr %25, i64 %div35
  %27 = load i32, ptr %arrayidx36, align 4
  %xor = xor i32 %27, %shl33
  store i32 %xor, ptr %arrayidx36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %for.body19
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %j, align 4
  %add38 = add i32 %29, %28
  store i32 %add38, ptr %j, align 4
  br label %for.cond16, !llvm.loop !5

for.end:                                          ; preds = %for.cond16
  br label %if.end39

if.end39:                                         ; preds = %for.end, %for.body9
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %30 = load i32, ptr %i, align 4
  %inc41 = add i32 %30, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond6, !llvm.loop !7

for.end42:                                        ; preds = %for.cond6
  %31 = load i32, ptr %n, align 4
  %32 = load i32, ptr %count, align 4
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %31, i32 noundef %32)
  br label %for.inc44

for.inc44:                                        ; preds = %for.end42
  %33 = load i32, ptr %m, align 4
  %inc45 = add i32 %33, 1
  store i32 %inc45, ptr %m, align 4
  br label %for.cond, !llvm.loop !8

for.end46:                                        ; preds = %for.cond
  %34 = load ptr, ptr %primes, align 8
  call void @free(ptr noundef %34)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end46, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

declare void @free(ptr noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
