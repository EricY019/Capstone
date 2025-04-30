; ModuleID = 'code/055-11316ReverseLinkedListII.c'
source_filename = "code/055-11316ReverseLinkedListII.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ListNode = type { i32, %struct.ListNode* }

@.str = private unnamed_addr constant [7 x i8] c"[%d]->\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@val = dso_local global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@head = dso_local global %struct.ListNode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printList(%struct.ListNode* %head) #0 {
entry:
  %head.addr = alloca %struct.ListNode*, align 8
  store %struct.ListNode* %head, %struct.ListNode** %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  %tobool = icmp ne %struct.ListNode* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  %val = getelementptr inbounds %struct.ListNode, %struct.ListNode* %1, i32 0, i32 0
  %2 = load i32, i32* %val, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %3, i32 0, i32 1
  %4 = load %struct.ListNode*, %struct.ListNode** %next, align 8
  store %struct.ListNode* %4, %struct.ListNode** %head.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ListNode* @reverseBetween(%struct.ListNode* %head, i32 %m, i32 %n) #0 {
entry:
  %head.addr = alloca %struct.ListNode*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p = alloca %struct.ListNode*, align 8
  %pa = alloca %struct.ListNode*, align 8
  %pb = alloca %struct.ListNode*, align 8
  %ph = alloca %struct.ListNode*, align 8
  %prev = alloca %struct.ListNode*, align 8
  %next = alloca %struct.ListNode*, align 8
  %h = alloca %struct.ListNode*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %sFlag = alloca i32, align 4
  store %struct.ListNode* %head, %struct.ListNode** %head.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %len, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %sFlag, align 4
  %2 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %2, %struct.ListNode** %p, align 8
  %3 = load i32, i32* %m.addr, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %sFlag, align 4
  %4 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %4, %struct.ListNode** %pa, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %5 = load i32, i32* %m.addr, align 4
  %cmp1 = icmp sge i32 %5, 3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next2 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %6, i32 0, i32 1
  %7 = load %struct.ListNode*, %struct.ListNode** %next2, align 8
  store %struct.ListNode* %7, %struct.ListNode** %p, align 8
  %8 = load i32, i32* %m.addr, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %m.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %9 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  store %struct.ListNode* %9, %struct.ListNode** %ph, align 8
  %10 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next3 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %10, i32 0, i32 1
  %11 = load %struct.ListNode*, %struct.ListNode** %next3, align 8
  store %struct.ListNode* %11, %struct.ListNode** %pa, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %12 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %12, %struct.ListNode** %p, align 8
  %13 = load i32, i32* %n.addr, align 4
  %sub4 = sub nsw i32 %13, 1
  store i32 %sub4, i32* %n.addr, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %while.body7, %if.end
  %14 = load i32, i32* %n.addr, align 4
  %dec6 = add nsw i32 %14, -1
  store i32 %dec6, i32* %n.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body7, label %while.end9

while.body7:                                      ; preds = %while.cond5
  %15 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next8 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %15, i32 0, i32 1
  %16 = load %struct.ListNode*, %struct.ListNode** %next8, align 8
  store %struct.ListNode* %16, %struct.ListNode** %p, align 8
  br label %while.cond5, !llvm.loop !7

while.end9:                                       ; preds = %while.cond5
  %17 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  store %struct.ListNode* %17, %struct.ListNode** %pb, align 8
  %18 = load %struct.ListNode*, %struct.ListNode** %pa, align 8
  %next10 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %18, i32 0, i32 1
  %19 = load %struct.ListNode*, %struct.ListNode** %next10, align 8
  store %struct.ListNode* %19, %struct.ListNode** %next, align 8
  %20 = load %struct.ListNode*, %struct.ListNode** %pb, align 8
  %next11 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %20, i32 0, i32 1
  %21 = load %struct.ListNode*, %struct.ListNode** %next11, align 8
  store %struct.ListNode* %21, %struct.ListNode** %prev, align 8
  %22 = load %struct.ListNode*, %struct.ListNode** %pa, align 8
  store %struct.ListNode* %22, %struct.ListNode** %p, align 8
  br label %while.cond12

while.cond12:                                     ; preds = %while.body15, %while.end9
  %23 = load i32, i32* %len, align 4
  %dec13 = add nsw i32 %23, -1
  store i32 %dec13, i32* %len, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %while.body15, label %while.end18

while.body15:                                     ; preds = %while.cond12
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  %25 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next16 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %25, i32 0, i32 1
  %26 = load %struct.ListNode*, %struct.ListNode** %next16, align 8
  store %struct.ListNode* %26, %struct.ListNode** %next, align 8
  %27 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  store %struct.ListNode* %27, %struct.ListNode** %h, align 8
  %28 = load %struct.ListNode*, %struct.ListNode** %prev, align 8
  %29 = load %struct.ListNode*, %struct.ListNode** %h, align 8
  %next17 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %29, i32 0, i32 1
  store %struct.ListNode* %28, %struct.ListNode** %next17, align 8
  %30 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  store %struct.ListNode* %30, %struct.ListNode** %prev, align 8
  %31 = load %struct.ListNode*, %struct.ListNode** %next, align 8
  store %struct.ListNode* %31, %struct.ListNode** %p, align 8
  br label %while.cond12, !llvm.loop !8

while.end18:                                      ; preds = %while.cond12
  %32 = load i32, i32* %sFlag, align 4
  %tobool19 = icmp ne i32 %32, 0
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %while.end18
  %33 = load %struct.ListNode*, %struct.ListNode** %h, align 8
  store %struct.ListNode* %33, %struct.ListNode** %head.addr, align 8
  br label %if.end23

if.else21:                                        ; preds = %while.end18
  %34 = load %struct.ListNode*, %struct.ListNode** %h, align 8
  %35 = load %struct.ListNode*, %struct.ListNode** %ph, align 8
  %next22 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %35, i32 0, i32 1
  store %struct.ListNode* %34, %struct.ListNode** %next22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then20
  %36 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  ret %struct.ListNode* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initGlobalList() #0 {
entry:
  %i = alloca i32, align 4
  %p = alloca %struct.ListNode*, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.ListNode*
  store %struct.ListNode* %0, %struct.ListNode** @head, align 8
  %1 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  store %struct.ListNode* %1, %struct.ListNode** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @val, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %val = getelementptr inbounds %struct.ListNode, %struct.ListNode* %5, i32 0, i32 0
  store i32 %4, i32* %val, align 8
  %6 = load i32, i32* %i, align 4
  %cmp1 = icmp ne i32 %6, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call2 = call noalias align 16 i8* @malloc(i64 16) #3
  %7 = bitcast i8* %call2 to %struct.ListNode*
  %8 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %8, i32 0, i32 1
  store %struct.ListNode* %7, %struct.ListNode** %next, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next3 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %9, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %next3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next4 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %10, i32 0, i32 1
  %11 = load %struct.ListNode*, %struct.ListNode** %next4, align 8
  store %struct.ListNode* %11, %struct.ListNode** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @initGlobalList()
  %0 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  %call = call %struct.ListNode* @reverseBetween(%struct.ListNode* %0, i32 1, i32 3)
  store %struct.ListNode* %call, %struct.ListNode** @head, align 8
  %1 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  call void @printList(%struct.ListNode* %1)
  call void @initGlobalList()
  %2 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  %call1 = call %struct.ListNode* @reverseBetween(%struct.ListNode* %2, i32 2, i32 4)
  store %struct.ListNode* %call1, %struct.ListNode** @head, align 8
  %3 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  call void @printList(%struct.ListNode* %3)
  call void @initGlobalList()
  %4 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  %call2 = call %struct.ListNode* @reverseBetween(%struct.ListNode* %4, i32 3, i32 5)
  store %struct.ListNode* %call2, %struct.ListNode** @head, align 8
  %5 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  call void @printList(%struct.ListNode* %5)
  call void @initGlobalList()
  %6 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  %call3 = call %struct.ListNode* @reverseBetween(%struct.ListNode* %6, i32 1, i32 5)
  store %struct.ListNode* %call3, %struct.ListNode** @head, align 8
  %7 = load %struct.ListNode*, %struct.ListNode** @head, align 8
  call void @printList(%struct.ListNode* %7)
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
