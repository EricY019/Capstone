; ModuleID = './code/232-6927malloc_hook.c'
source_filename = "./code/232-6927malloc_hook.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@is_malloc_hook_enabled = global i32 1, align 4
@.str = private unnamed_addr constant [21 x i8] c"caller=%p, size=%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @malloc_hook(i64 noundef %size, ptr noundef %caller) #0 {
entry:
  %size.addr = alloca i64, align 8
  %caller.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %caller, ptr %caller.addr, align 8
  store i32 0, ptr @is_malloc_hook_enabled, align 4
  %0 = load i64, ptr %size.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #4
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %caller.addr, align 8
  %2 = load i64, ptr %size.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %1, i64 noundef %2)
  store i32 1, ptr @is_malloc_hook_enabled, align 4
  %3 = load ptr, ptr %p, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp allocsize(0) uwtable(sync)
define ptr @malloc(i64 noundef %size) #1 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %caller = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = call ptr @llvm.returnaddress(i32 0)
  store ptr %0, ptr %caller, align 8
  %1 = load i32, ptr @is_malloc_hook_enabled, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8
  %3 = load ptr, ptr %caller, align 8
  %call = call ptr @malloc_hook(i64 noundef %2, ptr noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %size.addr, align 8
  %call1 = call ptr @__libc_malloc(i64 noundef %4)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

declare ptr @__libc_malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 4) #4
  store ptr %call, ptr %p, align 8
  %0 = load ptr, ptr %p, align 8
  store i32 42, ptr %0, align 4
  %1 = load ptr, ptr %p, align 8
  %2 = load i32, ptr %1, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %3 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %3)
  store ptr null, ptr %p, align 8
  ret i32 0
}

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noinline nounwind optnone ssp allocsize(0) uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
