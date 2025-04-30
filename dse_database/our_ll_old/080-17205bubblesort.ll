; ModuleID = './code/080-17205bubblesort.c'
source_filename = "./code/080-17205bubblesort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@__const.main.v = private unnamed_addr constant [11 x i32] [i32 1, i32 7, i32 14, i32 12, i32 12, i32 3, i32 5, i32 4, i32 732, i32 1000, i32 1], align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printarray(i32 noundef %size, ptr noundef %v) #0 {
entry:
  %size.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %size, ptr %size.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load i32, ptr %size.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %size.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %v.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx2, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @mini(i32 noundef %size, ptr noundef %v) #0 {
entry:
  %size.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %size, ptr %size.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 0, ptr %min, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %v.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load ptr, ptr %v.addr, align 8
  %6 = load i32, ptr %min, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp slt i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  store i32 %8, ptr %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %min, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swapi(ptr noundef %v, i32 noundef %j, i32 noundef %i) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %j.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %j, ptr %j.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %1 = load i32, ptr %j.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %temp, align 4
  %3 = load ptr, ptr %v.addr, align 8
  %4 = load i32, ptr %i.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %v.addr, align 8
  %7 = load i32, ptr %j.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 %idxprom3
  store i32 %5, ptr %arrayidx4, align 4
  %8 = load i32, ptr %temp, align 4
  %9 = load ptr, ptr %v.addr, align 8
  %10 = load i32, ptr %i.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 %idxprom5
  store i32 %8, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bubblesort(i32 noundef %size, ptr noundef %v) #0 {
entry:
  %size.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %max = alloca i32, align 4
  store i32 %size, ptr %size.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %size.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %size.addr, align 4
  %2 = load ptr, ptr %v.addr, align 8
  %call = call i32 @mini(i32 noundef %1, ptr noundef %2)
  store i32 %call, ptr %max, align 4
  %3 = load ptr, ptr %v.addr, align 8
  %4 = load i32, ptr %max, align 4
  call void @swapi(ptr noundef %3, i32 noundef %4, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %size.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %size.addr, align 4
  %6 = load ptr, ptr %v.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %v.addr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %v = alloca [11 x i32], align 4
  %size = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %v, ptr align 4 @__const.main.v, i64 44, i1 false)
  store i32 11, ptr %size, align 4
  %0 = load i32, ptr %size, align 4
  %arraydecay = getelementptr inbounds [11 x i32], ptr %v, i64 0, i64 0
  call void @printarray(i32 noundef %0, ptr noundef %arraydecay)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %1 = load i32, ptr %size, align 4
  %arraydecay1 = getelementptr inbounds [11 x i32], ptr %v, i64 0, i64 0
  call void @bubblesort(i32 noundef %1, ptr noundef %arraydecay1)
  %2 = load i32, ptr %size, align 4
  %arraydecay2 = getelementptr inbounds [11 x i32], ptr %v, i64 0, i64 0
  call void @printarray(i32 noundef %2, ptr noundef %arraydecay2)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
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
