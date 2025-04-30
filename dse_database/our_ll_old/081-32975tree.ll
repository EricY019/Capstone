; ModuleID = './code/081-32975tree.c'
source_filename = "./code/081-32975tree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@COUNT = global i32 10, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-----\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @newNode(i32 noundef %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %node = alloca ptr, align 8
  store i32 %data, ptr %data.addr, align 4
  %call = call ptr @malloc(i64 noundef 24) #3
  store ptr %call, ptr %node, align 8
  %0 = load i32, ptr %data.addr, align 4
  %1 = load ptr, ptr %node, align 8
  %data1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %data1, align 8
  %2 = load ptr, ptr %node, align 8
  %left = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  store ptr null, ptr %left, align 8
  %3 = load ptr, ptr %node, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  store ptr null, ptr %right, align 8
  %4 = load ptr, ptr %node, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_tree(ptr noundef %root) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %root.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %left, align 8
  call void @print_tree(ptr noundef %2)
  %3 = load ptr, ptr %root.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  %5 = load ptr, ptr %root.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %right, align 8
  call void @print_tree(ptr noundef %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print2D(ptr noundef %root, i32 noundef %space) #0 {
entry:
  %root.addr = alloca ptr, align 8
  %space.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  store i32 %space, ptr %space.addr, align 4
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @COUNT, align 4
  %2 = load i32, ptr %space.addr, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %space.addr, align 4
  %3 = load ptr, ptr %root.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %right, align 8
  %5 = load i32, ptr %space.addr, align 4
  call void @print2D(ptr noundef %4, i32 noundef %5)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %6 = load i32, ptr @COUNT, align 4
  store i32 %6, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %space.addr, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %root.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %data, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %11)
  %12 = load ptr, ptr %root.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %left, align 8
  %14 = load i32, ptr %space.addr, align 4
  call void @print2D(ptr noundef %13, i32 noundef %14)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @rotate_right(ptr noundef %root) #0 {
entry:
  %root.addr = alloca ptr, align 8
  %pivot = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %left, align 8
  store ptr %1, ptr %pivot, align 8
  %2 = load ptr, ptr %pivot, align 8
  %right = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %right, align 8
  %4 = load ptr, ptr %root.addr, align 8
  %left1 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %left1, align 8
  %5 = load ptr, ptr %root.addr, align 8
  %6 = load ptr, ptr %pivot, align 8
  %right2 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 2
  store ptr %5, ptr %right2, align 8
  %7 = load ptr, ptr %pivot, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @rotate_left(ptr noundef %root) #0 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %retval, align 8
  ret ptr %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %root = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @newNode(i32 noundef 5)
  store ptr %call, ptr %root, align 8
  %call1 = call ptr @newNode(i32 noundef 3)
  %0 = load ptr, ptr %root, align 8
  %left = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1
  store ptr %call1, ptr %left, align 8
  %call2 = call ptr @newNode(i32 noundef 7)
  %1 = load ptr, ptr %root, align 8
  %right = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 2
  store ptr %call2, ptr %right, align 8
  %call3 = call ptr @newNode(i32 noundef 2)
  %2 = load ptr, ptr %root, align 8
  %left4 = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %left4, align 8
  %left5 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  store ptr %call3, ptr %left5, align 8
  %call6 = call ptr @newNode(i32 noundef 4)
  %4 = load ptr, ptr %root, align 8
  %left7 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %left7, align 8
  %right8 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 2
  store ptr %call6, ptr %right8, align 8
  %6 = load ptr, ptr %root, align 8
  call void @print2D(ptr noundef %6, i32 noundef 0)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %7 = load ptr, ptr %root, align 8
  %call10 = call ptr @rotate_right(ptr noundef %7)
  store ptr %call10, ptr %root, align 8
  %8 = load ptr, ptr %root, align 8
  call void @print2D(ptr noundef %8, i32 noundef 0)
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
