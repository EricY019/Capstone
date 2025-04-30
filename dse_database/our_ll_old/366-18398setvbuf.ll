; ModuleID = './code/366-18398setvbuf.c'
source_filename = "./code/366-18398setvbuf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [49 x i8] c"'Hello world' will be printed after one second:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Hello \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"World\0A\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"'Hello' will be printed, program sleeps for 1 second, and then world will be printed.\0A\00", align 1
@__stdoutp = external global ptr, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"First example (stdout buffering turned off):\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"World\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %0 = load ptr, ptr @__stdoutp, align 8
  %call6 = call i32 @fflush(ptr noundef %0)
  %call7 = call i32 @"\01_sleep"(i32 noundef 1)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %1 = load ptr, ptr @__stdoutp, align 8
  %call9 = call i32 @setvbuf(ptr noundef %1, ptr noundef null, i32 noundef 2, i64 noundef 0)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call12 = call i32 @"\01_sleep"(i32 noundef 1)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @setvbuf(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
