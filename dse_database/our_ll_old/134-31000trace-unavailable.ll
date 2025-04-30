; ModuleID = './code/134-31000trace-unavailable.c'
source_filename = "./code/134-31000trace-unavailable.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [4 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [4 x i8], ptr %s, i64 0, i64 0
  call void @bar(i32 noundef 4, ptr noundef %arraydecay)
  call void @foo()
  call void @marker()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @bar(i32 noundef %j, ptr noundef %s) #0 {
entry:
  %j.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %array = alloca [2 x i8], align 1
  %i = alloca i32, align 4
  store i32 %j, ptr %j.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %i, align 4
  %arrayidx = getelementptr inbounds [2 x i8], ptr %array, i64 0, i64 0
  store i8 99, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [2 x i8], ptr %array, i64 0, i64 1
  store i8 100, ptr %arrayidx1, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @foo() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @marker() #0 {
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
