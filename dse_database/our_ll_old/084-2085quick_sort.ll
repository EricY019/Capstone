; ModuleID = './code/084-2085quick_sort.c'
source_filename = "./code/084-2085quick_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.test1 = private unnamed_addr constant [7 x i32] [i32 4, i32 5, i32 1, i32 8, i32 9, i32 0, i32 1], align 4
@__const.main.test2 = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 1], align 4
@__const.main.test3 = private unnamed_addr constant [7 x i32] [i32 4, i32 0, i32 -1, i32 -8, i32 -9, i32 0, i32 1], align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Before\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"After\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_array(ptr noundef %elements, i32 noundef %size, ptr noundef %info) #0 {
entry:
  %elements.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %iter = alloca i32, align 4
  store ptr %elements, ptr %elements.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store ptr %info, ptr %info.addr, align 8
  store i32 0, ptr %iter, align 4
  %0 = load ptr, ptr %info.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  store i32 0, ptr %iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %iter, align 4
  %2 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %elements.addr, align 8
  %4 = load i32, ptr %iter, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %iter, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %iter, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %temp, align 4
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %b.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %temp, align 4
  %6 = load ptr, ptr %a.addr, align 8
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partion(ptr noundef %elements, i32 noundef %low, i32 noundef %high) #0 {
entry:
  %elements.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %pivot = alloca i32, align 4
  store ptr %elements, ptr %elements.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %high, ptr %high.addr, align 4
  %0 = load i32, ptr %low.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %l, align 4
  %1 = load i32, ptr %high.addr, align 4
  store i32 %1, ptr %h, align 4
  %2 = load i32, ptr %low.addr, align 4
  store i32 %2, ptr %pivot, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %3 = load i32, ptr %h, align 4
  %4 = load i32, ptr %l, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end30

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %5 = load ptr, ptr %elements.addr, align 8
  %6 = load i32, ptr %l, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load ptr, ptr %elements.addr, align 8
  %9 = load i32, ptr %pivot, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  %10 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp sle i32 %7, %10
  br i1 %cmp4, label %while.body5, label %while.end

while.body5:                                      ; preds = %while.cond1
  %11 = load i32, ptr %l, align 4
  %12 = load i32, ptr %high.addr, align 4
  %cmp6 = icmp eq i32 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body5
  br label %while.end

if.end:                                           ; preds = %while.body5
  %13 = load i32, ptr %l, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %l, align 4
  br label %while.cond1, !llvm.loop !7

while.end:                                        ; preds = %if.then, %while.cond1
  br label %while.cond7

while.cond7:                                      ; preds = %if.end16, %while.end
  %14 = load ptr, ptr %elements.addr, align 8
  %15 = load i32, ptr %h, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8
  %16 = load i32, ptr %arrayidx9, align 4
  %17 = load ptr, ptr %elements.addr, align 8
  %18 = load i32, ptr %pivot, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %17, i64 %idxprom10
  %19 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp sge i32 %16, %19
  br i1 %cmp12, label %while.body13, label %while.end17

while.body13:                                     ; preds = %while.cond7
  %20 = load i32, ptr %h, align 4
  %21 = load i32, ptr %low.addr, align 4
  %cmp14 = icmp eq i32 %20, %21
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body13
  br label %while.end17

if.end16:                                         ; preds = %while.body13
  %22 = load i32, ptr %h, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %h, align 4
  br label %while.cond7, !llvm.loop !8

while.end17:                                      ; preds = %if.then15, %while.cond7
  %23 = load ptr, ptr %elements.addr, align 8
  %24 = load i32, ptr %l, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %23, i64 %idxprom18
  %25 = load i32, ptr %arrayidx19, align 4
  %26 = load ptr, ptr %elements.addr, align 8
  %27 = load i32, ptr %h, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %26, i64 %idxprom20
  %28 = load i32, ptr %arrayidx21, align 4
  %cmp22 = icmp sge i32 %25, %28
  br i1 %cmp22, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %while.end17
  %29 = load i32, ptr %l, align 4
  %30 = load i32, ptr %h, align 4
  %cmp23 = icmp slt i32 %29, %30
  br i1 %cmp23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %elements.addr, align 8
  %32 = load i32, ptr %l, align 4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %31, i64 %idxprom25
  %33 = load ptr, ptr %elements.addr, align 8
  %34 = load i32, ptr %h, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %33, i64 %idxprom27
  call void @swap(ptr noundef %arrayidx26, ptr noundef %arrayidx28)
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true, %while.end17
  br label %while.cond, !llvm.loop !9

while.end30:                                      ; preds = %while.cond
  %35 = load ptr, ptr %elements.addr, align 8
  %36 = load i32, ptr %low.addr, align 4
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %35, i64 %idxprom31
  %37 = load i32, ptr %arrayidx32, align 4
  %38 = load ptr, ptr %elements.addr, align 8
  %39 = load i32, ptr %h, align 4
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %38, i64 %idxprom33
  %40 = load i32, ptr %arrayidx34, align 4
  %cmp35 = icmp sgt i32 %37, %40
  br i1 %cmp35, label %if.then36, label %if.end41

if.then36:                                        ; preds = %while.end30
  %41 = load ptr, ptr %elements.addr, align 8
  %42 = load i32, ptr %low.addr, align 4
  %idxprom37 = sext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %41, i64 %idxprom37
  %43 = load ptr, ptr %elements.addr, align 8
  %44 = load i32, ptr %h, align 4
  %idxprom39 = sext i32 %44 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %43, i64 %idxprom39
  call void @swap(ptr noundef %arrayidx38, ptr noundef %arrayidx40)
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %while.end30
  %45 = load i32, ptr %h, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quick_sort(ptr noundef %elements, i32 noundef %low, i32 noundef %high) #0 {
entry:
  %elements.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  store ptr %elements, ptr %elements.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %high, ptr %high.addr, align 4
  store i32 0, ptr %pivot, align 4
  %0 = load i32, ptr %high.addr, align 4
  %1 = load i32, ptr %low.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %elements.addr, align 8
  %3 = load i32, ptr %low.addr, align 4
  %4 = load i32, ptr %high.addr, align 4
  %call = call i32 @partion(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %pivot, align 4
  %5 = load ptr, ptr %elements.addr, align 8
  %6 = load i32, ptr %low.addr, align 4
  %7 = load i32, ptr %pivot, align 4
  %sub = sub nsw i32 %7, 1
  call void @quick_sort(ptr noundef %5, i32 noundef %6, i32 noundef %sub)
  %8 = load ptr, ptr %elements.addr, align 8
  %9 = load i32, ptr %pivot, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, ptr %high.addr, align 4
  call void @quick_sort(ptr noundef %8, i32 noundef %add, i32 noundef %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %test1 = alloca [7 x i32], align 4
  %test2 = alloca [7 x i32], align 4
  %test3 = alloca [7 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %test1, ptr align 4 @__const.main.test1, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %test2, ptr align 4 @__const.main.test2, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %test3, ptr align 4 @__const.main.test3, i64 28, i1 false)
  %arraydecay = getelementptr inbounds [7 x i32], ptr %test1, i64 0, i64 0
  call void @print_array(ptr noundef %arraydecay, i32 noundef 7, ptr noundef @.str.3)
  %arraydecay1 = getelementptr inbounds [7 x i32], ptr %test1, i64 0, i64 0
  call void @quick_sort(ptr noundef %arraydecay1, i32 noundef 0, i32 noundef 6)
  %arraydecay2 = getelementptr inbounds [7 x i32], ptr %test1, i64 0, i64 0
  call void @print_array(ptr noundef %arraydecay2, i32 noundef 7, ptr noundef @.str.4)
  %arraydecay3 = getelementptr inbounds [7 x i32], ptr %test2, i64 0, i64 0
  call void @print_array(ptr noundef %arraydecay3, i32 noundef 7, ptr noundef @.str.3)
  %arraydecay4 = getelementptr inbounds [7 x i32], ptr %test2, i64 0, i64 0
  call void @quick_sort(ptr noundef %arraydecay4, i32 noundef 0, i32 noundef 6)
  %arraydecay5 = getelementptr inbounds [7 x i32], ptr %test2, i64 0, i64 0
  call void @print_array(ptr noundef %arraydecay5, i32 noundef 7, ptr noundef @.str.4)
  %arraydecay6 = getelementptr inbounds [7 x i32], ptr %test3, i64 0, i64 0
  call void @print_array(ptr noundef %arraydecay6, i32 noundef 7, ptr noundef @.str.3)
  %arraydecay7 = getelementptr inbounds [7 x i32], ptr %test3, i64 0, i64 0
  call void @quick_sort(ptr noundef %arraydecay7, i32 noundef 0, i32 noundef 6)
  %arraydecay8 = getelementptr inbounds [7 x i32], ptr %test3, i64 0, i64 0
  call void @print_array(ptr noundef %arraydecay8, i32 noundef 7, ptr noundef @.str.4)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

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
