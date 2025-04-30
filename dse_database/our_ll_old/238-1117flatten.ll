; ModuleID = './code/238-1117flatten.c'
source_filename = "./code/238-1117flatten.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.TreeNode = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %root = alloca %struct.TreeNode, align 8
  %n1 = alloca [2 x %struct.TreeNode], align 8
  %n2 = alloca [4 x %struct.TreeNode], align 8
  %n3 = alloca [8 x %struct.TreeNode], align 8
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %val = getelementptr inbounds %struct.TreeNode, ptr %root, i32 0, i32 0
  store i32 5, ptr %val, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 0
  %val1 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx, i32 0, i32 0
  store i32 4, ptr %val1, align 8
  %arrayidx2 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 1
  %val3 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx2, i32 0, i32 0
  store i32 8, ptr %val3, align 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 0
  %val5 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx4, i32 0, i32 0
  store i32 11, ptr %val5, align 8
  %arrayidx6 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 2
  %val7 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx6, i32 0, i32 0
  store i32 13, ptr %val7, align 8
  %arrayidx8 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 3
  %val9 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx8, i32 0, i32 0
  store i32 4, ptr %val9, align 8
  %arrayidx10 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 0
  %val11 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx10, i32 0, i32 0
  store i32 7, ptr %val11, align 8
  %arrayidx12 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 1
  %val13 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx12, i32 0, i32 0
  store i32 2, ptr %val13, align 8
  %arrayidx14 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 6
  %val15 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx14, i32 0, i32 0
  store i32 5, ptr %val15, align 8
  %arrayidx16 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 7
  %val17 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx16, i32 0, i32 0
  store i32 1, ptr %val17, align 8
  %arrayidx18 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 0
  %left = getelementptr inbounds %struct.TreeNode, ptr %root, i32 0, i32 1
  store ptr %arrayidx18, ptr %left, align 8
  %arrayidx19 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 1
  %right = getelementptr inbounds %struct.TreeNode, ptr %root, i32 0, i32 2
  store ptr %arrayidx19, ptr %right, align 8
  %arrayidx20 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 0
  %left22 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx21, i32 0, i32 1
  store ptr %arrayidx20, ptr %left22, align 8
  %arrayidx23 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 0
  %right24 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx23, i32 0, i32 2
  store ptr null, ptr %right24, align 8
  %arrayidx25 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 2
  %arrayidx26 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 1
  %left27 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx26, i32 0, i32 1
  store ptr %arrayidx25, ptr %left27, align 8
  %arrayidx28 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 3
  %arrayidx29 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 1
  %right30 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx29, i32 0, i32 2
  store ptr %arrayidx28, ptr %right30, align 8
  %arrayidx31 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 0
  %arrayidx32 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 0
  %left33 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx32, i32 0, i32 1
  store ptr %arrayidx31, ptr %left33, align 8
  %arrayidx34 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 1
  %arrayidx35 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 0
  %right36 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx35, i32 0, i32 2
  store ptr %arrayidx34, ptr %right36, align 8
  %arrayidx37 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 2
  %left38 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx37, i32 0, i32 1
  store ptr null, ptr %left38, align 8
  %arrayidx39 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 2
  %right40 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx39, i32 0, i32 2
  store ptr null, ptr %right40, align 8
  %arrayidx41 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 6
  %arrayidx42 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 3
  %left43 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx42, i32 0, i32 1
  store ptr %arrayidx41, ptr %left43, align 8
  %arrayidx44 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 7
  %arrayidx45 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 3
  %right46 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx45, i32 0, i32 2
  store ptr %arrayidx44, ptr %right46, align 8
  %arrayidx47 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 0
  %left48 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx47, i32 0, i32 1
  store ptr null, ptr %left48, align 8
  %arrayidx49 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 0
  %right50 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx49, i32 0, i32 2
  store ptr null, ptr %right50, align 8
  %arrayidx51 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 1
  %left52 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx51, i32 0, i32 1
  store ptr null, ptr %left52, align 8
  %arrayidx53 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 1
  %right54 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx53, i32 0, i32 2
  store ptr null, ptr %right54, align 8
  %arrayidx55 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 6
  %left56 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx55, i32 0, i32 1
  store ptr null, ptr %left56, align 8
  %arrayidx57 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 6
  %right58 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx57, i32 0, i32 2
  store ptr null, ptr %right58, align 8
  %arrayidx59 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 7
  %left60 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx59, i32 0, i32 1
  store ptr null, ptr %left60, align 8
  %arrayidx61 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 7
  %right62 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx61, i32 0, i32 2
  store ptr null, ptr %right62, align 8
  call void @flatten(ptr noundef %root)
  store ptr %root, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %p, align 8
  %val63 = getelementptr inbounds %struct.TreeNode, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %val63, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %p, align 8
  %right64 = getelementptr inbounds %struct.TreeNode, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %right64, align 8
  store ptr %4, ptr %p, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @flatten(ptr noundef %root) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %call = call ptr @partition(ptr noundef %0)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @partition(ptr noundef %node) #0 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %right_last = alloca ptr, align 8
  %left_last = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  %0 = load ptr, ptr %node.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8
  %right = getelementptr inbounds %struct.TreeNode, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %right, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %node.addr, align 8
  %left = getelementptr inbounds %struct.TreeNode, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %left, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %node.addr, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %node.addr, align 8
  %right5 = getelementptr inbounds %struct.TreeNode, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %right5, align 8
  %call = call ptr @partition(ptr noundef %7)
  store ptr %call, ptr %right_last, align 8
  %8 = load ptr, ptr %node.addr, align 8
  %left6 = getelementptr inbounds %struct.TreeNode, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %left6, align 8
  %call7 = call ptr @partition(ptr noundef %9)
  store ptr %call7, ptr %left_last, align 8
  %10 = load ptr, ptr %left_last, align 8
  %cmp8 = icmp ne ptr %10, null
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end4
  %11 = load ptr, ptr %node.addr, align 8
  %right10 = getelementptr inbounds %struct.TreeNode, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %right10, align 8
  %13 = load ptr, ptr %left_last, align 8
  %right11 = getelementptr inbounds %struct.TreeNode, ptr %13, i32 0, i32 2
  store ptr %12, ptr %right11, align 8
  %14 = load ptr, ptr %node.addr, align 8
  %left12 = getelementptr inbounds %struct.TreeNode, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %left12, align 8
  %16 = load ptr, ptr %node.addr, align 8
  %right13 = getelementptr inbounds %struct.TreeNode, ptr %16, i32 0, i32 2
  store ptr %15, ptr %right13, align 8
  %17 = load ptr, ptr %node.addr, align 8
  %left14 = getelementptr inbounds %struct.TreeNode, ptr %17, i32 0, i32 1
  store ptr null, ptr %left14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end4
  %18 = load ptr, ptr %right_last, align 8
  %cmp16 = icmp ne ptr %18, null
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %19 = load ptr, ptr %right_last, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %20 = load ptr, ptr %left_last, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %19, %cond.true ], [ %20, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
