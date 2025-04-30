; ModuleID = './code/153-652solve.c'
source_filename = "./code/153-652solve.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ListNode = type { i32, ptr }

@.str = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__const.main.a = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@__const.main.b = private unnamed_addr constant [2 x i32] [i32 6, i32 7], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getLength(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 0, ptr %len, align 4
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %len, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %len, align 4
  %3 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %p, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %len, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @getIntersectionNode(ptr noundef %ha, ptr noundef %hb) #0 {
entry:
  %retval = alloca ptr, align 8
  %ha.addr = alloca ptr, align 8
  %hb.addr = alloca ptr, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %diff = alloca i32, align 4
  store ptr %ha, ptr %ha.addr, align 8
  store ptr %hb, ptr %hb.addr, align 8
  %0 = load ptr, ptr %ha.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %hb.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %ha.addr, align 8
  %call = call i32 @getLength(ptr noundef %2)
  store i32 %call, ptr %len1, align 4
  %3 = load ptr, ptr %hb.addr, align 8
  %call2 = call i32 @getLength(ptr noundef %3)
  store i32 %call2, ptr %len2, align 4
  %4 = load i32, ptr %len1, align 4
  %5 = load i32, ptr %len2, align 4
  %cmp3 = icmp sge i32 %4, %5
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %ha.addr, align 8
  store ptr %6, ptr %p, align 8
  %7 = load ptr, ptr %hb.addr, align 8
  store ptr %7, ptr %q, align 8
  %8 = load i32, ptr %len1, align 4
  %9 = load i32, ptr %len2, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, ptr %diff, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %hb.addr, align 8
  store ptr %10, ptr %p, align 8
  %11 = load ptr, ptr %ha.addr, align 8
  store ptr %11, ptr %q, align 8
  %12 = load i32, ptr %len2, align 4
  %13 = load i32, ptr %len1, align 4
  %sub5 = sub nsw i32 %12, %13
  store i32 %sub5, ptr %diff, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end6
  %14 = load i32, ptr %diff, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %diff, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next, align 8
  store ptr %16, ptr %p, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %while.cond7

while.cond7:                                      ; preds = %if.end13, %while.end
  %17 = load ptr, ptr %p, align 8
  %tobool8 = icmp ne ptr %17, null
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond7
  %18 = load ptr, ptr %q, align 8
  %tobool9 = icmp ne ptr %18, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond7
  %19 = phi i1 [ false, %while.cond7 ], [ %tobool9, %land.rhs ]
  br i1 %19, label %while.body10, label %while.end16

while.body10:                                     ; preds = %land.end
  %20 = load ptr, ptr %p, align 8
  %21 = load ptr, ptr %q, align 8
  %cmp11 = icmp eq ptr %20, %21
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.body10
  %22 = load ptr, ptr %p, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %while.body10
  %23 = load ptr, ptr %p, align 8
  %next14 = getelementptr inbounds %struct.ListNode, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %next14, align 8
  store ptr %24, ptr %p, align 8
  %25 = load ptr, ptr %q, align 8
  %next15 = getelementptr inbounds %struct.ListNode, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %next15, align 8
  store ptr %26, ptr %q, align 8
  br label %while.cond7, !llvm.loop !8

while.end16:                                      ; preds = %land.end
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end16, %if.then12, %if.then
  %27 = load ptr, ptr %retval, align 8
  ret ptr %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(ptr noundef %ha, ptr noundef %hb) #0 {
entry:
  %ha.addr = alloca ptr, align 8
  %hb.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %ha, ptr %ha.addr, align 8
  store ptr %hb, ptr %hb.addr, align 8
  %0 = load ptr, ptr %ha.addr, align 8
  %1 = load ptr, ptr %hb.addr, align 8
  %call = call ptr @getIntersectionNode(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %val, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @mk_list(ptr noundef %ha, ptr noundef %a, i32 noundef %n) #0 {
entry:
  %ha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %q = alloca ptr, align 8
  store ptr %ha, ptr %ha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %p, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %p, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %2, i32 0, i32 0
  store i32 %1, ptr %val, align 8
  %3 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %3, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %4 = load ptr, ptr %p, align 8
  %5 = load ptr, ptr %ha.addr, align 8
  store ptr %4, ptr %5, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call ptr @malloc(i64 noundef 16) #4
  store ptr %call1, ptr %q, align 8
  %8 = load ptr, ptr %a.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = load ptr, ptr %q, align 8
  %val3 = getelementptr inbounds %struct.ListNode, ptr %11, i32 0, i32 0
  store i32 %10, ptr %val3, align 8
  %12 = load ptr, ptr %q, align 8
  %next4 = getelementptr inbounds %struct.ListNode, ptr %12, i32 0, i32 1
  store ptr null, ptr %next4, align 8
  %13 = load ptr, ptr %q, align 8
  %14 = load ptr, ptr %p, align 8
  %next5 = getelementptr inbounds %struct.ListNode, ptr %14, i32 0, i32 1
  store ptr %13, ptr %next5, align 8
  %15 = load ptr, ptr %q, align 8
  store ptr %15, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %p, align 8
  ret ptr %17
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ha = alloca ptr, align 8
  %hb = alloca ptr, align 8
  %a = alloca [5 x i32], align 4
  %b = alloca [2 x i32], align 4
  %last1 = alloca ptr, align 8
  %last2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %ha, align 8
  store ptr null, ptr %hb, align 8
  %0 = load ptr, ptr %ha, align 8
  %1 = load ptr, ptr %hb, align 8
  call void @print(ptr noundef %0, ptr noundef %1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 @__const.main.a, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 4 @__const.main.b, i64 8, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  %call = call ptr @mk_list(ptr noundef %ha, ptr noundef %arraydecay, i32 noundef 5)
  store ptr %call, ptr %last1, align 8
  %arraydecay1 = getelementptr inbounds [2 x i32], ptr %b, i64 0, i64 0
  %call2 = call ptr @mk_list(ptr noundef %hb, ptr noundef %arraydecay1, i32 noundef 2)
  store ptr %call2, ptr %last2, align 8
  %2 = load ptr, ptr %ha, align 8
  %3 = load ptr, ptr %last2, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %3, i32 0, i32 1
  store ptr %2, ptr %next, align 8
  %4 = load ptr, ptr %ha, align 8
  %5 = load ptr, ptr %hb, align 8
  call void @print(ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
