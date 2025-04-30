; ModuleID = 'code/318-22490likedlist.c'
source_filename = "code/318-22490likedlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, %struct.Node* }

@head = dso_local global %struct.Node* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"no member in this list\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertToTail(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %temp = alloca %struct.Node*, align 8
  %temp2 = alloca %struct.Node*, align 8
  store i32 %val, i32* %val.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.Node*
  store %struct.Node* %0, %struct.Node** %temp, align 8
  %1 = load i32, i32* %val.addr, align 4
  %2 = load %struct.Node*, %struct.Node** %temp, align 8
  %val1 = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 0
  store i32 %1, i32* %val1, align 8
  %3 = load %struct.Node*, %struct.Node** %temp, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %next, align 8
  %4 = load %struct.Node*, %struct.Node** @head, align 8
  %cmp = icmp eq %struct.Node* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.Node*, %struct.Node** @head, align 8
  %6 = load %struct.Node*, %struct.Node** %temp, align 8
  %next2 = getelementptr inbounds %struct.Node, %struct.Node* %6, i32 0, i32 1
  store %struct.Node* %5, %struct.Node** %next2, align 8
  %7 = load %struct.Node*, %struct.Node** %temp, align 8
  store %struct.Node* %7, %struct.Node** @head, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.Node*, %struct.Node** @head, align 8
  store %struct.Node* %8, %struct.Node** %temp2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load %struct.Node*, %struct.Node** %temp2, align 8
  %next3 = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 1
  %10 = load %struct.Node*, %struct.Node** %next3, align 8
  %cmp4 = icmp ne %struct.Node* %10, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.Node*, %struct.Node** %temp2, align 8
  %next5 = getelementptr inbounds %struct.Node, %struct.Node* %11, i32 0, i32 1
  %12 = load %struct.Node*, %struct.Node** %next5, align 8
  store %struct.Node* %12, %struct.Node** %temp2, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %13 = load %struct.Node*, %struct.Node** %temp, align 8
  %next6 = getelementptr inbounds %struct.Node, %struct.Node* %13, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %next6, align 8
  %14 = load %struct.Node*, %struct.Node** %temp, align 8
  %15 = load %struct.Node*, %struct.Node** %temp2, align 8
  %next7 = getelementptr inbounds %struct.Node, %struct.Node* %15, i32 0, i32 1
  store %struct.Node* %14, %struct.Node** %next7, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertToFront(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %temp = alloca %struct.Node*, align 8
  store i32 %val, i32* %val.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.Node*
  store %struct.Node* %0, %struct.Node** %temp, align 8
  %1 = load i32, i32* %val.addr, align 4
  %2 = load %struct.Node*, %struct.Node** %temp, align 8
  %val1 = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 0
  store i32 %1, i32* %val1, align 8
  %3 = load %struct.Node*, %struct.Node** @head, align 8
  %4 = load %struct.Node*, %struct.Node** %temp, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %4, i32 0, i32 1
  store %struct.Node* %3, %struct.Node** %next, align 8
  %5 = load %struct.Node*, %struct.Node** %temp, align 8
  store %struct.Node* %5, %struct.Node** @head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteN(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %temp = alloca %struct.Node*, align 8
  %i = alloca i32, align 4
  %temp2 = alloca %struct.Node*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.Node*, %struct.Node** @head, align 8
  store %struct.Node* %0, %struct.Node** %temp, align 8
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Node*, %struct.Node** @head, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 1
  %3 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %3, %struct.Node** @head, align 8
  %4 = load %struct.Node*, %struct.Node** %temp, align 8
  %5 = bitcast %struct.Node* %4 to i8*
  call void @free(i8* %5) #3
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %7, 2
  %cmp1 = icmp slt i32 %6, %sub
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.Node*, %struct.Node** %temp, align 8
  %next2 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 1
  %9 = load %struct.Node*, %struct.Node** %next2, align 8
  store %struct.Node* %9, %struct.Node** %temp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load %struct.Node*, %struct.Node** %temp, align 8
  %next3 = getelementptr inbounds %struct.Node, %struct.Node* %11, i32 0, i32 1
  %12 = load %struct.Node*, %struct.Node** %next3, align 8
  store %struct.Node* %12, %struct.Node** %temp2, align 8
  %13 = load %struct.Node*, %struct.Node** %temp2, align 8
  %next4 = getelementptr inbounds %struct.Node, %struct.Node* %13, i32 0, i32 1
  %14 = load %struct.Node*, %struct.Node** %next4, align 8
  %15 = load %struct.Node*, %struct.Node** %temp, align 8
  %next5 = getelementptr inbounds %struct.Node, %struct.Node* %15, i32 0, i32 1
  store %struct.Node* %14, %struct.Node** %next5, align 8
  %16 = load %struct.Node*, %struct.Node** %temp2, align 8
  %17 = bitcast %struct.Node* %16 to i8*
  call void @free(i8* %17) #3
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear() #0 {
entry:
  %temp = alloca %struct.Node*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Node*, %struct.Node** @head, align 8
  %cmp = icmp ne %struct.Node* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.Node*, %struct.Node** @head, align 8
  store %struct.Node* %1, %struct.Node** %temp, align 8
  %2 = load %struct.Node*, %struct.Node** @head, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 1
  %3 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %3, %struct.Node** @head, align 8
  %4 = load %struct.Node*, %struct.Node** %temp, align 8
  %5 = bitcast %struct.Node* %4 to i8*
  call void @free(i8* %5) #3
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Print() #0 {
entry:
  %temp = alloca %struct.Node*, align 8
  %0 = load %struct.Node*, %struct.Node** @head, align 8
  store %struct.Node* %0, %struct.Node** %temp, align 8
  %1 = load %struct.Node*, %struct.Node** %temp, align 8
  %cmp = icmp eq %struct.Node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load %struct.Node*, %struct.Node** %temp, align 8
  %cmp1 = icmp ne %struct.Node* %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.Node*, %struct.Node** %temp, align 8
  %val = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 0
  %4 = load i32, i32* %val, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %5 = load %struct.Node*, %struct.Node** %temp, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  %6 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %6, %struct.Node** %temp, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverseByIter() #0 {
entry:
  %current = alloca %struct.Node*, align 8
  %next = alloca %struct.Node*, align 8
  %prev = alloca %struct.Node*, align 8
  %0 = load %struct.Node*, %struct.Node** @head, align 8
  store %struct.Node* %0, %struct.Node** %current, align 8
  store %struct.Node* null, %struct.Node** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.Node*, %struct.Node** %current, align 8
  %cmp = icmp ne %struct.Node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.Node*, %struct.Node** %current, align 8
  %next1 = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 1
  %3 = load %struct.Node*, %struct.Node** %next1, align 8
  store %struct.Node* %3, %struct.Node** %next, align 8
  %4 = load %struct.Node*, %struct.Node** %prev, align 8
  %5 = load %struct.Node*, %struct.Node** %current, align 8
  %next2 = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  store %struct.Node* %4, %struct.Node** %next2, align 8
  %6 = load %struct.Node*, %struct.Node** %current, align 8
  store %struct.Node* %6, %struct.Node** %prev, align 8
  %7 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %7, %struct.Node** %current, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %8 = load %struct.Node*, %struct.Node** %prev, align 8
  store %struct.Node* %8, %struct.Node** @head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverseByRecu(%struct.Node* %p) #0 {
entry:
  %p.addr = alloca %struct.Node*, align 8
  store %struct.Node* %p, %struct.Node** %p.addr, align 8
  %0 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %cmp = icmp eq %struct.Node* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %1, i32 0, i32 1
  %2 = load %struct.Node*, %struct.Node** %next, align 8
  %cmp1 = icmp eq %struct.Node* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.Node*, %struct.Node** %p.addr, align 8
  store %struct.Node* %3, %struct.Node** @head, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %next2 = getelementptr inbounds %struct.Node, %struct.Node* %4, i32 0, i32 1
  %5 = load %struct.Node*, %struct.Node** %next2, align 8
  call void @reverseByRecu(%struct.Node* %5)
  %6 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %7 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %next3 = getelementptr inbounds %struct.Node, %struct.Node* %7, i32 0, i32 1
  %8 = load %struct.Node*, %struct.Node** %next3, align 8
  %next4 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 1
  store %struct.Node* %6, %struct.Node** %next4, align 8
  %9 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %next5 = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %next5, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Node* @reverseByRecu_2(%struct.Node* %p) #0 {
entry:
  %retval = alloca %struct.Node*, align 8
  %p.addr = alloca %struct.Node*, align 8
  %temp = alloca %struct.Node*, align 8
  store %struct.Node* %p, %struct.Node** %p.addr, align 8
  %0 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %cmp = icmp eq %struct.Node* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %1, i32 0, i32 1
  %2 = load %struct.Node*, %struct.Node** %next, align 8
  %cmp1 = icmp eq %struct.Node* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.Node*, %struct.Node** %p.addr, align 8
  store %struct.Node* %3, %struct.Node** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %next2 = getelementptr inbounds %struct.Node, %struct.Node* %4, i32 0, i32 1
  %5 = load %struct.Node*, %struct.Node** %next2, align 8
  %call = call %struct.Node* @reverseByRecu_2(%struct.Node* %5)
  store %struct.Node* %call, %struct.Node** %temp, align 8
  %6 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %7 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %next3 = getelementptr inbounds %struct.Node, %struct.Node* %7, i32 0, i32 1
  %8 = load %struct.Node*, %struct.Node** %next3, align 8
  %next4 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 1
  store %struct.Node* %6, %struct.Node** %next4, align 8
  %9 = load %struct.Node*, %struct.Node** %p.addr, align 8
  %next5 = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %next5, align 8
  %10 = load %struct.Node*, %struct.Node** %temp, align 8
  store %struct.Node* %10, %struct.Node** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.Node*, %struct.Node** %retval, align 8
  ret %struct.Node* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  call void @insertToFront(i32 2)
  call void @insertToFront(i32 100)
  call void @insertToFront(i32 234)
  call void @insertToFront(i32 32)
  call void @insertToFront(i32 50)
  call void @insertToFront(i32 99)
  call void @Print()
  %0 = load %struct.Node*, %struct.Node** @head, align 8
  call void @reverseByRecu(%struct.Node* %0)
  call void @Print()
  %1 = load %struct.Node*, %struct.Node** @head, align 8
  %call = call %struct.Node* @reverseByRecu_2(%struct.Node* %1)
  call void @Print()
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
