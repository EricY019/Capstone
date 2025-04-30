; ModuleID = './code/144-4458dowhile.c'
source_filename = "./code/144-4458dowhile.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, ptr %i, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  store i32 10, ptr %i, align 4
  br label %do.body1

do.body1:                                         ; preds = %do.cond3, %do.end
  %2 = load i32, ptr %i, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %do.cond3

do.cond3:                                         ; preds = %do.body1
  %3 = load i32, ptr %i, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %i, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %do.body1, label %do.end5, !llvm.loop !7

do.end5:                                          ; preds = %do.cond3
  %4 = load i32, ptr %i, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  store i32 10, ptr %i, align 4
  br label %do.body7

do.body7:                                         ; preds = %do.cond9, %do.end5
  %5 = load i32, ptr %i, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %do.cond9

do.cond9:                                         ; preds = %do.body7
  %6 = load i32, ptr %i, align 4
  %dec10 = add nsw i32 %6, -1
  store i32 %dec10, ptr %i, align 4
  %tobool11 = icmp ne i32 %dec10, 0
  br i1 %tobool11, label %do.body7, label %do.end12, !llvm.loop !8

do.end12:                                         ; preds = %do.cond9
  %7 = load i32, ptr %i, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  br label %do.body14

do.body14:                                        ; preds = %do.cond20, %do.end12
  store i32 0, ptr %j, align 4
  br label %do.body15

do.body15:                                        ; preds = %do.cond17, %do.body14
  %8 = load i32, ptr %j, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  br label %do.cond17

do.cond17:                                        ; preds = %do.body15
  %9 = load i32, ptr %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4
  %cmp = icmp slt i32 %inc, 5
  br i1 %cmp, label %do.body15, label %do.end18, !llvm.loop !9

do.end18:                                         ; preds = %do.cond17
  %10 = load i32, ptr %i, align 4
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  br label %do.cond20

do.cond20:                                        ; preds = %do.end18
  %11 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %11, 1
  store i32 %inc21, ptr %i, align 4
  %cmp22 = icmp slt i32 %11, 3
  br i1 %cmp22, label %do.body14, label %do.end23, !llvm.loop !10

do.end23:                                         ; preds = %do.cond20
  %12 = load i32, ptr %i, align 4
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
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
