; ModuleID = './code/191-33601amd64-entry-value-inline.c'
source_filename = "./code/191-33601amd64-entry-value-inline.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@v = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @fn3(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %y.addr, align 4
  %call = call i32 @fn2(i32 noundef %0, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @fn2(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %y.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  call void @fn1(i32 noundef %1)
  %2 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 -2, %2
  store i32 %add, ptr %y.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %y.addr, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, ptr %y.addr, align 4
  %mul1 = mul nsw i32 %mul, %5
  %6 = load i32, ptr %y.addr, align 4
  %add2 = add nsw i32 %mul1, %6
  store i32 %add2, ptr %y.addr, align 4
  %7 = load i32, ptr %x.addr, align 4
  %8 = load i32, ptr %y.addr, align 4
  %add3 = add nsw i32 %7, %8
  call void @fn1(i32 noundef %add3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %x.addr, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @fn3(i32 noundef 6, i32 noundef 25)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @fn1(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load volatile i32, ptr @v, align 4
  %inc = add nsw i32 %0, 1
  store volatile i32 %inc, ptr @v, align 4
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
