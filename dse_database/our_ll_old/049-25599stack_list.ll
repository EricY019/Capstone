; ModuleID = './code/049-25599stack_list.c'
source_filename = "./code/049-25599stack_list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.stackNode = type { i32, ptr }

@head = global ptr null, align 8
@.str = private unnamed_addr constant [19 x i8] c"%d added to stack \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Initial Contents: \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%d popped from stack. \00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Contents after popping off 5 items: \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @newNode(i32 noundef %item, ptr noundef %h) #0 {
entry:
  %item.addr = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %nnode = alloca ptr, align 8
  store i32 %item, ptr %item.addr, align 4
  store ptr %h, ptr %h.addr, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %nnode, align 8
  %0 = load i32, ptr %item.addr, align 4
  %1 = load ptr, ptr %nnode, align 8
  %item1 = getelementptr inbounds %struct.stackNode, ptr %1, i32 0, i32 0
  store i32 %0, ptr %item1, align 8
  %2 = load ptr, ptr %h.addr, align 8
  %3 = load ptr, ptr %nnode, align 8
  %next = getelementptr inbounds %struct.stackNode, ptr %3, i32 0, i32 1
  store ptr %2, ptr %next, align 8
  %4 = load ptr, ptr %nnode, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @stackInit(i32 noundef %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr null, ptr @head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @stackEmpty() #0 {
entry:
  %0 = load ptr, ptr @head, align 8
  %cmp = icmp eq ptr %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @stackPush(i32 noundef %item) #0 {
entry:
  %item.addr = alloca i32, align 4
  store i32 %item, ptr %item.addr, align 4
  %0 = load i32, ptr %item.addr, align 4
  %1 = load ptr, ptr @head, align 8
  %call = call ptr @newNode(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr @head, align 8
  %2 = load i32, ptr %item.addr, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @stackPop() #0 {
entry:
  %item = alloca i32, align 4
  %t = alloca ptr, align 8
  %0 = load ptr, ptr @head, align 8
  %item1 = getelementptr inbounds %struct.stackNode, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %item1, align 8
  store i32 %1, ptr %item, align 4
  %2 = load ptr, ptr @head, align 8
  %next = getelementptr inbounds %struct.stackNode, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next, align 8
  store ptr %3, ptr %t, align 8
  %4 = load ptr, ptr @head, align 8
  call void @free(ptr noundef %4)
  %5 = load ptr, ptr %t, align 8
  store ptr %5, ptr @head, align 8
  %6 = load i32, ptr %item, align 4
  ret i32 %6
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @stackDisplay() #0 {
entry:
  %t = alloca ptr, align 8
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %t, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %t, align 8
  %item = getelementptr inbounds %struct.stackNode, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %item, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  %4 = load ptr, ptr %t, align 8
  %next = getelementptr inbounds %struct.stackNode, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %t, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %item = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @stackInit(i32 noundef 100)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand()
  %rem = srem i32 %call, 100
  call void @stackPush(i32 noundef %rem)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @stackDisplay()
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %2 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %2, 5
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %call7 = call i32 @stackEmpty()
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body6
  %call8 = call i32 @stackPop()
  store i32 %call8, ptr %item, align 4
  %3 = load i32, ptr %item, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %3)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc11

for.inc11:                                        ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %4, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond4, !llvm.loop !8

for.end13:                                        ; preds = %for.cond4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  call void @stackDisplay()
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare i32 @rand() #2

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
