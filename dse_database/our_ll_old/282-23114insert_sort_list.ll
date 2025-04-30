; ModuleID = './code/282-23114insert_sort_list.c'
source_filename = "./code/282-23114insert_sort_list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ListNode = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %head = alloca ptr, align 8
  %p = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %count, align 4
  store ptr null, ptr %head, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %p, align 8
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @atoi(ptr noundef %5)
  %6 = load ptr, ptr %p, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %6, i32 0, i32 0
  store i32 %call1, ptr %val, align 8
  %7 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %7, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %8 = load ptr, ptr %head, align 8
  %cmp2 = icmp eq ptr %8, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %p, align 8
  store ptr %9, ptr %head, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load ptr, ptr %p, align 8
  %11 = load ptr, ptr %prev, align 8
  %next3 = getelementptr inbounds %struct.ListNode, ptr %11, i32 0, i32 1
  store ptr %10, ptr %next3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %p, align 8
  store ptr %12, ptr %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %head, align 8
  %call4 = call ptr @insertionSortList(ptr noundef %14)
  store ptr %call4, ptr %p, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc10, %for.end
  %15 = load ptr, ptr %p, align 8
  %cmp6 = icmp ne ptr %15, null
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond5
  %16 = load ptr, ptr %p, align 8
  %val8 = getelementptr inbounds %struct.ListNode, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %val8, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %17)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %18 = load ptr, ptr %p, align 8
  %next11 = getelementptr inbounds %struct.ListNode, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next11, align 8
  store ptr %19, ptr %p, align 8
  br label %for.cond5, !llvm.loop !7

for.end12:                                        ; preds = %for.cond5
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @atoi(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @insertionSortList(ptr noundef %head) #0 {
entry:
  %retval = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %dummy = alloca %struct.ListNode, align 8
  %p0 = alloca ptr, align 8
  %p = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %head.addr, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %head.addr, align 8
  %next4 = getelementptr inbounds %struct.ListNode, ptr %dummy, i32 0, i32 1
  store ptr %4, ptr %next4, align 8
  %5 = load ptr, ptr %head.addr, align 8
  store ptr %5, ptr %p0, align 8
  %6 = load ptr, ptr %head.addr, align 8
  %next5 = getelementptr inbounds %struct.ListNode, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next5, align 8
  store ptr %7, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %if.end3
  %8 = load ptr, ptr %p, align 8
  %cmp6 = icmp ne ptr %8, null
  br i1 %cmp6, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %p, align 8
  %val = getelementptr inbounds %struct.ListNode, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %val, align 8
  %11 = load ptr, ptr %p0, align 8
  %val7 = getelementptr inbounds %struct.ListNode, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %val7, align 8
  %cmp8 = icmp slt i32 %10, %12
  br i1 %cmp8, label %if.then9, label %if.end25

if.then9:                                         ; preds = %for.body
  %13 = load ptr, ptr %p, align 8
  %next10 = getelementptr inbounds %struct.ListNode, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next10, align 8
  %15 = load ptr, ptr %p0, align 8
  %next11 = getelementptr inbounds %struct.ListNode, ptr %15, i32 0, i32 1
  store ptr %14, ptr %next11, align 8
  store ptr %dummy, ptr %p1, align 8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %if.then9
  %16 = load ptr, ptr %p1, align 8
  %17 = load ptr, ptr %p0, align 8
  %cmp13 = icmp ne ptr %16, %17
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %18 = load ptr, ptr %p1, align 8
  %next15 = getelementptr inbounds %struct.ListNode, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next15, align 8
  %val16 = getelementptr inbounds %struct.ListNode, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %val16, align 8
  %21 = load ptr, ptr %p, align 8
  %val17 = getelementptr inbounds %struct.ListNode, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %val17, align 8
  %cmp18 = icmp sge i32 %20, %22
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %for.body14
  %23 = load ptr, ptr %p1, align 8
  %next20 = getelementptr inbounds %struct.ListNode, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %next20, align 8
  %25 = load ptr, ptr %p, align 8
  %next21 = getelementptr inbounds %struct.ListNode, ptr %25, i32 0, i32 1
  store ptr %24, ptr %next21, align 8
  %26 = load ptr, ptr %p, align 8
  %27 = load ptr, ptr %p1, align 8
  %next22 = getelementptr inbounds %struct.ListNode, ptr %27, i32 0, i32 1
  store ptr %26, ptr %next22, align 8
  br label %for.end

if.end23:                                         ; preds = %for.body14
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %28 = load ptr, ptr %p1, align 8
  %next24 = getelementptr inbounds %struct.ListNode, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %next24, align 8
  store ptr %29, ptr %p1, align 8
  br label %for.cond12, !llvm.loop !8

for.end:                                          ; preds = %if.then19, %for.cond12
  %30 = load ptr, ptr %p0, align 8
  store ptr %30, ptr %p, align 8
  br label %if.end25

if.end25:                                         ; preds = %for.end, %for.body
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %31 = load ptr, ptr %p, align 8
  store ptr %31, ptr %p0, align 8
  %32 = load ptr, ptr %p, align 8
  %next27 = getelementptr inbounds %struct.ListNode, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %next27, align 8
  store ptr %33, ptr %p, align 8
  br label %for.cond, !llvm.loop !9

for.end28:                                        ; preds = %for.cond
  %next29 = getelementptr inbounds %struct.ListNode, ptr %dummy, i32 0, i32 1
  %34 = load ptr, ptr %next29, align 8
  store ptr %34, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end28, %if.then2, %if.then
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

declare i32 @printf(ptr noundef, ...) #2

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
