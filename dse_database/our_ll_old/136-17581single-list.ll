; ModuleID = './code/136-17581single-list.c'
source_filename = "./code/136-17581single-list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.sl_node = type { i32, ptr }

@.str = private unnamed_addr constant [11 x i8] c"traversal \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c", total %d nodes traversed\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"deleted %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @construct_sl(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %head = alloca ptr, align 8
  %p = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr null, ptr %head, align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %p1, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %p, align 8
  %0 = load ptr, ptr %p, align 8
  %value = getelementptr inbounds %struct.sl_node, ptr %0, i32 0, i32 0
  store i32 0, ptr %value, align 8
  %1 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.sl_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %2 = load ptr, ptr %p, align 8
  store ptr %2, ptr %head, align 8
  %3 = load ptr, ptr %p, align 8
  store ptr %3, ptr %p1, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call1, ptr %p, align 8
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %p, align 8
  %value2 = getelementptr inbounds %struct.sl_node, ptr %7, i32 0, i32 0
  store i32 %6, ptr %value2, align 8
  %8 = load ptr, ptr %p, align 8
  %next3 = getelementptr inbounds %struct.sl_node, ptr %8, i32 0, i32 1
  store ptr null, ptr %next3, align 8
  %9 = load ptr, ptr %p, align 8
  %10 = load ptr, ptr %p1, align 8
  %next4 = getelementptr inbounds %struct.sl_node, ptr %10, i32 0, i32 1
  store ptr %9, ptr %next4, align 8
  %11 = load ptr, ptr %p, align 8
  store ptr %11, ptr %p1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %head, align 8
  ret ptr %13
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @traverse_sl(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cnt = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %p, align 8
  store i32 0, ptr %cnt, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8
  %value = getelementptr inbounds %struct.sl_node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %value, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  %4 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.sl_node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %p, align 8
  %6 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %cnt, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %cnt, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %7)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @del_node_p(ptr noundef %phead, i32 noundef %vtd) #0 {
entry:
  %retval = alloca i32, align 4
  %phead.addr = alloca ptr, align 8
  %vtd.addr = alloca i32, align 4
  %prev = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %phead, ptr %phead.addr, align 8
  store i32 %vtd, ptr %vtd.addr, align 4
  store ptr null, ptr %prev, align 8
  %0 = load ptr, ptr %phead.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then, %entry
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8
  %value = getelementptr inbounds %struct.sl_node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %value, align 8
  %4 = load i32, ptr %vtd.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p, align 8
  store ptr %5, ptr %prev, align 8
  %6 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.sl_node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next, align 8
  store ptr %7, ptr %p, align 8
  br label %while.cond, !llvm.loop !8

if.else:                                          ; preds = %while.body
  %8 = load ptr, ptr %p, align 8
  %next2 = getelementptr inbounds %struct.sl_node, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next2, align 8
  %cmp3 = icmp ne ptr %9, null
  br i1 %cmp3, label %if.then4, label %if.else17

if.then4:                                         ; preds = %if.else
  %10 = load ptr, ptr %p, align 8
  %11 = load ptr, ptr %phead.addr, align 8
  %cmp5 = icmp eq ptr %10, %11
  br i1 %cmp5, label %if.then6, label %if.else14

if.then6:                                         ; preds = %if.then4
  %12 = load ptr, ptr %p, align 8
  %next7 = getelementptr inbounds %struct.sl_node, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %next7, align 8
  store ptr %13, ptr %p, align 8
  %14 = load ptr, ptr %phead.addr, align 8
  %next8 = getelementptr inbounds %struct.sl_node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %next8, align 8
  %value9 = getelementptr inbounds %struct.sl_node, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %value9, align 8
  %17 = load ptr, ptr %phead.addr, align 8
  %value10 = getelementptr inbounds %struct.sl_node, ptr %17, i32 0, i32 0
  store i32 %16, ptr %value10, align 8
  %18 = load ptr, ptr %phead.addr, align 8
  %next11 = getelementptr inbounds %struct.sl_node, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next11, align 8
  %next12 = getelementptr inbounds %struct.sl_node, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %next12, align 8
  %21 = load ptr, ptr %phead.addr, align 8
  %next13 = getelementptr inbounds %struct.sl_node, ptr %21, i32 0, i32 1
  store ptr %20, ptr %next13, align 8
  %22 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %22)
  store i32 0, ptr %retval, align 4
  br label %return

if.else14:                                        ; preds = %if.then4
  %23 = load ptr, ptr %p, align 8
  %next15 = getelementptr inbounds %struct.sl_node, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %next15, align 8
  %25 = load ptr, ptr %prev, align 8
  %next16 = getelementptr inbounds %struct.sl_node, ptr %25, i32 0, i32 1
  store ptr %24, ptr %next16, align 8
  %26 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %26)
  store i32 0, ptr %retval, align 4
  br label %return

if.else17:                                        ; preds = %if.else
  %27 = load ptr, ptr %prev, align 8
  %cmp18 = icmp ne ptr %27, null
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else17
  %28 = load ptr, ptr %prev, align 8
  %next20 = getelementptr inbounds %struct.sl_node, ptr %28, i32 0, i32 1
  store ptr null, ptr %next20, align 8
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else17
  %29 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %29)
  store ptr null, ptr %p, align 8
  store i32 0, ptr %retval, align 4
  br label %return

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end, %if.else14, %if.then6
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @del_node_p_return(ptr noundef %phead, i32 noundef %vtd) #0 {
entry:
  %retval = alloca ptr, align 8
  %phead.addr = alloca ptr, align 8
  %vtd.addr = alloca i32, align 4
  %prev = alloca ptr, align 8
  %p = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  store ptr %phead, ptr %phead.addr, align 8
  store i32 %vtd, ptr %vtd.addr, align 4
  store ptr null, ptr %prev, align 8
  %0 = load ptr, ptr %phead.addr, align 8
  store ptr %0, ptr %p, align 8
  store ptr null, ptr %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.then, %entry
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8
  %value = getelementptr inbounds %struct.sl_node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %value, align 8
  %4 = load i32, ptr %vtd.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p, align 8
  store ptr %5, ptr %prev, align 8
  %6 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.sl_node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next, align 8
  store ptr %7, ptr %p, align 8
  br label %while.cond, !llvm.loop !9

if.else:                                          ; preds = %while.body
  %8 = load ptr, ptr %p, align 8
  %next2 = getelementptr inbounds %struct.sl_node, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next2, align 8
  %cmp3 = icmp ne ptr %9, null
  br i1 %cmp3, label %if.then4, label %if.else13

if.then4:                                         ; preds = %if.else
  %10 = load ptr, ptr %p, align 8
  %11 = load ptr, ptr %phead.addr, align 8
  %cmp5 = icmp eq ptr %10, %11
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.then4
  %12 = load ptr, ptr %phead.addr, align 8
  store ptr %12, ptr %p1, align 8
  %13 = load ptr, ptr %phead.addr, align 8
  %next7 = getelementptr inbounds %struct.sl_node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next7, align 8
  store ptr %14, ptr %phead.addr, align 8
  %15 = load ptr, ptr %p, align 8
  %next8 = getelementptr inbounds %struct.sl_node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next8, align 8
  store ptr %16, ptr %p, align 8
  %17 = load ptr, ptr %p1, align 8
  call void @free(ptr noundef %17)
  br label %if.end

if.else9:                                         ; preds = %if.then4
  %18 = load ptr, ptr %p, align 8
  %next10 = getelementptr inbounds %struct.sl_node, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next10, align 8
  %20 = load ptr, ptr %prev, align 8
  %next11 = getelementptr inbounds %struct.sl_node, ptr %20, i32 0, i32 1
  store ptr %19, ptr %next11, align 8
  %21 = load ptr, ptr %p, align 8
  store ptr %21, ptr %p1, align 8
  %22 = load ptr, ptr %p, align 8
  %next12 = getelementptr inbounds %struct.sl_node, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %next12, align 8
  store ptr %23, ptr %p, align 8
  %24 = load ptr, ptr %p1, align 8
  call void @free(ptr noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then6
  br label %if.end19

if.else13:                                        ; preds = %if.else
  %25 = load ptr, ptr %p, align 8
  %26 = load ptr, ptr %phead.addr, align 8
  %cmp14 = icmp eq ptr %25, %26
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else13
  %27 = load ptr, ptr %p, align 8
  store ptr %27, ptr %p1, align 8
  store ptr null, ptr %phead.addr, align 8
  store ptr null, ptr %p, align 8
  %28 = load ptr, ptr %p1, align 8
  call void @free(ptr noundef %28)
  br label %if.end18

if.else16:                                        ; preds = %if.else13
  %29 = load ptr, ptr %prev, align 8
  %next17 = getelementptr inbounds %struct.sl_node, ptr %29, i32 0, i32 1
  store ptr null, ptr %next17, align 8
  %30 = load ptr, ptr %p, align 8
  store ptr %30, ptr %p1, align 8
  store ptr null, ptr %p, align 8
  %31 = load ptr, ptr %p1, align 8
  call void @free(ptr noundef %31)
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @del_node_p_return_iprv(ptr noundef %phead, i32 noundef %vtd) #0 {
entry:
  %phead.addr = alloca ptr, align 8
  %vtd.addr = alloca i32, align 4
  %prev = alloca ptr, align 8
  %p = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  store ptr %phead, ptr %phead.addr, align 8
  store i32 %vtd, ptr %vtd.addr, align 4
  store ptr null, ptr %prev, align 8
  %0 = load ptr, ptr %phead.addr, align 8
  store ptr %0, ptr %p, align 8
  store ptr null, ptr %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8
  %value = getelementptr inbounds %struct.sl_node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %value, align 8
  %4 = load i32, ptr %vtd.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p, align 8
  store ptr %5, ptr %prev, align 8
  br label %if.end7

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %p, align 8
  store ptr %6, ptr %p1, align 8
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr %phead.addr, align 8
  %cmp2 = icmp eq ptr %7, %8
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %9 = load ptr, ptr %phead.addr, align 8
  %next = getelementptr inbounds %struct.sl_node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next, align 8
  store ptr %10, ptr %phead.addr, align 8
  br label %if.end

if.else4:                                         ; preds = %if.else
  %11 = load ptr, ptr %p, align 8
  %next5 = getelementptr inbounds %struct.sl_node, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %next5, align 8
  %13 = load ptr, ptr %prev, align 8
  %next6 = getelementptr inbounds %struct.sl_node, ptr %13, i32 0, i32 1
  store ptr %12, ptr %next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  %14 = load ptr, ptr %p1, align 8
  call void @free(ptr noundef %14)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %15 = load ptr, ptr %p, align 8
  %next8 = getelementptr inbounds %struct.sl_node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next8, align 8
  store ptr %16, ptr %p, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %phead.addr, align 8
  ret ptr %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @del_node_pp(ptr noundef %phead, i32 noundef %vtd) #0 {
entry:
  %phead.addr = alloca ptr, align 8
  %vtd.addr = alloca i32, align 4
  %prev = alloca ptr, align 8
  %p = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  store ptr %phead, ptr %phead.addr, align 8
  store i32 %vtd, ptr %vtd.addr, align 4
  store ptr null, ptr %prev, align 8
  %0 = load ptr, ptr %phead.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %p, align 8
  store ptr null, ptr %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %2 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %value = getelementptr inbounds %struct.sl_node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %value, align 8
  %5 = load i32, ptr %vtd.addr, align 4
  %cmp1 = icmp ne i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %p, align 8
  store ptr %6, ptr %prev, align 8
  br label %if.end7

if.else:                                          ; preds = %while.body
  %7 = load ptr, ptr %p, align 8
  store ptr %7, ptr %p1, align 8
  %8 = load ptr, ptr %p, align 8
  %9 = load ptr, ptr %phead.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %cmp2 = icmp eq ptr %8, %10
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %11 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.sl_node, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %next, align 8
  %13 = load ptr, ptr %phead.addr, align 8
  store ptr %12, ptr %13, align 8
  br label %if.end

if.else4:                                         ; preds = %if.else
  %14 = load ptr, ptr %p, align 8
  %next5 = getelementptr inbounds %struct.sl_node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %next5, align 8
  %16 = load ptr, ptr %prev, align 8
  %next6 = getelementptr inbounds %struct.sl_node, ptr %16, i32 0, i32 1
  store ptr %15, ptr %next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  %17 = load ptr, ptr %p1, align 8
  call void @free(ptr noundef %17)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %18 = load ptr, ptr %p, align 8
  %next8 = getelementptr inbounds %struct.sl_node, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next8, align 8
  store ptr %19, ptr %p, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %phead.addr, align 8
  %21 = load ptr, ptr %20, align 8
  ret ptr %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @del_node_pp_inprv(ptr noundef %phead, i32 noundef %vtd) #0 {
entry:
  %phead.addr = alloca ptr, align 8
  %vtd.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %phead, ptr %phead.addr, align 8
  store i32 %vtd, ptr %vtd.addr, align 4
  %0 = load ptr, ptr %phead.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %p, align 8
  %2 = load ptr, ptr %1, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %entry1, align 8
  %5 = load ptr, ptr %p, align 8
  %6 = load ptr, ptr %5, align 8
  %value = getelementptr inbounds %struct.sl_node, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %value, align 8
  %8 = load i32, ptr %vtd.addr, align 4
  %cmp2 = icmp ne i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %entry1, align 8
  %next = getelementptr inbounds %struct.sl_node, ptr %9, i32 0, i32 1
  store ptr %next, ptr %p, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load ptr, ptr %entry1, align 8
  %next3 = getelementptr inbounds %struct.sl_node, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %next3, align 8
  %12 = load ptr, ptr %p, align 8
  store ptr %11, ptr %12, align 8
  %13 = load ptr, ptr %entry1, align 8
  call void @free(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %phead.addr, align 8
  %15 = load ptr, ptr %14, align 8
  ret ptr %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %head = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 9, ptr %n, align 4
  store ptr null, ptr %head, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx3, align 8
  %call = call i32 @atoi(ptr noundef %4)
  store i32 %call, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx4, align 8
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 2
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @atoi(ptr noundef %8)
  store i32 %call8, ptr %i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %9 = load i32, ptr %n, align 4
  %call11 = call ptr @construct_sl(i32 noundef %9)
  store ptr %call11, ptr %head, align 8
  %10 = load ptr, ptr %head, align 8
  call void @traverse_sl(ptr noundef %10)
  %11 = load i32, ptr %i, align 4
  %call12 = call ptr @del_node_pp_inprv(ptr noundef %head, i32 noundef %11)
  store ptr %call12, ptr %head, align 8
  %12 = load i32, ptr %i, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %12)
  %13 = load ptr, ptr %head, align 8
  call void @traverse_sl(ptr noundef %13)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #2

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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
