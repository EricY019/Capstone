; ModuleID = './code/117-28650cache_locality_2d_array_test.c'
source_filename = "./code/117-28650cache_locality_2d_array_test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@matrix = internal global ptr null, align 8
@matrix2 = internal global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%f secs\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bench_contig(i64 noundef %iter) #0 {
entry:
  %iter.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %r = alloca i64, align 8
  %c = alloca i64, align 8
  store i64 %iter, ptr %iter.addr, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %r, align 8
  store i64 0, ptr %c, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %iter.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %r, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.body
  %2 = load i64, ptr %r, align 8
  %cmp2 = icmp ult i64 %2, 100
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  store i64 0, ptr %c, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i64, ptr %c, align 8
  %cmp5 = icmp ult i64 %3, 100000
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %4 = load ptr, ptr @matrix, align 8
  %5 = load i64, ptr %r, align 8
  %6 = load i64, ptr %r, align 8
  %7 = load i64, ptr %c, align 8
  %mul = mul i64 %6, %7
  %add = add i64 %5, %mul
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %add
  store float 1.000000e+00, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i64, ptr %c, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %c, align 8
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i64, ptr %r, align 8
  %inc8 = add i64 %9, 1
  store i64 %inc8, ptr %r, align 8
  br label %for.cond1, !llvm.loop !7

for.end9:                                         ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end9
  %10 = load i64, ptr %i, align 8
  %inc11 = add i64 %10, 1
  store i64 %inc11, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bench_row_contig(i64 noundef %iter) #0 {
entry:
  %iter.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %r = alloca i64, align 8
  %c = alloca i64, align 8
  store i64 %iter, ptr %iter.addr, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %r, align 8
  store i64 0, ptr %c, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %iter.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %r, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc8, %for.body
  %2 = load i64, ptr %r, align 8
  %cmp2 = icmp ult i64 %2, 100
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  store i64 0, ptr %c, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i64, ptr %c, align 8
  %cmp5 = icmp ult i64 %3, 100000
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %4 = load ptr, ptr @matrix2, align 8
  %5 = load i64, ptr %r, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %5
  %6 = load ptr, ptr %arrayidx, align 8
  %7 = load i64, ptr %c, align 8
  %arrayidx7 = getelementptr inbounds float, ptr %6, i64 %7
  store float 1.000000e+00, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i64, ptr %c, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %c, align 8
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %9 = load i64, ptr %r, align 8
  %inc9 = add i64 %9, 1
  store i64 %inc9, ptr %r, align 8
  br label %for.cond1, !llvm.loop !10

for.end10:                                        ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end10
  %10 = load i64, ptr %i, align 8
  %inc12 = add i64 %10, 1
  store i64 %inc12, ptr %i, align 8
  br label %for.cond, !llvm.loop !11

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %time_r = alloca double, align 8
  %iterations = alloca i64, align 8
  %r = alloca i64, align 8
  %rows = alloca i32, align 4
  %columns = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store double 0.000000e+00, ptr %time_r, align 8
  store i64 100, ptr %iterations, align 8
  store i64 0, ptr %r, align 8
  store i32 100, ptr %rows, align 4
  store i32 100000, ptr %columns, align 4
  %0 = load i32, ptr %rows, align 4
  %1 = load i32, ptr %columns, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul1) #3
  store ptr %call, ptr @matrix, align 8
  %call2 = call i64 @"\01_clock"()
  store i64 %call2, ptr %t1, align 8
  %2 = load i64, ptr %iterations, align 8
  call void @bench_contig(i64 noundef %2)
  %call3 = call i64 @"\01_clock"()
  store i64 %call3, ptr %t2, align 8
  %3 = load i64, ptr %t2, align 8
  %4 = load i64, ptr %t1, align 8
  %call4 = call double @difftime(i64 noundef %3, i64 noundef %4)
  %div = fdiv double %call4, 1.000000e+06
  store double %div, ptr %time_r, align 8
  %5 = load double, ptr %time_r, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %5)
  %6 = load i32, ptr %rows, align 4
  %conv6 = sext i32 %6 to i64
  %mul7 = mul i64 %conv6, 8
  %call8 = call ptr @malloc(i64 noundef %mul7) #3
  store ptr %call8, ptr @matrix2, align 8
  store i64 0, ptr %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %r, align 8
  %8 = load i32, ptr %rows, align 4
  %conv9 = sext i32 %8 to i64
  %cmp = icmp ult i64 %7, %conv9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %columns, align 4
  %conv11 = sext i32 %9 to i64
  %mul12 = mul i64 %conv11, 4
  %call13 = call ptr @malloc(i64 noundef %mul12) #3
  %10 = load ptr, ptr @matrix2, align 8
  %11 = load i64, ptr %r, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %11
  store ptr %call13, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, ptr %r, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %r, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %call14 = call i64 @"\01_clock"()
  store i64 %call14, ptr %t1, align 8
  %13 = load i64, ptr %iterations, align 8
  call void @bench_row_contig(i64 noundef %13)
  %call15 = call i64 @"\01_clock"()
  store i64 %call15, ptr %t2, align 8
  %14 = load i64, ptr %t2, align 8
  %15 = load i64, ptr %t1, align 8
  %call16 = call double @difftime(i64 noundef %14, i64 noundef %15)
  %div17 = fdiv double %call16, 1.000000e+06
  store double %div17, ptr %time_r, align 8
  %16 = load double, ptr %time_r, align 8
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %16)
  %17 = load ptr, ptr @matrix, align 8
  call void @free(ptr noundef %17)
  store i64 0, ptr %r, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc25, %for.end
  %18 = load i64, ptr %r, align 8
  %19 = load i32, ptr %rows, align 4
  %conv20 = sext i32 %19 to i64
  %cmp21 = icmp ult i64 %18, %conv20
  br i1 %cmp21, label %for.body23, label %for.end27

for.body23:                                       ; preds = %for.cond19
  %20 = load ptr, ptr @matrix2, align 8
  %21 = load i64, ptr %r, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %20, i64 %21
  %22 = load ptr, ptr %arrayidx24, align 8
  call void @free(ptr noundef %22)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body23
  %23 = load i64, ptr %r, align 8
  %inc26 = add i64 %23, 1
  store i64 %inc26, ptr %r, align 8
  br label %for.cond19, !llvm.loop !13

for.end27:                                        ; preds = %for.cond19
  %24 = load ptr, ptr @matrix2, align 8
  call void @free(ptr noundef %24)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i64 @"\01_clock"() #2

declare double @difftime(i64 noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare void @free(ptr noundef) #2

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
