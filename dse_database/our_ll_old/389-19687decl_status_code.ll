; ModuleID = './code/389-19687decl_status_code.c'
source_filename = "./code/389-19687decl_status_code.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.S1 = type { i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @parse_decl_node_2() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [3 x i32], align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @parse_decl_node_3() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca ptr, align 8
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @parse_decl_node_4() #0 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca [3 x %struct.S1], align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @parse_decl_node_5() #0 {
entry:
  %retval = alloca i32, align 4
  %t2 = alloca [3 x ptr], align 8
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @parse_decl_node_6() #0 {
entry:
  %retval = alloca i32, align 4
  %t3 = alloca [3 x [3 x %struct.S1]], align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %a = alloca i32, align 4
  %t1 = alloca %struct.S1, align 4
  %s1 = alloca %struct.S1, align 4
  %t2 = alloca ptr, align 8
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
