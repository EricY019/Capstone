; ModuleID = './code/228-31542testCEx.c'
source_filename = "./code/228-31542testCEx.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.listnode_ = type { i32, ptr }

@__const.main.s = private unnamed_addr constant [9 x i8] c"analysis\00", align 1
@__const.main.v = private unnamed_addr constant [5 x i32] [i32 1, i32 6, i32 -3, i32 6, i32 0], align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" == quad ==> \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Durchschnitt %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @counta(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @sumArray(ptr noundef %values, i64 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %values.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %values, ptr %values.addr, align 8
  store i64 %count, ptr %count.addr, align 8
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @applyFkt(ptr noundef %values, i64 noundef %count, ptr noundef %fkt) #0 {
entry:
  %values.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %fkt.addr = alloca ptr, align 8
  store ptr %values, ptr %values.addr, align 8
  store i64 %count, ptr %count.addr, align 8
  store ptr %fkt, ptr %fkt.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @countAFile(ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @avgList(ptr noundef %head) #0 {
entry:
  %retval = alloca double, align 8
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load double, ptr %retval, align 8
  ret double %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @addFront(ptr noundef %head, i32 noundef %item) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %item.addr = alloca i32, align 4
  %newHead = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 %item, ptr %item.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %newHead, align 8
  %0 = load ptr, ptr %head.addr, align 8
  %1 = load ptr, ptr %newHead, align 8
  %next = getelementptr inbounds %struct.listnode_, ptr %1, i32 0, i32 1
  store ptr %0, ptr %next, align 8
  %2 = load i32, ptr %item.addr, align 4
  %3 = load ptr, ptr %newHead, align 8
  %data = getelementptr inbounds %struct.listnode_, ptr %3, i32 0, i32 0
  store i32 %2, ptr %data, align 8
  %4 = load ptr, ptr %newHead, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @freeList(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.listnode_, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next, align 8
  call void @freeList(ptr noundef %2)
  %3 = load ptr, ptr %head.addr, align 8
  call void @free(ptr noundef %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @quad(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [9 x i8], align 1
  %v = alloca [5 x i32], align 4
  %i = alloca i32, align 4
  %head = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s, ptr align 1 @__const.main.s, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %v, ptr align 4 @__const.main.v, i64 20, i1 false)
  store i32 0, ptr %i, align 4
  store ptr null, ptr %head, align 8
  %arraydecay = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 0
  %call = call i32 @counta(ptr noundef %arraydecay1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay, i32 noundef %call)
  %arraydecay3 = getelementptr inbounds [5 x i32], ptr %v, i64 0, i64 0
  %call4 = call i32 @sumArray(ptr noundef %arraydecay3, i64 noundef 5)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 10, i32 noundef %call4)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %v, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %arraydecay9 = getelementptr inbounds [5 x i32], ptr %v, i64 0, i64 0
  call void @applyFkt(ptr noundef %arraydecay9, i64 noundef 5, ptr noundef @quad)
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %for.end
  %4 = load i32, ptr %i, align 4
  %conv11 = sext i32 %4 to i64
  %cmp12 = icmp ult i64 %conv11, 5
  br i1 %cmp12, label %for.body14, label %for.end20

for.body14:                                       ; preds = %for.cond10
  %5 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %5 to i64
  %arrayidx16 = getelementptr inbounds [5 x i32], ptr %v, i64 0, i64 %idxprom15
  %6 = load i32, ptr %arrayidx16, align 4
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %6)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body14
  %7 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %7, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond10, !llvm.loop !7

for.end20:                                        ; preds = %for.cond10
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc30, %for.end20
  %8 = load i32, ptr %i, align 4
  %conv23 = sext i32 %8 to i64
  %cmp24 = icmp ult i64 %conv23, 5
  br i1 %cmp24, label %for.body26, label %for.end32

for.body26:                                       ; preds = %for.cond22
  %9 = load ptr, ptr %head, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %10 to i64
  %arrayidx28 = getelementptr inbounds [5 x i32], ptr %v, i64 0, i64 %idxprom27
  %11 = load i32, ptr %arrayidx28, align 4
  %call29 = call ptr @addFront(ptr noundef %9, i32 noundef %11)
  store ptr %call29, ptr %head, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %for.body26
  %12 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %12, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond22, !llvm.loop !8

for.end32:                                        ; preds = %for.cond22
  %13 = load ptr, ptr %head, align 8
  %call33 = call double @avgList(ptr noundef %13)
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %call33)
  %14 = load ptr, ptr %head, align 8
  call void @freeList(ptr noundef %14)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) }

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
