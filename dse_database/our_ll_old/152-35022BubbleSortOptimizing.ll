; ModuleID = './code/152-35022BubbleSortOptimizing.c'
source_filename = "./code/152-35022BubbleSortOptimizing.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"a round end n=%d\0A\00", align 1
@__const.test_bubbleSort.array = private unnamed_addr constant [5 x i32] [i32 4, i32 2, i32 8, i32 7, i32 1], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %Aj, ptr noundef %Aj1) #0 {
entry:
  %Aj.addr = alloca ptr, align 8
  %Aj1.addr = alloca ptr, align 8
  %originAj = alloca i32, align 4
  store ptr %Aj, ptr %Aj.addr, align 8
  store ptr %Aj1, ptr %Aj1.addr, align 8
  %0 = load ptr, ptr %Aj.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %originAj, align 4
  %2 = load ptr, ptr %Aj1.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %Aj.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %originAj, align 4
  %6 = load ptr, ptr %Aj1.addr, align 8
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printarray(ptr noundef %array, i32 noundef %size) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bubbleSort(ptr noundef %A, i32 noundef %n) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %swapped = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, ptr %swapped, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %A.addr, align 8
  %3 = load i32, ptr %n.addr, align 4
  call void @printarray(ptr noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %A.addr, align 8
  %5 = load i32, ptr %i, align 4
  %sub1 = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %7 = load ptr, ptr %A.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp sgt i32 %6, %9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %A.addr, align 8
  %11 = load i32, ptr %i, align 4
  %sub5 = sub nsw i32 %11, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  %12 = load ptr, ptr %A.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %12, i64 %idxprom8
  call void @swap(ptr noundef %arrayidx7, ptr noundef %arrayidx9)
  store i32 1, ptr %swapped, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load ptr, ptr %A.addr, align 8
  %15 = load i32, ptr %n.addr, align 4
  call void @printarray(ptr noundef %14, i32 noundef %15)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %n.addr, align 4
  %sub10 = sub nsw i32 %17, 1
  store i32 %sub10, ptr %n.addr, align 4
  %18 = load i32, ptr %n.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %18)
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %19 = load i32, ptr %swapped, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_bubbleSort() #0 {
entry:
  %array = alloca [5 x i32], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.test_bubbleSort.array, i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], ptr %array, i64 0, i64 0
  call void @bubbleSort(ptr noundef %arraydecay, i32 noundef 5)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @input() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @solve() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @input()
  call void @solve()
  call void @test_bubbleSort()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
