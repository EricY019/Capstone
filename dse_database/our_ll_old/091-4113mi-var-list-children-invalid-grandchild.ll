; ModuleID = './code/091-4113mi-var-list-children-invalid-grandchild.c'
source_filename = "./code/091-4113mi-var-list-children-invalid-grandchild.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.inner = type { i32 }
%struct.outer = type { ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %inner = alloca %struct.inner, align 4
  %outer = alloca %struct.outer, align 8
  %p_outer = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %a = getelementptr inbounds %struct.inner, ptr %inner, i32 0, i32 0
  store i32 42, ptr %a, align 4
  %inner1 = getelementptr inbounds %struct.outer, ptr %outer, i32 0, i32 0
  store ptr %inner, ptr %inner1, align 8
  store ptr null, ptr %p_outer, align 8
  store ptr %outer, ptr %p_outer, align 8
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
