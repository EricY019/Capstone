; ModuleID = './code/128-1151083_remove_duplicates_from_sorted_list.c'
source_filename = "./code/128-1151083_remove_duplicates_from_sorted_list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ListNode = type { i32, ptr }

@.str = private unnamed_addr constant [7 x i8] c"%d -> \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@__const.main.arr = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 2, i32 3, i32 3], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @deleteDuplicates(ptr noundef %head) #0 {
entry:
  %retval = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %ptr, align 8
  %1 = load ptr, ptr %head.addr, align 8
  store ptr %1, ptr %tmp, align 8
  %2 = load ptr, ptr %head.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ptr, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %5 = load ptr, ptr %ptr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %tmp, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %val, align 8
  %8 = load ptr, ptr %ptr, align 8
  %val1 = getelementptr inbounds %struct.ListNode, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %val1, align 8
  %cmp2 = icmp eq i32 %7, %9
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %10 = load ptr, ptr %ptr, align 8
  %next4 = getelementptr inbounds %struct.ListNode, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %next4, align 8
  %12 = load ptr, ptr %tmp, align 8
  %next5 = getelementptr inbounds %struct.ListNode, ptr %12, i32 0, i32 1
  store ptr %11, ptr %next5, align 8
  %13 = load ptr, ptr %ptr, align 8
  call void @free(ptr noundef %13)
  br label %if.end6

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %ptr, align 8
  store ptr %14, ptr %tmp, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %15 = load ptr, ptr %tmp, align 8
  %next7 = getelementptr inbounds %struct.ListNode, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next7, align 8
  store ptr %16, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %head.addr, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @createList(ptr noundef %arr, i32 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %arr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr null, ptr %ptr, align 8
  store ptr null, ptr %head, align 8
  store ptr null, ptr %tmp, align 8
  %0 = load i32, ptr %len.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %ptr, align 8
  %1 = load ptr, ptr %arr.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load ptr, ptr %ptr, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %3, i32 0, i32 0
  store i32 %2, ptr %val, align 8
  %4 = load ptr, ptr %ptr, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %4, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %5 = load ptr, ptr %ptr, align 8
  store ptr %5, ptr %head, align 8
  %6 = load ptr, ptr %ptr, align 8
  store ptr %6, ptr %tmp, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %len.addr, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call ptr @malloc(i64 noundef 16) #4
  store ptr %call2, ptr %ptr, align 8
  %9 = load ptr, ptr %arr.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 %idxprom
  %11 = load i32, ptr %arrayidx3, align 4
  %12 = load ptr, ptr %ptr, align 8
  %val4 = getelementptr inbounds %struct.ListNode, ptr %12, i32 0, i32 0
  store i32 %11, ptr %val4, align 8
  %13 = load ptr, ptr %ptr, align 8
  %next5 = getelementptr inbounds %struct.ListNode, ptr %13, i32 0, i32 1
  store ptr null, ptr %next5, align 8
  %14 = load ptr, ptr %ptr, align 8
  %15 = load ptr, ptr %tmp, align 8
  %next6 = getelementptr inbounds %struct.ListNode, ptr %15, i32 0, i32 1
  store ptr %14, ptr %next6, align 8
  %16 = load ptr, ptr %ptr, align 8
  store ptr %16, ptr %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %head, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printList(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %ptr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %ptr, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %val, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %4 = load ptr, ptr %ptr, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [5 x i32], align 4
  %head = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 4 @__const.main.arr, i64 20, i1 false)
  store ptr null, ptr %head, align 8
  %arraydecay = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 0
  %call = call ptr @createList(ptr noundef %arraydecay, i32 noundef 5)
  store ptr %call, ptr %head, align 8
  %0 = load ptr, ptr %head, align 8
  call void @printList(ptr noundef %0)
  %1 = load ptr, ptr %head, align 8
  %call1 = call ptr @deleteDuplicates(ptr noundef %1)
  %2 = load ptr, ptr %head, align 8
  call void @printList(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
