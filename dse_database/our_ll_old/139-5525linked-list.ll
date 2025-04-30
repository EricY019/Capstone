; ModuleID = './code/139-5525linked-list.c'
source_filename = "./code/139-5525linked-list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Not found this value\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"The first list is:\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"The length list is:\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"The list without last element is\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"The list with last element being 11 is:\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"The index 5 in the list is:\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"The list with value 6 addicioned is:\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"The list without value 4 is:\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"The list with twice begin removed:\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"The second list is:\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"The list 2 reversed is:\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @make_list(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store ptr null, ptr %head.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @is_empty(ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_list(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %head.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %head.addr, align 8
  %value = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %value, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %head.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert_begin(ptr noundef %head, i32 noundef %value) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %new_head = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %head.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call i32 @is_empty(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call ptr @malloc(i64 noundef 16) #3
  %2 = load ptr, ptr %head.addr, align 8
  store ptr %call1, ptr %2, align 8
  %3 = load i32, ptr %value.addr, align 4
  %4 = load ptr, ptr %head.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %value2 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 0
  store i32 %3, ptr %value2, align 8
  %6 = load ptr, ptr %head.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %next = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  store ptr null, ptr %next, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call3, ptr %new_head, align 8
  %8 = load i32, ptr %value.addr, align 4
  %9 = load ptr, ptr %new_head, align 8
  %value4 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 0
  store i32 %8, ptr %value4, align 8
  %10 = load ptr, ptr %head.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %new_head, align 8
  %next5 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  store ptr %11, ptr %next5, align 8
  %13 = load ptr, ptr %new_head, align 8
  %14 = load ptr, ptr %head.addr, align 8
  store ptr %13, ptr %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert_end(ptr noundef %list, i32 noundef %value) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %head = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %list.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %head, align 8
  %2 = load ptr, ptr %head, align 8
  %call = call i32 @is_empty(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call1, ptr %head, align 8
  %3 = load i32, ptr %value.addr, align 4
  %4 = load ptr, ptr %head, align 8
  %value2 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0
  store i32 %3, ptr %value2, align 8
  %5 = load ptr, ptr %head, align 8
  %next = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %6 = load ptr, ptr %head, align 8
  %7 = load ptr, ptr %list.addr, align 8
  store ptr %6, ptr %7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load ptr, ptr %head, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next3, align 8
  %call4 = call i32 @is_empty(ptr noundef %9)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %head, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %next6, align 8
  store ptr %11, ptr %head, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call7 = call ptr @malloc(i64 noundef 16) #3
  %12 = load ptr, ptr %head, align 8
  %next8 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  store ptr %call7, ptr %next8, align 8
  %13 = load ptr, ptr %head, align 8
  %next9 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next9, align 8
  store ptr %14, ptr %head, align 8
  %15 = load i32, ptr %value.addr, align 4
  %16 = load ptr, ptr %head, align 8
  %value10 = getelementptr inbounds %struct.node, ptr %16, i32 0, i32 0
  store i32 %15, ptr %value10, align 8
  %17 = load ptr, ptr %head, align 8
  %next11 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 1
  store ptr null, ptr %next11, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @length_list(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  store i32 0, ptr %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %head.addr, align 8
  %call = call i32 @is_empty(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %length, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %length, align 4
  %2 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next, align 8
  store ptr %3, ptr %head.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %length, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @remove_end_list(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %next, align 8
  %next1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next1, align 8
  %call = call i32 @is_empty(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %head.addr, align 8
  %next2 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next2, align 8
  store ptr %4, ptr %head.addr, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %head.addr, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next3, align 8
  call void @free(ptr noundef %6)
  %7 = load ptr, ptr %head.addr, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  store ptr null, ptr %next4, align 8
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @find_position(ptr noundef %head, i32 noundef %position) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %position.addr = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  store i32 %position, ptr %position.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %position.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next, align 8
  store ptr %2, ptr %head.addr, align 8
  %3 = load i32, ptr %position.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %position.addr, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %head.addr, align 8
  %value = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %value, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert_orderned(ptr noundef %list, i32 noundef %value) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %head = alloca ptr, align 8
  %new_node = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %list.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %head, align 8
  %next = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next, align 8
  %value1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %value1, align 8
  %5 = load i32, ptr %value.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %head, align 8
  %next2 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next2, align 8
  %cmp3 = icmp ne ptr %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %head, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next4, align 8
  store ptr %10, ptr %head, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %new_node, align 8
  %11 = load i32, ptr %value.addr, align 4
  %12 = load ptr, ptr %new_node, align 8
  %value5 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 0
  store i32 %11, ptr %value5, align 8
  %13 = load ptr, ptr %head, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next6, align 8
  %15 = load ptr, ptr %new_node, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  store ptr %14, ptr %next7, align 8
  %16 = load ptr, ptr %new_node, align 8
  %17 = load ptr, ptr %head, align 8
  %next8 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 1
  store ptr %16, ptr %next8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @remove_value(ptr noundef %list, i32 noundef %value) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %ref = alloca ptr, align 8
  %head = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %list.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %head, align 8
  %next = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next, align 8
  %value1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %value1, align 8
  %5 = load i32, ptr %value.addr, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %head, align 8
  %next2 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next2, align 8
  %cmp3 = icmp ne ptr %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %head, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next4, align 8
  store ptr %10, ptr %head, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr %head, align 8
  %next5 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %next5, align 8
  %call = call i32 @is_empty(ptr noundef %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.else:                                          ; preds = %while.end
  %13 = load ptr, ptr %head, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next7, align 8
  store ptr %14, ptr %ref, align 8
  %15 = load ptr, ptr %ref, align 8
  %next8 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next8, align 8
  %17 = load ptr, ptr %head, align 8
  %next9 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 1
  store ptr %16, ptr %next9, align 8
  %18 = load ptr, ptr %ref, align 8
  call void @free(ptr noundef %18)
  store ptr null, ptr %ref, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @remove_begin(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  %0 = load ptr, ptr %list.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %head, align 8
  %2 = load ptr, ptr %list.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  %5 = load ptr, ptr %list.addr, align 8
  store ptr %4, ptr %5, align 8
  %6 = load ptr, ptr %head, align 8
  call void @free(ptr noundef %6)
  store ptr null, ptr %head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse_list(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %ref = alloca ptr, align 8
  %new_list = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  %0 = load ptr, ptr %list.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %ref, align 8
  store ptr null, ptr %new_list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %ref, align 8
  %call = call i32 @is_empty(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %ref, align 8
  %value = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %value, align 8
  call void @insert_begin(ptr noundef %new_list, i32 noundef %4)
  %5 = load ptr, ptr %list.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %next = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next, align 8
  %8 = load ptr, ptr %list.addr, align 8
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %ref, align 8
  call void @free(ptr noundef %9)
  %10 = load ptr, ptr %list.addr, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %ref, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %new_list, align 8
  %13 = load ptr, ptr %list.addr, align 8
  store ptr %12, ptr %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %list = alloca ptr, align 8
  %list2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %list, align 8
  call void @insert_begin(ptr noundef %list, i32 noundef 9)
  call void @insert_begin(ptr noundef %list, i32 noundef 7)
  call void @insert_begin(ptr noundef %list, i32 noundef 5)
  call void @insert_begin(ptr noundef %list, i32 noundef 4)
  call void @insert_begin(ptr noundef %list, i32 noundef 3)
  call void @insert_begin(ptr noundef %list, i32 noundef 1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %0 = load ptr, ptr %list, align 8
  call void @print_list(ptr noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %1 = load ptr, ptr %list, align 8
  call void @length_list(ptr noundef %1)
  %2 = load ptr, ptr %list, align 8
  call void @remove_end_list(ptr noundef %2)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %3 = load ptr, ptr %list, align 8
  call void @print_list(ptr noundef %3)
  call void @insert_end(ptr noundef %list, i32 noundef 11)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %4 = load ptr, ptr %list, align 8
  call void @print_list(ptr noundef %4)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %5 = load ptr, ptr %list, align 8
  call void @find_position(ptr noundef %5, i32 noundef 5)
  call void @insert_orderned(ptr noundef %list, i32 noundef 6)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %6 = load ptr, ptr %list, align 8
  call void @print_list(ptr noundef %6)
  call void @remove_value(ptr noundef %list, i32 noundef 4)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %7 = load ptr, ptr %list, align 8
  call void @print_list(ptr noundef %7)
  call void @remove_begin(ptr noundef %list)
  call void @remove_begin(ptr noundef %list)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %8 = load ptr, ptr %list, align 8
  call void @print_list(ptr noundef %8)
  store ptr null, ptr %list2, align 8
  call void @insert_end(ptr noundef %list2, i32 noundef 1)
  call void @insert_end(ptr noundef %list2, i32 noundef 3)
  call void @insert_end(ptr noundef %list2, i32 noundef 4)
  call void @insert_end(ptr noundef %list2, i32 noundef 5)
  call void @insert_end(ptr noundef %list2, i32 noundef 7)
  call void @insert_end(ptr noundef %list2, i32 noundef 9)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %9 = load ptr, ptr %list2, align 8
  call void @print_list(ptr noundef %9)
  call void @reverse_list(ptr noundef %list2)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %10 = load ptr, ptr %list2, align 8
  call void @print_list(ptr noundef %10)
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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
