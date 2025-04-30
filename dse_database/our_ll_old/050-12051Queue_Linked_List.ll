; ModuleID = './code/050-12051Queue_Linked_List.c'
source_filename = "./code/050-12051Queue_Linked_List.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@front = global ptr null, align 8
@rear = global ptr null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Memory is not allocated\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%d inserted in the queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Queue is empty\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Element deleted is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"The queue is\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isEmpty() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @front, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @enqueue(i32 noundef %elt) #0 {
entry:
  %elt.addr = alloca i32, align 4
  %newNode = alloca ptr, align 8
  store i32 %elt, ptr %elt.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %newNode, align 8
  %0 = load i32, ptr %elt.addr, align 4
  %1 = load ptr, ptr %newNode, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %data, align 8
  %2 = load ptr, ptr %newNode, align 8
  %link = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  store ptr null, ptr %link, align 8
  %3 = load ptr, ptr %newNode, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @front, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %newNode, align 8
  store ptr %5, ptr @front, align 8
  %6 = load ptr, ptr %newNode, align 8
  store ptr %6, ptr @rear, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %newNode, align 8
  %8 = load ptr, ptr @rear, align 8
  %link4 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  store ptr %7, ptr %link4, align 8
  %9 = load ptr, ptr %newNode, align 8
  store ptr %9, ptr @rear, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %10 = load i32, ptr %elt.addr, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10)
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dequeue() #0 {
entry:
  %data = alloca i32, align 4
  %call = call i32 @isEmpty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @front, align 8
  %data2 = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %data2, align 8
  store i32 %1, ptr %data, align 4
  %2 = load i32, ptr %data, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %2)
  %3 = load ptr, ptr @front, align 8
  %link = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %link, align 8
  store ptr %4, ptr @front, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display() #0 {
entry:
  %ptr = alloca ptr, align 8
  %call = call i32 @isEmpty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %0 = load ptr, ptr @front, align 8
  store ptr %0, ptr %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %ptr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ptr, align 8
  %data = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %data, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %ptr, align 8
  %link = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %link, align 8
  store ptr %5, ptr %ptr, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @dequeue()
  call void @enqueue(i32 noundef 15)
  call void @enqueue(i32 noundef 49)
  call void @enqueue(i32 noundef 54)
  call void @enqueue(i32 noundef 2)
  call void @enqueue(i32 noundef 97)
  call void @display()
  call void @dequeue()
  call void @dequeue()
  call void @display()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
