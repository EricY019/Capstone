; ModuleID = 'code/336-23208Queue_using_Linked_List.c'
source_filename = "code/336-23208Queue_using_Linked_List.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@rear = dso_local global %struct.node* null, align 8
@front = dso_local global %struct.node* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"\0AQueue Overflow\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0AQueue underflow\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\0AQueue: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %temp = alloca %struct.node*, align 8
  store i32 %x, i32* %x.addr, align 4
  store %struct.node* null, %struct.node** %temp, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %temp, align 8
  %1 = load %struct.node*, %struct.node** %temp, align 8
  %cmp = icmp eq %struct.node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %if.end6

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load %struct.node*, %struct.node** %temp, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  store i32 %2, i32* %data, align 8
  %4 = load %struct.node*, %struct.node** %temp, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  store %struct.node* null, %struct.node** %next, align 8
  %5 = load %struct.node*, %struct.node** @front, align 8
  %cmp2 = icmp eq %struct.node* %5, null
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.node*, %struct.node** @rear, align 8
  %cmp3 = icmp eq %struct.node* %6, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %7 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %7, %struct.node** @front, align 8
  %8 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %8, %struct.node** @rear, align 8
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %if.end
  %9 = load %struct.node*, %struct.node** %temp, align 8
  %10 = load %struct.node*, %struct.node** @rear, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  store %struct.node* %9, %struct.node** %next5, align 8
  %11 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %11, %struct.node** @rear, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.else, %if.then4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dequeue() #0 {
entry:
  %temp = alloca %struct.node*, align 8
  %0 = load %struct.node*, %struct.node** @front, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.node*, %struct.node** @rear, align 8
  %cmp1 = icmp eq %struct.node* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end5

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.node*, %struct.node** @front, align 8
  store %struct.node* %2, %struct.node** %temp, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 16) #3
  %3 = bitcast i8* %call2 to %struct.node*
  store %struct.node* %3, %struct.node** %temp, align 8
  %4 = load %struct.node*, %struct.node** @front, align 8
  %5 = load %struct.node*, %struct.node** @rear, align 8
  %cmp3 = icmp eq %struct.node* %4, %5
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store %struct.node* null, %struct.node** @front, align 8
  store %struct.node* null, %struct.node** @rear, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %6 = load %struct.node*, %struct.node** @front, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %7, %struct.node** @front, align 8
  %8 = load %struct.node*, %struct.node** %temp, align 8
  %9 = bitcast %struct.node* %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.else, %if.then4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print() #0 {
entry:
  %temp = alloca %struct.node*, align 8
  %0 = load %struct.node*, %struct.node** @front, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.node*, %struct.node** @rear, align 8
  %cmp1 = icmp eq %struct.node* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %2 = load %struct.node*, %struct.node** @front, align 8
  store %struct.node* %2, %struct.node** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.node*, %struct.node** %temp, align 8
  %cmp3 = icmp ne %struct.node* %3, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.node*, %struct.node** %temp, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  %5 = load i32, i32* %data, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  %6 = load %struct.node*, %struct.node** %temp, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %7, %struct.node** %temp, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @print()
  call void @enqueue(i32 10)
  call void @print()
  call void @enqueue(i32 20)
  call void @enqueue(i32 30)
  call void @print()
  call void @dequeue()
  call void @dequeue()
  call void @print()
  call void @dequeue()
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
