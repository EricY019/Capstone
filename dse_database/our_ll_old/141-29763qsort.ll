; ModuleID = './code/141-29763qsort.c'
source_filename = "./code/141-29763qsort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.array = private unnamed_addr constant [10 x i32] [i32 1, i32 3, i32 8, i32 2, i32 4, i32 9, i32 6, i32 5, i32 7, i32 0], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [10 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.main.array, i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 0
  call void @array_dump(ptr noundef %arraydecay, i64 noundef 10)
  %arraydecay1 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 0
  call void @quick_sort(ptr noundef %arraydecay1, i64 noundef 10)
  %arraydecay2 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 0
  call void @array_dump(ptr noundef %arraydecay2, i64 noundef 10)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @array_dump(ptr noundef %array, i64 noundef %array_length) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %array_length.addr = alloca i64, align 8
  %index = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i64 %array_length, ptr %array_length.addr, align 8
  store i32 0, ptr %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %index, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr %array_length.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %index, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %index, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quick_sort(ptr noundef %array, i64 noundef %array_length) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %array_length.addr = alloca i64, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %key_index = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i64 %array_length, ptr %array_length.addr, align 8
  store i32 0, ptr %start, align 4
  %0 = load i64, ptr %array_length.addr, align 8
  %sub = sub i64 %0, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %end, align 4
  store i32 0, ptr %key_index, align 4
  %1 = load i64, ptr %array_length.addr, align 8
  %cmp = icmp ult i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end33, %if.end
  %2 = load i32, ptr %start, align 4
  %3 = load i32, ptr %end, align 4
  %cmp2 = icmp ne i32 %2, %3
  br i1 %cmp2, label %while.body, label %while.end34

while.body:                                       ; preds = %while.cond
  br label %while.cond4

while.cond4:                                      ; preds = %if.end15, %while.body
  %4 = load i32, ptr %start, align 4
  %5 = load i32, ptr %end, align 4
  %cmp5 = icmp ne i32 %4, %5
  br i1 %cmp5, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond4
  %6 = load ptr, ptr %array.addr, align 8
  %7 = load i32, ptr %end, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %9 = load ptr, ptr %array.addr, align 8
  %10 = load i32, ptr %key_index, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %9, i64 %idxprom8
  %11 = load i32, ptr %arrayidx9, align 4
  %cmp10 = icmp slt i32 %8, %11
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body7
  %12 = load ptr, ptr %array.addr, align 8
  %13 = load i32, ptr %end, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32, ptr %12, i64 %idx.ext
  %14 = load ptr, ptr %array.addr, align 8
  %15 = load i32, ptr %key_index, align 4
  %idx.ext13 = sext i32 %15 to i64
  %add.ptr14 = getelementptr inbounds i32, ptr %14, i64 %idx.ext13
  call void @swap(ptr noundef %add.ptr, ptr noundef %add.ptr14)
  %16 = load i32, ptr %end, align 4
  store i32 %16, ptr %key_index, align 4
  br label %while.end

if.else:                                          ; preds = %while.body7
  %17 = load i32, ptr %end, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %end, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else
  br label %while.cond4, !llvm.loop !7

while.end:                                        ; preds = %if.then12, %while.cond4
  br label %while.cond16

while.cond16:                                     ; preds = %if.end32, %while.end
  %18 = load i32, ptr %start, align 4
  %19 = load i32, ptr %end, align 4
  %cmp17 = icmp ne i32 %18, %19
  br i1 %cmp17, label %while.body19, label %while.end33

while.body19:                                     ; preds = %while.cond16
  %20 = load ptr, ptr %array.addr, align 8
  %21 = load i32, ptr %start, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %20, i64 %idxprom20
  %22 = load i32, ptr %arrayidx21, align 4
  %23 = load ptr, ptr %array.addr, align 8
  %24 = load i32, ptr %key_index, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %23, i64 %idxprom22
  %25 = load i32, ptr %arrayidx23, align 4
  %cmp24 = icmp sgt i32 %22, %25
  br i1 %cmp24, label %if.then26, label %if.else31

if.then26:                                        ; preds = %while.body19
  %26 = load ptr, ptr %array.addr, align 8
  %27 = load i32, ptr %start, align 4
  %idx.ext27 = sext i32 %27 to i64
  %add.ptr28 = getelementptr inbounds i32, ptr %26, i64 %idx.ext27
  %28 = load ptr, ptr %array.addr, align 8
  %29 = load i32, ptr %key_index, align 4
  %idx.ext29 = sext i32 %29 to i64
  %add.ptr30 = getelementptr inbounds i32, ptr %28, i64 %idx.ext29
  call void @swap(ptr noundef %add.ptr28, ptr noundef %add.ptr30)
  %30 = load i32, ptr %start, align 4
  store i32 %30, ptr %key_index, align 4
  br label %while.end33

if.else31:                                        ; preds = %while.body19
  %31 = load i32, ptr %start, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %start, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else31
  br label %while.cond16, !llvm.loop !8

while.end33:                                      ; preds = %if.then26, %while.cond16
  br label %while.cond, !llvm.loop !9

while.end34:                                      ; preds = %while.cond
  %32 = load ptr, ptr %array.addr, align 8
  %33 = load i32, ptr %start, align 4
  %conv35 = sext i32 %33 to i64
  call void @quick_sort(ptr noundef %32, i64 noundef %conv35)
  %34 = load ptr, ptr %array.addr, align 8
  %35 = load i32, ptr %start, align 4
  %idx.ext36 = sext i32 %35 to i64
  %add.ptr37 = getelementptr inbounds i32, ptr %34, i64 %idx.ext36
  %add.ptr38 = getelementptr inbounds i32, ptr %add.ptr37, i64 1
  %36 = load i64, ptr %array_length.addr, align 8
  %37 = load i32, ptr %start, align 4
  %conv39 = sext i32 %37 to i64
  %sub40 = sub i64 %36, %conv39
  %sub41 = sub i64 %sub40, 1
  call void @quick_sort(ptr noundef %add.ptr38, i64 noundef %sub41)
  br label %return

return:                                           ; preds = %while.end34, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @swap(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %tmp, align 4
  %2 = load ptr, ptr %y.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %x.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %tmp, align 4
  %6 = load ptr, ptr %y.addr, align 8
  store i32 %5, ptr %6, align 4
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!9 = distinct !{!9, !6}
