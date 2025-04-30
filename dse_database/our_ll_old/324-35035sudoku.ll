; ModuleID = './code/324-35035sudoku.c'
source_filename = "./code/324-35035sudoku.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@grid = global <{ <{ i32, [8 x i32] }>, [9 x i32], [9 x i32], [9 x i32], [9 x i32], [9 x i32], [9 x i32], [9 x i32], [9 x i32] }> <{ <{ i32, [8 x i32] }> <{ i32 8, [8 x i32] zeroinitializer }>, [9 x i32] [i32 0, i32 0, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 7, i32 0, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0], [9 x i32] [i32 0, i32 5, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 5, i32 7, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 0], [9 x i32] [i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 6, i32 8], [9 x i32] [i32 0, i32 0, i32 8, i32 5, i32 0, i32 0, i32 0, i32 1, i32 0], [9 x i32] [i32 0, i32 9, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0] }>, align 4
@.str = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @SOLVE_SUDOKU(ptr noundef @grid)
  call void @PRINT_GRID(ptr noundef @grid)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @SOLVE_SUDOKU(ptr noundef %grid) #0 {
entry:
  %retval = alloca i32, align 4
  %grid.addr = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %num = alloca i32, align 4
  store ptr %grid, ptr %grid.addr, align 8
  %0 = load ptr, ptr %grid.addr, align 8
  %call = call i32 @FIND_UNASSIGNED(ptr noundef %0, ptr noundef %row, ptr noundef %col)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, ptr %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %num, align 4
  %cmp1 = icmp sle i32 %1, 9
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %grid.addr, align 8
  %3 = load i32, ptr %row, align 4
  %4 = load i32, ptr %col, align 4
  %5 = load i32, ptr %num, align 4
  %call2 = call i32 @IS_SAFE(ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %for.body
  %6 = load i32, ptr %num, align 4
  %7 = load ptr, ptr %grid.addr, align 8
  %8 = load i32, ptr %row, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr %7, i64 %idxprom
  %9 = load i32, ptr %col, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [9 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  store i32 %6, ptr %arrayidx6, align 4
  %10 = load ptr, ptr %grid.addr, align 8
  %call7 = call i32 @SOLVE_SUDOKU(ptr noundef %10)
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then4
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then4
  %11 = load ptr, ptr %grid.addr, align 8
  %12 = load i32, ptr %row, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [9 x i32], ptr %11, i64 %idxprom11
  %13 = load i32, ptr %col, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [9 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  store i32 0, ptr %arrayidx14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %14 = load i32, ptr %num, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %num, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then9, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @PRINT_GRID(ptr noundef %grid) #0 {
entry:
  %grid.addr = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store ptr %grid, ptr %grid.addr, align 8
  %call = call i32 @"\01_system"(ptr noundef @.str)
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %row, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %col, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %col, align 4
  %cmp2 = icmp slt i32 %1, 9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %grid.addr, align 8
  %3 = load i32, ptr %row, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %col, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [9 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %col, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %col, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, ptr %row, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %row, align 4
  br label %for.cond, !llvm.loop !8

for.end10:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @FIND_UNASSIGNED(ptr noundef %grid, ptr noundef %row, ptr noundef %col) #0 {
entry:
  %retval = alloca i32, align 4
  %grid.addr = alloca ptr, align 8
  %row.addr = alloca ptr, align 8
  %col.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %grid, ptr %grid.addr, align 8
  store ptr %row, ptr %row.addr, align 8
  store ptr %col, ptr %col.addr, align 8
  %0 = load ptr, ptr %row.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %r, align 4
  %2 = load ptr, ptr %col.addr, align 8
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %c, align 4
  store i32 0, ptr %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %4 = load i32, ptr %r, align 4
  %cmp = icmp slt i32 %4, 9
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %c, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %c, align 4
  %cmp2 = icmp slt i32 %5, 9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %grid.addr, align 8
  %7 = load i32, ptr %r, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr %6, i64 %idxprom
  %8 = load i32, ptr %c, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [9 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %9 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %10 = load i32, ptr %r, align 4
  %11 = load ptr, ptr %row.addr, align 8
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr %c, align 4
  %13 = load ptr, ptr %col.addr, align 8
  store i32 %12, ptr %13, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %c, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %15 = load i32, ptr %r, align 4
  %inc8 = add nsw i32 %15, 1
  store i32 %inc8, ptr %r, align 4
  br label %for.cond, !llvm.loop !10

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end9, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @USED_IN_LINE(ptr noundef %grid, i32 noundef %row, i32 noundef %col, i32 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %grid.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  store ptr %grid, ptr %grid.addr, align 8
  store i32 %row, ptr %row.addr, align 4
  store i32 %col, ptr %col.addr, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 0, ptr %col.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %col.addr, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %grid.addr, align 8
  %2 = load i32, ptr %row.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr %1, i64 %idxprom
  %3 = load i32, ptr %col.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [9 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4
  %5 = load i32, ptr %num.addr, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %col.addr, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %col.addr, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @USED_IN_COLUMN(ptr noundef %grid, i32 noundef %row, i32 noundef %col, i32 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %grid.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  store ptr %grid, ptr %grid.addr, align 8
  store i32 %row, ptr %row.addr, align 4
  store i32 %col, ptr %col.addr, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 0, ptr %row.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %row.addr, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %grid.addr, align 8
  %2 = load i32, ptr %row.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr %1, i64 %idxprom
  %3 = load i32, ptr %col.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [9 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4
  %5 = load i32, ptr %num.addr, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %row.addr, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %row.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @USED_IN_BOX(ptr noundef %grid, i32 noundef %star_row, i32 noundef %start_col, i32 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %grid.addr = alloca ptr, align 8
  %star_row.addr = alloca i32, align 4
  %start_col.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store ptr %grid, ptr %grid.addr, align 8
  store i32 %star_row, ptr %star_row.addr, align 4
  store i32 %start_col, ptr %start_col.addr, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %row, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %col, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %col, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %grid.addr, align 8
  %3 = load i32, ptr %row, align 4
  %4 = load i32, ptr %star_row.addr, align 4
  %add = add nsw i32 %3, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr %2, i64 %idxprom
  %5 = load i32, ptr %col, align 4
  %6 = load i32, ptr %start_col.addr, align 4
  %add4 = add nsw i32 %5, %6
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds [9 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4
  %8 = load i32, ptr %num.addr, align 4
  %cmp7 = icmp eq i32 %7, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %col, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %col, align 4
  br label %for.cond1, !llvm.loop !13

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %10 = load i32, ptr %row, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, ptr %row, align 4
  br label %for.cond, !llvm.loop !14

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end10, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @IS_SAFE(ptr noundef %grid, i32 noundef %row, i32 noundef %col, i32 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %grid.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  store ptr %grid, ptr %grid.addr, align 8
  store i32 %row, ptr %row.addr, align 4
  store i32 %col, ptr %col.addr, align 4
  store i32 %num, ptr %num.addr, align 4
  %0 = load ptr, ptr %grid.addr, align 8
  %1 = load i32, ptr %row.addr, align 4
  %2 = load i32, ptr %col.addr, align 4
  %3 = load i32, ptr %num.addr, align 4
  %call = call i32 @USED_IN_LINE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %grid.addr, align 8
  %5 = load i32, ptr %row.addr, align 4
  %6 = load i32, ptr %col.addr, align 4
  %7 = load i32, ptr %num.addr, align 4
  %call1 = call i32 @USED_IN_COLUMN(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %grid.addr, align 8
  %9 = load i32, ptr %row.addr, align 4
  %10 = load i32, ptr %row.addr, align 4
  %rem = srem i32 %10, 3
  %sub = sub nsw i32 %9, %rem
  %11 = load i32, ptr %col.addr, align 4
  %12 = load i32, ptr %col.addr, align 4
  %rem4 = srem i32 %12, 3
  %sub5 = sub nsw i32 %11, %rem4
  %13 = load i32, ptr %num.addr, align 4
  %call6 = call i32 @USED_IN_BOX(ptr noundef %8, i32 noundef %sub, i32 noundef %sub5, i32 noundef %13)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @"\01_system"(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
