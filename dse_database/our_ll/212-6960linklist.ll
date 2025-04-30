; ModuleID = 'code/212-6960linklist.c'
source_filename = "code/212-6960linklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @create(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %p = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  %list = alloca %struct.node*, align 8
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store %struct.node* null, %struct.node** %list, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %2 = bitcast i8* %call to %struct.node*
  store %struct.node* %2, %struct.node** %p, align 8
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.node*, %struct.node** %p, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  store i32 %3, i32* %data, align 8
  %5 = load %struct.node*, %struct.node** %p, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  store %struct.node* null, %struct.node** %link, align 8
  %6 = load %struct.node*, %struct.node** %list, align 8
  %cmp1 = icmp eq %struct.node* null, %6
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %7, %struct.node** %list, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load %struct.node*, %struct.node** %p, align 8
  %9 = load %struct.node*, %struct.node** %r, align 8
  %link2 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  store %struct.node* %8, %struct.node** %link2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %10, %struct.node** %r, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %12 = load %struct.node*, %struct.node** %list, align 8
  ret %struct.node* %12
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_list(%struct.node* %L) #0 {
entry:
  %L.addr = alloca %struct.node*, align 8
  store %struct.node* %L, %struct.node** %L.addr, align 8
  %0 = load %struct.node*, %struct.node** %L.addr, align 8
  %tobool = icmp ne %struct.node* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.node*, %struct.node** %L.addr, align 8
  %cmp = icmp ne %struct.node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %L.addr, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  %4 = load %struct.node*, %struct.node** %L.addr, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %link, align 8
  store %struct.node* %5, %struct.node** %L.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @swap_node(%struct.node* %L) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %L.addr = alloca %struct.node*, align 8
  %h = alloca %struct.node*, align 8
  %p = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  %temp = alloca %struct.node*, align 8
  %prior = alloca %struct.node*, align 8
  store %struct.node* %L, %struct.node** %L.addr, align 8
  %0 = load %struct.node*, %struct.node** %L.addr, align 8
  store %struct.node* %0, %struct.node** %h, align 8
  %1 = load %struct.node*, %struct.node** %L.addr, align 8
  %tobool = icmp ne %struct.node* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.node* null, %struct.node** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.node*, %struct.node** %L.addr, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load %struct.node*, %struct.node** %link, align 8
  store %struct.node* %3, %struct.node** %p, align 8
  %4 = load %struct.node*, %struct.node** %p, align 8
  %link1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %link1, align 8
  store %struct.node* %5, %struct.node** %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %6 = load %struct.node*, %struct.node** %p, align 8
  %tobool2 = icmp ne %struct.node* %6, null
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.node*, %struct.node** %r, align 8
  %tobool3 = icmp ne %struct.node* %7, null
  %lnot = xor i1 %tobool3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.node*, %struct.node** %r, align 8
  %link4 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %link4, align 8
  store %struct.node* %10, %struct.node** %temp, align 8
  %11 = load %struct.node*, %struct.node** %p, align 8
  %12 = load %struct.node*, %struct.node** %h, align 8
  %cmp = icmp eq %struct.node* %11, %12
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %13 = load %struct.node*, %struct.node** %p, align 8
  %14 = load %struct.node*, %struct.node** %r, align 8
  %link6 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  store %struct.node* %13, %struct.node** %link6, align 8
  %15 = load %struct.node*, %struct.node** %r, align 8
  store %struct.node* %15, %struct.node** %h, align 8
  br label %if.end10

if.else:                                          ; preds = %while.body
  %16 = load %struct.node*, %struct.node** %r, align 8
  %17 = load %struct.node*, %struct.node** %prior, align 8
  %link7 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 1
  store %struct.node* %16, %struct.node** %link7, align 8
  %18 = load %struct.node*, %struct.node** %temp, align 8
  %19 = load %struct.node*, %struct.node** %p, align 8
  %link8 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 1
  store %struct.node* %18, %struct.node** %link8, align 8
  %20 = load %struct.node*, %struct.node** %p, align 8
  %21 = load %struct.node*, %struct.node** %r, align 8
  %link9 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 1
  store %struct.node* %20, %struct.node** %link9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %22 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %22, %struct.node** %prior, align 8
  %23 = load %struct.node*, %struct.node** %temp, align 8
  %24 = load %struct.node*, %struct.node** %p, align 8
  %link11 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  store %struct.node* %23, %struct.node** %link11, align 8
  %25 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %25, %struct.node** %p, align 8
  %26 = load %struct.node*, %struct.node** %temp, align 8
  %link12 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 1
  %27 = load %struct.node*, %struct.node** %link12, align 8
  store %struct.node* %27, %struct.node** %r, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %28 = load %struct.node*, %struct.node** %h, align 8
  store %struct.node* %28, %struct.node** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %29 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @LinkListReverse(%struct.node* %L) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %L.addr = alloca %struct.node*, align 8
  %pcur = alloca %struct.node*, align 8
  %ptemp = alloca %struct.node*, align 8
  store %struct.node* %L, %struct.node** %L.addr, align 8
  %0 = load %struct.node*, %struct.node** %L.addr, align 8
  %tobool = icmp ne %struct.node* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.node* inttoptr (i64 -1 to %struct.node*), %struct.node** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %L.addr, align 8
  %link = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %link, align 8
  store %struct.node* %2, %struct.node** %pcur, align 8
  %3 = load %struct.node*, %struct.node** %L.addr, align 8
  %link1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* null, %struct.node** %link1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.node*, %struct.node** %pcur, align 8
  %cmp = icmp ne %struct.node* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.node*, %struct.node** %pcur, align 8
  %link2 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %link2, align 8
  store %struct.node* %6, %struct.node** %ptemp, align 8
  %7 = load %struct.node*, %struct.node** %L.addr, align 8
  %8 = load %struct.node*, %struct.node** %pcur, align 8
  %link3 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* %7, %struct.node** %link3, align 8
  %9 = load %struct.node*, %struct.node** %pcur, align 8
  store %struct.node* %9, %struct.node** %L.addr, align 8
  %10 = load %struct.node*, %struct.node** %ptemp, align 8
  store %struct.node* %10, %struct.node** %pcur, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %11 = load %struct.node*, %struct.node** %L.addr, align 8
  store %struct.node* %11, %struct.node** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %L = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct.node* @create(i32 4)
  store %struct.node* %call, %struct.node** %L, align 8
  %0 = load %struct.node*, %struct.node** %L, align 8
  call void @print_list(%struct.node* %0)
  %1 = load %struct.node*, %struct.node** %L, align 8
  %call1 = call %struct.node* @swap_node(%struct.node* %1)
  store %struct.node* %call1, %struct.node** %L, align 8
  %2 = load %struct.node*, %struct.node** %L, align 8
  call void @print_list(%struct.node* %2)
  %3 = load %struct.node*, %struct.node** %L, align 8
  %call2 = call %struct.node* @LinkListReverse(%struct.node* %3)
  store %struct.node* %call2, %struct.node** %L, align 8
  %4 = load %struct.node*, %struct.node** %L, align 8
  call void @print_list(%struct.node* %4)
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
