; ModuleID = './code/278-12713find_missing.c'
source_filename = "./code/278-12713find_missing.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"%2i,\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.main.array = private unnamed_addr constant [9 x i32] [i32 2, i32 9, i32 4, i32 7, i32 5, i32 3, i32 6, i32 0, i32 8], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"missing: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @output(ptr noundef %array, i64 noundef %len) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr %len.addr, align 8
  %cmp = icmp ult i64 %conv, %1
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
  %call2 = call i32 @puts(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load ptr, ptr %y.addr, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %y.addr, align 8
  %5 = load i32, ptr %4, align 4
  %xor = xor i32 %3, %5
  %6 = load ptr, ptr %x.addr, align 8
  store i32 %xor, ptr %6, align 4
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %y.addr, align 8
  %10 = load i32, ptr %9, align 4
  %xor1 = xor i32 %8, %10
  %11 = load ptr, ptr %y.addr, align 8
  store i32 %xor1, ptr %11, align 4
  %12 = load ptr, ptr %x.addr, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %y.addr, align 8
  %15 = load i32, ptr %14, align 4
  %xor2 = xor i32 %13, %15
  %16 = load ptr, ptr %x.addr, align 8
  store i32 %xor2, ptr %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @find_missing0(ptr noundef %array, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr %len.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i32, ptr %i, align 4
  %cmp2 = icmp ne i32 %4, %5
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %array.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4
  %conv6 = sext i32 %8 to i64
  %9 = load i64, ptr %len.addr, align 8
  %cmp7 = icmp ult i64 %conv6, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %array.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i32, ptr %11, i64 %idx.ext
  %13 = load ptr, ptr %array.addr, align 8
  %14 = load ptr, ptr %array.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %14, i64 %idxprom9
  %16 = load i32, ptr %arrayidx10, align 4
  %idx.ext11 = sext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i32, ptr %13, i64 %idx.ext11
  call void @swap(ptr noundef %add.ptr, ptr noundef %add.ptr12)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %array.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %18, i64 0
  %19 = load i32, ptr %arrayidx13, align 4
  store i32 %19, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.end
  %20 = load i32, ptr %i, align 4
  %conv15 = sext i32 %20 to i64
  %21 = load i64, ptr %len.addr, align 8
  %cmp16 = icmp ult i64 %conv15, %21
  br i1 %cmp16, label %for.body18, label %for.end25

for.body18:                                       ; preds = %for.cond14
  %22 = load ptr, ptr %array.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %22, i64 %idxprom19
  %24 = load i32, ptr %arrayidx20, align 4
  %25 = load i32, ptr %i, align 4
  %cmp21 = icmp ne i32 %24, %25
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %26 = load i32, ptr %i, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body18
  br label %for.inc23

for.inc23:                                        ; preds = %if.end
  %27 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond14, !llvm.loop !9

for.end25:                                        ; preds = %for.cond14
  %28 = load i64, ptr %len.addr, align 8
  %conv26 = trunc i64 %28 to i32
  store i32 %conv26, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end25, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @find_missing1(ptr noundef %array, i64 noundef %len) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %array = alloca [9 x i32], align 4
  %len = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %retval1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.main.array, i64 36, i1 false)
  store i64 9, ptr %len, align 8
  %arraydecay = getelementptr inbounds [9 x i32], ptr %array, i64 0, i64 0
  %0 = load i64, ptr %len, align 8
  call void @output(ptr noundef %arraydecay, i64 noundef %0)
  %arraydecay2 = getelementptr inbounds [9 x i32], ptr %array, i64 0, i64 0
  %1 = load i64, ptr %len, align 8
  %call = call i32 @find_missing0(ptr noundef %arraydecay2, i64 noundef %1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call)
  %arraydecay4 = getelementptr inbounds [9 x i32], ptr %array, i64 0, i64 0
  %2 = load i64, ptr %len, align 8
  call void @output(ptr noundef %arraydecay4, i64 noundef %2)
  %3 = load i32, ptr %retval1, align 4
  ret i32 %3
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
