; ModuleID = './code/265-17347main.c'
source_filename = "./code/265-17347main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [20 x i8] c"Before sorting... \0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"After sorting... \0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %x = alloca i32, align 4
  %start = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 100, ptr %size, align 4
  %0 = load i32, ptr %size, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %x, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %x, align 4
  %4 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %5 = load i32, ptr %size, align 4
  %rem = srem i32 %call2, %5
  %6 = load i32, ptr %x, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %rem, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store ptr %vla, ptr %start, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %8 = load i32, ptr %size, align 4
  call void @print(ptr noundef %vla, i32 noundef %8)
  %9 = load ptr, ptr %start, align 8
  %10 = load i32, ptr %size, align 4
  call void @quick_sort(ptr noundef %9, i32 noundef 0, i32 noundef %10)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %11 = load i32, ptr %size, align 4
  call void @print(ptr noundef %vla, i32 noundef %11)
  store i32 0, ptr %retval, align 4
  %12 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %12)
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

declare void @srand(i32 noundef) #2

declare i64 @time(ptr noundef) #2

declare i32 @rand() #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(ptr noundef %array, i32 noundef %size) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %rem = srem i32 %2, 30
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quick_sort(ptr noundef %array, i32 noundef %start, i32 noundef %end) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %start, ptr %start.addr, align 4
  store i32 %end, ptr %end.addr, align 4
  %0 = load i32, ptr %start.addr, align 4
  %1 = load i32, ptr %end.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %start.addr, align 4
  %4 = load i32, ptr %end.addr, align 4
  %call = call i32 @partition(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %pivot, align 4
  %5 = load ptr, ptr %array.addr, align 8
  %6 = load i32, ptr %start.addr, align 4
  %7 = load i32, ptr %pivot, align 4
  %sub = sub nsw i32 %7, 1
  call void @quick_sort(ptr noundef %5, i32 noundef %6, i32 noundef %sub)
  %8 = load ptr, ptr %array.addr, align 8
  %9 = load i32, ptr %pivot, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, ptr %end.addr, align 4
  call void @quick_sort(ptr noundef %8, i32 noundef %add, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %array, i32 noundef %idx1, i32 noundef %idx2) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %idx1.addr = alloca i32, align 4
  %idx2.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %idx1, ptr %idx1.addr, align 4
  store i32 %idx2, ptr %idx2.addr, align 4
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %idx1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %tmp, align 4
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load i32, ptr %idx2.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %array.addr, align 8
  %7 = load i32, ptr %idx1.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 %idxprom3
  store i32 %5, ptr %arrayidx4, align 4
  %8 = load i32, ptr %tmp, align 4
  %9 = load ptr, ptr %array.addr, align 8
  %10 = load i32, ptr %idx2.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 %idxprom5
  store i32 %8, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partition(ptr noundef %array, i32 noundef %start, i32 noundef %end) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %pivot_value = alloca i32, align 4
  %pivot_idx = alloca i32, align 4
  %idx = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %start, ptr %start.addr, align 4
  store i32 %end, ptr %end.addr, align 4
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %end.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %pivot_value, align 4
  %3 = load i32, ptr %start.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr %pivot_idx, align 4
  %4 = load i32, ptr %start.addr, align 4
  store i32 %4, ptr %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %idx, align 4
  %6 = load i32, ptr %end.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %array.addr, align 8
  %8 = load i32, ptr %idx, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %7, i64 %idxprom1
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = load i32, ptr %pivot_value, align 4
  %cmp3 = icmp sle i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %pivot_idx, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %pivot_idx, align 4
  %12 = load ptr, ptr %array.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 0
  %13 = load i32, ptr %pivot_idx, align 4
  %14 = load i32, ptr %idx, align 4
  call void @swap(ptr noundef %arrayidx4, i32 noundef %13, i32 noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %idx, align 4
  %inc5 = add nsw i32 %15, 1
  store i32 %inc5, ptr %idx, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %array.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %16, i64 0
  %17 = load i32, ptr %pivot_idx, align 4
  %add = add nsw i32 %17, 1
  %18 = load i32, ptr %end.addr, align 4
  call void @swap(ptr noundef %arrayidx6, i32 noundef %add, i32 noundef %18)
  %19 = load i32, ptr %pivot_idx, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
