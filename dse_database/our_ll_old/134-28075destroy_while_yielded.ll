; ModuleID = './code/134-28075destroy_while_yielded.c'
source_filename = "./code/134-28075destroy_while_yielded.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"LEVEL %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SHOULD NOT BE PRINTED 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SHOULD NOT BE PRINTED 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"RETURNED\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @fun(i32 noundef %level) #0 {
entry:
  %level.addr = alloca i32, align 4
  %my_mem = alloca ptr, align 8
  store i32 %level, ptr %level.addr, align 4
  %call = call ptr @malloc(i64 noundef 1000) #3
  store ptr %call, ptr %my_mem, align 8
  %0 = load i32, ptr %level.addr, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %1 = load i32, ptr %level.addr, align 4
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %level.addr, align 4
  %add = add nsw i32 %2, 1
  call void @fun(i32 noundef %add)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @allocator(i64 noundef %size, ptr noundef %context) #0 {
entry:
  %size.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %1 = load i64, ptr %size.addr, align 8
  %call = call ptr @malloc(i64 noundef %1) #3
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @freer(ptr noundef %data, ptr noundef %context) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %1 = load ptr, ptr %data.addr, align 8
  call void @free(ptr noundef %1)
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @fun(i32 noundef 1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret i32 0
}

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
