; ModuleID = './code/360-2648reloc4lib2.c'
source_filename = "./code/360-2648reloc4lib2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"extern int \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"foo%02x%02x (void), \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"foo%02xff (void);\0Aint bar%02x (int x) { return x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" + foo%02x%02x ()\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"; }\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 255
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %j, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %5, i32 noundef %6)
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %j, align 4
  %cmp7 = icmp slt i32 %7, 256
  br i1 %cmp7, label %for.body8, label %for.end12

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %j, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %8, i32 noundef %9)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body8
  %10 = load i32, ptr %j, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %j, align 4
  br label %for.cond6, !llvm.loop !7

for.end12:                                        ; preds = %for.cond6
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %for.inc14

for.inc14:                                        ; preds = %for.end12
  %11 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end16:                                        ; preds = %for.cond
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
