; ModuleID = './code/260-29896hamming1.c'
source_filename = "./code/260-29896hamming1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@alloc = global i64 0, align 8
@n = global i64 1, align 8
@q = global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%llu \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @qpush(i64 noundef %h) #0 {
entry:
  %h.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 %h, ptr %h.addr, align 8
  %0 = load i64, ptr @alloc, align 8
  %1 = load i64, ptr @n, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @alloc, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load i64, ptr @alloc, align 8
  %mul = mul i64 %3, 2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 16, %cond.false ]
  store i64 %cond, ptr @alloc, align 8
  %4 = load ptr, ptr @q, align 8
  %5 = load i64, ptr @alloc, align 8
  %mul1 = mul i64 8, %5
  %call = call ptr @realloc(ptr noundef %4, i64 noundef %mul1) #3
  store ptr %call, ptr @q, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %6 = load i64, ptr @n, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr @n, align 8
  %conv = trunc i64 %6 to i32
  store i32 %conv, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4
  %div = sdiv i32 %7, 2
  store i32 %div, ptr %j, align 4
  %tobool2 = icmp ne i32 %div, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load ptr, ptr @q, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %idxprom
  %10 = load i64, ptr %arrayidx, align 8
  %11 = load i64, ptr %h.addr, align 8
  %cmp3 = icmp ugt i64 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr @q, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i64, ptr %13, i64 %idxprom5
  %15 = load i64, ptr %arrayidx6, align 8
  %16 = load ptr, ptr @q, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i64, ptr %16, i64 %idxprom7
  store i64 %15, ptr %arrayidx8, align 8
  %18 = load i32, ptr %j, align 4
  store i32 %18, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %land.end
  %19 = load i64, ptr %h.addr, align 8
  %20 = load ptr, ptr @q, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds i64, ptr %20, i64 %idxprom9
  store i64 %19, ptr %arrayidx10, align 8
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @qpop() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i64, align 8
  %t = alloca i64, align 8
  %0 = load ptr, ptr @q, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 1
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr @n, align 8
  %cmp = icmp ugt i64 %2, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, ptr %r, align 8
  %4 = load ptr, ptr @q, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx1, align 8
  %cmp2 = icmp eq i64 %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %for.body, label %for.end29

for.body:                                         ; preds = %land.end
  store i32 1, ptr %i, align 4
  %7 = load ptr, ptr @q, align 8
  %8 = load i64, ptr @n, align 8
  %dec = add i64 %8, -1
  store i64 %dec, ptr @n, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 %dec
  %9 = load i64, ptr %arrayidx3, align 8
  store i64 %9, ptr %t, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %if.end22, %for.body
  %10 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %10, 2
  store i32 %mul, ptr %j, align 4
  %conv = sext i32 %mul to i64
  %11 = load i64, ptr @n, align 8
  %cmp5 = icmp ult i64 %conv, %11
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %12 = load i32, ptr %j, align 4
  %add = add nsw i32 %12, 1
  %conv8 = sext i32 %add to i64
  %13 = load i64, ptr @n, align 8
  %cmp9 = icmp ult i64 %conv8, %13
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body7
  %14 = load ptr, ptr @q, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i64, ptr %14, i64 %idxprom
  %16 = load i64, ptr %arrayidx11, align 8
  %17 = load ptr, ptr @q, align 8
  %18 = load i32, ptr %j, align 4
  %add12 = add nsw i32 %18, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i64, ptr %17, i64 %idxprom13
  %19 = load i64, ptr %arrayidx14, align 8
  %cmp15 = icmp ugt i64 %16, %19
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body7
  %21 = load i64, ptr %t, align 8
  %22 = load ptr, ptr @q, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds i64, ptr %22, i64 %idxprom17
  %24 = load i64, ptr %arrayidx18, align 8
  %cmp19 = icmp ule i64 %21, %24
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end
  br label %for.end

if.end22:                                         ; preds = %if.end
  %25 = load ptr, ptr @q, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds i64, ptr %25, i64 %idxprom23
  %27 = load i64, ptr %arrayidx24, align 8
  %28 = load ptr, ptr @q, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds i64, ptr %28, i64 %idxprom25
  store i64 %27, ptr %arrayidx26, align 8
  %30 = load i32, ptr %j, align 4
  store i32 %30, ptr %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end:                                          ; preds = %if.then21, %for.cond4
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %31 = load i64, ptr %t, align 8
  %32 = load ptr, ptr @q, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds i64, ptr %32, i64 %idxprom27
  store i64 %31, ptr %arrayidx28, align 8
  br label %for.cond, !llvm.loop !8

for.end29:                                        ; preds = %land.end
  %34 = load i64, ptr %r, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %i, align 4
  call void @qpush(i64 noundef 1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @qpop()
  store i64 %call, ptr %h, align 8
  %1 = load i64, ptr %h, align 8
  %mul = mul i64 %1, 7
  call void @qpush(i64 noundef %mul)
  %2 = load i64, ptr %h, align 8
  %mul1 = mul i64 %2, 13
  call void @qpush(i64 noundef %mul1)
  %3 = load i64, ptr %h, align 8
  %mul2 = mul i64 %3, 19
  call void @qpush(i64 noundef %mul2)
  %4 = load i64, ptr %h, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(1) }

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
