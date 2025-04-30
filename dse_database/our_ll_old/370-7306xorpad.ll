; ModuleID = './code/370-7306xorpad.c'
source_filename = "./code/370-7306xorpad.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@__const.main.pad = private unnamed_addr constant [3 x i8] c"\02\03\04", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"String: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @padit(ptr noundef %memtobepadded, i32 noundef %memsize, ptr noundef %pad, i32 noundef %size) #0 {
entry:
  %memtobepadded.addr = alloca ptr, align 8
  %memsize.addr = alloca i32, align 4
  %pad.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %padme = alloca ptr, align 8
  %i = alloca i32, align 4
  %current = alloca i32, align 4
  store ptr %memtobepadded, ptr %memtobepadded.addr, align 8
  store i32 %memsize, ptr %memsize.addr, align 4
  store ptr %pad, ptr %pad.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %memtobepadded.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %padme, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %current, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %memsize.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %current, align 4
  %5 = load i32, ptr %size.addr, align 4
  %cmp1 = icmp sge i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %current, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load ptr, ptr %padme, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load ptr, ptr %pad.addr, align 8
  %10 = load i32, ptr %current, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %current, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %9, i64 %idxprom2
  %11 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %11 to i32
  %xor = xor i32 %conv, %conv4
  %conv5 = trunc i32 %xor to i8
  %12 = load ptr, ptr %padme, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 %idxprom6
  store i8 %conv5, ptr %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @tohex(ptr noundef %num_buf, i32 noundef %size) #0 {
entry:
  %num_buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %str_buf = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %num_buf, ptr %num_buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %size.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call ptr @calloc(i64 noundef %conv, i64 noundef 0) #5
  store ptr %call, ptr %str_buf, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %str_buf, align 8
  %4 = load i32, ptr %i, align 4
  %mul2 = mul nsw i32 %4, 2
  %idxprom = sext i32 %mul2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %str_buf, align 8
  %6 = load i32, ptr %i, align 4
  %mul3 = mul nsw i32 %6, 2
  %idxprom4 = sext i32 %mul3 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 %idxprom4
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx5, i1 false, i1 true, i1 false)
  %8 = load ptr, ptr %num_buf.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i64 %idxprom6
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %call9 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arrayidx, i32 noundef 0, i64 noundef %7, ptr noundef @.str, i32 noundef %conv8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %str_buf, align 8
  ret ptr %12
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %memory = alloca ptr, align 8
  %pad = alloca [3 x i8], align 1
  %hex = alloca ptr, align 8
  %call = call ptr @calloc(i64 noundef 5, i64 noundef 1) #5
  store ptr %call, ptr %memory, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %pad, ptr align 1 @__const.main.pad, i64 3, i1 false)
  %arraydecay = getelementptr inbounds [3 x i8], ptr %pad, i64 0, i64 0
  call void @padit(ptr noundef %memory, i32 noundef 5, ptr noundef %arraydecay, i32 noundef 3)
  %0 = load ptr, ptr %memory, align 8
  %call1 = call ptr @tohex(ptr noundef %0, i32 noundef 5)
  store ptr %call1, ptr %hex, align 8
  %1 = load ptr, ptr %hex, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %1)
  %2 = load ptr, ptr %hex, align 8
  call void @free(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @printf(ptr noundef, ...) #2

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { allocsize(0,1) }

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
