; ModuleID = 'code/217-17421PreorderTraversal.c'
source_filename = "code/217-17421PreorderTraversal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, %struct.tree*, %struct.tree* }

@.str = private unnamed_addr constant [7 x i8] c"[%2d]\0A\00", align 1
@__const.main.data = private unnamed_addr constant [9 x i32] [i32 5, i32 6, i32 4, i32 8, i32 2, i32 3, i32 7, i32 1, i32 9], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"\E6\A0\91\E7\9A\84\E7\BB\93\E7\82\B9\E5\86\85\E5\AE\B9\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @insertnode(%struct.tree* %root, i32 %value) #0 {
entry:
  %retval = alloca %struct.tree*, align 8
  %root.addr = alloca %struct.tree*, align 8
  %value.addr = alloca i32, align 4
  %newnode = alloca %struct.tree*, align 8
  %current = alloca %struct.tree*, align 8
  %back = alloca %struct.tree*, align 8
  store %struct.tree* %root, %struct.tree** %root.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.tree*
  store %struct.tree* %0, %struct.tree** %newnode, align 8
  %1 = load i32, i32* %value.addr, align 4
  %2 = load %struct.tree*, %struct.tree** %newnode, align 8
  %data = getelementptr inbounds %struct.tree, %struct.tree* %2, i32 0, i32 0
  store i32 %1, i32* %data, align 8
  %3 = load %struct.tree*, %struct.tree** %newnode, align 8
  %left = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 1
  store %struct.tree* null, %struct.tree** %left, align 8
  %4 = load %struct.tree*, %struct.tree** %newnode, align 8
  %right = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 2
  store %struct.tree* null, %struct.tree** %right, align 8
  %5 = load %struct.tree*, %struct.tree** %root.addr, align 8
  %cmp = icmp eq %struct.tree* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.tree*, %struct.tree** %newnode, align 8
  store %struct.tree* %6, %struct.tree** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.tree*, %struct.tree** %root.addr, align 8
  store %struct.tree* %7, %struct.tree** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %8 = load %struct.tree*, %struct.tree** %current, align 8
  %cmp1 = icmp ne %struct.tree* %8, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.tree*, %struct.tree** %current, align 8
  store %struct.tree* %9, %struct.tree** %back, align 8
  %10 = load %struct.tree*, %struct.tree** %current, align 8
  %data2 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 0
  %11 = load i32, i32* %data2, align 8
  %12 = load i32, i32* %value.addr, align 4
  %cmp3 = icmp sgt i32 %11, %12
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %while.body
  %13 = load %struct.tree*, %struct.tree** %current, align 8
  %left5 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 1
  %14 = load %struct.tree*, %struct.tree** %left5, align 8
  store %struct.tree* %14, %struct.tree** %current, align 8
  br label %if.end

if.else6:                                         ; preds = %while.body
  %15 = load %struct.tree*, %struct.tree** %current, align 8
  %right7 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 2
  %16 = load %struct.tree*, %struct.tree** %right7, align 8
  store %struct.tree* %16, %struct.tree** %current, align 8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %17 = load %struct.tree*, %struct.tree** %back, align 8
  %data8 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %18 = load i32, i32* %data8, align 8
  %19 = load i32, i32* %value.addr, align 4
  %cmp9 = icmp sgt i32 %18, %19
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %while.end
  %20 = load %struct.tree*, %struct.tree** %newnode, align 8
  %21 = load %struct.tree*, %struct.tree** %back, align 8
  %left11 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 1
  store %struct.tree* %20, %struct.tree** %left11, align 8
  br label %if.end14

if.else12:                                        ; preds = %while.end
  %22 = load %struct.tree*, %struct.tree** %newnode, align 8
  %23 = load %struct.tree*, %struct.tree** %back, align 8
  %right13 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 2
  store %struct.tree* %22, %struct.tree** %right13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  %24 = load %struct.tree*, %struct.tree** %root.addr, align 8
  store %struct.tree* %24, %struct.tree** %retval, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %25 = load %struct.tree*, %struct.tree** %retval, align 8
  ret %struct.tree* %25
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @createbtree(i32* %data, i32 %len) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %root = alloca %struct.tree*, align 8
  %i = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.tree* null, %struct.tree** %root, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.tree*, %struct.tree** %root, align 8
  %3 = load i32*, i32** %data.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call = call %struct.tree* @insertnode(%struct.tree* %2, i32 %5)
  store %struct.tree* %call, %struct.tree** %root, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load %struct.tree*, %struct.tree** %root, align 8
  ret %struct.tree* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preorder(%struct.tree* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.tree*, align 8
  store %struct.tree* %ptr, %struct.tree** %ptr.addr, align 8
  %0 = load %struct.tree*, %struct.tree** %ptr.addr, align 8
  %cmp = icmp ne %struct.tree* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.tree*, %struct.tree** %ptr.addr, align 8
  %data = getelementptr inbounds %struct.tree, %struct.tree* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load %struct.tree*, %struct.tree** %ptr.addr, align 8
  %left = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 1
  %4 = load %struct.tree*, %struct.tree** %left, align 8
  call void @preorder(%struct.tree* %4)
  %5 = load %struct.tree*, %struct.tree** %ptr.addr, align 8
  %right = getelementptr inbounds %struct.tree, %struct.tree* %5, i32 0, i32 2
  %6 = load %struct.tree*, %struct.tree** %right, align 8
  call void @preorder(%struct.tree* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %root = alloca %struct.tree*, align 8
  %data = alloca [9 x i32], align 16
  store i32 0, i32* %retval, align 4
  store %struct.tree* null, %struct.tree** %root, align 8
  %0 = bitcast [9 x i32]* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([9 x i32]* @__const.main.data to i8*), i64 36, i1 false)
  %arraydecay = getelementptr inbounds [9 x i32], [9 x i32]* %data, i64 0, i64 0
  %call = call %struct.tree* @createbtree(i32* %arraydecay, i32 9)
  store %struct.tree* %call, %struct.tree** %root, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %1 = load %struct.tree*, %struct.tree** %root, align 8
  call void @preorder(%struct.tree* %1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
