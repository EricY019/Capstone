; ModuleID = './code/058-22161branch_preditction.c'
source_filename = "./code/058-22161branch_preditction.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"Running %s: \00", align 1
@__func__.sorted_if = private unnamed_addr constant [10 x i8] c"sorted_if\00", align 1
@sdata = global [100000 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sum = %llu, took \00", align 1
@__func__.sorted_bitwise = private unnamed_addr constant [15 x i8] c"sorted_bitwise\00", align 1
@__func__.sorted_ternary = private unnamed_addr constant [15 x i8] c"sorted_ternary\00", align 1
@__func__.unsorted_if = private unnamed_addr constant [12 x i8] c"unsorted_if\00", align 1
@data = global [100000 x i32] zeroinitializer, align 4
@__func__.unsorted_bitwise = private unnamed_addr constant [17 x i8] c"unsorted_bitwise\00", align 1
@__func__.unsorted_ternary = private unnamed_addr constant [17 x i8] c"unsorted_ternary\00", align 1
@__const.main.functions = private unnamed_addr constant [6 x ptr] [ptr @sorted_if, ptr @sorted_bitwise, ptr @sorted_ternary, ptr @unsorted_if, ptr @unsorted_bitwise, ptr @unsorted_ternary], align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%.f ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @compare(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load i32, ptr %2, align 4
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sorted_if() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @__func__.sorted_if)
  store i32 0, ptr %i, align 4
  store i64 0, ptr %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr @sdata, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, 128
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], ptr @sdata, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, ptr %sum, align 8
  %add = add nsw i64 %5, %conv
  store i64 %add, ptr %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %sum, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %7)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sorted_bitwise() #0 {
entry:
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @__func__.sorted_bitwise)
  store i32 0, ptr %i, align 4
  store i64 0, ptr %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr @sdata, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %sub = sub nsw i32 %2, 128
  %shr = ashr i32 %sub, 31
  store i32 %shr, ptr %t, align 4
  %3 = load i32, ptr %t, align 4
  %not = xor i32 %3, -1
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [100000 x i32], ptr @sdata, i64 0, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %not, %5
  %conv = sext i32 %and to i64
  %6 = load i64, ptr %sum, align 8
  %add = add nsw i64 %6, %conv
  store i64 %add, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load i64, ptr %sum, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sorted_ternary() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @__func__.sorted_ternary)
  store i32 0, ptr %i, align 4
  store i64 0, ptr %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr @sdata, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, 192
  %conv = zext i1 %cmp1 to i32
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], ptr @sdata, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4
  %mul = mul nsw i32 %conv, %4
  %conv4 = sext i32 %mul to i64
  %5 = load i64, ptr %sum, align 8
  %add = add nsw i64 %5, %conv4
  store i64 %add, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %sum, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @unsorted_if() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @__func__.unsorted_if)
  store i32 0, ptr %i, align 4
  store i64 0, ptr %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr @data, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, 128
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], ptr @data, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, ptr %sum, align 8
  %add = add nsw i64 %5, %conv
  store i64 %add, ptr %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %sum, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @unsorted_bitwise() #0 {
entry:
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @__func__.unsorted_bitwise)
  store i32 0, ptr %i, align 4
  store i64 0, ptr %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr @data, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %sub = sub nsw i32 %2, 128
  %shr = ashr i32 %sub, 31
  store i32 %shr, ptr %t, align 4
  %3 = load i32, ptr %t, align 4
  %not = xor i32 %3, -1
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [100000 x i32], ptr @data, i64 0, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %not, %5
  %conv = sext i32 %and to i64
  %6 = load i64, ptr %sum, align 8
  %add = add nsw i64 %6, %conv
  store i64 %add, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %8 = load i64, ptr %sum, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @unsorted_ternary() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @__func__.unsorted_ternary)
  store i32 0, ptr %i, align 4
  store i64 0, ptr %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr @data, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, 192
  %conv = zext i1 %cmp1 to i32
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], ptr @data, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4
  %mul = mul nsw i32 %conv, %4
  %conv4 = sext i32 %mul to i64
  %5 = load i64, ptr %sum, align 8
  %add = add nsw i64 %5, %conv4
  store i64 %add, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %sum, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %functions = alloca [6 x ptr], align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %elapsed = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %functions, ptr align 8 @__const.main.functions, i64 48, i1 false)
  store i32 6, ptr %i, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %c, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %rem = srem i32 %call2, 256
  %1 = load i32, ptr %c, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr @data, i64 0, i64 %idxprom
  store i32 %rem, ptr %arrayidx, align 4
  %2 = load i32, ptr %c, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [100000 x i32], ptr @sdata, i64 0, i64 %idxprom3
  store i32 %rem, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %c, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @qsort(ptr noundef @sdata, i64 noundef 100000, i64 noundef 4, ptr noundef @compare)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %4 = load i32, ptr %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %i, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i64 @"\01_clock"()
  store i64 %call5, ptr %elapsed, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [6 x ptr], ptr %functions, i64 0, i64 %idxprom6
  %6 = load ptr, ptr %arrayidx7, align 8
  call void %6()
  %call8 = call i64 @"\01_clock"()
  %7 = load i64, ptr %elapsed, align 8
  %sub = sub i64 %call8, %7
  %conv9 = uitofp i64 %sub to double
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv9)
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i64 @"\01_clock"() #1

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
