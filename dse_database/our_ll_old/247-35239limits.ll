; ModuleID = './code/247-35239limits.c'
source_filename = "./code/247-35239limits.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [17 x i8] c"CHAR_BIT\09is %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SCHAR_MIN\09is %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SCHAR_MAX\09is %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SHRT_MIN\09is %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SHRT_MAX\09is %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"USHRT_MAX\09is %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"INT_MIN\09is %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"INT_MAX\09is %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"UINT_MAX\09is %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"LONG_MIN\09is %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"LONG_MAX\09is %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ULONG_MAX\09is %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 8)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef -128)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 127)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef -32768)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef 32767)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef 65535)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef -2147483648)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef 2147483647)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef -1)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i64 noundef -9223372036854775808)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i64 noundef 9223372036854775807)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i64 noundef -1)
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
