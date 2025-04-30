; ModuleID = './code/224-6279list.c'
source_filename = "./code/224-6279list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [20 x i8] c"\0Aprinting the list\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"The val of node we just popped is : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0Astarting remove_by_value\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"the first node matched by val, so we popped it with val=%d/n\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"current val is :%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"val not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"we found the value which in our list is : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_node(i32 noundef %val, ptr noundef %next) #0 {
entry:
  %val.addr = alloca i32, align 4
  %next.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  store ptr %next, ptr %next.addr, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %node, align 8
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %node, align 8
  %val1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %val1, align 8
  %2 = load ptr, ptr %next.addr, align 8
  %3 = load ptr, ptr %node, align 8
  %next2 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  store ptr %2, ptr %next2, align 8
  %4 = load ptr, ptr %node, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_list(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %current = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %current, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %current, align 8
  %val = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %val, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  %4 = load ptr, ptr %current, align 8
  %next = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %current, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @pop(ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %next_node = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %first, align 8
  %1 = load ptr, ptr %first, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %first, align 8
  %3 = load ptr, ptr %2, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %next_node, align 8
  %5 = load ptr, ptr %first, align 8
  %6 = load ptr, ptr %5, align 8
  %val = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %val, align 8
  store i32 %7, ptr %retval1, align 4
  %8 = load ptr, ptr %first, align 8
  %9 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %9)
  %10 = load ptr, ptr %next_node, align 8
  %11 = load ptr, ptr %first, align 8
  store ptr %10, ptr %11, align 8
  %12 = load i32, ptr %retval1, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %12)
  %13 = load i32, ptr %retval1, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @push(ptr noundef %head, i32 noundef %val) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %new_first = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  %call = call ptr @make_node(i32 noundef %0, ptr noundef null)
  store ptr %call, ptr %new_first, align 8
  %1 = load ptr, ptr %head.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %new_first, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  store ptr %2, ptr %next, align 8
  %4 = load ptr, ptr %new_first, align 8
  %5 = load ptr, ptr %head.addr, align 8
  store ptr %4, ptr %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @remove_by_value(ptr noundef %head, i32 noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %current = alloca ptr, align 8
  %val_popped = alloca i32, align 4
  %pointer_to_remove = alloca ptr, align 8
  %point_to_next = alloca ptr, align 8
  %current19 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %0 = load ptr, ptr %head.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %current, align 8
  %2 = load ptr, ptr %current, align 8
  %val1 = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %val1, align 8
  %4 = load i32, ptr %val.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %head.addr, align 8
  %call2 = call i32 @pop(ptr noundef %5)
  store i32 %call2, ptr %val_popped, align 4
  %6 = load i32, ptr %val_popped, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %6)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %7 = load i32, ptr %val.addr, align 4
  %8 = load ptr, ptr %current, align 8
  %val4 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %val4, align 8
  %cmp5 = icmp ne i32 %7, %9
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %current, align 8
  %val6 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %val6, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %11)
  %12 = load ptr, ptr %current, align 8
  %next = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %next, align 8
  %cmp8 = icmp eq ptr %13, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %while.body
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %14 = load ptr, ptr %current, align 8
  %next12 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %next12, align 8
  store ptr %15, ptr %current, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %val.addr, align 4
  %17 = load ptr, ptr %current, align 8
  %val13 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %val13, align 8
  %cmp14 = icmp eq i32 %16, %18
  br i1 %cmp14, label %if.then15, label %if.end31

if.then15:                                        ; preds = %while.end
  %19 = load ptr, ptr %current, align 8
  %val16 = getelementptr inbounds %struct.node, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %val16, align 8
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %20)
  %21 = load ptr, ptr %current, align 8
  store ptr %21, ptr %pointer_to_remove, align 8
  %22 = load ptr, ptr %current, align 8
  %next18 = getelementptr inbounds %struct.node, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %next18, align 8
  store ptr %23, ptr %point_to_next, align 8
  %24 = load ptr, ptr %head.addr, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %current19, align 8
  br label %while.cond20

while.cond20:                                     ; preds = %while.body23, %if.then15
  %26 = load ptr, ptr %pointer_to_remove, align 8
  %27 = load ptr, ptr %current19, align 8
  %next21 = getelementptr inbounds %struct.node, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %next21, align 8
  %cmp22 = icmp ne ptr %26, %28
  br i1 %cmp22, label %while.body23, label %while.end25

while.body23:                                     ; preds = %while.cond20
  %29 = load ptr, ptr %current19, align 8
  %next24 = getelementptr inbounds %struct.node, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %next24, align 8
  store ptr %30, ptr %current19, align 8
  br label %while.cond20, !llvm.loop !8

while.end25:                                      ; preds = %while.cond20
  %31 = load ptr, ptr %current19, align 8
  %next26 = getelementptr inbounds %struct.node, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %next26, align 8
  %33 = load ptr, ptr %pointer_to_remove, align 8
  %cmp27 = icmp eq ptr %32, %33
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %while.end25
  %34 = load ptr, ptr %point_to_next, align 8
  %35 = load ptr, ptr %current19, align 8
  %next29 = getelementptr inbounds %struct.node, ptr %35, i32 0, i32 1
  store ptr %34, ptr %next29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %while.end25
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.end30, %if.then9, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %next = alloca ptr, align 8
  %temp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %node, align 8
  %2 = load ptr, ptr %node, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %node, align 8
  %next1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next1, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %node, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next3, align 8
  store ptr %6, ptr %next, align 8
  %7 = load ptr, ptr %node, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  store ptr null, ptr %next4, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %next, align 8
  %cmp5 = icmp ne ptr %8, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %next, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next6, align 8
  store ptr %10, ptr %temp, align 8
  %11 = load ptr, ptr %node, align 8
  %12 = load ptr, ptr %next, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  store ptr %11, ptr %next7, align 8
  %13 = load ptr, ptr %next, align 8
  store ptr %13, ptr %node, align 8
  %14 = load ptr, ptr %temp, align 8
  store ptr %14, ptr %next, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %test_list = alloca ptr, align 8
  %retval9 = alloca i32, align 4
  %call = call ptr @make_node(i32 noundef 1, ptr noundef null)
  store ptr %call, ptr %test_list, align 8
  %call1 = call ptr @make_node(i32 noundef 2, ptr noundef null)
  %0 = load ptr, ptr %test_list, align 8
  %next = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1
  store ptr %call1, ptr %next, align 8
  %call2 = call ptr @make_node(i32 noundef 3, ptr noundef null)
  %1 = load ptr, ptr %test_list, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next3, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  store ptr %call2, ptr %next4, align 8
  %call5 = call ptr @make_node(i32 noundef 4, ptr noundef null)
  %3 = load ptr, ptr %test_list, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next6, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next7, align 8
  %next8 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  store ptr %call5, ptr %next8, align 8
  %call10 = call i32 @pop(ptr noundef %test_list)
  store i32 %call10, ptr %retval9, align 4
  %6 = load i32, ptr %retval9, align 4
  %add = add nsw i32 %6, 10
  call void @push(ptr noundef %test_list, i32 noundef %add)
  %call11 = call i32 @remove_by_value(ptr noundef %test_list, i32 noundef 3)
  %call12 = call i32 @remove_by_value(ptr noundef %test_list, i32 noundef 7)
  %7 = load ptr, ptr %test_list, align 8
  call void @print_list(ptr noundef %7)
  call void @reverse(ptr noundef %test_list)
  %8 = load ptr, ptr %test_list, align 8
  call void @print_list(ptr noundef %8)
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
