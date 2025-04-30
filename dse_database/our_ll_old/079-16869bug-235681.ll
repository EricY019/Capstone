; ModuleID = './code/079-16869bug-235681.c'
source_filename = "./code/079-16869bug-235681.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@silent = global i32 0, align 4
@mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"079-16869bug-235681.c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"!rc\00", align 1
@cond_var = global %struct._opaque_pthread_cond_t zeroinitializer, align 8
@status = global i32 0, align 4
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"main(): sleeping...\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"main(): status=1\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"joining...\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"run_fn starting\0A\00", align 1
@__func__.run_fn = private unnamed_addr constant [7 x i8] c"run_fn\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"run_fn(): status==0\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"run_fn(): woke up\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"run_fn(): status==1\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"run_fn done\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %other_thread = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr @silent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @pthread_mutex_init(ptr noundef @mutex, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 57, ptr noundef @.str.1) #4
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %call3 = call i32 @"\01_pthread_cond_init"(ptr noundef @cond_var, ptr noundef null)
  store i32 %call3, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %tobool4 = icmp ne i32 %3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 59, ptr noundef @.str.1) #4
  unreachable

4:                                                ; No predecessors!
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %4
  store i32 0, ptr @status, align 4
  %call14 = call i32 @pthread_create(ptr noundef %other_thread, ptr noundef null, ptr noundef @run_fn, ptr noundef null)
  store i32 %call14, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %tobool15 = icmp ne i32 %5, 0
  %lnot16 = xor i1 %tobool15, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %cond.end13
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 64, ptr noundef @.str.1) #4
  unreachable

6:                                                ; No predecessors!
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end13
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %6
  %7 = load i32, ptr @silent, align 4
  %tobool25 = icmp ne i32 %7, 0
  br i1 %tobool25, label %if.end28, label %if.then26

if.then26:                                        ; preds = %cond.end24
  %8 = load ptr, ptr @__stderrp, align 8
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.2) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %cond.end24
  %call29 = call i32 @"\01_sleep"(i32 noundef 1)
  %call30 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  store i32 %call30, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %tobool31 = icmp ne i32 %9, 0
  %lnot32 = xor i1 %tobool31, true
  %lnot34 = xor i1 %lnot32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %if.end28
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 72, ptr noundef @.str.1) #4
  unreachable

10:                                               ; No predecessors!
  br label %cond.end40

cond.false39:                                     ; preds = %if.end28
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %10
  %11 = load i32, ptr @silent, align 4
  %tobool41 = icmp ne i32 %11, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %cond.end40
  %12 = load ptr, ptr @__stderrp, align 8
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.3) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %cond.end40
  store i32 1, ptr @status, align 4
  %call45 = call i32 @pthread_cond_broadcast(ptr noundef @cond_var)
  store i32 %call45, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %tobool46 = icmp ne i32 %13, 0
  %lnot47 = xor i1 %tobool46, true
  %lnot49 = xor i1 %lnot47, true
  %lnot.ext50 = zext i1 %lnot49 to i32
  %conv51 = sext i32 %lnot.ext50 to i64
  %tobool52 = icmp ne i64 %conv51, 0
  br i1 %tobool52, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %if.end44
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 79, ptr noundef @.str.1) #4
  unreachable

14:                                               ; No predecessors!
  br label %cond.end55

cond.false54:                                     ; preds = %if.end44
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %14
  %call56 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  store i32 %call56, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %tobool57 = icmp ne i32 %15, 0
  %lnot58 = xor i1 %tobool57, true
  %lnot60 = xor i1 %lnot58, true
  %lnot.ext61 = zext i1 %lnot60 to i32
  %conv62 = sext i32 %lnot.ext61 to i64
  %tobool63 = icmp ne i64 %conv62, 0
  br i1 %tobool63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.end55
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 83, ptr noundef @.str.1) #4
  unreachable

16:                                               ; No predecessors!
  br label %cond.end66

cond.false65:                                     ; preds = %cond.end55
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %16
  %17 = load i32, ptr @silent, align 4
  %tobool67 = icmp ne i32 %17, 0
  br i1 %tobool67, label %if.end70, label %if.then68

if.then68:                                        ; preds = %cond.end66
  %18 = load ptr, ptr @__stderrp, align 8
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.4) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %cond.end66
  %19 = load ptr, ptr %other_thread, align 8
  %call71 = call i32 @"\01_pthread_join"(ptr noundef %19, ptr noundef null)
  store i32 %call71, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %tobool72 = icmp ne i32 %20, 0
  %lnot73 = xor i1 %tobool72, true
  %lnot75 = xor i1 %lnot73, true
  %lnot.ext76 = zext i1 %lnot75 to i32
  %conv77 = sext i32 %lnot.ext76 to i64
  %tobool78 = icmp ne i64 %conv77, 0
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.end70
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 89, ptr noundef @.str.1) #4
  unreachable

21:                                               ; No predecessors!
  br label %cond.end81

cond.false80:                                     ; preds = %if.end70
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %21
  %22 = load ptr, ptr @__stderrp, align 8
  %call82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.5) #5
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @"\01_pthread_cond_init"(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @run_fn(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load i32, ptr @silent, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  store i32 %call1, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %tobool2 = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool4 = icmp ne i64 %conv, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.run_fn, ptr noundef @.str, i32 noundef 26, ptr noundef @.str.1) #4
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %cond.end
  %4 = load i32, ptr @status, align 4
  %tobool5 = icmp ne i32 %4, 0
  %lnot6 = xor i1 %tobool5, true
  br i1 %lnot6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr @silent, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %while.body
  %6 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.7) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %while.body
  %call12 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond_var, ptr noundef @mutex)
  store i32 %call12, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %tobool13 = icmp ne i32 %7, 0
  %lnot14 = xor i1 %tobool13, true
  %lnot16 = xor i1 %lnot14, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  %conv18 = sext i32 %lnot.ext17 to i64
  %tobool19 = icmp ne i64 %conv18, 0
  br i1 %tobool19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %if.end11
  call void @__assert_rtn(ptr noundef @__func__.run_fn, ptr noundef @.str, i32 noundef 32, ptr noundef @.str.1) #4
  unreachable

8:                                                ; No predecessors!
  br label %cond.end22

cond.false21:                                     ; preds = %if.end11
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %8
  %9 = load i32, ptr @silent, align 4
  %tobool23 = icmp ne i32 %9, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %cond.end22
  %10 = load ptr, ptr @__stderrp, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.8) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %cond.end22
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr @silent, align 4
  %tobool27 = icmp ne i32 %11, 0
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %while.end
  %12 = load ptr, ptr @__stderrp, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.9) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %while.end
  %call31 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  store i32 %call31, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %tobool32 = icmp ne i32 %13, 0
  %lnot33 = xor i1 %tobool32, true
  %lnot35 = xor i1 %lnot33, true
  %lnot.ext36 = zext i1 %lnot35 to i32
  %conv37 = sext i32 %lnot.ext36 to i64
  %tobool38 = icmp ne i64 %conv37, 0
  br i1 %tobool38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %if.end30
  call void @__assert_rtn(ptr noundef @__func__.run_fn, ptr noundef @.str, i32 noundef 40, ptr noundef @.str.1) #4
  unreachable

14:                                               ; No predecessors!
  br label %cond.end41

cond.false40:                                     ; preds = %if.end30
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %14
  %15 = load i32, ptr @silent, align 4
  %tobool42 = icmp ne i32 %15, 0
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %cond.end41
  %16 = load ptr, ptr @__stderrp, align 8
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.10) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %cond.end41
  ret ptr null
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_cond_broadcast(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { cold noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
