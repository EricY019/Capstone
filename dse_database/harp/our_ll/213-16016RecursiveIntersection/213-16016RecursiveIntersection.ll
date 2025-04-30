; ModuleID = 'code/213-16016RecursiveIntersection.c'
source_filename = "code/213-16016RecursiveIntersection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@head3 = dso_local global %struct.node* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d  \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(%struct.node** %head_ref, i32 %new_data) #0 {
entry:
  %head_ref.addr = alloca %struct.node**, align 8
  %new_data.addr = alloca i32, align 4
  %new_node = alloca %struct.node*, align 8
  %last = alloca %struct.node*, align 8
  store %struct.node** %head_ref, %struct.node*** %head_ref.addr, align 8
  store i32 %new_data, i32* %new_data.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %new_node, align 8
  %1 = load %struct.node**, %struct.node*** %head_ref.addr, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  store %struct.node* %2, %struct.node** %last, align 8
  %3 = load i32, i32* %new_data.addr, align 4
  %4 = load %struct.node*, %struct.node** %new_node, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  store i32 %3, i32* %data, align 8
  %5 = load %struct.node*, %struct.node** %new_node, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  store %struct.node* null, %struct.node** %next, align 8
  %6 = load %struct.node**, %struct.node*** %head_ref.addr, align 8
  %7 = load %struct.node*, %struct.node** %6, align 8
  %cmp = icmp eq %struct.node* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.node*, %struct.node** %new_node, align 8
  %9 = load %struct.node**, %struct.node*** %head_ref.addr, align 8
  store %struct.node* %8, %struct.node** %9, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load %struct.node*, %struct.node** %last, align 8
  %next1 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %11 = load %struct.node*, %struct.node** %next1, align 8
  %cmp2 = icmp ne %struct.node* %11, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.node*, %struct.node** %last, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  %13 = load %struct.node*, %struct.node** %next3, align 8
  store %struct.node* %13, %struct.node** %last, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %14 = load %struct.node*, %struct.node** %new_node, align 8
  %15 = load %struct.node*, %struct.node** %last, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  store %struct.node* %14, %struct.node** %next4, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display(%struct.node* %node) #0 {
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
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @intersection(%struct.node* %head1, %struct.node* %head2) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %head1.addr = alloca %struct.node*, align 8
  %head2.addr = alloca %struct.node*, align 8
  %match = alloca i32, align 4
  store %struct.node* %head1, %struct.node** %head1.addr, align 8
  store %struct.node* %head2, %struct.node** %head2.addr, align 8
  %0 = load %struct.node*, %struct.node** %head1.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.node*, %struct.node** %head2.addr, align 8
  %cmp1 = icmp eq %struct.node* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.node* null, %struct.node** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.node*, %struct.node** %head1.addr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %data, align 8
  %4 = load %struct.node*, %struct.node** %head2.addr, align 8
  %data2 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  %5 = load i32, i32* %data2, align 8
  %cmp3 = icmp slt i32 %3, %5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load %struct.node*, %struct.node** %head1.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %next, align 8
  %8 = load %struct.node*, %struct.node** %head2.addr, align 8
  %call = call %struct.node* @intersection(%struct.node* %7, %struct.node* %8)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %9 = load %struct.node*, %struct.node** %head1.addr, align 8
  %data6 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  %10 = load i32, i32* %data6, align 8
  %11 = load %struct.node*, %struct.node** %head2.addr, align 8
  %data7 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %12 = load i32, i32* %data7, align 8
  %cmp8 = icmp sgt i32 %10, %12
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  %13 = load %struct.node*, %struct.node** %head1.addr, align 8
  %14 = load %struct.node*, %struct.node** %head2.addr, align 8
  %next10 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  %15 = load %struct.node*, %struct.node** %next10, align 8
  %call11 = call %struct.node* @intersection(%struct.node* %13, %struct.node* %15)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5
  %16 = load %struct.node*, %struct.node** %head1.addr, align 8
  %data13 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %17 = load i32, i32* %data13, align 8
  %18 = load %struct.node*, %struct.node** %head2.addr, align 8
  %data14 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  %19 = load i32, i32* %data14, align 8
  %cmp15 = icmp eq i32 %17, %19
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end12
  %20 = load %struct.node*, %struct.node** %head1.addr, align 8
  %data17 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %21 = load i32, i32* %data17, align 8
  store i32 %21, i32* %match, align 4
  %22 = load i32, i32* %match, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %23 = load i32, i32* %match, align 4
  call void @insert(%struct.node** @head3, i32 %23)
  %24 = load %struct.node*, %struct.node** %head1.addr, align 8
  %next19 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %25 = load %struct.node*, %struct.node** %next19, align 8
  %26 = load %struct.node*, %struct.node** %head2.addr, align 8
  %next20 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 1
  %27 = load %struct.node*, %struct.node** %next20, align 8
  %call21 = call %struct.node* @intersection(%struct.node* %25, %struct.node* %27)
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end12
  %28 = load %struct.node*, %struct.node** @head3, align 8
  store %struct.node* %28, %struct.node** %retval, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.then
  %29 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head1 = alloca %struct.node*, align 8
  %head2 = alloca %struct.node*, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store %struct.node* null, %struct.node** %head1, align 8
  store %struct.node* null, %struct.node** %head2, align 8
  call void @insert(%struct.node** %head1, i32 5)
  call void @insert(%struct.node** %head1, i32 10)
  call void @insert(%struct.node** %head1, i32 15)
  call void @insert(%struct.node** %head2, i32 6)
  call void @insert(%struct.node** %head2, i32 10)
  call void @insert(%struct.node** %head2, i32 15)
  call void @insert(%struct.node** %head2, i32 25)
  %0 = load %struct.node*, %struct.node** %head1, align 8
  %1 = load %struct.node*, %struct.node** %head2, align 8
  %call = call %struct.node* @intersection(%struct.node* %0, %struct.node* %1)
  store %struct.node* %call, %struct.node** @head3, align 8
  %2 = load %struct.node*, %struct.node** %head1, align 8
  call void @display(%struct.node* %2)
  %3 = load %struct.node*, %struct.node** %head2, align 8
  call void @display(%struct.node* %3)
  %4 = load %struct.node*, %struct.node** @head3, align 8
  call void @display(%struct.node* %4)
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
