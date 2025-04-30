; ModuleID = 'code/224-6279list.c'
source_filename = "code/224-6279list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [20 x i8] c"\0Aprinting the list\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"The val of node we just popped is : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0Astarting remove_by_value\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"the first node matched by val, so we popped it with val=%d/n\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"current val is :%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"val not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"we found the value which in our list is : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @make_node(i32 %val, %struct.node* %next) #0 {
entry:
  %val.addr = alloca i32, align 4
  %next.addr = alloca %struct.node*, align 8
  %node = alloca %struct.node*, align 8
  store i32 %val, i32* %val.addr, align 4
  store %struct.node* %next, %struct.node** %next.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %node, align 8
  %1 = load i32, i32* %val.addr, align 4
  %2 = load %struct.node*, %struct.node** %node, align 8
  %val1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %val1, align 8
  %3 = load %struct.node*, %struct.node** %next.addr, align 8
  %4 = load %struct.node*, %struct.node** %node, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  store %struct.node* %3, %struct.node** %next2, align 8
  %5 = load %struct.node*, %struct.node** %node, align 8
  ret %struct.node* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_list(%struct.node* %head) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  %current = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  store %struct.node* %0, %struct.node** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.node*, %struct.node** %current, align 8
  %cmp = icmp ne %struct.node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %current, align 8
  %val = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %val, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %4 = load %struct.node*, %struct.node** %current, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %5, %struct.node** %current, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop(%struct.node** %head) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.node**, align 8
  %retval1 = alloca i32, align 4
  %next_node = alloca %struct.node*, align 8
  %first = alloca %struct.node**, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  %0 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node** %0, %struct.node*** %first, align 8
  %1 = load %struct.node**, %struct.node*** %first, align 8
  %cmp = icmp eq %struct.node** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.node**, %struct.node*** %first, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %4, %struct.node** %next_node, align 8
  %5 = load %struct.node**, %struct.node*** %first, align 8
  %6 = load %struct.node*, %struct.node** %5, align 8
  %val = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %7 = load i32, i32* %val, align 8
  store i32 %7, i32* %retval1, align 4
  %8 = load %struct.node**, %struct.node*** %first, align 8
  %9 = load %struct.node*, %struct.node** %8, align 8
  %10 = bitcast %struct.node* %9 to i8*
  call void @free(i8* %10) #3
  %11 = load %struct.node*, %struct.node** %next_node, align 8
  %12 = load %struct.node**, %struct.node*** %first, align 8
  store %struct.node* %11, %struct.node** %12, align 8
  %13 = load i32, i32* %retval1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %14 = load i32, i32* %retval1, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push(%struct.node** %head, i32 %val) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %val.addr = alloca i32, align 4
  %new_first = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  %call = call %struct.node* @make_node(i32 %0, %struct.node* null)
  store %struct.node* %call, %struct.node** %new_first, align 8
  %1 = load %struct.node**, %struct.node*** %head.addr, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = load %struct.node*, %struct.node** %new_first, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* %2, %struct.node** %next, align 8
  %4 = load %struct.node*, %struct.node** %new_first, align 8
  %5 = load %struct.node**, %struct.node*** %head.addr, align 8
  store %struct.node* %4, %struct.node** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_by_value(%struct.node** %head, i32 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.node**, align 8
  %val.addr = alloca i32, align 4
  %current = alloca %struct.node*, align 8
  %val_popped = alloca i32, align 4
  %pointer_to_remove = alloca %struct.node*, align 8
  %point_to_next = alloca %struct.node*, align 8
  %current19 = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %0 = load %struct.node**, %struct.node*** %head.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %current, align 8
  %2 = load %struct.node*, %struct.node** %current, align 8
  %val1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %val1, align 8
  %4 = load i32, i32* %val.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.node**, %struct.node*** %head.addr, align 8
  %call2 = call i32 @pop(%struct.node** %5)
  store i32 %call2, i32* %val_popped, align 4
  %6 = load i32, i32* %val_popped, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %6)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %7 = load i32, i32* %val.addr, align 4
  %8 = load %struct.node*, %struct.node** %current, align 8
  %val4 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %9 = load i32, i32* %val4, align 8
  %cmp5 = icmp ne i32 %7, %9
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.node*, %struct.node** %current, align 8
  %val6 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %11 = load i32, i32* %val6, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  %12 = load %struct.node*, %struct.node** %current, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  %13 = load %struct.node*, %struct.node** %next, align 8
  %cmp8 = icmp eq %struct.node* %13, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %while.body
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %14 = load %struct.node*, %struct.node** %current, align 8
  %next12 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  %15 = load %struct.node*, %struct.node** %next12, align 8
  store %struct.node* %15, %struct.node** %current, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %val.addr, align 4
  %17 = load %struct.node*, %struct.node** %current, align 8
  %val13 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %18 = load i32, i32* %val13, align 8
  %cmp14 = icmp eq i32 %16, %18
  br i1 %cmp14, label %if.then15, label %if.end31

if.then15:                                        ; preds = %while.end
  %19 = load %struct.node*, %struct.node** %current, align 8
  %val16 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %20 = load i32, i32* %val16, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %20)
  %21 = load %struct.node*, %struct.node** %current, align 8
  store %struct.node* %21, %struct.node** %pointer_to_remove, align 8
  %22 = load %struct.node*, %struct.node** %current, align 8
  %next18 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 1
  %23 = load %struct.node*, %struct.node** %next18, align 8
  store %struct.node* %23, %struct.node** %point_to_next, align 8
  %24 = load %struct.node**, %struct.node*** %head.addr, align 8
  %25 = load %struct.node*, %struct.node** %24, align 8
  store %struct.node* %25, %struct.node** %current19, align 8
  br label %while.cond20

while.cond20:                                     ; preds = %while.body23, %if.then15
  %26 = load %struct.node*, %struct.node** %pointer_to_remove, align 8
  %27 = load %struct.node*, %struct.node** %current19, align 8
  %next21 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %28 = load %struct.node*, %struct.node** %next21, align 8
  %cmp22 = icmp ne %struct.node* %26, %28
  br i1 %cmp22, label %while.body23, label %while.end25

while.body23:                                     ; preds = %while.cond20
  %29 = load %struct.node*, %struct.node** %current19, align 8
  %next24 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 1
  %30 = load %struct.node*, %struct.node** %next24, align 8
  store %struct.node* %30, %struct.node** %current19, align 8
  br label %while.cond20, !llvm.loop !7

while.end25:                                      ; preds = %while.cond20
  %31 = load %struct.node*, %struct.node** %current19, align 8
  %next26 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load %struct.node*, %struct.node** %next26, align 8
  %33 = load %struct.node*, %struct.node** %pointer_to_remove, align 8
  %cmp27 = icmp eq %struct.node* %32, %33
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %while.end25
  %34 = load %struct.node*, %struct.node** %point_to_next, align 8
  %35 = load %struct.node*, %struct.node** %current19, align 8
  %next29 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 1
  store %struct.node* %34, %struct.node** %next29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %while.end25
  store i32 0, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.end30, %if.then9, %if.then
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(%struct.node** %head) #0 {
entry:
  %head.addr = alloca %struct.node**, align 8
  %node = alloca %struct.node*, align 8
  %next = alloca %struct.node*, align 8
  %temp = alloca %struct.node*, align 8
  store %struct.node** %head, %struct.node*** %head.addr, align 8
  %0 = load %struct.node**, %struct.node*** %head.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %node, align 8
  %2 = load %struct.node*, %struct.node** %node, align 8
  %cmp = icmp eq %struct.node* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.node*, %struct.node** %node, align 8
  %next1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next1, align 8
  %cmp2 = icmp eq %struct.node* %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.node*, %struct.node** %node, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %next3, align 8
  store %struct.node* %6, %struct.node** %next, align 8
  %7 = load %struct.node*, %struct.node** %node, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  store %struct.node* null, %struct.node** %next4, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load %struct.node*, %struct.node** %next, align 8
  %cmp5 = icmp ne %struct.node* %8, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.node*, %struct.node** %next, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %next6, align 8
  store %struct.node* %10, %struct.node** %temp, align 8
  %11 = load %struct.node*, %struct.node** %node, align 8
  %12 = load %struct.node*, %struct.node** %next, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  store %struct.node* %11, %struct.node** %next7, align 8
  %13 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %13, %struct.node** %node, align 8
  %14 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %14, %struct.node** %next, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %test_list = alloca %struct.node*, align 8
  %retval9 = alloca i32, align 4
  %call = call %struct.node* @make_node(i32 1, %struct.node* null)
  store %struct.node* %call, %struct.node** %test_list, align 8
  %call1 = call %struct.node* @make_node(i32 2, %struct.node* null)
  %0 = load %struct.node*, %struct.node** %test_list, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 1
  store %struct.node* %call1, %struct.node** %next, align 8
  %call2 = call %struct.node* @make_node(i32 3, %struct.node* null)
  %1 = load %struct.node*, %struct.node** %test_list, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %next3, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  store %struct.node* %call2, %struct.node** %next4, align 8
  %call5 = call %struct.node* @make_node(i32 4, %struct.node* null)
  %3 = load %struct.node*, %struct.node** %test_list, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next6, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %next7, align 8
  %next8 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  store %struct.node* %call5, %struct.node** %next8, align 8
  %call10 = call i32 @pop(%struct.node** %test_list)
  store i32 %call10, i32* %retval9, align 4
  %6 = load i32, i32* %retval9, align 4
  %add = add nsw i32 %6, 10
  call void @push(%struct.node** %test_list, i32 %add)
  %call11 = call i32 @remove_by_value(%struct.node** %test_list, i32 3)
  %call12 = call i32 @remove_by_value(%struct.node** %test_list, i32 7)
  %7 = load %struct.node*, %struct.node** %test_list, align 8
  call void @print_list(%struct.node* %7)
  call void @reverse(%struct.node** %test_list)
  %8 = load %struct.node*, %struct.node** %test_list, align 8
  call void @print_list(%struct.node* %8)
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
