; ModuleID = 'code/009-21072link_list.c'
source_filename = "code/009-21072link_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._node = type { i32, %struct._node*, %struct._node* }

@gListHead = internal global %struct._node* null, align 8
@gListTail = internal global %struct._node* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"[%s:%s(%d)]::calloc\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"code/009-21072link_list.c\00", align 1
@__FUNCTION__.push_back = private unnamed_addr constant [10 x i8] c"push_back\00", align 1
@__FUNCTION__.push_front = private unnamed_addr constant [11 x i8] c"push_front\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"[%s:%s(%d)]::mData=%d\0A\00", align 1
@__FUNCTION__.traverse = private unnamed_addr constant [9 x i8] c"traverse\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_back(i32 %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %pNode = alloca %struct._node*, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call noalias align 16 i8* @calloc(i64 1, i64 24) #3
  %0 = bitcast i8* %call to %struct._node*
  store %struct._node* %0, %struct._node** %pNode, align 8
  %1 = load %struct._node*, %struct._node** %pNode, align 8
  %tobool = icmp ne %struct._node* %1, null
  br i1 %tobool, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4
  %3 = load %struct._node*, %struct._node** %pNode, align 8
  %mData = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 0
  store i32 %2, i32* %mData, align 8
  %4 = load %struct._node*, %struct._node** @gListHead, align 8
  %cmp = icmp eq %struct._node* null, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct._node*, %struct._node** @gListHead, align 8
  %6 = load %struct._node*, %struct._node** @gListTail, align 8
  %cmp1 = icmp eq %struct._node* %5, %6
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %7 = load %struct._node*, %struct._node** %pNode, align 8
  store %struct._node* %7, %struct._node** @gListTail, align 8
  store %struct._node* %7, %struct._node** @gListHead, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load %struct._node*, %struct._node** %pNode, align 8
  %9 = load %struct._node*, %struct._node** @gListTail, align 8
  %mNext = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 2
  store %struct._node* %8, %struct._node** %mNext, align 8
  %10 = load %struct._node*, %struct._node** %pNode, align 8
  store %struct._node* %10, %struct._node** @gListTail, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  store %struct._node* null, %struct._node** %pNode, align 8
  br label %if.end5

if.else3:                                         ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.push_back, i64 0, i64 0), i32 32)
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_front(i32 %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %pNode = alloca %struct._node*, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call noalias align 16 i8* @calloc(i64 1, i64 24) #3
  %0 = bitcast i8* %call to %struct._node*
  store %struct._node* %0, %struct._node** %pNode, align 8
  %1 = load %struct._node*, %struct._node** %pNode, align 8
  %tobool = icmp ne %struct._node* %1, null
  br i1 %tobool, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4
  %3 = load %struct._node*, %struct._node** %pNode, align 8
  %mData = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 0
  store i32 %2, i32* %mData, align 8
  %4 = load %struct._node*, %struct._node** @gListHead, align 8
  %cmp = icmp eq %struct._node* null, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct._node*, %struct._node** @gListHead, align 8
  %6 = load %struct._node*, %struct._node** @gListTail, align 8
  %cmp1 = icmp eq %struct._node* %5, %6
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %7 = load %struct._node*, %struct._node** %pNode, align 8
  store %struct._node* %7, %struct._node** @gListTail, align 8
  store %struct._node* %7, %struct._node** @gListHead, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load %struct._node*, %struct._node** @gListHead, align 8
  %9 = load %struct._node*, %struct._node** %pNode, align 8
  %mNext = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 2
  store %struct._node* %8, %struct._node** %mNext, align 8
  %10 = load %struct._node*, %struct._node** %pNode, align 8
  store %struct._node* %10, %struct._node** @gListHead, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.else3:                                         ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.push_front, i64 0, i64 0), i32 47)
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete(i32 %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %pPrev = alloca %struct._node*, align 8
  %pCurr = alloca %struct._node*, align 8
  store i32 %data, i32* %data.addr, align 4
  %0 = load %struct._node*, %struct._node** @gListHead, align 8
  store %struct._node* %0, %struct._node** %pCurr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %1 = load %struct._node*, %struct._node** %pCurr, align 8
  %tobool = icmp ne %struct._node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._node*, %struct._node** %pCurr, align 8
  %mData = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i32, i32* %mData, align 8
  %4 = load i32, i32* %data.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %while.body
  %5 = load %struct._node*, %struct._node** %pCurr, align 8
  %6 = load %struct._node*, %struct._node** @gListHead, align 8
  %cmp1 = icmp eq %struct._node* %5, %6
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %7 = load %struct._node*, %struct._node** %pCurr, align 8
  %mNext = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 2
  %8 = load %struct._node*, %struct._node** %mNext, align 8
  store %struct._node* %8, %struct._node** @gListHead, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct._node*, %struct._node** %pCurr, align 8
  %mNext3 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 2
  %10 = load %struct._node*, %struct._node** %mNext3, align 8
  %11 = load %struct._node*, %struct._node** %pPrev, align 8
  %mNext4 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 2
  store %struct._node* %10, %struct._node** %mNext4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %12 = load %struct._node*, %struct._node** %pCurr, align 8
  %13 = bitcast %struct._node* %12 to i8*
  call void @free(i8* %13) #3
  br label %while.end

if.end5:                                          ; preds = %while.body
  %14 = load %struct._node*, %struct._node** %pCurr, align 8
  store %struct._node* %14, %struct._node** %pPrev, align 8
  %15 = load %struct._node*, %struct._node** %pCurr, align 8
  %mNext6 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 2
  %16 = load %struct._node*, %struct._node** %mNext6, align 8
  store %struct._node* %16, %struct._node** %pCurr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.end, %while.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update(i32 %old, i32 %new) #0 {
entry:
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %pNode = alloca %struct._node*, align 8
  store i32 %old, i32* %old.addr, align 4
  store i32 %new, i32* %new.addr, align 4
  %0 = load %struct._node*, %struct._node** @gListHead, align 8
  store %struct._node* %0, %struct._node** %pNode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct._node*, %struct._node** %pNode, align 8
  %tobool = icmp ne %struct._node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._node*, %struct._node** %pNode, align 8
  %mData = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i32, i32* %mData, align 8
  %4 = load i32, i32* %old.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %new.addr, align 4
  %6 = load %struct._node*, %struct._node** %pNode, align 8
  %mData1 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  store i32 %5, i32* %mData1, align 8
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = load %struct._node*, %struct._node** %pNode, align 8
  %mNext = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 2
  %8 = load %struct._node*, %struct._node** %mNext, align 8
  store %struct._node* %8, %struct._node** %pNode, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @traverse() #0 {
entry:
  %pNode = alloca %struct._node*, align 8
  %0 = load %struct._node*, %struct._node** @gListHead, align 8
  store %struct._node* %0, %struct._node** %pNode, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._node*, %struct._node** %pNode, align 8
  %tobool = icmp ne %struct._node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._node*, %struct._node** %pNode, align 8
  %mData = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i32, i32* %mData, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.traverse, i64 0, i64 0), i32 83, i32 %3)
  %4 = load %struct._node*, %struct._node** %pNode, align 8
  %mNext = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 2
  %5 = load %struct._node*, %struct._node** %mNext, align 8
  store %struct._node* %5, %struct._node** %pNode, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear() #0 {
entry:
  %pTemp = alloca %struct._node*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._node*, %struct._node** @gListHead, align 8
  %tobool = icmp ne %struct._node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._node*, %struct._node** @gListHead, align 8
  store %struct._node* %1, %struct._node** %pTemp, align 8
  %2 = load %struct._node*, %struct._node** @gListHead, align 8
  %mNext = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 2
  %3 = load %struct._node*, %struct._node** %mNext, align 8
  store %struct._node* %3, %struct._node** @gListHead, align 8
  %4 = load %struct._node*, %struct._node** %pTemp, align 8
  %5 = bitcast %struct._node* %4 to i8*
  call void @free(i8* %5) #3
  store %struct._node* null, %struct._node** %pTemp, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  call void @push_back(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc4, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %3, -20
  br i1 %cmp2, label %for.body3, label %for.end5

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  call void @push_front(i32 %4)
  br label %for.inc4

for.inc4:                                         ; preds = %for.body3
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond1, !llvm.loop !10

for.end5:                                         ; preds = %for.cond1
  call void @delete(i32 10)
  call void @delete(i32 -10)
  call void @update(i32 0, i32 97)
  call void @traverse()
  call void @clear()
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
!10 = distinct !{!10, !5}
