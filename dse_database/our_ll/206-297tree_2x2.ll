; ModuleID = 'code/206-297tree_2x2.c'
source_filename = "code/206-297tree_2x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CUBE_TREE = type { %struct.CUBE_TREE*, [6 x %struct.CUBE_TREE*], [24 x i32], i32, i32 }

@L_value = dso_local global i32 11, align 4
@R_T1 = dso_local global [4 x i32] [i32 8, i32 9, i32 11, i32 10], align 16
@R_T2 = dso_local global [4 x i32] [i32 1, i32 7, i32 19, i32 15], align 16
@R_T3 = dso_local global [4 x i32] [i32 5, i32 17, i32 13, i32 3], align 16
@U_T1 = dso_local global [4 x i32] [i32 5, i32 4, i32 6, i32 7], align 16
@U_T2 = dso_local global [4 x i32] [i32 1, i32 20, i32 16, i32 9], align 16
@U_T3 = dso_local global [4 x i32] [i32 0, i32 21, i32 17, i32 8], align 16
@F_T1 = dso_local global [4 x i32] [i32 0, i32 1, i32 3, i32 2], align 16
@F_T2 = dso_local global [4 x i32] [i32 5, i32 10, i32 14, i32 20], align 16
@F_T3 = dso_local global [4 x i32] [i32 4, i32 8, i32 15, i32 22], align 16
@Turn = dso_local global [9 x void (i32*, i32*)*] [void (i32*, i32*)* @R, void (i32*, i32*)* @U, void (i32*, i32*)* @F, void (i32*, i32*)* @R_r, void (i32*, i32*)* @U_r, void (i32*, i32*)* @F_r, void (i32*, i32*)* @R2, void (i32*, i32*)* @U2, void (i32*, i32*)* @F2], align 16
@Rev = dso_local global [9 x void (i32*, i32*)*] [void (i32*, i32*)* @R_r, void (i32*, i32*)* @U_r, void (i32*, i32*)* @F_r, void (i32*, i32*)* @R, void (i32*, i32*)* @U, void (i32*, i32*)* @F, void (i32*, i32*)* @R2, void (i32*, i32*)* @U2, void (i32*, i32*)* @F2], align 16
@Free = dso_local global i32 9, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initial(i32* %cube) #0 {
entry:
  %cube.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %cube, i32** %cube.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %div = sdiv i32 %1, 4
  %2 = load i32*, i32** %cube.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %div, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cube_copy(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %b.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @four_swap(i32* %a, i32* %b, i32* %tu, i32 %type) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %tu.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %tu, i32** %tu.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %a.addr, align 8
  %2 = load i32*, i32** %tu.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 1
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32*, i32** %b.addr, align 8
  %6 = load i32*, i32** %tu.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom3
  store i32 %4, i32* %arrayidx4, align 4
  %8 = load i32*, i32** %a.addr, align 8
  %9 = load i32*, i32** %tu.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 2
  %10 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load i32*, i32** %b.addr, align 8
  %13 = load i32*, i32** %tu.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 1
  %14 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %12, i64 %idxprom9
  store i32 %11, i32* %arrayidx10, align 4
  %15 = load i32*, i32** %a.addr, align 8
  %16 = load i32*, i32** %tu.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 3
  %17 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %15, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  %19 = load i32*, i32** %b.addr, align 8
  %20 = load i32*, i32** %tu.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 2
  %21 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %19, i64 %idxprom15
  store i32 %18, i32* %arrayidx16, align 4
  %22 = load i32*, i32** %a.addr, align 8
  %23 = load i32*, i32** %tu.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx17, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  %26 = load i32*, i32** %b.addr, align 8
  %27 = load i32*, i32** %tu.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %27, i64 3
  %28 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %26, i64 %idxprom21
  store i32 %25, i32* %arrayidx22, align 4
  br label %if.end77

if.else:                                          ; preds = %entry
  %29 = load i32, i32* %type.addr, align 4
  %cmp23 = icmp eq i32 %29, 0
  br i1 %cmp23, label %if.then24, label %if.else49

if.then24:                                        ; preds = %if.else
  %30 = load i32*, i32** %a.addr, align 8
  %31 = load i32*, i32** %tu.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %31, i64 3
  %32 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %30, i64 %idxprom26
  %33 = load i32, i32* %arrayidx27, align 4
  %34 = load i32*, i32** %b.addr, align 8
  %35 = load i32*, i32** %tu.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %34, i64 %idxprom29
  store i32 %33, i32* %arrayidx30, align 4
  %37 = load i32*, i32** %a.addr, align 8
  %38 = load i32*, i32** %tu.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %38, i64 2
  %39 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %37, i64 %idxprom32
  %40 = load i32, i32* %arrayidx33, align 4
  %41 = load i32*, i32** %b.addr, align 8
  %42 = load i32*, i32** %tu.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %42, i64 3
  %43 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %41, i64 %idxprom35
  store i32 %40, i32* %arrayidx36, align 4
  %44 = load i32*, i32** %a.addr, align 8
  %45 = load i32*, i32** %tu.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %45, i64 1
  %46 = load i32, i32* %arrayidx37, align 4
  %idxprom38 = sext i32 %46 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %44, i64 %idxprom38
  %47 = load i32, i32* %arrayidx39, align 4
  %48 = load i32*, i32** %b.addr, align 8
  %49 = load i32*, i32** %tu.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %49, i64 2
  %50 = load i32, i32* %arrayidx40, align 4
  %idxprom41 = sext i32 %50 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %48, i64 %idxprom41
  store i32 %47, i32* %arrayidx42, align 4
  %51 = load i32*, i32** %a.addr, align 8
  %52 = load i32*, i32** %tu.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %52, i64 0
  %53 = load i32, i32* %arrayidx43, align 4
  %idxprom44 = sext i32 %53 to i64
  %arrayidx45 = getelementptr inbounds i32, i32* %51, i64 %idxprom44
  %54 = load i32, i32* %arrayidx45, align 4
  %55 = load i32*, i32** %b.addr, align 8
  %56 = load i32*, i32** %tu.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %56, i64 1
  %57 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %57 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %55, i64 %idxprom47
  store i32 %54, i32* %arrayidx48, align 4
  br label %if.end76

if.else49:                                        ; preds = %if.else
  %58 = load i32, i32* %type.addr, align 4
  %cmp50 = icmp eq i32 %58, 2
  br i1 %cmp50, label %if.then51, label %if.end

if.then51:                                        ; preds = %if.else49
  %59 = load i32*, i32** %a.addr, align 8
  %60 = load i32*, i32** %tu.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %60, i64 2
  %61 = load i32, i32* %arrayidx52, align 4
  %idxprom53 = sext i32 %61 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %59, i64 %idxprom53
  %62 = load i32, i32* %arrayidx54, align 4
  %63 = load i32*, i32** %b.addr, align 8
  %64 = load i32*, i32** %tu.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %64, i64 0
  %65 = load i32, i32* %arrayidx55, align 4
  %idxprom56 = sext i32 %65 to i64
  %arrayidx57 = getelementptr inbounds i32, i32* %63, i64 %idxprom56
  store i32 %62, i32* %arrayidx57, align 4
  %66 = load i32*, i32** %a.addr, align 8
  %67 = load i32*, i32** %tu.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %67, i64 0
  %68 = load i32, i32* %arrayidx58, align 4
  %idxprom59 = sext i32 %68 to i64
  %arrayidx60 = getelementptr inbounds i32, i32* %66, i64 %idxprom59
  %69 = load i32, i32* %arrayidx60, align 4
  %70 = load i32*, i32** %b.addr, align 8
  %71 = load i32*, i32** %tu.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %71, i64 2
  %72 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %72 to i64
  %arrayidx63 = getelementptr inbounds i32, i32* %70, i64 %idxprom62
  store i32 %69, i32* %arrayidx63, align 4
  %73 = load i32*, i32** %a.addr, align 8
  %74 = load i32*, i32** %tu.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %74, i64 3
  %75 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %75 to i64
  %arrayidx66 = getelementptr inbounds i32, i32* %73, i64 %idxprom65
  %76 = load i32, i32* %arrayidx66, align 4
  %77 = load i32*, i32** %b.addr, align 8
  %78 = load i32*, i32** %tu.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %78, i64 1
  %79 = load i32, i32* %arrayidx67, align 4
  %idxprom68 = sext i32 %79 to i64
  %arrayidx69 = getelementptr inbounds i32, i32* %77, i64 %idxprom68
  store i32 %76, i32* %arrayidx69, align 4
  %80 = load i32*, i32** %a.addr, align 8
  %81 = load i32*, i32** %tu.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %81, i64 1
  %82 = load i32, i32* %arrayidx70, align 4
  %idxprom71 = sext i32 %82 to i64
  %arrayidx72 = getelementptr inbounds i32, i32* %80, i64 %idxprom71
  %83 = load i32, i32* %arrayidx72, align 4
  %84 = load i32*, i32** %b.addr, align 8
  %85 = load i32*, i32** %tu.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %85, i64 3
  %86 = load i32, i32* %arrayidx73, align 4
  %idxprom74 = sext i32 %86 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %84, i64 %idxprom74
  store i32 %83, i32* %arrayidx75, align 4
  br label %if.end

if.end:                                           ; preds = %if.then51, %if.else49
  br label %if.end76

if.end76:                                         ; preds = %if.end, %if.then24
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_raw(i32* %a, i32* %b, i32 %type) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  %2 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %0, i32* %1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @R_T1, i64 0, i64 0), i32 %2)
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32*, i32** %b.addr, align 8
  %5 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %3, i32* %4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @R_T2, i64 0, i64 0), i32 %5)
  %6 = load i32*, i32** %a.addr, align 8
  %7 = load i32*, i32** %b.addr, align 8
  %8 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %6, i32* %7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @R_T3, i64 0, i64 0), i32 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @R_raw(i32* %0, i32* %1, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R2(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @R_raw(i32* %0, i32* %1, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_r(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @R_raw(i32* %0, i32* %1, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @U_raw(i32* %a, i32* %b, i32 %type) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  %2 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %0, i32* %1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @U_T1, i64 0, i64 0), i32 %2)
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32*, i32** %b.addr, align 8
  %5 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %3, i32* %4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @U_T2, i64 0, i64 0), i32 %5)
  %6 = load i32*, i32** %a.addr, align 8
  %7 = load i32*, i32** %b.addr, align 8
  %8 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %6, i32* %7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @U_T3, i64 0, i64 0), i32 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @U(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @U_raw(i32* %0, i32* %1, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @U2(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @U_raw(i32* %0, i32* %1, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @U_r(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @U_raw(i32* %0, i32* %1, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_raw(i32* %a, i32* %b, i32 %type) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  %2 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %0, i32* %1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @F_T1, i64 0, i64 0), i32 %2)
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32*, i32** %b.addr, align 8
  %5 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %3, i32* %4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @F_T2, i64 0, i64 0), i32 %5)
  %6 = load i32*, i32** %a.addr, align 8
  %7 = load i32*, i32** %b.addr, align 8
  %8 = load i32, i32* %type.addr, align 4
  call void @four_swap(i32* %6, i32* %7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @F_T3, i64 0, i64 0), i32 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @F_raw(i32* %0, i32* %1, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F2(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @F_raw(i32* %0, i32* %1, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_r(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32*, i32** %b.addr, align 8
  call void @F_raw(i32* %0, i32* %1, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_leaf(%struct.CUBE_TREE* %pm) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.CUBE_TREE*, align 8
  %turntype = alloca i32, align 4
  %dn = alloca i32, align 4
  %pd = alloca %struct.CUBE_TREE*, align 8
  store %struct.CUBE_TREE* %pm, %struct.CUBE_TREE** %pm.addr, align 8
  store i32 0, i32* %dn, align 4
  %0 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pm.addr, align 8
  %depth = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %0, i32 0, i32 4
  %1 = load i32, i32* %depth, align 4
  %cmp = icmp sge i32 %1, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %turntype, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %turntype, align 4
  %3 = load i32, i32* @Free, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %turntype, align 4
  %rem = srem i32 %4, 3
  %5 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pm.addr, align 8
  %sex = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %5, i32 0, i32 3
  %6 = load i32, i32* %sex, align 8
  %rem2 = srem i32 %6, 3
  %cmp3 = icmp eq i32 %rem, %rem2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %call = call noalias align 16 i8* @malloc(i64 160) #3
  %7 = bitcast i8* %call to %struct.CUBE_TREE*
  store %struct.CUBE_TREE* %7, %struct.CUBE_TREE** %pd, align 8
  %8 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pd, align 8
  %9 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pm.addr, align 8
  %daughter = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %9, i32 0, i32 1
  %10 = load i32, i32* %dn, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.CUBE_TREE*], [6 x %struct.CUBE_TREE*]* %daughter, i64 0, i64 %idxprom
  store %struct.CUBE_TREE* %8, %struct.CUBE_TREE** %arrayidx, align 8
  %11 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pm.addr, align 8
  %12 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pd, align 8
  %mother = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %12, i32 0, i32 0
  store %struct.CUBE_TREE* %11, %struct.CUBE_TREE** %mother, align 8
  %13 = load i32, i32* %turntype, align 4
  %14 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pd, align 8
  %sex6 = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %14, i32 0, i32 3
  store i32 %13, i32* %sex6, align 8
  %15 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pm.addr, align 8
  %depth7 = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %15, i32 0, i32 4
  %16 = load i32, i32* %depth7, align 4
  %add = add nsw i32 %16, 1
  %17 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pd, align 8
  %depth8 = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %17, i32 0, i32 4
  store i32 %add, i32* %depth8, align 4
  %18 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pm.addr, align 8
  %cube = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %18, i32 0, i32 2
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %cube, i64 0, i64 0
  %19 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pd, align 8
  %cube9 = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %19, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [24 x i32], [24 x i32]* %cube9, i64 0, i64 0
  call void @cube_copy(i32* %arraydecay, i32* %arraydecay10)
  %20 = load i32, i32* %turntype, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds [9 x void (i32*, i32*)*], [9 x void (i32*, i32*)*]* @Turn, i64 0, i64 %idxprom11
  %21 = load void (i32*, i32*)*, void (i32*, i32*)** %arrayidx12, align 8
  %22 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pm.addr, align 8
  %cube13 = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %22, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [24 x i32], [24 x i32]* %cube13, i64 0, i64 0
  %23 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pd, align 8
  %cube15 = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %23, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [24 x i32], [24 x i32]* %cube15, i64 0, i64 0
  call void %21(i32* %arraydecay14, i32* %arraydecay16)
  %24 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %pd, align 8
  %call17 = call i32 @add_leaf(%struct.CUBE_TREE* %24)
  %25 = load i32, i32* %dn, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %dn, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %if.then4
  %26 = load i32, i32* %turntype, align 4
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, i32* %turntype, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %ptree = alloca %struct.CUBE_TREE*, align 8
  %pd = alloca %struct.CUBE_TREE*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 160) #3
  %0 = bitcast i8* %call to %struct.CUBE_TREE*
  store %struct.CUBE_TREE* %0, %struct.CUBE_TREE** %ptree, align 8
  %1 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %ptree, align 8
  %mother = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %1, i32 0, i32 0
  store %struct.CUBE_TREE* null, %struct.CUBE_TREE** %mother, align 8
  %2 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %ptree, align 8
  %depth = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %2, i32 0, i32 4
  store i32 0, i32* %depth, align 4
  %3 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %ptree, align 8
  %sex = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %3, i32 0, i32 3
  store i32 1, i32* %sex, align 8
  %4 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %ptree, align 8
  %cube = getelementptr inbounds %struct.CUBE_TREE, %struct.CUBE_TREE* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %cube, i64 0, i64 0
  call void @initial(i32* %arraydecay)
  %5 = load %struct.CUBE_TREE*, %struct.CUBE_TREE** %ptree, align 8
  %call1 = call i32 @add_leaf(%struct.CUBE_TREE* %5)
  %call2 = call i32 @sleep(i32 10)
  ret i32 0
}

declare dso_local i32 @sleep(i32) #2

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
