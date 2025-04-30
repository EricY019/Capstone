; ModuleID = 'code/231-6843rev_k_node.c'
source_filename = "code/231-6843rev_k_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [5 x i8] c"%d  \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\0AGiven linked list \0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0AReversed Linked list \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @reverse(%struct.node* %head, i32 %k) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  %k.addr = alloca i32, align 4
  %curr = alloca %struct.node*, align 8
  %prev = alloca %struct.node*, align 8
  %next = alloca %struct.node*, align 8
  %count = alloca i32, align 4
  store %struct.node* %head, %struct.node** %head.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  store %struct.node* %0, %struct.node** %curr, align 8
  store %struct.node* null, %struct.node** %prev, align 8
  store %struct.node* null, %struct.node** %next, align 8
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %k.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.node*, %struct.node** %curr, align 8
  %cmp1 = icmp ne %struct.node* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.node*, %struct.node** %curr, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %next2, align 8
  store %struct.node* %6, %struct.node** %next, align 8
  %7 = load %struct.node*, %struct.node** %prev, align 8
  %8 = load %struct.node*, %struct.node** %curr, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* %7, %struct.node** %next3, align 8
  %9 = load %struct.node*, %struct.node** %curr, align 8
  store %struct.node* %9, %struct.node** %prev, align 8
  %10 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %10, %struct.node** %curr, align 8
  %11 = load i32, i32* %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %12 = load %struct.node*, %struct.node** %next, align 8
  %cmp4 = icmp ne %struct.node* %12, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %13 = load %struct.node*, %struct.node** %next, align 8
  %14 = load i32, i32* %k.addr, align 4
  %call = call %struct.node* @reverse(%struct.node* %13, i32 %14)
  %15 = load %struct.node*, %struct.node** %curr, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  store %struct.node* %call, %struct.node** %next5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %16 = load %struct.node*, %struct.node** %prev, align 8
  ret %struct.node* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push(%struct.node** %head_ref, i32 %new_data) #0 {
entry:
  %head_ref.addr = alloca %struct.node**, align 8
  %new_data.addr = alloca i32, align 4
  %new_node = alloca %struct.node*, align 8
  store %struct.node** %head_ref, %struct.node*** %head_ref.addr, align 8
  store i32 %new_data, i32* %new_data.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %new_node, align 8
  %1 = load i32, i32* %new_data.addr, align 4
  %2 = load %struct.node*, %struct.node** %new_node, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %data, align 8
  %3 = load %struct.node**, %struct.node*** %head_ref.addr, align 8
  %4 = load %struct.node*, %struct.node** %3, align 8
  %5 = load %struct.node*, %struct.node** %new_node, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  store %struct.node* %4, %struct.node** %next, align 8
  %6 = load %struct.node*, %struct.node** %new_node, align 8
  %7 = load %struct.node**, %struct.node*** %head_ref.addr, align 8
  store %struct.node* %6, %struct.node** %7, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printList(%struct.node* %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  store %struct.node* %node, %struct.node** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.node*, %struct.node** %node.addr, align 8
  %cmp = icmp ne %struct.node* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.node*, %struct.node** %node.addr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load %struct.node*, %struct.node** %node.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %4, %struct.node** %node.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.node* null, %struct.node** %head, align 8
  call void @push(%struct.node** %head, i32 9)
  call void @push(%struct.node** %head, i32 8)
  call void @push(%struct.node** %head, i32 7)
  call void @push(%struct.node** %head, i32 6)
  call void @push(%struct.node** %head, i32 5)
  call void @push(%struct.node** %head, i32 4)
  call void @push(%struct.node** %head, i32 3)
  call void @push(%struct.node** %head, i32 2)
  call void @push(%struct.node** %head, i32 1)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %0 = load %struct.node*, %struct.node** %head, align 8
  call void @printList(%struct.node* %0)
  %1 = load %struct.node*, %struct.node** %head, align 8
  %call1 = call %struct.node* @reverse(%struct.node* %1, i32 3)
  store %struct.node* %call1, %struct.node** %head, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %2 = load %struct.node*, %struct.node** %head, align 8
  call void @printList(%struct.node* %2)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
