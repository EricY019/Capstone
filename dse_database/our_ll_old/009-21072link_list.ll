; ModuleID = './code/009-21072link_list.c'
source_filename = "./code/009-21072link_list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._node = type { i32, ptr, ptr }

@gListHead = internal global ptr null, align 8
@gListTail = internal global ptr null, align 8
@.str = private unnamed_addr constant [20 x i8] c"[%s:%s(%d)]::calloc\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"./code/009-21072link_list.c\00", align 1
@__FUNCTION__.push_back = private unnamed_addr constant [10 x i8] c"push_back\00", align 1
@__FUNCTION__.push_front = private unnamed_addr constant [11 x i8] c"push_front\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"[%s:%s(%d)]::mData=%d\0A\00", align 1
@__FUNCTION__.traverse = private unnamed_addr constant [9 x i8] c"traverse\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @push_back(i32 noundef %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %pNode = alloca ptr, align 8
  store i32 %data, ptr %data.addr, align 4
  %call = call ptr @calloc(i64 noundef 1, i64 noundef 24) #3
  store ptr %call, ptr %pNode, align 8
  %0 = load ptr, ptr %pNode, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %data.addr, align 4
  %2 = load ptr, ptr %pNode, align 8
  %mData = getelementptr inbounds %struct._node, ptr %2, i32 0, i32 0
  store i32 %1, ptr %mData, align 8
  %3 = load ptr, ptr @gListHead, align 8
  %cmp = icmp eq ptr null, %3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr @gListHead, align 8
  %5 = load ptr, ptr @gListTail, align 8
  %cmp1 = icmp eq ptr %4, %5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %pNode, align 8
  store ptr %6, ptr @gListTail, align 8
  store ptr %6, ptr @gListHead, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %7 = load ptr, ptr %pNode, align 8
  %8 = load ptr, ptr @gListTail, align 8
  %mNext = getelementptr inbounds %struct._node, ptr %8, i32 0, i32 2
  store ptr %7, ptr %mNext, align 8
  %9 = load ptr, ptr %pNode, align 8
  store ptr %9, ptr @gListTail, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  store ptr null, ptr %pNode, align 8
  br label %if.end5

if.else3:                                         ; preds = %entry
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__FUNCTION__.push_back, i32 noundef 32)
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @push_front(i32 noundef %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %pNode = alloca ptr, align 8
  store i32 %data, ptr %data.addr, align 4
  %call = call ptr @calloc(i64 noundef 1, i64 noundef 24) #3
  store ptr %call, ptr %pNode, align 8
  %0 = load ptr, ptr %pNode, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %data.addr, align 4
  %2 = load ptr, ptr %pNode, align 8
  %mData = getelementptr inbounds %struct._node, ptr %2, i32 0, i32 0
  store i32 %1, ptr %mData, align 8
  %3 = load ptr, ptr @gListHead, align 8
  %cmp = icmp eq ptr null, %3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr @gListHead, align 8
  %5 = load ptr, ptr @gListTail, align 8
  %cmp1 = icmp eq ptr %4, %5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %pNode, align 8
  store ptr %6, ptr @gListTail, align 8
  store ptr %6, ptr @gListHead, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %7 = load ptr, ptr @gListHead, align 8
  %8 = load ptr, ptr %pNode, align 8
  %mNext = getelementptr inbounds %struct._node, ptr %8, i32 0, i32 2
  store ptr %7, ptr %mNext, align 8
  %9 = load ptr, ptr %pNode, align 8
  store ptr %9, ptr @gListHead, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.else3:                                         ; preds = %entry
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__FUNCTION__.push_front, i32 noundef 47)
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @delete(i32 noundef %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %pPrev = alloca ptr, align 8
  %pCurr = alloca ptr, align 8
  store i32 %data, ptr %data.addr, align 4
  %0 = load ptr, ptr @gListHead, align 8
  store ptr %0, ptr %pCurr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %1 = load ptr, ptr %pCurr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pCurr, align 8
  %mData = getelementptr inbounds %struct._node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %mData, align 8
  %4 = load i32, ptr %data.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %pCurr, align 8
  %6 = load ptr, ptr @gListHead, align 8
  %cmp1 = icmp eq ptr %5, %6
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %pCurr, align 8
  %mNext = getelementptr inbounds %struct._node, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %mNext, align 8
  store ptr %8, ptr @gListHead, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %pCurr, align 8
  %mNext3 = getelementptr inbounds %struct._node, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %mNext3, align 8
  %11 = load ptr, ptr %pPrev, align 8
  %mNext4 = getelementptr inbounds %struct._node, ptr %11, i32 0, i32 2
  store ptr %10, ptr %mNext4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %12 = load ptr, ptr %pCurr, align 8
  call void @free(ptr noundef %12)
  br label %while.end

if.end5:                                          ; preds = %while.body
  %13 = load ptr, ptr %pCurr, align 8
  store ptr %13, ptr %pPrev, align 8
  %14 = load ptr, ptr %pCurr, align 8
  %mNext6 = getelementptr inbounds %struct._node, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %mNext6, align 8
  store ptr %15, ptr %pCurr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.end, %while.cond
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @update(i32 noundef %old, i32 noundef %new) #0 {
entry:
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %pNode = alloca ptr, align 8
  store i32 %old, ptr %old.addr, align 4
  store i32 %new, ptr %new.addr, align 4
  %0 = load ptr, ptr @gListHead, align 8
  store ptr %0, ptr %pNode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %pNode, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pNode, align 8
  %mData = getelementptr inbounds %struct._node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %mData, align 8
  %4 = load i32, ptr %old.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %new.addr, align 4
  %6 = load ptr, ptr %pNode, align 8
  %mData1 = getelementptr inbounds %struct._node, ptr %6, i32 0, i32 0
  store i32 %5, ptr %mData1, align 8
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %pNode, align 8
  %mNext = getelementptr inbounds %struct._node, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %mNext, align 8
  store ptr %8, ptr %pNode, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @traverse() #0 {
entry:
  %pNode = alloca ptr, align 8
  %0 = load ptr, ptr @gListHead, align 8
  store ptr %0, ptr %pNode, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %pNode, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pNode, align 8
  %mData = getelementptr inbounds %struct._node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %mData, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef @.str.1, ptr noundef @__FUNCTION__.traverse, i32 noundef 83, i32 noundef %3)
  %4 = load ptr, ptr %pNode, align 8
  %mNext = getelementptr inbounds %struct._node, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %mNext, align 8
  store ptr %5, ptr %pNode, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @clear() #0 {
entry:
  %pTemp = alloca ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @gListHead, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr @gListHead, align 8
  store ptr %1, ptr %pTemp, align 8
  %2 = load ptr, ptr @gListHead, align 8
  %mNext = getelementptr inbounds %struct._node, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %mNext, align 8
  store ptr %3, ptr @gListHead, align 8
  %4 = load ptr, ptr %pTemp, align 8
  call void @free(ptr noundef %4)
  store ptr null, ptr %pTemp, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  call void @push_back(i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc4, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp sgt i32 %3, -20
  br i1 %cmp2, label %for.body3, label %for.end5

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  call void @push_front(i32 noundef %4)
  br label %for.inc4

for.inc4:                                         ; preds = %for.body3
  %5 = load i32, ptr %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond1, !llvm.loop !11

for.end5:                                         ; preds = %for.cond1
  call void @delete(i32 noundef 10)
  call void @delete(i32 noundef -10)
  call void @update(i32 noundef 0, i32 noundef 97)
  call void @traverse()
  call void @clear()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) }

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
