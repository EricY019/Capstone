; ModuleID = './code/160-84632017-02-10-Kopfgesteuerte-While-Schleife-3.c'
source_filename = "./code/160-84632017-02-10-Kopfgesteuerte-While-Schleife-3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"\0A\09\09>>> %d) Summe %d <<<\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %zahl = alloca i32, align 4
  %zaehler = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr @__stdoutp, align 8
  call void @setbuf(ptr noundef %0, ptr noundef null)
  store i32 1, ptr %zahl, align 4
  store i32 1, ptr %zaehler, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %zahl, align 4
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %zaehler, align 4
  %3 = load i32, ptr %zahl, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, i32 noundef %3)
  %4 = load i32, ptr %zahl, align 4
  %5 = load i32, ptr %zahl, align 4
  %mul = mul nsw i32 %5, 2
  %add = add nsw i32 %4, %mul
  store i32 %add, ptr %zahl, align 4
  %6 = load i32, ptr %zaehler, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %zaehler, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare void @setbuf(ptr noundef, ptr noundef) #1

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
