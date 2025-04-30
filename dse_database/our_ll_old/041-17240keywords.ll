; ModuleID = './code/041-17240keywords.c'
source_filename = "./code/041-17240keywords.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %x, align 4
  %call = call i32 @thread(i32 noundef 0)
  %0 = load i32, ptr %x, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %x, align 4
  %1 = load i32, ptr %x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @thread(i32 noundef %thread) #0 {
entry:
  %thread.addr = alloca i32, align 4
  store i32 %thread, ptr %thread.addr, align 4
  %0 = load i32, ptr %thread.addr, align 4
  %call = call i32 @task(i32 noundef %0)
  %add = add nsw i32 %call, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @task(i32 noundef %task) #0 {
entry:
  %task.addr = alloca i32, align 4
  store i32 %task, ptr %task.addr, align 4
  %0 = load i32, ptr %task.addr, align 4
  %sub = sub nsw i32 %0, 1
  ret i32 %sub
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
