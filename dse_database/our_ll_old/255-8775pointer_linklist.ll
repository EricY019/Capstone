; ModuleID = './code/255-8775pointer_linklist.c'
source_filename = "./code/255-8775pointer_linklist.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.llist = type { ptr }
%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [23 x i8] c"\E6\89\93\E5\8D\B0\E5\85\A8\E9\83\A8\E5\85\83\E7\B4\A0\EF\BC\9A\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\E6\98\BE\E7\A4\BA\E7\AC\AC\E4\BA\94\E4\B8\AA\E5\85\83\E7\B4\A0\EF\BC\9A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\E5\88\A0\E9\99\A4\E7\AC\AC\E4\BA\94\E4\B8\AA\E5\85\83\E7\B4\A0\EF\BC\9A%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Exhausted memory\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of bounds\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %L = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 15, ptr %size, align 4
  %call = call ptr @ListInit()
  store ptr %call, ptr %L, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 %3, 3
  %4 = load ptr, ptr %L, align 8
  call void @ListInsert(i32 noundef %2, i32 noundef %add, ptr noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %6 = load ptr, ptr %L, align 8
  call void @PrintList(ptr noundef %6)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %7 = load ptr, ptr %L, align 8
  %call3 = call i32 @ListRetrieve(i32 noundef 5, ptr noundef %7)
  call void @ItemShow(i32 noundef %call3)
  %8 = load ptr, ptr %L, align 8
  %call4 = call i32 @ListDelete(i32 noundef 5, ptr noundef %8)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call4)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %9 = load ptr, ptr %L, align 8
  call void @PrintList(ptr noundef %9)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ListInsert(i32 noundef %k, i32 noundef %x, ptr noundef %L) #0 {
entry:
  %k.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %y = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  store ptr %L, ptr %L.addr, align 8
  %0 = load i32, ptr %k.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Error(ptr noundef @.str.6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %first, align 8
  store ptr %2, ptr %p, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %k.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %land.end
  %call = call ptr @NewNode()
  store ptr %call, ptr %y, align 8
  %10 = load i32, ptr %x.addr, align 4
  %11 = load ptr, ptr %y, align 8
  %element = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0
  store i32 %10, ptr %element, align 8
  %12 = load i32, ptr %k.addr, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.end
  %13 = load ptr, ptr %p, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next4, align 8
  %15 = load ptr, ptr %y, align 8
  %next5 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  store ptr %14, ptr %next5, align 8
  %16 = load ptr, ptr %y, align 8
  %17 = load ptr, ptr %p, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 1
  store ptr %16, ptr %next6, align 8
  br label %if.end10

if.else:                                          ; preds = %for.end
  %18 = load ptr, ptr %L.addr, align 8
  %first7 = getelementptr inbounds %struct.llist, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %first7, align 8
  %20 = load ptr, ptr %y, align 8
  %next8 = getelementptr inbounds %struct.node, ptr %20, i32 0, i32 1
  store ptr %19, ptr %next8, align 8
  %21 = load ptr, ptr %y, align 8
  %22 = load ptr, ptr %L.addr, align 8
  %first9 = getelementptr inbounds %struct.llist, ptr %22, i32 0, i32 0
  store ptr %21, ptr %first9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @PrintList(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8
  %0 = load ptr, ptr %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %first, align 8
  store ptr %1, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8
  %element = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %element, align 8
  call void @ItemShow(i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr %p, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ItemShow(i32 noundef %li) #0 {
entry:
  %li.addr = alloca i32, align 4
  store i32 %li, ptr %li.addr, align 4
  %0 = load i32, ptr %li.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ListRetrieve(i32 noundef %k, ptr noundef %L) #0 {
entry:
  %k.addr = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %k, ptr %k.addr, align 4
  store ptr %L, ptr %L.addr, align 8
  %0 = load i32, ptr %k.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Error(ptr noundef @.str.6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %first, align 8
  store ptr %2, ptr %p, align 8
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %k.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %p, align 8
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %10 = load ptr, ptr %p, align 8
  %element = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %element, align 8
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ListDelete(i32 noundef %k, ptr noundef %L) #0 {
entry:
  %k.addr = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4
  store ptr %L, ptr %L.addr, align 8
  %0 = load i32, ptr %k.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %first, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @Error(ptr noundef @.str.6)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load ptr, ptr %L.addr, align 8
  %first1 = getelementptr inbounds %struct.llist, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %first1, align 8
  store ptr %4, ptr %p, align 8
  %5 = load i32, ptr %k.addr, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next, align 8
  %8 = load ptr, ptr %L.addr, align 8
  %first4 = getelementptr inbounds %struct.llist, ptr %8, i32 0, i32 0
  store ptr %7, ptr %first4, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %L.addr, align 8
  %first5 = getelementptr inbounds %struct.llist, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %first5, align 8
  store ptr %10, ptr %q, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %k.addr, align 4
  %sub = sub nsw i32 %12, 1
  %cmp6 = icmp slt i32 %11, %sub
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load ptr, ptr %q, align 8
  %tobool7 = icmp ne ptr %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %tobool7, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load ptr, ptr %q, align 8
  %next8 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next8, align 8
  store ptr %16, ptr %q, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %q, align 8
  %next9 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next9, align 8
  store ptr %19, ptr %p, align 8
  %20 = load ptr, ptr %p, align 8
  %next10 = getelementptr inbounds %struct.node, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %next10, align 8
  %22 = load ptr, ptr %q, align 8
  %next11 = getelementptr inbounds %struct.node, ptr %22, i32 0, i32 1
  store ptr %21, ptr %next11, align 8
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.then3
  %23 = load ptr, ptr %p, align 8
  %element = getelementptr inbounds %struct.node, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %element, align 8
  store i32 %24, ptr %x, align 4
  %25 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %25)
  %26 = load i32, ptr %x, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Error(ptr noundef %ch) #0 {
entry:
  %ch.addr = alloca ptr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  %0 = load ptr, ptr %ch.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @NewNode() #0 {
entry:
  %retval = alloca ptr, align 8
  %p = alloca ptr, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %p, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @Error(ptr noundef @.str.5)
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr %p, align 8
  store ptr %0, ptr %retval, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @ListInit() #0 {
entry:
  %L = alloca ptr, align 8
  %call = call ptr @malloc(i64 noundef 8) #3
  store ptr %call, ptr %L, align 8
  %0 = load ptr, ptr %L, align 8
  %first = getelementptr inbounds %struct.llist, ptr %0, i32 0, i32 0
  store ptr null, ptr %first, align 8
  %1 = load ptr, ptr %L, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ListEmpty(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8
  %0 = load ptr, ptr %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %first, align 8
  %cmp = icmp eq ptr %1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ListLength(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8
  store i32 0, ptr %len, align 4
  %0 = load ptr, ptr %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %first, align 8
  store ptr %1, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %len, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %len, align 4
  %4 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %p, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %len, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ListLocate(i32 noundef %x, ptr noundef %L) #0 {
entry:
  %x.addr = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %x, ptr %x.addr, align 4
  store ptr %L, ptr %L.addr, align 8
  store i32 1, ptr %i, align 4
  %0 = load ptr, ptr %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %first, align 8
  store ptr %1, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %element = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %element, align 8
  %5 = load i32, ptr %x.addr, align 4
  %cmp = icmp ne i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %p, align 8
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %10 = load i32, ptr %i, align 4
  ret i32 %10
}

declare void @free(ptr noundef) #1

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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
