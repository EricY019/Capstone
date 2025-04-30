; ModuleID = './code/118-21689step-line.c'
source_filename = "./code/118-21689step-line.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @f1(i32 noundef 4)
  store i32 %call, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %call1 = call i32 @f1(i32 noundef %0)
  store i32 %call1, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  call void @dummy(i32 noundef 0, i32 noundef %1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f1(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  call void @dummy(i32 noundef 1, i32 noundef %0)
  %1 = load i32, ptr %i.addr, align 4
  %call = call i32 @f2(i32 noundef %1)
  store i32 %call, ptr %i.addr, align 4
  %2 = load i32, ptr %i.addr, align 4
  call void @dummy(i32 noundef 2, i32 noundef %2)
  %3 = load i32, ptr %i.addr, align 4
  %call1 = call i32 @f2(i32 noundef %3)
  store i32 %call1, ptr %i.addr, align 4
  %4 = load i32, ptr %i.addr, align 4
  call void @dummy(i32 noundef 3, i32 noundef %4)
  %5 = load i32, ptr %i.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dummy(i32 noundef %num, i32 noundef %i) #0 {
entry:
  %num.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f2(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  call void @dummy(i32 noundef 4, i32 noundef %0)
  %1 = load i32, ptr %i.addr, align 4
  store i32 %1, ptr %j, align 4
  %2 = load i32, ptr %i.addr, align 4
  call void @dummy(i32 noundef 5, i32 noundef %2)
  %3 = load i32, ptr %j, align 4
  call void @dummy(i32 noundef 6, i32 noundef %3)
  %4 = load i32, ptr %j, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %j, align 4
  %5 = load i32, ptr %i.addr, align 4
  call void @dummy(i32 noundef 7, i32 noundef %5)
  %6 = load i32, ptr %j, align 4
  call void @dummy(i32 noundef 8, i32 noundef %6)
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %7, %8
  store i32 %sub, ptr %j, align 4
  %9 = load i32, ptr %i.addr, align 4
  call void @dummy(i32 noundef 9, i32 noundef %9)
  %10 = load i32, ptr %j, align 4
  call void @dummy(i32 noundef 10, i32 noundef %10)
  %11 = load i32, ptr %i.addr, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
