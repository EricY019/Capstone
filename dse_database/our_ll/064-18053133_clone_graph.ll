; ModuleID = 'code/064-18053133_clone_graph.c'
source_filename = "code/064-18053133_clone_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_node = type { %struct.UndirectedGraphNode*, %struct.link_node* }
%struct.UndirectedGraphNode = type { i32, [100 x %struct.UndirectedGraphNode*], i32 }

@head = internal global %struct.link_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.UndirectedGraphNode* @cloneGraph(%struct.UndirectedGraphNode* %graph) #0 {
entry:
  %retval = alloca %struct.UndirectedGraphNode*, align 8
  %graph.addr = alloca %struct.UndirectedGraphNode*, align 8
  %t = alloca %struct.link_node*, align 8
  %new_graph = alloca %struct.UndirectedGraphNode*, align 8
  store %struct.UndirectedGraphNode* %graph, %struct.UndirectedGraphNode** %graph.addr, align 8
  %0 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %tobool = icmp ne %struct.UndirectedGraphNode* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.UndirectedGraphNode* null, %struct.UndirectedGraphNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store %struct.link_node* null, %struct.link_node** @head, align 8
  %1 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %call = call %struct.UndirectedGraphNode* @do_clone(%struct.UndirectedGraphNode* %1)
  store %struct.UndirectedGraphNode* %call, %struct.UndirectedGraphNode** %new_graph, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load %struct.link_node*, %struct.link_node** @head, align 8
  %tobool1 = icmp ne %struct.link_node* %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.link_node*, %struct.link_node** @head, align 8
  store %struct.link_node* %3, %struct.link_node** %t, align 8
  %4 = load %struct.link_node*, %struct.link_node** @head, align 8
  %next = getelementptr inbounds %struct.link_node, %struct.link_node* %4, i32 0, i32 1
  %5 = load %struct.link_node*, %struct.link_node** %next, align 8
  store %struct.link_node* %5, %struct.link_node** @head, align 8
  %6 = load %struct.link_node*, %struct.link_node** %t, align 8
  %7 = bitcast %struct.link_node* %6 to i8*
  call void @free(i8* %7) #2
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %8 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %new_graph, align 8
  store %struct.UndirectedGraphNode* %8, %struct.UndirectedGraphNode** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %retval, align 8
  ret %struct.UndirectedGraphNode* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.UndirectedGraphNode* @do_clone(%struct.UndirectedGraphNode* %graph) #0 {
entry:
  %retval = alloca %struct.UndirectedGraphNode*, align 8
  %graph.addr = alloca %struct.UndirectedGraphNode*, align 8
  %new_graph = alloca %struct.UndirectedGraphNode*, align 8
  %i = alloca i32, align 4
  store %struct.UndirectedGraphNode* %graph, %struct.UndirectedGraphNode** %graph.addr, align 8
  %0 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %tobool = icmp ne %struct.UndirectedGraphNode* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.UndirectedGraphNode* null, %struct.UndirectedGraphNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %label = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %1, i32 0, i32 0
  %2 = load i32, i32* %label, align 8
  %call = call %struct.UndirectedGraphNode* @is_accessed(i32 %2)
  store %struct.UndirectedGraphNode* %call, %struct.UndirectedGraphNode** %new_graph, align 8
  %tobool1 = icmp ne %struct.UndirectedGraphNode* %call, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %new_graph, align 8
  store %struct.UndirectedGraphNode* %3, %struct.UndirectedGraphNode** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = call noalias align 16 i8* @malloc(i64 816) #2
  %4 = bitcast i8* %call4 to %struct.UndirectedGraphNode*
  store %struct.UndirectedGraphNode* %4, %struct.UndirectedGraphNode** %new_graph, align 8
  %5 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %label5 = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %5, i32 0, i32 0
  %6 = load i32, i32* %label5, align 8
  %7 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %new_graph, align 8
  %label6 = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %7, i32 0, i32 0
  store i32 %6, i32* %label6, align 8
  %8 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %neighborsCount = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %8, i32 0, i32 2
  %9 = load i32, i32* %neighborsCount, align 8
  %10 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %new_graph, align 8
  %neighborsCount7 = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %10, i32 0, i32 2
  store i32 %9, i32* %neighborsCount7, align 8
  %11 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %new_graph, align 8
  call void @add_accessed(%struct.UndirectedGraphNode* %11)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %neighborsCount8 = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %13, i32 0, i32 2
  %14 = load i32, i32* %neighborsCount8, align 8
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %neighbors = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %15, i32 0, i32 1
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.UndirectedGraphNode*], [100 x %struct.UndirectedGraphNode*]* %neighbors, i64 0, i64 %idxprom
  %17 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %arrayidx, align 8
  %call9 = call %struct.UndirectedGraphNode* @do_clone(%struct.UndirectedGraphNode* %17)
  %18 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %new_graph, align 8
  %neighbors10 = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %18, i32 0, i32 1
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [100 x %struct.UndirectedGraphNode*], [100 x %struct.UndirectedGraphNode*]* %neighbors10, i64 0, i64 %idxprom11
  store %struct.UndirectedGraphNode* %call9, %struct.UndirectedGraphNode** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %new_graph, align 8
  store %struct.UndirectedGraphNode* %21, %struct.UndirectedGraphNode** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then2, %if.then
  %22 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %retval, align 8
  ret %struct.UndirectedGraphNode* %22
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %graph = alloca %struct.UndirectedGraphNode, align 8
  %new_graph = alloca %struct.UndirectedGraphNode*, align 8
  store i32 0, i32* %retval, align 4
  %label = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %graph, i32 0, i32 0
  store i32 0, i32* %label, align 8
  %neighborsCount = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %graph, i32 0, i32 2
  store i32 2, i32* %neighborsCount, align 8
  %neighbors = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %graph, i32 0, i32 1
  %arrayidx = getelementptr inbounds [100 x %struct.UndirectedGraphNode*], [100 x %struct.UndirectedGraphNode*]* %neighbors, i64 0, i64 0
  store %struct.UndirectedGraphNode* %graph, %struct.UndirectedGraphNode** %arrayidx, align 8
  %neighbors1 = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %graph, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [100 x %struct.UndirectedGraphNode*], [100 x %struct.UndirectedGraphNode*]* %neighbors1, i64 0, i64 1
  store %struct.UndirectedGraphNode* %graph, %struct.UndirectedGraphNode** %arrayidx2, align 8
  %call = call %struct.UndirectedGraphNode* @cloneGraph(%struct.UndirectedGraphNode* %graph)
  store %struct.UndirectedGraphNode* %call, %struct.UndirectedGraphNode** %new_graph, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.UndirectedGraphNode* @is_accessed(i32 %label) #0 {
entry:
  %retval = alloca %struct.UndirectedGraphNode*, align 8
  %label.addr = alloca i32, align 4
  %t = alloca %struct.link_node*, align 8
  store i32 %label, i32* %label.addr, align 4
  %0 = load %struct.link_node*, %struct.link_node** @head, align 8
  store %struct.link_node* %0, %struct.link_node** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.link_node*, %struct.link_node** %t, align 8
  %tobool = icmp ne %struct.link_node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.link_node*, %struct.link_node** %t, align 8
  %val = getelementptr inbounds %struct.link_node, %struct.link_node* %2, i32 0, i32 0
  %3 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %val, align 8
  %label1 = getelementptr inbounds %struct.UndirectedGraphNode, %struct.UndirectedGraphNode* %3, i32 0, i32 0
  %4 = load i32, i32* %label1, align 8
  %5 = load i32, i32* %label.addr, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.link_node*, %struct.link_node** %t, align 8
  %val2 = getelementptr inbounds %struct.link_node, %struct.link_node* %6, i32 0, i32 0
  %7 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %val2, align 8
  store %struct.UndirectedGraphNode* %7, %struct.UndirectedGraphNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load %struct.link_node*, %struct.link_node** %t, align 8
  %next = getelementptr inbounds %struct.link_node, %struct.link_node* %8, i32 0, i32 1
  %9 = load %struct.link_node*, %struct.link_node** %next, align 8
  store %struct.link_node* %9, %struct.link_node** %t, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  store %struct.UndirectedGraphNode* null, %struct.UndirectedGraphNode** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %retval, align 8
  ret %struct.UndirectedGraphNode* %10
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_accessed(%struct.UndirectedGraphNode* %graph) #0 {
entry:
  %graph.addr = alloca %struct.UndirectedGraphNode*, align 8
  %t = alloca %struct.link_node*, align 8
  store %struct.UndirectedGraphNode* %graph, %struct.UndirectedGraphNode** %graph.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #2
  %0 = bitcast i8* %call to %struct.link_node*
  store %struct.link_node* %0, %struct.link_node** %t, align 8
  %1 = load %struct.UndirectedGraphNode*, %struct.UndirectedGraphNode** %graph.addr, align 8
  %2 = load %struct.link_node*, %struct.link_node** %t, align 8
  %val = getelementptr inbounds %struct.link_node, %struct.link_node* %2, i32 0, i32 0
  store %struct.UndirectedGraphNode* %1, %struct.UndirectedGraphNode** %val, align 8
  %3 = load %struct.link_node*, %struct.link_node** @head, align 8
  %4 = load %struct.link_node*, %struct.link_node** %t, align 8
  %next = getelementptr inbounds %struct.link_node, %struct.link_node* %4, i32 0, i32 1
  store %struct.link_node* %3, %struct.link_node** %next, align 8
  %5 = load %struct.link_node*, %struct.link_node** %t, align 8
  store %struct.link_node* %5, %struct.link_node** @head, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
