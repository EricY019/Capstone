; ModuleID = './code/323-11081pth_lock.c'
source_filename = "./code/323-11081pth_lock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct.arg_t = type { i64, i64, i64, i64, ptr, ptr }

@m = global [1 x %struct._opaque_pthread_mutex_t] zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"NG: p = %ld != nthreads * ninc_per_thread = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @f(ptr noundef %arg_) #0 {
entry:
  %arg_.addr = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %ninc_per_thread = alloca i64, align 8
  %i = alloca i32, align 4
  %c = alloca i64, align 8
  %cargs = alloca [2 x %struct.arg_t], align 8
  %tid = alloca ptr, align 8
  store ptr %arg_, ptr %arg_.addr, align 8
  %0 = load ptr, ptr %arg_.addr, align 8
  store ptr %0, ptr %arg, align 8
  %1 = load ptr, ptr %arg, align 8
  %a1 = getelementptr inbounds %struct.arg_t, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %a1, align 8
  store i64 %2, ptr %a, align 8
  %3 = load ptr, ptr %arg, align 8
  %b2 = getelementptr inbounds %struct.arg_t, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %b2, align 8
  store i64 %4, ptr %b, align 8
  %5 = load ptr, ptr %arg, align 8
  %ninc_per_thread3 = getelementptr inbounds %struct.arg_t, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %ninc_per_thread3, align 8
  store i64 %6, ptr %ninc_per_thread, align 8
  %7 = load i64, ptr %b, align 8
  %8 = load i64, ptr %a, align 8
  %sub = sub nsw i64 %7, %8
  %cmp = icmp eq i64 %sub, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, ptr %i, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, ptr %ninc_per_thread, align 8
  %cmp4 = icmp slt i64 %conv, %10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %arg, align 8
  %m = getelementptr inbounds %struct.arg_t, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %m, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef %12)
  %13 = load ptr, ptr %arg, align 8
  %p = getelementptr inbounds %struct.arg_t, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 0
  %15 = load i64, ptr %arrayidx, align 8
  %inc = add nsw i64 %15, 1
  store i64 %inc, ptr %arrayidx, align 8
  %16 = load ptr, ptr %arg, align 8
  %m6 = getelementptr inbounds %struct.arg_t, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %m6, align 8
  %call7 = call i32 @pthread_mutex_unlock(ptr noundef %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %18, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %a, align 8
  %20 = load ptr, ptr %arg, align 8
  %r = getelementptr inbounds %struct.arg_t, ptr %20, i32 0, i32 3
  store i64 %19, ptr %r, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load i64, ptr %a, align 8
  %22 = load i64, ptr %b, align 8
  %add = add nsw i64 %21, %22
  %div = sdiv i64 %add, 2
  store i64 %div, ptr %c, align 8
  %ninc_per_thread9 = getelementptr inbounds %struct.arg_t, ptr %cargs, i32 0, i32 0
  %23 = load i64, ptr %ninc_per_thread, align 8
  store i64 %23, ptr %ninc_per_thread9, align 8
  %a10 = getelementptr inbounds %struct.arg_t, ptr %cargs, i32 0, i32 1
  %24 = load i64, ptr %a, align 8
  store i64 %24, ptr %a10, align 8
  %b11 = getelementptr inbounds %struct.arg_t, ptr %cargs, i32 0, i32 2
  %25 = load i64, ptr %c, align 8
  store i64 %25, ptr %b11, align 8
  %r12 = getelementptr inbounds %struct.arg_t, ptr %cargs, i32 0, i32 3
  store i64 0, ptr %r12, align 8
  %p13 = getelementptr inbounds %struct.arg_t, ptr %cargs, i32 0, i32 4
  %26 = load ptr, ptr %arg, align 8
  %p14 = getelementptr inbounds %struct.arg_t, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %p14, align 8
  store ptr %27, ptr %p13, align 8
  %m15 = getelementptr inbounds %struct.arg_t, ptr %cargs, i32 0, i32 5
  %28 = load ptr, ptr %arg, align 8
  %m16 = getelementptr inbounds %struct.arg_t, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %m16, align 8
  store ptr %29, ptr %m15, align 8
  %arrayinit.element = getelementptr inbounds %struct.arg_t, ptr %cargs, i64 1
  %ninc_per_thread17 = getelementptr inbounds %struct.arg_t, ptr %arrayinit.element, i32 0, i32 0
  %30 = load i64, ptr %ninc_per_thread, align 8
  store i64 %30, ptr %ninc_per_thread17, align 8
  %a18 = getelementptr inbounds %struct.arg_t, ptr %arrayinit.element, i32 0, i32 1
  %31 = load i64, ptr %c, align 8
  store i64 %31, ptr %a18, align 8
  %b19 = getelementptr inbounds %struct.arg_t, ptr %arrayinit.element, i32 0, i32 2
  %32 = load i64, ptr %b, align 8
  store i64 %32, ptr %b19, align 8
  %r20 = getelementptr inbounds %struct.arg_t, ptr %arrayinit.element, i32 0, i32 3
  store i64 0, ptr %r20, align 8
  %p21 = getelementptr inbounds %struct.arg_t, ptr %arrayinit.element, i32 0, i32 4
  %33 = load ptr, ptr %arg, align 8
  %p22 = getelementptr inbounds %struct.arg_t, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %p22, align 8
  store ptr %34, ptr %p21, align 8
  %m23 = getelementptr inbounds %struct.arg_t, ptr %arrayinit.element, i32 0, i32 5
  %35 = load ptr, ptr %arg, align 8
  %m24 = getelementptr inbounds %struct.arg_t, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %m24, align 8
  store ptr %36, ptr %m23, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.arg_t], ptr %cargs, i64 0, i64 0
  %call25 = call i32 @pthread_create(ptr noundef %tid, ptr noundef null, ptr noundef @f, ptr noundef %arraydecay)
  %arraydecay26 = getelementptr inbounds [2 x %struct.arg_t], ptr %cargs, i64 0, i64 0
  %add.ptr = getelementptr inbounds %struct.arg_t, ptr %arraydecay26, i64 1
  %call27 = call ptr @f(ptr noundef %add.ptr)
  %37 = load ptr, ptr %tid, align 8
  %call28 = call i32 @"\01_pthread_join"(ptr noundef %37, ptr noundef null)
  %arrayidx29 = getelementptr inbounds [2 x %struct.arg_t], ptr %cargs, i64 0, i64 0
  %r30 = getelementptr inbounds %struct.arg_t, ptr %arrayidx29, i32 0, i32 3
  %38 = load i64, ptr %r30, align 8
  %arrayidx31 = getelementptr inbounds [2 x %struct.arg_t], ptr %cargs, i64 0, i64 1
  %r32 = getelementptr inbounds %struct.arg_t, ptr %arrayidx31, i32 0, i32 3
  %39 = load i64, ptr %r32, align 8
  %add33 = add nsw i64 %38, %39
  %40 = load ptr, ptr %arg, align 8
  %r34 = getelementptr inbounds %struct.arg_t, ptr %40, i32 0, i32 3
  store i64 %add33, ptr %r34, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %nthreads = alloca i64, align 8
  %ninc_per_thread = alloca i64, align 8
  %p = alloca [1 x i64], align 8
  %arg = alloca [1 x %struct.arg_t], align 8
  %tid = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @atol(ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 100, %cond.false ]
  store i64 %cond, ptr %nthreads, align 8
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i64 @atol(ptr noundef %5)
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i64 [ %call4, %cond.true2 ], [ 10000, %cond.false5 ]
  store i64 %cond7, ptr %ninc_per_thread, align 8
  %call8 = call i32 @pthread_mutex_init(ptr noundef @m, ptr noundef null)
  call void @llvm.memset.p0.i64(ptr align 8 %p, i8 0, i64 8, i1 false)
  %ninc_per_thread9 = getelementptr inbounds %struct.arg_t, ptr %arg, i32 0, i32 0
  %6 = load i64, ptr %ninc_per_thread, align 8
  store i64 %6, ptr %ninc_per_thread9, align 8
  %a = getelementptr inbounds %struct.arg_t, ptr %arg, i32 0, i32 1
  store i64 0, ptr %a, align 8
  %b = getelementptr inbounds %struct.arg_t, ptr %arg, i32 0, i32 2
  %7 = load i64, ptr %nthreads, align 8
  store i64 %7, ptr %b, align 8
  %r = getelementptr inbounds %struct.arg_t, ptr %arg, i32 0, i32 3
  store i64 0, ptr %r, align 8
  %p10 = getelementptr inbounds %struct.arg_t, ptr %arg, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  store ptr %arraydecay, ptr %p10, align 8
  %m = getelementptr inbounds %struct.arg_t, ptr %arg, i32 0, i32 5
  store ptr @m, ptr %m, align 8
  %arraydecay11 = getelementptr inbounds [1 x %struct.arg_t], ptr %arg, i64 0, i64 0
  %call12 = call i32 @pthread_create(ptr noundef %tid, ptr noundef null, ptr noundef @f, ptr noundef %arraydecay11)
  %8 = load ptr, ptr %tid, align 8
  %call13 = call i32 @"\01_pthread_join"(ptr noundef %8, ptr noundef null)
  %arraydecay14 = getelementptr inbounds [1 x %struct.arg_t], ptr %arg, i64 0, i64 0
  %r15 = getelementptr inbounds %struct.arg_t, ptr %arraydecay14, i32 0, i32 3
  %9 = load i64, ptr %r15, align 8
  %10 = load i64, ptr %nthreads, align 8
  %sub = sub nsw i64 %10, 1
  %11 = load i64, ptr %nthreads, align 8
  %mul = mul nsw i64 %sub, %11
  %div = sdiv i64 %mul, 2
  %cmp16 = icmp eq i64 %9, %div
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end6
  %arraydecay17 = getelementptr inbounds [1 x %struct.arg_t], ptr %arg, i64 0, i64 0
  %p18 = getelementptr inbounds %struct.arg_t, ptr %arraydecay17, i32 0, i32 4
  %12 = load ptr, ptr %p18, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %12, i64 0
  %13 = load i64, ptr %arrayidx19, align 8
  %14 = load i64, ptr %nthreads, align 8
  %15 = load i64, ptr %ninc_per_thread, align 8
  %mul20 = mul nsw i64 %14, %15
  %cmp21 = icmp eq i64 %13, %mul20
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %cond.end6
  %arraydecay23 = getelementptr inbounds [1 x %struct.arg_t], ptr %arg, i64 0, i64 0
  %p24 = getelementptr inbounds %struct.arg_t, ptr %arraydecay23, i32 0, i32 4
  %16 = load ptr, ptr %p24, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %16, i64 0
  %17 = load i64, ptr %arrayidx25, align 8
  %18 = load i64, ptr %nthreads, align 8
  %19 = load i64, ptr %ninc_per_thread, align 8
  %mul26 = mul nsw i64 %18, %19
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %17, i64 noundef %mul26)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

declare i64 @atol(ptr noundef) #1

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
