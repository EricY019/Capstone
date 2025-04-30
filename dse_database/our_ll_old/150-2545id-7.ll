; ModuleID = './code/150-2545id-7.c'
source_filename = "./code/150-2545id-7.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(ptr noundef %BM_tab) #0 {
entry:
  %BM_tab.addr = alloca ptr, align 8
  %BM_tab_base = alloca ptr, align 8
  store ptr %BM_tab, ptr %BM_tab.addr, align 8
  %0 = load ptr, ptr %BM_tab.addr, align 8
  store ptr %0, ptr %BM_tab_base, align 8
  %1 = load ptr, ptr %BM_tab.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 256
  store ptr %add.ptr, ptr %BM_tab.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %BM_tab_base, align 8
  %3 = load ptr, ptr %BM_tab.addr, align 8
  %cmp = icmp ne ptr %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %BM_tab.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i32 -1
  store ptr %incdec.ptr, ptr %BM_tab.addr, align 8
  store i32 6, ptr %incdec.ptr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %BM_tab = alloca [256 x i32], align 4
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [256 x i32], ptr %BM_tab, i64 0, i64 0
  call void @foo(ptr noundef %arraydecay)
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
