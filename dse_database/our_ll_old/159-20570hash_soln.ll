; ModuleID = './code/159-20570hash_soln.c'
source_filename = "./code/159-20570hash_soln.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Value = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.Hashable = type { ptr, ptr, ptr }
%struct.node = type { ptr, ptr, ptr }
%struct.map = type { i32, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"key %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"hash %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"value %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"next %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Lookup returned \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Allen\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Downey\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Map\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_int_value(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %value = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %value, align 8
  %0 = load ptr, ptr %value, align 8
  %type = getelementptr inbounds %struct.Value, ptr %0, i32 0, i32 0
  store i32 0, ptr %type, align 8
  %1 = load i32, ptr %i.addr, align 4
  %2 = load ptr, ptr %value, align 8
  %3 = getelementptr inbounds %struct.Value, ptr %2, i32 0, i32 1
  store i32 %1, ptr %3, align 8
  %4 = load ptr, ptr %value, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_string_value(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %value, align 8
  %0 = load ptr, ptr %value, align 8
  %type = getelementptr inbounds %struct.Value, ptr %0, i32 0, i32 0
  store i32 1, ptr %type, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load ptr, ptr %value, align 8
  %3 = getelementptr inbounds %struct.Value, ptr %2, i32 0, i32 1
  store ptr %1, ptr %3, align 8
  %4 = load ptr, ptr %value, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_value(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %value.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %1)
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %value.addr, align 8
  %type = getelementptr inbounds %struct.Value, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %type, align 8
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %value.addr, align 8
  %5 = getelementptr inbounds %struct.Value, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %7 = load ptr, ptr %value.addr, align 8
  %8 = getelementptr inbounds %struct.Value, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %sw.bb2, %sw.bb
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_hashable(ptr noundef %key, ptr noundef %hash, ptr noundef %equal) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %hash.addr = alloca ptr, align 8
  %equal.addr = alloca ptr, align 8
  %hashable = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  store ptr %hash, ptr %hash.addr, align 8
  store ptr %equal, ptr %equal.addr, align 8
  %call = call ptr @malloc(i64 noundef 24) #4
  store ptr %call, ptr %hashable, align 8
  %0 = load ptr, ptr %key.addr, align 8
  %1 = load ptr, ptr %hashable, align 8
  %key1 = getelementptr inbounds %struct.Hashable, ptr %1, i32 0, i32 0
  store ptr %0, ptr %key1, align 8
  %2 = load ptr, ptr %hash.addr, align 8
  %3 = load ptr, ptr %hashable, align 8
  %hash2 = getelementptr inbounds %struct.Hashable, ptr %3, i32 0, i32 1
  store ptr %2, ptr %hash2, align 8
  %4 = load ptr, ptr %equal.addr, align 8
  %5 = load ptr, ptr %hashable, align 8
  %equal3 = getelementptr inbounds %struct.Hashable, ptr %5, i32 0, i32 2
  store ptr %4, ptr %equal3, align 8
  %6 = load ptr, ptr %hashable, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_hashable(ptr noundef %hashable) #0 {
entry:
  %hashable.addr = alloca ptr, align 8
  store ptr %hashable, ptr %hashable.addr, align 8
  %0 = load ptr, ptr %hashable.addr, align 8
  %key = getelementptr inbounds %struct.Hashable, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %key, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %1)
  %2 = load ptr, ptr %hashable.addr, align 8
  %hash = getelementptr inbounds %struct.Hashable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %hash, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @hash_int(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @hash_string(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %s, align 8
  store i32 0, ptr %total, align 4
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %s, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %s, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 %idxprom2
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %7 = load i32, ptr %total, align 4
  %add = add nsw i32 %7, %conv4
  store i32 %add, ptr %total, align 4
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %total, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @hash_hashable(ptr noundef %hashable) #0 {
entry:
  %hashable.addr = alloca ptr, align 8
  store ptr %hashable, ptr %hashable.addr, align 8
  %0 = load ptr, ptr %hashable.addr, align 8
  %hash = getelementptr inbounds %struct.Hashable, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %hash, align 8
  %2 = load ptr, ptr %hashable.addr, align 8
  %key = getelementptr inbounds %struct.Hashable, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %key, align 8
  %call = call i32 %1(ptr noundef %3)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @equal_int(ptr noundef %ip, ptr noundef %jp) #0 {
entry:
  %ip.addr = alloca ptr, align 8
  %jp.addr = alloca ptr, align 8
  store ptr %ip, ptr %ip.addr, align 8
  store ptr %jp, ptr %jp.addr, align 8
  %0 = load ptr, ptr %ip.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %jp.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp eq i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @equal_string(ptr noundef %s1, ptr noundef %s2) #0 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  store ptr %s2, ptr %s2.addr, align 8
  %0 = load ptr, ptr %s1.addr, align 8
  %1 = load ptr, ptr %s2.addr, align 8
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  store i32 %call, ptr %x, align 4
  %2 = load i32, ptr %x, align 4
  %cmp = icmp eq i32 %2, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @equal_hashable(ptr noundef %h1, ptr noundef %h2) #0 {
entry:
  %retval = alloca i32, align 4
  %h1.addr = alloca ptr, align 8
  %h2.addr = alloca ptr, align 8
  store ptr %h1, ptr %h1.addr, align 8
  store ptr %h2, ptr %h2.addr, align 8
  %0 = load ptr, ptr %h1.addr, align 8
  %equal = getelementptr inbounds %struct.Hashable, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %equal, align 8
  %2 = load ptr, ptr %h2.addr, align 8
  %equal1 = getelementptr inbounds %struct.Hashable, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %equal1, align 8
  %cmp = icmp ne ptr %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %h1.addr, align 8
  %equal2 = getelementptr inbounds %struct.Hashable, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %equal2, align 8
  %6 = load ptr, ptr %h1.addr, align 8
  %key = getelementptr inbounds %struct.Hashable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %key, align 8
  %8 = load ptr, ptr %h2.addr, align 8
  %key3 = getelementptr inbounds %struct.Hashable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %key3, align 8
  %call = call i32 %5(ptr noundef %7, ptr noundef %9)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_hashable_int(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %x, ptr %x.addr, align 4
  %call = call ptr @malloc(i64 noundef 4) #4
  store ptr %call, ptr %p, align 8
  %0 = load i32, ptr %x.addr, align 4
  %1 = load ptr, ptr %p, align 8
  store i32 %0, ptr %1, align 4
  %2 = load ptr, ptr %p, align 8
  %call1 = call ptr @make_hashable(ptr noundef %2, ptr noundef @hash_int, ptr noundef @equal_int)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_hashable_string(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call ptr @make_hashable(ptr noundef %0, ptr noundef @hash_string, ptr noundef @equal_string)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_node(ptr noundef %key, ptr noundef %value, ptr noundef %next) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %next, ptr %next.addr, align 8
  %call = call ptr @malloc(i64 noundef 24) #4
  store ptr %call, ptr %node, align 8
  %0 = load ptr, ptr %key.addr, align 8
  %1 = load ptr, ptr %node, align 8
  %key1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store ptr %0, ptr %key1, align 8
  %2 = load ptr, ptr %value.addr, align 8
  %3 = load ptr, ptr %node, align 8
  %value2 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  store ptr %2, ptr %value2, align 8
  %4 = load ptr, ptr %next.addr, align 8
  %5 = load ptr, ptr %node, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 2
  store ptr %4, ptr %next3, align 8
  %6 = load ptr, ptr %node, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_node(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  %0 = load ptr, ptr %node.addr, align 8
  %key = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %key, align 8
  call void @print_hashable(ptr noundef %1)
  %2 = load ptr, ptr %node.addr, align 8
  %value = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %value, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %3)
  %4 = load ptr, ptr %node.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %next, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_list(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  %0 = load ptr, ptr %node.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8
  %key = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %key, align 8
  call void @print_hashable(ptr noundef %2)
  %3 = load ptr, ptr %node.addr, align 8
  %value = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %value, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %4)
  %5 = load ptr, ptr %node.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %next, align 8
  call void @print_list(ptr noundef %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @prepend(ptr noundef %key, ptr noundef %value, ptr noundef %rest) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %rest.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store ptr %rest, ptr %rest.addr, align 8
  %0 = load ptr, ptr %key.addr, align 8
  %1 = load ptr, ptr %value.addr, align 8
  %2 = load ptr, ptr %rest.addr, align 8
  %call = call ptr @make_node(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @list_lookup(ptr noundef %list, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  %0 = load ptr, ptr %list.addr, align 8
  store ptr %0, ptr %node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %node, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %key.addr, align 8
  %3 = load ptr, ptr %node, align 8
  %key1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %key1, align 8
  %call = call i32 @equal_hashable(ptr noundef %2, ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %node, align 8
  %value = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %value, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %node, align 8
  %next = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %node, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_map(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %map = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %map, align 8
  %0 = load i32, ptr %n.addr, align 4
  %1 = load ptr, ptr %map, align 8
  %n1 = getelementptr inbounds %struct.map, ptr %1, i32 0, i32 0
  store i32 %0, ptr %n1, align 8
  %2 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call2 = call ptr @malloc(i64 noundef %mul) #4
  %3 = load ptr, ptr %map, align 8
  %lists = getelementptr inbounds %struct.map, ptr %3, i32 0, i32 1
  store ptr %call2, ptr %lists, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %map, align 8
  %lists4 = getelementptr inbounds %struct.map, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %lists4, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %map, align 8
  ret ptr %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_map(ptr noundef %map) #0 {
entry:
  %map.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %map.addr, align 8
  %n = getelementptr inbounds %struct.map, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %n, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %map.addr, align 8
  %lists = getelementptr inbounds %struct.map, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %lists, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %cmp1 = icmp ne ptr %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %7)
  %8 = load ptr, ptr %map.addr, align 8
  %lists2 = getelementptr inbounds %struct.map, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %lists2, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %idxprom3
  %11 = load ptr, ptr %arrayidx4, align 8
  call void @print_list(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @map_add(ptr noundef %map, ptr noundef %key, ptr noundef %value) #0 {
entry:
  %map.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %hashval = alloca i32, align 4
  %list = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %key.addr, align 8
  %call = call i32 @hash_hashable(ptr noundef %0)
  %1 = load ptr, ptr %map.addr, align 8
  %n = getelementptr inbounds %struct.map, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %n, align 8
  %rem = srem i32 %call, %2
  store i32 %rem, ptr %hashval, align 4
  %3 = load ptr, ptr %map.addr, align 8
  %lists = getelementptr inbounds %struct.map, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %lists, align 8
  %5 = load i32, ptr %hashval, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %list, align 8
  %7 = load ptr, ptr %key.addr, align 8
  %8 = load ptr, ptr %value.addr, align 8
  %9 = load ptr, ptr %list, align 8
  %call1 = call ptr @prepend(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %map.addr, align 8
  %lists2 = getelementptr inbounds %struct.map, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %lists2, align 8
  %12 = load i32, ptr %hashval, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %11, i64 %idxprom3
  store ptr %call1, ptr %arrayidx4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @map_lookup(ptr noundef %map, ptr noundef %key) #0 {
entry:
  %map.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hashval = alloca i32, align 4
  %list = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  %0 = load ptr, ptr %key.addr, align 8
  %call = call i32 @hash_hashable(ptr noundef %0)
  %1 = load ptr, ptr %map.addr, align 8
  %n = getelementptr inbounds %struct.map, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %n, align 8
  %rem = srem i32 %call, %2
  store i32 %rem, ptr %hashval, align 4
  %3 = load ptr, ptr %map.addr, align 8
  %lists = getelementptr inbounds %struct.map, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %lists, align 8
  %5 = load i32, ptr %hashval, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %list, align 8
  %7 = load ptr, ptr %list, align 8
  %8 = load ptr, ptr %key.addr, align 8
  %call1 = call ptr @list_lookup(ptr noundef %7, ptr noundef %8)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_lookup(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %0 = load ptr, ptr %value.addr, align 8
  call void @print_value(ptr noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %hashable1 = alloca ptr, align 8
  %hashable2 = alloca ptr, align 8
  %hashable3 = alloca ptr, align 8
  %value1 = alloca ptr, align 8
  %node1 = alloca ptr, align 8
  %value2 = alloca ptr, align 8
  %list = alloca ptr, align 8
  %value = alloca ptr, align 8
  %map = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @make_hashable_int(i32 noundef 1)
  store ptr %call, ptr %hashable1, align 8
  %call1 = call ptr @make_hashable_string(ptr noundef @.str.10)
  store ptr %call1, ptr %hashable2, align 8
  %call2 = call ptr @make_hashable_int(i32 noundef 2)
  store ptr %call2, ptr %hashable3, align 8
  %call3 = call ptr @make_int_value(i32 noundef 17)
  store ptr %call3, ptr %value1, align 8
  %0 = load ptr, ptr %hashable1, align 8
  %1 = load ptr, ptr %value1, align 8
  %call4 = call ptr @make_node(ptr noundef %0, ptr noundef %1, ptr noundef null)
  store ptr %call4, ptr %node1, align 8
  %2 = load ptr, ptr %node1, align 8
  call void @print_node(ptr noundef %2)
  %call5 = call ptr @make_string_value(ptr noundef @.str.11)
  store ptr %call5, ptr %value2, align 8
  %3 = load ptr, ptr %hashable2, align 8
  %4 = load ptr, ptr %value2, align 8
  %5 = load ptr, ptr %node1, align 8
  %call6 = call ptr @prepend(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call6, ptr %list, align 8
  %6 = load ptr, ptr %list, align 8
  call void @print_list(ptr noundef %6)
  %7 = load ptr, ptr %list, align 8
  %8 = load ptr, ptr %hashable1, align 8
  %call7 = call ptr @list_lookup(ptr noundef %7, ptr noundef %8)
  store ptr %call7, ptr %value, align 8
  %9 = load ptr, ptr %value, align 8
  call void @print_lookup(ptr noundef %9)
  %10 = load ptr, ptr %list, align 8
  %11 = load ptr, ptr %hashable2, align 8
  %call8 = call ptr @list_lookup(ptr noundef %10, ptr noundef %11)
  store ptr %call8, ptr %value, align 8
  %12 = load ptr, ptr %value, align 8
  call void @print_lookup(ptr noundef %12)
  %13 = load ptr, ptr %list, align 8
  %14 = load ptr, ptr %hashable3, align 8
  %call9 = call ptr @list_lookup(ptr noundef %13, ptr noundef %14)
  store ptr %call9, ptr %value, align 8
  %15 = load ptr, ptr %value, align 8
  call void @print_lookup(ptr noundef %15)
  %call10 = call ptr @make_map(i32 noundef 10)
  store ptr %call10, ptr %map, align 8
  %16 = load ptr, ptr %map, align 8
  %17 = load ptr, ptr %hashable1, align 8
  %18 = load ptr, ptr %value1, align 8
  call void @map_add(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %map, align 8
  %20 = load ptr, ptr %hashable2, align 8
  %21 = load ptr, ptr %value2, align 8
  call void @map_add(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %22 = load ptr, ptr %map, align 8
  call void @print_map(ptr noundef %22)
  %23 = load ptr, ptr %map, align 8
  %24 = load ptr, ptr %hashable1, align 8
  %call12 = call ptr @map_lookup(ptr noundef %23, ptr noundef %24)
  store ptr %call12, ptr %value, align 8
  %25 = load ptr, ptr %value, align 8
  call void @print_lookup(ptr noundef %25)
  %26 = load ptr, ptr %map, align 8
  %27 = load ptr, ptr %hashable2, align 8
  %call13 = call ptr @map_lookup(ptr noundef %26, ptr noundef %27)
  store ptr %call13, ptr %value, align 8
  %28 = load ptr, ptr %value, align 8
  call void @print_lookup(ptr noundef %28)
  %29 = load ptr, ptr %map, align 8
  %30 = load ptr, ptr %hashable3, align 8
  %call14 = call ptr @map_lookup(ptr noundef %29, ptr noundef %30)
  store ptr %call14, ptr %value, align 8
  %31 = load ptr, ptr %value, align 8
  call void @print_lookup(ptr noundef %31)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { nounwind }

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
