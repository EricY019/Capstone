; ModuleID = './code/017-32890pth_detached.c'
source_filename = "./code/017-32890pth_detached.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct.timespec = type { i64, i64 }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@s_mutex = internal global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [24 x i8] c"017-32890pth_detached.c\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"pthread_attr_getdetachstate(&attr, &detachstate) == 0\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"detachstate == PTHREAD_CREATE_DETACHED\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"detachstate == PTHREAD_CREATE_JOINABLE\00", align 1
@__const.main.delay = private unnamed_addr constant %struct.timespec { i64 0, i64 1000000 }, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@s_finished_count = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %detachstate = alloca i32, align 4
  %attr = alloca %struct._opaque_pthread_attr_t, align 8
  %thread = alloca ptr, align 8
  %thread68 = alloca ptr, align 8
  %delay = alloca %struct.timespec, align 8
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
  %6 = load i32, ptr %count1, align 4
  %7 = load i32, ptr %count2, align 4
  %cmp8 = icmp sgt i32 %6, %7
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end6
  %8 = load i32, ptr %count1, align 4
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end6
  %9 = load i32, ptr %count2, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %8, %cond.true9 ], [ %9, %cond.false10 ]
  %10 = zext i32 %cond12 to i64
  %11 = call ptr @llvm.stacksave.p0()
  store ptr %11, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %10, align 4
  store i64 %10, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end11
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %count1, align 4
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %count2, align 4
  %cmp14 = icmp slt i32 %14, %15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %16 = phi i1 [ true, %for.cond ], [ %cmp14, %lor.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %17, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %lor.end
  %call16 = call i32 @pthread_mutex_init(ptr noundef @s_mutex, ptr noundef null)
  %call17 = call i32 @pthread_attr_init(ptr noundef %attr)
  %call18 = call i32 @pthread_attr_setdetachstate(ptr noundef %attr, i32 noundef 2)
  %call19 = call i32 @pthread_attr_getdetachstate(ptr noundef %attr, ptr noundef %detachstate)
  %cmp20 = icmp eq i32 %call19, 0
  %lnot = xor i1 %cmp20, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %for.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 62, ptr noundef @.str.1) #5
  unreachable

20:                                               ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %for.end
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %20
  %21 = load i32, ptr %detachstate, align 4
  %cmp24 = icmp eq i32 %21, 2
  %lnot26 = xor i1 %cmp24, true
  %lnot.ext27 = zext i1 %lnot26 to i32
  %conv28 = sext i32 %lnot.ext27 to i64
  %tobool29 = icmp ne i64 %conv28, 0
  br i1 %tobool29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %cond.end23
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 63, ptr noundef @.str.2) #5
  unreachable

22:                                               ; No predecessors!
  br label %cond.end32

cond.false31:                                     ; preds = %cond.end23
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %22
  %call33 = call i32 @pthread_attr_setstacksize(ptr noundef %attr, i64 noundef 16384)
  store i32 0, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc41, %cond.end32
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %count1, align 4
  %cmp35 = icmp slt i32 %23, %24
  br i1 %cmp35, label %for.body37, label %for.end43

for.body37:                                       ; preds = %for.cond34
  %25 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %vla, i64 %idxprom38
  %call40 = call i32 @pthread_create(ptr noundef %thread, ptr noundef %attr, ptr noundef @thread_func1, ptr noundef %arrayidx39)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body37
  %26 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %26, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond34, !llvm.loop !7

for.end43:                                        ; preds = %for.cond34
  %call44 = call i32 @pthread_attr_setdetachstate(ptr noundef %attr, i32 noundef 1)
  %call45 = call i32 @pthread_attr_getdetachstate(ptr noundef %attr, ptr noundef %detachstate)
  %cmp46 = icmp eq i32 %call45, 0
  %lnot48 = xor i1 %cmp46, true
  %lnot.ext49 = zext i1 %lnot48 to i32
  %conv50 = sext i32 %lnot.ext49 to i64
  %tobool51 = icmp ne i64 %conv50, 0
  br i1 %tobool51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %for.end43
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 74, ptr noundef @.str.1) #5
  unreachable

27:                                               ; No predecessors!
  br label %cond.end54

cond.false53:                                     ; preds = %for.end43
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %27
  %28 = load i32, ptr %detachstate, align 4
  %cmp55 = icmp eq i32 %28, 1
  %lnot57 = xor i1 %cmp55, true
  %lnot.ext58 = zext i1 %lnot57 to i32
  %conv59 = sext i32 %lnot.ext58 to i64
  %tobool60 = icmp ne i64 %conv59, 0
  br i1 %tobool60, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %cond.end54
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 75, ptr noundef @.str.3) #5
  unreachable

29:                                               ; No predecessors!
  br label %cond.end63

cond.false62:                                     ; preds = %cond.end54
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %29
  store i32 0, ptr %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc72, %cond.end63
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %count2, align 4
  %cmp65 = icmp slt i32 %30, %31
  br i1 %cmp65, label %for.body67, label %for.end74

for.body67:                                       ; preds = %for.cond64
  %32 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %32 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %vla, i64 %idxprom69
  %call71 = call i32 @pthread_create(ptr noundef %thread68, ptr noundef %attr, ptr noundef @thread_func2, ptr noundef %arrayidx70)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body67
  %33 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %33, 1
  store i32 %inc73, ptr %i, align 4
  br label %for.cond64, !llvm.loop !8

for.end74:                                        ; preds = %for.cond64
  %call75 = call i32 @pthread_attr_destroy(ptr noundef %attr)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end74
  %call76 = call i32 @get_finished_count()
  %34 = load i32, ptr %count1, align 4
  %35 = load i32, ptr %count2, align 4
  %add = add nsw i32 %34, %35
  %cmp77 = icmp slt i32 %call76, %add
  br i1 %cmp77, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %delay, ptr align 8 @__const.main.delay, i64 16, i1 false)
  %call79 = call i32 @"\01_nanosleep"(ptr noundef %delay, ptr noundef null)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %call80 = call i64 @"\01_write"(i32 noundef 1, ptr noundef @.str.4, i64 noundef 1)
  %call81 = call i32 @pthread_mutex_destroy(ptr noundef @s_mutex)
  %call82 = call i32 @"\01_sleep"(i32 noundef 1)
  store i32 0, ptr %retval, align 4
  %36 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %36)
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

declare i32 @atoi(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_attr_init(ptr noundef) #1

declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) #1

declare i32 @pthread_attr_getdetachstate(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @"\01_nanosleep"(ptr noundef, ptr noundef) #1

declare i64 @"\01_write"(i32 noundef, ptr noundef, i64 noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @increment_finished_count() #0 {
entry:
  %call = call i32 @pthread_mutex_lock(ptr noundef @s_mutex)
  %0 = load i32, ptr @s_finished_count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @s_finished_count, align 4
  %call1 = call i32 @pthread_mutex_unlock(ptr noundef @s_mutex)
  ret void
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @pthread_detach(ptr noundef) #1

declare ptr @pthread_self() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @get_finished_count() #0 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @pthread_mutex_lock(ptr noundef @s_mutex)
  %0 = load i32, ptr @s_finished_count, align 4
  store i32 %0, ptr %result, align 4
  %call1 = call i32 @pthread_mutex_unlock(ptr noundef @s_mutex)
  %1 = load i32, ptr %result, align 4
  ret i32 %1
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn }

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
!9 = distinct !{!9, !6}
