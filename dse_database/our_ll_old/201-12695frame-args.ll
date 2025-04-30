; ModuleID = './code/201-12695frame-args.c'
source_filename = "./code/201-12695frame-args.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.s = type { i32, i32 }
%union.u = type { i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.s, align 4
  %u = alloca %union.u, align 4
  store i32 0, ptr %retval, align 4
  %a = getelementptr inbounds %struct.s, ptr %s, i32 0, i32 0
  store i32 3, ptr %a, align 4
  %b = getelementptr inbounds %struct.s, ptr %s, i32 0, i32 1
  store i32 5, ptr %b, align 4
  store i32 7, ptr %u, align 4
  %0 = load i64, ptr %s, align 4
  %coerce.dive = getelementptr inbounds %union.u, ptr %u, i32 0, i32 0
  %1 = load i32, ptr %coerce.dive, align 4
  %coerce.val.ii = zext i32 %1 to i64
  call void @call_me(i32 noundef 3, float noundef 5.000000e+00, i64 %0, ptr noundef %s, i64 %coerce.val.ii, i32 noundef 1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @call_me(i32 noundef %i, float noundef %f, i64 %s.coerce, ptr noundef %ss, i64 %u.coerce, i32 noundef %e) #0 {
entry:
  %s = alloca %struct.s, align 4
  %u = alloca %union.u, align 4
  %i.addr = alloca i32, align 4
  %f.addr = alloca float, align 4
  %ss.addr = alloca ptr, align 8
  %e.addr = alloca i32, align 4
  store i64 %s.coerce, ptr %s, align 4
  %coerce.dive = getelementptr inbounds %union.u, ptr %u, i32 0, i32 0
  %coerce.val.ii = trunc i64 %u.coerce to i32
  store i32 %coerce.val.ii, ptr %coerce.dive, align 4
  store i32 %i, ptr %i.addr, align 4
  store float %f, ptr %f.addr, align 4
  store ptr %ss, ptr %ss.addr, align 8
  store i32 %e, ptr %e.addr, align 4
  call void @break_me()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @break_me() #0 {
entry:
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
