; ModuleID = './code/199-28780semaphore_lock.c'
source_filename = "./code/199-28780semaphore_lock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.SWorker = type { ptr, [10 x i8], i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"[Work_%s] - is waiting for Resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"[Work_%s] - is keeping resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[Work_%s] - Release Resource\0A\00", align 1
@gResource = global i32 0, align 4
@gResSema = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"[%s_%s] - Begin transaction, target = %d and work with in %d sec\0A\00", align 1
@__FUNCTION__.Work = private unnamed_addr constant [5 x i8] c"Work\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"[%s_%s] - End transaction, Resource = %d and target = %d \0A\00", align 1
@__const.ExampleWithSema.workerA = private unnamed_addr constant %struct.SWorker { ptr null, [10 x i8] c"A\00\00\00\00\00\00\00\00\00", i32 10, i32 10 }, align 8
@__const.ExampleWithSema.workerB = private unnamed_addr constant %struct.SWorker { ptr null, [10 x i8] c"B\00\00\00\00\00\00\00\00\00", i32 4, i32 11 }, align 8
@__const.ExampleWithSema.workerC = private unnamed_addr constant %struct.SWorker { ptr null, [10 x i8] c"C\00\00\00\00\00\00\00\00\00", i32 2, i32 11 }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @semaCreate(ptr noundef %sem, i32 noundef %initialCount) #0 {
entry:
  %sem.addr = alloca ptr, align 8
  %initialCount.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  store i32 %initialCount, ptr %initialCount.addr, align 4
  %0 = load ptr, ptr %sem.addr, align 8
  %1 = load i32, ptr %initialCount.addr, align 4
  %call = call i32 @sem_init(ptr noundef %0, i32 noundef 0, i32 noundef %1)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  ret i32 %2
}

declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @semaDestroy(ptr noundef %sem) #0 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  %0 = load ptr, ptr %sem.addr, align 8
  %call = call i32 @sem_destroy(ptr noundef %0)
  ret void
}

declare i32 @sem_destroy(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @semaWait(ptr noundef %sem, ptr noundef %name) #0 {
entry:
  %sem.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %1 = load ptr, ptr %sem.addr, align 8
  %call1 = call i32 @"\01_sem_wait"(ptr noundef %1)
  store i32 %call1, ptr %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 -1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call2 = call ptr @__error()
  %3 = load i32, ptr %call2, align 4
  %cmp3 = icmp eq i32 4, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %4 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %land.end
  %5 = load ptr, ptr %name.addr, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %5)
  %6 = load i32, ptr %rc, align 4
  ret i32 %6
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_sem_wait"(ptr noundef) #1

declare ptr @__error() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @semaRelease(ptr noundef %sem, ptr noundef %name) #0 {
entry:
  %sem.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %sem.addr, align 8
  %call = call i32 @sem_post(ptr noundef %0)
  store i32 %call, ptr %rc, align 4
  %1 = load ptr, ptr %name.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %1)
  %2 = load i32, ptr %rc, align 4
  ret i32 %2
}

declare i32 @sem_post(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Work(ptr noundef %person) #0 {
entry:
  %person.addr = alloca ptr, align 8
  store ptr %person, ptr %person.addr, align 8
  %0 = load ptr, ptr %person.addr, align 8
  %name = getelementptr inbounds %struct.SWorker, ptr %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0
  %call = call i32 @semaWait(ptr noundef @gResSema, ptr noundef %arraydecay)
  %1 = load ptr, ptr %person.addr, align 8
  %name1 = getelementptr inbounds %struct.SWorker, ptr %1, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [10 x i8], ptr %name1, i64 0, i64 0
  %2 = load ptr, ptr %person.addr, align 8
  %target = getelementptr inbounds %struct.SWorker, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %target, align 8
  %4 = load ptr, ptr %person.addr, align 8
  %time = getelementptr inbounds %struct.SWorker, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %time, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef @__FUNCTION__.Work, ptr noundef %arraydecay2, i32 noundef %3, i32 noundef %5)
  %6 = load ptr, ptr %person.addr, align 8
  %time4 = getelementptr inbounds %struct.SWorker, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %time4, align 4
  %call5 = call i32 @"\01_sleep"(i32 noundef %7)
  %8 = load ptr, ptr %person.addr, align 8
  %target6 = getelementptr inbounds %struct.SWorker, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %target6, align 8
  store i32 %9, ptr @gResource, align 4
  %10 = load ptr, ptr %person.addr, align 8
  %name7 = getelementptr inbounds %struct.SWorker, ptr %10, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [10 x i8], ptr %name7, i64 0, i64 0
  %11 = load i32, ptr @gResource, align 4
  %12 = load ptr, ptr %person.addr, align 8
  %target9 = getelementptr inbounds %struct.SWorker, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %target9, align 8
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef @__FUNCTION__.Work, ptr noundef %arraydecay8, i32 noundef %11, i32 noundef %13)
  %14 = load ptr, ptr %person.addr, align 8
  %name11 = getelementptr inbounds %struct.SWorker, ptr %14, i32 0, i32 1
  %arraydecay12 = getelementptr inbounds [10 x i8], ptr %name11, i64 0, i64 0
  %call13 = call i32 @semaRelease(ptr noundef @gResSema, ptr noundef %arraydecay12)
  ret void
}

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @DoWork(ptr noundef %param) #0 {
entry:
  %param.addr = alloca ptr, align 8
  %worker = alloca ptr, align 8
  store ptr %param, ptr %param.addr, align 8
  %0 = load ptr, ptr %param.addr, align 8
  store ptr %0, ptr %worker, align 8
  %1 = load ptr, ptr %worker, align 8
  call void @Work(ptr noundef %1)
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @DoAWork(ptr noundef %person) #0 {
entry:
  %person.addr = alloca ptr, align 8
  %var_thread = alloca ptr, align 8
  store ptr %person, ptr %person.addr, align 8
  %0 = load ptr, ptr %person.addr, align 8
  %call = call i32 @pthread_create(ptr noundef %var_thread, ptr noundef null, ptr noundef @DoWork, ptr noundef %0)
  %1 = load ptr, ptr %var_thread, align 8
  ret ptr %1
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ExampleWithSema() #0 {
entry:
  %workerA = alloca %struct.SWorker, align 8
  %workerB = alloca %struct.SWorker, align 8
  %workerC = alloca %struct.SWorker, align 8
  %call = call i32 @semaCreate(ptr noundef @gResSema, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %workerA, ptr align 8 @__const.ExampleWithSema.workerA, i64 32, i1 false)
  %call1 = call ptr @DoAWork(ptr noundef %workerA)
  %threadID = getelementptr inbounds %struct.SWorker, ptr %workerA, i32 0, i32 0
  store ptr %call1, ptr %threadID, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %workerB, ptr align 8 @__const.ExampleWithSema.workerB, i64 32, i1 false)
  %call2 = call ptr @DoAWork(ptr noundef %workerB)
  %threadID3 = getelementptr inbounds %struct.SWorker, ptr %workerB, i32 0, i32 0
  store ptr %call2, ptr %threadID3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %workerC, ptr align 8 @__const.ExampleWithSema.workerC, i64 32, i1 false)
  %call4 = call ptr @DoAWork(ptr noundef %workerC)
  %threadID5 = getelementptr inbounds %struct.SWorker, ptr %workerC, i32 0, i32 0
  store ptr %call4, ptr %threadID5, align 8
  %threadID6 = getelementptr inbounds %struct.SWorker, ptr %workerA, i32 0, i32 0
  %0 = load ptr, ptr %threadID6, align 8
  %call7 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %threadID8 = getelementptr inbounds %struct.SWorker, ptr %workerB, i32 0, i32 0
  %1 = load ptr, ptr %threadID8, align 8
  %call9 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  %threadID10 = getelementptr inbounds %struct.SWorker, ptr %workerC, i32 0, i32 0
  %2 = load ptr, ptr %threadID10, align 8
  %call11 = call i32 @"\01_pthread_join"(ptr noundef %2, ptr noundef null)
  call void @semaDestroy(ptr noundef @gResSema)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @ExampleWithSema()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
