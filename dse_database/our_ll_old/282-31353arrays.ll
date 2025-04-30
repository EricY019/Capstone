; ModuleID = './code/282-31353arrays.c'
source_filename = "./code/282-31353arrays.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@array = global [3 x i32] zeroinitializer, align 4
@i = global i32 0, align 4
@j = global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"i %d j %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr @array, align 4
  store i32 2, ptr getelementptr inbounds ([3 x i32], ptr @array, i64 0, i64 1), align 4
  store i32 3, ptr getelementptr inbounds ([3 x i32], ptr @array, i64 0, i64 2), align 4
  store i32 0, ptr @i, align 4
  store i32 10, ptr @j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr @i, align 4
  %1 = load i32, ptr @j, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr @i, align 4
  %3 = load i32, ptr @j, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, ptr @i, align 4
  %4 = load i32, ptr @j, align 4
  %5 = load i32, ptr @i, align 4
  %div = sdiv i32 %4, %5
  %6 = load i32, ptr @j, align 4
  %add1 = add nsw i32 %div, %6
  store i32 %add1, ptr @j, align 4
  %7 = load i32, ptr @i, align 4
  %8 = load i32, ptr @j, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7, i32 noundef %8)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
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
