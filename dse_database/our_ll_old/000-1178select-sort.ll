; ModuleID = './code/000-1178select-sort.c'
source_filename = "./code/000-1178select-sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@icomp = global i32 0, align 4
@iswap = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"n = %d, tcmp = %d, rcmp = %d, dc = %lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"n = %d, tswp = %d, rswp = %d, ds = %lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"sort faild, [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @cmp_fun(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr @icomp, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @icomp, align 4
  %1 = load i32, ptr %a.addr, align 4
  %2 = load i32, ptr %b.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @swap(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load i32, ptr %2, align 4
  %xor = xor i32 %1, %3
  %4 = load ptr, ptr %a.addr, align 8
  store i32 %xor, ptr %4, align 4
  %5 = load ptr, ptr %a.addr, align 8
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %b.addr, align 8
  %8 = load i32, ptr %7, align 4
  %xor1 = xor i32 %6, %8
  %9 = load ptr, ptr %b.addr, align 8
  store i32 %xor1, ptr %9, align 4
  %10 = load ptr, ptr %a.addr, align 8
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %b.addr, align 8
  %13 = load i32, ptr %12, align 4
  %xor2 = xor i32 %11, %13
  %14 = load ptr, ptr %a.addr, align 8
  store i32 %xor2, ptr %14, align 4
  %15 = load i32, ptr @iswap, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr @iswap, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @select_sort(ptr noundef %pList, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %pList.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %iTop = alloca i32, align 4
  %iPos = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %pList.addr, align 8
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %len.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %if.end
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %len.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pList.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  store i32 %6, ptr %iTop, align 4
  %7 = load i32, ptr %i, align 4
  store i32 %7, ptr %iPos, align 4
  store i32 0, ptr %j, align 4
  %8 = load i32, ptr %i, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4
  %10 = load i32, ptr %len.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %11 = load i32, ptr %iTop, align 4
  %12 = load ptr, ptr %pList.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %12, i64 %idxprom6
  %14 = load i32, ptr %arrayidx7, align 4
  %call = call i32 @cmp_fun(i32 noundef %11, i32 noundef %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then8, label %if.end11

if.then8:                                         ; preds = %for.body5
  %15 = load ptr, ptr %pList.addr, align 8
  %16 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 %idxprom9
  %17 = load i32, ptr %arrayidx10, align 4
  store i32 %17, ptr %iTop, align 4
  %18 = load i32, ptr %j, align 4
  store i32 %18, ptr %iPos, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %19 = load i32, ptr %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !5

for.end:                                          ; preds = %for.cond3
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %iPos, align 4
  %cmp12 = icmp ne i32 %20, %21
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %for.end
  %22 = load ptr, ptr %pList.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %22, i64 %idxprom14
  %24 = load ptr, ptr %pList.addr, align 8
  %25 = load i32, ptr %iPos, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %24, i64 %idxprom16
  %call18 = call i32 @swap(ptr noundef %arrayidx15, ptr noundef %arrayidx17)
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %for.end
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %26 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end22:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end22, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @get_list(ptr noundef %list, i32 noundef %len) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  call void @srand(i32 noundef 374676)
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand()
  %2 = load i32, ptr %len.addr, align 4
  %mul = mul nsw i32 %2, 20
  %rem = srem i32 %call, %mul
  %3 = load ptr, ptr %list.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  store i32 %rem, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @check_list(ptr noundef %list, i32 noundef %len) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %iCnt = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %iCnt, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %list.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load ptr, ptr %list.addr, align 8
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %call = call i32 @cmp_fun(i32 noundef %4, i32 noundef %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %iCnt, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %iCnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %9, 1
  store i32 %inc3, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %iCnt, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @show_list(ptr noundef %pList, i32 noundef %len) #0 {
entry:
  %pList.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pList.addr, align 8
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
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @test_sort(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pList = alloca ptr, align 8
  %iThro = alloca i32, align 4
  %iT = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr @icomp, align 4
  store i32 0, ptr @iswap, align 4
  %0 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %pList, align 8
  %1 = load ptr, ptr %pList, align 8
  %2 = load i32, ptr %n.addr, align 4
  %call1 = call i32 @get_list(ptr noundef %1, i32 noundef %2)
  %3 = load ptr, ptr %pList, align 8
  %4 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @select_sort(ptr noundef %3, i32 noundef %4)
  %5 = load i32, ptr %n.addr, align 4
  %6 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %6, 1
  %mul3 = mul nsw i32 %5, %add
  %div = sdiv i32 %mul3, 2
  store i32 %div, ptr %iThro, align 4
  %7 = load i32, ptr %n.addr, align 4
  %8 = load i32, ptr %iThro, align 4
  %9 = load i32, ptr @icomp, align 4
  %10 = load i32, ptr @icomp, align 4
  %conv4 = sitofp i32 %10 to double
  %11 = load i32, ptr %iThro, align 4
  %conv5 = sitofp i32 %11 to double
  %div6 = fdiv double %conv4, %conv5
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %7, i32 noundef %8, i32 noundef %9, double noundef %div6)
  %12 = load i32, ptr %n.addr, align 4
  %13 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %13, 1
  %14 = load i32, ptr @iswap, align 4
  %15 = load i32, ptr @iswap, align 4
  %conv8 = sitofp i32 %15 to double
  %16 = load i32, ptr %n.addr, align 4
  %sub9 = sub nsw i32 %16, 1
  %conv10 = sitofp i32 %sub9 to double
  %div11 = fdiv double %conv8, %conv10
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %12, i32 noundef %sub, i32 noundef %14, double noundef %div11)
  %17 = load ptr, ptr %pList, align 8
  %18 = load i32, ptr %n.addr, align 4
  %call13 = call i32 @check_list(ptr noundef %17, i32 noundef %18)
  store i32 %call13, ptr %iT, align 4
  %19 = load i32, ptr %iT, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i32, ptr %iT, align 4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load ptr, ptr %pList, align 8
  call void @free(ptr noundef %21)
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  store i32 16, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 16384
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call = call i32 @test_sort(i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %2, 2
  store i32 %mul, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret i32 0
}

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
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
