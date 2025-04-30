; ModuleID = './code/375-15705mmalloc.c'
source_filename = "./code/375-15705mmalloc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@stop = global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"initial increment is %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"incrementing by %zd to %zd bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"speeding up to %zd-byte steps\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"slowing down to %zd-byte steps\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"\0A\0Aallocated %zd bytes of memory\0Asteps=%d\0Aspeedups=%d\0Aslowdowns=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @handle_interruption(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store volatile i32 1, ptr @stop, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %increment = alloca i64, align 8
  %s = alloca i64, align 8
  %steps = alloca i32, align 4
  %speedups = alloca i32, align 4
  %slowdowns = alloca i32, align 4
  %p = alloca ptr, align 8
  %newp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 131072, ptr %increment, align 8
  store i64 0, ptr %s, align 8
  store i32 0, ptr %steps, align 4
  store i32 0, ptr %speedups, align 4
  store i32 0, ptr %slowdowns, align 4
  %0 = load i64, ptr %increment, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %0)
  %1 = load i64, ptr %increment, align 8
  %2 = load i64, ptr %s, align 8
  %add = add i64 %2, %1
  store i64 %add, ptr %s, align 8
  %3 = load i32, ptr %steps, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %steps, align 4
  store volatile i32 0, ptr @stop, align 4
  %call1 = call ptr @signal(i32 noundef 2, ptr noundef @handle_interruption)
  %call2 = call ptr @signal(i32 noundef 15, ptr noundef @handle_interruption)
  %call3 = call ptr @signal(i32 noundef 1, ptr noundef @handle_interruption)
  %4 = load i64, ptr %s, align 8
  %call4 = call ptr @malloc(i64 noundef %4) #4
  store ptr %call4, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %5 = load i64, ptr %increment, align 8
  %cmp = icmp ugt i64 %5, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %p, align 8
  %7 = load i64, ptr %s, align 8
  %8 = load i64, ptr %increment, align 8
  %add5 = add i64 %7, %8
  %call6 = call ptr @realloc(ptr noundef %6, i64 noundef %add5) #5
  store ptr %call6, ptr %newp, align 8
  %9 = load ptr, ptr %newp, align 8
  %cmp7 = icmp ne ptr %9, null
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %newp, align 8
  store ptr %10, ptr %p, align 8
  %11 = load i64, ptr %increment, align 8
  %12 = load i64, ptr %s, align 8
  %add8 = add i64 %12, %11
  store i64 %add8, ptr %s, align 8
  %13 = load i32, ptr %steps, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, ptr %steps, align 4
  %14 = load i64, ptr %increment, align 8
  %15 = load i64, ptr %s, align 8
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %14, i64 noundef %15)
  %16 = load i64, ptr %increment, align 8
  %mul = mul i64 %16, 2
  store i64 %mul, ptr %increment, align 8
  %17 = load i32, ptr %speedups, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, ptr %speedups, align 4
  %18 = load i64, ptr %increment, align 8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %18)
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load i64, ptr %increment, align 8
  %div = udiv i64 %19, 2
  store i64 %div, ptr %increment, align 8
  %20 = load i32, ptr %slowdowns, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, ptr %slowdowns, align 4
  %21 = load i64, ptr %increment, align 8
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, ptr %steps, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, ptr %steps, align 4
  %23 = load volatile i32, ptr @stop, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %while.end

if.end17:                                         ; preds = %if.end
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then16, %while.cond
  %24 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %24)
  %25 = load i64, ptr %s, align 8
  %26 = load i32, ptr %steps, align 4
  %27 = load i32, ptr %speedups, align 4
  %28 = load i32, ptr %slowdowns, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare ptr @signal(i32 noundef, ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #3

declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
