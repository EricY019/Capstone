; ModuleID = 'code/144-1293692_reverse_linked_list.c'
source_filename = "code/144-1293692_reverse_linked_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ListNode = type { i32, %struct.ListNode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ListNode* @reverseBetween(%struct.ListNode* %head, i32 %m, i32 %n) #0 {
entry:
  %retval = alloca %struct.ListNode*, align 8
  %head.addr = alloca %struct.ListNode*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ptr = alloca %struct.ListNode*, align 8
  %prev = alloca %struct.ListNode*, align 8
  %revptr = alloca %struct.ListNode*, align 8
  %next2 = alloca %struct.ListNode*, align 8
  %revtail = alloca %struct.ListNode*, align 8
  %i = alloca i32, align 4
  store %struct.ListNode* %head, %struct.ListNode** %head.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  %tobool = icmp ne %struct.ListNode* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %1, i32 0, i32 1
  %2 = load %struct.ListNode*, %struct.ListNode** %next, align 8
  %tobool1 = icmp ne %struct.ListNode* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %3, %struct.ListNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %4, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* null, %struct.ListNode** %prev, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* %7, %struct.ListNode** %prev, align 8
  %8 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %next3 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %8, i32 0, i32 1
  %9 = load %struct.ListNode*, %struct.ListNode** %next3, align 8
  store %struct.ListNode* %9, %struct.ListNode** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store %struct.ListNode* null, %struct.ListNode** %revptr, align 8
  %11 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* %11, %struct.ListNode** %next2, align 8
  store %struct.ListNode* %11, %struct.ListNode** %revtail, align 8
  %12 = load i32, i32* %m.addr, align 4
  store i32 %12, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp sle i32 %13, %14
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %15 = load %struct.ListNode*, %struct.ListNode** %next2, align 8
  store %struct.ListNode* %15, %struct.ListNode** %ptr, align 8
  %16 = load %struct.ListNode*, %struct.ListNode** %next2, align 8
  %next7 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %16, i32 0, i32 1
  %17 = load %struct.ListNode*, %struct.ListNode** %next7, align 8
  store %struct.ListNode* %17, %struct.ListNode** %next2, align 8
  %18 = load %struct.ListNode*, %struct.ListNode** %revptr, align 8
  %19 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  %next8 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %19, i32 0, i32 1
  store %struct.ListNode* %18, %struct.ListNode** %next8, align 8
  %20 = load %struct.ListNode*, %struct.ListNode** %ptr, align 8
  store %struct.ListNode* %20, %struct.ListNode** %revptr, align 8
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %21 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %21, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond4, !llvm.loop !6

for.end11:                                        ; preds = %for.cond4
  %22 = load %struct.ListNode*, %struct.ListNode** %prev, align 8
  %tobool12 = icmp ne %struct.ListNode* %22, null
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %for.end11
  %23 = load %struct.ListNode*, %struct.ListNode** %revptr, align 8
  store %struct.ListNode* %23, %struct.ListNode** %head.addr, align 8
  br label %if.end15

if.else:                                          ; preds = %for.end11
  %24 = load %struct.ListNode*, %struct.ListNode** %revptr, align 8
  %25 = load %struct.ListNode*, %struct.ListNode** %prev, align 8
  %next14 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %25, i32 0, i32 1
  store %struct.ListNode* %24, %struct.ListNode** %next14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %26 = load %struct.ListNode*, %struct.ListNode** %next2, align 8
  %27 = load %struct.ListNode*, %struct.ListNode** %revtail, align 8
  %next16 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %27, i32 0, i32 1
  store %struct.ListNode* %26, %struct.ListNode** %next16, align 8
  %28 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %28, %struct.ListNode** %retval, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %29 = load %struct.ListNode*, %struct.ListNode** %retval, align 8
  ret %struct.ListNode* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
