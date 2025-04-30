; ModuleID = './code/331-28139aspace.c'
source_filename = "./code/331-28139aspace.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [23 x i8] c"Address of main is %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Address of global is %p\0A\00", align 1
@global = global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Address of local is %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Address of local_2 is %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Address of p is %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Address of q is %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %local = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %local_2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 5, ptr %local, align 4
  %call = call ptr @malloc(i64 noundef 128) #3
  store ptr %call, ptr %p, align 8
  %call1 = call ptr @malloc(i64 noundef 128) #3
  store ptr %call1, ptr %q, align 8
  store i32 7, ptr %local_2, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @main)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef @global)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %local)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %local_2)
  %0 = load ptr, ptr %p, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %0)
  %1 = load ptr, ptr %q, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %1)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
