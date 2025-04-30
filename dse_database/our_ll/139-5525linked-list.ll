; ModuleID = 'code/139-5525linked-list.c'
source_filename = "code/139-5525linked-list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_list(%struct.node* %head) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  store %struct.node* null, %struct.node** %head.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_empty(%struct.node* %head) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_list(%struct.node* %head) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  %cmp = icmp ne %struct.node* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.node*, %struct.node** %head.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load %struct.node*, %struct.node** %head.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %4, %struct.node** %head.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_begin(%struct.node** %head, i32 %value) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %value.addr = alloca i32, align 4
  %new_head = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.node**, %struct.node*** %head.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  %call = call i32 @is_empty(%struct.node* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noalias align 16 i8* @malloc(i64 16) #3
  %2 = bitcast i8* %call1 to %struct.node*
  %3 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %2, %struct.node** %3, align 8
  %4 = load i32, i32* %value.addr, align 4
  %5 = load %struct.node**, %struct.node*** %head.addr, align 8
  %6 = load %struct.node*, %struct.node** %5, align 8
  %value2 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  store i32 %4, i32* %value2, align 8
  %7 = load %struct.node**, %struct.node*** %head.addr, align 8
  %8 = load %struct.node*, %struct.node** %7, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* null, %struct.node** %next, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call noalias align 16 i8* @malloc(i64 16) #3
  %9 = bitcast i8* %call3 to %struct.node*
  store %struct.node* %9, %struct.node** %new_head, align 8
  %10 = load i32, i32* %value.addr, align 4
  %11 = load %struct.node*, %struct.node** %new_head, align 8
  %value4 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  store i32 %10, i32* %value4, align 8
  %12 = load %struct.node**, %struct.node*** %head.addr, align 8
  %13 = load %struct.node*, %struct.node** %12, align 8
  %14 = load %struct.node*, %struct.node** %new_head, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  store %struct.node* %13, %struct.node** %next5, align 8
  %15 = load %struct.node*, %struct.node** %new_head, align 8
  %16 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %15, %struct.node** %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_end(%struct.node** %list, i32 %value) #0 {
entry:
  %list.addr = alloca %struct.node**, align 8
  %value.addr = alloca i32, align 4
  %head = alloca %struct.node*, align 8
  store %struct.node** %list, %struct.node*** %list.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.node**, %struct.node*** %list.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %head, align 8
  %2 = load %struct.node*, %struct.node** %head, align 8
  %call = call i32 @is_empty(%struct.node* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noalias align 16 i8* @malloc(i64 16) #3
  %3 = bitcast i8* %call1 to %struct.node*
  store %struct.node* %3, %struct.node** %head, align 8
  %4 = load i32, i32* %value.addr, align 4
  %5 = load %struct.node*, %struct.node** %head, align 8
  %value2 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 0
  store i32 %4, i32* %value2, align 8
  %6 = load %struct.node*, %struct.node** %head, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  store %struct.node* null, %struct.node** %next, align 8
  %7 = load %struct.node*, %struct.node** %head, align 8
  %8 = load %struct.node**, %struct.node*** %list.addr, align 8
  store %struct.node* %7, %struct.node** %8, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %9 = load %struct.node*, %struct.node** %head, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %next3, align 8
  %call4 = call i32 @is_empty(%struct.node* %10)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.node*, %struct.node** %head, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  %12 = load %struct.node*, %struct.node** %next6, align 8
  store %struct.node* %12, %struct.node** %head, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call7 = call noalias align 16 i8* @malloc(i64 16) #3
  %13 = bitcast i8* %call7 to %struct.node*
  %14 = load %struct.node*, %struct.node** %head, align 8
  %next8 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  store %struct.node* %13, %struct.node** %next8, align 8
  %15 = load %struct.node*, %struct.node** %head, align 8
  %next9 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %next9, align 8
  store %struct.node* %16, %struct.node** %head, align 8
  %17 = load i32, i32* %value.addr, align 4
  %18 = load %struct.node*, %struct.node** %head, align 8
  %value10 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  store i32 %17, i32* %value10, align 8
  %19 = load %struct.node*, %struct.node** %head, align 8
  %next11 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 1
  store %struct.node* null, %struct.node** %next11, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @length_list(%struct.node* %head) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  %length = alloca i32, align 4
  store %struct.node* %head, %struct.node** %head.addr, align 8
  store i32 0, i32* %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  %call = call i32 @is_empty(%struct.node* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %length, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %length, align 4
  %2 = load %struct.node*, %struct.node** %head.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %3, %struct.node** %head.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %length, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_end_list(%struct.node* %head) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 1
  %1 = load %struct.node*, %struct.node** %next, align 8
  %next1 = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %next1, align 8
  %call = call i32 @is_empty(%struct.node* %2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.node*, %struct.node** %head.addr, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next2, align 8
  store %struct.node* %4, %struct.node** %head.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %5 = load %struct.node*, %struct.node** %head.addr, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %next3, align 8
  %7 = bitcast %struct.node* %6 to i8*
  call void @free(i8* %7) #3
  %8 = load %struct.node*, %struct.node** %head.addr, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* null, %struct.node** %next4, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_position(%struct.node* %head, i32 %position) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  %position.addr = alloca i32, align 4
  store %struct.node* %head, %struct.node** %head.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %position.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.node*, %struct.node** %head.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %2, %struct.node** %head.addr, align 8
  %3 = load i32, i32* %position.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %position.addr, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %4 = load %struct.node*, %struct.node** %head.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  %5 = load i32, i32* %value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_orderned(%struct.node** %list, i32 %value) #0 {
entry:
  %list.addr = alloca %struct.node**, align 8
  %value.addr = alloca i32, align 4
  %head = alloca %struct.node*, align 8
  %new_node = alloca %struct.node*, align 8
  store %struct.node** %list, %struct.node*** %list.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.node**, %struct.node*** %list.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.node*, %struct.node** %head, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load %struct.node*, %struct.node** %next, align 8
  %value1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load i32, i32* %value1, align 8
  %5 = load i32, i32* %value.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.node*, %struct.node** %head, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %next2, align 8
  %cmp3 = icmp ne %struct.node* %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.node*, %struct.node** %head, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %next4, align 8
  store %struct.node* %10, %struct.node** %head, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %land.end
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %11 = bitcast i8* %call to %struct.node*
  store %struct.node* %11, %struct.node** %new_node, align 8
  %12 = load i32, i32* %value.addr, align 4
  %13 = load %struct.node*, %struct.node** %new_node, align 8
  %value5 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  store i32 %12, i32* %value5, align 8
  %14 = load %struct.node*, %struct.node** %head, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  %15 = load %struct.node*, %struct.node** %next6, align 8
  %16 = load %struct.node*, %struct.node** %new_node, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  store %struct.node* %15, %struct.node** %next7, align 8
  %17 = load %struct.node*, %struct.node** %new_node, align 8
  %18 = load %struct.node*, %struct.node** %head, align 8
  %next8 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 1
  store %struct.node* %17, %struct.node** %next8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_value(%struct.node** %list, i32 %value) #0 {
entry:
  %list.addr = alloca %struct.node**, align 8
  %value.addr = alloca i32, align 4
  %ref = alloca %struct.node*, align 8
  %head = alloca %struct.node*, align 8
  store %struct.node** %list, %struct.node*** %list.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.node**, %struct.node*** %list.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.node*, %struct.node** %head, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load %struct.node*, %struct.node** %next, align 8
  %value1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load i32, i32* %value1, align 8
  %5 = load i32, i32* %value.addr, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.node*, %struct.node** %head, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %next2, align 8
  %cmp3 = icmp ne %struct.node* %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.node*, %struct.node** %head, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %next4, align 8
  store %struct.node* %10, %struct.node** %head, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  %11 = load %struct.node*, %struct.node** %head, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  %12 = load %struct.node*, %struct.node** %next5, align 8
  %call = call i32 @is_empty(%struct.node* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %while.end
  %13 = load %struct.node*, %struct.node** %head, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %14 = load %struct.node*, %struct.node** %next7, align 8
  store %struct.node* %14, %struct.node** %ref, align 8
  %15 = load %struct.node*, %struct.node** %ref, align 8
  %next8 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %next8, align 8
  %17 = load %struct.node*, %struct.node** %head, align 8
  %next9 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 1
  store %struct.node* %16, %struct.node** %next9, align 8
  %18 = load %struct.node*, %struct.node** %ref, align 8
  %19 = bitcast %struct.node* %18 to i8*
  call void @free(i8* %19) #3
  store %struct.node* null, %struct.node** %ref, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_begin(%struct.node** %list) #0 {
entry:
  %list.addr = alloca %struct.node**, align 8
  %head = alloca %struct.node*, align 8
  store %struct.node** %list, %struct.node*** %list.addr, align 8
  %0 = load %struct.node**, %struct.node*** %list.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %head, align 8
  %2 = load %struct.node**, %struct.node*** %list.addr, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next, align 8
  %5 = load %struct.node**, %struct.node*** %list.addr, align 8
  store %struct.node* %4, %struct.node** %5, align 8
  %6 = load %struct.node*, %struct.node** %head, align 8
  %7 = bitcast %struct.node* %6 to i8*
  call void @free(i8* %7) #3
  store %struct.node* null, %struct.node** %head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse_list(%struct.node** %list) #0 {
entry:
  %list.addr = alloca %struct.node**, align 8
  %ref = alloca %struct.node*, align 8
  %new_list = alloca %struct.node*, align 8
  store %struct.node** %list, %struct.node*** %list.addr, align 8
  %0 = load %struct.node**, %struct.node*** %list.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %ref, align 8
  store %struct.node* null, %struct.node** %new_list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.node*, %struct.node** %ref, align 8
  %call = call i32 @is_empty(%struct.node* %2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.node*, %struct.node** %ref, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load i32, i32* %value, align 8
  call void @insert_begin(%struct.node** %new_list, i32 %4)
  %5 = load %struct.node**, %struct.node*** %list.addr, align 8
  %6 = load %struct.node*, %struct.node** %5, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %next, align 8
  %8 = load %struct.node**, %struct.node*** %list.addr, align 8
  store %struct.node* %7, %struct.node** %8, align 8
  %9 = load %struct.node*, %struct.node** %ref, align 8
  %10 = bitcast %struct.node* %9 to i8*
  call void @free(i8* %10) #3
  %11 = load %struct.node**, %struct.node*** %list.addr, align 8
  %12 = load %struct.node*, %struct.node** %11, align 8
  store %struct.node* %12, %struct.node** %ref, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %13 = load %struct.node*, %struct.node** %new_list, align 8
  %14 = load %struct.node**, %struct.node*** %list.addr, align 8
  store %struct.node* %13, %struct.node** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %list = alloca %struct.node*, align 8
  %list2 = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.node* null, %struct.node** %list, align 8
  call void @insert_begin(%struct.node** %list, i32 9)
  call void @insert_begin(%struct.node** %list, i32 7)
  call void @insert_begin(%struct.node** %list, i32 5)
  call void @insert_begin(%struct.node** %list, i32 4)
  call void @insert_begin(%struct.node** %list, i32 3)
  call void @insert_begin(%struct.node** %list, i32 1)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %0 = load %struct.node*, %struct.node** %list, align 8
  call void @print_list(%struct.node* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %1 = load %struct.node*, %struct.node** %list, align 8
  call void @length_list(%struct.node* %1)
  %2 = load %struct.node*, %struct.node** %list, align 8
  call void @remove_end_list(%struct.node* %2)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %3 = load %struct.node*, %struct.node** %list, align 8
  call void @print_list(%struct.node* %3)
  call void @insert_end(%struct.node** %list, i32 11)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %4 = load %struct.node*, %struct.node** %list, align 8
  call void @print_list(%struct.node* %4)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %5 = load %struct.node*, %struct.node** %list, align 8
  call void @find_position(%struct.node* %5, i32 5)
  call void @insert_orderned(%struct.node** %list, i32 6)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %6 = load %struct.node*, %struct.node** %list, align 8
  call void @print_list(%struct.node* %6)
  call void @remove_value(%struct.node** %list, i32 4)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %7 = load %struct.node*, %struct.node** %list, align 8
  call void @print_list(%struct.node* %7)
  call void @remove_begin(%struct.node** %list)
  call void @remove_begin(%struct.node** %list)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %8 = load %struct.node*, %struct.node** %list, align 8
  call void @print_list(%struct.node* %8)
  store %struct.node* null, %struct.node** %list2, align 8
  call void @insert_end(%struct.node** %list2, i32 1)
  call void @insert_end(%struct.node** %list2, i32 3)
  call void @insert_end(%struct.node** %list2, i32 4)
  call void @insert_end(%struct.node** %list2, i32 5)
  call void @insert_end(%struct.node** %list2, i32 7)
  call void @insert_end(%struct.node** %list2, i32 9)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %9 = load %struct.node*, %struct.node** %list2, align 8
  call void @print_list(%struct.node* %9)
  call void @reverse_list(%struct.node** %list2)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %10 = load %struct.node*, %struct.node** %list2, align 8
  call void @print_list(%struct.node* %10)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
