; ModuleID = './code/231-6843rev_k_node.c'
source_filename = "./code/231-6843rev_k_node.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [5 x i8] c"%d  \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\0AGiven linked list \0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0AReversed Linked list \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reverse(ptr noundef %head, i32 noundef %k) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  %curr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %next = alloca ptr, align 8
  %count = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  store i32 %k, ptr %k.addr, align 4
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %curr, align 8
  store ptr null, ptr %prev, align 8
  store ptr null, ptr %next, align 8
  store i32 0, ptr %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %count, align 4
  %2 = load i32, ptr %k.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %curr, align 8
  %cmp1 = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %curr, align 8
  %next2 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next2, align 8
  store ptr %6, ptr %next, align 8
  %7 = load ptr, ptr %prev, align 8
  %8 = load ptr, ptr %curr, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  store ptr %7, ptr %next3, align 8
  %9 = load ptr, ptr %curr, align 8
  store ptr %9, ptr %prev, align 8
  %10 = load ptr, ptr %next, align 8
  store ptr %10, ptr %curr, align 8
  %11 = load i32, ptr %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %count, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %next, align 8
  %cmp4 = icmp ne ptr %12, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %13 = load ptr, ptr %next, align 8
  %14 = load i32, ptr %k.addr, align 4
  %call = call ptr @reverse(ptr noundef %13, i32 noundef %14)
  %15 = load ptr, ptr %curr, align 8
  %next5 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  store ptr %call, ptr %next5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %16 = load ptr, ptr %prev, align 8
  ret ptr %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @push(ptr noundef %head_ref, i32 noundef %new_data) #0 {
entry:
  %head_ref.addr = alloca ptr, align 8
  %new_data.addr = alloca i32, align 4
  %new_node = alloca ptr, align 8
  store ptr %head_ref, ptr %head_ref.addr, align 8
  store i32 %new_data, ptr %new_data.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %new_node, align 8
  %0 = load i32, ptr %new_data.addr, align 4
  %1 = load ptr, ptr %new_node, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %data, align 8
  %2 = load ptr, ptr %head_ref.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %new_node, align 8
  %next = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %next, align 8
  %5 = load ptr, ptr %new_node, align 8
  %6 = load ptr, ptr %head_ref.addr, align 8
  store ptr %5, ptr %6, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printList(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %node.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %node.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load ptr, ptr %node.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %node.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %head, align 8
  call void @push(ptr noundef %head, i32 noundef 9)
  call void @push(ptr noundef %head, i32 noundef 8)
  call void @push(ptr noundef %head, i32 noundef 7)
  call void @push(ptr noundef %head, i32 noundef 6)
  call void @push(ptr noundef %head, i32 noundef 5)
  call void @push(ptr noundef %head, i32 noundef 4)
  call void @push(ptr noundef %head, i32 noundef 3)
  call void @push(ptr noundef %head, i32 noundef 2)
  call void @push(ptr noundef %head, i32 noundef 1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %0 = load ptr, ptr %head, align 8
  call void @printList(ptr noundef %0)
  %1 = load ptr, ptr %head, align 8
  %call1 = call ptr @reverse(ptr noundef %1, i32 noundef 3)
  store ptr %call1, ptr %head, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %2 = load ptr, ptr %head, align 8
  call void @printList(ptr noundef %2)
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
!7 = distinct !{!7, !6}
