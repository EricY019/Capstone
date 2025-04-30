; ModuleID = './code/261-14481hardstride.c'
source_filename = "./code/261-14481hardstride.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %MEM_SIZE = alloca i32, align 4
  %DURATION = alloca i32, align 4
  %DELAY_OPS = alloca i32, align 4
  %count = alloca i32, align 4
  %mem = alloca ptr, align 8
  %elapsed = alloca i32, align 4
  %tmp = alloca i32, align 4
  %read_addr = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 10485760, ptr %MEM_SIZE, align 4
  store i32 60000000, ptr %DURATION, align 4
  store i32 1, ptr %DELAY_OPS, align 4
  store i32 0, ptr %count, align 4
  %0 = load i32, ptr %MEM_SIZE, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %mem, align 8
  store i32 0, ptr %elapsed, align 4
  store i32 0, ptr %tmp, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %elapsed, align 4
  %2 = load i32, ptr %DURATION, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %count, align 4
  %4 = load i32, ptr %MEM_SIZE, align 4
  %rem = srem i32 %3, %4
  store i32 %rem, ptr %read_addr, align 4
  %5 = load ptr, ptr %mem, align 8
  %6 = load i32, ptr %read_addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load i32, ptr %tmp, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %tmp, align 4
  %9 = load i32, ptr %DELAY_OPS, align 4
  %10 = load i32, ptr %elapsed, align 4
  %add2 = add nsw i32 %10, %9
  store i32 %add2, ptr %elapsed, align 4
  %11 = load i32, ptr %count, align 4
  %add3 = add nsw i32 %11, 16
  store i32 %add3, ptr %count, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %tmp, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
