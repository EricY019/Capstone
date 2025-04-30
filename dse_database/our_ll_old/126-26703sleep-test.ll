; ModuleID = './code/126-26703sleep-test.c'
source_filename = "./code/126-26703sleep-test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [26 x i8] c"sleeping for 1 second...\0A\00", align 1
@__stdoutp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"sleeping for 2 seconds...\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"sleeping for 3 seconds...\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"sleeping for 5 seconds...\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"sleeping for 10 seconds...\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 @fflush(ptr noundef %0)
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %1 = load ptr, ptr @__stdoutp, align 8
  %call4 = call i32 @fflush(ptr noundef %1)
  %call5 = call i32 @"\01_sleep"(i32 noundef 2)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %2 = load ptr, ptr @__stdoutp, align 8
  %call7 = call i32 @fflush(ptr noundef %2)
  %call8 = call i32 @"\01_sleep"(i32 noundef 3)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %3 = load ptr, ptr @__stdoutp, align 8
  %call10 = call i32 @fflush(ptr noundef %3)
  %call11 = call i32 @"\01_sleep"(i32 noundef 5)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %4 = load ptr, ptr @__stdoutp, align 8
  %call13 = call i32 @fflush(ptr noundef %4)
  %call14 = call i32 @"\01_sleep"(i32 noundef 10)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
