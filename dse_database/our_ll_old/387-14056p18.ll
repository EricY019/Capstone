; ModuleID = './code/387-14056p18.c'
source_filename = "./code/387-14056p18.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@triangle = global [120 x i32] [i32 75, i32 95, i32 64, i32 17, i32 47, i32 82, i32 18, i32 35, i32 87, i32 10, i32 20, i32 4, i32 82, i32 47, i32 65, i32 19, i32 1, i32 23, i32 75, i32 3, i32 34, i32 88, i32 2, i32 77, i32 73, i32 7, i32 63, i32 67, i32 99, i32 65, i32 4, i32 28, i32 6, i32 16, i32 70, i32 92, i32 41, i32 41, i32 26, i32 56, i32 83, i32 40, i32 80, i32 70, i32 33, i32 41, i32 48, i32 72, i32 33, i32 47, i32 32, i32 37, i32 16, i32 94, i32 29, i32 53, i32 71, i32 44, i32 65, i32 25, i32 43, i32 91, i32 52, i32 97, i32 51, i32 14, i32 70, i32 11, i32 33, i32 28, i32 77, i32 73, i32 17, i32 78, i32 39, i32 68, i32 17, i32 57, i32 91, i32 71, i32 52, i32 38, i32 17, i32 14, i32 91, i32 43, i32 58, i32 50, i32 27, i32 29, i32 48, i32 63, i32 66, i32 4, i32 68, i32 89, i32 53, i32 67, i32 30, i32 73, i32 16, i32 69, i32 87, i32 40, i32 31, i32 4, i32 62, i32 98, i32 27, i32 23, i32 9, i32 70, i32 98, i32 73, i32 93, i32 38, i32 53, i32 60, i32 4, i32 23], align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @left_child(i32 noundef %n, i32 noundef %i) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %1 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @right_child(i32 noundef %n, i32 noundef %i) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %1 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %0, %1
  %add1 = add nsw i32 %add, 1
  ret i32 %add1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @greedy_two_step(ptr noundef %triangle, i32 noundef %rows, i32 noundef %len) #0 {
entry:
  %triangle.addr = alloca ptr, align 8
  %rows.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %row = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %leftleft = alloca i32, align 4
  %leftright = alloca i32, align 4
  %rightleft = alloca i32, align 4
  %rightright = alloca i32, align 4
  %n_ll = alloca i32, align 4
  %n_lr = alloca i32, align 4
  %n_rl = alloca i32, align 4
  %n_rr = alloca i32, align 4
  store ptr %triangle, ptr %triangle.addr, align 8
  store i32 %rows, ptr %rows.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %triangle.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %max, align 4
  store i32 0, ptr %i, align 4
  store i32 1, ptr %n, align 4
  store i32 0, ptr %row, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end64, %entry
  %2 = load i32, ptr %row, align 4
  %3 = load i32, ptr %rows.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %n, align 4
  %5 = load i32, ptr %i, align 4
  %call = call i32 @left_child(i32 noundef %4, i32 noundef %5)
  store i32 %call, ptr %left, align 4
  %6 = load i32, ptr %n, align 4
  %7 = load i32, ptr %i, align 4
  %call1 = call i32 @right_child(i32 noundef %6, i32 noundef %7)
  store i32 %call1, ptr %right, align 4
  %8 = load i32, ptr %n, align 4
  %add = add nsw i32 %8, 1
  %9 = load i32, ptr %left, align 4
  %call2 = call i32 @left_child(i32 noundef %add, i32 noundef %9)
  store i32 %call2, ptr %leftleft, align 4
  %10 = load i32, ptr %n, align 4
  %add3 = add nsw i32 %10, 1
  %11 = load i32, ptr %left, align 4
  %call4 = call i32 @right_child(i32 noundef %add3, i32 noundef %11)
  store i32 %call4, ptr %leftright, align 4
  %12 = load i32, ptr %n, align 4
  %add5 = add nsw i32 %12, 1
  %13 = load i32, ptr %right, align 4
  %call6 = call i32 @left_child(i32 noundef %add5, i32 noundef %13)
  store i32 %call6, ptr %rightleft, align 4
  %14 = load i32, ptr %n, align 4
  %add7 = add nsw i32 %14, 1
  %15 = load i32, ptr %right, align 4
  %call8 = call i32 @right_child(i32 noundef %add7, i32 noundef %15)
  store i32 %call8, ptr %rightright, align 4
  store i32 0, ptr %n_ll, align 4
  store i32 0, ptr %n_lr, align 4
  store i32 0, ptr %n_rl, align 4
  store i32 0, ptr %n_rr, align 4
  %16 = load i32, ptr %left, align 4
  %17 = load i32, ptr %len.addr, align 4
  %cmp9 = icmp slt i32 %16, %17
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %18 = load ptr, ptr %triangle.addr, align 8
  %19 = load i32, ptr %left, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 %idxprom
  %20 = load i32, ptr %arrayidx10, align 4
  %21 = load i32, ptr %n_ll, align 4
  %add11 = add nsw i32 %21, %20
  store i32 %add11, ptr %n_ll, align 4
  %22 = load ptr, ptr %triangle.addr, align 8
  %23 = load i32, ptr %left, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %22, i64 %idxprom12
  %24 = load i32, ptr %arrayidx13, align 4
  %25 = load i32, ptr %n_lr, align 4
  %add14 = add nsw i32 %25, %24
  store i32 %add14, ptr %n_lr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %26 = load i32, ptr %right, align 4
  %27 = load i32, ptr %len.addr, align 4
  %cmp15 = icmp slt i32 %26, %27
  br i1 %cmp15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end
  %28 = load ptr, ptr %triangle.addr, align 8
  %29 = load i32, ptr %right, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %28, i64 %idxprom17
  %30 = load i32, ptr %arrayidx18, align 4
  %31 = load i32, ptr %n_rl, align 4
  %add19 = add nsw i32 %31, %30
  store i32 %add19, ptr %n_rl, align 4
  %32 = load ptr, ptr %triangle.addr, align 8
  %33 = load i32, ptr %right, align 4
  %idxprom20 = sext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %32, i64 %idxprom20
  %34 = load i32, ptr %arrayidx21, align 4
  %35 = load i32, ptr %n_rr, align 4
  %add22 = add nsw i32 %35, %34
  store i32 %add22, ptr %n_rr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end
  %36 = load i32, ptr %leftleft, align 4
  %37 = load i32, ptr %len.addr, align 4
  %cmp24 = icmp slt i32 %36, %37
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end23
  %38 = load ptr, ptr %triangle.addr, align 8
  %39 = load i32, ptr %leftleft, align 4
  %idxprom26 = sext i32 %39 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %38, i64 %idxprom26
  %40 = load i32, ptr %arrayidx27, align 4
  %41 = load i32, ptr %n_ll, align 4
  %add28 = add nsw i32 %41, %40
  store i32 %add28, ptr %n_ll, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23
  %42 = load i32, ptr %leftright, align 4
  %43 = load i32, ptr %len.addr, align 4
  %cmp30 = icmp slt i32 %42, %43
  br i1 %cmp30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end29
  %44 = load ptr, ptr %triangle.addr, align 8
  %45 = load i32, ptr %leftright, align 4
  %idxprom32 = sext i32 %45 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %44, i64 %idxprom32
  %46 = load i32, ptr %arrayidx33, align 4
  %47 = load i32, ptr %n_lr, align 4
  %add34 = add nsw i32 %47, %46
  store i32 %add34, ptr %n_lr, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end29
  %48 = load i32, ptr %rightleft, align 4
  %49 = load i32, ptr %len.addr, align 4
  %cmp36 = icmp slt i32 %48, %49
  br i1 %cmp36, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.end35
  %50 = load ptr, ptr %triangle.addr, align 8
  %51 = load i32, ptr %rightleft, align 4
  %idxprom38 = sext i32 %51 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %50, i64 %idxprom38
  %52 = load i32, ptr %arrayidx39, align 4
  %53 = load i32, ptr %n_rl, align 4
  %add40 = add nsw i32 %53, %52
  store i32 %add40, ptr %n_rl, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end35
  %54 = load i32, ptr %rightright, align 4
  %55 = load i32, ptr %len.addr, align 4
  %cmp42 = icmp slt i32 %54, %55
  br i1 %cmp42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end41
  %56 = load ptr, ptr %triangle.addr, align 8
  %57 = load i32, ptr %rightright, align 4
  %idxprom44 = sext i32 %57 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %56, i64 %idxprom44
  %58 = load i32, ptr %arrayidx45, align 4
  %59 = load i32, ptr %n_rr, align 4
  %add46 = add nsw i32 %59, %58
  store i32 %add46, ptr %n_rr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end41
  %60 = load i32, ptr %n_ll, align 4
  %61 = load i32, ptr %n_lr, align 4
  %cmp48 = icmp sge i32 %60, %61
  br i1 %cmp48, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end47
  %62 = load i32, ptr %n_ll, align 4
  %63 = load i32, ptr %n_rl, align 4
  %cmp49 = icmp sge i32 %62, %63
  br i1 %cmp49, label %land.lhs.true50, label %lor.lhs.false

land.lhs.true50:                                  ; preds = %land.lhs.true
  %64 = load i32, ptr %n_ll, align 4
  %65 = load i32, ptr %n_rr, align 4
  %cmp51 = icmp sge i32 %64, %65
  br i1 %cmp51, label %if.then57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true50, %land.lhs.true, %if.end47
  %66 = load i32, ptr %n_lr, align 4
  %67 = load i32, ptr %n_ll, align 4
  %cmp52 = icmp sge i32 %66, %67
  br i1 %cmp52, label %land.lhs.true53, label %if.else

land.lhs.true53:                                  ; preds = %lor.lhs.false
  %68 = load i32, ptr %n_lr, align 4
  %69 = load i32, ptr %n_rl, align 4
  %cmp54 = icmp sge i32 %68, %69
  br i1 %cmp54, label %land.lhs.true55, label %if.else

land.lhs.true55:                                  ; preds = %land.lhs.true53
  %70 = load i32, ptr %n_lr, align 4
  %71 = load i32, ptr %n_rr, align 4
  %cmp56 = icmp sge i32 %70, %71
  br i1 %cmp56, label %if.then57, label %if.else

if.then57:                                        ; preds = %land.lhs.true55, %land.lhs.true50
  %72 = load i32, ptr %left, align 4
  store i32 %72, ptr %i, align 4
  %73 = load ptr, ptr %triangle.addr, align 8
  %74 = load i32, ptr %left, align 4
  %idxprom58 = sext i32 %74 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %73, i64 %idxprom58
  %75 = load i32, ptr %arrayidx59, align 4
  %76 = load i32, ptr %max, align 4
  %add60 = add nsw i32 %76, %75
  store i32 %add60, ptr %max, align 4
  br label %if.end64

if.else:                                          ; preds = %land.lhs.true55, %land.lhs.true53, %lor.lhs.false
  %77 = load i32, ptr %right, align 4
  store i32 %77, ptr %i, align 4
  %78 = load ptr, ptr %triangle.addr, align 8
  %79 = load i32, ptr %right, align 4
  %idxprom61 = sext i32 %79 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %78, i64 %idxprom61
  %80 = load i32, ptr %arrayidx62, align 4
  %81 = load i32, ptr %max, align 4
  %add63 = add nsw i32 %81, %80
  store i32 %add63, ptr %max, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then57
  %82 = load i32, ptr %n, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, ptr %n, align 4
  %83 = load i32, ptr %row, align 4
  %inc65 = add nsw i32 %83, 1
  store i32 %inc65, ptr %row, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %84 = load i32, ptr %max, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @greedy_two_step(ptr noundef @triangle, i32 noundef 15, i32 noundef 120)
  store i32 %call, ptr %max, align 4
  %0 = load i32, ptr %max, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  ret i32 0
}

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
