; ModuleID = './code/268-30454py-objfile-script.c'
source_filename = "./code/268-30454py-objfile-script.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ss = type { i32, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init_ss(ptr noundef %s, i32 noundef %a, i32 noundef %b) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %a1 = getelementptr inbounds %struct.ss, ptr %1, i32 0, i32 0
  store i32 %0, ptr %a1, align 4
  %2 = load i32, ptr %b.addr, align 4
  %3 = load ptr, ptr %s.addr, align 8
  %b2 = getelementptr inbounds %struct.ss, ptr %3, i32 0, i32 1
  store i32 %2, ptr %b2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ss = alloca %struct.ss, align 4
  store i32 0, ptr %retval, align 4
  call void @init_ss(ptr noundef %ss, i32 noundef 1, i32 noundef 2)
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
