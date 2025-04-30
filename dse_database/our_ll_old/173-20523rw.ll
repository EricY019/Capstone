; ModuleID = './code/173-20523rw.c'
source_filename = "./code/173-20523rw.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.rwl = type { ptr, i32, i32, i32, ptr, ptr }
%struct.rwargs = type { ptr, i32, i64 }

@data = internal global i32 1, align 4
@.str = private unnamed_addr constant [23 x i8] c"Reader %d : Data = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Reader %d: Finished.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Writer %d: Wrote %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Writer %d: Finishing...\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Writer %d: Finished.\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"reader %d blocked.\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"reader %d unblocked.\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"writer %d blocked.\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"writer %d unblocked.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r1 = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %r3 = alloca ptr, align 8
  %r4 = alloca ptr, align 8
  %w1 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %a3 = alloca ptr, align 8
  %a4 = alloca ptr, align 8
  %a5 = alloca ptr, align 8
  %lock = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @initlock()
  store ptr %call, ptr %lock, align 8
  %0 = load ptr, ptr %lock, align 8
  %call1 = call ptr @newRWargs(ptr noundef %0, i32 noundef 1, i64 noundef 150000)
  store ptr %call1, ptr %a1, align 8
  %1 = load ptr, ptr %a1, align 8
  %call2 = call i32 @pthread_create(ptr noundef %w1, ptr noundef null, ptr noundef @writer, ptr noundef %1)
  %2 = load ptr, ptr %lock, align 8
  %call3 = call ptr @newRWargs(ptr noundef %2, i32 noundef 1, i64 noundef 50000)
  store ptr %call3, ptr %a2, align 8
  %3 = load ptr, ptr %a2, align 8
  %call4 = call i32 @pthread_create(ptr noundef %r1, ptr noundef null, ptr noundef @reader, ptr noundef %3)
  %4 = load ptr, ptr %lock, align 8
  %call5 = call ptr @newRWargs(ptr noundef %4, i32 noundef 2, i64 noundef 100000)
  store ptr %call5, ptr %a3, align 8
  %5 = load ptr, ptr %a3, align 8
  %call6 = call i32 @pthread_create(ptr noundef %r2, ptr noundef null, ptr noundef @reader, ptr noundef %5)
  %6 = load ptr, ptr %lock, align 8
  %call7 = call ptr @newRWargs(ptr noundef %6, i32 noundef 3, i64 noundef 400000)
  store ptr %call7, ptr %a4, align 8
  %7 = load ptr, ptr %a4, align 8
  %call8 = call i32 @pthread_create(ptr noundef %r3, ptr noundef null, ptr noundef @reader, ptr noundef %7)
  %8 = load ptr, ptr %lock, align 8
  %call9 = call ptr @newRWargs(ptr noundef %8, i32 noundef 4, i64 noundef 800000)
  store ptr %call9, ptr %a5, align 8
  %9 = load ptr, ptr %a5, align 8
  %call10 = call i32 @pthread_create(ptr noundef %r4, ptr noundef null, ptr noundef @reader, ptr noundef %9)
  %10 = load ptr, ptr %w1, align 8
  %call11 = call i32 @"\01_pthread_join"(ptr noundef %10, ptr noundef null)
  %11 = load ptr, ptr %r1, align 8
  %call12 = call i32 @"\01_pthread_join"(ptr noundef %11, ptr noundef null)
  %12 = load ptr, ptr %r2, align 8
  %call13 = call i32 @"\01_pthread_join"(ptr noundef %12, ptr noundef null)
  %13 = load ptr, ptr %r3, align 8
  %call14 = call i32 @"\01_pthread_join"(ptr noundef %13, ptr noundef null)
  %14 = load ptr, ptr %r4, align 8
  %call15 = call i32 @"\01_pthread_join"(ptr noundef %14, ptr noundef null)
  %15 = load ptr, ptr %a1, align 8
  call void @free(ptr noundef %15)
  %16 = load ptr, ptr %a2, align 8
  call void @free(ptr noundef %16)
  %17 = load ptr, ptr %a3, align 8
  call void @free(ptr noundef %17)
  %18 = load ptr, ptr %a4, align 8
  call void @free(ptr noundef %18)
  %19 = load ptr, ptr %a5, align 8
  call void @free(ptr noundef %19)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @initlock() #0 {
entry:
  %retval = alloca ptr, align 8
  %lock = alloca ptr, align 8
  %call = call ptr @malloc(i64 noundef 40) #3
  store ptr %call, ptr %lock, align 8
  %0 = load ptr, ptr %lock, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @malloc(i64 noundef 64) #3
  %1 = load ptr, ptr %lock, align 8
  %mut = getelementptr inbounds %struct.rwl, ptr %1, i32 0, i32 0
  store ptr %call1, ptr %mut, align 8
  %2 = load ptr, ptr %lock, align 8
  %mut2 = getelementptr inbounds %struct.rwl, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %mut2, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %lock, align 8
  call void @free(ptr noundef %4)
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @malloc(i64 noundef 48) #3
  %5 = load ptr, ptr %lock, align 8
  %writeOK = getelementptr inbounds %struct.rwl, ptr %5, i32 0, i32 4
  store ptr %call6, ptr %writeOK, align 8
  %6 = load ptr, ptr %lock, align 8
  %writeOK7 = getelementptr inbounds %struct.rwl, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %writeOK7, align 8
  %cmp8 = icmp eq ptr %7, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  %8 = load ptr, ptr %lock, align 8
  %mut10 = getelementptr inbounds %struct.rwl, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %mut10, align 8
  call void @free(ptr noundef %9)
  %10 = load ptr, ptr %lock, align 8
  call void @free(ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end5
  %call12 = call ptr @malloc(i64 noundef 48) #3
  %11 = load ptr, ptr %lock, align 8
  %readOK = getelementptr inbounds %struct.rwl, ptr %11, i32 0, i32 5
  store ptr %call12, ptr %readOK, align 8
  %12 = load ptr, ptr %lock, align 8
  %writeOK13 = getelementptr inbounds %struct.rwl, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %writeOK13, align 8
  %cmp14 = icmp eq ptr %13, null
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  %14 = load ptr, ptr %lock, align 8
  %mut16 = getelementptr inbounds %struct.rwl, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %mut16, align 8
  call void @free(ptr noundef %15)
  %16 = load ptr, ptr %lock, align 8
  %writeOK17 = getelementptr inbounds %struct.rwl, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %writeOK17, align 8
  call void @free(ptr noundef %17)
  %18 = load ptr, ptr %lock, align 8
  call void @free(ptr noundef %18)
  store ptr null, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end11
  %19 = load ptr, ptr %lock, align 8
  %mut19 = getelementptr inbounds %struct.rwl, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %mut19, align 8
  %call20 = call i32 @pthread_mutex_init(ptr noundef %20, ptr noundef null)
  %21 = load ptr, ptr %lock, align 8
  %writeOK21 = getelementptr inbounds %struct.rwl, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %writeOK21, align 8
  %call22 = call i32 @"\01_pthread_cond_init"(ptr noundef %22, ptr noundef null)
  %23 = load ptr, ptr %lock, align 8
  %readOK23 = getelementptr inbounds %struct.rwl, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %readOK23, align 8
  %call24 = call i32 @"\01_pthread_cond_init"(ptr noundef %24, ptr noundef null)
  %25 = load ptr, ptr %lock, align 8
  %readers = getelementptr inbounds %struct.rwl, ptr %25, i32 0, i32 2
  store i32 0, ptr %readers, align 4
  %26 = load ptr, ptr %lock, align 8
  %writers = getelementptr inbounds %struct.rwl, ptr %26, i32 0, i32 1
  store i32 0, ptr %writers, align 8
  %27 = load ptr, ptr %lock, align 8
  %waiting = getelementptr inbounds %struct.rwl, ptr %27, i32 0, i32 3
  store i32 0, ptr %waiting, align 8
  %28 = load ptr, ptr %lock, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then15, %if.then9, %if.then4, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @newRWargs(ptr noundef %l, i32 noundef %i, i64 noundef %d) #0 {
entry:
  %retval = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %d.addr = alloca i64, align 8
  %args = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %d, ptr %d.addr, align 8
  %call = call ptr @malloc(i64 noundef 24) #3
  store ptr %call, ptr %args, align 8
  %0 = load ptr, ptr %args, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %l.addr, align 8
  %2 = load ptr, ptr %args, align 8
  %lock = getelementptr inbounds %struct.rwargs, ptr %2, i32 0, i32 0
  store ptr %1, ptr %lock, align 8
  %3 = load i32, ptr %i.addr, align 4
  %4 = load ptr, ptr %args, align 8
  %id = getelementptr inbounds %struct.rwargs, ptr %4, i32 0, i32 1
  store i32 %3, ptr %id, align 8
  %5 = load i64, ptr %d.addr, align 8
  %6 = load ptr, ptr %args, align 8
  %delay = getelementptr inbounds %struct.rwargs, ptr %6, i32 0, i32 2
  store i64 %5, ptr %delay, align 8
  %7 = load ptr, ptr %args, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @writer(ptr noundef %args) #0 {
entry:
  %args.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  %0 = load ptr, ptr %args.addr, align 8
  store ptr %0, ptr %a, align 8
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a, align 8
  %lock = getelementptr inbounds %struct.rwargs, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %lock, align 8
  %4 = load ptr, ptr %a, align 8
  %id = getelementptr inbounds %struct.rwargs, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %id, align 8
  call void @writelock(ptr noundef %3, i32 noundef %5)
  %6 = load i32, ptr %i, align 4
  store i32 %6, ptr @data, align 4
  %7 = load ptr, ptr %a, align 8
  %delay = getelementptr inbounds %struct.rwargs, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %delay, align 8
  %conv = trunc i64 %8 to i32
  %call = call i32 @"\01_usleep"(i32 noundef %conv)
  %9 = load ptr, ptr %a, align 8
  %lock1 = getelementptr inbounds %struct.rwargs, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %lock1, align 8
  call void @writeunlock(ptr noundef %10)
  %11 = load ptr, ptr %a, align 8
  %id2 = getelementptr inbounds %struct.rwargs, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %id2, align 8
  %13 = load i32, ptr %i, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %12, i32 noundef %13)
  %14 = load ptr, ptr %a, align 8
  %delay4 = getelementptr inbounds %struct.rwargs, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %delay4, align 8
  %conv5 = trunc i64 %15 to i32
  %call6 = call i32 @"\01_usleep"(i32 noundef %conv5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %a, align 8
  %id7 = getelementptr inbounds %struct.rwargs, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %id7, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %18)
  %19 = load ptr, ptr %a, align 8
  %lock9 = getelementptr inbounds %struct.rwargs, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %lock9, align 8
  %21 = load ptr, ptr %a, align 8
  %id10 = getelementptr inbounds %struct.rwargs, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %id10, align 8
  call void @writelock(ptr noundef %20, i32 noundef %22)
  store i32 0, ptr @data, align 4
  %23 = load ptr, ptr %a, align 8
  %lock11 = getelementptr inbounds %struct.rwargs, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %lock11, align 8
  call void @writeunlock(ptr noundef %24)
  %25 = load ptr, ptr %a, align 8
  %id12 = getelementptr inbounds %struct.rwargs, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %id12, align 8
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %26)
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reader(ptr noundef %args) #0 {
entry:
  %args.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %d = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  %0 = load ptr, ptr %args.addr, align 8
  store ptr %0, ptr %a, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %a, align 8
  %lock = getelementptr inbounds %struct.rwargs, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %lock, align 8
  %3 = load ptr, ptr %a, align 8
  %id = getelementptr inbounds %struct.rwargs, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %id, align 8
  call void @readlock(ptr noundef %2, i32 noundef %4)
  %5 = load i32, ptr @data, align 4
  store i32 %5, ptr %d, align 4
  %6 = load ptr, ptr %a, align 8
  %delay = getelementptr inbounds %struct.rwargs, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %delay, align 8
  %conv = trunc i64 %7 to i32
  %call = call i32 @"\01_usleep"(i32 noundef %conv)
  %8 = load ptr, ptr %a, align 8
  %lock1 = getelementptr inbounds %struct.rwargs, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %lock1, align 8
  call void @readunlock(ptr noundef %9)
  %10 = load ptr, ptr %a, align 8
  %id2 = getelementptr inbounds %struct.rwargs, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %id2, align 8
  %12 = load i32, ptr %d, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %a, align 8
  %delay4 = getelementptr inbounds %struct.rwargs, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %delay4, align 8
  %conv5 = trunc i64 %14 to i32
  %call6 = call i32 @"\01_usleep"(i32 noundef %conv5)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, ptr %d, align 4
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %a, align 8
  %id8 = getelementptr inbounds %struct.rwargs, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %id8, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %17)
  ret ptr null
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare void @free(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @readlock(ptr noundef %lock, i32 noundef %d) #0 {
entry:
  %lock.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  store i32 %d, ptr %d.addr, align 4
  %0 = load ptr, ptr %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %mut, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef %1)
  %2 = load ptr, ptr %lock.addr, align 8
  %writers = getelementptr inbounds %struct.rwl, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %writers, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8
  %waiting = getelementptr inbounds %struct.rwl, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %waiting, align 8
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %6 = load i32, ptr %d.addr, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %6)
  %7 = load ptr, ptr %lock.addr, align 8
  %readOK = getelementptr inbounds %struct.rwl, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %readOK, align 8
  %9 = load ptr, ptr %lock.addr, align 8
  %mut3 = getelementptr inbounds %struct.rwl, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %mut3, align 8
  %call4 = call i32 @"\01_pthread_cond_wait"(ptr noundef %8, ptr noundef %10)
  %11 = load i32, ptr %d.addr, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %11)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load ptr, ptr %lock.addr, align 8
  %writers6 = getelementptr inbounds %struct.rwl, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %writers6, align 8
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %14 = load ptr, ptr %lock.addr, align 8
  %readers = getelementptr inbounds %struct.rwl, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %readers, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %readers, align 4
  %16 = load ptr, ptr %lock.addr, align 8
  %mut8 = getelementptr inbounds %struct.rwl, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %mut8, align 8
  %call9 = call i32 @pthread_mutex_unlock(ptr noundef %17)
  ret void
}

declare i32 @"\01_usleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @readunlock(ptr noundef %lock) #0 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  %0 = load ptr, ptr %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %mut, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef %1)
  %2 = load ptr, ptr %lock.addr, align 8
  %readers = getelementptr inbounds %struct.rwl, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %readers, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %readers, align 4
  %4 = load ptr, ptr %lock.addr, align 8
  %writeOK = getelementptr inbounds %struct.rwl, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %writeOK, align 8
  %call1 = call i32 @pthread_cond_signal(ptr noundef %5)
  %6 = load ptr, ptr %lock.addr, align 8
  %mut2 = getelementptr inbounds %struct.rwl, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %mut2, align 8
  %call3 = call i32 @pthread_mutex_unlock(ptr noundef %7)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @writelock(ptr noundef %lock, i32 noundef %d) #0 {
entry:
  %lock.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  store i32 %d, ptr %d.addr, align 4
  %0 = load ptr, ptr %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %mut, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef %1)
  %2 = load ptr, ptr %lock.addr, align 8
  %waiting = getelementptr inbounds %struct.rwl, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %waiting, align 8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %waiting, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %lock.addr, align 8
  %readers = getelementptr inbounds %struct.rwl, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %readers, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %6 = load ptr, ptr %lock.addr, align 8
  %writers = getelementptr inbounds %struct.rwl, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %writers, align 8
  %tobool1 = icmp ne i32 %7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %tobool1, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load i32, ptr %d.addr, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %9)
  %10 = load ptr, ptr %lock.addr, align 8
  %writeOK = getelementptr inbounds %struct.rwl, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %writeOK, align 8
  %12 = load ptr, ptr %lock.addr, align 8
  %mut3 = getelementptr inbounds %struct.rwl, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %mut3, align 8
  %call4 = call i32 @"\01_pthread_cond_wait"(ptr noundef %11, ptr noundef %13)
  %14 = load i32, ptr %d.addr, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %14)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %lor.end
  %15 = load ptr, ptr %lock.addr, align 8
  %waiting6 = getelementptr inbounds %struct.rwl, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %waiting6, align 8
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %waiting6, align 8
  %17 = load ptr, ptr %lock.addr, align 8
  %writers7 = getelementptr inbounds %struct.rwl, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %writers7, align 8
  %inc8 = add nsw i32 %18, 1
  store i32 %inc8, ptr %writers7, align 8
  %19 = load ptr, ptr %lock.addr, align 8
  %mut9 = getelementptr inbounds %struct.rwl, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %mut9, align 8
  %call10 = call i32 @pthread_mutex_unlock(ptr noundef %20)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @writeunlock(ptr noundef %lock) #0 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  %0 = load ptr, ptr %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %mut, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef %1)
  %2 = load ptr, ptr %lock.addr, align 8
  %writers = getelementptr inbounds %struct.rwl, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %writers, align 8
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %writers, align 8
  %4 = load ptr, ptr %lock.addr, align 8
  %readOK = getelementptr inbounds %struct.rwl, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %readOK, align 8
  %call1 = call i32 @pthread_cond_broadcast(ptr noundef %5)
  %6 = load ptr, ptr %lock.addr, align 8
  %mut2 = getelementptr inbounds %struct.rwl, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %mut2, align 8
  %call3 = call i32 @pthread_mutex_unlock(ptr noundef %7)
  ret void
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_cond_init"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @pthread_cond_signal(ptr noundef) #1

declare i32 @pthread_cond_broadcast(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @deletelock(ptr noundef %lock) #0 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  %0 = load ptr, ptr %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %mut, align 8
  %call = call i32 @pthread_mutex_destroy(ptr noundef %1)
  %2 = load ptr, ptr %lock.addr, align 8
  %readOK = getelementptr inbounds %struct.rwl, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %readOK, align 8
  %call1 = call i32 @pthread_cond_destroy(ptr noundef %3)
  %4 = load ptr, ptr %lock.addr, align 8
  %writeOK = getelementptr inbounds %struct.rwl, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %writeOK, align 8
  %call2 = call i32 @pthread_cond_destroy(ptr noundef %5)
  %6 = load ptr, ptr %lock.addr, align 8
  call void @free(ptr noundef %6)
  ret void
}

declare i32 @pthread_mutex_destroy(ptr noundef) #1

declare i32 @pthread_cond_destroy(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
