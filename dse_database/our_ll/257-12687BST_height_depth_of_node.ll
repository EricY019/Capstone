; ModuleID = 'code/257-12687BST_height_depth_of_node.c'
source_filename = "code/257-12687BST_height_depth_of_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }

@head = dso_local global %struct.node* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"data %d \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"left child %d \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"left child NULL \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"right child %d \0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"right child NULL \0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"*******Node not found*******\0A\00", align 1
@__const.main.A = private unnamed_addr constant [13 x i32] [i32 11, i32 6, i32 8, i32 19, i32 4, i32 13, i32 5, i32 17, i32 43, i32 49, i32 16, i32 31, i32 32], align 16
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @create(i32 %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %temp = alloca %struct.node*, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %temp, align 8
  %1 = load i32, i32* %data.addr, align 4
  %2 = load %struct.node*, %struct.node** %temp, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %data1, align 8
  %3 = load %struct.node*, %struct.node** %temp, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* null, %struct.node** %left, align 8
  %4 = load %struct.node*, %struct.node** %temp, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  store %struct.node* null, %struct.node** %right, align 8
  %5 = load %struct.node*, %struct.node** %temp, align 8
  ret %struct.node* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @insert(%struct.node* %current, i32 %data) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %current.addr = alloca %struct.node*, align 8
  %data.addr = alloca i32, align 4
  %temp = alloca %struct.node*, align 8
  %temp3 = alloca %struct.node*, align 8
  store %struct.node* %current, %struct.node** %current.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %0 = load %struct.node*, %struct.node** @head, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %data.addr, align 4
  %call = call %struct.node* @create(i32 %1)
  store %struct.node* %call, %struct.node** %temp, align 8
  %2 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %2, %struct.node** @head, align 8
  %3 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %3, %struct.node** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.node*, %struct.node** %current.addr, align 8
  %cmp1 = icmp eq %struct.node* %4, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load i32, i32* %data.addr, align 4
  %call4 = call %struct.node* @create(i32 %5)
  store %struct.node* %call4, %struct.node** %temp3, align 8
  %6 = load %struct.node*, %struct.node** %temp3, align 8
  store %struct.node* %6, %struct.node** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load i32, i32* %data.addr, align 4
  %8 = load %struct.node*, %struct.node** %current.addr, align 8
  %data5 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %9 = load i32, i32* %data5, align 8
  %cmp6 = icmp sle i32 %7, %9
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.end
  %10 = load %struct.node*, %struct.node** %current.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %11 = load %struct.node*, %struct.node** %left, align 8
  %12 = load i32, i32* %data.addr, align 4
  %call8 = call %struct.node* @insert(%struct.node* %11, i32 %12)
  %13 = load %struct.node*, %struct.node** %current.addr, align 8
  %left9 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  store %struct.node* %call8, %struct.node** %left9, align 8
  br label %if.end17

if.else10:                                        ; preds = %if.end
  %14 = load i32, i32* %data.addr, align 4
  %15 = load %struct.node*, %struct.node** %current.addr, align 8
  %data11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %16 = load i32, i32* %data11, align 8
  %cmp12 = icmp sgt i32 %14, %16
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.else10
  %17 = load %struct.node*, %struct.node** %current.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  %18 = load %struct.node*, %struct.node** %right, align 8
  %19 = load i32, i32* %data.addr, align 4
  %call14 = call %struct.node* @insert(%struct.node* %18, i32 %19)
  %20 = load %struct.node*, %struct.node** %current.addr, align 8
  %right15 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 2
  store %struct.node* %call14, %struct.node** %right15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %21 = load %struct.node*, %struct.node** %current.addr, align 8
  store %struct.node* %21, %struct.node** %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then2, %if.then
  %22 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_preorder_all(%struct.node* %temp) #0 {
entry:
  %temp.addr = alloca %struct.node*, align 8
  store %struct.node* %temp, %struct.node** %temp.addr, align 8
  %0 = load %struct.node*, %struct.node** %temp.addr, align 8
  %cmp = icmp ne %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %1 = load %struct.node*, %struct.node** %temp.addr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load %struct.node*, %struct.node** %temp.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %left, align 8
  %cmp1 = icmp ne %struct.node* %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load %struct.node*, %struct.node** %temp.addr, align 8
  %left3 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %left3, align 8
  %data4 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %7 = load i32, i32* %data4, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %8 = load %struct.node*, %struct.node** %temp.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  %9 = load %struct.node*, %struct.node** %right, align 8
  %cmp7 = icmp ne %struct.node* %9, null
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end
  %10 = load %struct.node*, %struct.node** %temp.addr, align 8
  %right9 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 2
  %11 = load %struct.node*, %struct.node** %right9, align 8
  %data10 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %12 = load i32, i32* %data10, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  br label %if.end14

if.else12:                                        ; preds = %if.end
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then8
  %13 = load %struct.node*, %struct.node** %temp.addr, align 8
  %left15 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %14 = load %struct.node*, %struct.node** %left15, align 8
  call void @print_preorder_all(%struct.node* %14)
  %15 = load %struct.node*, %struct.node** %temp.addr, align 8
  %right16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 2
  %16 = load %struct.node*, %struct.node** %right16, align 8
  call void @print_preorder_all(%struct.node* %16)
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %entry
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_height(%struct.node* %temp) #0 {
entry:
  %retval = alloca i32, align 4
  %temp.addr = alloca %struct.node*, align 8
  %left_h = alloca i32, align 4
  %right_h = alloca i32, align 4
  store %struct.node* %temp, %struct.node** %temp.addr, align 8
  %0 = load %struct.node*, %struct.node** %temp.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %temp.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %left, align 8
  %call = call i32 @find_height(%struct.node* %2)
  store i32 %call, i32* %left_h, align 4
  %3 = load %struct.node*, %struct.node** %temp.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  %4 = load %struct.node*, %struct.node** %right, align 8
  %call1 = call i32 @find_height(%struct.node* %4)
  store i32 %call1, i32* %right_h, align 4
  %5 = load i32, i32* %left_h, align 4
  %6 = load i32, i32* %right_h, align 4
  %cmp2 = icmp sgt i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %left_h, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %right_h, align 4
  %add4 = add nsw i32 %8, 1
  store i32 %add4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @height_node(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %temp = alloca %struct.node*, align 8
  %found_flag = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.node*, %struct.node** @head, align 8
  store %struct.node* %0, %struct.node** %temp, align 8
  store i32 0, i32* %found_flag, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %1 = load %struct.node*, %struct.node** %temp, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.node*, %struct.node** %temp, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %left, align 8
  %cmp1 = icmp ne %struct.node* %5, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load %struct.node*, %struct.node** %temp, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  %7 = load %struct.node*, %struct.node** %right, align 8
  %cmp2 = icmp ne %struct.node* %7, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %n.addr, align 4
  %11 = load %struct.node*, %struct.node** %temp, align 8
  %data3 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %12 = load i32, i32* %data3, align 8
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = load %struct.node*, %struct.node** %temp, align 8
  %left5 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %14 = load %struct.node*, %struct.node** %left5, align 8
  %cmp6 = icmp ne %struct.node* %14, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %15 = load %struct.node*, %struct.node** %temp, align 8
  %left8 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %left8, align 8
  store %struct.node* %16, %struct.node** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end14

if.else:                                          ; preds = %while.body
  %17 = load %struct.node*, %struct.node** %temp, align 8
  %right9 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  %18 = load %struct.node*, %struct.node** %right9, align 8
  %cmp10 = icmp ne %struct.node* %18, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %19 = load %struct.node*, %struct.node** %temp, align 8
  %right12 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 2
  %20 = load %struct.node*, %struct.node** %right12, align 8
  store %struct.node* %20, %struct.node** %temp, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %21 = load %struct.node*, %struct.node** %temp, align 8
  %cmp15 = icmp ne %struct.node* %21, null
  br i1 %cmp15, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %while.end
  %22 = load %struct.node*, %struct.node** %temp, align 8
  %data16 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0
  %23 = load i32, i32* %data16, align 8
  %24 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp eq i32 %23, %24
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %land.lhs.true
  store i32 1, i32* %found_flag, align 4
  br label %if.end20

if.else19:                                        ; preds = %land.lhs.true, %while.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then18
  br label %while.cond21

while.cond21:                                     ; preds = %if.end20
  %25 = load i32, i32* %found_flag, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %while.body22, label %while.end24

while.body22:                                     ; preds = %while.cond21
  %26 = load %struct.node*, %struct.node** %temp, align 8
  %call23 = call i32 @find_height(%struct.node* %26)
  store i32 %call23, i32* %count, align 4
  %27 = load i32, i32* %count, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

while.end24:                                      ; preds = %while.cond21
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end24, %while.body22, %if.else19
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @depth_node(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %temp = alloca %struct.node*, align 8
  %found_flag = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.node*, %struct.node** @head, align 8
  store %struct.node* %0, %struct.node** %temp, align 8
  store i32 0, i32* %found_flag, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %entry
  %1 = load %struct.node*, %struct.node** %temp, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.node*, %struct.node** %temp, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %left, align 8
  %cmp1 = icmp ne %struct.node* %5, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load %struct.node*, %struct.node** %temp, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  %7 = load %struct.node*, %struct.node** %right, align 8
  %cmp2 = icmp ne %struct.node* %7, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %n.addr, align 4
  %11 = load %struct.node*, %struct.node** %temp, align 8
  %data3 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %12 = load i32, i32* %data3, align 8
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = load %struct.node*, %struct.node** %temp, align 8
  %left5 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %14 = load %struct.node*, %struct.node** %left5, align 8
  %cmp6 = icmp ne %struct.node* %14, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %15 = load %struct.node*, %struct.node** %temp, align 8
  %left8 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %left8, align 8
  store %struct.node* %16, %struct.node** %temp, align 8
  %17 = load i32, i32* %count, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end15

if.else:                                          ; preds = %while.body
  %18 = load %struct.node*, %struct.node** %temp, align 8
  %right9 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2
  %19 = load %struct.node*, %struct.node** %right9, align 8
  %cmp10 = icmp ne %struct.node* %19, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.else
  %20 = load %struct.node*, %struct.node** %temp, align 8
  %right12 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 2
  %21 = load %struct.node*, %struct.node** %right12, align 8
  store %struct.node* %21, %struct.node** %temp, align 8
  %22 = load i32, i32* %count, align 4
  %inc13 = add nsw i32 %22, 1
  store i32 %inc13, i32* %count, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %23 = load %struct.node*, %struct.node** %temp, align 8
  %cmp16 = icmp ne %struct.node* %23, null
  br i1 %cmp16, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %while.end
  %24 = load %struct.node*, %struct.node** %temp, align 8
  %data17 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 0
  %25 = load i32, i32* %data17, align 8
  %26 = load i32, i32* %n.addr, align 4
  %cmp18 = icmp eq i32 %25, %26
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %land.lhs.true
  store i32 1, i32* %found_flag, align 4
  br label %if.end21

if.else20:                                        ; preds = %land.lhs.true, %while.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then19
  br label %while.cond22

while.cond22:                                     ; preds = %if.end21
  %27 = load i32, i32* %found_flag, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %while.body23, label %while.end24

while.body23:                                     ; preds = %while.cond22
  %28 = load i32, i32* %count, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

while.end24:                                      ; preds = %while.cond22
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end24, %while.body23, %if.else20
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca %struct.node*, align 8
  %A = alloca [13 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store %struct.node* null, %struct.node** @head, align 8
  %0 = bitcast [13 x i32]* %A to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([13 x i32]* @__const.main.A to i8*), i64 52, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.node*, %struct.node** @head, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* %A, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call %struct.node* @insert(%struct.node* %2, i32 %4)
  store %struct.node* %call, %struct.node** %temp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %6 = load %struct.node*, %struct.node** @head, align 8
  call void @print_preorder_all(%struct.node* %6)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %call4 = call i32 @height_node(i32 11)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %call4)
  %call6 = call i32 @depth_node(i32 11)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %call6)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %call9 = call i32 @height_node(i32 19)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %call9)
  %call11 = call i32 @depth_node(i32 19)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %call11)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %call14 = call i32 @height_node(i32 8)
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %call14)
  %call16 = call i32 @depth_node(i32 8)
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %call16)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %call19 = call i32 @height_node(i32 5)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %call19)
  %call21 = call i32 @depth_node(i32 5)
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %call21)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %call24 = call i32 @height_node(i32 32)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %call24)
  %call26 = call i32 @depth_node(i32 32)
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %call26)
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %call29 = call i32 @height_node(i32 31)
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %call29)
  %call31 = call i32 @depth_node(i32 31)
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %call31)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
