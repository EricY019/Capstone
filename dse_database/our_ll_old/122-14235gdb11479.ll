; ModuleID = './code/122-14235gdb11479.c'
source_filename = "./code/122-14235gdb11479.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.dummy = type { i32, i32, double }

@tag_dummy = global %struct.dummy zeroinitializer, align 8
@tag_dummy_enum = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @test(ptr noundef %t) #0 {
entry:
  %t.addr = alloca ptr, align 8
  %tt = alloca ptr, align 8
  %e = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  %0 = load ptr, ptr %t.addr, align 8
  store ptr %0, ptr %tt, align 8
  %1 = load ptr, ptr %t.addr, align 8
  %2 = load ptr, ptr %e, align 8
  %call = call ptr @hack(ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @hack(ptr noundef %t, ptr noundef %e) #0 {
entry:
  %t.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  %0 = load ptr, ptr %t.addr, align 8
  ret ptr %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @test2(ptr noundef %t) #0 {
entry:
  %t.addr = alloca ptr, align 8
  %tt = alloca ptr, align 8
  %e = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  %0 = load ptr, ptr %t.addr, align 8
  store ptr %0, ptr %tt, align 8
  %1 = load ptr, ptr %t.addr, align 8
  %2 = load ptr, ptr %e, align 8
  %call = call ptr @hack(ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tt = alloca %struct.dummy, align 8
  store i32 0, ptr %retval, align 4
  %x = getelementptr inbounds %struct.dummy, ptr %tt, i32 0, i32 0
  store i32 5, ptr %x, align 8
  %y = getelementptr inbounds %struct.dummy, ptr %tt, i32 0, i32 1
  store i32 25, ptr %y, align 4
  %b = getelementptr inbounds %struct.dummy, ptr %tt, i32 0, i32 2
  store double 2.500000e+00, ptr %b, align 8
  %call = call ptr @test2(ptr noundef %tt)
  %call1 = call ptr @test(ptr noundef %tt)
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
