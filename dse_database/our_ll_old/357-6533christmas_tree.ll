; ModuleID = './code/357-6533christmas_tree.c'
source_filename = "./code/357-6533christmas_tree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %current_row = alloca i32, align 4
  %max_rows = alloca i32, align 4
  %i = alloca i32, align 4
  %i20 = alloca i32, align 4
  %i47 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 4, ptr %max_rows, align 4
  store i32 0, ptr %current_row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %current_row, align 4
  %1 = load i32, ptr %max_rows, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %max_rows, align 4
  %4 = load i32, ptr %current_row, align 4
  %sub = sub nsw i32 %3, %4
  %sub2 = sub nsw i32 %sub, 1
  %cmp3 = icmp slt i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc9, %for.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %current_row, align 4
  %mul = mul nsw i32 2, %7
  %add = add nsw i32 1, %mul
  %cmp6 = icmp slt i32 %6, %add
  br i1 %cmp6, label %for.body7, label %for.end11

for.body7:                                        ; preds = %for.cond5
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body7
  %8 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond5, !llvm.loop !7

for.end11:                                        ; preds = %for.cond5
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc13

for.inc13:                                        ; preds = %for.end11
  %9 = load i32, ptr %current_row, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, ptr %current_row, align 4
  br label %for.cond, !llvm.loop !8

for.end15:                                        ; preds = %for.cond
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 7, ptr %max_rows, align 4
  store i32 0, ptr %current_row, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc40, %for.end15
  %10 = load i32, ptr %current_row, align 4
  %11 = load i32, ptr %max_rows, align 4
  %cmp18 = icmp slt i32 %10, %11
  br i1 %cmp18, label %for.body19, label %for.end42

for.body19:                                       ; preds = %for.cond17
  store i32 0, ptr %i20, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc27, %for.body19
  %12 = load i32, ptr %i20, align 4
  %13 = load i32, ptr %max_rows, align 4
  %14 = load i32, ptr %current_row, align 4
  %sub22 = sub nsw i32 %13, %14
  %sub23 = sub nsw i32 %sub22, 1
  %cmp24 = icmp slt i32 %12, %sub23
  br i1 %cmp24, label %for.body25, label %for.end29

for.body25:                                       ; preds = %for.cond21
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %for.inc27

for.inc27:                                        ; preds = %for.body25
  %15 = load i32, ptr %i20, align 4
  %inc28 = add nsw i32 %15, 1
  store i32 %inc28, ptr %i20, align 4
  br label %for.cond21, !llvm.loop !9

for.end29:                                        ; preds = %for.cond21
  store i32 0, ptr %i20, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end29
  %16 = load i32, ptr %i20, align 4
  %17 = load i32, ptr %current_row, align 4
  %mul31 = mul nsw i32 2, %17
  %add32 = add nsw i32 1, %mul31
  %cmp33 = icmp slt i32 %16, %add32
  br i1 %cmp33, label %for.body34, label %for.end38

for.body34:                                       ; preds = %for.cond30
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body34
  %18 = load i32, ptr %i20, align 4
  %inc37 = add nsw i32 %18, 1
  store i32 %inc37, ptr %i20, align 4
  br label %for.cond30, !llvm.loop !10

for.end38:                                        ; preds = %for.cond30
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc40

for.inc40:                                        ; preds = %for.end38
  %19 = load i32, ptr %current_row, align 4
  %inc41 = add nsw i32 %19, 1
  store i32 %inc41, ptr %current_row, align 4
  br label %for.cond17, !llvm.loop !11

for.end42:                                        ; preds = %for.cond17
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 11, ptr %max_rows, align 4
  store i32 0, ptr %current_row, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc67, %for.end42
  %20 = load i32, ptr %current_row, align 4
  %21 = load i32, ptr %max_rows, align 4
  %cmp45 = icmp slt i32 %20, %21
  br i1 %cmp45, label %for.body46, label %for.end69

for.body46:                                       ; preds = %for.cond44
  store i32 0, ptr %i47, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body46
  %22 = load i32, ptr %i47, align 4
  %23 = load i32, ptr %max_rows, align 4
  %24 = load i32, ptr %current_row, align 4
  %sub49 = sub nsw i32 %23, %24
  %sub50 = sub nsw i32 %sub49, 1
  %cmp51 = icmp slt i32 %22, %sub50
  br i1 %cmp51, label %for.body52, label %for.end56

for.body52:                                       ; preds = %for.cond48
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %for.inc54

for.inc54:                                        ; preds = %for.body52
  %25 = load i32, ptr %i47, align 4
  %inc55 = add nsw i32 %25, 1
  store i32 %inc55, ptr %i47, align 4
  br label %for.cond48, !llvm.loop !12

for.end56:                                        ; preds = %for.cond48
  store i32 0, ptr %i47, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc63, %for.end56
  %26 = load i32, ptr %i47, align 4
  %27 = load i32, ptr %current_row, align 4
  %mul58 = mul nsw i32 2, %27
  %add59 = add nsw i32 1, %mul58
  %cmp60 = icmp slt i32 %26, %add59
  br i1 %cmp60, label %for.body61, label %for.end65

for.body61:                                       ; preds = %for.cond57
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc63

for.inc63:                                        ; preds = %for.body61
  %28 = load i32, ptr %i47, align 4
  %inc64 = add nsw i32 %28, 1
  store i32 %inc64, ptr %i47, align 4
  br label %for.cond57, !llvm.loop !13

for.end65:                                        ; preds = %for.cond57
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc67

for.inc67:                                        ; preds = %for.end65
  %29 = load i32, ptr %current_row, align 4
  %inc68 = add nsw i32 %29, 1
  store i32 %inc68, ptr %current_row, align 4
  br label %for.cond44, !llvm.loop !14

for.end69:                                        ; preds = %for.cond44
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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
