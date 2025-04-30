; ModuleID = 'code/050-12051Queue_Linked_List.c'
source_filename = "code/050-12051Queue_Linked_List.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@front = dso_local global %struct.node* null, align 8
@rear = dso_local global %struct.node* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Memory is not allocated\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%d inserted in the queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Queue is empty\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Element deleted is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"The queue is\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isEmpty() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.node*, %struct.node** @front, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue(i32 %elt) #0 {
entry:
  %elt.addr = alloca i32, align 4
  %newNode = alloca %struct.node*, align 8
  store i32 %elt, i32* %elt.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %newNode, align 8
  %1 = load i32, i32* %elt.addr, align 4
  %2 = load %struct.node*, %struct.node** %newNode, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %data, align 8
  %3 = load %struct.node*, %struct.node** %newNode, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* null, %struct.node** %link, align 8
  %4 = load %struct.node*, %struct.node** %newNode, align 8
  %cmp = icmp eq %struct.node* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.node*, %struct.node** @front, align 8
  %cmp2 = icmp eq %struct.node* %5, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load %struct.node*, %struct.node** %newNode, align 8
  store %struct.node* %6, %struct.node** @front, align 8
  %7 = load %struct.node*, %struct.node** %newNode, align 8
  store %struct.node* %7, %struct.node** @rear, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %8 = load %struct.node*, %struct.node** %newNode, align 8
  %9 = load %struct.node*, %struct.node** @rear, align 8
  %link4 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  store %struct.node* %8, %struct.node** %link4, align 8
  %10 = load %struct.node*, %struct.node** %newNode, align 8
  store %struct.node* %10, %struct.node** @rear, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %11 = load i32, i32* %elt.addr, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dequeue() #0 {
entry:
  %data = alloca i32, align 4
  %call = call i32 @isEmpty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.node*, %struct.node** @front, align 8
  %data2 = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %1 = load i32, i32* %data2, align 8
  store i32 %1, i32* %data, align 4
  %2 = load i32, i32* %data, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %2)
  %3 = load %struct.node*, %struct.node** @front, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %link, align 8
  store %struct.node* %4, %struct.node** @front, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display() #0 {
entry:
  %ptr = alloca %struct.node*, align 8
  %call = call i32 @isEmpty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %0 = load %struct.node*, %struct.node** @front, align 8
  store %struct.node* %0, %struct.node** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.node*, %struct.node** %ptr, align 8
  %cmp = icmp ne %struct.node* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.node*, %struct.node** %ptr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %data, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.node*, %struct.node** %ptr, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %link, align 8
  store %struct.node* %5, %struct.node** %ptr, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @dequeue()
  call void @enqueue(i32 15)
  call void @enqueue(i32 49)
  call void @enqueue(i32 54)
  call void @enqueue(i32 2)
  call void @enqueue(i32 97)
  call void @display()
  call void @dequeue()
  call void @dequeue()
  call void @display()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
