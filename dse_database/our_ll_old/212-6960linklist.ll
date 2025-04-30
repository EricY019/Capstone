; ModuleID = './code/212-6960linklist.c'
source_filename = "./code/212-6960linklist.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @create(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %r = alloca ptr, align 8
  %list = alloca ptr, align 8
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr null, ptr %list, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %p, align 8
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %p, align 8
  %data = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0
  store i32 %2, ptr %data, align 8
  %4 = load ptr, ptr %p, align 8
  %link = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  store ptr null, ptr %link, align 8
  %5 = load ptr, ptr %list, align 8
  %cmp1 = icmp eq ptr null, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %p, align 8
  store ptr %6, ptr %list, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr %r, align 8
  %link2 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  store ptr %7, ptr %link2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %p, align 8
  store ptr %9, ptr %r, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %list, align 8
  ret ptr %11
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_list(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8
  %0 = load ptr, ptr %L.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load ptr, ptr %L.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %L.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %4 = load ptr, ptr %L.addr, align 8
  %link = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %link, align 8
  store ptr %5, ptr %L.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @swap_node(ptr noundef %L) #0 {
entry:
  %retval = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %h = alloca ptr, align 8
  %p = alloca ptr, align 8
  %r = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %prior = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8
  %0 = load ptr, ptr %L.addr, align 8
  store ptr %0, ptr %h, align 8
  %1 = load ptr, ptr %L.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %L.addr, align 8
  %link = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %link, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %link1 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %link1, align 8
  store ptr %5, ptr %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %6 = load ptr, ptr %p, align 8
  %tobool2 = icmp ne ptr %6, null
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %r, align 8
  %tobool3 = icmp ne ptr %7, null
  %lnot = xor i1 %tobool3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %r, align 8
  %link4 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %link4, align 8
  store ptr %10, ptr %temp, align 8
  %11 = load ptr, ptr %p, align 8
  %12 = load ptr, ptr %h, align 8
  %cmp = icmp eq ptr %11, %12
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %13 = load ptr, ptr %p, align 8
  %14 = load ptr, ptr %r, align 8
  %link6 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 1
  store ptr %13, ptr %link6, align 8
  %15 = load ptr, ptr %r, align 8
  store ptr %15, ptr %h, align 8
  br label %if.end10

if.else:                                          ; preds = %while.body
  %16 = load ptr, ptr %r, align 8
  %17 = load ptr, ptr %prior, align 8
  %link7 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 1
  store ptr %16, ptr %link7, align 8
  %18 = load ptr, ptr %temp, align 8
  %19 = load ptr, ptr %p, align 8
  %link8 = getelementptr inbounds %struct.node, ptr %19, i32 0, i32 1
  store ptr %18, ptr %link8, align 8
  %20 = load ptr, ptr %p, align 8
  %21 = load ptr, ptr %r, align 8
  %link9 = getelementptr inbounds %struct.node, ptr %21, i32 0, i32 1
  store ptr %20, ptr %link9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %22 = load ptr, ptr %p, align 8
  store ptr %22, ptr %prior, align 8
  %23 = load ptr, ptr %temp, align 8
  %24 = load ptr, ptr %p, align 8
  %link11 = getelementptr inbounds %struct.node, ptr %24, i32 0, i32 1
  store ptr %23, ptr %link11, align 8
  %25 = load ptr, ptr %temp, align 8
  store ptr %25, ptr %p, align 8
  %26 = load ptr, ptr %temp, align 8
  %link12 = getelementptr inbounds %struct.node, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %link12, align 8
  store ptr %27, ptr %r, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %28 = load ptr, ptr %h, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @LinkListReverse(ptr noundef %L) #0 {
entry:
  %retval = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %pcur = alloca ptr, align 8
  %ptemp = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8
  %0 = load ptr, ptr %L.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %L.addr, align 8
  %link = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %link, align 8
  store ptr %2, ptr %pcur, align 8
  %3 = load ptr, ptr %L.addr, align 8
  %link1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  store ptr null, ptr %link1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %pcur, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pcur, align 8
  %link2 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %link2, align 8
  store ptr %6, ptr %ptemp, align 8
  %7 = load ptr, ptr %L.addr, align 8
  %8 = load ptr, ptr %pcur, align 8
  %link3 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  store ptr %7, ptr %link3, align 8
  %9 = load ptr, ptr %pcur, align 8
  store ptr %9, ptr %L.addr, align 8
  %10 = load ptr, ptr %ptemp, align 8
  store ptr %10, ptr %pcur, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %L.addr, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %L = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @create(i32 noundef 4)
  store ptr %call, ptr %L, align 8
  %0 = load ptr, ptr %L, align 8
  call void @print_list(ptr noundef %0)
  %1 = load ptr, ptr %L, align 8
  %call1 = call ptr @swap_node(ptr noundef %1)
  store ptr %call1, ptr %L, align 8
  %2 = load ptr, ptr %L, align 8
  call void @print_list(ptr noundef %2)
  %3 = load ptr, ptr %L, align 8
  %call2 = call ptr @LinkListReverse(ptr noundef %3)
  store ptr %call2, ptr %L, align 8
  %4 = load ptr, ptr %L, align 8
  call void @print_list(ptr noundef %4)
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
