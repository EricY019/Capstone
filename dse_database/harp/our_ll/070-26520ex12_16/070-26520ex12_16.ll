; ModuleID = 'code/070-26520ex12_16.c'
source_filename = "code/070-26520ex12_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treeNode = type { %struct.treeNode*, i32, %struct.treeNode* }

@.str = private unnamed_addr constant [43 x i8] c"The numbers being placed in the tree are:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0A\0AThe preOrder traversal is:\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\0A\0AThe inOrder traversal is:\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\0A\0AThe postOrder traversal is:\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%c not inserted. No memory available.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %item = alloca i32, align 4
  %rootPtr = alloca %struct.treeNode*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.treeNode* null, %struct.treeNode** %rootPtr, align 8
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand() #3
  %rem = srem i32 %call3, 15
  store i32 %rem, i32* %item, align 4
  %1 = load i32, i32* %item, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %1)
  %2 = load i32, i32* %item, align 4
  call void @insertNode(%struct.treeNode** %rootPtr, i32 %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %4 = load %struct.treeNode*, %struct.treeNode** %rootPtr, align 8
  call void @preOrder(%struct.treeNode* %4)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %5 = load %struct.treeNode*, %struct.treeNode** %rootPtr, align 8
  call void @inOrder(%struct.treeNode* %5)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %6 = load %struct.treeNode*, %struct.treeNode** %rootPtr, align 8
  call void @postOrder(%struct.treeNode* %6)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertNode(%struct.treeNode** %treePtr, i32 %value) #0 {
entry:
  %treePtr.addr = alloca %struct.treeNode**, align 8
  %value.addr = alloca i32, align 4
  store %struct.treeNode** %treePtr, %struct.treeNode*** %treePtr.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %1 = load %struct.treeNode*, %struct.treeNode** %0, align 8
  %cmp = icmp eq %struct.treeNode* %1, null
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %2 = bitcast i8* %call to %struct.treeNode*
  %3 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  store %struct.treeNode* %2, %struct.treeNode** %3, align 8
  %4 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %5 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %cmp1 = icmp ne %struct.treeNode* %5, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load i32, i32* %value.addr, align 4
  %7 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %8 = load %struct.treeNode*, %struct.treeNode** %7, align 8
  %data = getelementptr inbounds %struct.treeNode, %struct.treeNode* %8, i32 0, i32 1
  store i32 %6, i32* %data, align 8
  %9 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %10 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %leftPtr = getelementptr inbounds %struct.treeNode, %struct.treeNode* %10, i32 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %leftPtr, align 8
  %11 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %12 = load %struct.treeNode*, %struct.treeNode** %11, align 8
  %rightPtr = getelementptr inbounds %struct.treeNode, %struct.treeNode* %12, i32 0, i32 2
  store %struct.treeNode* null, %struct.treeNode** %rightPtr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load i32, i32* %value.addr, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end16

if.else4:                                         ; preds = %entry
  %14 = load i32, i32* %value.addr, align 4
  %15 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %16 = load %struct.treeNode*, %struct.treeNode** %15, align 8
  %data5 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %16, i32 0, i32 1
  %17 = load i32, i32* %data5, align 8
  %cmp6 = icmp sle i32 %14, %17
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else4
  %18 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %19 = load %struct.treeNode*, %struct.treeNode** %18, align 8
  %leftPtr8 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %19, i32 0, i32 0
  %20 = load i32, i32* %value.addr, align 4
  call void @insertNode(%struct.treeNode** %leftPtr8, i32 %20)
  br label %if.end15

if.else9:                                         ; preds = %if.else4
  %21 = load i32, i32* %value.addr, align 4
  %22 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %23 = load %struct.treeNode*, %struct.treeNode** %22, align 8
  %data10 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %23, i32 0, i32 1
  %24 = load i32, i32* %data10, align 8
  %cmp11 = icmp sgt i32 %21, %24
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else9
  %25 = load %struct.treeNode**, %struct.treeNode*** %treePtr.addr, align 8
  %26 = load %struct.treeNode*, %struct.treeNode** %25, align 8
  %rightPtr13 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %26, i32 0, i32 2
  %27 = load i32, i32* %value.addr, align 4
  call void @insertNode(%struct.treeNode** %rightPtr13, i32 %27)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preOrder(%struct.treeNode* %treePtr) #0 {
entry:
  %treePtr.addr = alloca %struct.treeNode*, align 8
  store %struct.treeNode* %treePtr, %struct.treeNode** %treePtr.addr, align 8
  %0 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %cmp = icmp ne %struct.treeNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %data = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i32 0, i32 1
  %2 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %3 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %leftPtr = getelementptr inbounds %struct.treeNode, %struct.treeNode* %3, i32 0, i32 0
  %4 = load %struct.treeNode*, %struct.treeNode** %leftPtr, align 8
  call void @preOrder(%struct.treeNode* %4)
  %5 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %rightPtr = getelementptr inbounds %struct.treeNode, %struct.treeNode* %5, i32 0, i32 2
  %6 = load %struct.treeNode*, %struct.treeNode** %rightPtr, align 8
  call void @preOrder(%struct.treeNode* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inOrder(%struct.treeNode* %treePtr) #0 {
entry:
  %treePtr.addr = alloca %struct.treeNode*, align 8
  store %struct.treeNode* %treePtr, %struct.treeNode** %treePtr.addr, align 8
  %0 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %cmp = icmp ne %struct.treeNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %leftPtr = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i32 0, i32 0
  %2 = load %struct.treeNode*, %struct.treeNode** %leftPtr, align 8
  call void @inOrder(%struct.treeNode* %2)
  %3 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %data = getelementptr inbounds %struct.treeNode, %struct.treeNode* %3, i32 0, i32 1
  %4 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %5 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %rightPtr = getelementptr inbounds %struct.treeNode, %struct.treeNode* %5, i32 0, i32 2
  %6 = load %struct.treeNode*, %struct.treeNode** %rightPtr, align 8
  call void @inOrder(%struct.treeNode* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @postOrder(%struct.treeNode* %treePtr) #0 {
entry:
  %treePtr.addr = alloca %struct.treeNode*, align 8
  store %struct.treeNode* %treePtr, %struct.treeNode** %treePtr.addr, align 8
  %0 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %cmp = icmp ne %struct.treeNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %leftPtr = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i32 0, i32 0
  %2 = load %struct.treeNode*, %struct.treeNode** %leftPtr, align 8
  call void @postOrder(%struct.treeNode* %2)
  %3 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %rightPtr = getelementptr inbounds %struct.treeNode, %struct.treeNode* %3, i32 0, i32 2
  %4 = load %struct.treeNode*, %struct.treeNode** %rightPtr, align 8
  call void @postOrder(%struct.treeNode* %4)
  %5 = load %struct.treeNode*, %struct.treeNode** %treePtr.addr, align 8
  %data = getelementptr inbounds %struct.treeNode, %struct.treeNode* %5, i32 0, i32 1
  %6 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

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
