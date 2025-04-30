; ModuleID = './code/214-5615actions-changed.c'
source_filename = "./code/214-5615actions-changed.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @end(i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @subr2(i32 noundef %parm) #0 {
entry:
  %parm.addr = alloca i32, align 4
  %keeping = alloca i32, align 4
  %busy = alloca i32, align 4
  store i32 %parm, ptr %parm.addr, align 4
  %0 = load i32, ptr %parm.addr, align 4
  %1 = load i32, ptr %parm.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %keeping, align 4
  %2 = load i32, ptr %keeping, align 4
  %3 = load i32, ptr %keeping, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, ptr %busy, align 4
  %4 = load i32, ptr %busy, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @subr(i32 noundef %parm) #0 {
entry:
  %parm.addr = alloca i32, align 4
  %keeping = alloca i32, align 4
  %busy = alloca i32, align 4
  store i32 %parm, ptr %parm.addr, align 4
  %0 = load i32, ptr %parm.addr, align 4
  %1 = load i32, ptr %parm.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %keeping, align 4
  %2 = load i32, ptr %keeping, align 4
  %3 = load i32, ptr %keeping, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, ptr %busy, align 4
  %4 = load i32, ptr %busy, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @subr(i32 noundef 1)
  %call1 = call i32 @end(i32 noundef 1)
  %call2 = call i32 @subr(i32 noundef 2)
  %call3 = call i32 @end(i32 noundef 2)
  %call4 = call i32 @subr(i32 noundef 3)
  %call5 = call i32 @end(i32 noundef 3)
  %call6 = call i32 @subr(i32 noundef 4)
  %call7 = call i32 @end(i32 noundef 4)
  %call8 = call i32 @subr(i32 noundef 5)
  %call9 = call i32 @subr2(i32 noundef 5)
  %call10 = call i32 @end(i32 noundef 5)
  %call11 = call i32 @subr(i32 noundef 6)
  %call12 = call i32 @subr2(i32 noundef 6)
  %call13 = call i32 @end(i32 noundef 6)
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
