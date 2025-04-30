; ModuleID = './code/065-2609trace-break.c'
source_filename = "./code/065-2609trace-break.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@llvm.used = appending global [1 x ptr] [ptr @func], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @func() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @marker()
  call void @end()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @marker() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, ptr %a, align 4
  %0 = load i32, ptr %a, align 4
  store i32 %0, ptr %b, align 4
  call void asm sideeffect "    .global set_point\0Aset_point:\0A", ""() #1, !srcloc !5
  call void asm sideeffect "    .global after_set_point\0Aafter_set_point:\0A", ""() #1, !srcloc !6
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @end() #0 {
entry:
  ret void
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
!5 = !{i64 1282, i64 2147504547}
!6 = !{i64 1458, i64 2147504587}
