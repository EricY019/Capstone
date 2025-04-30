; ModuleID = './code/022-22876ftrace.c'
source_filename = "./code/022-22876ftrace.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@globvar = global i32 0, align 4
@llvm.used = appending global [1 x ptr] [ptr @func], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @func() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @begin()
  store i32 1, ptr @globvar, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @globvar, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @globvar, align 4
  %mul = mul nsw i32 %1, 100
  call void @marker(i32 noundef %mul)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr @globvar, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @globvar, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @end()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @begin() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @marker(i32 noundef %anarg) #0 {
entry:
  %anarg.addr = alloca i32, align 4
  store i32 %anarg, ptr %anarg.addr, align 4
  call void asm sideeffect "    .global set_point\0Aset_point:\0A    nop\0A", ""() #1, !srcloc !7
  %0 = load i32, ptr %anarg.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %anarg.addr, align 4
  call void asm sideeffect "    .global four_byter\0Afour_byter:\0A", ""() #1, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @end() #0 {
entry:
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 1174, i64 2147504655, i64 1361}
!8 = !{i64 1511, i64 2147504690}
