; ModuleID = './code/055-11316ReverseLinkedListII.c'
source_filename = "./code/055-11316ReverseLinkedListII.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ListNode = type { i32, ptr }

@.str = private unnamed_addr constant [7 x i8] c"[%d]->\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@val = global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@head = global ptr null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printList(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %head.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %head.addr, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %val, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %head.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reverseBetween(ptr noundef %head, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %pb = alloca ptr, align 8
  %ph = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %next = alloca ptr, align 8
  %h = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %sFlag = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load i32, ptr %m.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %len, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %sFlag, align 4
  %2 = load ptr, ptr %head.addr, align 8
  store ptr %2, ptr %p, align 8
  %3 = load i32, ptr %m.addr, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %sFlag, align 4
  %4 = load ptr, ptr %head.addr, align 8
  store ptr %4, ptr %pa, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %5 = load i32, ptr %m.addr, align 4
  %cmp1 = icmp sge i32 %5, 3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %p, align 8
  %next2 = getelementptr inbounds %struct.ListNode, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next2, align 8
  store ptr %7, ptr %p, align 8
  %8 = load i32, ptr %m.addr, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %m.addr, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %p, align 8
  store ptr %9, ptr %ph, align 8
  %10 = load ptr, ptr %p, align 8
  %next3 = getelementptr inbounds %struct.ListNode, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %next3, align 8
  store ptr %11, ptr %pa, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %12 = load ptr, ptr %head.addr, align 8
  store ptr %12, ptr %p, align 8
  %13 = load i32, ptr %n.addr, align 4
  %sub4 = sub nsw i32 %13, 1
  store i32 %sub4, ptr %n.addr, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %while.body7, %if.end
  %14 = load i32, ptr %n.addr, align 4
  %dec6 = add nsw i32 %14, -1
  store i32 %dec6, ptr %n.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body7, label %while.end9

while.body7:                                      ; preds = %while.cond5
  %15 = load ptr, ptr %p, align 8
  %next8 = getelementptr inbounds %struct.ListNode, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next8, align 8
  store ptr %16, ptr %p, align 8
  br label %while.cond5, !llvm.loop !8

while.end9:                                       ; preds = %while.cond5
  %17 = load ptr, ptr %p, align 8
  store ptr %17, ptr %pb, align 8
  %18 = load ptr, ptr %pa, align 8
  %next10 = getelementptr inbounds %struct.ListNode, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next10, align 8
  store ptr %19, ptr %next, align 8
  %20 = load ptr, ptr %pb, align 8
  %next11 = getelementptr inbounds %struct.ListNode, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %next11, align 8
  store ptr %21, ptr %prev, align 8
  %22 = load ptr, ptr %pa, align 8
  store ptr %22, ptr %p, align 8
  br label %while.cond12

while.cond12:                                     ; preds = %while.body15, %while.end9
  %23 = load i32, ptr %len, align 4
  %dec13 = add nsw i32 %23, -1
  store i32 %dec13, ptr %len, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %while.body15, label %while.end18

while.body15:                                     ; preds = %while.cond12
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  %25 = load ptr, ptr %p, align 8
  %next16 = getelementptr inbounds %struct.ListNode, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %next16, align 8
  store ptr %26, ptr %next, align 8
  %27 = load ptr, ptr %p, align 8
  store ptr %27, ptr %h, align 8
  %28 = load ptr, ptr %prev, align 8
  %29 = load ptr, ptr %h, align 8
  %next17 = getelementptr inbounds %struct.ListNode, ptr %29, i32 0, i32 1
  store ptr %28, ptr %next17, align 8
  %30 = load ptr, ptr %p, align 8
  store ptr %30, ptr %prev, align 8
  %31 = load ptr, ptr %next, align 8
  store ptr %31, ptr %p, align 8
  br label %while.cond12, !llvm.loop !9

while.end18:                                      ; preds = %while.cond12
  %32 = load i32, ptr %sFlag, align 4
  %tobool19 = icmp ne i32 %32, 0
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %while.end18
  %33 = load ptr, ptr %h, align 8
  store ptr %33, ptr %head.addr, align 8
  br label %if.end23

if.else21:                                        ; preds = %while.end18
  %34 = load ptr, ptr %h, align 8
  %35 = load ptr, ptr %ph, align 8
  %next22 = getelementptr inbounds %struct.ListNode, ptr %35, i32 0, i32 1
  store ptr %34, ptr %next22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then20
  %36 = load ptr, ptr %head.addr, align 8
  ret ptr %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @initGlobalList() #0 {
entry:
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr @head, align 8
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr @val, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load ptr, ptr %p, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %4, i32 0, i32 0
  store i32 %3, ptr %val, align 8
  %5 = load i32, ptr %i, align 4
  %cmp1 = icmp ne i32 %5, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call2 = call ptr @malloc(i64 noundef 16) #3
  %6 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %6, i32 0, i32 1
  store ptr %call2, ptr %next, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %p, align 8
  %next3 = getelementptr inbounds %struct.ListNode, ptr %7, i32 0, i32 1
  store ptr null, ptr %next3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %p, align 8
  %next4 = getelementptr inbounds %struct.ListNode, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next4, align 8
  store ptr %9, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @initGlobalList()
  %0 = load ptr, ptr @head, align 8
  %call = call ptr @reverseBetween(ptr noundef %0, i32 noundef 1, i32 noundef 3)
  store ptr %call, ptr @head, align 8
  %1 = load ptr, ptr @head, align 8
  call void @printList(ptr noundef %1)
  call void @initGlobalList()
  %2 = load ptr, ptr @head, align 8
  %call1 = call ptr @reverseBetween(ptr noundef %2, i32 noundef 2, i32 noundef 4)
  store ptr %call1, ptr @head, align 8
  %3 = load ptr, ptr @head, align 8
  call void @printList(ptr noundef %3)
  call void @initGlobalList()
  %4 = load ptr, ptr @head, align 8
  %call2 = call ptr @reverseBetween(ptr noundef %4, i32 noundef 3, i32 noundef 5)
  store ptr %call2, ptr @head, align 8
  %5 = load ptr, ptr @head, align 8
  call void @printList(ptr noundef %5)
  call void @initGlobalList()
  %6 = load ptr, ptr @head, align 8
  %call3 = call ptr @reverseBetween(ptr noundef %6, i32 noundef 1, i32 noundef 5)
  store ptr %call3, ptr @head, align 8
  %7 = load ptr, ptr @head, align 8
  call void @printList(ptr noundef %7)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
