; ModuleID = './code/355-21797LeetCode0051.c'
source_filename = "./code/355-21797LeetCode0051.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@row = global ptr null, align 8
@col = global ptr null, align 8
@diagonal = global ptr null, align 8
@board = global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pause\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Marking(i32 noundef %i, i32 noundef %j, i32 noundef %n, i32 noundef %mark) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %mark.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x10 = alloca i32, align 4
  %y12 = alloca i32, align 4
  %x28 = alloca i32, align 4
  %y30 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %y49 = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %mark, ptr %mark.addr, align 4
  %0 = load i32, ptr %mark.addr, align 4
  %1 = load ptr, ptr @row, align 8
  %2 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %add = add nsw i32 %3, %0
  store i32 %add, ptr %arrayidx, align 4
  %4 = load i32, ptr %mark.addr, align 4
  %5 = load ptr, ptr @col, align 8
  %6 = load i32, ptr %j.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %add3 = add nsw i32 %7, %4
  store i32 %add3, ptr %arrayidx2, align 4
  %8 = load i32, ptr %i.addr, align 4
  store i32 %8, ptr %x, align 4
  %9 = load i32, ptr %j.addr, align 4
  store i32 %9, ptr %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %x, align 4
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, ptr %y, align 4
  %12 = load i32, ptr %n.addr, align 4
  %cmp4 = icmp slt i32 %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load i32, ptr %mark.addr, align 4
  %15 = load ptr, ptr @diagonal, align 8
  %16 = load i32, ptr %x, align 4
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %15, i64 %idxprom5
  %17 = load ptr, ptr %arrayidx6, align 8
  %18 = load i32, ptr %y, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %17, i64 %idxprom7
  %19 = load i32, ptr %arrayidx8, align 4
  %add9 = add nsw i32 %19, %14
  store i32 %add9, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %x, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %x, align 4
  %21 = load i32, ptr %y, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %y, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %land.end
  %22 = load i32, ptr %i.addr, align 4
  %add11 = add nsw i32 %22, 1
  store i32 %add11, ptr %x10, align 4
  %23 = load i32, ptr %j.addr, align 4
  %sub = sub nsw i32 %23, 1
  store i32 %sub, ptr %y12, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %24 = load i32, ptr %x10, align 4
  %25 = load i32, ptr %n.addr, align 4
  %cmp14 = icmp slt i32 %24, %25
  br i1 %cmp14, label %land.rhs15, label %land.end17

land.rhs15:                                       ; preds = %for.cond13
  %26 = load i32, ptr %y12, align 4
  %cmp16 = icmp sge i32 %26, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs15, %for.cond13
  %27 = phi i1 [ false, %for.cond13 ], [ %cmp16, %land.rhs15 ]
  br i1 %27, label %for.body18, label %for.end27

for.body18:                                       ; preds = %land.end17
  %28 = load i32, ptr %mark.addr, align 4
  %29 = load ptr, ptr @diagonal, align 8
  %30 = load i32, ptr %x10, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %29, i64 %idxprom19
  %31 = load ptr, ptr %arrayidx20, align 8
  %32 = load i32, ptr %y12, align 4
  %idxprom21 = sext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %31, i64 %idxprom21
  %33 = load i32, ptr %arrayidx22, align 4
  %add23 = add nsw i32 %33, %28
  store i32 %add23, ptr %arrayidx22, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %34 = load i32, ptr %x10, align 4
  %inc25 = add nsw i32 %34, 1
  store i32 %inc25, ptr %x10, align 4
  %35 = load i32, ptr %y12, align 4
  %dec26 = add nsw i32 %35, -1
  store i32 %dec26, ptr %y12, align 4
  br label %for.cond13, !llvm.loop !7

for.end27:                                        ; preds = %land.end17
  %36 = load i32, ptr %i.addr, align 4
  %sub29 = sub nsw i32 %36, 1
  store i32 %sub29, ptr %x28, align 4
  %37 = load i32, ptr %j.addr, align 4
  %sub31 = sub nsw i32 %37, 1
  store i32 %sub31, ptr %y30, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc43, %for.end27
  %38 = load i32, ptr %x28, align 4
  %cmp33 = icmp sge i32 %38, 0
  br i1 %cmp33, label %land.rhs34, label %land.end36

land.rhs34:                                       ; preds = %for.cond32
  %39 = load i32, ptr %y30, align 4
  %cmp35 = icmp sge i32 %39, 0
  br label %land.end36

land.end36:                                       ; preds = %land.rhs34, %for.cond32
  %40 = phi i1 [ false, %for.cond32 ], [ %cmp35, %land.rhs34 ]
  br i1 %40, label %for.body37, label %for.end46

for.body37:                                       ; preds = %land.end36
  %41 = load i32, ptr %mark.addr, align 4
  %42 = load ptr, ptr @diagonal, align 8
  %43 = load i32, ptr %x28, align 4
  %idxprom38 = sext i32 %43 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %42, i64 %idxprom38
  %44 = load ptr, ptr %arrayidx39, align 8
  %45 = load i32, ptr %y30, align 4
  %idxprom40 = sext i32 %45 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %44, i64 %idxprom40
  %46 = load i32, ptr %arrayidx41, align 4
  %add42 = add nsw i32 %46, %41
  store i32 %add42, ptr %arrayidx41, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %47 = load i32, ptr %x28, align 4
  %dec44 = add nsw i32 %47, -1
  store i32 %dec44, ptr %x28, align 4
  %48 = load i32, ptr %y30, align 4
  %dec45 = add nsw i32 %48, -1
  store i32 %dec45, ptr %y30, align 4
  br label %for.cond32, !llvm.loop !8

for.end46:                                        ; preds = %land.end36
  %49 = load i32, ptr %i.addr, align 4
  %add48 = add nsw i32 %49, 1
  store i32 %add48, ptr %x47, align 4
  %50 = load i32, ptr %j.addr, align 4
  %add50 = add nsw i32 %50, 1
  store i32 %add50, ptr %y49, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc62, %for.end46
  %51 = load i32, ptr %x47, align 4
  %52 = load i32, ptr %n.addr, align 4
  %cmp52 = icmp slt i32 %51, %52
  br i1 %cmp52, label %land.rhs53, label %land.end55

land.rhs53:                                       ; preds = %for.cond51
  %53 = load i32, ptr %y49, align 4
  %54 = load i32, ptr %n.addr, align 4
  %cmp54 = icmp slt i32 %53, %54
  br label %land.end55

land.end55:                                       ; preds = %land.rhs53, %for.cond51
  %55 = phi i1 [ false, %for.cond51 ], [ %cmp54, %land.rhs53 ]
  br i1 %55, label %for.body56, label %for.end65

for.body56:                                       ; preds = %land.end55
  %56 = load i32, ptr %mark.addr, align 4
  %57 = load ptr, ptr @diagonal, align 8
  %58 = load i32, ptr %x47, align 4
  %idxprom57 = sext i32 %58 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %57, i64 %idxprom57
  %59 = load ptr, ptr %arrayidx58, align 8
  %60 = load i32, ptr %y49, align 4
  %idxprom59 = sext i32 %60 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %59, i64 %idxprom59
  %61 = load i32, ptr %arrayidx60, align 4
  %add61 = add nsw i32 %61, %56
  store i32 %add61, ptr %arrayidx60, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %for.body56
  %62 = load i32, ptr %x47, align 4
  %inc63 = add nsw i32 %62, 1
  store i32 %inc63, ptr %x47, align 4
  %63 = load i32, ptr %y49, align 4
  %inc64 = add nsw i32 %63, 1
  store i32 %inc64, ptr %y49, align 4
  br label %for.cond51, !llvm.loop !9

for.end65:                                        ; preds = %land.end55
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @findNextOne(ptr noundef %ret, ptr noundef %returnSize, i32 noundef %i, i32 noundef %j, i32 noundef %n) #0 {
entry:
  %ret.addr = alloca ptr, align 8
  %returnSize.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %a10 = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %ret, ptr %ret.addr, align 8
  store ptr %returnSize, ptr %returnSize.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @malloc(i64 noundef %mul) #3
  %3 = load ptr, ptr %ret.addr, align 8
  %4 = load ptr, ptr %returnSize.addr, align 8
  %5 = load i32, ptr %4, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  store i32 0, ptr %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, ptr %a, align 4
  %7 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %8, 1
  %conv3 = sext i32 %add to i64
  %mul4 = mul i64 1, %conv3
  %call5 = call ptr @malloc(i64 noundef %mul4) #3
  %9 = load ptr, ptr %ret.addr, align 8
  %10 = load ptr, ptr %returnSize.addr, align 8
  %11 = load i32, ptr %10, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %9, i64 %idxprom6
  %12 = load ptr, ptr %arrayidx7, align 8
  %13 = load i32, ptr %a, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %12, i64 %idxprom8
  store ptr %call5, ptr %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %a, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %a, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %a10, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc38, %for.end
  %15 = load i32, ptr %a10, align 4
  %16 = load i32, ptr %n.addr, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body14, label %for.end40

for.body14:                                       ; preds = %for.cond11
  store i32 0, ptr %b, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc29, %for.body14
  %17 = load i32, ptr %b, align 4
  %18 = load i32, ptr %n.addr, align 4
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body18, label %for.end31

for.body18:                                       ; preds = %for.cond15
  %19 = load ptr, ptr @board, align 8
  %20 = load i32, ptr %a10, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %19, i64 %idxprom19
  %21 = load ptr, ptr %arrayidx20, align 8
  %22 = load i32, ptr %b, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %21, i64 %idxprom21
  %23 = load i8, ptr %arrayidx22, align 1
  %24 = load ptr, ptr %ret.addr, align 8
  %25 = load ptr, ptr %returnSize.addr, align 8
  %26 = load i32, ptr %25, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %24, i64 %idxprom23
  %27 = load ptr, ptr %arrayidx24, align 8
  %28 = load i32, ptr %a10, align 4
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %27, i64 %idxprom25
  %29 = load ptr, ptr %arrayidx26, align 8
  %30 = load i32, ptr %b, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %29, i64 %idxprom27
  store i8 %23, ptr %arrayidx28, align 1
  br label %for.inc29

for.inc29:                                        ; preds = %for.body18
  %31 = load i32, ptr %b, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, ptr %b, align 4
  br label %for.cond15, !llvm.loop !11

for.end31:                                        ; preds = %for.cond15
  %32 = load ptr, ptr %ret.addr, align 8
  %33 = load ptr, ptr %returnSize.addr, align 8
  %34 = load i32, ptr %33, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %32, i64 %idxprom32
  %35 = load ptr, ptr %arrayidx33, align 8
  %36 = load i32, ptr %a10, align 4
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %35, i64 %idxprom34
  %37 = load ptr, ptr %arrayidx35, align 8
  %38 = load i32, ptr %n.addr, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %37, i64 %idxprom36
  store i8 0, ptr %arrayidx37, align 1
  br label %for.inc38

for.inc38:                                        ; preds = %for.end31
  %39 = load i32, ptr %a10, align 4
  %inc39 = add nsw i32 %39, 1
  store i32 %inc39, ptr %a10, align 4
  br label %for.cond11, !llvm.loop !12

for.end40:                                        ; preds = %for.cond11
  %40 = load ptr, ptr %returnSize.addr, align 8
  %41 = load i32, ptr %40, align 4
  %inc41 = add nsw i32 %41, 1
  store i32 %inc41, ptr %40, align 4
  br label %for.end74

if.end:                                           ; preds = %entry
  %42 = load i32, ptr %j.addr, align 4
  store i32 %42, ptr %y, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc72, %if.end
  %43 = load i32, ptr %y, align 4
  %44 = load i32, ptr %n.addr, align 4
  %cmp43 = icmp slt i32 %43, %44
  br i1 %cmp43, label %for.body45, label %for.end74

for.body45:                                       ; preds = %for.cond42
  %45 = load ptr, ptr @row, align 8
  %46 = load i32, ptr %i.addr, align 4
  %idxprom46 = sext i32 %46 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %45, i64 %idxprom46
  %47 = load i32, ptr %arrayidx47, align 4
  %cmp48 = icmp eq i32 %47, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %for.body45
  %48 = load ptr, ptr @col, align 8
  %49 = load i32, ptr %y, align 4
  %idxprom50 = sext i32 %49 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %48, i64 %idxprom50
  %50 = load i32, ptr %arrayidx51, align 4
  %cmp52 = icmp eq i32 %50, 0
  br i1 %cmp52, label %land.lhs.true54, label %if.end71

land.lhs.true54:                                  ; preds = %land.lhs.true
  %51 = load ptr, ptr @diagonal, align 8
  %52 = load i32, ptr %i.addr, align 4
  %idxprom55 = sext i32 %52 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %51, i64 %idxprom55
  %53 = load ptr, ptr %arrayidx56, align 8
  %54 = load i32, ptr %y, align 4
  %idxprom57 = sext i32 %54 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %53, i64 %idxprom57
  %55 = load i32, ptr %arrayidx58, align 4
  %cmp59 = icmp eq i32 %55, 0
  br i1 %cmp59, label %if.then61, label %if.end71

if.then61:                                        ; preds = %land.lhs.true54
  %56 = load ptr, ptr @board, align 8
  %57 = load i32, ptr %i.addr, align 4
  %idxprom62 = sext i32 %57 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %56, i64 %idxprom62
  %58 = load ptr, ptr %arrayidx63, align 8
  %59 = load i32, ptr %y, align 4
  %idxprom64 = sext i32 %59 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %58, i64 %idxprom64
  store i8 81, ptr %arrayidx65, align 1
  %60 = load i32, ptr %i.addr, align 4
  %61 = load i32, ptr %y, align 4
  %62 = load i32, ptr %n.addr, align 4
  call void @Marking(i32 noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef 1)
  %63 = load ptr, ptr %ret.addr, align 8
  %64 = load ptr, ptr %returnSize.addr, align 8
  %65 = load i32, ptr %i.addr, align 4
  %add66 = add nsw i32 %65, 1
  %66 = load i32, ptr %n.addr, align 4
  call void @findNextOne(ptr noundef %63, ptr noundef %64, i32 noundef %add66, i32 noundef 0, i32 noundef %66)
  %67 = load i32, ptr %i.addr, align 4
  %68 = load i32, ptr %y, align 4
  %69 = load i32, ptr %n.addr, align 4
  call void @Marking(i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef -1)
  %70 = load ptr, ptr @board, align 8
  %71 = load i32, ptr %i.addr, align 4
  %idxprom67 = sext i32 %71 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %70, i64 %idxprom67
  %72 = load ptr, ptr %arrayidx68, align 8
  %73 = load i32, ptr %y, align 4
  %idxprom69 = sext i32 %73 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %72, i64 %idxprom69
  store i8 46, ptr %arrayidx70, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then61, %land.lhs.true54, %land.lhs.true, %for.body45
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %74 = load i32, ptr %y, align 4
  %inc73 = add nsw i32 %74, 1
  store i32 %inc73, ptr %y, align 4
  br label %for.cond42, !llvm.loop !13

for.end74:                                        ; preds = %for.end40, %for.cond42
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @solveNQueens(i32 noundef %n, ptr noundef %returnSize) #0 {
entry:
  %n.addr = alloca i32, align 4
  %returnSize.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %i = alloca i32, align 4
  %i15 = alloca i32, align 4
  %i28 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %returnSize, ptr %returnSize.addr, align 8
  %0 = load ptr, ptr %returnSize.addr, align 8
  store i32 0, ptr %0, align 4
  %call = call ptr @malloc(i64 noundef 4096) #3
  store ptr %call, ptr %ret, align 8
  %1 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call1 = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call1, ptr @board, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %n.addr, align 4
  %conv3 = sext i32 %4 to i64
  %mul4 = mul i64 1, %conv3
  %call5 = call ptr @malloc(i64 noundef %mul4) #3
  %5 = load ptr, ptr @board, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  store ptr %call5, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %n.addr, align 4
  %conv6 = sext i32 %8 to i64
  %mul7 = mul i64 4, %conv6
  %call8 = call ptr @malloc(i64 noundef %mul7) #3
  store ptr %call8, ptr @row, align 8
  %9 = load i32, ptr %n.addr, align 4
  %conv9 = sext i32 %9 to i64
  %mul10 = mul i64 4, %conv9
  %call11 = call ptr @malloc(i64 noundef %mul10) #3
  store ptr %call11, ptr @col, align 8
  %10 = load i32, ptr %n.addr, align 4
  %conv12 = sext i32 %10 to i64
  %mul13 = mul i64 8, %conv12
  %call14 = call ptr @malloc(i64 noundef %mul13) #3
  store ptr %call14, ptr @diagonal, align 8
  store i32 0, ptr %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.end
  %11 = load i32, ptr %i15, align 4
  %12 = load i32, ptr %n.addr, align 4
  %cmp17 = icmp slt i32 %11, %12
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %13 = load i32, ptr %n.addr, align 4
  %conv20 = sext i32 %13 to i64
  %mul21 = mul i64 4, %conv20
  %call22 = call ptr @malloc(i64 noundef %mul21) #3
  %14 = load ptr, ptr @diagonal, align 8
  %15 = load i32, ptr %i15, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %14, i64 %idxprom23
  store ptr %call22, ptr %arrayidx24, align 8
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %16 = load i32, ptr %i15, align 4
  %inc26 = add nsw i32 %16, 1
  store i32 %inc26, ptr %i15, align 4
  br label %for.cond16, !llvm.loop !15

for.end27:                                        ; preds = %for.cond16
  store i32 0, ptr %i28, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc52, %for.end27
  %17 = load i32, ptr %i28, align 4
  %18 = load i32, ptr %n.addr, align 4
  %cmp30 = icmp slt i32 %17, %18
  br i1 %cmp30, label %for.body32, label %for.end54

for.body32:                                       ; preds = %for.cond29
  %19 = load ptr, ptr @row, align 8
  %20 = load i32, ptr %i28, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %19, i64 %idxprom33
  store i32 0, ptr %arrayidx34, align 4
  %21 = load ptr, ptr @col, align 8
  %22 = load i32, ptr %i28, align 4
  %idxprom35 = sext i32 %22 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %21, i64 %idxprom35
  store i32 0, ptr %arrayidx36, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body32
  %23 = load i32, ptr %j, align 4
  %24 = load i32, ptr %n.addr, align 4
  %cmp38 = icmp slt i32 %23, %24
  br i1 %cmp38, label %for.body40, label %for.end51

for.body40:                                       ; preds = %for.cond37
  %25 = load ptr, ptr @board, align 8
  %26 = load i32, ptr %i28, align 4
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %25, i64 %idxprom41
  %27 = load ptr, ptr %arrayidx42, align 8
  %28 = load i32, ptr %j, align 4
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %27, i64 %idxprom43
  store i8 46, ptr %arrayidx44, align 1
  %29 = load ptr, ptr @diagonal, align 8
  %30 = load i32, ptr %i28, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %29, i64 %idxprom45
  %31 = load ptr, ptr %arrayidx46, align 8
  %32 = load i32, ptr %j, align 4
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %31, i64 %idxprom47
  store i32 0, ptr %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %33 = load i32, ptr %j, align 4
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, ptr %j, align 4
  br label %for.cond37, !llvm.loop !16

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %34 = load i32, ptr %i28, align 4
  %inc53 = add nsw i32 %34, 1
  store i32 %inc53, ptr %i28, align 4
  br label %for.cond29, !llvm.loop !17

for.end54:                                        ; preds = %for.cond29
  %35 = load ptr, ptr %ret, align 8
  %36 = load ptr, ptr %returnSize.addr, align 8
  %37 = load i32, ptr %n.addr, align 4
  call void @findNextOne(ptr noundef %35, ptr noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef %37)
  %38 = load ptr, ptr %ret, align 8
  ret ptr %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %returnSize = alloca i32, align 4
  %res = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 8, ptr %n, align 4
  store i32 0, ptr %returnSize, align 4
  %0 = load i32, ptr %n, align 4
  %call = call ptr @solveNQueens(i32 noundef %0, ptr noundef %returnSize)
  store ptr %call, ptr %res, align 8
  %1 = load i32, ptr %returnSize, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %returnSize, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.body
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %n, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %6 = load i32, ptr %k, align 4
  %7 = load i32, ptr %n, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %8 = load ptr, ptr %res, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %10, i64 %idxprom8
  %12 = load ptr, ptr %arrayidx9, align 8
  %13 = load i32, ptr %k, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %12, i64 %idxprom10
  %14 = load i8, ptr %arrayidx11, align 1
  %conv = sext i8 %14 to i32
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %15 = load i32, ptr %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond5, !llvm.loop !18

for.end:                                          ; preds = %for.cond5
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %16 = load ptr, ptr %res, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %16, i64 %idxprom14
  %18 = load ptr, ptr %arrayidx15, align 8
  %19 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %18, i64 %idxprom16
  %20 = load ptr, ptr %arrayidx17, align 8
  call void @free(ptr noundef %20)
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %21 = load i32, ptr %j, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, ptr %j, align 4
  br label %for.cond2, !llvm.loop !19

for.end20:                                        ; preds = %for.cond2
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %22 = load ptr, ptr %res, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %22, i64 %idxprom22
  %24 = load ptr, ptr %arrayidx23, align 8
  call void @free(ptr noundef %24)
  br label %for.inc24

for.inc24:                                        ; preds = %for.end20
  %25 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end26:                                        ; preds = %for.cond
  %26 = load ptr, ptr %res, align 8
  call void @free(ptr noundef %26)
  %call27 = call i32 @"\01_system"(ptr noundef @.str.3)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

declare void @free(ptr noundef) #2

declare i32 @"\01_system"(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
