; ModuleID = './code/154-50602007-03-05-DataLayout.c'
source_filename = "./code/154-50602007-03-05-DataLayout.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, ptr, ptr }

@body = global %struct.bnode zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @ubody_alloc(i32 noundef %p) #0 {
entry:
  %p.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %p, ptr %p.addr, align 4
  %call = call ptr @malloc(i64 noundef 144) #2
  store ptr %call, ptr %tmp, align 8
  %0 = load ptr, ptr %tmp, align 8
  %type = getelementptr inbounds %struct.bnode, ptr %0, i32 0, i32 0
  store i16 1, ptr %type, align 8
  %1 = load i32, ptr %p.addr, align 4
  %2 = load ptr, ptr %tmp, align 8
  %proc = getelementptr inbounds %struct.bnode, ptr %2, i32 0, i32 3
  store i32 %1, ptr %proc, align 8
  %3 = load ptr, ptr %tmp, align 8
  %proc_next = getelementptr inbounds %struct.bnode, ptr %3, i32 0, i32 10
  store ptr null, ptr %proc_next, align 8
  %4 = load i32, ptr %p.addr, align 4
  %5 = load ptr, ptr %tmp, align 8
  %new_proc = getelementptr inbounds %struct.bnode, ptr %5, i32 0, i32 4
  store i32 %4, ptr %new_proc, align 4
  %6 = load ptr, ptr %tmp, align 8
  ret ptr %6
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @ubody_alloc(i32 noundef 17)
  store ptr %call, ptr %b, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
