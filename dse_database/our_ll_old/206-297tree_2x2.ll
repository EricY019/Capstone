; ModuleID = './code/206-297tree_2x2.c'
source_filename = "./code/206-297tree_2x2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.CUBE_TREE = type { ptr, [6 x ptr], [24 x i32], i32, i32 }

@L_value = global i32 11, align 4
@R_T1 = global [4 x i32] [i32 8, i32 9, i32 11, i32 10], align 4
@R_T2 = global [4 x i32] [i32 1, i32 7, i32 19, i32 15], align 4
@R_T3 = global [4 x i32] [i32 5, i32 17, i32 13, i32 3], align 4
@U_T1 = global [4 x i32] [i32 5, i32 4, i32 6, i32 7], align 4
@U_T2 = global [4 x i32] [i32 1, i32 20, i32 16, i32 9], align 4
@U_T3 = global [4 x i32] [i32 0, i32 21, i32 17, i32 8], align 4
@F_T1 = global [4 x i32] [i32 0, i32 1, i32 3, i32 2], align 4
@F_T2 = global [4 x i32] [i32 5, i32 10, i32 14, i32 20], align 4
@F_T3 = global [4 x i32] [i32 4, i32 8, i32 15, i32 22], align 4
@Turn = global [9 x ptr] [ptr @R, ptr @U, ptr @F, ptr @R_r, ptr @U_r, ptr @F_r, ptr @R2, ptr @U2, ptr @F2], align 8
@Rev = global [9 x ptr] [ptr @R_r, ptr @U_r, ptr @F_r, ptr @R, ptr @U, ptr @F, ptr @R2, ptr @U2, ptr @F2], align 8
@Free = global i32 9, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @initial(ptr noundef %cube) #0 {
entry:
  %cube.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cube, ptr %cube.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %div = sdiv i32 %1, 4
  %2 = load ptr, ptr %cube.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  store i32 %div, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @cube_copy(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %a.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 %idxprom1
  store i32 %3, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @four_swap(ptr noundef %a, ptr noundef %b, ptr noundef %tu, i32 noundef %type) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %tu.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %tu, ptr %tu.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load i32, ptr %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8
  %2 = load ptr, ptr %tu.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = load ptr, ptr %b.addr, align 8
  %6 = load ptr, ptr %tu.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 0
  %7 = load i32, ptr %arrayidx2, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %5, i64 %idxprom3
  store i32 %4, ptr %arrayidx4, align 4
  %8 = load ptr, ptr %a.addr, align 8
  %9 = load ptr, ptr %tu.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 2
  %10 = load i32, ptr %arrayidx5, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4
  %12 = load ptr, ptr %b.addr, align 8
  %13 = load ptr, ptr %tu.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %13, i64 1
  %14 = load i32, ptr %arrayidx8, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %12, i64 %idxprom9
  store i32 %11, ptr %arrayidx10, align 4
  %15 = load ptr, ptr %a.addr, align 8
  %16 = load ptr, ptr %tu.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx11, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %15, i64 %idxprom12
  %18 = load i32, ptr %arrayidx13, align 4
  %19 = load ptr, ptr %b.addr, align 8
  %20 = load ptr, ptr %tu.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %20, i64 2
  %21 = load i32, ptr %arrayidx14, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %19, i64 %idxprom15
  store i32 %18, ptr %arrayidx16, align 4
  %22 = load ptr, ptr %a.addr, align 8
  %23 = load ptr, ptr %tu.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %23, i64 0
  %24 = load i32, ptr %arrayidx17, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %22, i64 %idxprom18
  %25 = load i32, ptr %arrayidx19, align 4
  %26 = load ptr, ptr %b.addr, align 8
  %27 = load ptr, ptr %tu.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %27, i64 3
  %28 = load i32, ptr %arrayidx20, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %26, i64 %idxprom21
  store i32 %25, ptr %arrayidx22, align 4
  br label %if.end77

if.else:                                          ; preds = %entry
  %29 = load i32, ptr %type.addr, align 4
  %cmp23 = icmp eq i32 %29, 0
  br i1 %cmp23, label %if.then24, label %if.else49

if.then24:                                        ; preds = %if.else
  %30 = load ptr, ptr %a.addr, align 8
  %31 = load ptr, ptr %tu.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %31, i64 3
  %32 = load i32, ptr %arrayidx25, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %30, i64 %idxprom26
  %33 = load i32, ptr %arrayidx27, align 4
  %34 = load ptr, ptr %b.addr, align 8
  %35 = load ptr, ptr %tu.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %35, i64 0
  %36 = load i32, ptr %arrayidx28, align 4
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %34, i64 %idxprom29
  store i32 %33, ptr %arrayidx30, align 4
  %37 = load ptr, ptr %a.addr, align 8
  %38 = load ptr, ptr %tu.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %38, i64 2
  %39 = load i32, ptr %arrayidx31, align 4
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %37, i64 %idxprom32
  %40 = load i32, ptr %arrayidx33, align 4
  %41 = load ptr, ptr %b.addr, align 8
  %42 = load ptr, ptr %tu.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %42, i64 3
  %43 = load i32, ptr %arrayidx34, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %41, i64 %idxprom35
  store i32 %40, ptr %arrayidx36, align 4
  %44 = load ptr, ptr %a.addr, align 8
  %45 = load ptr, ptr %tu.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %45, i64 1
  %46 = load i32, ptr %arrayidx37, align 4
  %idxprom38 = sext i32 %46 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %44, i64 %idxprom38
  %47 = load i32, ptr %arrayidx39, align 4
  %48 = load ptr, ptr %b.addr, align 8
  %49 = load ptr, ptr %tu.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %49, i64 2
  %50 = load i32, ptr %arrayidx40, align 4
  %idxprom41 = sext i32 %50 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %48, i64 %idxprom41
  store i32 %47, ptr %arrayidx42, align 4
  %51 = load ptr, ptr %a.addr, align 8
  %52 = load ptr, ptr %tu.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %52, i64 0
  %53 = load i32, ptr %arrayidx43, align 4
  %idxprom44 = sext i32 %53 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %51, i64 %idxprom44
  %54 = load i32, ptr %arrayidx45, align 4
  %55 = load ptr, ptr %b.addr, align 8
  %56 = load ptr, ptr %tu.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %56, i64 1
  %57 = load i32, ptr %arrayidx46, align 4
  %idxprom47 = sext i32 %57 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %55, i64 %idxprom47
  store i32 %54, ptr %arrayidx48, align 4
  br label %if.end76

if.else49:                                        ; preds = %if.else
  %58 = load i32, ptr %type.addr, align 4
  %cmp50 = icmp eq i32 %58, 2
  br i1 %cmp50, label %if.then51, label %if.end

if.then51:                                        ; preds = %if.else49
  %59 = load ptr, ptr %a.addr, align 8
  %60 = load ptr, ptr %tu.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %60, i64 2
  %61 = load i32, ptr %arrayidx52, align 4
  %idxprom53 = sext i32 %61 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %59, i64 %idxprom53
  %62 = load i32, ptr %arrayidx54, align 4
  %63 = load ptr, ptr %b.addr, align 8
  %64 = load ptr, ptr %tu.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %64, i64 0
  %65 = load i32, ptr %arrayidx55, align 4
  %idxprom56 = sext i32 %65 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %63, i64 %idxprom56
  store i32 %62, ptr %arrayidx57, align 4
  %66 = load ptr, ptr %a.addr, align 8
  %67 = load ptr, ptr %tu.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %67, i64 0
  %68 = load i32, ptr %arrayidx58, align 4
  %idxprom59 = sext i32 %68 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %66, i64 %idxprom59
  %69 = load i32, ptr %arrayidx60, align 4
  %70 = load ptr, ptr %b.addr, align 8
  %71 = load ptr, ptr %tu.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %71, i64 2
  %72 = load i32, ptr %arrayidx61, align 4
  %idxprom62 = sext i32 %72 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %70, i64 %idxprom62
  store i32 %69, ptr %arrayidx63, align 4
  %73 = load ptr, ptr %a.addr, align 8
  %74 = load ptr, ptr %tu.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %74, i64 3
  %75 = load i32, ptr %arrayidx64, align 4
  %idxprom65 = sext i32 %75 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %73, i64 %idxprom65
  %76 = load i32, ptr %arrayidx66, align 4
  %77 = load ptr, ptr %b.addr, align 8
  %78 = load ptr, ptr %tu.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %78, i64 1
  %79 = load i32, ptr %arrayidx67, align 4
  %idxprom68 = sext i32 %79 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %77, i64 %idxprom68
  store i32 %76, ptr %arrayidx69, align 4
  %80 = load ptr, ptr %a.addr, align 8
  %81 = load ptr, ptr %tu.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %81, i64 1
  %82 = load i32, ptr %arrayidx70, align 4
  %idxprom71 = sext i32 %82 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %80, i64 %idxprom71
  %83 = load i32, ptr %arrayidx72, align 4
  %84 = load ptr, ptr %b.addr, align 8
  %85 = load ptr, ptr %tu.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %85, i64 3
  %86 = load i32, ptr %arrayidx73, align 4
  %idxprom74 = sext i32 %86 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %84, i64 %idxprom74
  store i32 %83, ptr %arrayidx75, align 4
  br label %if.end

if.end:                                           ; preds = %if.then51, %if.else49
  br label %if.end76

if.end76:                                         ; preds = %if.end, %if.then24
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @R_raw(ptr noundef %a, ptr noundef %b, i32 noundef %type) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %2 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %0, ptr noundef %1, ptr noundef @R_T1, i32 noundef %2)
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %3, ptr noundef %4, ptr noundef @R_T2, i32 noundef %5)
  %6 = load ptr, ptr %a.addr, align 8
  %7 = load ptr, ptr %b.addr, align 8
  %8 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %6, ptr noundef %7, ptr noundef @R_T3, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @R(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @R_raw(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @R2(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @R_raw(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @R_r(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @R_raw(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @U_raw(ptr noundef %a, ptr noundef %b, i32 noundef %type) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %2 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %0, ptr noundef %1, ptr noundef @U_T1, i32 noundef %2)
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %3, ptr noundef %4, ptr noundef @U_T2, i32 noundef %5)
  %6 = load ptr, ptr %a.addr, align 8
  %7 = load ptr, ptr %b.addr, align 8
  %8 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %6, ptr noundef %7, ptr noundef @U_T3, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @U(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @U_raw(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @U2(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @U_raw(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @U_r(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @U_raw(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @F_raw(ptr noundef %a, ptr noundef %b, i32 noundef %type) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %2 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %0, ptr noundef %1, ptr noundef @F_T1, i32 noundef %2)
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %3, ptr noundef %4, ptr noundef @F_T2, i32 noundef %5)
  %6 = load ptr, ptr %a.addr, align 8
  %7 = load ptr, ptr %b.addr, align 8
  %8 = load i32, ptr %type.addr, align 4
  call void @four_swap(ptr noundef %6, ptr noundef %7, ptr noundef @F_T3, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @F(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @F_raw(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @F2(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @F_raw(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @F_r(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  call void @F_raw(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @add_leaf(ptr noundef %pm) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca ptr, align 8
  %turntype = alloca i32, align 4
  %dn = alloca i32, align 4
  %pd = alloca ptr, align 8
  store ptr %pm, ptr %pm.addr, align 8
  store i32 0, ptr %dn, align 4
  %0 = load ptr, ptr %pm.addr, align 8
  %depth = getelementptr inbounds %struct.CUBE_TREE, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %depth, align 4
  %cmp = icmp sge i32 %1, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %turntype, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %turntype, align 4
  %3 = load i32, ptr @Free, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %turntype, align 4
  %rem = srem i32 %4, 3
  %5 = load ptr, ptr %pm.addr, align 8
  %sex = getelementptr inbounds %struct.CUBE_TREE, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %sex, align 8
  %rem2 = srem i32 %6, 3
  %cmp3 = icmp eq i32 %rem, %rem2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %call = call ptr @malloc(i64 noundef 160) #3
  store ptr %call, ptr %pd, align 8
  %7 = load ptr, ptr %pd, align 8
  %8 = load ptr, ptr %pm.addr, align 8
  %daughter = getelementptr inbounds %struct.CUBE_TREE, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %dn, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %daughter, i64 0, i64 %idxprom
  store ptr %7, ptr %arrayidx, align 8
  %10 = load ptr, ptr %pm.addr, align 8
  %11 = load ptr, ptr %pd, align 8
  %mother = getelementptr inbounds %struct.CUBE_TREE, ptr %11, i32 0, i32 0
  store ptr %10, ptr %mother, align 8
  %12 = load i32, ptr %turntype, align 4
  %13 = load ptr, ptr %pd, align 8
  %sex6 = getelementptr inbounds %struct.CUBE_TREE, ptr %13, i32 0, i32 3
  store i32 %12, ptr %sex6, align 8
  %14 = load ptr, ptr %pm.addr, align 8
  %depth7 = getelementptr inbounds %struct.CUBE_TREE, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %depth7, align 4
  %add = add nsw i32 %15, 1
  %16 = load ptr, ptr %pd, align 8
  %depth8 = getelementptr inbounds %struct.CUBE_TREE, ptr %16, i32 0, i32 4
  store i32 %add, ptr %depth8, align 4
  %17 = load ptr, ptr %pm.addr, align 8
  %cube = getelementptr inbounds %struct.CUBE_TREE, ptr %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [24 x i32], ptr %cube, i64 0, i64 0
  %18 = load ptr, ptr %pd, align 8
  %cube9 = getelementptr inbounds %struct.CUBE_TREE, ptr %18, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [24 x i32], ptr %cube9, i64 0, i64 0
  call void @cube_copy(ptr noundef %arraydecay, ptr noundef %arraydecay10)
  %19 = load i32, ptr %turntype, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [9 x ptr], ptr @Turn, i64 0, i64 %idxprom11
  %20 = load ptr, ptr %arrayidx12, align 8
  %21 = load ptr, ptr %pm.addr, align 8
  %cube13 = getelementptr inbounds %struct.CUBE_TREE, ptr %21, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [24 x i32], ptr %cube13, i64 0, i64 0
  %22 = load ptr, ptr %pd, align 8
  %cube15 = getelementptr inbounds %struct.CUBE_TREE, ptr %22, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [24 x i32], ptr %cube15, i64 0, i64 0
  call void %20(ptr noundef %arraydecay14, ptr noundef %arraydecay16)
  %23 = load ptr, ptr %pd, align 8
  %call17 = call i32 @add_leaf(ptr noundef %23)
  %24 = load i32, ptr %dn, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %dn, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %if.then4
  %25 = load i32, ptr %turntype, align 4
  %inc18 = add nsw i32 %25, 1
  store i32 %inc18, ptr %turntype, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ptree = alloca ptr, align 8
  %pd = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @malloc(i64 noundef 160) #3
  store ptr %call, ptr %ptree, align 8
  %0 = load ptr, ptr %ptree, align 8
  %mother = getelementptr inbounds %struct.CUBE_TREE, ptr %0, i32 0, i32 0
  store ptr null, ptr %mother, align 8
  %1 = load ptr, ptr %ptree, align 8
  %depth = getelementptr inbounds %struct.CUBE_TREE, ptr %1, i32 0, i32 4
  store i32 0, ptr %depth, align 4
  %2 = load ptr, ptr %ptree, align 8
  %sex = getelementptr inbounds %struct.CUBE_TREE, ptr %2, i32 0, i32 3
  store i32 1, ptr %sex, align 8
  %3 = load ptr, ptr %ptree, align 8
  %cube = getelementptr inbounds %struct.CUBE_TREE, ptr %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [24 x i32], ptr %cube, i64 0, i64 0
  call void @initial(ptr noundef %arraydecay)
  %4 = load ptr, ptr %ptree, align 8
  %call1 = call i32 @add_leaf(ptr noundef %4)
  %call2 = call i32 @"\01_sleep"(i32 noundef 10)
  ret i32 0
}

declare i32 @"\01_sleep"(i32 noundef) #2

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
