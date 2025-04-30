; ModuleID = './code/213-16016RecursiveIntersection.c'
source_filename = "./code/213-16016RecursiveIntersection.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@head3 = global ptr null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d  \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert(ptr noundef %head_ref, i32 noundef %new_data) #0 {
entry:
  %head_ref.addr = alloca ptr, align 8
  %new_data.addr = alloca i32, align 4
  %new_node = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %head_ref, ptr %head_ref.addr, align 8
  store i32 %new_data, ptr %new_data.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %new_node, align 8
  %0 = load ptr, ptr %head_ref.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %last, align 8
  %2 = load i32, ptr %new_data.addr, align 4
  %3 = load ptr, ptr %new_node, align 8
  %data = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  store i32 %2, ptr %data, align 8
  %4 = load ptr, ptr %new_node, align 8
  %next = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %5 = load ptr, ptr %head_ref.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %new_node, align 8
  %8 = load ptr, ptr %head_ref.addr, align 8
  store ptr %7, ptr %8, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load ptr, ptr %last, align 8
  %next1 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next1, align 8
  %cmp2 = icmp ne ptr %10, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %last, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %next3, align 8
  store ptr %12, ptr %last, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %new_node, align 8
  %14 = load ptr, ptr %last, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 1
  store ptr %13, ptr %next4, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display(ptr noundef %node) #0 {
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
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @intersection(ptr noundef %head1, ptr noundef %head2) #0 {
entry:
  %retval = alloca ptr, align 8
  %head1.addr = alloca ptr, align 8
  %head2.addr = alloca ptr, align 8
  %match = alloca i32, align 4
  store ptr %head1, ptr %head1.addr, align 8
  store ptr %head2, ptr %head2.addr, align 8
  %0 = load ptr, ptr %head1.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %head2.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %head1.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %data, align 8
  %4 = load ptr, ptr %head2.addr, align 8
  %data2 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %data2, align 8
  %cmp3 = icmp slt i32 %3, %5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %head1.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next, align 8
  %8 = load ptr, ptr %head2.addr, align 8
  %call = call ptr @intersection(ptr noundef %7, ptr noundef %8)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %9 = load ptr, ptr %head1.addr, align 8
  %data6 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %data6, align 8
  %11 = load ptr, ptr %head2.addr, align 8
  %data7 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %data7, align 8
  %cmp8 = icmp sgt i32 %10, %12
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  %13 = load ptr, ptr %head1.addr, align 8
  %14 = load ptr, ptr %head2.addr, align 8
  %next10 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %next10, align 8
  %call11 = call ptr @intersection(ptr noundef %13, ptr noundef %15)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5
  %16 = load ptr, ptr %head1.addr, align 8
  %data13 = getelementptr inbounds %struct.node, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %data13, align 8
  %18 = load ptr, ptr %head2.addr, align 8
  %data14 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %data14, align 8
  %cmp15 = icmp eq i32 %17, %19
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end12
  %20 = load ptr, ptr %head1.addr, align 8
  %data17 = getelementptr inbounds %struct.node, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %data17, align 8
  store i32 %21, ptr %match, align 4
  %22 = load i32, ptr %match, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %22)
  %23 = load i32, ptr %match, align 4
  call void @insert(ptr noundef @head3, i32 noundef %23)
  %24 = load ptr, ptr %head1.addr, align 8
  %next19 = getelementptr inbounds %struct.node, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %next19, align 8
  %26 = load ptr, ptr %head2.addr, align 8
  %next20 = getelementptr inbounds %struct.node, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %next20, align 8
  %call21 = call ptr @intersection(ptr noundef %25, ptr noundef %27)
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end12
  %28 = load ptr, ptr @head3, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head1 = alloca ptr, align 8
  %head2 = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %head1, align 8
  store ptr null, ptr %head2, align 8
  call void @insert(ptr noundef %head1, i32 noundef 5)
  call void @insert(ptr noundef %head1, i32 noundef 10)
  call void @insert(ptr noundef %head1, i32 noundef 15)
  call void @insert(ptr noundef %head2, i32 noundef 6)
  call void @insert(ptr noundef %head2, i32 noundef 10)
  call void @insert(ptr noundef %head2, i32 noundef 15)
  call void @insert(ptr noundef %head2, i32 noundef 25)
  %0 = load ptr, ptr %head1, align 8
  %1 = load ptr, ptr %head2, align 8
  %call = call ptr @intersection(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr @head3, align 8
  %2 = load ptr, ptr %head1, align 8
  call void @display(ptr noundef %2)
  %3 = load ptr, ptr %head2, align 8
  call void @display(ptr noundef %3)
  %4 = load ptr, ptr @head3, align 8
  call void @display(ptr noundef %4)
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
