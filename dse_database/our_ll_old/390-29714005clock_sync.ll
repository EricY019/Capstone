; ModuleID = './code/390-29714005clock_sync.c'
source_filename = "./code/390-29714005clock_sync.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@connections = global [10 x [5 x i32]] [[5 x i32] [i32 0, i32 1, i32 2, i32 -1, i32 -1], [5 x i32] [i32 3, i32 7, i32 9, i32 11, i32 -1], [5 x i32] [i32 4, i32 10, i32 14, i32 15, i32 -1], [5 x i32] [i32 0, i32 4, i32 5, i32 6, i32 7], [5 x i32] [i32 6, i32 7, i32 8, i32 10, i32 12], [5 x i32] [i32 0, i32 2, i32 14, i32 15, i32 -1], [5 x i32] [i32 3, i32 14, i32 15, i32 -1, i32 -1], [5 x i32] [i32 4, i32 5, i32 7, i32 14, i32 15], [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], [5 x i32] [i32 3, i32 4, i32 5, i32 9, i32 13]], align 4
@__const.main.case1 = private unnamed_addr constant [16 x i32] [i32 12, i32 6, i32 6, i32 6, i32 6, i32 6, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12], align 4
@__const.main.case2 = private unnamed_addr constant [16 x i32] [i32 12, i32 9, i32 3, i32 12, i32 6, i32 6, i32 9, i32 3, i32 12, i32 9, i32 12, i32 9, i32 12, i32 12, i32 6, i32 6], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @all_twelve(ptr noundef %current_locations) #0 {
entry:
  %retval = alloca i32, align 4
  %current_locations.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %current_locations, ptr %current_locations.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %current_locations.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp ne i32 %3, 12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @set(ptr noundef %current_locations, ptr noundef %affected, i32 noundef %value) #0 {
entry:
  %current_locations.addr = alloca ptr, align 8
  %affected.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %current_locations, ptr %current_locations.addr, align 8
  store ptr %affected, ptr %affected.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %affected.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp ne i32 -1, %3
  br i1 %cmp1, label %if.then, label %if.end40

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %current_locations.addr, align 8
  %5 = load ptr, ptr %affected.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2
  %7 = load i32, ptr %arrayidx3, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %4, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4
  %9 = load i32, ptr %value.addr, align 4
  %add = add nsw i32 %8, %9
  %10 = load ptr, ptr %current_locations.addr, align 8
  %11 = load ptr, ptr %affected.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %11, i64 %idxprom6
  %13 = load i32, ptr %arrayidx7, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 %idxprom8
  store i32 %add, ptr %arrayidx9, align 4
  %14 = load ptr, ptr %current_locations.addr, align 8
  %15 = load ptr, ptr %affected.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %15, i64 %idxprom10
  %17 = load i32, ptr %arrayidx11, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %14, i64 %idxprom12
  %18 = load i32, ptr %arrayidx13, align 4
  %cmp14 = icmp sgt i32 %18, 12
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %19 = load ptr, ptr %current_locations.addr, align 8
  %20 = load ptr, ptr %affected.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %20, i64 %idxprom16
  %22 = load i32, ptr %arrayidx17, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %19, i64 %idxprom18
  %23 = load i32, ptr %arrayidx19, align 4
  %sub = sub nsw i32 %23, 12
  %24 = load ptr, ptr %current_locations.addr, align 8
  %25 = load ptr, ptr %affected.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %25, i64 %idxprom20
  %27 = load i32, ptr %arrayidx21, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %24, i64 %idxprom22
  store i32 %sub, ptr %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %28 = load ptr, ptr %current_locations.addr, align 8
  %29 = load ptr, ptr %affected.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %29, i64 %idxprom24
  %31 = load i32, ptr %arrayidx25, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %28, i64 %idxprom26
  %32 = load i32, ptr %arrayidx27, align 4
  %cmp28 = icmp sle i32 %32, 0
  br i1 %cmp28, label %if.then29, label %if.end39

if.then29:                                        ; preds = %if.end
  %33 = load ptr, ptr %current_locations.addr, align 8
  %34 = load ptr, ptr %affected.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %35 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %34, i64 %idxprom30
  %36 = load i32, ptr %arrayidx31, align 4
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %33, i64 %idxprom32
  %37 = load i32, ptr %arrayidx33, align 4
  %add34 = add nsw i32 %37, 12
  %38 = load ptr, ptr %current_locations.addr, align 8
  %39 = load ptr, ptr %affected.addr, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %39, i64 %idxprom35
  %41 = load i32, ptr %arrayidx36, align 4
  %idxprom37 = sext i32 %41 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %38, i64 %idxprom37
  store i32 %add34, ptr %arrayidx38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end40
  %42 = load i32, ptr %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @min_switch(ptr noundef %current_locations, i32 noundef %switch_idx) #0 {
entry:
  %retval = alloca i32, align 4
  %current_locations.addr = alloca ptr, align 8
  %switch_idx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %affected = alloca ptr, align 8
  %no_switch = alloca i32, align 4
  %switch_once = alloca i32, align 4
  %switch_twice = alloca i32, align 4
  %switch_third = alloca i32, align 4
  store ptr %current_locations, ptr %current_locations.addr, align 8
  store i32 %switch_idx, ptr %switch_idx.addr, align 4
  %0 = load i32, ptr %switch_idx.addr, align 4
  %cmp = icmp sge i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %current_locations.addr, align 8
  %call = call i32 @all_twelve(ptr noundef %1)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  %2 = load i32, ptr %switch_idx.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x [5 x i32]], ptr @connections, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [5 x i32], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %affected, align 8
  %3 = load ptr, ptr %current_locations.addr, align 8
  %4 = load i32, ptr %switch_idx.addr, align 4
  %add = add nsw i32 %4, 1
  %call1 = call i32 @min_switch(ptr noundef %3, i32 noundef %add)
  store i32 %call1, ptr %no_switch, align 4
  %5 = load ptr, ptr %current_locations.addr, align 8
  %6 = load ptr, ptr %affected, align 8
  call void @set(ptr noundef %5, ptr noundef %6, i32 noundef 3)
  %7 = load ptr, ptr %current_locations.addr, align 8
  %8 = load i32, ptr %switch_idx.addr, align 4
  %add2 = add nsw i32 %8, 1
  %call3 = call i32 @min_switch(ptr noundef %7, i32 noundef %add2)
  store i32 %call3, ptr %switch_once, align 4
  %9 = load i32, ptr %switch_once, align 4
  %cmp4 = icmp ne i32 %9, -1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load i32, ptr %switch_once, align 4
  %add6 = add nsw i32 %10, 1
  store i32 %add6, ptr %switch_once, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %11 = load ptr, ptr %current_locations.addr, align 8
  %12 = load ptr, ptr %affected, align 8
  call void @set(ptr noundef %11, ptr noundef %12, i32 noundef -3)
  %13 = load ptr, ptr %current_locations.addr, align 8
  %14 = load ptr, ptr %affected, align 8
  call void @set(ptr noundef %13, ptr noundef %14, i32 noundef 6)
  %15 = load ptr, ptr %current_locations.addr, align 8
  %16 = load i32, ptr %switch_idx.addr, align 4
  %add8 = add nsw i32 %16, 1
  %call9 = call i32 @min_switch(ptr noundef %15, i32 noundef %add8)
  store i32 %call9, ptr %switch_twice, align 4
  %17 = load i32, ptr %switch_twice, align 4
  %cmp10 = icmp ne i32 %17, -1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %18 = load i32, ptr %switch_twice, align 4
  %add12 = add nsw i32 %18, 2
  store i32 %add12, ptr %switch_twice, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %19 = load ptr, ptr %current_locations.addr, align 8
  %20 = load ptr, ptr %affected, align 8
  call void @set(ptr noundef %19, ptr noundef %20, i32 noundef -6)
  %21 = load ptr, ptr %current_locations.addr, align 8
  %22 = load ptr, ptr %affected, align 8
  call void @set(ptr noundef %21, ptr noundef %22, i32 noundef 9)
  %23 = load ptr, ptr %current_locations.addr, align 8
  %24 = load i32, ptr %switch_idx.addr, align 4
  %add14 = add nsw i32 %24, 1
  %call15 = call i32 @min_switch(ptr noundef %23, i32 noundef %add14)
  store i32 %call15, ptr %switch_third, align 4
  %25 = load i32, ptr %switch_third, align 4
  %cmp16 = icmp ne i32 %25, -1
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %26 = load i32, ptr %switch_third, align 4
  %add18 = add nsw i32 %26, 3
  store i32 %add18, ptr %switch_third, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  %27 = load ptr, ptr %current_locations.addr, align 8
  %28 = load ptr, ptr %affected, align 8
  call void @set(ptr noundef %27, ptr noundef %28, i32 noundef -9)
  %29 = load i32, ptr %switch_once, align 4
  %cmp20 = icmp ne i32 %29, -1
  br i1 %cmp20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end19
  %30 = load i32, ptr %no_switch, align 4
  %cmp22 = icmp eq i32 %30, -1
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then21
  %31 = load i32, ptr %switch_once, align 4
  store i32 %31, ptr %no_switch, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then21
  %32 = load i32, ptr %no_switch, align 4
  %33 = load i32, ptr %switch_once, align 4
  %cmp24 = icmp sgt i32 %32, %33
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.else
  %34 = load i32, ptr %switch_once, align 4
  store i32 %34, ptr %no_switch, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end19
  %35 = load i32, ptr %switch_twice, align 4
  %cmp29 = icmp ne i32 %35, -1
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.end28
  %36 = load i32, ptr %no_switch, align 4
  %cmp31 = icmp eq i32 %36, -1
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.then30
  %37 = load i32, ptr %switch_twice, align 4
  store i32 %37, ptr %no_switch, align 4
  br label %if.end37

if.else33:                                        ; preds = %if.then30
  %38 = load i32, ptr %no_switch, align 4
  %39 = load i32, ptr %switch_twice, align 4
  %cmp34 = icmp sgt i32 %38, %39
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else33
  %40 = load i32, ptr %switch_twice, align 4
  store i32 %40, ptr %no_switch, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then32
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end28
  %41 = load i32, ptr %switch_third, align 4
  %cmp39 = icmp ne i32 %41, -1
  br i1 %cmp39, label %if.then40, label %if.end48

if.then40:                                        ; preds = %if.end38
  %42 = load i32, ptr %no_switch, align 4
  %cmp41 = icmp eq i32 %42, -1
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.then40
  %43 = load i32, ptr %switch_third, align 4
  store i32 %43, ptr %no_switch, align 4
  br label %if.end47

if.else43:                                        ; preds = %if.then40
  %44 = load i32, ptr %no_switch, align 4
  %45 = load i32, ptr %switch_third, align 4
  %cmp44 = icmp sgt i32 %44, %45
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.else43
  %46 = load i32, ptr %switch_third, align 4
  store i32 %46, ptr %no_switch, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.else43
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then42
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end38
  %47 = load i32, ptr %no_switch, align 4
  store i32 %47, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @min_switch_v2(ptr noundef %current_locations, i32 noundef %switch_idx) #0 {
entry:
  %retval = alloca i32, align 4
  %current_locations.addr = alloca ptr, align 8
  %switch_idx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %current_locations, ptr %current_locations.addr, align 8
  store i32 %switch_idx, ptr %switch_idx.addr, align 4
  %0 = load i32, ptr %switch_idx.addr, align 4
  %cmp = icmp sge i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %current_locations.addr, align 8
  %call = call i32 @all_twelve(ptr noundef %1)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  store i32 0, ptr %tmp, align 4
  store i32 -1, ptr %ret, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %2, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %current_locations.addr, align 8
  %4 = load i32, ptr %switch_idx.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x [5 x i32]], ptr @connections, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [5 x i32], ptr %arrayidx, i64 0, i64 0
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %5, 3
  call void @set(ptr noundef %3, ptr noundef %arraydecay, i32 noundef %mul)
  %6 = load ptr, ptr %current_locations.addr, align 8
  %7 = load i32, ptr %switch_idx.addr, align 4
  %add = add nsw i32 %7, 1
  %call2 = call i32 @min_switch_v2(ptr noundef %6, i32 noundef %add)
  store i32 %call2, ptr %tmp, align 4
  %8 = load ptr, ptr %current_locations.addr, align 8
  %9 = load i32, ptr %switch_idx.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [10 x [5 x i32]], ptr @connections, i64 0, i64 %idxprom3
  %arraydecay5 = getelementptr inbounds [5 x i32], ptr %arrayidx4, i64 0, i64 0
  %10 = load i32, ptr %i, align 4
  %sub = sub nsw i32 0, %10
  %mul6 = mul nsw i32 %sub, 3
  call void @set(ptr noundef %8, ptr noundef %arraydecay5, i32 noundef %mul6)
  %11 = load i32, ptr %tmp, align 4
  %cmp7 = icmp ne i32 %11, -1
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %tmp, align 4
  %add9 = add nsw i32 %13, %12
  store i32 %add9, ptr %tmp, align 4
  %14 = load i32, ptr %ret, align 4
  %cmp10 = icmp eq i32 %14, -1
  br i1 %cmp10, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %15 = load i32, ptr %ret, align 4
  %16 = load i32, ptr %tmp, align 4
  %cmp11 = icmp sgt i32 %15, %16
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %if.then8
  %17 = load i32, ptr %tmp, align 4
  store i32 %17, ptr %ret, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %ret, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %case1 = alloca [16 x i32], align 4
  %case2 = alloca [16 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %case1, ptr align 4 @__const.main.case1, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %case2, ptr align 4 @__const.main.case2, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [16 x i32], ptr %case1, i64 0, i64 0
  %call = call i32 @min_switch_v2(ptr noundef %arraydecay, i32 noundef 0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  %arraydecay2 = getelementptr inbounds [16 x i32], ptr %case2, i64 0, i64 0
  %call3 = call i32 @min_switch_v2(ptr noundef %arraydecay2, i32 noundef 0)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call3)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
