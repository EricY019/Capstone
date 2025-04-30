; ModuleID = 'code/139-22327CommonNode.c'
source_filename = "code/139-22327CommonNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, i32, %struct.node* }

@.str = private unnamed_addr constant [19 x i8] c"Common node found\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Common node NOT found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkcommonnode(%struct.node* %h1, %struct.node* %h2) #0 {
entry:
  %h1.addr = alloca %struct.node*, align 8
  %h2.addr = alloca %struct.node*, align 8
  %flag = alloca i32, align 4
  store %struct.node* %h1, %struct.node** %h1.addr, align 8
  store %struct.node* %h2, %struct.node** %h2.addr, align 8
  store i32 0, i32* %flag, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.node*, %struct.node** %h1.addr, align 8
  %cmp = icmp ne %struct.node* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.node*, %struct.node** %h1.addr, align 8
  %status = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  store i32 1, i32* %status, align 4
  %2 = load %struct.node*, %struct.node** %h1.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 2
  %3 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %3, %struct.node** %h1.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.end
  %4 = load %struct.node*, %struct.node** %h2.addr, align 8
  %cmp2 = icmp ne %struct.node* %4, null
  br i1 %cmp2, label %while.body3, label %while.end8

while.body3:                                      ; preds = %while.cond1
  %5 = load %struct.node*, %struct.node** %h2.addr, align 8
  %status4 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load i32, i32* %status4, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body3
  store i32 1, i32* %flag, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.node*, %struct.node** %h2.addr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  %8 = load i32, i32* %data, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  br label %if.end12

if.end:                                           ; preds = %while.body3
  %9 = load %struct.node*, %struct.node** %h2.addr, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 2
  %10 = load %struct.node*, %struct.node** %next7, align 8
  store %struct.node* %10, %struct.node** %h2.addr, align 8
  br label %while.cond1, !llvm.loop !6

while.end8:                                       ; preds = %while.cond1
  %11 = load i32, i32* %flag, align 4
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.end8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then10, %while.end8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head1 = alloca %struct.node*, align 8
  %head2 = alloca %struct.node*, align 8
  %new_node1 = alloca %struct.node*, align 8
  %new_node2 = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %head1, align 8
  %1 = load %struct.node*, %struct.node** %head1, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  store i32 5, i32* %data, align 8
  %2 = load %struct.node*, %struct.node** %head1, align 8
  %status = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  store i32 0, i32* %status, align 4
  %call1 = call noalias align 16 i8* @malloc(i64 16) #3
  %3 = bitcast i8* %call1 to %struct.node*
  store %struct.node* %3, %struct.node** %head2, align 8
  %4 = load %struct.node*, %struct.node** %head2, align 8
  %data2 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  store i32 3, i32* %data2, align 8
  %5 = load %struct.node*, %struct.node** %head2, align 8
  %status3 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  store i32 0, i32* %status3, align 4
  %call4 = call noalias align 16 i8* @malloc(i64 16) #3
  %6 = bitcast i8* %call4 to %struct.node*
  store %struct.node* %6, %struct.node** %new_node1, align 8
  %7 = load %struct.node*, %struct.node** %new_node1, align 8
  %data5 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  store i32 10, i32* %data5, align 8
  %8 = load %struct.node*, %struct.node** %new_node1, align 8
  %status6 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store i32 0, i32* %status6, align 4
  %9 = load %struct.node*, %struct.node** %new_node1, align 8
  %10 = load %struct.node*, %struct.node** %head1, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 2
  store %struct.node* %9, %struct.node** %next, align 8
  %call7 = call noalias align 16 i8* @malloc(i64 16) #3
  %11 = bitcast i8* %call7 to %struct.node*
  store %struct.node* %11, %struct.node** %new_node2, align 8
  %12 = load %struct.node*, %struct.node** %new_node2, align 8
  %data8 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  store i32 15, i32* %data8, align 8
  %13 = load %struct.node*, %struct.node** %new_node2, align 8
  %status9 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  store i32 0, i32* %status9, align 4
  %14 = load %struct.node*, %struct.node** %new_node2, align 8
  %next10 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 2
  store %struct.node* null, %struct.node** %next10, align 8
  %15 = load %struct.node*, %struct.node** %new_node2, align 8
  %16 = load %struct.node*, %struct.node** %head1, align 8
  %next11 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  %17 = load %struct.node*, %struct.node** %next11, align 8
  %next12 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  store %struct.node* %15, %struct.node** %next12, align 8
  %18 = load %struct.node*, %struct.node** %new_node2, align 8
  %19 = load %struct.node*, %struct.node** %head2, align 8
  %next13 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 2
  store %struct.node* %18, %struct.node** %next13, align 8
  %20 = load %struct.node*, %struct.node** %head1, align 8
  %21 = load %struct.node*, %struct.node** %head2, align 8
  call void @checkcommonnode(%struct.node* %20, %struct.node* %21)
  %22 = load %struct.node*, %struct.node** %head2, align 8
  %next14 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 2
  store %struct.node* null, %struct.node** %next14, align 8
  %23 = load %struct.node*, %struct.node** %head1, align 8
  %24 = load %struct.node*, %struct.node** %head2, align 8
  call void @checkcommonnode(%struct.node* %23, %struct.node* %24)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
