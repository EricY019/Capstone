; ModuleID = './code/124-7426task_1.c'
source_filename = "./code/124-7426task_1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %broqch = alloca i32, align 4
  %a = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 97, ptr %broqch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %broqch, align 4
  %cmp = icmp slt i32 %0, 123
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %broqch, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, ptr %a, align 1
  %2 = load i8, ptr %a, align 1
  %conv1 = sext i8 %2 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %3 = load i32, ptr %broqch, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %broqch, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %broqch, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 65, ptr %broqch, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc13, %for.end
  %5 = load i32, ptr %broqch, align 4
  %cmp5 = icmp slt i32 %5, 91
  br i1 %cmp5, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond4
  %6 = load i32, ptr %broqch, align 4
  %conv8 = trunc i32 %6 to i8
  store i8 %conv8, ptr %a, align 1
  %7 = load i8, ptr %a, align 1
  %conv9 = sext i8 %7 to i32
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv9)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %8 = load i32, ptr %broqch, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %9 = load i32, ptr %broqch, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, ptr %broqch, align 4
  br label %for.cond4, !llvm.loop !7

for.end15:                                        ; preds = %for.cond4
  store i32 48, ptr %broqch, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.end15
  %10 = load i32, ptr %broqch, align 4
  %cmp17 = icmp slt i32 %10, 58
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %11 = load i32, ptr %broqch, align 4
  %conv20 = trunc i32 %11 to i8
  store i8 %conv20, ptr %a, align 1
  %12 = load i8, ptr %a, align 1
  %conv21 = sext i8 %12 to i32
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv21)
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %13 = load i32, ptr %broqch, align 4
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %13)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %14 = load i32, ptr %broqch, align 4
  %inc26 = add nsw i32 %14, 1
  store i32 %inc26, ptr %broqch, align 4
  br label %for.cond16, !llvm.loop !8

for.end27:                                        ; preds = %for.cond16
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
