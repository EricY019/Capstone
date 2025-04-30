; ModuleID = './code/116-9633prime-sieve.c'
source_filename = "./code/116-9633prime-sieve.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@bool_str = global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_prime_numbers() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100489
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @bool_str, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 49
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 100490) #3
  store ptr %call, ptr @bool_str, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100489
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load ptr, ptr @bool_str, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  store i8 49, ptr %arrayidx, align 1
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr @bool_str, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 48, ptr %arrayidx1, align 1
  %5 = load ptr, ptr @bool_str, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 0
  store i8 48, ptr %arrayidx2, align 1
  %6 = load ptr, ptr @bool_str, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 100489
  store i8 0, ptr %arrayidx3, align 1
  store i32 2, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc21, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp5 = icmp sle i32 %7, 317
  br i1 %cmp5, label %for.body6, label %for.end23

for.body6:                                        ; preds = %for.cond4
  %8 = load ptr, ptr @bool_str, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %idxprom7
  %10 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv, 49
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  store i32 1, ptr %j, align 4
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %11, %12
  store i32 %mul, ptr %k, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc18, %if.then
  %13 = load i32, ptr %k, align 4
  %cmp12 = icmp slt i32 %13, 100489
  br i1 %cmp12, label %for.body14, label %for.end20

for.body14:                                       ; preds = %for.cond11
  %14 = load ptr, ptr @bool_str, align 8
  %15 = load i32, ptr %k, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %14, i64 %idxprom15
  store i8 48, ptr %arrayidx16, align 1
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %j, align 4
  %add = add nsw i32 %17, %18
  %mul17 = mul nsw i32 %16, %add
  store i32 %mul17, ptr %k, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body14
  %19 = load i32, ptr %j, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, ptr %j, align 4
  br label %for.cond11, !llvm.loop !8

for.end20:                                        ; preds = %for.cond11
  br label %if.end

if.end:                                           ; preds = %for.end20, %for.body6
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %20 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond4, !llvm.loop !9

for.end23:                                        ; preds = %for.cond4
  call void @print_prime_numbers()
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
!9 = distinct !{!9, !6}
