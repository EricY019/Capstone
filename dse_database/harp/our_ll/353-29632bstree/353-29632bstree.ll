; ModuleID = 'code/353-29632bstree.c'
source_filename = "code/353-29632bstree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, i32, %struct.node*, %struct.node* }

@.str = private unnamed_addr constant [17 x i8] c"%d at depth %d, \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Trees height: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @createNode(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %new = alloca %struct.node*, align 8
  store i32 %val, i32* %val.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %new, align 8
  %1 = load i32, i32* %val.addr, align 4
  %2 = load %struct.node*, %struct.node** %new, align 8
  %payload = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  store i32 %1, i32* %payload, align 4
  %3 = load %struct.node*, %struct.node** %new, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  store %struct.node* null, %struct.node** %left, align 8
  %4 = load %struct.node*, %struct.node** %new, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 3
  store %struct.node* null, %struct.node** %right, align 8
  %5 = load %struct.node*, %struct.node** %new, align 8
  ret %struct.node* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @insert(%struct.node* %root, i32 %val) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %root.addr = alloca %struct.node*, align 8
  %val.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  %newNode = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %root.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %val.addr, align 4
  %call = call %struct.node* @createNode(i32 %1)
  store %struct.node* %call, %struct.node** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.node*, %struct.node** %root.addr, align 8
  %payload = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load i32, i32* %payload, align 4
  store i32 %3, i32* %pivot, align 4
  %4 = load i32, i32* %val.addr, align 4
  %5 = load i32, i32* %pivot, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load %struct.node*, %struct.node** %root.addr, align 8
  store %struct.node* %6, %struct.node** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  store %struct.node* null, %struct.node** %newNode, align 8
  %7 = load i32, i32* %val.addr, align 4
  %8 = load i32, i32* %pivot, align 4
  %cmp4 = icmp sle i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else13

if.then5:                                         ; preds = %if.end3
  %9 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 2
  %10 = load %struct.node*, %struct.node** %left, align 8
  %cmp6 = icmp eq %struct.node* %10, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %11 = load i32, i32* %val.addr, align 4
  %call8 = call %struct.node* @createNode(i32 %11)
  store %struct.node* %call8, %struct.node** %newNode, align 8
  %12 = load %struct.node*, %struct.node** %newNode, align 8
  %13 = load %struct.node*, %struct.node** %root.addr, align 8
  %left9 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  store %struct.node* %12, %struct.node** %left9, align 8
  br label %if.end12

if.else:                                          ; preds = %if.then5
  %14 = load %struct.node*, %struct.node** %root.addr, align 8
  %left10 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 2
  %15 = load %struct.node*, %struct.node** %left10, align 8
  %16 = load i32, i32* %val.addr, align 4
  %call11 = call %struct.node* @insert(%struct.node* %15, i32 %16)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  br label %if.end22

if.else13:                                        ; preds = %if.end3
  %17 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %right, align 8
  %cmp14 = icmp eq %struct.node* %18, null
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else13
  %19 = load i32, i32* %val.addr, align 4
  %call16 = call %struct.node* @createNode(i32 %19)
  store %struct.node* %call16, %struct.node** %newNode, align 8
  %20 = load %struct.node*, %struct.node** %newNode, align 8
  %21 = load %struct.node*, %struct.node** %root.addr, align 8
  %right17 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 3
  store %struct.node* %20, %struct.node** %right17, align 8
  br label %if.end21

if.else18:                                        ; preds = %if.else13
  %22 = load %struct.node*, %struct.node** %root.addr, align 8
  %right19 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 3
  %23 = load %struct.node*, %struct.node** %right19, align 8
  %24 = load i32, i32* %val.addr, align 4
  %call20 = call %struct.node* @insert(%struct.node* %23, i32 %24)
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end12
  %25 = load %struct.node*, %struct.node** %newNode, align 8
  store %struct.node* %25, %struct.node** %retval, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.then2, %if.then
  %26 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printTreeGo(%struct.node* %root) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %root.addr, align 8
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end8

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 2
  %2 = load %struct.node*, %struct.node** %left, align 8
  %cmp1 = icmp ne %struct.node* %2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load %struct.node*, %struct.node** %root.addr, align 8
  %left3 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  %4 = load %struct.node*, %struct.node** %left3, align 8
  call void @printTreeGo(%struct.node* %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.node*, %struct.node** %root.addr, align 8
  %payload = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load i32, i32* %payload, align 4
  %7 = load %struct.node*, %struct.node** %root.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  %8 = load i32, i32* %depth, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8)
  %9 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 3
  %10 = load %struct.node*, %struct.node** %right, align 8
  %cmp5 = icmp ne %struct.node* %10, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %11 = load %struct.node*, %struct.node** %root.addr, align 8
  %right7 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 3
  %12 = load %struct.node*, %struct.node** %right7, align 8
  call void @printTreeGo(%struct.node* %12)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then6, %if.end4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printTree(%struct.node* %root) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %root.addr, align 8
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  call void @printTreeGo(%struct.node* %0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeTree(%struct.node* %root) #0 {
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
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 2
  %2 = load %struct.node*, %struct.node** %left, align 8
  call void @freeTree(%struct.node* %2)
  %3 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  %4 = load %struct.node*, %struct.node** %right, align 8
  call void @freeTree(%struct.node* %4)
  %5 = load %struct.node*, %struct.node** %root.addr, align 8
  %6 = bitcast %struct.node* %5 to i8*
  call void @free(i8* %6) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @height(%struct.node* %root) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.node*, align 8
  %leftH = alloca i32, align 4
  %rightH = alloca i32, align 4
  store %struct.node* %root, %struct.node** %root.addr, align 8
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 2
  %2 = load %struct.node*, %struct.node** %left, align 8
  %call = call i32 @height(%struct.node* %2)
  store i32 %call, i32* %leftH, align 4
  %3 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  %4 = load %struct.node*, %struct.node** %right, align 8
  %call1 = call i32 @height(%struct.node* %4)
  store i32 %call1, i32* %rightH, align 4
  %5 = load i32, i32* %leftH, align 4
  %6 = load i32, i32* %rightH, align 4
  %cmp2 = icmp sgt i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %leftH, align 4
  %add = add nsw i32 1, %7
  store i32 %add, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %rightH, align 4
  %add4 = add nsw i32 1, %8
  store i32 %add4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @createExampleTree() #0 {
entry:
  %root = alloca %struct.node*, align 8
  %call = call %struct.node* @insert(%struct.node* null, i32 5)
  store %struct.node* %call, %struct.node** %root, align 8
  %0 = load %struct.node*, %struct.node** %root, align 8
  %call1 = call %struct.node* @insert(%struct.node* %0, i32 10)
  %1 = load %struct.node*, %struct.node** %root, align 8
  %call2 = call %struct.node* @insert(%struct.node* %1, i32 2)
  %2 = load %struct.node*, %struct.node** %root, align 8
  %call3 = call %struct.node* @insert(%struct.node* %2, i32 7)
  %3 = load %struct.node*, %struct.node** %root, align 8
  %call4 = call %struct.node* @insert(%struct.node* %3, i32 13)
  %4 = load %struct.node*, %struct.node** %root, align 8
  %call5 = call %struct.node* @insert(%struct.node* %4, i32 8)
  %5 = load %struct.node*, %struct.node** %root, align 8
  ret %struct.node* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calcDepthsGo(%struct.node* %root, i32 %depth) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  %depth.addr = alloca i32, align 4
  store %struct.node* %root, %struct.node** %root.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end9

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %depth.addr, align 4
  %2 = load %struct.node*, %struct.node** %root.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %depth1, align 8
  %3 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  %4 = load %struct.node*, %struct.node** %left, align 8
  %tobool = icmp ne %struct.node* %4, null
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load %struct.node*, %struct.node** %root.addr, align 8
  %left3 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %6 = load %struct.node*, %struct.node** %left3, align 8
  %7 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %7, 1
  call void @calcDepthsGo(%struct.node* %6, i32 %add)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %8 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 3
  %9 = load %struct.node*, %struct.node** %right, align 8
  %tobool5 = icmp ne %struct.node* %9, null
  br i1 %tobool5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  %10 = load %struct.node*, %struct.node** %root.addr, align 8
  %right7 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 3
  %11 = load %struct.node*, %struct.node** %right7, align 8
  %12 = load i32, i32* %depth.addr, align 4
  %add8 = add nsw i32 %12, 1
  call void @calcDepthsGo(%struct.node* %11, i32 %add8)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then6, %if.end4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calcDepths(%struct.node* %root) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %root.addr, align 8
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  call void @calcDepthsGo(%struct.node* %0, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %root = alloca %struct.node*, align 8
  %call = call %struct.node* @createExampleTree()
  store %struct.node* %call, %struct.node** %root, align 8
  %0 = load %struct.node*, %struct.node** %root, align 8
  %call1 = call i32 @height(%struct.node* %0)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %call1)
  %1 = load %struct.node*, %struct.node** %root, align 8
  call void @calcDepths(%struct.node* %1)
  %2 = load %struct.node*, %struct.node** %root, align 8
  call void @printTree(%struct.node* %2)
  %3 = load %struct.node*, %struct.node** %root, align 8
  call void @freeTree(%struct.node* %3)
  store %struct.node* null, %struct.node** %root, align 8
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
