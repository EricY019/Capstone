; ModuleID = './code/067-12159clock_get_test.c'
source_filename = "./code/067-12159clock_get_test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Current definition for %s is \22%s\22.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"CLOCK_REALTIME\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"_CLOCK_REALTIME\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CLOCK_MONOTONIC\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"_CLOCK_MONOTONIC\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CLOCK_PROCESS_CPUTIME_ID\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"_CLOCK_PROCESS_CPUTIME_ID\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"CLOCK_THREAD_CPUTIME_ID\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"_CLOCK_THREAD_CPUTIME_ID\00", align 1
@__stderrp = external global ptr, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%30s: %lld.%09lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"clock_getres on realtime clock failed\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Realtime clock resolution\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"clock_getres on monotonic clock failed\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Monotonic clock resolution\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"clock_gettime on realtime clock failed\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Realtime clock value\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"clock_gettime on monotonic clock failed\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Monotonic clock value\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ShowCurrentDefinitions() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.4)
  br label %do.end3

do.end3:                                          ; preds = %do.body1
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.6)
  br label %do.end6

do.end6:                                          ; preds = %do.body4
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.8)
  br label %do.end9

do.end9:                                          ; preds = %do.body7
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @TimeTest(ptr noundef %func, i32 noundef %clk_id, ptr noundef %error_string, ptr noundef %success_name) #0 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  %clk_id.addr = alloca i32, align 4
  %error_string.addr = alloca ptr, align 8
  %success_name.addr = alloca ptr, align 8
  %ts = alloca %struct.timespec, align 8
  store ptr %func, ptr %func.addr, align 8
  store i32 %clk_id, ptr %clk_id.addr, align 4
  store ptr %error_string, ptr %error_string.addr, align 8
  store ptr %success_name, ptr %success_name.addr, align 8
  %0 = load ptr, ptr %func.addr, align 8
  %1 = load i32, ptr %clk_id.addr, align 4
  %call = call i32 %0(i32 noundef %1, ptr noundef %ts)
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load ptr, ptr %error_string.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef %3) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %success_name.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 0
  %5 = load i64, ptr %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 1
  %6 = load i64, ptr %tv_nsec, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %4, i64 noundef %5, i64 noundef %6)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %errs = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %errs, align 4
  call void @ShowCurrentDefinitions()
  %call = call i32 @TimeTest(ptr noundef @clock_getres, i32 noundef 0, ptr noundef @.str.11, ptr noundef @.str.12)
  %0 = load i32, ptr %errs, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %errs, align 4
  %call1 = call i32 @TimeTest(ptr noundef @clock_getres, i32 noundef 6, ptr noundef @.str.13, ptr noundef @.str.14)
  %1 = load i32, ptr %errs, align 4
  %add2 = add nsw i32 %1, %call1
  store i32 %add2, ptr %errs, align 4
  %call3 = call i32 @TimeTest(ptr noundef @clock_gettime, i32 noundef 0, ptr noundef @.str.15, ptr noundef @.str.16)
  %2 = load i32, ptr %errs, align 4
  %add4 = add nsw i32 %2, %call3
  store i32 %add4, ptr %errs, align 4
  %call5 = call i32 @TimeTest(ptr noundef @clock_gettime, i32 noundef 6, ptr noundef @.str.17, ptr noundef @.str.18)
  %3 = load i32, ptr %errs, align 4
  %add6 = add nsw i32 %3, %call5
  store i32 %add6, ptr %errs, align 4
  %4 = load i32, ptr %errs, align 4
  ret i32 %4
}

declare i32 @clock_getres(i32 noundef, ptr noundef) #1

declare i32 @clock_gettime(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
