; ModuleID = 'code/136-17581single-list.c'
source_filename = "code/136-17581single-list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sl_node = type { i32, %struct.sl_node* }

@.str = private unnamed_addr constant [11 x i8] c"traversal \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c", total %d nodes traversed\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"deleted %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sl_node* @construct_sl(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %head = alloca %struct.sl_node*, align 8
  %p = alloca %struct.sl_node*, align 8
  %p1 = alloca %struct.sl_node*, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.sl_node* null, %struct.sl_node** %head, align 8
  store %struct.sl_node* null, %struct.sl_node** %p, align 8
  store %struct.sl_node* null, %struct.sl_node** %p1, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.sl_node*
  store %struct.sl_node* %0, %struct.sl_node** %p, align 8
  %1 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %value = getelementptr inbounds %struct.sl_node, %struct.sl_node* %1, i32 0, i32 0
  store i32 0, i32* %value, align 8
  %2 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next = getelementptr inbounds %struct.sl_node, %struct.sl_node* %2, i32 0, i32 1
  store %struct.sl_node* null, %struct.sl_node** %next, align 8
  %3 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %3, %struct.sl_node** %head, align 8
  %4 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %4, %struct.sl_node** %p1, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noalias align 16 i8* @malloc(i64 16) #4
  %7 = bitcast i8* %call1 to %struct.sl_node*
  store %struct.sl_node* %7, %struct.sl_node** %p, align 8
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %value2 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %9, i32 0, i32 0
  store i32 %8, i32* %value2, align 8
  %10 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next3 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %10, i32 0, i32 1
  store %struct.sl_node* null, %struct.sl_node** %next3, align 8
  %11 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %12 = load %struct.sl_node*, %struct.sl_node** %p1, align 8
  %next4 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %12, i32 0, i32 1
  store %struct.sl_node* %11, %struct.sl_node** %next4, align 8
  %13 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %13, %struct.sl_node** %p1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %15 = load %struct.sl_node*, %struct.sl_node** %head, align 8
  ret %struct.sl_node* %15
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @traverse_sl(%struct.sl_node* %head) #0 {
entry:
  %head.addr = alloca %struct.sl_node*, align 8
  %p = alloca %struct.sl_node*, align 8
  %cnt = alloca i32, align 4
  store %struct.sl_node* %head, %struct.sl_node** %head.addr, align 8
  %0 = load %struct.sl_node*, %struct.sl_node** %head.addr, align 8
  store %struct.sl_node* %0, %struct.sl_node** %p, align 8
  store i32 0, i32* %cnt, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %tobool = icmp ne %struct.sl_node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %value = getelementptr inbounds %struct.sl_node, %struct.sl_node* %2, i32 0, i32 0
  %3 = load i32, i32* %value, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %4 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next = getelementptr inbounds %struct.sl_node, %struct.sl_node* %4, i32 0, i32 1
  %5 = load %struct.sl_node*, %struct.sl_node** %next, align 8
  store %struct.sl_node* %5, %struct.sl_node** %p, align 8
  %6 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %cnt, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %cnt, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_node_p(%struct.sl_node* %phead, i32 %vtd) #0 {
entry:
  %retval = alloca i32, align 4
  %phead.addr = alloca %struct.sl_node*, align 8
  %vtd.addr = alloca i32, align 4
  %prev = alloca %struct.sl_node*, align 8
  %p = alloca %struct.sl_node*, align 8
  store %struct.sl_node* %phead, %struct.sl_node** %phead.addr, align 8
  store i32 %vtd, i32* %vtd.addr, align 4
  store %struct.sl_node* null, %struct.sl_node** %prev, align 8
  %0 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  store %struct.sl_node* %0, %struct.sl_node** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then, %entry
  %1 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %cmp = icmp ne %struct.sl_node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %value = getelementptr inbounds %struct.sl_node, %struct.sl_node* %2, i32 0, i32 0
  %3 = load i32, i32* %value, align 8
  %4 = load i32, i32* %vtd.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %5, %struct.sl_node** %prev, align 8
  %6 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next = getelementptr inbounds %struct.sl_node, %struct.sl_node* %6, i32 0, i32 1
  %7 = load %struct.sl_node*, %struct.sl_node** %next, align 8
  store %struct.sl_node* %7, %struct.sl_node** %p, align 8
  br label %while.cond, !llvm.loop !7

if.else:                                          ; preds = %while.body
  %8 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next2 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %8, i32 0, i32 1
  %9 = load %struct.sl_node*, %struct.sl_node** %next2, align 8
  %cmp3 = icmp ne %struct.sl_node* %9, null
  br i1 %cmp3, label %if.then4, label %if.else17

if.then4:                                         ; preds = %if.else
  %10 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %11 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %cmp5 = icmp eq %struct.sl_node* %10, %11
  br i1 %cmp5, label %if.then6, label %if.else14

if.then6:                                         ; preds = %if.then4
  %12 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next7 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %12, i32 0, i32 1
  %13 = load %struct.sl_node*, %struct.sl_node** %next7, align 8
  store %struct.sl_node* %13, %struct.sl_node** %p, align 8
  %14 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %next8 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %14, i32 0, i32 1
  %15 = load %struct.sl_node*, %struct.sl_node** %next8, align 8
  %value9 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %15, i32 0, i32 0
  %16 = load i32, i32* %value9, align 8
  %17 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %value10 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %17, i32 0, i32 0
  store i32 %16, i32* %value10, align 8
  %18 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %next11 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %18, i32 0, i32 1
  %19 = load %struct.sl_node*, %struct.sl_node** %next11, align 8
  %next12 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %19, i32 0, i32 1
  %20 = load %struct.sl_node*, %struct.sl_node** %next12, align 8
  %21 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %next13 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %21, i32 0, i32 1
  store %struct.sl_node* %20, %struct.sl_node** %next13, align 8
  %22 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %23 = bitcast %struct.sl_node* %22 to i8*
  call void @free(i8* %23) #4
  store i32 0, i32* %retval, align 4
  br label %return

if.else14:                                        ; preds = %if.then4
  %24 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next15 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %24, i32 0, i32 1
  %25 = load %struct.sl_node*, %struct.sl_node** %next15, align 8
  %26 = load %struct.sl_node*, %struct.sl_node** %prev, align 8
  %next16 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %26, i32 0, i32 1
  store %struct.sl_node* %25, %struct.sl_node** %next16, align 8
  %27 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %28 = bitcast %struct.sl_node* %27 to i8*
  call void @free(i8* %28) #4
  store i32 0, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %if.else
  %29 = load %struct.sl_node*, %struct.sl_node** %prev, align 8
  %cmp18 = icmp ne %struct.sl_node* %29, null
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else17
  %30 = load %struct.sl_node*, %struct.sl_node** %prev, align 8
  %next20 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %30, i32 0, i32 1
  store %struct.sl_node* null, %struct.sl_node** %next20, align 8
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else17
  %31 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %32 = bitcast %struct.sl_node* %31 to i8*
  call void @free(i8* %32) #4
  store %struct.sl_node* null, %struct.sl_node** %p, align 8
  store i32 0, i32* %retval, align 4
  br label %return

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end, %if.else14, %if.then6
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sl_node* @del_node_p_return(%struct.sl_node* %phead, i32 %vtd) #0 {
entry:
  %retval = alloca %struct.sl_node*, align 8
  %phead.addr = alloca %struct.sl_node*, align 8
  %vtd.addr = alloca i32, align 4
  %prev = alloca %struct.sl_node*, align 8
  %p = alloca %struct.sl_node*, align 8
  %p1 = alloca %struct.sl_node*, align 8
  store %struct.sl_node* %phead, %struct.sl_node** %phead.addr, align 8
  store i32 %vtd, i32* %vtd.addr, align 4
  store %struct.sl_node* null, %struct.sl_node** %prev, align 8
  %0 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  store %struct.sl_node* %0, %struct.sl_node** %p, align 8
  store %struct.sl_node* null, %struct.sl_node** %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.then, %entry
  %1 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %cmp = icmp ne %struct.sl_node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %value = getelementptr inbounds %struct.sl_node, %struct.sl_node* %2, i32 0, i32 0
  %3 = load i32, i32* %value, align 8
  %4 = load i32, i32* %vtd.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %5, %struct.sl_node** %prev, align 8
  %6 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next = getelementptr inbounds %struct.sl_node, %struct.sl_node* %6, i32 0, i32 1
  %7 = load %struct.sl_node*, %struct.sl_node** %next, align 8
  store %struct.sl_node* %7, %struct.sl_node** %p, align 8
  br label %while.cond, !llvm.loop !8

if.else:                                          ; preds = %while.body
  %8 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next2 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %8, i32 0, i32 1
  %9 = load %struct.sl_node*, %struct.sl_node** %next2, align 8
  %cmp3 = icmp ne %struct.sl_node* %9, null
  br i1 %cmp3, label %if.then4, label %if.else13

if.then4:                                         ; preds = %if.else
  %10 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %11 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %cmp5 = icmp eq %struct.sl_node* %10, %11
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.then4
  %12 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  store %struct.sl_node* %12, %struct.sl_node** %p1, align 8
  %13 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %next7 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %13, i32 0, i32 1
  %14 = load %struct.sl_node*, %struct.sl_node** %next7, align 8
  store %struct.sl_node* %14, %struct.sl_node** %phead.addr, align 8
  %15 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next8 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %15, i32 0, i32 1
  %16 = load %struct.sl_node*, %struct.sl_node** %next8, align 8
  store %struct.sl_node* %16, %struct.sl_node** %p, align 8
  %17 = load %struct.sl_node*, %struct.sl_node** %p1, align 8
  %18 = bitcast %struct.sl_node* %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end

if.else9:                                         ; preds = %if.then4
  %19 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next10 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %19, i32 0, i32 1
  %20 = load %struct.sl_node*, %struct.sl_node** %next10, align 8
  %21 = load %struct.sl_node*, %struct.sl_node** %prev, align 8
  %next11 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %21, i32 0, i32 1
  store %struct.sl_node* %20, %struct.sl_node** %next11, align 8
  %22 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %22, %struct.sl_node** %p1, align 8
  %23 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next12 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %23, i32 0, i32 1
  %24 = load %struct.sl_node*, %struct.sl_node** %next12, align 8
  store %struct.sl_node* %24, %struct.sl_node** %p, align 8
  %25 = load %struct.sl_node*, %struct.sl_node** %p1, align 8
  %26 = bitcast %struct.sl_node* %25 to i8*
  call void @free(i8* %26) #4
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then6
  br label %if.end19

if.else13:                                        ; preds = %if.else
  %27 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %28 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %cmp14 = icmp eq %struct.sl_node* %27, %28
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else13
  %29 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %29, %struct.sl_node** %p1, align 8
  store %struct.sl_node* null, %struct.sl_node** %phead.addr, align 8
  store %struct.sl_node* null, %struct.sl_node** %p, align 8
  %30 = load %struct.sl_node*, %struct.sl_node** %p1, align 8
  %31 = bitcast %struct.sl_node* %30 to i8*
  call void @free(i8* %31) #4
  br label %if.end18

if.else16:                                        ; preds = %if.else13
  %32 = load %struct.sl_node*, %struct.sl_node** %prev, align 8
  %next17 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %32, i32 0, i32 1
  store %struct.sl_node* null, %struct.sl_node** %next17, align 8
  %33 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %33, %struct.sl_node** %p1, align 8
  store %struct.sl_node* null, %struct.sl_node** %p, align 8
  %34 = load %struct.sl_node*, %struct.sl_node** %p1, align 8
  %35 = bitcast %struct.sl_node* %34 to i8*
  call void @free(i8* %35) #4
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %36 = load %struct.sl_node*, %struct.sl_node** %retval, align 8
  ret %struct.sl_node* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sl_node* @del_node_p_return_iprv(%struct.sl_node* %phead, i32 %vtd) #0 {
entry:
  %phead.addr = alloca %struct.sl_node*, align 8
  %vtd.addr = alloca i32, align 4
  %prev = alloca %struct.sl_node*, align 8
  %p = alloca %struct.sl_node*, align 8
  %p1 = alloca %struct.sl_node*, align 8
  store %struct.sl_node* %phead, %struct.sl_node** %phead.addr, align 8
  store i32 %vtd, i32* %vtd.addr, align 4
  store %struct.sl_node* null, %struct.sl_node** %prev, align 8
  %0 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  store %struct.sl_node* %0, %struct.sl_node** %p, align 8
  store %struct.sl_node* null, %struct.sl_node** %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %1 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %cmp = icmp ne %struct.sl_node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %value = getelementptr inbounds %struct.sl_node, %struct.sl_node* %2, i32 0, i32 0
  %3 = load i32, i32* %value, align 8
  %4 = load i32, i32* %vtd.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %5, %struct.sl_node** %prev, align 8
  br label %if.end7

if.else:                                          ; preds = %while.body
  %6 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %6, %struct.sl_node** %p1, align 8
  %7 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %8 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %cmp2 = icmp eq %struct.sl_node* %7, %8
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %9 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  %next = getelementptr inbounds %struct.sl_node, %struct.sl_node* %9, i32 0, i32 1
  %10 = load %struct.sl_node*, %struct.sl_node** %next, align 8
  store %struct.sl_node* %10, %struct.sl_node** %phead.addr, align 8
  br label %if.end

if.else4:                                         ; preds = %if.else
  %11 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next5 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %11, i32 0, i32 1
  %12 = load %struct.sl_node*, %struct.sl_node** %next5, align 8
  %13 = load %struct.sl_node*, %struct.sl_node** %prev, align 8
  %next6 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %13, i32 0, i32 1
  store %struct.sl_node* %12, %struct.sl_node** %next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  %14 = load %struct.sl_node*, %struct.sl_node** %p1, align 8
  %15 = bitcast %struct.sl_node* %14 to i8*
  call void @free(i8* %15) #4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %16 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next8 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %16, i32 0, i32 1
  %17 = load %struct.sl_node*, %struct.sl_node** %next8, align 8
  store %struct.sl_node* %17, %struct.sl_node** %p, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %18 = load %struct.sl_node*, %struct.sl_node** %phead.addr, align 8
  ret %struct.sl_node* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sl_node* @del_node_pp(%struct.sl_node** %phead, i32 %vtd) #0 {
entry:
  %phead.addr = alloca %struct.sl_node**, align 8
  %vtd.addr = alloca i32, align 4
  %prev = alloca %struct.sl_node*, align 8
  %p = alloca %struct.sl_node*, align 8
  %p1 = alloca %struct.sl_node*, align 8
  store %struct.sl_node** %phead, %struct.sl_node*** %phead.addr, align 8
  store i32 %vtd, i32* %vtd.addr, align 4
  store %struct.sl_node* null, %struct.sl_node** %prev, align 8
  %0 = load %struct.sl_node**, %struct.sl_node*** %phead.addr, align 8
  %1 = load %struct.sl_node*, %struct.sl_node** %0, align 8
  store %struct.sl_node* %1, %struct.sl_node** %p, align 8
  store %struct.sl_node* null, %struct.sl_node** %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %2 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %cmp = icmp ne %struct.sl_node* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %value = getelementptr inbounds %struct.sl_node, %struct.sl_node* %3, i32 0, i32 0
  %4 = load i32, i32* %value, align 8
  %5 = load i32, i32* %vtd.addr, align 4
  %cmp1 = icmp ne i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %6, %struct.sl_node** %prev, align 8
  br label %if.end7

if.else:                                          ; preds = %while.body
  %7 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  store %struct.sl_node* %7, %struct.sl_node** %p1, align 8
  %8 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %9 = load %struct.sl_node**, %struct.sl_node*** %phead.addr, align 8
  %10 = load %struct.sl_node*, %struct.sl_node** %9, align 8
  %cmp2 = icmp eq %struct.sl_node* %8, %10
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %11 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next = getelementptr inbounds %struct.sl_node, %struct.sl_node* %11, i32 0, i32 1
  %12 = load %struct.sl_node*, %struct.sl_node** %next, align 8
  %13 = load %struct.sl_node**, %struct.sl_node*** %phead.addr, align 8
  store %struct.sl_node* %12, %struct.sl_node** %13, align 8
  br label %if.end

if.else4:                                         ; preds = %if.else
  %14 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next5 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %14, i32 0, i32 1
  %15 = load %struct.sl_node*, %struct.sl_node** %next5, align 8
  %16 = load %struct.sl_node*, %struct.sl_node** %prev, align 8
  %next6 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %16, i32 0, i32 1
  store %struct.sl_node* %15, %struct.sl_node** %next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  %17 = load %struct.sl_node*, %struct.sl_node** %p1, align 8
  %18 = bitcast %struct.sl_node* %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %19 = load %struct.sl_node*, %struct.sl_node** %p, align 8
  %next8 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %19, i32 0, i32 1
  %20 = load %struct.sl_node*, %struct.sl_node** %next8, align 8
  store %struct.sl_node* %20, %struct.sl_node** %p, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %21 = load %struct.sl_node**, %struct.sl_node*** %phead.addr, align 8
  %22 = load %struct.sl_node*, %struct.sl_node** %21, align 8
  ret %struct.sl_node* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sl_node* @del_node_pp_inprv(%struct.sl_node** %phead, i32 %vtd) #0 {
entry:
  %phead.addr = alloca %struct.sl_node**, align 8
  %vtd.addr = alloca i32, align 4
  %p = alloca %struct.sl_node**, align 8
  %entry1 = alloca %struct.sl_node*, align 8
  store %struct.sl_node** %phead, %struct.sl_node*** %phead.addr, align 8
  store i32 %vtd, i32* %vtd.addr, align 4
  %0 = load %struct.sl_node**, %struct.sl_node*** %phead.addr, align 8
  store %struct.sl_node** %0, %struct.sl_node*** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.sl_node**, %struct.sl_node*** %p, align 8
  %2 = load %struct.sl_node*, %struct.sl_node** %1, align 8
  %cmp = icmp ne %struct.sl_node* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.sl_node**, %struct.sl_node*** %p, align 8
  %4 = load %struct.sl_node*, %struct.sl_node** %3, align 8
  store %struct.sl_node* %4, %struct.sl_node** %entry1, align 8
  %5 = load %struct.sl_node**, %struct.sl_node*** %p, align 8
  %6 = load %struct.sl_node*, %struct.sl_node** %5, align 8
  %value = getelementptr inbounds %struct.sl_node, %struct.sl_node* %6, i32 0, i32 0
  %7 = load i32, i32* %value, align 8
  %8 = load i32, i32* %vtd.addr, align 4
  %cmp2 = icmp ne i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load %struct.sl_node*, %struct.sl_node** %entry1, align 8
  %next = getelementptr inbounds %struct.sl_node, %struct.sl_node* %9, i32 0, i32 1
  store %struct.sl_node** %next, %struct.sl_node*** %p, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load %struct.sl_node*, %struct.sl_node** %entry1, align 8
  %next3 = getelementptr inbounds %struct.sl_node, %struct.sl_node* %10, i32 0, i32 1
  %11 = load %struct.sl_node*, %struct.sl_node** %next3, align 8
  %12 = load %struct.sl_node**, %struct.sl_node*** %p, align 8
  store %struct.sl_node* %11, %struct.sl_node** %12, align 8
  %13 = load %struct.sl_node*, %struct.sl_node** %entry1, align 8
  %14 = bitcast %struct.sl_node* %13 to i8*
  call void @free(i8* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %15 = load %struct.sl_node**, %struct.sl_node*** %phead.addr, align 8
  %16 = load %struct.sl_node*, %struct.sl_node** %15, align 8
  ret %struct.sl_node* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %head = alloca %struct.sl_node*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 9, i32* %n, align 4
  store %struct.sl_node* null, %struct.sl_node** %head, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx3, align 8
  %call = call i32 @atoi(i8* %4) #5
  store i32 %call, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx4, align 8
  %cmp5 = icmp ne i8* %6, null
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 @atoi(i8* %8) #5
  store i32 %call8, i32* %i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %9 = load i32, i32* %n, align 4
  %call11 = call %struct.sl_node* @construct_sl(i32 %9)
  store %struct.sl_node* %call11, %struct.sl_node** %head, align 8
  %10 = load %struct.sl_node*, %struct.sl_node** %head, align 8
  call void @traverse_sl(%struct.sl_node* %10)
  %11 = load i32, i32* %i, align 4
  %call12 = call %struct.sl_node* @del_node_pp_inprv(%struct.sl_node** %head, i32 %11)
  store %struct.sl_node* %call12, %struct.sl_node** %head, align 8
  %12 = load i32, i32* %i, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %13 = load %struct.sl_node*, %struct.sl_node** %head, align 8
  call void @traverse_sl(%struct.sl_node* %13)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
