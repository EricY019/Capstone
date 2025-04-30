; ModuleID = './code/336-23208Queue_using_Linked_List.c'
source_filename = "./code/336-23208Queue_using_Linked_List.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@rear = global ptr null, align 8
@front = global ptr null, align 8
@.str = private unnamed_addr constant [16 x i8] c"\0AQueue Overflow\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0AQueue underflow\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\0AQueue: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @enqueue(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  store i32 %x, ptr %x.addr, align 4
  store ptr null, ptr %temp, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %temp, align 8
  %0 = load ptr, ptr %temp, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end6

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %2 = load ptr, ptr %temp, align 8
  %data = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  store i32 %1, ptr %data, align 8
  %3 = load ptr, ptr %temp, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %4 = load ptr, ptr @front, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr @rear, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %temp, align 8
  store ptr %6, ptr @front, align 8
  %7 = load ptr, ptr %temp, align 8
  store ptr %7, ptr @rear, align 8
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %temp, align 8
  %9 = load ptr, ptr @rear, align 8
  %next5 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  store ptr %8, ptr %next5, align 8
  %10 = load ptr, ptr %temp, align 8
  store ptr %10, ptr @rear, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.else, %if.then4
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dequeue() #0 {
entry:
  %temp = alloca ptr, align 8
  %0 = load ptr, ptr @front, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @rear, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end5

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr @front, align 8
  store ptr %2, ptr %temp, align 8
  %call2 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call2, ptr %temp, align 8
  %3 = load ptr, ptr @front, align 8
  %4 = load ptr, ptr @rear, align 8
  %cmp3 = icmp eq ptr %3, %4
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store ptr null, ptr @front, align 8
  store ptr null, ptr @rear, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr @front, align 8
  %next = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr @front, align 8
  %7 = load ptr, ptr %temp, align 8
  call void @free(ptr noundef %7)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.else, %if.then4
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print() #0 {
entry:
  %temp = alloca ptr, align 8
  %0 = load ptr, ptr @front, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @rear, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %2 = load ptr, ptr @front, align 8
  store ptr %2, ptr %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %temp, align 8
  %cmp3 = icmp ne ptr %3, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %temp, align 8
  %data = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %data, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %5)
  %6 = load ptr, ptr %temp, align 8
  %next = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next, align 8
  store ptr %7, ptr %temp, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @print()
  call void @enqueue(i32 noundef 10)
  call void @print()
  call void @enqueue(i32 noundef 20)
  call void @enqueue(i32 noundef 30)
  call void @print()
  call void @dequeue()
  call void @dequeue()
  call void @print()
  call void @dequeue()
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
