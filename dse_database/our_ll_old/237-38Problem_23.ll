; ModuleID = './code/237-38Problem_23.c'
source_filename = "./code/237-38Problem_23.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@tabela = global ptr null, align 8
@pregledano = global ptr null, align 8
@.str = private unnamed_addr constant [94 x i8] c"Sum of all the positive integers which cannot be written as the sum of two abundant numbers:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isAbundant(i32 noundef %stevilo) #0 {
entry:
  %stevilo.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vsota = alloca i32, align 4
  store i32 %stevilo, ptr %stevilo.addr, align 4
  store i32 0, ptr %vsota, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %stevilo.addr, align 4
  %div = sdiv i32 %1, 2
  %add = add nsw i32 %div, 1
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %stevilo.addr, align 4
  %3 = load i32, ptr %i, align 4
  %rem = srem i32 %2, %3
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %vsota, align 4
  %add2 = add nsw i32 %5, %4
  store i32 %add2, ptr %vsota, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %vsota, align 4
  %8 = load i32, ptr %stevilo.addr, align 4
  %cmp3 = icmp sgt i32 %7, %8
  %9 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %indeks = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %vsota = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %indeks, align 4
  %call = call ptr @malloc(i64 noundef 27860) #3
  store ptr %call, ptr @tabela, align 8
  store i32 28123, ptr %limit, align 4
  %call1 = call ptr @malloc(i64 noundef 112492) #3
  store ptr %call1, ptr @pregledano, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 28123
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call2 = call i32 @isAbundant(i32 noundef %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr @tabela, align 8
  %4 = load i32, ptr %indeks, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %indeks, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %5, 1
  store i32 %inc3, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %vsota, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc27, %for.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %indeks, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body6, label %for.end29

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %i, align 4
  store i32 %8, ptr %x, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc24, %for.body6
  %9 = load i32, ptr %x, align 4
  %10 = load i32, ptr %indeks, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body9, label %for.end26

for.body9:                                        ; preds = %for.cond7
  %11 = load ptr, ptr @tabela, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %11, i64 %idxprom10
  %13 = load i32, ptr %arrayidx11, align 4
  %14 = load ptr, ptr @tabela, align 8
  %15 = load i32, ptr %x, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %14, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  %add = add nsw i32 %13, %16
  %cmp14 = icmp sle i32 %add, 28123
  br i1 %cmp14, label %if.then15, label %if.end23

if.then15:                                        ; preds = %for.body9
  %17 = load ptr, ptr @pregledano, align 8
  %18 = load ptr, ptr @tabela, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %18, i64 %idxprom16
  %20 = load i32, ptr %arrayidx17, align 4
  %21 = load ptr, ptr @tabela, align 8
  %22 = load i32, ptr %x, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %21, i64 %idxprom18
  %23 = load i32, ptr %arrayidx19, align 4
  %add20 = add nsw i32 %20, %23
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %17, i64 %idxprom21
  store i32 1, ptr %arrayidx22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %for.body9
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %24 = load i32, ptr %x, align 4
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, ptr %x, align 4
  br label %for.cond7, !llvm.loop !8

for.end26:                                        ; preds = %for.cond7
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %25 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %25, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond4, !llvm.loop !9

for.end29:                                        ; preds = %for.cond4
  store i32 0, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end29
  %26 = load i32, ptr %i, align 4
  %cmp31 = icmp slt i32 %26, 28123
  br i1 %cmp31, label %for.body32, label %for.end41

for.body32:                                       ; preds = %for.cond30
  %27 = load ptr, ptr @pregledano, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %27, i64 %idxprom33
  %29 = load i32, ptr %arrayidx34, align 4
  %cmp35 = icmp eq i32 %29, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %for.body32
  %30 = load i32, ptr %i, align 4
  %conv = sext i32 %30 to i64
  %31 = load i64, ptr %vsota, align 8
  %add37 = add nsw i64 %31, %conv
  store i64 %add37, ptr %vsota, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %for.body32
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %32 = load i32, ptr %i, align 4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, ptr %i, align 4
  br label %for.cond30, !llvm.loop !10

for.end41:                                        ; preds = %for.cond30
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %33 = load i64, ptr %vsota, align 8
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %33)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
