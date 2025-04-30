; ModuleID = 'code/299-19015Length_of_Linked_List.c'
source_filename = "code/299-19015Length_of_Linked_List.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i8, %struct.Node* }

@.str = private unnamed_addr constant [38 x i8] c"Currently Length of Linkedlist is: %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\0A Currently Length of Linkedlist is: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pushing_data_to_LL(%struct.Node** %headPointer, i8 signext %newData) #0 {
entry:
  %headPointer.addr = alloca %struct.Node**, align 8
  %newData.addr = alloca i8, align 1
  %newNode = alloca %struct.Node*, align 8
  store %struct.Node** %headPointer, %struct.Node*** %headPointer.addr, align 8
  store i8 %newData, i8* %newData.addr, align 1
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.Node*
  store %struct.Node* %0, %struct.Node** %newNode, align 8
  %1 = load i8, i8* %newData.addr, align 1
  %2 = load %struct.Node*, %struct.Node** %newNode, align 8
  %data = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 0
  store i8 %1, i8* %data, align 8
  %3 = load %struct.Node**, %struct.Node*** %headPointer.addr, align 8
  %4 = load %struct.Node*, %struct.Node** %3, align 8
  %5 = load %struct.Node*, %struct.Node** %newNode, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  store %struct.Node* %4, %struct.Node** %next, align 8
  %6 = load %struct.Node*, %struct.Node** %newNode, align 8
  %7 = load %struct.Node**, %struct.Node*** %headPointer.addr, align 8
  store %struct.Node* %6, %struct.Node** %7, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettingLength(%struct.Node* %head) #0 {
entry:
  %head.addr = alloca %struct.Node*, align 8
  %count = alloca i32, align 4
  %current = alloca %struct.Node*, align 8
  store %struct.Node* %head, %struct.Node** %head.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.Node*, %struct.Node** %head.addr, align 8
  store %struct.Node* %0, %struct.Node** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.Node*, %struct.Node** %current, align 8
  %cmp = icmp ne %struct.Node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %count, align 4
  %3 = load %struct.Node*, %struct.Node** %current, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 1
  %4 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %4, %struct.Node** %current, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %count, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca %struct.Node*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.Node* null, %struct.Node** %head, align 8
  %0 = load %struct.Node*, %struct.Node** %head, align 8
  %call = call i32 @gettingLength(%struct.Node* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %call)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 71)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 83)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 83)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 79)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 67)
  %1 = load %struct.Node*, %struct.Node** %head, align 8
  %call2 = call i32 @gettingLength(%struct.Node* %1)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %call2)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 45)
  %2 = load %struct.Node*, %struct.Node** %head, align 8
  %call4 = call i32 @gettingLength(%struct.Node* %2)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %call4)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 50)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 48)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 50)
  call void @pushing_data_to_LL(%struct.Node** %head, i8 signext 48)
  %3 = load %struct.Node*, %struct.Node** %head, align 8
  %call6 = call i32 @gettingLength(%struct.Node* %3)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %call6)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

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
