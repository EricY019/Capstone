; ModuleID = './code/318-22490likedlist.c'
source_filename = "./code/318-22490likedlist.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Node = type { i32, ptr }

@head = global ptr null, align 8
@.str = private unnamed_addr constant [24 x i8] c"no member in this list\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insertToTail(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  %temp2 = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %temp, align 8
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %temp, align 8
  %val1 = getelementptr inbounds %struct.Node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %val1, align 8
  %2 = load ptr, ptr %temp, align 8
  %next = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %3 = load ptr, ptr @head, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @head, align 8
  %5 = load ptr, ptr %temp, align 8
  %next2 = getelementptr inbounds %struct.Node, ptr %5, i32 0, i32 1
  store ptr %4, ptr %next2, align 8
  %6 = load ptr, ptr %temp, align 8
  store ptr %6, ptr @head, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr @head, align 8
  store ptr %7, ptr %temp2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %temp2, align 8
  %next3 = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next3, align 8
  %cmp4 = icmp ne ptr %9, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %temp2, align 8
  %next5 = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %next5, align 8
  store ptr %11, ptr %temp2, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %temp, align 8
  %next6 = getelementptr inbounds %struct.Node, ptr %12, i32 0, i32 1
  store ptr null, ptr %next6, align 8
  %13 = load ptr, ptr %temp, align 8
  %14 = load ptr, ptr %temp2, align 8
  %next7 = getelementptr inbounds %struct.Node, ptr %14, i32 0, i32 1
  store ptr %13, ptr %next7, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insertToFront(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %temp, align 8
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %temp, align 8
  %val1 = getelementptr inbounds %struct.Node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %val1, align 8
  %2 = load ptr, ptr @head, align 8
  %3 = load ptr, ptr %temp, align 8
  %next = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 1
  store ptr %2, ptr %next, align 8
  %4 = load ptr, ptr %temp, align 8
  store ptr %4, ptr @head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @deleteN(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp2 = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %temp, align 8
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @head, align 8
  %next = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next, align 8
  store ptr %3, ptr @head, align 8
  %4 = load ptr, ptr %temp, align 8
  call void @free(ptr noundef %4)
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %6, 2
  %cmp1 = icmp slt i32 %5, %sub
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %temp, align 8
  %next2 = getelementptr inbounds %struct.Node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next2, align 8
  store ptr %8, ptr %temp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %temp, align 8
  %next3 = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %next3, align 8
  store ptr %11, ptr %temp2, align 8
  %12 = load ptr, ptr %temp2, align 8
  %next4 = getelementptr inbounds %struct.Node, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %next4, align 8
  %14 = load ptr, ptr %temp, align 8
  %next5 = getelementptr inbounds %struct.Node, ptr %14, i32 0, i32 1
  store ptr %13, ptr %next5, align 8
  %15 = load ptr, ptr %temp2, align 8
  call void @free(ptr noundef %15)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @clear() #0 {
entry:
  %temp = alloca ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @head, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr @head, align 8
  store ptr %1, ptr %temp, align 8
  %2 = load ptr, ptr @head, align 8
  %next = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next, align 8
  store ptr %3, ptr @head, align 8
  %4 = load ptr, ptr %temp, align 8
  call void @free(ptr noundef %4)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Print() #0 {
entry:
  %temp = alloca ptr, align 8
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %temp, align 8
  %1 = load ptr, ptr %temp, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load ptr, ptr %temp, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %temp, align 8
  %val = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %val, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  %5 = load ptr, ptr %temp, align 8
  %next = getelementptr inbounds %struct.Node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr %temp, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverseByIter() #0 {
entry:
  %current = alloca ptr, align 8
  %next = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %current, align 8
  store ptr null, ptr %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %current, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %current, align 8
  %next1 = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next1, align 8
  store ptr %3, ptr %next, align 8
  %4 = load ptr, ptr %prev, align 8
  %5 = load ptr, ptr %current, align 8
  %next2 = getelementptr inbounds %struct.Node, ptr %5, i32 0, i32 1
  store ptr %4, ptr %next2, align 8
  %6 = load ptr, ptr %current, align 8
  store ptr %6, ptr %prev, align 8
  %7 = load ptr, ptr %next, align 8
  store ptr %7, ptr %current, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %prev, align 8
  store ptr %8, ptr @head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverseByRecu(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %next = getelementptr inbounds %struct.Node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %p.addr, align 8
  store ptr %3, ptr @head, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %p.addr, align 8
  %next2 = getelementptr inbounds %struct.Node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next2, align 8
  call void @reverseByRecu(ptr noundef %5)
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %next3 = getelementptr inbounds %struct.Node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next3, align 8
  %next4 = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 1
  store ptr %6, ptr %next4, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %next5 = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 1
  store ptr null, ptr %next5, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reverseByRecu_2(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %temp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %next = getelementptr inbounds %struct.Node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %p.addr, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %p.addr, align 8
  %next2 = getelementptr inbounds %struct.Node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next2, align 8
  %call = call ptr @reverseByRecu_2(ptr noundef %5)
  store ptr %call, ptr %temp, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %next3 = getelementptr inbounds %struct.Node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next3, align 8
  %next4 = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 1
  store ptr %6, ptr %next4, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %next5 = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 1
  store ptr null, ptr %next5, align 8
  %10 = load ptr, ptr %temp, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  call void @insertToFront(i32 noundef 2)
  call void @insertToFront(i32 noundef 100)
  call void @insertToFront(i32 noundef 234)
  call void @insertToFront(i32 noundef 32)
  call void @insertToFront(i32 noundef 50)
  call void @insertToFront(i32 noundef 99)
  call void @Print()
  %0 = load ptr, ptr @head, align 8
  call void @reverseByRecu(ptr noundef %0)
  call void @Print()
  %1 = load ptr, ptr @head, align 8
  %call = call ptr @reverseByRecu_2(ptr noundef %1)
  call void @Print()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
