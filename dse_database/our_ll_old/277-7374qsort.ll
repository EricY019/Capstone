; ModuleID = './code/277-7374qsort.c'
source_filename = "./code/277-7374qsort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"\E6\8E\92\E5\BA\8F\E5\89\8D\EF\BC\9A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0A\E6\8E\92\E5\BA\8F\E5\BE\8C\EF\BC\9A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"i = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %number = alloca [10 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  call void @llvm.memset.p0.i64(ptr align 4 %number, i8 0, i64 40, i1 false)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand()
  %rem = srem i32 %call3, 100
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %number, i64 0, i64 %idxprom
  store i32 %rem, ptr %arrayidx, align 4
  %2 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %number, i64 0, i64 %idxprom4
  %3 = load i32, ptr %arrayidx5, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %arraydecay = getelementptr inbounds [10 x i32], ptr %number, i64 0, i64 0
  call void @quickSort(ptr noundef %arraydecay, i32 noundef 0, i32 noundef 9)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %5, 10
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %6 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], ptr %number, i64 0, i64 %idxprom13
  %7 = load i32, ptr %arrayidx14, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %8 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %8, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond9, !llvm.loop !7

for.end18:                                        ; preds = %for.cond9
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #1

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quickSort(ptr noundef %number, i32 noundef %left, i32 noundef %right) #0 {
entry:
  %number.addr = alloca ptr, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store ptr %number, ptr %number.addr, align 8
  store i32 %left, ptr %left.addr, align 4
  store i32 %right, ptr %right.addr, align 4
  %0 = load i32, ptr %left.addr, align 4
  %1 = load i32, ptr %right.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %number.addr, align 8
  %3 = load i32, ptr %left.addr, align 4
  %4 = load i32, ptr %right.addr, align 4
  %call = call i32 @partition(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %q, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %5, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %number.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %10 = load ptr, ptr %number.addr, align 8
  %11 = load i32, ptr %left.addr, align 4
  %12 = load i32, ptr %q, align 4
  %sub = sub nsw i32 %12, 1
  call void @quickSort(ptr noundef %10, i32 noundef %11, i32 noundef %sub)
  %13 = load ptr, ptr %number.addr, align 8
  %14 = load i32, ptr %q, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, ptr %right.addr, align 4
  call void @quickSort(ptr noundef %13, i32 noundef %add, i32 noundef %15)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partition(ptr noundef %number, i32 noundef %left, i32 noundef %right) #0 {
entry:
  %number.addr = alloca ptr, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %t13 = alloca i32, align 4
  store ptr %number, ptr %number.addr, align 8
  store i32 %left, ptr %left.addr, align 4
  store i32 %right, ptr %right.addr, align 4
  %0 = load i32, ptr %left.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %i, align 4
  %1 = load i32, ptr %left.addr, align 4
  store i32 %1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %right.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %number.addr, align 8
  %5 = load i32, ptr %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %7 = load ptr, ptr %number.addr, align 8
  %8 = load i32, ptr %right.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %7, i64 %idxprom1
  %9 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp sle i32 %6, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  %11 = load ptr, ptr %number.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 %idxprom4
  %13 = load i32, ptr %arrayidx5, align 4
  store i32 %13, ptr %t, align 4
  %14 = load ptr, ptr %number.addr, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 %idxprom6
  %16 = load i32, ptr %arrayidx7, align 4
  %17 = load ptr, ptr %number.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %17, i64 %idxprom8
  store i32 %16, ptr %arrayidx9, align 4
  %19 = load i32, ptr %t, align 4
  %20 = load ptr, ptr %number.addr, align 8
  %21 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %20, i64 %idxprom10
  store i32 %19, ptr %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, ptr %j, align 4
  %inc12 = add nsw i32 %22, 1
  store i32 %inc12, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %23)
  %24 = load ptr, ptr %number.addr, align 8
  %25 = load i32, ptr %i, align 4
  %add = add nsw i32 %25, 1
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %24, i64 %idxprom14
  %26 = load i32, ptr %arrayidx15, align 4
  store i32 %26, ptr %t13, align 4
  %27 = load ptr, ptr %number.addr, align 8
  %28 = load i32, ptr %right.addr, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %27, i64 %idxprom16
  %29 = load i32, ptr %arrayidx17, align 4
  %30 = load ptr, ptr %number.addr, align 8
  %31 = load i32, ptr %i, align 4
  %add18 = add nsw i32 %31, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %30, i64 %idxprom19
  store i32 %29, ptr %arrayidx20, align 4
  %32 = load i32, ptr %t13, align 4
  %33 = load ptr, ptr %number.addr, align 8
  %34 = load i32, ptr %right.addr, align 4
  %idxprom21 = sext i32 %34 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %33, i64 %idxprom21
  store i32 %32, ptr %arrayidx22, align 4
  %35 = load i32, ptr %i, align 4
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %35)
  %36 = load i32, ptr %i, align 4
  %add24 = add nsw i32 %36, 1
  ret i32 %add24
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
