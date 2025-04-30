; ModuleID = './code/211-13538binary_search_tree.c'
source_filename = "./code/211-13538binary_search_tree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr, ptr }

@head = global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"data %d \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"left child %d \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"left child NULL \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"right child %d \0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"right child NULL \0A\00", align 1
@__const.main.A = private unnamed_addr constant [7 x i32] [i32 9, i32 4, i32 15, i32 2, i32 6, i32 12, i32 17], align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"tree in print_preorder : \0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"tree in print_inorder : \0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"tree in print_postorder : \0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"all info\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @create(i32 noundef %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  store i32 %data, ptr %data.addr, align 4
  %call = call ptr @malloc(i64 noundef 24) #4
  store ptr %call, ptr %temp, align 8
  %0 = load i32, ptr %data.addr, align 4
  %1 = load ptr, ptr %temp, align 8
  %data1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %data1, align 8
  %2 = load ptr, ptr %temp, align 8
  %left = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  store ptr null, ptr %left, align 8
  %3 = load ptr, ptr %temp, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  store ptr null, ptr %right, align 8
  %4 = load ptr, ptr %temp, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @insert(ptr noundef %current, i32 noundef %data) #0 {
entry:
  %retval = alloca ptr, align 8
  %current.addr = alloca ptr, align 8
  %data.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  %temp3 = alloca ptr, align 8
  store ptr %current, ptr %current.addr, align 8
  store i32 %data, ptr %data.addr, align 4
  %0 = load ptr, ptr @head, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %data.addr, align 4
  %call = call ptr @create(i32 noundef %1)
  store ptr %call, ptr %temp, align 8
  %2 = load ptr, ptr %temp, align 8
  store ptr %2, ptr @head, align 8
  %3 = load ptr, ptr %temp, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %current.addr, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load i32, ptr %data.addr, align 4
  %call4 = call ptr @create(i32 noundef %5)
  store ptr %call4, ptr %temp3, align 8
  %6 = load ptr, ptr %temp3, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load i32, ptr %data.addr, align 4
  %8 = load ptr, ptr %current.addr, align 8
  %data5 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %data5, align 8
  %cmp6 = icmp sle i32 %7, %9
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.end
  %10 = load ptr, ptr %current.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %left, align 8
  %12 = load i32, ptr %data.addr, align 4
  %call8 = call ptr @insert(ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %current.addr, align 8
  %left9 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  store ptr %call8, ptr %left9, align 8
  br label %if.end17

if.else10:                                        ; preds = %if.end
  %14 = load i32, ptr %data.addr, align 4
  %15 = load ptr, ptr %current.addr, align 8
  %data11 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %data11, align 8
  %cmp12 = icmp sgt i32 %14, %16
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.else10
  %17 = load ptr, ptr %current.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %right, align 8
  %19 = load i32, ptr %data.addr, align 4
  %call14 = call ptr @insert(ptr noundef %18, i32 noundef %19)
  %20 = load ptr, ptr %current.addr, align 8
  %right15 = getelementptr inbounds %struct.node, ptr %20, i32 0, i32 2
  store ptr %call14, ptr %right15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %21 = load ptr, ptr %current.addr, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then2, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_preorder(ptr noundef %temp) #0 {
entry:
  %temp.addr = alloca ptr, align 8
  store ptr %temp, ptr %temp.addr, align 8
  %0 = load ptr, ptr %temp.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %temp.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load ptr, ptr %temp.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %left, align 8
  call void @print_preorder(ptr noundef %4)
  %5 = load ptr, ptr %temp.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %right, align 8
  call void @print_preorder(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_inorder(ptr noundef %temp) #0 {
entry:
  %temp.addr = alloca ptr, align 8
  store ptr %temp, ptr %temp.addr, align 8
  %0 = load ptr, ptr %temp.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %temp.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %left, align 8
  call void @print_inorder(ptr noundef %2)
  %3 = load ptr, ptr %temp.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  %5 = load ptr, ptr %temp.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %right, align 8
  call void @print_inorder(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_postorder(ptr noundef %temp) #0 {
entry:
  %temp.addr = alloca ptr, align 8
  store ptr %temp, ptr %temp.addr, align 8
  %0 = load ptr, ptr %temp.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %temp.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %left, align 8
  call void @print_postorder(ptr noundef %2)
  %3 = load ptr, ptr %temp.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %right, align 8
  call void @print_postorder(ptr noundef %4)
  %5 = load ptr, ptr %temp.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_preorder_all(ptr noundef %temp) #0 {
entry:
  %temp.addr = alloca ptr, align 8
  store ptr %temp, ptr %temp.addr, align 8
  %0 = load ptr, ptr %temp.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %temp.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %3 = load ptr, ptr %temp.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %left, align 8
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %temp.addr, align 8
  %left3 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %left3, align 8
  %data4 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %data4, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %temp.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %right, align 8
  %cmp7 = icmp ne ptr %9, null
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end
  %10 = load ptr, ptr %temp.addr, align 8
  %right9 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %right9, align 8
  %data10 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %data10, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %12)
  br label %if.end14

if.else12:                                        ; preds = %if.end
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then8
  %13 = load ptr, ptr %temp.addr, align 8
  %left15 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %left15, align 8
  call void @print_preorder_all(ptr noundef %14)
  %15 = load ptr, ptr %temp.addr, align 8
  %right16 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %right16, align 8
  call void @print_preorder_all(ptr noundef %16)
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca ptr, align 8
  %A = alloca [7 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr null, ptr @head, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 4 @__const.main.A, i64 28, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @head, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [7 x i32], ptr %A, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %call = call ptr @insert(ptr noundef %1, i32 noundef %3)
  store ptr %call, ptr %temp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %5 = load ptr, ptr @head, align 8
  call void @print_preorder(ptr noundef %5)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %6 = load ptr, ptr @head, align 8
  call void @print_inorder(ptr noundef %6)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %7 = load ptr, ptr @head, align 8
  call void @print_postorder(ptr noundef %7)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %8 = load ptr, ptr @head, align 8
  call void @print_preorder_all(ptr noundef %8)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
