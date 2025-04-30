; ModuleID = './code/100-23843guia-wagstaff.c'
source_filename = "./code/100-23843guia-wagstaff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [32 x i8] c"\0An\C2\B0 de Wagstaff encontrado! %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca i32, align 4
  %w = alloca i32, align 4
  %div_p = alloca i32, align 4
  %div_w = alloca i32, align 4
  %prim_v = alloca i32, align 4
  %resultado = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 2, ptr %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, ptr %p, align 4
  %cmp = icmp sle i32 %0, 31
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %prim_v, align 4
  store i32 1, ptr %div_p, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %div_p, align 4
  %2 = load i32, ptr %p, align 4
  %cmp2 = icmp sle i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %p, align 4
  %4 = load i32, ptr %div_p, align 4
  %rem = srem i32 %3, %4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %5 = load i32, ptr %prim_v, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %prim_v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %div_p, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %div_p, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %7 = load i32, ptr %prim_v, align 4
  %cmp5 = icmp eq i32 %7, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.end
  store i32 2, ptr %resultado, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc10, %if.then6
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %p, align 4
  %cmp8 = icmp sle i32 %8, %9
  br i1 %cmp8, label %for.body9, label %for.end12

for.body9:                                        ; preds = %for.cond7
  %10 = load i32, ptr %resultado, align 4
  %mul = mul nsw i32 %10, 2
  store i32 %mul, ptr %resultado, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body9
  %11 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond7, !llvm.loop !7

for.end12:                                        ; preds = %for.cond7
  %12 = load i32, ptr %resultado, align 4
  %add13 = add nsw i32 %12, 1
  %div = sdiv i32 %add13, 3
  store i32 %div, ptr %w, align 4
  store i32 0, ptr %prim_v, align 4
  store i32 1, ptr %div_w, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc22, %for.end12
  %13 = load i32, ptr %div_w, align 4
  %14 = load i32, ptr %w, align 4
  %cmp15 = icmp sle i32 %13, %14
  br i1 %cmp15, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond14
  %15 = load i32, ptr %w, align 4
  %16 = load i32, ptr %div_w, align 4
  %rem17 = srem i32 %15, %16
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body16
  %17 = load i32, ptr %prim_v, align 4
  %add20 = add nsw i32 %17, 1
  store i32 %add20, ptr %prim_v, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.body16
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21
  %18 = load i32, ptr %div_w, align 4
  %inc23 = add nsw i32 %18, 1
  store i32 %inc23, ptr %div_w, align 4
  br label %for.cond14, !llvm.loop !8

for.end24:                                        ; preds = %for.cond14
  %19 = load i32, ptr %prim_v, align 4
  %cmp25 = icmp eq i32 %19, 2
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end24
  %20 = load i32, ptr %w, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.end24
  br label %if.end28

if.else:                                          ; preds = %for.end
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end27
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %21 = load i32, ptr %p, align 4
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, ptr %p, align 4
  br label %for.cond, !llvm.loop !9

for.end31:                                        ; preds = %for.cond
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
