; ModuleID = './code/093-15271task_1.c'
source_filename = "./code/093-15271task_1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"%c - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 65, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 91
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %conv1 = sext i8 %2 to i32
  %3 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv1, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 97, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %5, 123
  br i1 %cmp3, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4
  %conv6 = trunc i32 %6 to i8
  store i8 %conv6, ptr %c, align 1
  %7 = load i8, ptr %c, align 1
  %conv7 = sext i8 %7 to i32
  %8 = load i32, ptr %i, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv7, i32 noundef %8)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %9 = load i32, ptr %i, align 4
  %add10 = add nsw i32 %9, 1
  store i32 %add10, ptr %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end11:                                        ; preds = %for.cond2
  store i32 48, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc19, %for.end11
  %10 = load i32, ptr %i, align 4
  %cmp13 = icmp slt i32 %10, 58
  br i1 %cmp13, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond12
  %11 = load i32, ptr %i, align 4
  %conv16 = trunc i32 %11 to i8
  store i8 %conv16, ptr %c, align 1
  %12 = load i8, ptr %c, align 1
  %conv17 = sext i8 %12 to i32
  %13 = load i32, ptr %i, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv17, i32 noundef %13)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %14 = load i32, ptr %i, align 4
  %add20 = add nsw i32 %14, 1
  store i32 %add20, ptr %i, align 4
  br label %for.cond12, !llvm.loop !8

for.end21:                                        ; preds = %for.cond12
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
