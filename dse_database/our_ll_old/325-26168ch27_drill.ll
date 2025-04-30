; ModuleID = './code/325-26168ch27_drill.c'
source_filename = "./code/325-26168ch27_drill.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"p is\22%s\22 and x is %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Hello World!\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"World!\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Chris\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_out(ptr noundef %p, i32 noundef %x) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %x.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0, i32 noundef %1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store ptr @.str.2, ptr %first, align 8
  store ptr @.str.3, ptr %last, align 8
  %0 = load ptr, ptr %first, align 8
  %1 = load ptr, ptr %last, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %0, ptr noundef %1)
  call void @print_out(ptr noundef @.str.5, i32 noundef 6)
  call void @print_out(ptr noundef @.str.6, i32 noundef 39)
  call void @print_out(ptr noundef @.str.7, i32 noundef 89)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
