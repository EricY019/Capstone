; ModuleID = './code/377-26933shift-1.c'
source_filename = "./code/377-26933shift-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.s = type { i64 }

@__const.main.s = private unnamed_addr constant %struct.s { i64 400 }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca %struct.s, align 8
  %culli = alloca i64, align 8
  %vi = alloca i32, align 4
  %shiftcount = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %a, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 @__const.main.s, i64 8, i1 false)
  store i64 42, ptr %culli, align 8
  store volatile i32 370, ptr %vi, align 4
  store volatile i32 153, ptr %shiftcount, align 4
  %0 = load i32, ptr %a, align 4
  %shl = shl i32 %0, 152
  store i32 %shl, ptr %a, align 4
  %1 = load volatile i32, ptr %shiftcount, align 4
  %shl1 = shl i32 1, %1
  %2 = load volatile i32, ptr %vi, align 4
  %inc = add nsw i32 %2, 1
  store volatile i32 %inc, ptr %vi, align 4
  %shl2 = shl i32 1, %2
  %a3 = getelementptr inbounds %struct.s, ptr %s, i32 0, i32 0
  %3 = load i64, ptr %a3, align 8
  %add = add nsw i64 %3, 2
  %shl4 = shl i64 1, %add
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
