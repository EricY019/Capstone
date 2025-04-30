; ModuleID = './code/232-31619dw2-inline-param-main.c'
source_filename = "./code/232-31619dw2-inline-param-main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

module asm ".globl cu_text_start"
module asm "cu_text_start:"
module asm ".globl cu_text_end"
module asm "cu_text_end:"

@v = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void asm sideeffect ".globl block_start", ""() #1, !srcloc !5
  call void asm sideeffect "block_start:", ""() #1, !srcloc !6
  store volatile i32 1, ptr @v, align 4
  call void asm sideeffect "break_at:", ""() #1, !srcloc !7
  store volatile i32 2, ptr @v, align 4
  call void asm sideeffect ".globl block_end", ""() #1, !srcloc !8
  call void asm sideeffect "block_end:", ""() #1, !srcloc !9
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 853}
!6 = !{i64 883}
!7 = !{i64 918}
!8 = !{i64 950}
!9 = !{i64 978}
