; ModuleID = './code/338-6760list_errors.c'
source_filename = "./code/338-6760list_errors.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"338-6760list_errors.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"res == -1\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"test_list\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_node(i32 noundef %val, ptr noundef %next) #0 {
entry:
  %val.addr = alloca i32, align 4
  %next.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  store ptr %next, ptr %next.addr, align 8
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %node, align 8
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %node, align 8
  %val1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %val1, align 8
  %2 = load ptr, ptr %next.addr, align 8
  %3 = load ptr, ptr %node, align 8
  %next2 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  store ptr %2, ptr %next2, align 8
  %4 = load ptr, ptr %node, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_list(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %current = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %current, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %current, align 8
  %val = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %val, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %4 = load ptr, ptr %current, align 8
  %next = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %current, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @pop(ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %next_node = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %head.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %next_node, align 8
  %5 = load ptr, ptr %head.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %val = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %val, align 8
  store i32 %7, ptr %retval1, align 4
  %8 = load ptr, ptr %next_node, align 8
  %9 = load ptr, ptr %head.addr, align 8
  store ptr %8, ptr %9, align 8
  %10 = load i32, ptr %retval1, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @push(ptr noundef %head, i32 noundef %val) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %new_node = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %head.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %call = call ptr @make_node(i32 noundef %0, ptr noundef %2)
  store ptr %call, ptr %new_node, align 8
  %3 = load ptr, ptr %new_node, align 8
  %4 = load ptr, ptr %head.addr, align 8
  store ptr %3, ptr %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @remove_by_value(ptr noundef %head, i32 noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %node = alloca ptr, align 8
  %victim = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load ptr, ptr %head.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %node, align 8
  %2 = load ptr, ptr %node, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %node, align 8
  %val1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %val1, align 8
  %5 = load i32, ptr %val.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %head.addr, align 8
  %call = call i32 @pop(ptr noundef %6)
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = load ptr, ptr %node, align 8
  %next = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next, align 8
  %cmp5 = icmp ne ptr %8, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %node, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next6, align 8
  %val7 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %val7, align 8
  %12 = load i32, ptr %val.addr, align 4
  %cmp8 = icmp eq i32 %11, %12
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %for.body
  %13 = load ptr, ptr %node, align 8
  %next10 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next10, align 8
  store ptr %14, ptr %victim, align 8
  %15 = load ptr, ptr %victim, align 8
  %next11 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next11, align 8
  %17 = load ptr, ptr %node, align 8
  %next12 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 1
  store ptr %16, ptr %next12, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %18 = load ptr, ptr %node, align 8
  %next14 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next14, align 8
  store ptr %19, ptr %node, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then9, %if.then3, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %next = alloca ptr, align 8
  %temp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %node, align 8
  %2 = load ptr, ptr %node, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %node, align 8
  %next1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next1, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %node, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next3, align 8
  store ptr %6, ptr %next, align 8
  %7 = load ptr, ptr %node, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  store ptr null, ptr %next4, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %next, align 8
  %cmp5 = icmp ne ptr %8, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %next, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next6, align 8
  store ptr %10, ptr %temp, align 8
  %11 = load ptr, ptr %node, align 8
  %12 = load ptr, ptr %next, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  store ptr %11, ptr %next7, align 8
  %13 = load ptr, ptr %next, align 8
  store ptr %13, ptr %node, align 8
  %14 = load ptr, ptr %temp, align 8
  store ptr %14, ptr %next, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %node, align 8
  %16 = load ptr, ptr %head.addr, align 8
  store ptr %15, ptr %16, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @insert_by_index(ptr noundef %head, i32 noundef %val, i32 noundef %index) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %node = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  store i32 %index, ptr %index.addr, align 4
  %0 = load ptr, ptr %head.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %node, align 8
  %2 = load i32, ptr %index.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %head.addr, align 8
  %4 = load i32, ptr %val.addr, align 4
  call void @push(ptr noundef %3, i32 noundef %4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %index.addr, align 4
  %sub = sub nsw i32 %6, 1
  %cmp1 = icmp slt i32 %5, %sub
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %node, align 8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %for.body
  %8 = load ptr, ptr %node, align 8
  %next = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next, align 8
  store ptr %9, ptr %node, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %node, align 8
  %cmp5 = icmp eq ptr %11, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %for.end
  %12 = load i32, ptr %val.addr, align 4
  %13 = load ptr, ptr %node, align 8
  %next8 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next8, align 8
  %call = call ptr @make_node(i32 noundef %12, ptr noundef %14)
  %15 = load ptr, ptr %node, align 8
  %next9 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  store ptr %call, ptr %next9, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then3, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_something() #0 {
entry:
  %node1 = alloca ptr, align 8
  %node2 = alloca ptr, align 8
  %node3 = alloca ptr, align 8
  %val = alloca i32, align 4
  %call = call ptr @make_node(i32 noundef 1, ptr noundef null)
  store ptr %call, ptr %node1, align 8
  %call1 = call ptr @make_node(i32 noundef 2, ptr noundef null)
  store ptr %call1, ptr %node2, align 8
  %call2 = call ptr @make_node(i32 noundef 3, ptr noundef null)
  store ptr %call2, ptr %node3, align 8
  %call3 = call i32 @pop(ptr noundef %node1)
  store i32 %call3, ptr %val, align 4
  %0 = load i32, ptr %val, align 4
  call void @push(ptr noundef %node2, i32 noundef %0)
  %1 = load ptr, ptr %node2, align 8
  %2 = load ptr, ptr %node3, align 8
  %next = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  store ptr %1, ptr %next, align 8
  %3 = load ptr, ptr %node3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @freeNodes(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  %0 = load ptr, ptr %list.addr, align 8
  store ptr %0, ptr %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %cur, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %cur, align 8
  store ptr %2, ptr %prev, align 8
  %3 = load ptr, ptr %cur, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %cur, align 8
  %5 = load ptr, ptr %prev, align 8
  call void @free(ptr noundef %5)
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %test_list = alloca ptr, align 8
  %res = alloca i32, align 4
  %empty = alloca ptr, align 8
  %something = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @make_node(i32 noundef 2, ptr noundef null)
  store ptr %call, ptr %test_list, align 8
  %call1 = call ptr @make_node(i32 noundef 4, ptr noundef null)
  %0 = load ptr, ptr %test_list, align 8
  %next = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1
  store ptr %call1, ptr %next, align 8
  %call2 = call ptr @make_node(i32 noundef 6, ptr noundef null)
  %1 = load ptr, ptr %test_list, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next3, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  store ptr %call2, ptr %next4, align 8
  %call5 = call i32 @insert_by_index(ptr noundef %test_list, i32 noundef 1, i32 noundef 0)
  %call6 = call i32 @insert_by_index(ptr noundef %test_list, i32 noundef 3, i32 noundef 2)
  %call7 = call i32 @insert_by_index(ptr noundef %test_list, i32 noundef 5, i32 noundef 4)
  %call8 = call i32 @insert_by_index(ptr noundef %test_list, i32 noundef 7, i32 noundef 6)
  %call9 = call i32 @insert_by_index(ptr noundef %test_list, i32 noundef 9, i32 noundef 8)
  store i32 %call9, ptr %res, align 4
  %3 = load i32, ptr %res, align 4
  %cmp = icmp eq i32 %3, -1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 161, ptr noundef @.str.2) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %5 = load ptr, ptr %test_list, align 8
  call void @print_list(ptr noundef %5)
  %6 = load ptr, ptr %test_list, align 8
  call void @freeNodes(ptr noundef %6)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store ptr null, ptr %empty, align 8
  %call12 = call i32 @insert_by_index(ptr noundef %empty, i32 noundef 1, i32 noundef 0)
  %7 = load ptr, ptr %empty, align 8
  call void @print_list(ptr noundef %7)
  %8 = load ptr, ptr %empty, align 8
  call void @free(ptr noundef %8)
  %call13 = call ptr @make_something()
  store ptr %call13, ptr %something, align 8
  %9 = load ptr, ptr %something, align 8
  call void @freeNodes(ptr noundef %9)
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { cold noreturn }

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
