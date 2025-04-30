; ModuleID = 'code/117-28650cache_locality_2d_array_test.c'
source_filename = "code/117-28650cache_locality_2d_array_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix = internal global float* null, align 8
@matrix2 = internal global float** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%f secs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bench_contig(i64 %iter) #0 {
entry:
  %iter.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %r = alloca i64, align 8
  %c = alloca i64, align 8
  store i64 %iter, i64* %iter.addr, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %r, align 8
  store i64 0, i64* %c, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %iter.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %r, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.body
  %2 = load i64, i64* %r, align 8
  %cmp2 = icmp ult i64 %2, 100
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  store i64 0, i64* %c, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i64, i64* %c, align 8
  %cmp5 = icmp ult i64 %3, 100000
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %4 = load float*, float** @matrix, align 8
  %5 = load i64, i64* %r, align 8
  %6 = load i64, i64* %r, align 8
  %7 = load i64, i64* %c, align 8
  %mul = mul i64 %6, %7
  %add = add i64 %5, %mul
  %arrayidx = getelementptr inbounds float, float* %4, i64 %add
  store float 1.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i64, i64* %c, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %c, align 8
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i64, i64* %r, align 8
  %inc8 = add i64 %9, 1
  store i64 %inc8, i64* %r, align 8
  br label %for.cond1, !llvm.loop !6

for.end9:                                         ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end9
  %10 = load i64, i64* %i, align 8
  %inc11 = add i64 %10, 1
  store i64 %inc11, i64* %i, align 8
  br label %for.cond, !llvm.loop !7

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bench_row_contig(i64 %iter) #0 {
entry:
  %iter.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %r = alloca i64, align 8
  %c = alloca i64, align 8
  store i64 %iter, i64* %iter.addr, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %r, align 8
  store i64 0, i64* %c, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %iter.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %r, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc8, %for.body
  %2 = load i64, i64* %r, align 8
  %cmp2 = icmp ult i64 %2, 100
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  store i64 0, i64* %c, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i64, i64* %c, align 8
  %cmp5 = icmp ult i64 %3, 100000
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %4 = load float**, float*** @matrix2, align 8
  %5 = load i64, i64* %r, align 8
  %arrayidx = getelementptr inbounds float*, float** %4, i64 %5
  %6 = load float*, float** %arrayidx, align 8
  %7 = load i64, i64* %c, align 8
  %arrayidx7 = getelementptr inbounds float, float* %6, i64 %7
  store float 1.000000e+00, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i64, i64* %c, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %c, align 8
  br label %for.cond4, !llvm.loop !8

for.end:                                          ; preds = %for.cond4
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %9 = load i64, i64* %r, align 8
  %inc9 = add i64 %9, 1
  store i64 %inc9, i64* %r, align 8
  br label %for.cond1, !llvm.loop !9

for.end10:                                        ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end10
  %10 = load i64, i64* %i, align 8
  %inc12 = add i64 %10, 1
  store i64 %inc12, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %time_r = alloca double, align 8
  %iterations = alloca i64, align 8
  %r = alloca i64, align 8
  %rows = alloca i32, align 4
  %columns = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store double 0.000000e+00, double* %time_r, align 8
  store i64 100, i64* %iterations, align 8
  store i64 0, i64* %r, align 8
  store i32 100, i32* %rows, align 4
  store i32 100000, i32* %columns, align 4
  %0 = load i32, i32* %rows, align 4
  %1 = load i32, i32* %columns, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul1) #4
  %2 = bitcast i8* %call to float*
  store float* %2, float** @matrix, align 8
  %call2 = call i64 @clock() #4
  store i64 %call2, i64* %t1, align 8
  %3 = load i64, i64* %iterations, align 8
  call void @bench_contig(i64 %3)
  %call3 = call i64 @clock() #4
  store i64 %call3, i64* %t2, align 8
  %4 = load i64, i64* %t2, align 8
  %5 = load i64, i64* %t1, align 8
  %call4 = call double @difftime(i64 %4, i64 %5) #5
  %div = fdiv double %call4, 1.000000e+06
  store double %div, double* %time_r, align 8
  %6 = load double, double* %time_r, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %6)
  %7 = load i32, i32* %rows, align 4
  %conv6 = sext i32 %7 to i64
  %mul7 = mul i64 %conv6, 8
  %call8 = call noalias align 16 i8* @malloc(i64 %mul7) #4
  %8 = bitcast i8* %call8 to float**
  store float** %8, float*** @matrix2, align 8
  store i64 0, i64* %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, i64* %r, align 8
  %10 = load i32, i32* %rows, align 4
  %conv9 = sext i32 %10 to i64
  %cmp = icmp ult i64 %9, %conv9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %columns, align 4
  %conv11 = sext i32 %11 to i64
  %mul12 = mul i64 %conv11, 4
  %call13 = call noalias align 16 i8* @malloc(i64 %mul12) #4
  %12 = bitcast i8* %call13 to float*
  %13 = load float**, float*** @matrix2, align 8
  %14 = load i64, i64* %r, align 8
  %arrayidx = getelementptr inbounds float*, float** %13, i64 %14
  store float* %12, float** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %r, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %r, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %call14 = call i64 @clock() #4
  store i64 %call14, i64* %t1, align 8
  %16 = load i64, i64* %iterations, align 8
  call void @bench_row_contig(i64 %16)
  %call15 = call i64 @clock() #4
  store i64 %call15, i64* %t2, align 8
  %17 = load i64, i64* %t2, align 8
  %18 = load i64, i64* %t1, align 8
  %call16 = call double @difftime(i64 %17, i64 %18) #5
  %div17 = fdiv double %call16, 1.000000e+06
  store double %div17, double* %time_r, align 8
  %19 = load double, double* %time_r, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %19)
  %20 = load float*, float** @matrix, align 8
  %21 = bitcast float* %20 to i8*
  call void @free(i8* %21) #4
  store i64 0, i64* %r, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc25, %for.end
  %22 = load i64, i64* %r, align 8
  %23 = load i32, i32* %rows, align 4
  %conv20 = sext i32 %23 to i64
  %cmp21 = icmp ult i64 %22, %conv20
  br i1 %cmp21, label %for.body23, label %for.end27

for.body23:                                       ; preds = %for.cond19
  %24 = load float**, float*** @matrix2, align 8
  %25 = load i64, i64* %r, align 8
  %arrayidx24 = getelementptr inbounds float*, float** %24, i64 %25
  %26 = load float*, float** %arrayidx24, align 8
  %27 = bitcast float* %26 to i8*
  call void @free(i8* %27) #4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body23
  %28 = load i64, i64* %r, align 8
  %inc26 = add i64 %28, 1
  store i64 %inc26, i64* %r, align 8
  br label %for.cond19, !llvm.loop !12

for.end27:                                        ; preds = %for.cond19
  %29 = load float**, float*** @matrix2, align 8
  %30 = bitcast float** %29 to i8*
  call void @free(i8* %30) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: nounwind readnone willreturn
declare dso_local double @difftime(i64, i64) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

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
