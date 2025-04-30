; ModuleID = './code/261-985809-mukherjee_fib_Bench.c'
source_filename = "./code/261-985809-mukherjee_fib_Bench.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@lock = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8
@NUM = global i32 0, align 4
@j = global i32 0, align 4
@i = global i32 0, align 4
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [33 x i8] c"261-985809-mukherjee_fib_Bench.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"i < 144\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"j < 144\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @W1_Fib_Bench_False_Unreach_Call(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %1 = load i32, ptr @NUM, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @lock)
  %2 = load i32, ptr @j, align 4
  %3 = load i32, ptr @i, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr @i, align 4
  %call1 = call i32 @pthread_mutex_unlock(ptr noundef @lock)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %k, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @W2_Fib_Bench_False_Unreach_Call(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %1 = load i32, ptr @NUM, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @lock)
  %2 = load i32, ptr @i, align 4
  %3 = load i32, ptr @j, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr @j, align 4
  %call1 = call i32 @pthread_mutex_unlock(ptr noundef @lock)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %k, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca ptr, align 8
  %t2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr @i, align 4
  store i32 1, ptr @j, align 4
  store i32 5, ptr @NUM, align 4
  %call = call i32 @pthread_create(ptr noundef %t1, ptr noundef null, ptr noundef @W1_Fib_Bench_False_Unreach_Call, ptr noundef null)
  %call1 = call i32 @pthread_create(ptr noundef %t2, ptr noundef null, ptr noundef @W2_Fib_Bench_False_Unreach_Call, ptr noundef null)
  %0 = load ptr, ptr %t1, align 8
  %call2 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %t2, align 8
  %call3 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  %2 = load i32, ptr @i, align 4
  %cmp = icmp slt i32 %2, 144
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 42, ptr noundef @.str.1) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load i32, ptr @j, align 4
  %cmp4 = icmp slt i32 %4, 144
  %lnot6 = xor i1 %cmp4, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  %conv8 = sext i32 %lnot.ext7 to i64
  %tobool9 = icmp ne i64 %conv8, 0
  br i1 %tobool9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 43, ptr noundef @.str.2) #3
  unreachable

5:                                                ; No predecessors!
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %5
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

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
!7 = distinct !{!7, !6}
