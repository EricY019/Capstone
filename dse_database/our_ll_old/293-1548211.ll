; ModuleID = './code/293-1548211.c'
source_filename = "./code/293-1548211.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global [20 x [20 x i32]] [[20 x i32] [i32 8, i32 2, i32 22, i32 97, i32 38, i32 15, i32 0, i32 40, i32 0, i32 75, i32 4, i32 5, i32 7, i32 78, i32 52, i32 12, i32 50, i32 77, i32 91, i32 8], [20 x i32] [i32 49, i32 49, i32 99, i32 40, i32 17, i32 81, i32 18, i32 57, i32 60, i32 87, i32 17, i32 40, i32 98, i32 43, i32 69, i32 48, i32 4, i32 56, i32 62, i32 0], [20 x i32] [i32 81, i32 49, i32 31, i32 73, i32 55, i32 79, i32 14, i32 29, i32 93, i32 71, i32 40, i32 67, i32 53, i32 88, i32 30, i32 3, i32 49, i32 13, i32 36, i32 65], [20 x i32] [i32 52, i32 70, i32 95, i32 23, i32 4, i32 60, i32 11, i32 42, i32 69, i32 24, i32 68, i32 56, i32 1, i32 32, i32 56, i32 71, i32 37, i32 2, i32 36, i32 91], [20 x i32] [i32 22, i32 31, i32 16, i32 71, i32 51, i32 67, i32 63, i32 89, i32 41, i32 92, i32 36, i32 54, i32 22, i32 40, i32 40, i32 28, i32 66, i32 33, i32 13, i32 80], [20 x i32] [i32 24, i32 47, i32 32, i32 60, i32 99, i32 3, i32 45, i32 2, i32 44, i32 75, i32 33, i32 53, i32 78, i32 36, i32 84, i32 20, i32 35, i32 17, i32 12, i32 50], [20 x i32] [i32 32, i32 98, i32 81, i32 28, i32 64, i32 23, i32 67, i32 10, i32 26, i32 38, i32 40, i32 67, i32 59, i32 54, i32 70, i32 66, i32 18, i32 38, i32 64, i32 70], [20 x i32] [i32 67, i32 26, i32 20, i32 68, i32 2, i32 62, i32 12, i32 20, i32 95, i32 63, i32 94, i32 39, i32 63, i32 8, i32 40, i32 91, i32 66, i32 49, i32 94, i32 21], [20 x i32] [i32 24, i32 55, i32 58, i32 5, i32 66, i32 73, i32 99, i32 26, i32 97, i32 17, i32 78, i32 78, i32 96, i32 83, i32 14, i32 88, i32 34, i32 89, i32 63, i32 72], [20 x i32] [i32 21, i32 36, i32 23, i32 9, i32 75, i32 0, i32 76, i32 44, i32 20, i32 45, i32 35, i32 14, i32 0, i32 61, i32 33, i32 97, i32 34, i32 31, i32 33, i32 95], [20 x i32] [i32 78, i32 17, i32 53, i32 28, i32 22, i32 75, i32 31, i32 67, i32 15, i32 94, i32 3, i32 80, i32 4, i32 62, i32 16, i32 14, i32 9, i32 53, i32 56, i32 92], [20 x i32] [i32 16, i32 39, i32 5, i32 42, i32 96, i32 35, i32 31, i32 47, i32 55, i32 58, i32 88, i32 24, i32 0, i32 17, i32 54, i32 24, i32 36, i32 29, i32 85, i32 57], [20 x i32] [i32 86, i32 56, i32 0, i32 48, i32 35, i32 71, i32 89, i32 7, i32 5, i32 44, i32 44, i32 37, i32 44, i32 60, i32 21, i32 58, i32 51, i32 54, i32 17, i32 58], [20 x i32] [i32 19, i32 80, i32 81, i32 68, i32 5, i32 94, i32 47, i32 69, i32 28, i32 73, i32 92, i32 13, i32 86, i32 52, i32 17, i32 77, i32 4, i32 89, i32 55, i32 40], [20 x i32] [i32 4, i32 52, i32 8, i32 83, i32 97, i32 35, i32 99, i32 16, i32 7, i32 97, i32 57, i32 32, i32 16, i32 26, i32 26, i32 79, i32 33, i32 27, i32 98, i32 66], [20 x i32] [i32 88, i32 36, i32 68, i32 87, i32 57, i32 62, i32 20, i32 72, i32 3, i32 46, i32 33, i32 67, i32 46, i32 55, i32 12, i32 32, i32 63, i32 93, i32 53, i32 69], [20 x i32] [i32 4, i32 42, i32 16, i32 73, i32 38, i32 25, i32 39, i32 11, i32 24, i32 94, i32 72, i32 18, i32 8, i32 46, i32 29, i32 32, i32 40, i32 62, i32 76, i32 36], [20 x i32] [i32 20, i32 69, i32 36, i32 41, i32 72, i32 30, i32 23, i32 88, i32 34, i32 62, i32 99, i32 69, i32 82, i32 67, i32 59, i32 85, i32 74, i32 4, i32 36, i32 16], [20 x i32] [i32 20, i32 73, i32 35, i32 29, i32 78, i32 31, i32 90, i32 1, i32 74, i32 31, i32 49, i32 71, i32 48, i32 86, i32 81, i32 16, i32 23, i32 57, i32 5, i32 54], [20 x i32] [i32 1, i32 70, i32 54, i32 71, i32 83, i32 51, i32 54, i32 69, i32 16, i32 92, i32 33, i32 48, i32 61, i32 43, i32 52, i32 1, i32 89, i32 19, i32 67, i32 48]], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %max, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc110, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end112

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 17
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom
  %3 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %4 = load i32, ptr %arrayidx5, align 4
  %5 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom6
  %6 = load i32, ptr %j, align 4
  %add = add nsw i32 %6, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [20 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %7 = load i32, ptr %arrayidx9, align 4
  %mul = mul nsw i32 %4, %7
  %8 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom10
  %9 = load i32, ptr %j, align 4
  %add12 = add nsw i32 %9, 2
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], ptr %arrayidx11, i64 0, i64 %idxprom13
  %10 = load i32, ptr %arrayidx14, align 4
  %mul15 = mul nsw i32 %mul, %10
  %11 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom16
  %12 = load i32, ptr %j, align 4
  %add18 = add nsw i32 %12, 3
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [20 x i32], ptr %arrayidx17, i64 0, i64 %idxprom19
  %13 = load i32, ptr %arrayidx20, align 4
  %mul21 = mul nsw i32 %mul15, %13
  store i32 %mul21, ptr %tmp, align 4
  %14 = load i32, ptr %tmp, align 4
  %15 = load i32, ptr %max, align 4
  %cmp22 = icmp sgt i32 %14, %15
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %16 = load i32, ptr %tmp, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  %17 = load i32, ptr %max, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, ptr %max, align 4
  %18 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom23
  %19 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [20 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  %20 = load i32, ptr %arrayidx26, align 4
  %21 = load i32, ptr %i, align 4
  %add27 = add nsw i32 %21, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom28
  %22 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [20 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %23 = load i32, ptr %arrayidx31, align 4
  %mul32 = mul nsw i32 %20, %23
  %24 = load i32, ptr %i, align 4
  %add33 = add nsw i32 %24, 2
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom34
  %25 = load i32, ptr %j, align 4
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [20 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %26 = load i32, ptr %arrayidx37, align 4
  %mul38 = mul nsw i32 %mul32, %26
  %27 = load i32, ptr %i, align 4
  %add39 = add nsw i32 %27, 3
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom40
  %28 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds [20 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %29 = load i32, ptr %arrayidx43, align 4
  %mul44 = mul nsw i32 %mul38, %29
  store i32 %mul44, ptr %tmp, align 4
  %30 = load i32, ptr %tmp, align 4
  %31 = load i32, ptr %max, align 4
  %cmp45 = icmp sgt i32 %30, %31
  br i1 %cmp45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %cond.end
  %32 = load i32, ptr %tmp, align 4
  br label %cond.end48

cond.false47:                                     ; preds = %cond.end
  %33 = load i32, ptr %max, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi i32 [ %32, %cond.true46 ], [ %33, %cond.false47 ]
  store i32 %cond49, ptr %max, align 4
  %34 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom50
  %35 = load i32, ptr %j, align 4
  %idxprom52 = sext i32 %35 to i64
  %arrayidx53 = getelementptr inbounds [20 x i32], ptr %arrayidx51, i64 0, i64 %idxprom52
  %36 = load i32, ptr %arrayidx53, align 4
  %37 = load i32, ptr %i, align 4
  %add54 = add nsw i32 %37, 1
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom55
  %38 = load i32, ptr %j, align 4
  %add57 = add nsw i32 %38, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [20 x i32], ptr %arrayidx56, i64 0, i64 %idxprom58
  %39 = load i32, ptr %arrayidx59, align 4
  %mul60 = mul nsw i32 %36, %39
  %40 = load i32, ptr %i, align 4
  %add61 = add nsw i32 %40, 2
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom62
  %41 = load i32, ptr %j, align 4
  %add64 = add nsw i32 %41, 2
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [20 x i32], ptr %arrayidx63, i64 0, i64 %idxprom65
  %42 = load i32, ptr %arrayidx66, align 4
  %mul67 = mul nsw i32 %mul60, %42
  %43 = load i32, ptr %i, align 4
  %add68 = add nsw i32 %43, 3
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom69
  %44 = load i32, ptr %j, align 4
  %add71 = add nsw i32 %44, 3
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [20 x i32], ptr %arrayidx70, i64 0, i64 %idxprom72
  %45 = load i32, ptr %arrayidx73, align 4
  %mul74 = mul nsw i32 %mul67, %45
  store i32 %mul74, ptr %tmp, align 4
  %46 = load i32, ptr %tmp, align 4
  %47 = load i32, ptr %max, align 4
  %cmp75 = icmp sgt i32 %46, %47
  br i1 %cmp75, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %cond.end48
  %48 = load i32, ptr %tmp, align 4
  br label %cond.end78

cond.false77:                                     ; preds = %cond.end48
  %49 = load i32, ptr %max, align 4
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false77, %cond.true76
  %cond79 = phi i32 [ %48, %cond.true76 ], [ %49, %cond.false77 ]
  store i32 %cond79, ptr %max, align 4
  %50 = load i32, ptr %i, align 4
  %cmp80 = icmp sge i32 %50, 3
  br i1 %cmp80, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end78
  %51 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %51 to i64
  %arrayidx82 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom81
  %52 = load i32, ptr %j, align 4
  %idxprom83 = sext i32 %52 to i64
  %arrayidx84 = getelementptr inbounds [20 x i32], ptr %arrayidx82, i64 0, i64 %idxprom83
  %53 = load i32, ptr %arrayidx84, align 4
  %54 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %54, 1
  %idxprom85 = sext i32 %sub to i64
  %arrayidx86 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom85
  %55 = load i32, ptr %j, align 4
  %add87 = add nsw i32 %55, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [20 x i32], ptr %arrayidx86, i64 0, i64 %idxprom88
  %56 = load i32, ptr %arrayidx89, align 4
  %mul90 = mul nsw i32 %53, %56
  %57 = load i32, ptr %i, align 4
  %sub91 = sub nsw i32 %57, 2
  %idxprom92 = sext i32 %sub91 to i64
  %arrayidx93 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom92
  %58 = load i32, ptr %j, align 4
  %add94 = add nsw i32 %58, 2
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [20 x i32], ptr %arrayidx93, i64 0, i64 %idxprom95
  %59 = load i32, ptr %arrayidx96, align 4
  %mul97 = mul nsw i32 %mul90, %59
  %60 = load i32, ptr %i, align 4
  %sub98 = sub nsw i32 %60, 3
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [20 x [20 x i32]], ptr @a, i64 0, i64 %idxprom99
  %61 = load i32, ptr %j, align 4
  %add101 = add nsw i32 %61, 3
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds [20 x i32], ptr %arrayidx100, i64 0, i64 %idxprom102
  %62 = load i32, ptr %arrayidx103, align 4
  %mul104 = mul nsw i32 %mul97, %62
  store i32 %mul104, ptr %tmp, align 4
  %63 = load i32, ptr %tmp, align 4
  %64 = load i32, ptr %max, align 4
  %cmp105 = icmp sgt i32 %63, %64
  br i1 %cmp105, label %cond.true106, label %cond.false107

cond.true106:                                     ; preds = %if.then
  %65 = load i32, ptr %tmp, align 4
  br label %cond.end108

cond.false107:                                    ; preds = %if.then
  %66 = load i32, ptr %max, align 4
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false107, %cond.true106
  %cond109 = phi i32 [ %65, %cond.true106 ], [ %66, %cond.false107 ]
  store i32 %cond109, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end108, %cond.end78
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %67 = load i32, ptr %j, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc110

for.inc110:                                       ; preds = %for.end
  %68 = load i32, ptr %i, align 4
  %inc111 = add nsw i32 %68, 1
  store i32 %inc111, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end112:                                       ; preds = %for.cond
  %69 = load i32, ptr %max, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %69)
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
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
!7 = distinct !{!7, !6}
