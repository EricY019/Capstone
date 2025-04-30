; ModuleID = './code/220-2465pointer.c'
source_filename = "./code/220-2465pointer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [21 x i8] c"\0D!0x%p does not hold\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A!0x%p holds\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0D(0x%p != NULL) does not hold\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\0A(0x%p != NULL) holds\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ptr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr inttoptr (i64 1 to ptr), ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %ptr, align 8
  %1 = ptrtoint ptr %0 to i64
  %shl = shl i64 %1, 1
  %2 = inttoptr i64 %shl to ptr
  store ptr %2, ptr %ptr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %ptr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %3)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %ptr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %4)
  store ptr inttoptr (i64 1 to ptr), ptr %ptr, align 8
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %while.end
  %5 = load ptr, ptr %ptr, align 8
  %6 = ptrtoint ptr %5 to i64
  %shl3 = shl i64 %6, 1
  %7 = inttoptr i64 %shl3 to ptr
  store ptr %7, ptr %ptr, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %while.body4, label %while.end6

while.body4:                                      ; preds = %while.cond2
  %8 = load ptr, ptr %ptr, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %8)
  br label %while.cond2, !llvm.loop !7

while.end6:                                       ; preds = %while.cond2
  %9 = load ptr, ptr %ptr, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %9)
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
