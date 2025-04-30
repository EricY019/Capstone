; ModuleID = './code/176-6732matrix_soln.c'
source_filename = "./code/176-6732matrix_soln.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Matrix = type { i32, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reducing...\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_matrix(i32 noundef %num_rows, i32 noundef %num_cols) #0 {
entry:
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %matrix = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %num_cols, ptr %num_cols.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #5
  store ptr %call, ptr %matrix, align 8
  %0 = load i32, ptr %num_rows.addr, align 4
  %1 = load ptr, ptr %matrix, align 8
  %num_rows1 = getelementptr inbounds %struct.Matrix, ptr %1, i32 0, i32 0
  store i32 %0, ptr %num_rows1, align 8
  %2 = load i32, ptr %num_cols.addr, align 4
  %3 = load ptr, ptr %matrix, align 8
  %num_cols2 = getelementptr inbounds %struct.Matrix, ptr %3, i32 0, i32 1
  store i32 %2, ptr %num_cols2, align 4
  %4 = load i32, ptr %num_rows.addr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call3 = call ptr @malloc(i64 noundef %mul) #5
  %5 = load ptr, ptr %matrix, align 8
  %rows = getelementptr inbounds %struct.Matrix, ptr %5, i32 0, i32 2
  store ptr %call3, ptr %rows, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %num_cols.addr, align 4
  %conv5 = sext i32 %8 to i64
  %call6 = call ptr @calloc(i64 noundef %conv5, i64 noundef 8) #6
  %9 = load ptr, ptr %matrix, align 8
  %rows7 = getelementptr inbounds %struct.Matrix, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %rows7, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  store ptr %call6, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %matrix, align 8
  ret ptr %13
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @free_matrix(ptr noundef %matrix) #0 {
entry:
  %matrix.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %matrix.addr, align 8
  %num_rows = getelementptr inbounds %struct.Matrix, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %num_rows, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %matrix.addr, align 8
  %rows = getelementptr inbounds %struct.Matrix, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %rows, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  call void @free(ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %matrix.addr, align 8
  %rows1 = getelementptr inbounds %struct.Matrix, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %rows1, align 8
  call void @free(ptr noundef %9)
  %10 = load ptr, ptr %matrix.addr, align 8
  call void @free(ptr noundef %10)
  ret void
}

declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_matrix_row(ptr noundef %row, i32 noundef %num_cols) #0 {
entry:
  %row.addr = alloca ptr, align 8
  %num_cols.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %row, ptr %row.addr, align 8
  store i32 %num_cols, ptr %num_cols.addr, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4
  %1 = load i32, ptr %num_cols.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %row.addr, align 8
  %3 = load i32, ptr %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %idxprom
  %4 = load double, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_matrix(ptr noundef %matrix) #0 {
entry:
  %matrix.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %matrix.addr, align 8
  %num_rows = getelementptr inbounds %struct.Matrix, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %num_rows, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %matrix.addr, align 8
  %rows = getelementptr inbounds %struct.Matrix, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %rows, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %7 = load ptr, ptr %matrix.addr, align 8
  %num_cols = getelementptr inbounds %struct.Matrix, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %num_cols, align 4
  call void @print_matrix_row(ptr noundef %6, i32 noundef %8)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reduce_matrix_rows(ptr noundef %matrix, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %matrix.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %row1 = alloca ptr, align 8
  %row2 = alloca ptr, align 8
  %factor = alloca double, align 8
  %j6 = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %0 = load ptr, ptr %matrix.addr, align 8
  %rows = getelementptr inbounds %struct.Matrix, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %rows, align 8
  %2 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %row1, align 8
  %4 = load ptr, ptr %matrix.addr, align 8
  %rows1 = getelementptr inbounds %struct.Matrix, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %rows1, align 8
  %6 = load i32, ptr %j.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 %idxprom2
  %7 = load ptr, ptr %arrayidx3, align 8
  store ptr %7, ptr %row2, align 8
  %8 = load ptr, ptr %row1, align 8
  %arrayidx4 = getelementptr inbounds double, ptr %8, i64 0
  %9 = load double, ptr %arrayidx4, align 8
  %10 = load ptr, ptr %row2, align 8
  %arrayidx5 = getelementptr inbounds double, ptr %10, i64 0
  %11 = load double, ptr %arrayidx5, align 8
  %div = fdiv double %9, %11
  store double %div, ptr %factor, align 8
  store i32 0, ptr %j6, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, ptr %j6, align 4
  %13 = load ptr, ptr %matrix.addr, align 8
  %num_cols = getelementptr inbounds %struct.Matrix, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %num_cols, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %row2, align 8
  %16 = load i32, ptr %j6, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %15, i64 %idxprom7
  %17 = load double, ptr %arrayidx8, align 8
  %18 = load double, ptr %factor, align 8
  %19 = load ptr, ptr %row1, align 8
  %20 = load i32, ptr %j6, align 4
  %idxprom9 = sext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %19, i64 %idxprom9
  %21 = load double, ptr %arrayidx10, align 8
  %neg = fneg double %17
  %22 = call double @llvm.fmuladd.f64(double %neg, double %18, double %21)
  store double %22, ptr %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %j6, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j6, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %matrix = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @make_matrix(i32 noundef 3, i32 noundef 4)
  store ptr %call, ptr %matrix, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %matrix, align 8
  %num_rows = getelementptr inbounds %struct.Matrix, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %num_rows, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load ptr, ptr %matrix, align 8
  %num_cols = getelementptr inbounds %struct.Matrix, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %num_cols, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %add = add nsw i32 %6, %7
  %add4 = add nsw i32 %add, 1
  %conv = sitofp i32 %add4 to double
  %8 = load ptr, ptr %matrix, align 8
  %rows = getelementptr inbounds %struct.Matrix, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %rows, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %11, i64 %idxprom5
  store double %conv, ptr %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %15 = load ptr, ptr %matrix, align 8
  call void @print_matrix(ptr noundef %15)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %16 = load ptr, ptr %matrix, align 8
  call void @reduce_matrix_rows(ptr noundef %16, i32 noundef 1, i32 noundef 0)
  %17 = load ptr, ptr %matrix, align 8
  call void @reduce_matrix_rows(ptr noundef %17, i32 noundef 2, i32 noundef 0)
  %18 = load ptr, ptr %matrix, align 8
  call void @print_matrix(ptr noundef %18)
  %19 = load ptr, ptr %matrix, align 8
  call void @free_matrix(ptr noundef %19)
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0) }
attributes #6 = { allocsize(0,1) }

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
