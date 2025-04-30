; ModuleID = './code/077-24730clock.c'
source_filename = "./code/077-24730clock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [24 x i8] c"CLOCKS PER SEC IS: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"clocks spent on sleeping : %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ticks1 = alloca i64, align 8
  %ticks2 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef 1000000)
  %call1 = call i64 @"\01_clock"()
  store i64 %call1, ptr %ticks1, align 8
  %0 = load i64, ptr %ticks1, align 8
  store i64 %0, ptr %ticks2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, ptr %ticks2, align 8
  %2 = load i64, ptr %ticks1, align 8
  %sub = sub i64 %1, %2
  %cmp = icmp ult i64 %sub, 1000000
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i64 @"\01_clock"()
  store i64 %call2, ptr %ticks2, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call3 = call i64 @"\01_clock"()
  store i64 %call3, ptr %ticks2, align 8
  %3 = load i64, ptr %ticks2, align 8
  %4 = load i64, ptr %ticks1, align 8
  %sub4 = sub i64 %3, %4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %sub4)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i64 @"\01_clock"() #1

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
