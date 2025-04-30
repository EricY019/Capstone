; ModuleID = './code/210-11266quick.c'
source_filename = "./code/210-11266quick.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %d,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A\0A \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quickSort(ptr noundef %vetor, i32 noundef %esq, i32 noundef %dir) #0 {
entry:
  %vetor.addr = alloca ptr, align 8
  %esq.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %vetor, ptr %vetor.addr, align 8
  store i32 %esq, ptr %esq.addr, align 4
  store i32 %dir, ptr %dir.addr, align 4
  %0 = load i32, ptr %esq.addr, align 4
  store i32 %0, ptr %i, align 4
  %1 = load i32, ptr %dir.addr, align 4
  store i32 %1, ptr %j, align 4
  %2 = load ptr, ptr %vetor.addr, align 8
  %3 = load i32, ptr %esq.addr, align 4
  %4 = load i32, ptr %dir.addr, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end27

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body6, %while.body
  %8 = load ptr, ptr %vetor.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  %10 = load i32, ptr %arrayidx3, align 4
  %11 = load i32, ptr %x, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %dir.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %14 = phi i1 [ false, %while.cond1 ], [ %cmp5, %land.rhs ]
  br i1 %14, label %while.body6, label %while.end

while.body6:                                      ; preds = %land.end
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond1, !llvm.loop !5

while.end:                                        ; preds = %land.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body14, %while.end
  %16 = load ptr, ptr %vetor.addr, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %16, i64 %idxprom8
  %18 = load i32, ptr %arrayidx9, align 4
  %19 = load i32, ptr %x, align 4
  %cmp10 = icmp sgt i32 %18, %19
  br i1 %cmp10, label %land.rhs11, label %land.end13

land.rhs11:                                       ; preds = %while.cond7
  %20 = load i32, ptr %j, align 4
  %21 = load i32, ptr %esq.addr, align 4
  %cmp12 = icmp sgt i32 %20, %21
  br label %land.end13

land.end13:                                       ; preds = %land.rhs11, %while.cond7
  %22 = phi i1 [ false, %while.cond7 ], [ %cmp12, %land.rhs11 ]
  br i1 %22, label %while.body14, label %while.end15

while.body14:                                     ; preds = %land.end13
  %23 = load i32, ptr %j, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond7, !llvm.loop !7

while.end15:                                      ; preds = %land.end13
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %j, align 4
  %cmp16 = icmp sle i32 %24, %25
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %while.end15
  %26 = load ptr, ptr %vetor.addr, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %26, i64 %idxprom17
  %28 = load i32, ptr %arrayidx18, align 4
  store i32 %28, ptr %y, align 4
  %29 = load ptr, ptr %vetor.addr, align 8
  %30 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %29, i64 %idxprom19
  %31 = load i32, ptr %arrayidx20, align 4
  %32 = load ptr, ptr %vetor.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %33 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %32, i64 %idxprom21
  store i32 %31, ptr %arrayidx22, align 4
  %34 = load i32, ptr %y, align 4
  %35 = load ptr, ptr %vetor.addr, align 8
  %36 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %35, i64 %idxprom23
  store i32 %34, ptr %arrayidx24, align 4
  %37 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %37, 1
  store i32 %inc25, ptr %i, align 4
  %38 = load i32, ptr %j, align 4
  %dec26 = add nsw i32 %38, -1
  store i32 %dec26, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end15
  br label %while.cond, !llvm.loop !8

while.end27:                                      ; preds = %while.cond
  %39 = load i32, ptr %j, align 4
  %40 = load i32, ptr %esq.addr, align 4
  %cmp28 = icmp sgt i32 %39, %40
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end27
  %41 = load ptr, ptr %vetor.addr, align 8
  %42 = load i32, ptr %esq.addr, align 4
  %43 = load i32, ptr %j, align 4
  call void @quickSort(ptr noundef %41, i32 noundef %42, i32 noundef %43)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %while.end27
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %dir.addr, align 4
  %cmp31 = icmp slt i32 %44, %45
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  %46 = load ptr, ptr %vetor.addr, align 8
  %47 = load i32, ptr %i, align 4
  %48 = load i32, ptr %dir.addr, align 4
  call void @quickSort(ptr noundef %46, i32 noundef %47, i32 noundef %48)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %vetor = alloca [10000 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %rem = srem i32 %call2, 10000
  %add = add nsw i32 %rem, 1
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], ptr %vetor, i64 0, i64 %idxprom
  store i32 %add, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10000 x i32], ptr %vetor, i64 0, i64 0
  call void @quickSort(ptr noundef %arraydecay, i32 noundef 0, i32 noundef 9999)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %3, 10000
  br i1 %cmp5, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond4
  %4 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds [10000 x i32], ptr %vetor, i64 0, i64 %idxprom8
  %5 = load i32, ptr %arrayidx9, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body7
  %6 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %6, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond4, !llvm.loop !10

for.end13:                                        ; preds = %for.cond4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
