; ModuleID = './code/257-12687BST_height_depth_of_node.c'
source_filename = "./code/257-12687BST_height_depth_of_node.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr, ptr }

@head = global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"data %d \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"left child %d \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"left child NULL \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"right child %d \0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"right child NULL \0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"*******Node not found*******\0A\00", align 1
@__const.main.A = private unnamed_addr constant [13 x i32] [i32 11, i32 6, i32 8, i32 19, i32 4, i32 13, i32 5, i32 17, i32 43, i32 49, i32 16, i32 31, i32 32], align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"all info\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"level 0 / root node\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"The height_node of 11 is %d \0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"The depth_node of 11 is %d \0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"level 1\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"The height_node of 19 is %d \0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"The depth_node of 19 is %d \0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"level 2\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"The height_node of 8 is %d \0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"The depth_node of 8 is %d \0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"level 3\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"The height_node of 5 is %d \0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"The depth_node of 5 is %d \0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"level 4\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"The height_node of 32 is %d \0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"The depth_node of 32 is %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @create(i32 noundef %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  store i32 %data, ptr %data.addr, align 4
  %call = call ptr @malloc(i64 noundef 24) #4
  store ptr %call, ptr %temp, align 8
  %0 = load i32, ptr %data.addr, align 4
  %1 = load ptr, ptr %temp, align 8
  %data1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %data1, align 8
  %2 = load ptr, ptr %temp, align 8
  %left = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  store ptr null, ptr %left, align 8
  %3 = load ptr, ptr %temp, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  store ptr null, ptr %right, align 8
  %4 = load ptr, ptr %temp, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @insert(ptr noundef %current, i32 noundef %data) #0 {
entry:
  %retval = alloca ptr, align 8
  %current.addr = alloca ptr, align 8
  %data.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  %temp3 = alloca ptr, align 8
  store ptr %current, ptr %current.addr, align 8
  store i32 %data, ptr %data.addr, align 4
  %0 = load ptr, ptr @head, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %data.addr, align 4
  %call = call ptr @create(i32 noundef %1)
  store ptr %call, ptr %temp, align 8
  %2 = load ptr, ptr %temp, align 8
  store ptr %2, ptr @head, align 8
  %3 = load ptr, ptr %temp, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %current.addr, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load i32, ptr %data.addr, align 4
  %call4 = call ptr @create(i32 noundef %5)
  store ptr %call4, ptr %temp3, align 8
  %6 = load ptr, ptr %temp3, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load i32, ptr %data.addr, align 4
  %8 = load ptr, ptr %current.addr, align 8
  %data5 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %data5, align 8
  %cmp6 = icmp sle i32 %7, %9
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.end
  %10 = load ptr, ptr %current.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %left, align 8
  %12 = load i32, ptr %data.addr, align 4
  %call8 = call ptr @insert(ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %current.addr, align 8
  %left9 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  store ptr %call8, ptr %left9, align 8
  br label %if.end17

if.else10:                                        ; preds = %if.end
  %14 = load i32, ptr %data.addr, align 4
  %15 = load ptr, ptr %current.addr, align 8
  %data11 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %data11, align 8
  %cmp12 = icmp sgt i32 %14, %16
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.else10
  %17 = load ptr, ptr %current.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %right, align 8
  %19 = load i32, ptr %data.addr, align 4
  %call14 = call ptr @insert(ptr noundef %18, i32 noundef %19)
  %20 = load ptr, ptr %current.addr, align 8
  %right15 = getelementptr inbounds %struct.node, ptr %20, i32 0, i32 2
  store ptr %call14, ptr %right15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %21 = load ptr, ptr %current.addr, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then2, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_preorder_all(ptr noundef %temp) #0 {
entry:
  %temp.addr = alloca ptr, align 8
  store ptr %temp, ptr %temp.addr, align 8
  %0 = load ptr, ptr %temp.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %temp.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load ptr, ptr %temp.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %left, align 8
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %temp.addr, align 8
  %left3 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %left3, align 8
  %data4 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %data4, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %temp.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %right, align 8
  %cmp7 = icmp ne ptr %9, null
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end
  %10 = load ptr, ptr %temp.addr, align 8
  %right9 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %right9, align 8
  %data10 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %data10, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %12)
  br label %if.end14

if.else12:                                        ; preds = %if.end
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then8
  %13 = load ptr, ptr %temp.addr, align 8
  %left15 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %left15, align 8
  call void @print_preorder_all(ptr noundef %14)
  %15 = load ptr, ptr %temp.addr, align 8
  %right16 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %right16, align 8
  call void @print_preorder_all(ptr noundef %16)
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %entry
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @find_height(ptr noundef %temp) #0 {
entry:
  %retval = alloca i32, align 4
  %temp.addr = alloca ptr, align 8
  %left_h = alloca i32, align 4
  %right_h = alloca i32, align 4
  store ptr %temp, ptr %temp.addr, align 8
  %0 = load ptr, ptr %temp.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %temp.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %left, align 8
  %call = call i32 @find_height(ptr noundef %2)
  store i32 %call, ptr %left_h, align 4
  %3 = load ptr, ptr %temp.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %right, align 8
  %call1 = call i32 @find_height(ptr noundef %4)
  store i32 %call1, ptr %right_h, align 4
  %5 = load i32, ptr %left_h, align 4
  %6 = load i32, ptr %right_h, align 4
  %cmp2 = icmp sgt i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %left_h, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %right_h, align 4
  %add4 = add nsw i32 %8, 1
  store i32 %add4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then3, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @height_node(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  %found_flag = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %temp, align 8
  store i32 0, ptr %found_flag, align 4
  store i32 0, ptr %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %1 = load ptr, ptr %temp, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %data, align 8
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %temp, align 8
  %left = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %left, align 8
  %cmp1 = icmp ne ptr %5, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load ptr, ptr %temp, align 8
  %right = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %right, align 8
  %cmp2 = icmp ne ptr %7, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, ptr %n.addr, align 4
  %11 = load ptr, ptr %temp, align 8
  %data3 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %data3, align 8
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = load ptr, ptr %temp, align 8
  %left5 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %left5, align 8
  %cmp6 = icmp ne ptr %14, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %15 = load ptr, ptr %temp, align 8
  %left8 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %left8, align 8
  store ptr %16, ptr %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end14

if.else:                                          ; preds = %while.body
  %17 = load ptr, ptr %temp, align 8
  %right9 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %right9, align 8
  %cmp10 = icmp ne ptr %18, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %19 = load ptr, ptr %temp, align 8
  %right12 = getelementptr inbounds %struct.node, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %right12, align 8
  store ptr %20, ptr %temp, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %temp, align 8
  %cmp15 = icmp ne ptr %21, null
  br i1 %cmp15, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %while.end
  %22 = load ptr, ptr %temp, align 8
  %data16 = getelementptr inbounds %struct.node, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %data16, align 8
  %24 = load i32, ptr %n.addr, align 4
  %cmp17 = icmp eq i32 %23, %24
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %land.lhs.true
  store i32 1, ptr %found_flag, align 4
  br label %if.end20

if.else19:                                        ; preds = %land.lhs.true, %while.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then18
  br label %while.cond21

while.cond21:                                     ; preds = %if.end20
  %25 = load i32, ptr %found_flag, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %while.body22, label %while.end24

while.body22:                                     ; preds = %while.cond21
  %26 = load ptr, ptr %temp, align 8
  %call23 = call i32 @find_height(ptr noundef %26)
  store i32 %call23, ptr %count, align 4
  %27 = load i32, ptr %count, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

while.end24:                                      ; preds = %while.cond21
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end24, %while.body22, %if.else19
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @depth_node(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  %found_flag = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %temp, align 8
  store i32 0, ptr %found_flag, align 4
  store i32 0, ptr %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %entry
  %1 = load ptr, ptr %temp, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %data, align 8
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %temp, align 8
  %left = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %left, align 8
  %cmp1 = icmp ne ptr %5, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load ptr, ptr %temp, align 8
  %right = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %right, align 8
  %cmp2 = icmp ne ptr %7, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, ptr %n.addr, align 4
  %11 = load ptr, ptr %temp, align 8
  %data3 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %data3, align 8
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = load ptr, ptr %temp, align 8
  %left5 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %left5, align 8
  %cmp6 = icmp ne ptr %14, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %15 = load ptr, ptr %temp, align 8
  %left8 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %left8, align 8
  store ptr %16, ptr %temp, align 8
  %17 = load i32, ptr %count, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end15

if.else:                                          ; preds = %while.body
  %18 = load ptr, ptr %temp, align 8
  %right9 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %right9, align 8
  %cmp10 = icmp ne ptr %19, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.else
  %20 = load ptr, ptr %temp, align 8
  %right12 = getelementptr inbounds %struct.node, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %right12, align 8
  store ptr %21, ptr %temp, align 8
  %22 = load i32, ptr %count, align 4
  %inc13 = add nsw i32 %22, 1
  store i32 %inc13, ptr %count, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %23 = load ptr, ptr %temp, align 8
  %cmp16 = icmp ne ptr %23, null
  br i1 %cmp16, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %while.end
  %24 = load ptr, ptr %temp, align 8
  %data17 = getelementptr inbounds %struct.node, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %data17, align 8
  %26 = load i32, ptr %n.addr, align 4
  %cmp18 = icmp eq i32 %25, %26
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %land.lhs.true
  store i32 1, ptr %found_flag, align 4
  br label %if.end21

if.else20:                                        ; preds = %land.lhs.true, %while.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then19
  br label %while.cond22

while.cond22:                                     ; preds = %if.end21
  %27 = load i32, ptr %found_flag, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %while.body23, label %while.end24

while.body23:                                     ; preds = %while.cond22
  %28 = load i32, ptr %count, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

while.end24:                                      ; preds = %while.cond22
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end24, %while.body23, %if.else20
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca ptr, align 8
  %A = alloca [13 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr null, ptr @head, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 4 @__const.main.A, i64 52, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @head, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr %A, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %call = call ptr @insert(ptr noundef %1, i32 noundef %3)
  store ptr %call, ptr %temp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %5 = load ptr, ptr @head, align 8
  call void @print_preorder_all(ptr noundef %5)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %call4 = call i32 @height_node(i32 noundef 11)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %call4)
  %call6 = call i32 @depth_node(i32 noundef 11)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %call6)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %call9 = call i32 @height_node(i32 noundef 19)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %call9)
  %call11 = call i32 @depth_node(i32 noundef 19)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %call11)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %call14 = call i32 @height_node(i32 noundef 8)
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %call14)
  %call16 = call i32 @depth_node(i32 noundef 8)
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %call16)
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %call19 = call i32 @height_node(i32 noundef 5)
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %call19)
  %call21 = call i32 @depth_node(i32 noundef 5)
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i32 noundef %call21)
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.20)
  %call24 = call i32 @height_node(i32 noundef 32)
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i32 noundef %call24)
  %call26 = call i32 @depth_node(i32 noundef 32)
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, i32 noundef %call26)
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %call29 = call i32 @height_node(i32 noundef 31)
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i32 noundef %call29)
  %call31 = call i32 @depth_node(i32 noundef 31)
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, i32 noundef %call31)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
