; ModuleID = './code/308-2427sizeof.c'
source_filename = "./code/308-2427sizeof.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"ac_cv_sizeof_char=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ac_cv_sizeof_short=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ac_cv_sizeof_int=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ac_cv_sizeof_long=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ac_cv_sizeof_long_long=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ac_cv_sizeof_double=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ac_cv_sizeof_char_p=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef 1)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef 2)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef 4)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef 8)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef 8)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i64 noundef 8)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef 8)
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
