; ModuleID = 'code/255-20634linked_list1.c'
source_filename = "code/255-20634linked_list1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rootnode = alloca %struct.node*, align 8
  %nextnode = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %rootnode, align 8
  %1 = load %struct.node*, %struct.node** %rootnode, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  store %struct.node* null, %struct.node** %next, align 8
  %2 = load %struct.node*, %struct.node** %rootnode, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 666, i32* %data, align 8
  %3 = load %struct.node*, %struct.node** %rootnode, align 8
  store %struct.node* %3, %struct.node** %nextnode, align 8
  %4 = load %struct.node*, %struct.node** %nextnode, align 8
  %cmp = icmp ne %struct.node* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load %struct.node*, %struct.node** %nextnode, align 8
  %next1 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %next1, align 8
  %cmp2 = icmp ne %struct.node* %6, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.node*, %struct.node** %nextnode, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  %8 = load %struct.node*, %struct.node** %next3, align 8
  store %struct.node* %8, %struct.node** %nextnode, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %call4 = call noalias align 16 i8* @malloc(i64 16) #3
  %9 = bitcast i8* %call4 to %struct.node*
  %10 = load %struct.node*, %struct.node** %nextnode, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  store %struct.node* %9, %struct.node** %next5, align 8
  %11 = load %struct.node*, %struct.node** %nextnode, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  %12 = load %struct.node*, %struct.node** %next6, align 8
  store %struct.node* %12, %struct.node** %nextnode, align 8
  %13 = load %struct.node*, %struct.node** %nextnode, align 8
  %cmp7 = icmp eq %struct.node* %13, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %14 = load %struct.node*, %struct.node** %nextnode, align 8
  %next11 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  store %struct.node* null, %struct.node** %next11, align 8
  %15 = load %struct.node*, %struct.node** %nextnode, align 8
  %data12 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  store i32 42, i32* %data12, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then8
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

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
