; ModuleID = 'code/255-8775pointer_linklist.c'
source_filename = "code/255-8775pointer_linklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist = type { %struct.node* }
%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [23 x i8] c"\E6\89\93\E5\8D\B0\E5\85\A8\E9\83\A8\E5\85\83\E7\B4\A0\EF\BC\9A\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\E6\98\BE\E7\A4\BA\E7\AC\AC\E4\BA\94\E4\B8\AA\E5\85\83\E7\B4\A0\EF\BC\9A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\E5\88\A0\E9\99\A4\E7\AC\AC\E4\BA\94\E4\B8\AA\E5\85\83\E7\B4\A0\EF\BC\9A%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Exhausted memory\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %L = alloca %struct.llist*, align 8
  store i32 0, i32* %retval, align 4
  store i32 15, i32* %size, align 4
  %call = call %struct.llist* @ListInit()
  store %struct.llist* %call, %struct.llist** %L, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 3
  %4 = load %struct.llist*, %struct.llist** %L, align 8
  call void @ListInsert(i32 %2, i32 %add, %struct.llist* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.llist*, %struct.llist** %L, align 8
  call void @PrintList(%struct.llist* %6)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.llist*, %struct.llist** %L, align 8
  %call3 = call i32 @ListRetrieve(i32 5, %struct.llist* %7)
  call void @ItemShow(i32 %call3)
  %8 = load %struct.llist*, %struct.llist** %L, align 8
  %call4 = call i32 @ListDelete(i32 5, %struct.llist* %8)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %call4)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.llist*, %struct.llist** %L, align 8
  call void @PrintList(%struct.llist* %9)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ListInsert(i32 %k, i32 %x, %struct.llist* %L) #0 {
entry:
  %k.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %L.addr = alloca %struct.llist*, align 8
  %p = alloca %struct.node*, align 8
  %y = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store %struct.llist* %L, %struct.llist** %L.addr, align 8
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, %struct.llist* %1, i32 0, i32 0
  %2 = load %struct.node*, %struct.node** %first, align 8
  store %struct.node* %2, %struct.node** %p, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %k.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load %struct.node*, %struct.node** %p, align 8
  %tobool = icmp ne %struct.node* %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load %struct.node*, %struct.node** %p, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  %8 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %8, %struct.node** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %call = call %struct.node* @NewNode()
  store %struct.node* %call, %struct.node** %y, align 8
  %10 = load i32, i32* %x.addr, align 4
  %11 = load %struct.node*, %struct.node** %y, align 8
  %element = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  store i32 %10, i32* %element, align 8
  %12 = load i32, i32* %k.addr, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.end
  %13 = load %struct.node*, %struct.node** %p, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %14 = load %struct.node*, %struct.node** %next4, align 8
  %15 = load %struct.node*, %struct.node** %y, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  store %struct.node* %14, %struct.node** %next5, align 8
  %16 = load %struct.node*, %struct.node** %y, align 8
  %17 = load %struct.node*, %struct.node** %p, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 1
  store %struct.node* %16, %struct.node** %next6, align 8
  br label %if.end10

if.else:                                          ; preds = %for.end
  %18 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first7 = getelementptr inbounds %struct.llist, %struct.llist* %18, i32 0, i32 0
  %19 = load %struct.node*, %struct.node** %first7, align 8
  %20 = load %struct.node*, %struct.node** %y, align 8
  %next8 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 1
  store %struct.node* %19, %struct.node** %next8, align 8
  %21 = load %struct.node*, %struct.node** %y, align 8
  %22 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first9 = getelementptr inbounds %struct.llist, %struct.llist* %22, i32 0, i32 0
  store %struct.node* %21, %struct.node** %first9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintList(%struct.llist* %L) #0 {
entry:
  %L.addr = alloca %struct.llist*, align 8
  %p = alloca %struct.node*, align 8
  store %struct.llist* %L, %struct.llist** %L.addr, align 8
  %0 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, %struct.llist* %0, i32 0, i32 0
  %1 = load %struct.node*, %struct.node** %first, align 8
  store %struct.node* %1, %struct.node** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.node*, %struct.node** %p, align 8
  %tobool = icmp ne %struct.node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.node*, %struct.node** %p, align 8
  %element = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load i32, i32* %element, align 8
  call void @ItemShow(i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.node*, %struct.node** %p, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %6, %struct.node** %p, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ItemShow(i32 %li) #0 {
entry:
  %li.addr = alloca i32, align 4
  store i32 %li, i32* %li.addr, align 4
  %0 = load i32, i32* %li.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListRetrieve(i32 %k, %struct.llist* %L) #0 {
entry:
  %k.addr = alloca i32, align 4
  %L.addr = alloca %struct.llist*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.node*, align 8
  store i32 %k, i32* %k.addr, align 4
  store %struct.llist* %L, %struct.llist** %L.addr, align 8
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, %struct.llist* %1, i32 0, i32 0
  %2 = load %struct.node*, %struct.node** %first, align 8
  store %struct.node* %2, %struct.node** %p, align 8
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %k.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.node*, %struct.node** %p, align 8
  %tobool = icmp ne %struct.node* %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.node*, %struct.node** %p, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  %8 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %8, %struct.node** %p, align 8
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %10 = load %struct.node*, %struct.node** %p, align 8
  %element = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %11 = load i32, i32* %element, align 8
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListDelete(i32 %k, %struct.llist* %L) #0 {
entry:
  %k.addr = alloca i32, align 4
  %L.addr = alloca %struct.llist*, align 8
  %p = alloca %struct.node*, align 8
  %q = alloca %struct.node*, align 8
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %k, i32* %k.addr, align 4
  store %struct.llist* %L, %struct.llist** %L.addr, align 8
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, %struct.llist* %1, i32 0, i32 0
  %2 = load %struct.node*, %struct.node** %first, align 8
  %tobool = icmp ne %struct.node* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first1 = getelementptr inbounds %struct.llist, %struct.llist* %3, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %first1, align 8
  store %struct.node* %4, %struct.node** %p, align 8
  %5 = load i32, i32* %k.addr, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load %struct.node*, %struct.node** %p, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %next, align 8
  %8 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first4 = getelementptr inbounds %struct.llist, %struct.llist* %8, i32 0, i32 0
  store %struct.node* %7, %struct.node** %first4, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  %9 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first5 = getelementptr inbounds %struct.llist, %struct.llist* %9, i32 0, i32 0
  %10 = load %struct.node*, %struct.node** %first5, align 8
  store %struct.node* %10, %struct.node** %q, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %k.addr, align 4
  %sub = sub nsw i32 %12, 1
  %cmp6 = icmp slt i32 %11, %sub
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load %struct.node*, %struct.node** %q, align 8
  %tobool7 = icmp ne %struct.node* %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %tobool7, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load %struct.node*, %struct.node** %q, align 8
  %next8 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %next8, align 8
  store %struct.node* %16, %struct.node** %q, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.end
  %18 = load %struct.node*, %struct.node** %q, align 8
  %next9 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 1
  %19 = load %struct.node*, %struct.node** %next9, align 8
  store %struct.node* %19, %struct.node** %p, align 8
  %20 = load %struct.node*, %struct.node** %p, align 8
  %next10 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 1
  %21 = load %struct.node*, %struct.node** %next10, align 8
  %22 = load %struct.node*, %struct.node** %q, align 8
  %next11 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 1
  store %struct.node* %21, %struct.node** %next11, align 8
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.then3
  %23 = load %struct.node*, %struct.node** %p, align 8
  %element = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  %24 = load i32, i32* %element, align 8
  store i32 %24, i32* %x, align 4
  %25 = load %struct.node*, %struct.node** %p, align 8
  %26 = bitcast %struct.node* %25 to i8*
  call void @free(i8* %26) #3
  %27 = load i32, i32* %x, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Error(i8* %ch) #0 {
entry:
  %ch.addr = alloca i8*, align 8
  store i8* %ch, i8** %ch.addr, align 8
  %0 = load i8*, i8** %ch.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @NewNode() #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %p = alloca %struct.node*, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %p, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %1, %struct.node** %retval, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %2
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.llist* @ListInit() #0 {
entry:
  %L = alloca %struct.llist*, align 8
  %call = call noalias align 16 i8* @malloc(i64 8) #3
  %0 = bitcast i8* %call to %struct.llist*
  store %struct.llist* %0, %struct.llist** %L, align 8
  %1 = load %struct.llist*, %struct.llist** %L, align 8
  %first = getelementptr inbounds %struct.llist, %struct.llist* %1, i32 0, i32 0
  store %struct.node* null, %struct.node** %first, align 8
  %2 = load %struct.llist*, %struct.llist** %L, align 8
  ret %struct.llist* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListEmpty(%struct.llist* %L) #0 {
entry:
  %L.addr = alloca %struct.llist*, align 8
  store %struct.llist* %L, %struct.llist** %L.addr, align 8
  %0 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, %struct.llist* %0, i32 0, i32 0
  %1 = load %struct.node*, %struct.node** %first, align 8
  %cmp = icmp eq %struct.node* %1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListLength(%struct.llist* %L) #0 {
entry:
  %L.addr = alloca %struct.llist*, align 8
  %len = alloca i32, align 4
  %p = alloca %struct.node*, align 8
  store %struct.llist* %L, %struct.llist** %L.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, %struct.llist* %0, i32 0, i32 0
  %1 = load %struct.node*, %struct.node** %first, align 8
  store %struct.node* %1, %struct.node** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.node*, %struct.node** %p, align 8
  %tobool = icmp ne %struct.node* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %len, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %len, align 4
  %4 = load %struct.node*, %struct.node** %p, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %5, %struct.node** %p, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %len, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListLocate(i32 %x, %struct.llist* %L) #0 {
entry:
  %x.addr = alloca i32, align 4
  %L.addr = alloca %struct.llist*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.node*, align 8
  store i32 %x, i32* %x.addr, align 4
  store %struct.llist* %L, %struct.llist** %L.addr, align 8
  store i32 1, i32* %i, align 4
  %0 = load %struct.llist*, %struct.llist** %L.addr, align 8
  %first = getelementptr inbounds %struct.llist, %struct.llist* %0, i32 0, i32 0
  %1 = load %struct.node*, %struct.node** %first, align 8
  store %struct.node* %1, %struct.node** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.node*, %struct.node** %p, align 8
  %tobool = icmp ne %struct.node* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.node*, %struct.node** %p, align 8
  %element = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load i32, i32* %element, align 8
  %5 = load i32, i32* %x.addr, align 4
  %cmp = icmp ne i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.node*, %struct.node** %p, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  %8 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %8, %struct.node** %p, align 8
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  ret i32 %10
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

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
