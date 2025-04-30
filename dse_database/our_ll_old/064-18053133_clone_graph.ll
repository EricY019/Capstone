; ModuleID = './code/064-18053133_clone_graph.c'
source_filename = "./code/064-18053133_clone_graph.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.link_node = type { ptr, ptr }
%struct.UndirectedGraphNode = type { i32, [100 x ptr], i32 }

@head = internal global ptr null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @cloneGraph(ptr noundef %graph) #0 {
entry:
  %retval = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %new_graph = alloca ptr, align 8
  store ptr %graph, ptr %graph.addr, align 8
  %0 = load ptr, ptr %graph.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr @head, align 8
  %1 = load ptr, ptr %graph.addr, align 8
  %call = call ptr @do_clone(ptr noundef %1)
  store ptr %call, ptr %new_graph, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load ptr, ptr @head, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr @head, align 8
  store ptr %3, ptr %t, align 8
  %4 = load ptr, ptr @head, align 8
  %next = getelementptr inbounds %struct.link_node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr @head, align 8
  %6 = load ptr, ptr %t, align 8
  call void @free(ptr noundef %6)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %new_graph, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @do_clone(ptr noundef %graph) #0 {
entry:
  %retval = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %new_graph = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %graph, ptr %graph.addr, align 8
  %0 = load ptr, ptr %graph.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %graph.addr, align 8
  %label = getelementptr inbounds %struct.UndirectedGraphNode, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %label, align 8
  %call = call ptr @is_accessed(i32 noundef %2)
  store ptr %call, ptr %new_graph, align 8
  %tobool1 = icmp ne ptr %call, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %new_graph, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @malloc(i64 noundef 816) #3
  store ptr %call4, ptr %new_graph, align 8
  %4 = load ptr, ptr %graph.addr, align 8
  %label5 = getelementptr inbounds %struct.UndirectedGraphNode, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %label5, align 8
  %6 = load ptr, ptr %new_graph, align 8
  %label6 = getelementptr inbounds %struct.UndirectedGraphNode, ptr %6, i32 0, i32 0
  store i32 %5, ptr %label6, align 8
  %7 = load ptr, ptr %graph.addr, align 8
  %neighborsCount = getelementptr inbounds %struct.UndirectedGraphNode, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %neighborsCount, align 8
  %9 = load ptr, ptr %new_graph, align 8
  %neighborsCount7 = getelementptr inbounds %struct.UndirectedGraphNode, ptr %9, i32 0, i32 2
  store i32 %8, ptr %neighborsCount7, align 8
  %10 = load ptr, ptr %new_graph, align 8
  call void @add_accessed(ptr noundef %10)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr %graph.addr, align 8
  %neighborsCount8 = getelementptr inbounds %struct.UndirectedGraphNode, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %neighborsCount8, align 8
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %graph.addr, align 8
  %neighbors = getelementptr inbounds %struct.UndirectedGraphNode, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [100 x ptr], ptr %neighbors, i64 0, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %call9 = call ptr @do_clone(ptr noundef %16)
  %17 = load ptr, ptr %new_graph, align 8
  %neighbors10 = getelementptr inbounds %struct.UndirectedGraphNode, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [100 x ptr], ptr %neighbors10, i64 0, i64 %idxprom11
  store ptr %call9, ptr %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %new_graph, align 8
  store ptr %20, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then2, %if.then
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %graph = alloca %struct.UndirectedGraphNode, align 8
  %new_graph = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %label = getelementptr inbounds %struct.UndirectedGraphNode, ptr %graph, i32 0, i32 0
  store i32 0, ptr %label, align 8
  %neighborsCount = getelementptr inbounds %struct.UndirectedGraphNode, ptr %graph, i32 0, i32 2
  store i32 2, ptr %neighborsCount, align 8
  %neighbors = getelementptr inbounds %struct.UndirectedGraphNode, ptr %graph, i32 0, i32 1
  %arrayidx = getelementptr inbounds [100 x ptr], ptr %neighbors, i64 0, i64 0
  store ptr %graph, ptr %arrayidx, align 8
  %neighbors1 = getelementptr inbounds %struct.UndirectedGraphNode, ptr %graph, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [100 x ptr], ptr %neighbors1, i64 0, i64 1
  store ptr %graph, ptr %arrayidx2, align 8
  %call = call ptr @cloneGraph(ptr noundef %graph)
  store ptr %call, ptr %new_graph, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @is_accessed(i32 noundef %label) #0 {
entry:
  %retval = alloca ptr, align 8
  %label.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  store i32 %label, ptr %label.addr, align 4
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %t, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %t, align 8
  %val = getelementptr inbounds %struct.link_node, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %val, align 8
  %label1 = getelementptr inbounds %struct.UndirectedGraphNode, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %label1, align 8
  %5 = load i32, ptr %label.addr, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %t, align 8
  %val2 = getelementptr inbounds %struct.link_node, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %val2, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %t, align 8
  %next = getelementptr inbounds %struct.link_node, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next, align 8
  store ptr %9, ptr %t, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @add_accessed(ptr noundef %graph) #0 {
entry:
  %graph.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  store ptr %graph, ptr %graph.addr, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %t, align 8
  %0 = load ptr, ptr %graph.addr, align 8
  %1 = load ptr, ptr %t, align 8
  %val = getelementptr inbounds %struct.link_node, ptr %1, i32 0, i32 0
  store ptr %0, ptr %val, align 8
  %2 = load ptr, ptr @head, align 8
  %3 = load ptr, ptr %t, align 8
  %next = getelementptr inbounds %struct.link_node, ptr %3, i32 0, i32 1
  store ptr %2, ptr %next, align 8
  %4 = load ptr, ptr %t, align 8
  store ptr %4, ptr @head, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
