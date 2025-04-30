; ModuleID = 'code/081-32975tree.c'
source_filename = "code/081-32975tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@COUNT = dso_local global i32 10, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-----\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @newNode(i32 %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %node = alloca %struct.node*, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %node, align 8
  %1 = load i32, i32* %data.addr, align 4
  %2 = load %struct.node*, %struct.node** %node, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %data1, align 8
  %3 = load %struct.node*, %struct.node** %node, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* null, %struct.node** %left, align 8
  %4 = load %struct.node*, %struct.node** %node, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  store %struct.node* null, %struct.node** %right, align 8
  %5 = load %struct.node*, %struct.node** %node, align 8
  ret %struct.node* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_tree(%struct.node* %root) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %root.addr, align 8
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %left, align 8
  call void @print_tree(%struct.node* %2)
  %3 = load %struct.node*, %struct.node** %root.addr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  %5 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %6 = load %struct.node*, %struct.node** %right, align 8
  call void @print_tree(%struct.node* %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print2D(%struct.node* %root, i32 %space) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  %space.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.node* %root, %struct.node** %root.addr, align 8
  store i32 %space, i32* %space.addr, align 4
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @COUNT, align 4
  %2 = load i32, i32* %space.addr, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %space.addr, align 4
  %3 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  %4 = load %struct.node*, %struct.node** %right, align 8
  %5 = load i32, i32* %space.addr, align 4
  call void @print2D(%struct.node* %4, i32 %5)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @COUNT, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %space.addr, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load %struct.node*, %struct.node** %root.addr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %11 = load i32, i32* %data, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  %12 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  %13 = load %struct.node*, %struct.node** %left, align 8
  %14 = load i32, i32* %space.addr, align 4
  call void @print2D(%struct.node* %13, i32 %14)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @rotate_right(%struct.node* %root) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  %pivot = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %root.addr, align 8
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 1
  %1 = load %struct.node*, %struct.node** %left, align 8
  store %struct.node* %1, %struct.node** %pivot, align 8
  %2 = load %struct.node*, %struct.node** %pivot, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 2
  %3 = load %struct.node*, %struct.node** %right, align 8
  %4 = load %struct.node*, %struct.node** %root.addr, align 8
  %left1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  store %struct.node* %3, %struct.node** %left1, align 8
  %5 = load %struct.node*, %struct.node** %root.addr, align 8
  %6 = load %struct.node*, %struct.node** %pivot, align 8
  %right2 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  store %struct.node* %5, %struct.node** %right2, align 8
  %7 = load %struct.node*, %struct.node** %pivot, align 8
  ret %struct.node* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @rotate_left(%struct.node* %root) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %root.addr = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %root.addr, align 8
  %0 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %root = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct.node* @newNode(i32 5)
  store %struct.node* %call, %struct.node** %root, align 8
  %call1 = call %struct.node* @newNode(i32 3)
  %0 = load %struct.node*, %struct.node** %root, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 1
  store %struct.node* %call1, %struct.node** %left, align 8
  %call2 = call %struct.node* @newNode(i32 7)
  %1 = load %struct.node*, %struct.node** %root, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 2
  store %struct.node* %call2, %struct.node** %right, align 8
  %call3 = call %struct.node* @newNode(i32 2)
  %2 = load %struct.node*, %struct.node** %root, align 8
  %left4 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load %struct.node*, %struct.node** %left4, align 8
  %left5 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* %call3, %struct.node** %left5, align 8
  %call6 = call %struct.node* @newNode(i32 4)
  %4 = load %struct.node*, %struct.node** %root, align 8
  %left7 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %left7, align 8
  %right8 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  store %struct.node* %call6, %struct.node** %right8, align 8
  %6 = load %struct.node*, %struct.node** %root, align 8
  call void @print2D(%struct.node* %6, i32 0)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %7 = load %struct.node*, %struct.node** %root, align 8
  %call10 = call %struct.node* @rotate_right(%struct.node* %7)
  store %struct.node* %call10, %struct.node** %root, align 8
  %8 = load %struct.node*, %struct.node** %root, align 8
  call void @print2D(%struct.node* %8, i32 0)
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
