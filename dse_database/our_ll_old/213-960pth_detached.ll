; ModuleID = './code/213-960pth_detached.c'
source_filename = "./code/213-960pth_detached.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@s_mutex = internal global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@s_cond = internal global %struct._opaque_pthread_cond_t zeroinitializer, align 8
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"213-960pth_detached.c\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"pthread_attr_getdetachstate(&attr, &detachstate) == 0\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"detachstate == PTHREAD_CREATE_DETACHED\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"detachstate == PTHREAD_CREATE_JOINABLE\00", align 1
@s_finished_count = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %i = alloca i32, align 4
  %detachstate = alloca i32, align 4
  %attr = alloca %struct._opaque_pthread_attr_t, align 8
  %thread = alloca ptr, align 8
  %thread54 = alloca ptr, align 8
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
  %call = call i32 @atoi(ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 100, %cond.false ]
  store i32 %cond, ptr %count1, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i32 [ %call4, %cond.true2 ], [ 100, %cond.false5 ]
  store i32 %cond7, ptr %count2, align 4
  %call8 = call i32 @pthread_mutex_init(ptr noundef @s_mutex, ptr noundef null)
  %call9 = call i32 @"\01_pthread_cond_init"(ptr noundef @s_cond, ptr noundef null)
  %call10 = call i32 @pthread_attr_init(ptr noundef %attr)
  %call11 = call i32 @pthread_attr_setdetachstate(ptr noundef %attr, i32 noundef 2)
  %call12 = call i32 @pthread_attr_getdetachstate(ptr noundef %attr, ptr noundef %detachstate)
  %cmp13 = icmp eq i32 %call12, 0
  %lnot = xor i1 %cmp13, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end6
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 50, ptr noundef @.str.1) #3
  unreachable

6:                                                ; No predecessors!
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end6
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %6
  %7 = load i32, ptr %detachstate, align 4
  %cmp17 = icmp eq i32 %7, 2
  %lnot19 = xor i1 %cmp17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end16
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 51, ptr noundef @.str.2) #3
  unreachable

8:                                                ; No predecessors!
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end16
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %8
  %call26 = call i32 @pthread_attr_setstacksize(ptr noundef %attr, i64 noundef 20480)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end25
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %count1, align 4
  %cmp27 = icmp slt i32 %9, %10
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call29 = call i32 @pthread_create(ptr noundef %thread, ptr noundef %attr, ptr noundef @thread_func1, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call30 = call i32 @pthread_attr_setdetachstate(ptr noundef %attr, i32 noundef 1)
  %call31 = call i32 @pthread_attr_getdetachstate(ptr noundef %attr, ptr noundef %detachstate)
  %cmp32 = icmp eq i32 %call31, 0
  %lnot34 = xor i1 %cmp32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %for.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 62, ptr noundef @.str.1) #3
  unreachable

12:                                               ; No predecessors!
  br label %cond.end40

cond.false39:                                     ; preds = %for.end
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %12
  %13 = load i32, ptr %detachstate, align 4
  %cmp41 = icmp eq i32 %13, 1
  %lnot43 = xor i1 %cmp41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %tobool46 = icmp ne i64 %conv45, 0
  br i1 %tobool46, label %cond.true47, label %cond.false48

cond.true47:                                      ; preds = %cond.end40
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 63, ptr noundef @.str.3) #3
  unreachable

14:                                               ; No predecessors!
  br label %cond.end49

cond.false48:                                     ; preds = %cond.end40
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %14
  store i32 0, ptr %i, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc56, %cond.end49
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %count2, align 4
  %cmp51 = icmp slt i32 %15, %16
  br i1 %cmp51, label %for.body53, label %for.end58

for.body53:                                       ; preds = %for.cond50
  %call55 = call i32 @pthread_create(ptr noundef %thread54, ptr noundef %attr, ptr noundef @thread_func2, ptr noundef null)
  br label %for.inc56

for.inc56:                                        ; preds = %for.body53
  %17 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %17, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond50, !llvm.loop !7

for.end58:                                        ; preds = %for.cond50
  %call59 = call i32 @pthread_attr_destroy(ptr noundef %attr)
  %call60 = call i32 @pthread_mutex_lock(ptr noundef @s_mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end58
  %18 = load i32, ptr @s_finished_count, align 4
  %19 = load i32, ptr %count1, align 4
  %20 = load i32, ptr %count2, align 4
  %add = add nsw i32 %19, %20
  %cmp61 = icmp slt i32 %18, %add
  br i1 %cmp61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call63 = call i32 @"\01_pthread_cond_wait"(ptr noundef @s_cond, ptr noundef @s_mutex)
  %cmp64 = icmp eq i32 %call63, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp64, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %call66 = call i32 @pthread_mutex_unlock(ptr noundef @s_mutex)
  %call67 = call i32 @pthread_cond_destroy(ptr noundef @s_cond)
  %call68 = call i32 @pthread_mutex_destroy(ptr noundef @s_mutex)
  %call69 = call i32 @"\01_sleep"(i32 noundef 1)
  %call70 = call i64 @"\01_write"(i32 noundef 1, ptr noundef @.str.4, i64 noundef 1)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #1

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_cond_init"(ptr noundef, ptr noundef) #1

declare i32 @pthread_attr_init(ptr noundef) #1

declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) #1

declare i32 @pthread_attr_getdetachstate(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @thread_func1(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i64 @"\01_write"(i32 noundef 1, ptr noundef @.str.5, i64 noundef 1)
  call void @increment_finished_count()
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @thread_func2(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call ptr @pthread_self()
  %call1 = call i32 @pthread_detach(ptr noundef %call)
  %call2 = call i64 @"\01_write"(i32 noundef 1, ptr noundef @.str.5, i64 noundef 1)
  call void @increment_finished_count()
  ret ptr null
}

declare i32 @pthread_attr_destroy(ptr noundef) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @pthread_cond_destroy(ptr noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i64 @"\01_write"(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @increment_finished_count() #0 {
entry:
  %call = call i32 @pthread_mutex_lock(ptr noundef @s_mutex)
  %0 = load i32, ptr @s_finished_count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @s_finished_count, align 4
  %call1 = call i32 @pthread_cond_signal(ptr noundef @s_cond)
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef @s_mutex)
  ret void
}

declare i32 @pthread_cond_signal(ptr noundef) #1

declare i32 @pthread_detach(ptr noundef) #1

declare ptr @pthread_self() #1

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
!8 = distinct !{!8, !6}
