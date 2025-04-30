; ModuleID = './code/187-1239p39.c'
source_filename = "./code/187-1239p39.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %max_p = alloca i32, align 4
  %max_c = alloca i32, align 4
  %p = alloca i32, align 4
  %count = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %max_p, align 4
  store i32 0, ptr %max_c, align 4
  store i32 3, ptr %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %p, align 4
  %cmp = icmp sle i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %count, align 4
  store i32 1, ptr %a, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc19, %for.body
  %1 = load i32, ptr %a, align 4
  %2 = load i32, ptr %p, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end21

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %a, align 4
  store i32 %3, ptr %b, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %b, align 4
  %5 = load i32, ptr %p, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %p, align 4
  %7 = load i32, ptr %a, align 4
  %sub = sub nsw i32 %6, %7
  %8 = load i32, ptr %b, align 4
  %sub7 = sub nsw i32 %sub, %8
  store i32 %sub7, ptr %c, align 4
  %9 = load i32, ptr %a, align 4
  %10 = load i32, ptr %b, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32, ptr %c, align 4
  %cmp8 = icmp slt i32 %add, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  br label %for.inc

if.end:                                           ; preds = %for.body6
  %12 = load i32, ptr %c, align 4
  %cmp9 = icmp sle i32 %12, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %13 = load i32, ptr %c, align 4
  %14 = load i32, ptr %c, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, ptr %a, align 4
  %16 = load i32, ptr %a, align 4
  %mul12 = mul nsw i32 %15, %16
  %17 = load i32, ptr %b, align 4
  %18 = load i32, ptr %b, align 4
  %mul13 = mul nsw i32 %17, %18
  %add14 = add nsw i32 %mul12, %mul13
  %cmp15 = icmp eq i32 %mul, %add14
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  %19 = load i32, ptr %count, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end11
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.then10, %if.then
  %20 = load i32, ptr %b, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, ptr %b, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %21 = load i32, ptr %a, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, ptr %a, align 4
  br label %for.cond1, !llvm.loop !7

for.end21:                                        ; preds = %for.cond1
  %22 = load i32, ptr %count, align 4
  %23 = load i32, ptr %max_c, align 4
  %cmp22 = icmp sgt i32 %22, %23
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end21
  %24 = load i32, ptr %p, align 4
  store i32 %24, ptr %max_p, align 4
  %25 = load i32, ptr %count, align 4
  store i32 %25, ptr %max_c, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end21
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %26 = load i32, ptr %p, align 4
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, ptr %p, align 4
  br label %for.cond, !llvm.loop !8

for.end27:                                        ; preds = %for.cond
  %27 = load i32, ptr %max_p, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %27)
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
