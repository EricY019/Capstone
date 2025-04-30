; ModuleID = './code/327-26416gdb1090.c'
source_filename = "./code/327-26416gdb1090.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.s_2_by_4 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @marker(i64 %s_whatever.coerce) #0 {
entry:
  %s_whatever = alloca %struct.s_2_by_4, align 4
  store i64 %s_whatever.coerce, ptr %s_whatever, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s_whatever, ptr align 4 %s_whatever, i64 8, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo() #0 {
entry:
  %s24 = alloca %struct.s_2_by_4, align 4
  %field_0 = getelementptr inbounds %struct.s_2_by_4, ptr %s24, i32 0, i32 0
  store i32 1170, ptr %field_0, align 4
  %field_1 = getelementptr inbounds %struct.s_2_by_4, ptr %s24, i32 0, i32 1
  store i32 64701, ptr %field_1, align 4
  %0 = load i64, ptr %s24, align 4
  call void @marker(i64 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  call void @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
