; ModuleID = './code/282-34128locked_vs_unlocked3.c'
source_filename = "./code/282-34128locked_vs_unlocked3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_mutexattr_t = type { i64, [8 x i8] }

@x = global i32 0, align 4
@mx = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@__func__.child_fn1 = private unnamed_addr constant [10 x i8] c"child_fn1\00", align 1
@.str = private unnamed_addr constant [31 x i8] c"282-34128locked_vs_unlocked3.c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!r\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @child_fn1(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef @mx)
  store i32 %call, ptr %r, align 4
  %0 = load i32, ptr %r, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.child_fn1, ptr noundef @.str, i32 noundef 26, ptr noundef @.str.1) #3
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %call3 = call i32 @pthread_mutex_lock(ptr noundef @mx)
  store i32 %call3, ptr %r, align 4
  %2 = load i32, ptr %r, align 4
  %tobool4 = icmp ne i32 %2, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.child_fn1, ptr noundef @.str, i32 noundef 27, ptr noundef @.str.1) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %3
  store i32 1, ptr @x, align 4
  %call14 = call i32 @pthread_mutex_unlock(ptr noundef @mx)
  store i32 %call14, ptr %r, align 4
  %4 = load i32, ptr %r, align 4
  %tobool15 = icmp ne i32 %4, 0
  %lnot16 = xor i1 %tobool15, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %cond.end13
  call void @__assert_rtn(ptr noundef @__func__.child_fn1, ptr noundef @.str, i32 noundef 29, ptr noundef @.str.1) #3
  unreachable

5:                                                ; No predecessors!
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end13
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %5
  %call25 = call i32 @pthread_mutex_unlock(ptr noundef @mx)
  store i32 %call25, ptr %r, align 4
  %6 = load i32, ptr %r, align 4
  %tobool26 = icmp ne i32 %6, 0
  %lnot27 = xor i1 %tobool26, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %cond.end24
  call void @__assert_rtn(ptr noundef @__func__.child_fn1, ptr noundef @.str, i32 noundef 30, ptr noundef @.str.1) #3
  unreachable

7:                                                ; No predecessors!
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end24
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %7
  %call36 = call i32 @"\01_sleep"(i32 noundef 1)
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @child_fn2(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i32 @"\01_sleep"(i32 noundef 1)
  store i32 1, ptr @x, align 4
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  %child1 = alloca ptr, align 8
  %child2 = alloca ptr, align 8
  %attr = alloca %struct._opaque_pthread_mutexattr_t, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @pthread_mutexattr_init(ptr noundef %attr)
  store i32 %call, ptr %r, align 4
  %0 = load i32, ptr %r, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 48, ptr noundef @.str.1) #3
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %call3 = call i32 @pthread_mutexattr_settype(ptr noundef %attr, i32 noundef 2)
  store i32 %call3, ptr %r, align 4
  %2 = load i32, ptr %r, align 4
  %tobool4 = icmp ne i32 %2, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 50, ptr noundef @.str.1) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %3
  %call14 = call i32 @pthread_mutex_init(ptr noundef @mx, ptr noundef %attr)
  store i32 %call14, ptr %r, align 4
  %4 = load i32, ptr %r, align 4
  %tobool15 = icmp ne i32 %4, 0
  %lnot16 = xor i1 %tobool15, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %cond.end13
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 51, ptr noundef @.str.1) #3
  unreachable

5:                                                ; No predecessors!
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end13
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %5
  %call25 = call i32 @pthread_create(ptr noundef %child2, ptr noundef null, ptr noundef @child_fn2, ptr noundef null)
  store i32 %call25, ptr %r, align 4
  %6 = load i32, ptr %r, align 4
  %tobool26 = icmp ne i32 %6, 0
  %lnot27 = xor i1 %tobool26, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %cond.end24
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 53, ptr noundef @.str.1) #3
  unreachable

7:                                                ; No predecessors!
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end24
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %7
  %call36 = call i32 @pthread_create(ptr noundef %child1, ptr noundef null, ptr noundef @child_fn1, ptr noundef null)
  store i32 %call36, ptr %r, align 4
  %8 = load i32, ptr %r, align 4
  %tobool37 = icmp ne i32 %8, 0
  %lnot38 = xor i1 %tobool37, true
  %lnot40 = xor i1 %lnot38, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %conv42 = sext i32 %lnot.ext41 to i64
  %tobool43 = icmp ne i64 %conv42, 0
  br i1 %tobool43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %cond.end35
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 54, ptr noundef @.str.1) #3
  unreachable

9:                                                ; No predecessors!
  br label %cond.end46

cond.false45:                                     ; preds = %cond.end35
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %9
  %10 = load ptr, ptr %child1, align 8
  %call47 = call i32 @"\01_pthread_join"(ptr noundef %10, ptr noundef null)
  store i32 %call47, ptr %r, align 4
  %11 = load i32, ptr %r, align 4
  %tobool48 = icmp ne i32 %11, 0
  %lnot49 = xor i1 %tobool48, true
  %lnot51 = xor i1 %lnot49, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %conv53 = sext i32 %lnot.ext52 to i64
  %tobool54 = icmp ne i64 %conv53, 0
  br i1 %tobool54, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.end46
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 56, ptr noundef @.str.1) #3
  unreachable

12:                                               ; No predecessors!
  br label %cond.end57

cond.false56:                                     ; preds = %cond.end46
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %12
  %13 = load ptr, ptr %child2, align 8
  %call58 = call i32 @"\01_pthread_join"(ptr noundef %13, ptr noundef null)
  store i32 %call58, ptr %r, align 4
  %14 = load i32, ptr %r, align 4
  %tobool59 = icmp ne i32 %14, 0
  %lnot60 = xor i1 %tobool59, true
  %lnot62 = xor i1 %lnot60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %tobool65 = icmp ne i64 %conv64, 0
  br i1 %tobool65, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.end57
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 57, ptr noundef @.str.1) #3
  unreachable

15:                                               ; No predecessors!
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end57
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %15
  %call69 = call i32 @pthread_mutex_destroy(ptr noundef @mx)
  store i32 %call69, ptr %r, align 4
  %16 = load i32, ptr %r, align 4
  %tobool70 = icmp ne i32 %16, 0
  %lnot71 = xor i1 %tobool70, true
  %lnot73 = xor i1 %lnot71, true
  %lnot.ext74 = zext i1 %lnot73 to i32
  %conv75 = sext i32 %lnot.ext74 to i64
  %tobool76 = icmp ne i64 %conv75, 0
  br i1 %tobool76, label %cond.true77, label %cond.false78

cond.true77:                                      ; preds = %cond.end68
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 59, ptr noundef @.str.1) #3
  unreachable

17:                                               ; No predecessors!
  br label %cond.end79

cond.false78:                                     ; preds = %cond.end68
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false78, %17
  ret i32 0
}

declare i32 @pthread_mutexattr_init(ptr noundef) #1

declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) #1

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
