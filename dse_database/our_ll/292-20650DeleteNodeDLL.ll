; ModuleID = 'code/292-20650DeleteNodeDLL.c'
source_filename = "code/292-20650DeleteNodeDLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }

@.str = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Found: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"After Deletion.\00", align 1
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
  call void @traverseLinkedList(%struct.node* %0)
  %1 = load %struct.node*, %struct.node** %head, align 8
  store %struct.node* %1, %struct.node** %point, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.node*, %struct.node** %point, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %data, align 8
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.node*, %struct.node** %point, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  %5 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %5, %struct.node** %point, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load %struct.node*, %struct.node** %point, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %7 = load i32, i32* %data1, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %8 = load %struct.node*, %struct.node** %point, align 8
  call void @deleteNode(%struct.node** %head, %struct.node* %8)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %9 = load %struct.node*, %struct.node** %head, align 8
  call void @traverseLinkedList(%struct.node* %9)
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
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

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteNode(%struct.node** %head, %struct.node* %point) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %point.addr = alloca %struct.node*, align 8
  %prev7 = alloca %struct.node*, align 8
  %next9 = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store %struct.node* %point, %struct.node** %point.addr, align 8
  %0 = load %struct.node*, %struct.node** %point.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 2
  %1 = load %struct.node*, %struct.node** %next, align 8
  %cmp = icmp eq %struct.node* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.node*, %struct.node** %point.addr, align 8
  %prev = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load %struct.node*, %struct.node** %prev, align 8
  %next1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  store %struct.node* null, %struct.node** %next1, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  %4 = load %struct.node*, %struct.node** %point.addr, align 8
  %prev2 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %prev2, align 8
  %cmp3 = icmp eq %struct.node* %5, null
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %6 = load %struct.node*, %struct.node** %point.addr, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  %7 = load %struct.node*, %struct.node** %next5, align 8
  %8 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %7, %struct.node** %8, align 8
  br label %if.end

if.else6:                                         ; preds = %if.else
  %9 = load %struct.node*, %struct.node** %point.addr, align 8
  %prev8 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %prev8, align 8
  store %struct.node* %10, %struct.node** %prev7, align 8
  %11 = load %struct.node*, %struct.node** %point.addr, align 8
  %next10 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  %12 = load %struct.node*, %struct.node** %next10, align 8
  store %struct.node* %12, %struct.node** %next9, align 8
  %13 = load %struct.node*, %struct.node** %next9, align 8
  %14 = load %struct.node*, %struct.node** %prev7, align 8
  %next11 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 2
  store %struct.node* %13, %struct.node** %next11, align 8
  %15 = load %struct.node*, %struct.node** %prev7, align 8
  %16 = load %struct.node*, %struct.node** %next9, align 8
  %prev12 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  store %struct.node* %15, %struct.node** %prev12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %17 = load %struct.node*, %struct.node** %point.addr, align 8
  %18 = bitcast %struct.node* %17 to i8*
  call void @free(i8* %18) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

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
