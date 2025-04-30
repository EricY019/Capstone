; ModuleID = './code/122-9083problem_9.c'
source_filename = "./code/122-9083problem_9.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [59 x i8] c"Pythagorean triplet with sum 1000: %d, %d, %d\0AProduct: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ni, align 4
  store i32 0, ptr %nj, align 4
  store i32 0, ptr %nk, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 999
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 999
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %2, 999
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %j, align 4
  %mul7 = mul nsw i32 %5, %6
  %add = add nsw i32 %mul, %mul7
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %k, align 4
  %mul8 = mul nsw i32 %7, %8
  %cmp9 = icmp eq i32 %add, %mul8
  br i1 %cmp9, label %if.then, label %if.end14

if.then:                                          ; preds = %for.body6
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %j, align 4
  %add10 = add nsw i32 %9, %10
  %11 = load i32, ptr %k, align 4
  %add11 = add nsw i32 %add10, %11
  %cmp12 = icmp eq i32 %add11, 1000
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %12 = load i32, ptr %i, align 4
  store i32 %12, ptr %ni, align 4
  %13 = load i32, ptr %j, align 4
  store i32 %13, ptr %nj, align 4
  %14 = load i32, ptr %k, align 4
  store i32 %14, ptr %nk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %15 = load i32, ptr %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %16 = load i32, ptr %j, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, ptr %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %17 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end20:                                        ; preds = %for.cond
  %18 = load i32, ptr %ni, align 4
  %19 = load i32, ptr %nj, align 4
  %20 = load i32, ptr %nk, align 4
  %21 = load i32, ptr %ni, align 4
  %22 = load i32, ptr %nj, align 4
  %mul21 = mul nsw i32 %21, %22
  %23 = load i32, ptr %nk, align 4
  %mul22 = mul nsw i32 %mul21, %23
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %mul22)
  %call23 = call i32 @"\01_system"(ptr noundef @.str.1)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_system"(ptr noundef) #1

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
