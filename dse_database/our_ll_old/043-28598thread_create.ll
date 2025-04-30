; ModuleID = './code/043-28598thread_create.c'
source_filename = "./code/043-28598thread_create.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"thread1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"thread2\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\E7\BA\BF\E7\A8\8B1\E5\88\9B\E5\BB\BA\E5\A4\B1\E8\B4\A5\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\E7\BA\BF\E7\A8\8B1\E5\88\9B\E5\BB\BA\E6\88\90\E5\8A\9F\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\E7\BA\BF\E7\A8\8B2\E5\88\9B\E5\BB\BA\E5\A4\B1\E8\B4\A5\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\E7\BA\BF\E7\A8\8B2\E5\88\9B\E5\BB\BA\E6\88\90\E5\8A\9F\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"main thread : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"thread1 return value(retval) is %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"thread1 return value(tmp) is %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"cannot join with thread1\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"thread1 end\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"thread2 return value(retval) is %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"thread2 return value(tmp) is %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"cannot join with thread2\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"thread2 end\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"mani thread wait...\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %i = alloca i32, align 4
  %retval1 = alloca ptr, align 8
  %thread1 = alloca ptr, align 8
  %thread2 = alloca ptr, align 8
  %message1 = alloca ptr, align 8
  %message2 = alloca ptr, align 8
  %ret_thrd1 = alloca i32, align 4
  %ret_thrd2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr @.str, ptr %message1, align 8
  store ptr @.str.1, ptr %message2, align 8
  %0 = load ptr, ptr %message1, align 8
  %call = call i32 @pthread_create(ptr noundef %thread1, ptr noundef null, ptr noundef @print_message_function, ptr noundef %0)
  store i32 %call, ptr %ret_thrd1, align 4
  %1 = load ptr, ptr %message2, align 8
  %call2 = call i32 @pthread_create(ptr noundef %thread2, ptr noundef null, ptr noundef @print_message_function, ptr noundef %1)
  store i32 %call2, ptr %ret_thrd2, align 4
  %2 = load i32, ptr %ret_thrd1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %ret_thrd2, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end10

if.else8:                                         ; preds = %if.end
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %thread1, align 8
  %call12 = call i32 @"\01_pthread_join"(ptr noundef %7, ptr noundef %retval1)
  store i32 %call12, ptr %tmp1, align 4
  %8 = load ptr, ptr %retval1, align 8
  %9 = ptrtoint ptr %8 to i32
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %9)
  %10 = load i32, ptr %tmp1, align 4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %10)
  %11 = load i32, ptr %tmp1, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.end
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %12 = load ptr, ptr %thread2, align 8
  %call20 = call i32 @"\01_pthread_join"(ptr noundef %12, ptr noundef %retval1)
  store i32 %call20, ptr %tmp2, align 4
  %13 = load ptr, ptr %retval1, align 8
  %14 = ptrtoint ptr %13 to i32
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %14)
  %15 = load i32, ptr %tmp1, align 4
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %15)
  %16 = load i32, ptr %tmp2, align 4
  %tobool23 = icmp ne i32 %16, 0
  br i1 %tobool23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end18
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end18
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc32, %if.end26
  %17 = load i32, ptr %i, align 4
  %cmp29 = icmp slt i32 %17, 10
  br i1 %cmp29, label %for.body30, label %for.end34

for.body30:                                       ; preds = %for.cond28
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body30
  %18 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %18, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond28, !llvm.loop !7

for.end34:                                        ; preds = %for.cond28
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_message_function(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 0, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ptr.addr, align 8
  %3 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef %2, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @"\01_sleep"(i32 noundef 10)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
