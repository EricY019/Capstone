; ModuleID = './code/039-4014fp_race.c'
source_filename = "./code/039-4014fp_race.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"dmp\00", align 1
@s_debug = internal global i32 0, align 4
@s_use_mutex = internal global i32 0, align 4
@s_do_printf = internal global i32 0, align 4
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"039-4014fp_race.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@s_mutex = internal global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"&s_d1 = %p; &s_d2 = %p; &s_d3 = %p\0A\00", align 1
@s_d1 = internal global double 0.000000e+00, align 8
@s_d2 = internal global double 0.000000e+00, align 8
@s_d3 = internal global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"s_d2 = %g (should be 2)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"s_d3 = %g (should be 5)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"s_d1 = %g (should be 1)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %optchar = alloca i32, align 4
  %threadid = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef @.str)
  store i32 %call, ptr %optchar, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %optchar, align 4
  switch i32 %2, label %sw.default [
    i32 100, label %sw.bb
    i32 109, label %sw.bb1
    i32 112, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, ptr @s_debug, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i32 1, ptr @s_use_mutex, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  store i32 1, ptr @s_do_printf, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 51, ptr noundef @.str.2) #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call3 = call i32 @pthread_mutex_init(ptr noundef @s_mutex, ptr noundef null)
  %3 = load ptr, ptr @__stdoutp, align 8
  %call4 = call i32 @setlinebuf(ptr noundef %3)
  %4 = load i32, ptr @s_debug, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef @s_d1, ptr noundef @s_d2, ptr noundef @s_d3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  store double 1.000000e+00, ptr @s_d1, align 8
  store double 3.000000e+00, ptr @s_d3, align 8
  %call6 = call i32 @pthread_create(ptr noundef %threadid, ptr noundef null, ptr noundef @thread_func, ptr noundef null)
  %call7 = call i32 @"\01_sleep"(i32 noundef 1)
  %5 = load i32, ptr @s_use_mutex, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @pthread_mutex_lock(ptr noundef @s_mutex)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %6 = load double, ptr @s_d3, align 8
  %inc = fadd double %6, 1.000000e+00
  store double %inc, ptr @s_d3, align 8
  %7 = load i32, ptr @s_use_mutex, align 4
  %tobool12 = icmp ne i32 %7, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 @pthread_mutex_unlock(ptr noundef @s_mutex)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %8 = load ptr, ptr %threadid, align 8
  %call16 = call i32 @"\01_pthread_join"(ptr noundef %8, ptr noundef null)
  %9 = load i32, ptr @s_do_printf, align 4
  %tobool17 = icmp ne i32 %9, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %10 = load double, ptr @s_d2, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %10)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %11 = load i32, ptr @s_do_printf, align 4
  %tobool21 = icmp ne i32 %11, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %12 = load double, ptr @s_d3, align 8
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %12)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  %call25 = call i32 @pthread_mutex_destroy(ptr noundef @s_mutex)
  ret i32 0
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @setlinebuf(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @thread_func(ptr noundef %thread_arg) #0 {
entry:
  %thread_arg.addr = alloca ptr, align 8
  store ptr %thread_arg, ptr %thread_arg.addr, align 8
  %0 = load i32, ptr @s_do_printf, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, ptr @s_d1, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store double 2.000000e+00, ptr @s_d2, align 8
  %2 = load i32, ptr @s_use_mutex, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @pthread_mutex_lock(ptr noundef @s_mutex)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = load double, ptr @s_d3, align 8
  %inc = fadd double %3, 1.000000e+00
  store double %inc, ptr @s_d3, align 8
  %4 = load i32, ptr @s_use_mutex, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %call7 = call i32 @pthread_mutex_unlock(ptr noundef @s_mutex)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  ret ptr null
}

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
