; ModuleID = 'code/128-1151083_remove_duplicates_from_sorted_list.c'
source_filename = "code/128-1151083_remove_duplicates_from_sorted_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ListNode = type { i32, %struct.ListNode* }

@.str = private unnamed_addr constant [7 x i8] c"%d -> \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@__const.main.arr = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 2, i32 3, i32 3], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ListNode* @deleteDuplicates(%struct.ListNode* %head) #0 {
entry:
  %retval = alloca %struct.ListNode*, align 8
  %head.addr = alloca %struct.ListNode*, align 8
  %ptr = alloca %struct.ListNode*, align 8
  %tmp = alloca %struct.ListNode*, align 8
  store %struct.ListNode* %head, %struct.ListNode** %head.addr, align 8
  %0 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %0, %struct.ListNode** %ptr, align 8
  %1 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %1, %struct.ListNode** %tmp, align 8
  %2 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  %cmp = icmp eq %struct.ListNode* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.ListNode* null, %struct.ListNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %3, i32 0, i32 1
  %4 = load %struct.ListNode*, %struct.ListNode** %next, align 8
  store %struct.ListNode* %4, %struct.ListNode** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %5 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %tobool = icmp ne %struct.ListNode* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.ListNode*, %struct.ListNode** %tmp, align 8
  %val = getelementptr inbounds %struct.ListNode, %struct.ListNode* %6, i32 0, i32 0
  %7 = load i32, i32* %val, align 8
  %8 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %val1 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %8, i32 0, i32 0
  %9 = load i32, i32* %val1, align 8
  %cmp2 = icmp eq i32 %7, %9
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %10 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %next4 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %10, i32 0, i32 1
  %11 = load %struct.ListNode*, %struct.ListNode** %next4, align 8
  %12 = load %struct.ListNode*, %struct.ListNode** %tmp, align 8
  %next5 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %12, i32 0, i32 1
  store %struct.ListNode* %11, %struct.ListNode** %next5, align 8
  %13 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %14 = bitcast %struct.ListNode* %13 to i8*
  call void @free(i8* %14) #4
  br label %if.end6

if.else:                                          ; preds = %while.body
  %15 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* %15, %struct.ListNode** %tmp, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %16 = load %struct.ListNode*, %struct.ListNode** %tmp, align 8
  %next7 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %16, i32 0, i32 1
  %17 = load %struct.ListNode*, %struct.ListNode** %next7, align 8
  store %struct.ListNode* %17, %struct.ListNode** %ptr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %18 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %18, %struct.ListNode** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %19 = load %struct.ListNode*, %struct.ListNode** %retval, align 8
  ret %struct.ListNode* %19
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ListNode* @createList(i32* %arr, i32 %len) #0 {
entry:
  %retval = alloca %struct.ListNode*, align 8
  %arr.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %ptr = alloca %struct.ListNode*, align 8
  %head = alloca %struct.ListNode*, align 8
  %tmp = alloca %struct.ListNode*, align 8
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.ListNode* null, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* null, %struct.ListNode** %head, align 8
  store %struct.ListNode* null, %struct.ListNode** %tmp, align 8
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.ListNode* null, %struct.ListNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %1 = bitcast i8* %call to %struct.ListNode*
  store %struct.ListNode* %1, %struct.ListNode** %ptr, align 8
  %2 = load i32*, i32** %arr.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %val = getelementptr inbounds %struct.ListNode, %struct.ListNode* %4, i32 0, i32 0
  store i32 %3, i32* %val, align 8
  %5 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %5, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %next, align 8
  %6 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* %6, %struct.ListNode** %head, align 8
  %7 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* %7, %struct.ListNode** %tmp, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp slt i32 %8, %9
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call noalias align 16 i8* @malloc(i64 16) #4
  %10 = bitcast i8* %call2 to %struct.ListNode*
  store %struct.ListNode* %10, %struct.ListNode** %ptr, align 8
  %11 = load i32*, i32** %arr.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %13 = load i32, i32* %arrayidx3, align 4
  %14 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %val4 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %14, i32 0, i32 0
  store i32 %13, i32* %val4, align 8
  %15 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %next5 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %15, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %next5, align 8
  %16 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %17 = load %struct.ListNode*, %struct.ListNode** %tmp, align 8
  %next6 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %17, i32 0, i32 1
  store %struct.ListNode* %16, %struct.ListNode** %next6, align 8
  %18 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* %18, %struct.ListNode** %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load %struct.ListNode*, %struct.ListNode** %head, align 8
  store %struct.ListNode* %20, %struct.ListNode** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load %struct.ListNode*, %struct.ListNode** %retval, align 8
  ret %struct.ListNode* %21
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printList(%struct.ListNode* %head) #0 {
entry:
  %head.addr = alloca %struct.ListNode*, align 8
  %ptr = alloca %struct.ListNode*, align 8
  store %struct.ListNode* %head, %struct.ListNode** %head.addr, align 8
  %0 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %0, %struct.ListNode** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %tobool = icmp ne %struct.ListNode* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %val = getelementptr inbounds %struct.ListNode, %struct.ListNode* %2, i32 0, i32 0
  %3 = load i32, i32* %val, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %3)
  %4 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %4, i32 0, i32 1
  %5 = load %struct.ListNode*, %struct.ListNode** %next, align 8
  store %struct.ListNode* %5, %struct.ListNode** %ptr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [5 x i32], align 16
  %head = alloca %struct.ListNode*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.main.arr to i8*), i64 20, i1 false)
  store %struct.ListNode* null, %struct.ListNode** %head, align 8
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %arr, i64 0, i64 0
  %call = call %struct.ListNode* @createList(i32* %arraydecay, i32 5)
  store %struct.ListNode* %call, %struct.ListNode** %head, align 8
  %1 = load %struct.ListNode*, %struct.ListNode** %head, align 8
  call void @printList(%struct.ListNode* %1)
  %2 = load %struct.ListNode*, %struct.ListNode** %head, align 8
  %call1 = call %struct.ListNode* @deleteDuplicates(%struct.ListNode* %2)
  %3 = load %struct.ListNode*, %struct.ListNode** %head, align 8
  call void @printList(%struct.ListNode* %3)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
