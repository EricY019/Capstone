; ModuleID = 'code/355-21797LeetCode0051.c'
source_filename = "code/355-21797LeetCode0051.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@row = dso_local global i32* null, align 8
@col = dso_local global i32* null, align 8
@diagonal = dso_local global i32** null, align 8
@board = dso_local global i8** null, align 8
@.str = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pause\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Marking(i32 %i, i32 %j, i32 %n, i32 %mark) #0 {
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
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %mark, i32* %mark.addr, align 4
  %0 = load i32, i32* %mark.addr, align 4
  %1 = load i32*, i32** @row, align 8
  %2 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %3, %0
  store i32 %add, i32* %arrayidx, align 4
  %4 = load i32, i32* %mark.addr, align 4
  %5 = load i32*, i32** @col, align 8
  %6 = load i32, i32* %j.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %add3 = add nsw i32 %7, %4
  store i32 %add3, i32* %arrayidx2, align 4
  %8 = load i32, i32* %i.addr, align 4
  store i32 %8, i32* %x, align 4
  %9 = load i32, i32* %j.addr, align 4
  store i32 %9, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %x, align 4
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load i32, i32* %mark.addr, align 4
  %15 = load i32**, i32*** @diagonal, align 8
  %16 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds i32*, i32** %15, i64 %idxprom5
  %17 = load i32*, i32** %arrayidx6, align 8
  %18 = load i32, i32* %y, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %17, i64 %idxprom7
  %19 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %19, %14
  store i32 %add9, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %x, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %x, align 4
  %21 = load i32, i32* %y, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %i.addr, align 4
  %add11 = add nsw i32 %22, 1
  store i32 %add11, i32* %x10, align 4
  %23 = load i32, i32* %j.addr, align 4
  %sub = sub nsw i32 %23, 1
  store i32 %sub, i32* %y12, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %24 = load i32, i32* %x10, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp14 = icmp slt i32 %24, %25
  br i1 %cmp14, label %land.rhs15, label %land.end17

land.rhs15:                                       ; preds = %for.cond13
  %26 = load i32, i32* %y12, align 4
  %cmp16 = icmp sge i32 %26, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs15, %for.cond13
  %27 = phi i1 [ false, %for.cond13 ], [ %cmp16, %land.rhs15 ]
  br i1 %27, label %for.body18, label %for.end27

for.body18:                                       ; preds = %land.end17
  %28 = load i32, i32* %mark.addr, align 4
  %29 = load i32**, i32*** @diagonal, align 8
  %30 = load i32, i32* %x10, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds i32*, i32** %29, i64 %idxprom19
  %31 = load i32*, i32** %arrayidx20, align 8
  %32 = load i32, i32* %y12, align 4
  %idxprom21 = sext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 %idxprom21
  %33 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %33, %28
  store i32 %add23, i32* %arrayidx22, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %34 = load i32, i32* %x10, align 4
  %inc25 = add nsw i32 %34, 1
  store i32 %inc25, i32* %x10, align 4
  %35 = load i32, i32* %y12, align 4
  %dec26 = add nsw i32 %35, -1
  store i32 %dec26, i32* %y12, align 4
  br label %for.cond13, !llvm.loop !6

for.end27:                                        ; preds = %land.end17
  %36 = load i32, i32* %i.addr, align 4
  %sub29 = sub nsw i32 %36, 1
  store i32 %sub29, i32* %x28, align 4
  %37 = load i32, i32* %j.addr, align 4
  %sub31 = sub nsw i32 %37, 1
  store i32 %sub31, i32* %y30, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc43, %for.end27
  %38 = load i32, i32* %x28, align 4
  %cmp33 = icmp sge i32 %38, 0
  br i1 %cmp33, label %land.rhs34, label %land.end36

land.rhs34:                                       ; preds = %for.cond32
  %39 = load i32, i32* %y30, align 4
  %cmp35 = icmp sge i32 %39, 0
  br label %land.end36

land.end36:                                       ; preds = %land.rhs34, %for.cond32
  %40 = phi i1 [ false, %for.cond32 ], [ %cmp35, %land.rhs34 ]
  br i1 %40, label %for.body37, label %for.end46

for.body37:                                       ; preds = %land.end36
  %41 = load i32, i32* %mark.addr, align 4
  %42 = load i32**, i32*** @diagonal, align 8
  %43 = load i32, i32* %x28, align 4
  %idxprom38 = sext i32 %43 to i64
  %arrayidx39 = getelementptr inbounds i32*, i32** %42, i64 %idxprom38
  %44 = load i32*, i32** %arrayidx39, align 8
  %45 = load i32, i32* %y30, align 4
  %idxprom40 = sext i32 %45 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %44, i64 %idxprom40
  %46 = load i32, i32* %arrayidx41, align 4
  %add42 = add nsw i32 %46, %41
  store i32 %add42, i32* %arrayidx41, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %47 = load i32, i32* %x28, align 4
  %dec44 = add nsw i32 %47, -1
  store i32 %dec44, i32* %x28, align 4
  %48 = load i32, i32* %y30, align 4
  %dec45 = add nsw i32 %48, -1
  store i32 %dec45, i32* %y30, align 4
  br label %for.cond32, !llvm.loop !7

for.end46:                                        ; preds = %land.end36
  %49 = load i32, i32* %i.addr, align 4
  %add48 = add nsw i32 %49, 1
  store i32 %add48, i32* %x47, align 4
  %50 = load i32, i32* %j.addr, align 4
  %add50 = add nsw i32 %50, 1
  store i32 %add50, i32* %y49, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc62, %for.end46
  %51 = load i32, i32* %x47, align 4
  %52 = load i32, i32* %n.addr, align 4
  %cmp52 = icmp slt i32 %51, %52
  br i1 %cmp52, label %land.rhs53, label %land.end55

land.rhs53:                                       ; preds = %for.cond51
  %53 = load i32, i32* %y49, align 4
  %54 = load i32, i32* %n.addr, align 4
  %cmp54 = icmp slt i32 %53, %54
  br label %land.end55

land.end55:                                       ; preds = %land.rhs53, %for.cond51
  %55 = phi i1 [ false, %for.cond51 ], [ %cmp54, %land.rhs53 ]
  br i1 %55, label %for.body56, label %for.end65

for.body56:                                       ; preds = %land.end55
  %56 = load i32, i32* %mark.addr, align 4
  %57 = load i32**, i32*** @diagonal, align 8
  %58 = load i32, i32* %x47, align 4
  %idxprom57 = sext i32 %58 to i64
  %arrayidx58 = getelementptr inbounds i32*, i32** %57, i64 %idxprom57
  %59 = load i32*, i32** %arrayidx58, align 8
  %60 = load i32, i32* %y49, align 4
  %idxprom59 = sext i32 %60 to i64
  %arrayidx60 = getelementptr inbounds i32, i32* %59, i64 %idxprom59
  %61 = load i32, i32* %arrayidx60, align 4
  %add61 = add nsw i32 %61, %56
  store i32 %add61, i32* %arrayidx60, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %for.body56
  %62 = load i32, i32* %x47, align 4
  %inc63 = add nsw i32 %62, 1
  store i32 %inc63, i32* %x47, align 4
  %63 = load i32, i32* %y49, align 4
  %inc64 = add nsw i32 %63, 1
  store i32 %inc64, i32* %y49, align 4
  br label %for.cond51, !llvm.loop !8

for.end65:                                        ; preds = %land.end55
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @findNextOne(i8*** %ret, i32* %returnSize, i32 %i, i32 %j, i32 %n) #0 {
entry:
  %ret.addr = alloca i8***, align 8
  %returnSize.addr = alloca i32*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %a10 = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  store i8*** %ret, i8**** %ret.addr, align 8
  store i32* %returnSize, i32** %returnSize.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #3
  %3 = bitcast i8* %call to i8**
  %4 = load i8***, i8**** %ret.addr, align 8
  %5 = load i32*, i32** %returnSize.addr, align 8
  %6 = load i32, i32* %5, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8**, i8*** %4, i64 %idxprom
  store i8** %3, i8*** %arrayidx, align 8
  store i32 0, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %9, 1
  %conv3 = sext i32 %add to i64
  %mul4 = mul i64 1, %conv3
  %call5 = call noalias align 16 i8* @malloc(i64 %mul4) #3
  %10 = load i8***, i8**** %ret.addr, align 8
  %11 = load i32*, i32** %returnSize.addr, align 8
  %12 = load i32, i32* %11, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i8**, i8*** %10, i64 %idxprom6
  %13 = load i8**, i8*** %arrayidx7, align 8
  %14 = load i32, i32* %a, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %13, i64 %idxprom8
  store i8* %call5, i8** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %a, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %a10, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc38, %for.end
  %16 = load i32, i32* %a10, align 4
  %17 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp slt i32 %16, %17
  br i1 %cmp12, label %for.body14, label %for.end40

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %b, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc29, %for.body14
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp slt i32 %18, %19
  br i1 %cmp16, label %for.body18, label %for.end31

for.body18:                                       ; preds = %for.cond15
  %20 = load i8**, i8*** @board, align 8
  %21 = load i32, i32* %a10, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds i8*, i8** %20, i64 %idxprom19
  %22 = load i8*, i8** %arrayidx20, align 8
  %23 = load i32, i32* %b, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %22, i64 %idxprom21
  %24 = load i8, i8* %arrayidx22, align 1
  %25 = load i8***, i8**** %ret.addr, align 8
  %26 = load i32*, i32** %returnSize.addr, align 8
  %27 = load i32, i32* %26, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds i8**, i8*** %25, i64 %idxprom23
  %28 = load i8**, i8*** %arrayidx24, align 8
  %29 = load i32, i32* %a10, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds i8*, i8** %28, i64 %idxprom25
  %30 = load i8*, i8** %arrayidx26, align 8
  %31 = load i32, i32* %b, align 4
  %idxprom27 = sext i32 %31 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %30, i64 %idxprom27
  store i8 %24, i8* %arrayidx28, align 1
  br label %for.inc29

for.inc29:                                        ; preds = %for.body18
  %32 = load i32, i32* %b, align 4
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, i32* %b, align 4
  br label %for.cond15, !llvm.loop !10

for.end31:                                        ; preds = %for.cond15
  %33 = load i8***, i8**** %ret.addr, align 8
  %34 = load i32*, i32** %returnSize.addr, align 8
  %35 = load i32, i32* %34, align 4
  %idxprom32 = sext i32 %35 to i64
  %arrayidx33 = getelementptr inbounds i8**, i8*** %33, i64 %idxprom32
  %36 = load i8**, i8*** %arrayidx33, align 8
  %37 = load i32, i32* %a10, align 4
  %idxprom34 = sext i32 %37 to i64
  %arrayidx35 = getelementptr inbounds i8*, i8** %36, i64 %idxprom34
  %38 = load i8*, i8** %arrayidx35, align 8
  %39 = load i32, i32* %n.addr, align 4
  %idxprom36 = sext i32 %39 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %38, i64 %idxprom36
  store i8 0, i8* %arrayidx37, align 1
  br label %for.inc38

for.inc38:                                        ; preds = %for.end31
  %40 = load i32, i32* %a10, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, i32* %a10, align 4
  br label %for.cond11, !llvm.loop !11

for.end40:                                        ; preds = %for.cond11
  %41 = load i32*, i32** %returnSize.addr, align 8
  %42 = load i32, i32* %41, align 4
  %inc41 = add nsw i32 %42, 1
  store i32 %inc41, i32* %41, align 4
  br label %for.end74

if.end:                                           ; preds = %entry
  %43 = load i32, i32* %j.addr, align 4
  store i32 %43, i32* %y, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc72, %if.end
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp43 = icmp slt i32 %44, %45
  br i1 %cmp43, label %for.body45, label %for.end74

for.body45:                                       ; preds = %for.cond42
  %46 = load i32*, i32** @row, align 8
  %47 = load i32, i32* %i.addr, align 4
  %idxprom46 = sext i32 %47 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %46, i64 %idxprom46
  %48 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp eq i32 %48, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %for.body45
  %49 = load i32*, i32** @col, align 8
  %50 = load i32, i32* %y, align 4
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds i32, i32* %49, i64 %idxprom50
  %51 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp eq i32 %51, 0
  br i1 %cmp52, label %land.lhs.true54, label %if.end71

land.lhs.true54:                                  ; preds = %land.lhs.true
  %52 = load i32**, i32*** @diagonal, align 8
  %53 = load i32, i32* %i.addr, align 4
  %idxprom55 = sext i32 %53 to i64
  %arrayidx56 = getelementptr inbounds i32*, i32** %52, i64 %idxprom55
  %54 = load i32*, i32** %arrayidx56, align 8
  %55 = load i32, i32* %y, align 4
  %idxprom57 = sext i32 %55 to i64
  %arrayidx58 = getelementptr inbounds i32, i32* %54, i64 %idxprom57
  %56 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %56, 0
  br i1 %cmp59, label %if.then61, label %if.end71

if.then61:                                        ; preds = %land.lhs.true54
  %57 = load i8**, i8*** @board, align 8
  %58 = load i32, i32* %i.addr, align 4
  %idxprom62 = sext i32 %58 to i64
  %arrayidx63 = getelementptr inbounds i8*, i8** %57, i64 %idxprom62
  %59 = load i8*, i8** %arrayidx63, align 8
  %60 = load i32, i32* %y, align 4
  %idxprom64 = sext i32 %60 to i64
  %arrayidx65 = getelementptr inbounds i8, i8* %59, i64 %idxprom64
  store i8 81, i8* %arrayidx65, align 1
  %61 = load i32, i32* %i.addr, align 4
  %62 = load i32, i32* %y, align 4
  %63 = load i32, i32* %n.addr, align 4
  call void @Marking(i32 %61, i32 %62, i32 %63, i32 1)
  %64 = load i8***, i8**** %ret.addr, align 8
  %65 = load i32*, i32** %returnSize.addr, align 8
  %66 = load i32, i32* %i.addr, align 4
  %add66 = add nsw i32 %66, 1
  %67 = load i32, i32* %n.addr, align 4
  call void @findNextOne(i8*** %64, i32* %65, i32 %add66, i32 0, i32 %67)
  %68 = load i32, i32* %i.addr, align 4
  %69 = load i32, i32* %y, align 4
  %70 = load i32, i32* %n.addr, align 4
  call void @Marking(i32 %68, i32 %69, i32 %70, i32 -1)
  %71 = load i8**, i8*** @board, align 8
  %72 = load i32, i32* %i.addr, align 4
  %idxprom67 = sext i32 %72 to i64
  %arrayidx68 = getelementptr inbounds i8*, i8** %71, i64 %idxprom67
  %73 = load i8*, i8** %arrayidx68, align 8
  %74 = load i32, i32* %y, align 4
  %idxprom69 = sext i32 %74 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %73, i64 %idxprom69
  store i8 46, i8* %arrayidx70, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then61, %land.lhs.true54, %land.lhs.true, %for.body45
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %75 = load i32, i32* %y, align 4
  %inc73 = add nsw i32 %75, 1
  store i32 %inc73, i32* %y, align 4
  br label %for.cond42, !llvm.loop !12

for.end74:                                        ; preds = %for.end40, %for.cond42
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8*** @solveNQueens(i32 %n, i32* %returnSize) #0 {
entry:
  %n.addr = alloca i32, align 4
  %returnSize.addr = alloca i32*, align 8
  %ret = alloca i8***, align 8
  %i = alloca i32, align 4
  %i15 = alloca i32, align 4
  %i28 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %returnSize, i32** %returnSize.addr, align 8
  %0 = load i32*, i32** %returnSize.addr, align 8
  store i32 0, i32* %0, align 4
  %call = call noalias align 16 i8* @malloc(i64 4096) #3
  %1 = bitcast i8* %call to i8***
  store i8*** %1, i8**** %ret, align 8
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call1 = call noalias align 16 i8* @malloc(i64 %mul) #3
  %3 = bitcast i8* %call1 to i8**
  store i8** %3, i8*** @board, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %n.addr, align 4
  %conv3 = sext i32 %6 to i64
  %mul4 = mul i64 1, %conv3
  %call5 = call noalias align 16 i8* @malloc(i64 %mul4) #3
  %7 = load i8**, i8*** @board, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  store i8* %call5, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %n.addr, align 4
  %conv6 = sext i32 %10 to i64
  %mul7 = mul i64 4, %conv6
  %call8 = call noalias align 16 i8* @malloc(i64 %mul7) #3
  %11 = bitcast i8* %call8 to i32*
  store i32* %11, i32** @row, align 8
  %12 = load i32, i32* %n.addr, align 4
  %conv9 = sext i32 %12 to i64
  %mul10 = mul i64 4, %conv9
  %call11 = call noalias align 16 i8* @malloc(i64 %mul10) #3
  %13 = bitcast i8* %call11 to i32*
  store i32* %13, i32** @col, align 8
  %14 = load i32, i32* %n.addr, align 4
  %conv12 = sext i32 %14 to i64
  %mul13 = mul i64 8, %conv12
  %call14 = call noalias align 16 i8* @malloc(i64 %mul13) #3
  %15 = bitcast i8* %call14 to i32**
  store i32** %15, i32*** @diagonal, align 8
  store i32 0, i32* %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.end
  %16 = load i32, i32* %i15, align 4
  %17 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %16, %17
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %18 = load i32, i32* %n.addr, align 4
  %conv20 = sext i32 %18 to i64
  %mul21 = mul i64 4, %conv20
  %call22 = call noalias align 16 i8* @malloc(i64 %mul21) #3
  %19 = bitcast i8* %call22 to i32*
  %20 = load i32**, i32*** @diagonal, align 8
  %21 = load i32, i32* %i15, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds i32*, i32** %20, i64 %idxprom23
  store i32* %19, i32** %arrayidx24, align 8
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %22 = load i32, i32* %i15, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, i32* %i15, align 4
  br label %for.cond16, !llvm.loop !14

for.end27:                                        ; preds = %for.cond16
  store i32 0, i32* %i28, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc52, %for.end27
  %23 = load i32, i32* %i28, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %23, %24
  br i1 %cmp30, label %for.body32, label %for.end54

for.body32:                                       ; preds = %for.cond29
  %25 = load i32*, i32** @row, align 8
  %26 = load i32, i32* %i28, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %25, i64 %idxprom33
  store i32 0, i32* %arrayidx34, align 4
  %27 = load i32*, i32** @col, align 8
  %28 = load i32, i32* %i28, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %27, i64 %idxprom35
  store i32 0, i32* %arrayidx36, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body32
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %n.addr, align 4
  %cmp38 = icmp slt i32 %29, %30
  br i1 %cmp38, label %for.body40, label %for.end51

for.body40:                                       ; preds = %for.cond37
  %31 = load i8**, i8*** @board, align 8
  %32 = load i32, i32* %i28, align 4
  %idxprom41 = sext i32 %32 to i64
  %arrayidx42 = getelementptr inbounds i8*, i8** %31, i64 %idxprom41
  %33 = load i8*, i8** %arrayidx42, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds i8, i8* %33, i64 %idxprom43
  store i8 46, i8* %arrayidx44, align 1
  %35 = load i32**, i32*** @diagonal, align 8
  %36 = load i32, i32* %i28, align 4
  %idxprom45 = sext i32 %36 to i64
  %arrayidx46 = getelementptr inbounds i32*, i32** %35, i64 %idxprom45
  %37 = load i32*, i32** %arrayidx46, align 8
  %38 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %38 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %37, i64 %idxprom47
  store i32 0, i32* %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %39 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %39, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond37, !llvm.loop !15

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %40 = load i32, i32* %i28, align 4
  %inc53 = add nsw i32 %40, 1
  store i32 %inc53, i32* %i28, align 4
  br label %for.cond29, !llvm.loop !16

for.end54:                                        ; preds = %for.cond29
  %41 = load i8***, i8**** %ret, align 8
  %42 = load i32*, i32** %returnSize.addr, align 8
  %43 = load i32, i32* %n.addr, align 4
  call void @findNextOne(i8*** %41, i32* %42, i32 0, i32 0, i32 %43)
  %44 = load i8***, i8**** %ret, align 8
  ret i8*** %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %returnSize = alloca i32, align 4
  %res = alloca i8***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 8, i32* %n, align 4
  store i32 0, i32* %returnSize, align 4
  %0 = load i32, i32* %n, align 4
  %call = call i8*** @solveNQueens(i32 %0, i32* %returnSize)
  store i8*** %call, i8**** %res, align 8
  %1 = load i32, i32* %returnSize, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %returnSize, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %6 = load i32, i32* %k, align 4
  %7 = load i32, i32* %n, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %8 = load i8***, i8**** %res, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8**, i8*** %8, i64 %idxprom
  %10 = load i8**, i8*** %arrayidx, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %10, i64 %idxprom8
  %12 = load i8*, i8** %arrayidx9, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv = sext i8 %14 to i32
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5, !llvm.loop !17

for.end:                                          ; preds = %for.cond5
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8***, i8**** %res, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds i8**, i8*** %16, i64 %idxprom14
  %18 = load i8**, i8*** %arrayidx15, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 %idxprom16
  %20 = load i8*, i8** %arrayidx17, align 8
  call void @free(i8* %20) #3
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond2, !llvm.loop !18

for.end20:                                        ; preds = %for.cond2
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i8***, i8**** %res, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds i8**, i8*** %22, i64 %idxprom22
  %24 = load i8**, i8*** %arrayidx23, align 8
  %25 = bitcast i8** %24 to i8*
  call void @free(i8* %25) #3
  br label %for.inc24

for.inc24:                                        ; preds = %for.end20
  %26 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end26:                                        ; preds = %for.cond
  %27 = load i8***, i8**** %res, align 8
  %28 = bitcast i8*** %27 to i8*
  call void @free(i8* %28) #3
  %call27 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local i32 @system(i8*) #2

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
