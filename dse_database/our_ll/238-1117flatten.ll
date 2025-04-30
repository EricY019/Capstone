; ModuleID = 'code/238-1117flatten.c'
source_filename = "code/238-1117flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TreeNode = type { i32, %struct.TreeNode*, %struct.TreeNode* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %root = alloca %struct.TreeNode, align 8
  %n1 = alloca [2 x %struct.TreeNode], align 16
  %n2 = alloca [4 x %struct.TreeNode], align 16
  %n3 = alloca [8 x %struct.TreeNode], align 16
  %p = alloca %struct.TreeNode*, align 8
  store i32 0, i32* %retval, align 4
  %val = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %root, i32 0, i32 0
  store i32 5, i32* %val, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 0
  %val1 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx, i32 0, i32 0
  store i32 4, i32* %val1, align 16
  %arrayidx2 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 1
  %val3 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx2, i32 0, i32 0
  store i32 8, i32* %val3, align 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 0
  %val5 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx4, i32 0, i32 0
  store i32 11, i32* %val5, align 16
  %arrayidx6 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 2
  %val7 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx6, i32 0, i32 0
  store i32 13, i32* %val7, align 16
  %arrayidx8 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 3
  %val9 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx8, i32 0, i32 0
  store i32 4, i32* %val9, align 8
  %arrayidx10 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 0
  %val11 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx10, i32 0, i32 0
  store i32 7, i32* %val11, align 16
  %arrayidx12 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 1
  %val13 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx12, i32 0, i32 0
  store i32 2, i32* %val13, align 8
  %arrayidx14 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 6
  %val15 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx14, i32 0, i32 0
  store i32 5, i32* %val15, align 16
  %arrayidx16 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 7
  %val17 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx16, i32 0, i32 0
  store i32 1, i32* %val17, align 8
  %arrayidx18 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 0
  %left = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %root, i32 0, i32 1
  store %struct.TreeNode* %arrayidx18, %struct.TreeNode** %left, align 8
  %arrayidx19 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 1
  %right = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %root, i32 0, i32 2
  store %struct.TreeNode* %arrayidx19, %struct.TreeNode** %right, align 8
  %arrayidx20 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 0
  %left22 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx21, i32 0, i32 1
  store %struct.TreeNode* %arrayidx20, %struct.TreeNode** %left22, align 8
  %arrayidx23 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 0
  %right24 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx23, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right24, align 16
  %arrayidx25 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 2
  %arrayidx26 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 1
  %left27 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx26, i32 0, i32 1
  store %struct.TreeNode* %arrayidx25, %struct.TreeNode** %left27, align 8
  %arrayidx28 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 3
  %arrayidx29 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 1
  %right30 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx29, i32 0, i32 2
  store %struct.TreeNode* %arrayidx28, %struct.TreeNode** %right30, align 8
  %arrayidx31 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 0
  %arrayidx32 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 0
  %left33 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx32, i32 0, i32 1
  store %struct.TreeNode* %arrayidx31, %struct.TreeNode** %left33, align 8
  %arrayidx34 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 1
  %arrayidx35 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 0
  %right36 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx35, i32 0, i32 2
  store %struct.TreeNode* %arrayidx34, %struct.TreeNode** %right36, align 16
  %arrayidx37 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 2
  %left38 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx37, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left38, align 8
  %arrayidx39 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 2
  %right40 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx39, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right40, align 16
  %arrayidx41 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 6
  %arrayidx42 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 3
  %left43 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx42, i32 0, i32 1
  store %struct.TreeNode* %arrayidx41, %struct.TreeNode** %left43, align 8
  %arrayidx44 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 7
  %arrayidx45 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 3
  %right46 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx45, i32 0, i32 2
  store %struct.TreeNode* %arrayidx44, %struct.TreeNode** %right46, align 8
  %arrayidx47 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 0
  %left48 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx47, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left48, align 8
  %arrayidx49 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 0
  %right50 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx49, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right50, align 16
  %arrayidx51 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 1
  %left52 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx51, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left52, align 8
  %arrayidx53 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 1
  %right54 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx53, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right54, align 8
  %arrayidx55 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 6
  %left56 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx55, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left56, align 8
  %arrayidx57 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 6
  %right58 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx57, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right58, align 16
  %arrayidx59 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 7
  %left60 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx59, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left60, align 8
  %arrayidx61 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 7
  %right62 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx61, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right62, align 8
  call void @flatten(%struct.TreeNode* %root)
  store %struct.TreeNode* %root, %struct.TreeNode** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.TreeNode*, %struct.TreeNode** %p, align 8
  %cmp = icmp ne %struct.TreeNode* %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.TreeNode*, %struct.TreeNode** %p, align 8
  %val63 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %1, i32 0, i32 0
  %2 = load i32, i32* %val63, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.TreeNode*, %struct.TreeNode** %p, align 8
  %right64 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %3, i32 0, i32 2
  %4 = load %struct.TreeNode*, %struct.TreeNode** %right64, align 8
  store %struct.TreeNode* %4, %struct.TreeNode** %p, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flatten(%struct.TreeNode* %root) #0 {
entry:
  %root.addr = alloca %struct.TreeNode*, align 8
  store %struct.TreeNode* %root, %struct.TreeNode** %root.addr, align 8
  %0 = load %struct.TreeNode*, %struct.TreeNode** %root.addr, align 8
  %call = call %struct.TreeNode* @partition(%struct.TreeNode* %0)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TreeNode* @partition(%struct.TreeNode* %node) #0 {
entry:
  %retval = alloca %struct.TreeNode*, align 8
  %node.addr = alloca %struct.TreeNode*, align 8
  %right_last = alloca %struct.TreeNode*, align 8
  %left_last = alloca %struct.TreeNode*, align 8
  store %struct.TreeNode* %node, %struct.TreeNode** %node.addr, align 8
  %0 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %cmp = icmp eq %struct.TreeNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.TreeNode* null, %struct.TreeNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %right = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %1, i32 0, i32 2
  %2 = load %struct.TreeNode*, %struct.TreeNode** %right, align 8
  %cmp1 = icmp eq %struct.TreeNode* %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %left = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %3, i32 0, i32 1
  %4 = load %struct.TreeNode*, %struct.TreeNode** %left, align 8
  %cmp2 = icmp eq %struct.TreeNode* %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  %5 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  store %struct.TreeNode* %5, %struct.TreeNode** %retval, align 8
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %6 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %right5 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %6, i32 0, i32 2
  %7 = load %struct.TreeNode*, %struct.TreeNode** %right5, align 8
  %call = call %struct.TreeNode* @partition(%struct.TreeNode* %7)
  store %struct.TreeNode* %call, %struct.TreeNode** %right_last, align 8
  %8 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %left6 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %8, i32 0, i32 1
  %9 = load %struct.TreeNode*, %struct.TreeNode** %left6, align 8
  %call7 = call %struct.TreeNode* @partition(%struct.TreeNode* %9)
  store %struct.TreeNode* %call7, %struct.TreeNode** %left_last, align 8
  %10 = load %struct.TreeNode*, %struct.TreeNode** %left_last, align 8
  %cmp8 = icmp ne %struct.TreeNode* %10, null
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end4
  %11 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %right10 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %11, i32 0, i32 2
  %12 = load %struct.TreeNode*, %struct.TreeNode** %right10, align 8
  %13 = load %struct.TreeNode*, %struct.TreeNode** %left_last, align 8
  %right11 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %13, i32 0, i32 2
  store %struct.TreeNode* %12, %struct.TreeNode** %right11, align 8
  %14 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %left12 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %14, i32 0, i32 1
  %15 = load %struct.TreeNode*, %struct.TreeNode** %left12, align 8
  %16 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %right13 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %16, i32 0, i32 2
  store %struct.TreeNode* %15, %struct.TreeNode** %right13, align 8
  %17 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %left14 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %17, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end4
  %18 = load %struct.TreeNode*, %struct.TreeNode** %right_last, align 8
  %cmp16 = icmp ne %struct.TreeNode* %18, null
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %19 = load %struct.TreeNode*, %struct.TreeNode** %right_last, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %20 = load %struct.TreeNode*, %struct.TreeNode** %left_last, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.TreeNode* [ %19, %cond.true ], [ %20, %cond.false ]
  store %struct.TreeNode* %cond, %struct.TreeNode** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %21 = load %struct.TreeNode*, %struct.TreeNode** %retval, align 8
  ret %struct.TreeNode* %21
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
