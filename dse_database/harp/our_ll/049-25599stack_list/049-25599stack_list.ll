; ModuleID = 'code/049-25599stack_list.c'
source_filename = "code/049-25599stack_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stackNode = type { i32, %struct.stackNode* }

@head = dso_local global %struct.stackNode* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"%d added to stack \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Initial Contents: \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%d popped from stack. \00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Contents after popping off 5 items: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stackNode* @newNode(i32 %item, %struct.stackNode* %h) #0 {
entry:
  %item.addr = alloca i32, align 4
  %h.addr = alloca %struct.stackNode*, align 8
  %nnode = alloca %struct.stackNode*, align 8
  store i32 %item, i32* %item.addr, align 4
  store %struct.stackNode* %h, %struct.stackNode** %h.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.stackNode*
  store %struct.stackNode* %0, %struct.stackNode** %nnode, align 8
  %1 = load i32, i32* %item.addr, align 4
  %2 = load %struct.stackNode*, %struct.stackNode** %nnode, align 8
  %item1 = getelementptr inbounds %struct.stackNode, %struct.stackNode* %2, i32 0, i32 0
  store i32 %1, i32* %item1, align 8
  %3 = load %struct.stackNode*, %struct.stackNode** %h.addr, align 8
  %4 = load %struct.stackNode*, %struct.stackNode** %nnode, align 8
  %next = getelementptr inbounds %struct.stackNode, %struct.stackNode* %4, i32 0, i32 1
  store %struct.stackNode* %3, %struct.stackNode** %next, align 8
  %5 = load %struct.stackNode*, %struct.stackNode** %nnode, align 8
  ret %struct.stackNode* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stackInit(i32 %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store %struct.stackNode* null, %struct.stackNode** @head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stackEmpty() #0 {
entry:
  %0 = load %struct.stackNode*, %struct.stackNode** @head, align 8
  %cmp = icmp eq %struct.stackNode* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stackPush(i32 %item) #0 {
entry:
  %item.addr = alloca i32, align 4
  store i32 %item, i32* %item.addr, align 4
  %0 = load i32, i32* %item.addr, align 4
  %1 = load %struct.stackNode*, %struct.stackNode** @head, align 8
  %call = call %struct.stackNode* @newNode(i32 %0, %struct.stackNode* %1)
  store %struct.stackNode* %call, %struct.stackNode** @head, align 8
  %2 = load i32, i32* %item.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %2)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stackPop() #0 {
entry:
  %item = alloca i32, align 4
  %t = alloca %struct.stackNode*, align 8
  %0 = load %struct.stackNode*, %struct.stackNode** @head, align 8
  %item1 = getelementptr inbounds %struct.stackNode, %struct.stackNode* %0, i32 0, i32 0
  %1 = load i32, i32* %item1, align 8
  store i32 %1, i32* %item, align 4
  %2 = load %struct.stackNode*, %struct.stackNode** @head, align 8
  %next = getelementptr inbounds %struct.stackNode, %struct.stackNode* %2, i32 0, i32 1
  %3 = load %struct.stackNode*, %struct.stackNode** %next, align 8
  store %struct.stackNode* %3, %struct.stackNode** %t, align 8
  %4 = load %struct.stackNode*, %struct.stackNode** @head, align 8
  %5 = bitcast %struct.stackNode* %4 to i8*
  call void @free(i8* %5) #3
  %6 = load %struct.stackNode*, %struct.stackNode** %t, align 8
  store %struct.stackNode* %6, %struct.stackNode** @head, align 8
  %7 = load i32, i32* %item, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stackDisplay() #0 {
entry:
  %t = alloca %struct.stackNode*, align 8
  %0 = load %struct.stackNode*, %struct.stackNode** @head, align 8
  store %struct.stackNode* %0, %struct.stackNode** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.stackNode*, %struct.stackNode** %t, align 8
  %cmp = icmp ne %struct.stackNode* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.stackNode*, %struct.stackNode** %t, align 8
  %item = getelementptr inbounds %struct.stackNode, %struct.stackNode* %2, i32 0, i32 0
  %3 = load i32, i32* %item, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %4 = load %struct.stackNode*, %struct.stackNode** %t, align 8
  %next = getelementptr inbounds %struct.stackNode, %struct.stackNode* %4, i32 0, i32 1
  %5 = load %struct.stackNode*, %struct.stackNode** %next, align 8
  store %struct.stackNode* %5, %struct.stackNode** %t, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %item = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @stackInit(i32 100)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 100
  call void @stackPush(i32 %rem)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  call void @stackDisplay()
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %2 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %2, 5
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %call7 = call i32 @stackEmpty()
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body6
  %call8 = call i32 @stackPop()
  store i32 %call8, i32* %item, align 4
  %3 = load i32, i32* %item, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %3)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc11

for.inc11:                                        ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %4, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end13:                                        ; preds = %for.cond4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  call void @stackDisplay()
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

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
