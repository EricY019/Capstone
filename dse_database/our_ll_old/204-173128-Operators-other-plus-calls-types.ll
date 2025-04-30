; ModuleID = './code/204-173128-Operators-other-plus-calls-types.c'
source_filename = "./code/204-173128-Operators-other-plus-calls-types.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.test = type { i32, [42 x i32] }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @initval(ptr noundef %t) #0 {
entry:
  %t.indirect_addr = alloca ptr, align 8
  store ptr %t, ptr %t.indirect_addr, align 8
  %value = getelementptr inbounds %struct.test, ptr %t, i32 0, i32 0
  %0 = load i32, ptr %value, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @retval(ptr noundef %t_ptr) #0 {
entry:
  %t_ptr.addr = alloca ptr, align 8
  store ptr %t_ptr, ptr %t_ptr.addr, align 8
  %0 = load ptr, ptr %t_ptr.addr, align 8
  %value = getelementptr inbounds %struct.test, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %value, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.test, align 4
  %t_ptr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr %t, ptr %t_ptr, align 8
  %value = getelementptr inbounds %struct.test, ptr %t, i32 0, i32 0
  store i32 0, ptr %value, align 4
  %0 = load ptr, ptr %t_ptr, align 8
  %array = getelementptr inbounds %struct.test, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [42 x i32], ptr %array, i64 0, i64 0
  store i32 89, ptr %arrayidx, align 4
  %call = call i32 @retval(ptr noundef %t)
  %1 = load ptr, ptr %t_ptr, align 8
  %array1 = getelementptr inbounds %struct.test, ptr %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [42 x i32], ptr %array1, i64 0, i64 1
  store i32 %call, ptr %arrayidx2, align 4
  %2 = load ptr, ptr %t_ptr, align 8
  %call3 = call i32 @retval(ptr noundef %2)
  ret i32 %call3
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
