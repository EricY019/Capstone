; ModuleID = 'code/176-6732matrix_soln.c'
source_filename = "code/176-6732matrix_soln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Matrix = type { i32, i32, double** }

@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reducing...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Matrix* @make_matrix(i32 %num_rows, i32 %num_cols) #0 {
entry:
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %matrix = alloca %struct.Matrix*, align 8
  %i = alloca i32, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  store i32 %num_cols, i32* %num_cols.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.Matrix*
  store %struct.Matrix* %0, %struct.Matrix** %matrix, align 8
  %1 = load i32, i32* %num_rows.addr, align 4
  %2 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  %num_rows1 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %2, i32 0, i32 0
  store i32 %1, i32* %num_rows1, align 8
  %3 = load i32, i32* %num_cols.addr, align 4
  %4 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  %num_cols2 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %4, i32 0, i32 1
  store i32 %3, i32* %num_cols2, align 4
  %5 = load i32, i32* %num_rows.addr, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 8
  %call3 = call noalias align 16 i8* @malloc(i64 %mul) #3
  %6 = bitcast i8* %call3 to double**
  %7 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  %rows = getelementptr inbounds %struct.Matrix, %struct.Matrix* %7, i32 0, i32 2
  store double** %6, double*** %rows, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %num_cols.addr, align 4
  %conv5 = sext i32 %10 to i64
  %call6 = call noalias align 16 i8* @calloc(i64 %conv5, i64 8) #3
  %11 = bitcast i8* %call6 to double*
  %12 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  %rows7 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %12, i32 0, i32 2
  %13 = load double**, double*** %rows7, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double*, double** %13, i64 %idxprom
  store double* %11, double** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %16 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  ret %struct.Matrix* %16
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_matrix(%struct.Matrix* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.Matrix*, align 8
  %i = alloca i32, align 4
  store %struct.Matrix* %matrix, %struct.Matrix** %matrix.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %num_rows = getelementptr inbounds %struct.Matrix, %struct.Matrix* %1, i32 0, i32 0
  %2 = load i32, i32* %num_rows, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %rows = getelementptr inbounds %struct.Matrix, %struct.Matrix* %3, i32 0, i32 2
  %4 = load double**, double*** %rows, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom
  %6 = load double*, double** %arrayidx, align 8
  %7 = bitcast double* %6 to i8*
  call void @free(i8* %7) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %rows1 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %9, i32 0, i32 2
  %10 = load double**, double*** %rows1, align 8
  %11 = bitcast double** %10 to i8*
  call void @free(i8* %11) #3
  %12 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %13 = bitcast %struct.Matrix* %12 to i8*
  call void @free(i8* %13) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_matrix_row(double* %row, i32 %num_cols) #0 {
entry:
  %row.addr = alloca double*, align 8
  %num_cols.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store double* %row, double** %row.addr, align 8
  store i32 %num_cols, i32* %num_cols.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %num_cols.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %row.addr, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_matrix(%struct.Matrix* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.Matrix*, align 8
  %i = alloca i32, align 4
  store %struct.Matrix* %matrix, %struct.Matrix** %matrix.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %num_rows = getelementptr inbounds %struct.Matrix, %struct.Matrix* %1, i32 0, i32 0
  %2 = load i32, i32* %num_rows, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %rows = getelementptr inbounds %struct.Matrix, %struct.Matrix* %3, i32 0, i32 2
  %4 = load double**, double*** %rows, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom
  %6 = load double*, double** %arrayidx, align 8
  %7 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %num_cols = getelementptr inbounds %struct.Matrix, %struct.Matrix* %7, i32 0, i32 1
  %8 = load i32, i32* %num_cols, align 4
  call void @print_matrix_row(double* %6, i32 %8)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reduce_matrix_rows(%struct.Matrix* %matrix, i32 %i, i32 %j) #0 {
entry:
  %matrix.addr = alloca %struct.Matrix*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %row1 = alloca double*, align 8
  %row2 = alloca double*, align 8
  %factor = alloca double, align 8
  %j6 = alloca i32, align 4
  store %struct.Matrix* %matrix, %struct.Matrix** %matrix.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %rows = getelementptr inbounds %struct.Matrix, %struct.Matrix* %0, i32 0, i32 2
  %1 = load double**, double*** %rows, align 8
  %2 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds double*, double** %1, i64 %idxprom
  %3 = load double*, double** %arrayidx, align 8
  store double* %3, double** %row1, align 8
  %4 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %rows1 = getelementptr inbounds %struct.Matrix, %struct.Matrix* %4, i32 0, i32 2
  %5 = load double**, double*** %rows1, align 8
  %6 = load i32, i32* %j.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds double*, double** %5, i64 %idxprom2
  %7 = load double*, double** %arrayidx3, align 8
  store double* %7, double** %row2, align 8
  %8 = load double*, double** %row1, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx4, align 8
  %10 = load double*, double** %row2, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 0
  %11 = load double, double* %arrayidx5, align 8
  %div = fdiv double %9, %11
  store double %div, double* %factor, align 8
  store i32 0, i32* %j6, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %j6, align 4
  %13 = load %struct.Matrix*, %struct.Matrix** %matrix.addr, align 8
  %num_cols = getelementptr inbounds %struct.Matrix, %struct.Matrix* %13, i32 0, i32 1
  %14 = load i32, i32* %num_cols, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load double*, double** %row2, align 8
  %16 = load i32, i32* %j6, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds double, double* %15, i64 %idxprom7
  %17 = load double, double* %arrayidx8, align 8
  %18 = load double, double* %factor, align 8
  %mul = fmul double %17, %18
  %19 = load double*, double** %row1, align 8
  %20 = load i32, i32* %j6, align 4
  %idxprom9 = sext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds double, double* %19, i64 %idxprom9
  %21 = load double, double* %arrayidx10, align 8
  %sub = fsub double %21, %mul
  store double %sub, double* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %j6, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j6, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %matrix = alloca %struct.Matrix*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call %struct.Matrix* @make_matrix(i32 3, i32 4)
  store %struct.Matrix* %call, %struct.Matrix** %matrix, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  %num_rows = getelementptr inbounds %struct.Matrix, %struct.Matrix* %1, i32 0, i32 0
  %2 = load i32, i32* %num_rows, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  %num_cols = getelementptr inbounds %struct.Matrix, %struct.Matrix* %4, i32 0, i32 1
  %5 = load i32, i32* %num_cols, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %add4 = add nsw i32 %add, 1
  %conv = sitofp i32 %add4 to double
  %8 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  %rows = getelementptr inbounds %struct.Matrix, %struct.Matrix* %8, i32 0, i32 2
  %9 = load double**, double*** %rows, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds double*, double** %9, i64 %idxprom
  %11 = load double*, double** %arrayidx, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds double, double* %11, i64 %idxprom5
  store double %conv, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end9:                                         ; preds = %for.cond
  %15 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  call void @print_matrix(%struct.Matrix* %15)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  call void @reduce_matrix_rows(%struct.Matrix* %16, i32 1, i32 0)
  %17 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  call void @reduce_matrix_rows(%struct.Matrix* %17, i32 2, i32 0)
  %18 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  call void @print_matrix(%struct.Matrix* %18)
  %19 = load %struct.Matrix*, %struct.Matrix** %matrix, align 8
  call void @free_matrix(%struct.Matrix* %19)
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

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
