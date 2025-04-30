; ModuleID = './code/034-29908many-types.c'
source_filename = "./code/034-29908many-types.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ggg = type { i64 }
%struct.c = type { i8, i8, i16, float, double, i64, i64 }

@one = internal global i32 0, align 4
@two = internal global i32 2, align 4
@foo = global %struct.ggg zeroinitializer, align 8
@boo = global %struct.c zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo1(i32 noundef %foo1param) #0 {
entry:
  %foo1param.addr = alloca i32, align 4
  store i32 %foo1param, ptr %foo1param.addr, align 4
  %0 = load i32, ptr %foo1param.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @foo2() #0 {
entry:
  ret ptr @foo1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @foo3() #0 {
entry:
  ret ptr @foo2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @foo4() #0 {
entry:
  ret ptr @foo3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @foo5() #0 {
entry:
  ret ptr @foo4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @elip(i32 noundef %a, ...) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @one, align 4
  %1 = load i32, ptr @two, align 4
  %call = call ptr @foo5()
  %call1 = call ptr %call()
  %call2 = call ptr %call1()
  %call3 = call ptr %call2()
  %call4 = call i32 %call3(i32 noundef 90)
  %call5 = call i32 @putchar(i32 noundef %call4)
  %call6 = call i32 @putchar(i32 noundef 97)
  ret i32 0
}

declare i32 @putchar(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
