; ModuleID = 'code/340-23702DoubleLinkedList.c'
source_filename = "code/340-23702DoubleLinkedList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }

@.str = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Found: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"After inserting at last.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Element value= %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca %struct.node*, align 8
  %point = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.node* null, %struct.node** %head, align 8
  call void @push(%struct.node** %head, i32 1)
  call void @push(%struct.node** %head, i32 2)
  call void @push(%struct.node** %head, i32 3)
  %0 = load %struct.node*, %struct.node** %head, align 8
  store %struct.node* %0, %struct.node** %point, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.node*, %struct.node** %point, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %cmp = icmp ne i32 %2, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.node*, %struct.node** %point, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  %4 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %4, %struct.node** %point, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %5 = load %struct.node*, %struct.node** %point, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 0
  %6 = load i32, i32* %data1, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %7 = load %struct.node*, %struct.node** %point, align 8
  call void @insertAfter(%struct.node* %7, i32 5)
  %8 = load %struct.node*, %struct.node** %point, align 8
  call void @insertBefore(%struct.node** %head, %struct.node* %8, i32 7)
  %9 = load %struct.node*, %struct.node** %head, align 8
  call void @traverseLinkedList(%struct.node* %9)
  call void @insertLast(%struct.node** %head, i32 10)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %10 = load %struct.node*, %struct.node** %head, align 8
  call void @traverseLinkedList(%struct.node* %10)
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push(%struct.node** %head, i32 %data) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %data.addr = alloca i32, align 4
  %newNode = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %newNode, align 8
  %1 = load i32, i32* %data.addr, align 4
  %2 = load %struct.node*, %struct.node** %newNode, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %data1, align 8
  %3 = load %struct.node**, %struct.node*** %head.addr, align 8
  %4 = load %struct.node*, %struct.node** %3, align 8
  %5 = load %struct.node*, %struct.node** %newNode, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  store %struct.node* %4, %struct.node** %next, align 8
  %6 = load %struct.node*, %struct.node** %newNode, align 8
  %prev = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  store %struct.node* null, %struct.node** %prev, align 8
  %7 = load %struct.node**, %struct.node*** %head.addr, align 8
  %8 = load %struct.node*, %struct.node** %7, align 8
  %cmp = icmp ne %struct.node* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.node*, %struct.node** %newNode, align 8
  %10 = load %struct.node**, %struct.node*** %head.addr, align 8
  %11 = load %struct.node*, %struct.node** %10, align 8
  %prev2 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  store %struct.node* %9, %struct.node** %prev2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.node*, %struct.node** %newNode, align 8
  %13 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %12, %struct.node** %13, align 8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertAfter(%struct.node* %prev, i32 %data) #0 {
entry:
  %prev.addr = alloca %struct.node*, align 8
  %data.addr = alloca i32, align 4
  %newNode = alloca %struct.node*, align 8
  %nextNode = alloca %struct.node*, align 8
  store %struct.node* %prev, %struct.node** %prev.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %0 = load %struct.node*, %struct.node** %prev.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %1 = bitcast i8* %call to %struct.node*
  store %struct.node* %1, %struct.node** %newNode, align 8
  %2 = load i32, i32* %data.addr, align 4
  %3 = load %struct.node*, %struct.node** %newNode, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  store i32 %2, i32* %data1, align 8
  %4 = load %struct.node*, %struct.node** %prev.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  %5 = load %struct.node*, %struct.node** %next, align 8
  %6 = load %struct.node*, %struct.node** %newNode, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  store %struct.node* %5, %struct.node** %next2, align 8
  %7 = load %struct.node*, %struct.node** %prev.addr, align 8
  %8 = load %struct.node*, %struct.node** %newNode, align 8
  %prev3 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* %7, %struct.node** %prev3, align 8
  %9 = load %struct.node*, %struct.node** %newNode, align 8
  %10 = load %struct.node*, %struct.node** %prev.addr, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 2
  store %struct.node* %9, %struct.node** %next4, align 8
  %11 = load %struct.node*, %struct.node** %prev.addr, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  %12 = load %struct.node*, %struct.node** %next5, align 8
  store %struct.node* %12, %struct.node** %nextNode, align 8
  %13 = load %struct.node*, %struct.node** %newNode, align 8
  %14 = load %struct.node*, %struct.node** %nextNode, align 8
  %prev6 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  store %struct.node* %13, %struct.node** %prev6, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertBefore(%struct.node** %head, %struct.node* %next, i32 %data) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %next.addr = alloca %struct.node*, align 8
  %data.addr = alloca i32, align 4
  %newNode = alloca %struct.node*, align 8
  %prevNode = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store %struct.node* %next, %struct.node** %next.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %0 = load %struct.node*, %struct.node** %next.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %1 = bitcast i8* %call to %struct.node*
  store %struct.node* %1, %struct.node** %newNode, align 8
  %2 = load i32, i32* %data.addr, align 4
  %3 = load %struct.node*, %struct.node** %newNode, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  store i32 %2, i32* %data1, align 8
  %4 = load %struct.node*, %struct.node** %next.addr, align 8
  %5 = load %struct.node*, %struct.node** %newNode, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  store %struct.node* %4, %struct.node** %next2, align 8
  %6 = load %struct.node*, %struct.node** %next.addr, align 8
  %prev = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %prev, align 8
  %8 = load %struct.node*, %struct.node** %newNode, align 8
  %prev3 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* %7, %struct.node** %prev3, align 8
  %9 = load %struct.node*, %struct.node** %next.addr, align 8
  %prev4 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %prev4, align 8
  store %struct.node* %10, %struct.node** %prevNode, align 8
  %11 = load %struct.node*, %struct.node** %prevNode, align 8
  %cmp5 = icmp ne %struct.node* %11, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %12 = load %struct.node*, %struct.node** %newNode, align 8
  %13 = load %struct.node*, %struct.node** %prevNode, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  store %struct.node* %12, %struct.node** %next7, align 8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %14 = load %struct.node*, %struct.node** %newNode, align 8
  %15 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %14, %struct.node** %15, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %16 = load %struct.node*, %struct.node** %newNode, align 8
  %17 = load %struct.node*, %struct.node** %next.addr, align 8
  %prev9 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 1
  store %struct.node* %16, %struct.node** %prev9, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @traverseLinkedList(%struct.node* %head) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %head.addr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %2)
  %3 = load %struct.node*, %struct.node** %head.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  %4 = load %struct.node*, %struct.node** %next, align 8
  call void @traverseLinkedList(%struct.node* %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertLast(%struct.node** %head, i32 %data) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %data.addr = alloca i32, align 4
  %newNode = alloca %struct.node*, align 8
  %current = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %newNode, align 8
  %1 = load i32, i32* %data.addr, align 4
  %2 = load %struct.node*, %struct.node** %newNode, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %data1, align 8
  %3 = load %struct.node*, %struct.node** %newNode, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  store %struct.node* null, %struct.node** %next, align 8
  %4 = load %struct.node**, %struct.node*** %head.addr, align 8
  %5 = load %struct.node*, %struct.node** %4, align 8
  %cmp = icmp eq %struct.node* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.node*, %struct.node** %newNode, align 8
  %prev = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  store %struct.node* null, %struct.node** %prev, align 8
  %7 = load %struct.node*, %struct.node** %newNode, align 8
  %8 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %7, %struct.node** %8, align 8
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.node**, %struct.node*** %head.addr, align 8
  %10 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %10, %struct.node** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load %struct.node*, %struct.node** %current, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  %12 = load %struct.node*, %struct.node** %next2, align 8
  %cmp3 = icmp ne %struct.node* %12, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.node*, %struct.node** %current, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %14 = load %struct.node*, %struct.node** %next4, align 8
  store %struct.node* %14, %struct.node** %current, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %15 = load %struct.node*, %struct.node** %current, align 8
  %16 = load %struct.node*, %struct.node** %newNode, align 8
  %prev5 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  store %struct.node* %15, %struct.node** %prev5, align 8
  %17 = load %struct.node*, %struct.node** %newNode, align 8
  %18 = load %struct.node*, %struct.node** %current, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2
  store %struct.node* %17, %struct.node** %next6, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

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
