; ModuleID = './code/377-2651py-pp-maint.c'
source_filename = "./code/377-2651py-pp-maint.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.function_lookup_test = type { i32, i32 }
%struct.s = type { i32, ptr }
%struct.ss = type { %struct.s, %struct.s }

@fval = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init_flt(ptr noundef %p, i32 noundef %x, i32 noundef %y) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %x1 = getelementptr inbounds %struct.function_lookup_test, ptr %1, i32 0, i32 0
  store i32 %0, ptr %x1, align 4
  %2 = load i32, ptr %y.addr, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %y2 = getelementptr inbounds %struct.function_lookup_test, ptr %3, i32 0, i32 1
  store i32 %2, ptr %y2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init_s(ptr noundef %s, i32 noundef %a) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %a1 = getelementptr inbounds %struct.s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %a1, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %a2 = getelementptr inbounds %struct.s, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %s.addr, align 8
  %b = getelementptr inbounds %struct.s, ptr %3, i32 0, i32 1
  store ptr %a2, ptr %b, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init_ss(ptr noundef %s, i32 noundef %a, i32 noundef %b) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %a1 = getelementptr inbounds %struct.ss, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %a.addr, align 4
  call void @init_s(ptr noundef %a1, i32 noundef %1)
  %2 = load ptr, ptr %s.addr, align 8
  %b2 = getelementptr inbounds %struct.ss, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %b.addr, align 4
  call void @init_s(ptr noundef %b2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %flt = alloca %struct.function_lookup_test, align 4
  %ss = alloca %struct.ss, align 8
  store i32 0, ptr %retval, align 4
  call void @init_flt(ptr noundef %flt, i32 noundef 42, i32 noundef 43)
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
