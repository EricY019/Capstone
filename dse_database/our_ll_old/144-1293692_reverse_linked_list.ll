; ModuleID = './code/144-1293692_reverse_linked_list.c'
source_filename = "./code/144-1293692_reverse_linked_list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ListNode = type { i32, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reverseBetween(ptr noundef %head, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %revptr = alloca ptr, align 8
  %next2 = alloca ptr, align 8
  %revtail = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %head.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.ListNode, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %head.addr, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %head.addr, align 8
  store ptr %4, ptr %ptr, align 8
  store ptr null, ptr %prev, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %m.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %ptr, align 8
  store ptr %7, ptr %prev, align 8
  %8 = load ptr, ptr %ptr, align 8
  %next3 = getelementptr inbounds %struct.ListNode, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next3, align 8
  store ptr %9, ptr %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %revptr, align 8
  %11 = load ptr, ptr %ptr, align 8
  store ptr %11, ptr %next2, align 8
  store ptr %11, ptr %revtail, align 8
  %12 = load i32, ptr %m.addr, align 4
  store i32 %12, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp sle i32 %13, %14
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %15 = load ptr, ptr %next2, align 8
  store ptr %15, ptr %ptr, align 8
  %16 = load ptr, ptr %next2, align 8
  %next7 = getelementptr inbounds %struct.ListNode, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %next7, align 8
  store ptr %17, ptr %next2, align 8
  %18 = load ptr, ptr %revptr, align 8
  %19 = load ptr, ptr %ptr, align 8
  %next8 = getelementptr inbounds %struct.ListNode, ptr %19, i32 0, i32 1
  store ptr %18, ptr %next8, align 8
  %20 = load ptr, ptr %ptr, align 8
  store ptr %20, ptr %revptr, align 8
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %21 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %21, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end11:                                        ; preds = %for.cond4
  %22 = load ptr, ptr %prev, align 8
  %tobool12 = icmp ne ptr %22, null
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %for.end11
  %23 = load ptr, ptr %revptr, align 8
  store ptr %23, ptr %head.addr, align 8
  br label %if.end15

if.else:                                          ; preds = %for.end11
  %24 = load ptr, ptr %revptr, align 8
  %25 = load ptr, ptr %prev, align 8
  %next14 = getelementptr inbounds %struct.ListNode, ptr %25, i32 0, i32 1
  store ptr %24, ptr %next14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %26 = load ptr, ptr %next2, align 8
  %27 = load ptr, ptr %revtail, align 8
  %next16 = getelementptr inbounds %struct.ListNode, ptr %27, i32 0, i32 1
  store ptr %26, ptr %next16, align 8
  %28 = load ptr, ptr %head.addr, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
