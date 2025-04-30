; ModuleID = './code/172-10241reverse_number.c'
source_filename = "./code/172-10241reverse_number.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"5170984 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"406567 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"368750 %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"2369510 %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"2183293 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @reverse_a_number(i64 noundef %number) #0 {
entry:
  %number.addr = alloca i64, align 8
  %rev_num = alloca i32, align 4
  store i64 %number, ptr %number.addr, align 8
  store i32 0, ptr %rev_num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %number.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %rev_num, align 4
  %mul = mul nsw i32 %1, 10
  store i32 %mul, ptr %rev_num, align 4
  %2 = load i32, ptr %rev_num, align 4
  %conv = sext i32 %2 to i64
  %3 = load i64, ptr %number.addr, align 8
  %rem = srem i64 %3, 10
  %add = add nsw i64 %conv, %rem
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, ptr %rev_num, align 4
  %4 = load i64, ptr %number.addr, align 8
  %div = sdiv i64 %4, 10
  store i64 %div, ptr %number.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %rev_num, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @reverse_a_number(i64 noundef 5170984)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  %call2 = call i32 @reverse_a_number(i64 noundef 406567)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call2)
  %call4 = call i32 @reverse_a_number(i64 noundef 368750)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call4)
  %call6 = call i32 @reverse_a_number(i64 noundef 2369510)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %call6)
  %call8 = call i32 @reverse_a_number(i64 noundef 2183293)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %call8)
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
