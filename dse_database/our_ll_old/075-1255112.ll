; ModuleID = './code/075-1255112.c'
source_filename = "./code/075-1255112.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %seive = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i64, align 8
  %factors = alloca i64, align 8
  %x = alloca i64, align 8
  %prev = alloca i32, align 4
  %count = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @calloc(i64 noundef 80000000, i64 noundef 4) #3
  store ptr %call, ptr %seive, align 8
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 80000000
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %seive, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  store i32 %4, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %5 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %5, 80000000
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %seive, align 8
  %8 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %7, i64 %idxprom5
  store i32 %6, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %j, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, ptr %j, align 4
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc7

for.inc7:                                         ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  store i64 1, ptr %sum, align 8
  store i64 1, ptr %factors, align 8
  store i32 2, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc31, %for.end8
  %12 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %12, 80000000
  br i1 %cmp10, label %for.body11, label %for.end33

for.body11:                                       ; preds = %for.cond9
  %13 = load i32, ptr %i, align 4
  %conv = sext i32 %13 to i64
  %14 = load i64, ptr %sum, align 8
  %add12 = add nsw i64 %14, %conv
  store i64 %add12, ptr %sum, align 8
  %15 = load i64, ptr %sum, align 8
  store i64 %15, ptr %x, align 8
  %16 = load ptr, ptr %seive, align 8
  %17 = load i64, ptr %x, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %16, i64 %17
  %18 = load i32, ptr %arrayidx13, align 4
  store i32 %18, ptr %prev, align 4
  store i32 1, ptr %count, align 4
  store i32 1, ptr %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %for.body11
  %19 = load i64, ptr %x, align 8
  %cmp14 = icmp ne i64 %19, 1
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %seive, align 8
  %21 = load i64, ptr %x, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %20, i64 %21
  %22 = load i32, ptr %arrayidx16, align 4
  %conv17 = sext i32 %22 to i64
  %23 = load i64, ptr %x, align 8
  %div = sdiv i64 %23, %conv17
  store i64 %div, ptr %x, align 8
  %24 = load ptr, ptr %seive, align 8
  %25 = load i64, ptr %x, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %24, i64 %25
  %26 = load i32, ptr %arrayidx18, align 4
  %27 = load i32, ptr %prev, align 4
  %cmp19 = icmp eq i32 %26, %27
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.body
  %28 = load i32, ptr %count, align 4
  %inc22 = add nsw i32 %28, 1
  store i32 %inc22, ptr %count, align 4
  br label %if.end24

if.else:                                          ; preds = %while.body
  %29 = load i32, ptr %count, align 4
  %add23 = add nsw i32 %29, 1
  %30 = load i32, ptr %val, align 4
  %mul = mul nsw i32 %30, %add23
  store i32 %mul, ptr %val, align 4
  store i32 1, ptr %count, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %31 = load ptr, ptr %seive, align 8
  %32 = load i64, ptr %x, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %31, i64 %32
  %33 = load i32, ptr %arrayidx25, align 4
  store i32 %33, ptr %prev, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %34 = load i32, ptr %val, align 4
  %cmp26 = icmp sgt i32 %34, 500
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %while.end
  %35 = load i64, ptr %sum, align 8
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %35)
  br label %for.end33

if.end30:                                         ; preds = %while.end
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %36 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %36, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond9, !llvm.loop !9

for.end33:                                        ; preds = %if.then28, %for.cond9
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) }

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
