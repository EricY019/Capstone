; ModuleID = './code/055-26206task_3.c'
source_filename = "./code/055-26206task_3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"%d - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %f = alloca i32, align 4
  %count = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %tf = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %count, align 4
  store i32 2, ptr %a, align 4
  store i32 0, ptr %f, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %entry
  %0 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %while.body, label %while.end28

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end10, %while.body
  %1 = load i32, ptr %f, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %2 = load i32, ptr %a, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %a, align 4
  store i32 1, ptr %t, align 4
  store i32 1, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body3
  %3 = load i32, ptr %x, align 4
  %4 = load i32, ptr %a, align 4
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %a, align 4
  %6 = load i32, ptr %x, align 4
  %rem = srem i32 %5, %6
  %cmp5 = icmp slt i32 %rem, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, ptr %a, align 4
  %8 = load i32, ptr %x, align 4
  %rem6 = srem i32 %7, %8
  %cmp7 = icmp sgt i32 %rem6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, ptr %t, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %x, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %x, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %t, align 4
  br i1 true, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  store i32 1, ptr %f, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.end
  br label %while.cond1, !llvm.loop !7

while.end:                                        ; preds = %while.cond1
  %10 = load i32, ptr %a, align 4
  %add = add nsw i32 %10, 2
  store i32 %add, ptr %b, align 4
  store i32 1, ptr %tf, align 4
  store i32 1, ptr %x, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc21, %while.end
  %11 = load i32, ptr %x, align 4
  %12 = load i32, ptr %b, align 4
  %cmp12 = icmp slt i32 %11, %12
  br i1 %cmp12, label %for.body13, label %for.end23

for.body13:                                       ; preds = %for.cond11
  %13 = load i32, ptr %b, align 4
  %14 = load i32, ptr %x, align 4
  %rem14 = srem i32 %13, %14
  %cmp15 = icmp slt i32 %rem14, 0
  br i1 %cmp15, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %for.body13
  %15 = load i32, ptr %b, align 4
  %16 = load i32, ptr %x, align 4
  %rem17 = srem i32 %15, %16
  %cmp18 = icmp sgt i32 %rem17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false16, %for.body13
  store i32 0, ptr %tf, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %lor.lhs.false16
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %17 = load i32, ptr %x, align 4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %x, align 4
  br label %for.cond11, !llvm.loop !8

for.end23:                                        ; preds = %for.cond11
  store i32 1, ptr %tf, align 4
  br i1 true, label %if.then24, label %if.end27

if.then24:                                        ; preds = %for.end23
  %18 = load i32, ptr %a, align 4
  %19 = load i32, ptr %b, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %18, i32 noundef %19)
  %20 = load i32, ptr %count, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, ptr %count, align 4
  %21 = load i32, ptr %a, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, ptr %a, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %for.end23
  br label %while.cond, !llvm.loop !9

while.end28:                                      ; preds = %while.cond
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
