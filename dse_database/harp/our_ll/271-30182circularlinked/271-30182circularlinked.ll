; ModuleID = 'code/271-30182circularlinked.c'
source_filename = "code/271-30182circularlinked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@i = dso_local global i32 0, align 4
@top = dso_local global %struct.node* null, align 8
@node = dso_local global %struct.node* null, align 8
@head = dso_local global %struct.node* null, align 8
@ptr = dso_local global %struct.node* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"this node contains: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"End of list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init() #0 {
entry:
  store %struct.node* null, %struct.node** @top, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** @node, align 8
  %1 = load i32, i32* %value.addr, align 4
  %2 = load %struct.node*, %struct.node** @node, align 8
  %value1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 %1, i32* %value1, align 8
  %3 = load %struct.node*, %struct.node** @node, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* null, %struct.node** %link, align 8
  %4 = load %struct.node*, %struct.node** @top, align 8
  %cmp = icmp eq %struct.node* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.node*, %struct.node** @node, align 8
  store %struct.node* %5, %struct.node** @top, align 8
  %6 = load %struct.node*, %struct.node** @top, align 8
  store %struct.node* %6, %struct.node** @head, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.node*, %struct.node** @node, align 8
  %8 = load %struct.node*, %struct.node** @top, align 8
  %link2 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* %7, %struct.node** %link2, align 8
  %9 = load %struct.node*, %struct.node** @head, align 8
  %10 = load %struct.node*, %struct.node** @node, align 8
  %link3 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  store %struct.node* %9, %struct.node** %link3, align 8
  %11 = load %struct.node*, %struct.node** @node, align 8
  store %struct.node* %11, %struct.node** @top, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display() #0 {
entry:
  %0 = load %struct.node*, %struct.node** @head, align 8
  store %struct.node* %0, %struct.node** @ptr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.node*, %struct.node** @ptr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i32, i32* %value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load %struct.node*, %struct.node** @ptr, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %link, align 8
  store %struct.node* %4, %struct.node** @ptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load %struct.node*, %struct.node** @ptr, align 8
  %6 = load %struct.node*, %struct.node** @head, align 8
  %cmp = icmp ne %struct.node* %5, %6
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @init()
  call void @insert(i32 1)
  call void @insert(i32 2)
  call void @insert(i32 3)
  call void @insert(i32 4)
  call void @insert(i32 5)
  call void @insert(i32 6)
  call void @display()
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
