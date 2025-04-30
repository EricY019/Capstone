; ModuleID = './code/199-23881dynarr-ptr.c'
source_filename = "./code/199-23881dynarr-ptr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@table_1_data = global [5 x i32] [i32 1, i32 3, i32 1, i32 2, i32 3], align 4
@table_1_ptr = global ptr getelementptr (i8, ptr @table_1_data, i64 8), align 8
@table_2_data = global [7 x i32] [i32 2, i32 6, i32 5, i32 8, i32 13, i32 21, i32 34], align 4
@table_2_ptr = global ptr getelementptr (i8, ptr @table_2_data, i64 8), align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr @table_1_ptr, align 8
  store i32 2, ptr %0, align 4
  %1 = load ptr, ptr @table_2_ptr, align 8
  store i32 3, ptr %1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
