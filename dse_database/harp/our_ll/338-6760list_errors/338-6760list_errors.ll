; ModuleID = 'code/338-6760list_errors.c'
source_filename = "code/338-6760list_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"res == -1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"code/338-6760list_errors.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"test_list\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @make_node(i32 %val, %struct.node* %next) #0 {
entry:
  %val.addr = alloca i32, align 4
  %next.addr = alloca %struct.node*, align 8
  %node = alloca %struct.node*, align 8
  store i32 %val, i32* %val.addr, align 4
  store %struct.node* %next, %struct.node** %next.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %node, align 8
  %1 = load i32, i32* %val.addr, align 4
  %2 = load %struct.node*, %struct.node** %node, align 8
  %val1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %val1, align 8
  %3 = load %struct.node*, %struct.node** %next.addr, align 8
  %4 = load %struct.node*, %struct.node** %node, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  store %struct.node* %3, %struct.node** %next2, align 8
  %5 = load %struct.node*, %struct.node** %node, align 8
  ret %struct.node* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_list(%struct.node* %head) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  %current = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  store %struct.node* %0, %struct.node** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.node*, %struct.node** %current, align 8
  %cmp = icmp ne %struct.node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %current, align 8
  %val = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %val, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  %4 = load %struct.node*, %struct.node** %current, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %5, %struct.node** %current, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop(%struct.node** %head) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.node**, align 8
  %retval1 = alloca i32, align 4
  %next_node = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  %0 = load %struct.node**, %struct.node*** %head.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  %cmp = icmp eq %struct.node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.node**, %struct.node*** %head.addr, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %4, %struct.node** %next_node, align 8
  %5 = load %struct.node**, %struct.node*** %head.addr, align 8
  %6 = load %struct.node*, %struct.node** %5, align 8
  %val = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %7 = load i32, i32* %val, align 8
  store i32 %7, i32* %retval1, align 4
  %8 = load %struct.node*, %struct.node** %next_node, align 8
  %9 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %8, %struct.node** %9, align 8
  %10 = load i32, i32* %retval1, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push(%struct.node** %head, i32 %val) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %val.addr = alloca i32, align 4
  %new_node = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  %1 = load %struct.node**, %struct.node*** %head.addr, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %call = call %struct.node* @make_node(i32 %0, %struct.node* %2)
  store %struct.node* %call, %struct.node** %new_node, align 8
  %3 = load %struct.node*, %struct.node** %new_node, align 8
  %4 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %3, %struct.node** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_by_value(%struct.node** %head, i32 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.node**, align 8
  %val.addr = alloca i32, align 4
  %node = alloca %struct.node*, align 8
  %victim = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.node**, %struct.node*** %head.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %node, align 8
  %2 = load %struct.node*, %struct.node** %node, align 8
  %cmp = icmp eq %struct.node* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.node*, %struct.node** %node, align 8
  %val1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load i32, i32* %val1, align 8
  %5 = load i32, i32* %val.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load %struct.node**, %struct.node*** %head.addr, align 8
  %call = call i32 @pop(%struct.node** %6)
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = load %struct.node*, %struct.node** %node, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  %8 = load %struct.node*, %struct.node** %next, align 8
  %cmp5 = icmp ne %struct.node* %8, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.node*, %struct.node** %node, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %next6, align 8
  %val7 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %11 = load i32, i32* %val7, align 8
  %12 = load i32, i32* %val.addr, align 4
  %cmp8 = icmp eq i32 %11, %12
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %for.body
  %13 = load %struct.node*, %struct.node** %node, align 8
  %next10 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %14 = load %struct.node*, %struct.node** %next10, align 8
  store %struct.node* %14, %struct.node** %victim, align 8
  %15 = load %struct.node*, %struct.node** %victim, align 8
  %next11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %next11, align 8
  %17 = load %struct.node*, %struct.node** %node, align 8
  %next12 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 1
  store %struct.node* %16, %struct.node** %next12, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %18 = load %struct.node*, %struct.node** %node, align 8
  %next14 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 1
  %19 = load %struct.node*, %struct.node** %next14, align 8
  store %struct.node* %19, %struct.node** %node, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then9, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(%struct.node** %head) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %node = alloca %struct.node*, align 8
  %next = alloca %struct.node*, align 8
  %temp = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  %0 = load %struct.node**, %struct.node*** %head.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %node, align 8
  %2 = load %struct.node*, %struct.node** %node, align 8
  %cmp = icmp eq %struct.node* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.node*, %struct.node** %node, align 8
  %next1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next1, align 8
  %cmp2 = icmp eq %struct.node* %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.node*, %struct.node** %node, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %next3, align 8
  store %struct.node* %6, %struct.node** %next, align 8
  %7 = load %struct.node*, %struct.node** %node, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  store %struct.node* null, %struct.node** %next4, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load %struct.node*, %struct.node** %next, align 8
  %cmp5 = icmp ne %struct.node* %8, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.node*, %struct.node** %next, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %next6, align 8
  store %struct.node* %10, %struct.node** %temp, align 8
  %11 = load %struct.node*, %struct.node** %node, align 8
  %12 = load %struct.node*, %struct.node** %next, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  store %struct.node* %11, %struct.node** %next7, align 8
  %13 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %13, %struct.node** %node, align 8
  %14 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %14, %struct.node** %next, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %15 = load %struct.node*, %struct.node** %node, align 8
  %16 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %15, %struct.node** %16, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insert_by_index(%struct.node** %head, i32 %val, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.node**, align 8
  %val.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %node = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.node**, %struct.node*** %head.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %node, align 8
  %2 = load i32, i32* %index.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.node**, %struct.node*** %head.addr, align 8
  %4 = load i32, i32* %val.addr, align 4
  call void @push(%struct.node** %3, i32 %4)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %index.addr, align 4
  %sub = sub nsw i32 %6, 1
  %cmp1 = icmp slt i32 %5, %sub
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.node*, %struct.node** %node, align 8
  %cmp2 = icmp eq %struct.node* %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %for.body
  %8 = load %struct.node*, %struct.node** %node, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  %9 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %9, %struct.node** %node, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %11 = load %struct.node*, %struct.node** %node, align 8
  %cmp5 = icmp eq %struct.node* %11, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %for.end
  %12 = load i32, i32* %val.addr, align 4
  %13 = load %struct.node*, %struct.node** %node, align 8
  %next8 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %14 = load %struct.node*, %struct.node** %next8, align 8
  %call = call %struct.node* @make_node(i32 %12, %struct.node* %14)
  %15 = load %struct.node*, %struct.node** %node, align 8
  %next9 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  store %struct.node* %call, %struct.node** %next9, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @make_something() #0 {
entry:
  %node1 = alloca %struct.node*, align 8
  %node2 = alloca %struct.node*, align 8
  %node3 = alloca %struct.node*, align 8
  %val = alloca i32, align 4
  %call = call %struct.node* @make_node(i32 1, %struct.node* null)
  store %struct.node* %call, %struct.node** %node1, align 8
  %call1 = call %struct.node* @make_node(i32 2, %struct.node* null)
  store %struct.node* %call1, %struct.node** %node2, align 8
  %call2 = call %struct.node* @make_node(i32 3, %struct.node* null)
  store %struct.node* %call2, %struct.node** %node3, align 8
  %call3 = call i32 @pop(%struct.node** %node1)
  store i32 %call3, i32* %val, align 4
  %0 = load i32, i32* %val, align 4
  call void @push(%struct.node** %node2, i32 %0)
  %1 = load %struct.node*, %struct.node** %node2, align 8
  %2 = load %struct.node*, %struct.node** %node3, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  store %struct.node* %1, %struct.node** %next, align 8
  %3 = load %struct.node*, %struct.node** %node3, align 8
  ret %struct.node* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeNodes(%struct.node* %list) #0 {
entry:
  %list.addr = alloca %struct.node*, align 8
  %cur = alloca %struct.node*, align 8
  %prev = alloca %struct.node*, align 8
  store %struct.node* %list, %struct.node** %list.addr, align 8
  %0 = load %struct.node*, %struct.node** %list.addr, align 8
  store %struct.node* %0, %struct.node** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.node*, %struct.node** %cur, align 8
  %cmp = icmp ne %struct.node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %cur, align 8
  store %struct.node* %2, %struct.node** %prev, align 8
  %3 = load %struct.node*, %struct.node** %cur, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %4, %struct.node** %cur, align 8
  %5 = load %struct.node*, %struct.node** %prev, align 8
  %6 = bitcast %struct.node* %5 to i8*
  call void @free(i8* %6) #4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %test_list = alloca %struct.node*, align 8
  %res = alloca i32, align 4
  %empty = alloca %struct.node*, align 8
  %something = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct.node* @make_node(i32 2, %struct.node* null)
  store %struct.node* %call, %struct.node** %test_list, align 8
  %call1 = call %struct.node* @make_node(i32 4, %struct.node* null)
  %0 = load %struct.node*, %struct.node** %test_list, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 1
  store %struct.node* %call1, %struct.node** %next, align 8
  %call2 = call %struct.node* @make_node(i32 6, %struct.node* null)
  %1 = load %struct.node*, %struct.node** %test_list, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %next3, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  store %struct.node* %call2, %struct.node** %next4, align 8
  %call5 = call i32 @insert_by_index(%struct.node** %test_list, i32 1, i32 0)
  %call6 = call i32 @insert_by_index(%struct.node** %test_list, i32 3, i32 2)
  %call7 = call i32 @insert_by_index(%struct.node** %test_list, i32 5, i32 4)
  %call8 = call i32 @insert_by_index(%struct.node** %test_list, i32 7, i32 6)
  %call9 = call i32 @insert_by_index(%struct.node** %test_list, i32 9, i32 8)
  store i32 %call9, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %5 = load %struct.node*, %struct.node** %test_list, align 8
  call void @print_list(%struct.node* %5)
  %6 = load %struct.node*, %struct.node** %test_list, align 8
  call void @freeNodes(%struct.node* %6)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.node* null, %struct.node** %empty, align 8
  %call12 = call i32 @insert_by_index(%struct.node** %empty, i32 1, i32 0)
  %7 = load %struct.node*, %struct.node** %empty, align 8
  call void @print_list(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %empty, align 8
  %9 = bitcast %struct.node* %8 to i8*
  call void @free(i8* %9) #4
  %call13 = call %struct.node* @make_something()
  store %struct.node* %call13, %struct.node** %something, align 8
  %10 = load %struct.node*, %struct.node** %something, align 8
  call void @freeNodes(%struct.node* %10)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
