; ModuleID = './code/217-17421PreorderTraversal.c'
source_filename = "./code/217-17421PreorderTraversal.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.tree = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"[%2d]\0A\00", align 1
@__const.main.data = private unnamed_addr constant [9 x i32] [i32 5, i32 6, i32 4, i32 8, i32 2, i32 3, i32 7, i32 1, i32 9], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\E6\A0\91\E7\9A\84\E7\BB\93\E7\82\B9\E5\86\85\E5\AE\B9\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @insertnode(ptr noundef %root, i32 noundef %value) #0 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %newnode = alloca ptr, align 8
  %current = alloca ptr, align 8
  %back = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %call = call ptr @malloc(i64 noundef 24) #4
  store ptr %call, ptr %newnode, align 8
  %0 = load i32, ptr %value.addr, align 4
  %1 = load ptr, ptr %newnode, align 8
  %data = getelementptr inbounds %struct.tree, ptr %1, i32 0, i32 0
  store i32 %0, ptr %data, align 8
  %2 = load ptr, ptr %newnode, align 8
  %left = getelementptr inbounds %struct.tree, ptr %2, i32 0, i32 1
  store ptr null, ptr %left, align 8
  %3 = load ptr, ptr %newnode, align 8
  %right = getelementptr inbounds %struct.tree, ptr %3, i32 0, i32 2
  store ptr null, ptr %right, align 8
  %4 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %newnode, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %root.addr, align 8
  store ptr %6, ptr %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %7 = load ptr, ptr %current, align 8
  %cmp1 = icmp ne ptr %7, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %current, align 8
  store ptr %8, ptr %back, align 8
  %9 = load ptr, ptr %current, align 8
  %data2 = getelementptr inbounds %struct.tree, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %data2, align 8
  %11 = load i32, ptr %value.addr, align 4
  %cmp3 = icmp sgt i32 %10, %11
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %while.body
  %12 = load ptr, ptr %current, align 8
  %left5 = getelementptr inbounds %struct.tree, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %left5, align 8
  store ptr %13, ptr %current, align 8
  br label %if.end

if.else6:                                         ; preds = %while.body
  %14 = load ptr, ptr %current, align 8
  %right7 = getelementptr inbounds %struct.tree, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %right7, align 8
  store ptr %15, ptr %current, align 8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %back, align 8
  %data8 = getelementptr inbounds %struct.tree, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %data8, align 8
  %18 = load i32, ptr %value.addr, align 4
  %cmp9 = icmp sgt i32 %17, %18
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %while.end
  %19 = load ptr, ptr %newnode, align 8
  %20 = load ptr, ptr %back, align 8
  %left11 = getelementptr inbounds %struct.tree, ptr %20, i32 0, i32 1
  store ptr %19, ptr %left11, align 8
  br label %if.end14

if.else12:                                        ; preds = %while.end
  %21 = load ptr, ptr %newnode, align 8
  %22 = load ptr, ptr %back, align 8
  %right13 = getelementptr inbounds %struct.tree, ptr %22, i32 0, i32 2
  store ptr %21, ptr %right13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  %23 = load ptr, ptr %root.addr, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @createbtree(ptr noundef %data, i32 noundef %len) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %root = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr null, ptr %root, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %root, align 8
  %3 = load ptr, ptr %data.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %call = call ptr @insertnode(ptr noundef %2, i32 noundef %5)
  store ptr %call, ptr %root, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %root, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @preorder(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8
  %data = getelementptr inbounds %struct.tree, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load ptr, ptr %ptr.addr, align 8
  %left = getelementptr inbounds %struct.tree, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %left, align 8
  call void @preorder(ptr noundef %4)
  %5 = load ptr, ptr %ptr.addr, align 8
  %right = getelementptr inbounds %struct.tree, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %right, align 8
  call void @preorder(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %root = alloca ptr, align 8
  %data = alloca [9 x i32], align 4
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %root, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %data, ptr align 4 @__const.main.data, i64 36, i1 false)
  %arraydecay = getelementptr inbounds [9 x i32], ptr %data, i64 0, i64 0
  %call = call ptr @createbtree(ptr noundef %arraydecay, i32 noundef 9)
  store ptr %call, ptr %root, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %0 = load ptr, ptr %root, align 8
  call void @preorder(ptr noundef %0)
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
!7 = distinct !{!7, !6}
