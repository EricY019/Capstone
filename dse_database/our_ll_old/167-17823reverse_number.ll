; ModuleID = './code/167-17823reverse_number.c'
source_filename = "./code/167-17823reverse_number.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"%d\09\09%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num1 = alloca i32, align 4
  %num = alloca i32, align 4
  %mun1 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %mun1, align 4
  store i32 5170984, ptr %num1, align 4
  %0 = load i32, ptr %num1, align 4
  store i32 %0, ptr %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %num1, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %mun1, align 4
  %mul = mul nsw i32 %2, 10
  %3 = load i32, ptr %num1, align 4
  %rem = srem i32 %3, 10
  %add = add nsw i32 %mul, %rem
  store i32 %add, ptr %mun1, align 4
  %4 = load i32, ptr %num1, align 4
  %div = sdiv i32 %4, 10
  store i32 %div, ptr %num1, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %num, align 4
  %6 = load i32, ptr %mun1, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5, i32 noundef %6)
  store i32 406567, ptr %num1, align 4
  %7 = load i32, ptr %num1, align 4
  store i32 %7, ptr %num, align 4
  store i32 0, ptr %mun1, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %8 = load i32, ptr %num1, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %while.body3, label %while.end8

while.body3:                                      ; preds = %while.cond1
  %9 = load i32, ptr %mun1, align 4
  %mul4 = mul nsw i32 %9, 10
  %10 = load i32, ptr %num1, align 4
  %rem5 = srem i32 %10, 10
  %add6 = add nsw i32 %mul4, %rem5
  store i32 %add6, ptr %mun1, align 4
  %11 = load i32, ptr %num1, align 4
  %div7 = sdiv i32 %11, 10
  store i32 %div7, ptr %num1, align 4
  br label %while.cond1, !llvm.loop !7

while.end8:                                       ; preds = %while.cond1
  %12 = load i32, ptr %num, align 4
  %13 = load i32, ptr %mun1, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12, i32 noundef %13)
  store i32 368750, ptr %num1, align 4
  %14 = load i32, ptr %num1, align 4
  store i32 %14, ptr %num, align 4
  store i32 0, ptr %mun1, align 4
  br label %while.cond10

while.cond10:                                     ; preds = %while.body12, %while.end8
  %15 = load i32, ptr %num1, align 4
  %cmp11 = icmp ne i32 %15, 0
  br i1 %cmp11, label %while.body12, label %while.end17

while.body12:                                     ; preds = %while.cond10
  %16 = load i32, ptr %mun1, align 4
  %mul13 = mul nsw i32 %16, 10
  %17 = load i32, ptr %num1, align 4
  %rem14 = srem i32 %17, 10
  %add15 = add nsw i32 %mul13, %rem14
  store i32 %add15, ptr %mun1, align 4
  %18 = load i32, ptr %num1, align 4
  %div16 = sdiv i32 %18, 10
  store i32 %div16, ptr %num1, align 4
  br label %while.cond10, !llvm.loop !8

while.end17:                                      ; preds = %while.cond10
  %19 = load i32, ptr %num, align 4
  %20 = load i32, ptr %mun1, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %19, i32 noundef %20)
  store i32 2369510, ptr %num1, align 4
  %21 = load i32, ptr %num1, align 4
  store i32 %21, ptr %num, align 4
  store i32 0, ptr %mun1, align 4
  br label %while.cond19

while.cond19:                                     ; preds = %while.body21, %while.end17
  %22 = load i32, ptr %num1, align 4
  %cmp20 = icmp ne i32 %22, 0
  br i1 %cmp20, label %while.body21, label %while.end26

while.body21:                                     ; preds = %while.cond19
  %23 = load i32, ptr %mun1, align 4
  %mul22 = mul nsw i32 %23, 10
  %24 = load i32, ptr %num1, align 4
  %rem23 = srem i32 %24, 10
  %add24 = add nsw i32 %mul22, %rem23
  store i32 %add24, ptr %mun1, align 4
  %25 = load i32, ptr %num1, align 4
  %div25 = sdiv i32 %25, 10
  store i32 %div25, ptr %num1, align 4
  br label %while.cond19, !llvm.loop !9

while.end26:                                      ; preds = %while.cond19
  %26 = load i32, ptr %num, align 4
  %27 = load i32, ptr %mun1, align 4
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %26, i32 noundef %27)
  store i32 2183293, ptr %num1, align 4
  %28 = load i32, ptr %num1, align 4
  store i32 %28, ptr %num, align 4
  store i32 0, ptr %mun1, align 4
  br label %while.cond28

while.cond28:                                     ; preds = %while.body30, %while.end26
  %29 = load i32, ptr %num1, align 4
  %cmp29 = icmp ne i32 %29, 0
  br i1 %cmp29, label %while.body30, label %while.end35

while.body30:                                     ; preds = %while.cond28
  %30 = load i32, ptr %mun1, align 4
  %mul31 = mul nsw i32 %30, 10
  %31 = load i32, ptr %num1, align 4
  %rem32 = srem i32 %31, 10
  %add33 = add nsw i32 %mul31, %rem32
  store i32 %add33, ptr %mun1, align 4
  %32 = load i32, ptr %num1, align 4
  %div34 = sdiv i32 %32, 10
  store i32 %div34, ptr %num1, align 4
  br label %while.cond28, !llvm.loop !10

while.end35:                                      ; preds = %while.cond28
  %33 = load i32, ptr %num, align 4
  %34 = load i32, ptr %mun1, align 4
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %33, i32 noundef %34)
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
