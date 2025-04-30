; ModuleID = 'code/173-20523rw.c'
source_filename = "code/173-20523rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwargs = type { %struct.rwl*, i32, i64 }
%struct.rwl = type { %union.pthread_mutex_t*, i32, i32, i32, %union.pthread_cond_t*, %union.pthread_cond_t* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  %r3 = alloca i64, align 8
  %r4 = alloca i64, align 8
  %w1 = alloca i64, align 8
  %a1 = alloca %struct.rwargs*, align 8
  %a2 = alloca %struct.rwargs*, align 8
  %a3 = alloca %struct.rwargs*, align 8
  %a4 = alloca %struct.rwargs*, align 8
  %a5 = alloca %struct.rwargs*, align 8
  %lock = alloca %struct.rwl*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct.rwl* @initlock()
  store %struct.rwl* %call, %struct.rwl** %lock, align 8
  %0 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %call1 = call %struct.rwargs* @newRWargs(%struct.rwl* %0, i32 1, i64 150000)
  store %struct.rwargs* %call1, %struct.rwargs** %a1, align 8
  %1 = load %struct.rwargs*, %struct.rwargs** %a1, align 8
  %2 = bitcast %struct.rwargs* %1 to i8*
  %call2 = call i32 @pthread_create(i64* %w1, %union.pthread_attr_t* null, i8* (i8*)* @writer, i8* %2) #3
  %3 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %call3 = call %struct.rwargs* @newRWargs(%struct.rwl* %3, i32 1, i64 50000)
  store %struct.rwargs* %call3, %struct.rwargs** %a2, align 8
  %4 = load %struct.rwargs*, %struct.rwargs** %a2, align 8
  %5 = bitcast %struct.rwargs* %4 to i8*
  %call4 = call i32 @pthread_create(i64* %r1, %union.pthread_attr_t* null, i8* (i8*)* @reader, i8* %5) #3
  %6 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %call5 = call %struct.rwargs* @newRWargs(%struct.rwl* %6, i32 2, i64 100000)
  store %struct.rwargs* %call5, %struct.rwargs** %a3, align 8
  %7 = load %struct.rwargs*, %struct.rwargs** %a3, align 8
  %8 = bitcast %struct.rwargs* %7 to i8*
  %call6 = call i32 @pthread_create(i64* %r2, %union.pthread_attr_t* null, i8* (i8*)* @reader, i8* %8) #3
  %9 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %call7 = call %struct.rwargs* @newRWargs(%struct.rwl* %9, i32 3, i64 400000)
  store %struct.rwargs* %call7, %struct.rwargs** %a4, align 8
  %10 = load %struct.rwargs*, %struct.rwargs** %a4, align 8
  %11 = bitcast %struct.rwargs* %10 to i8*
  %call8 = call i32 @pthread_create(i64* %r3, %union.pthread_attr_t* null, i8* (i8*)* @reader, i8* %11) #3
  %12 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %call9 = call %struct.rwargs* @newRWargs(%struct.rwl* %12, i32 4, i64 800000)
  store %struct.rwargs* %call9, %struct.rwargs** %a5, align 8
  %13 = load %struct.rwargs*, %struct.rwargs** %a5, align 8
  %14 = bitcast %struct.rwargs* %13 to i8*
  %call10 = call i32 @pthread_create(i64* %r4, %union.pthread_attr_t* null, i8* (i8*)* @reader, i8* %14) #3
  %15 = load i64, i64* %w1, align 8
  %call11 = call i32 @pthread_join(i64 %15, i8** null)
  %16 = load i64, i64* %r1, align 8
  %call12 = call i32 @pthread_join(i64 %16, i8** null)
  %17 = load i64, i64* %r2, align 8
  %call13 = call i32 @pthread_join(i64 %17, i8** null)
  %18 = load i64, i64* %r3, align 8
  %call14 = call i32 @pthread_join(i64 %18, i8** null)
  %19 = load i64, i64* %r4, align 8
  %call15 = call i32 @pthread_join(i64 %19, i8** null)
  %20 = load %struct.rwargs*, %struct.rwargs** %a1, align 8
  %21 = bitcast %struct.rwargs* %20 to i8*
  call void @free(i8* %21) #3
  %22 = load %struct.rwargs*, %struct.rwargs** %a2, align 8
  %23 = bitcast %struct.rwargs* %22 to i8*
  call void @free(i8* %23) #3
  %24 = load %struct.rwargs*, %struct.rwargs** %a3, align 8
  %25 = bitcast %struct.rwargs* %24 to i8*
  call void @free(i8* %25) #3
  %26 = load %struct.rwargs*, %struct.rwargs** %a4, align 8
  %27 = bitcast %struct.rwargs* %26 to i8*
  call void @free(i8* %27) #3
  %28 = load %struct.rwargs*, %struct.rwargs** %a5, align 8
  %29 = bitcast %struct.rwargs* %28 to i8*
  call void @free(i8* %29) #3
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rwl* @initlock() #0 {
entry:
  %retval = alloca %struct.rwl*, align 8
  %lock = alloca %struct.rwl*, align 8
  %call = call noalias align 16 i8* @malloc(i64 40) #3
  %0 = bitcast i8* %call to %struct.rwl*
  store %struct.rwl* %0, %struct.rwl** %lock, align 8
  %1 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %cmp = icmp eq %struct.rwl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rwl* null, %struct.rwl** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call noalias align 16 i8* @malloc(i64 40) #3
  %2 = bitcast i8* %call1 to %union.pthread_mutex_t*
  %3 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %mut = getelementptr inbounds %struct.rwl, %struct.rwl* %3, i32 0, i32 0
  store %union.pthread_mutex_t* %2, %union.pthread_mutex_t** %mut, align 8
  %4 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %mut2 = getelementptr inbounds %struct.rwl, %struct.rwl* %4, i32 0, i32 0
  %5 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut2, align 8
  %cmp3 = icmp eq %union.pthread_mutex_t* %5, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %7 = bitcast %struct.rwl* %6 to i8*
  call void @free(i8* %7) #3
  store %struct.rwl* null, %struct.rwl** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call noalias align 16 i8* @malloc(i64 48) #3
  %8 = bitcast i8* %call6 to %union.pthread_cond_t*
  %9 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %writeOK = getelementptr inbounds %struct.rwl, %struct.rwl* %9, i32 0, i32 4
  store %union.pthread_cond_t* %8, %union.pthread_cond_t** %writeOK, align 8
  %10 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %writeOK7 = getelementptr inbounds %struct.rwl, %struct.rwl* %10, i32 0, i32 4
  %11 = load %union.pthread_cond_t*, %union.pthread_cond_t** %writeOK7, align 8
  %cmp8 = icmp eq %union.pthread_cond_t* %11, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  %12 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %mut10 = getelementptr inbounds %struct.rwl, %struct.rwl* %12, i32 0, i32 0
  %13 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut10, align 8
  %14 = bitcast %union.pthread_mutex_t* %13 to i8*
  call void @free(i8* %14) #3
  %15 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %16 = bitcast %struct.rwl* %15 to i8*
  call void @free(i8* %16) #3
  store %struct.rwl* null, %struct.rwl** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end5
  %call12 = call noalias align 16 i8* @malloc(i64 48) #3
  %17 = bitcast i8* %call12 to %union.pthread_cond_t*
  %18 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %readOK = getelementptr inbounds %struct.rwl, %struct.rwl* %18, i32 0, i32 5
  store %union.pthread_cond_t* %17, %union.pthread_cond_t** %readOK, align 8
  %19 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %writeOK13 = getelementptr inbounds %struct.rwl, %struct.rwl* %19, i32 0, i32 4
  %20 = load %union.pthread_cond_t*, %union.pthread_cond_t** %writeOK13, align 8
  %cmp14 = icmp eq %union.pthread_cond_t* %20, null
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  %21 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %mut16 = getelementptr inbounds %struct.rwl, %struct.rwl* %21, i32 0, i32 0
  %22 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut16, align 8
  %23 = bitcast %union.pthread_mutex_t* %22 to i8*
  call void @free(i8* %23) #3
  %24 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %writeOK17 = getelementptr inbounds %struct.rwl, %struct.rwl* %24, i32 0, i32 4
  %25 = load %union.pthread_cond_t*, %union.pthread_cond_t** %writeOK17, align 8
  %26 = bitcast %union.pthread_cond_t* %25 to i8*
  call void @free(i8* %26) #3
  %27 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %28 = bitcast %struct.rwl* %27 to i8*
  call void @free(i8* %28) #3
  store %struct.rwl* null, %struct.rwl** %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end11
  %29 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %mut19 = getelementptr inbounds %struct.rwl, %struct.rwl* %29, i32 0, i32 0
  %30 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut19, align 8
  %call20 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %30, %union.pthread_mutexattr_t* null) #3
  %31 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %writeOK21 = getelementptr inbounds %struct.rwl, %struct.rwl* %31, i32 0, i32 4
  %32 = load %union.pthread_cond_t*, %union.pthread_cond_t** %writeOK21, align 8
  %call22 = call i32 @pthread_cond_init(%union.pthread_cond_t* %32, %union.pthread_condattr_t* null) #3
  %33 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %readOK23 = getelementptr inbounds %struct.rwl, %struct.rwl* %33, i32 0, i32 5
  %34 = load %union.pthread_cond_t*, %union.pthread_cond_t** %readOK23, align 8
  %call24 = call i32 @pthread_cond_init(%union.pthread_cond_t* %34, %union.pthread_condattr_t* null) #3
  %35 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %readers = getelementptr inbounds %struct.rwl, %struct.rwl* %35, i32 0, i32 2
  store i32 0, i32* %readers, align 4
  %36 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %writers = getelementptr inbounds %struct.rwl, %struct.rwl* %36, i32 0, i32 1
  store i32 0, i32* %writers, align 8
  %37 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %waiting = getelementptr inbounds %struct.rwl, %struct.rwl* %37, i32 0, i32 3
  store i32 0, i32* %waiting, align 8
  %38 = load %struct.rwl*, %struct.rwl** %lock, align 8
  store %struct.rwl* %38, %struct.rwl** %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then15, %if.then9, %if.then4, %if.then
  %39 = load %struct.rwl*, %struct.rwl** %retval, align 8
  ret %struct.rwl* %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rwargs* @newRWargs(%struct.rwl* %l, i32 %i, i64 %d) #0 {
entry:
  %retval = alloca %struct.rwargs*, align 8
  %l.addr = alloca %struct.rwl*, align 8
  %i.addr = alloca i32, align 4
  %d.addr = alloca i64, align 8
  %args = alloca %struct.rwargs*, align 8
  store %struct.rwl* %l, %struct.rwl** %l.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i64 %d, i64* %d.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.rwargs*
  store %struct.rwargs* %0, %struct.rwargs** %args, align 8
  %1 = load %struct.rwargs*, %struct.rwargs** %args, align 8
  %cmp = icmp eq %struct.rwargs* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rwargs* null, %struct.rwargs** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rwl*, %struct.rwl** %l.addr, align 8
  %3 = load %struct.rwargs*, %struct.rwargs** %args, align 8
  %lock = getelementptr inbounds %struct.rwargs, %struct.rwargs* %3, i32 0, i32 0
  store %struct.rwl* %2, %struct.rwl** %lock, align 8
  %4 = load i32, i32* %i.addr, align 4
  %5 = load %struct.rwargs*, %struct.rwargs** %args, align 8
  %id = getelementptr inbounds %struct.rwargs, %struct.rwargs* %5, i32 0, i32 1
  store i32 %4, i32* %id, align 8
  %6 = load i64, i64* %d.addr, align 8
  %7 = load %struct.rwargs*, %struct.rwargs** %args, align 8
  %delay = getelementptr inbounds %struct.rwargs, %struct.rwargs* %7, i32 0, i32 2
  store i64 %6, i64* %delay, align 8
  %8 = load %struct.rwargs*, %struct.rwargs** %args, align 8
  store %struct.rwargs* %8, %struct.rwargs** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.rwargs*, %struct.rwargs** %retval, align 8
  ret %struct.rwargs* %9
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @writer(i8* %args) #0 {
entry:
  %args.addr = alloca i8*, align 8
  %a = alloca %struct.rwargs*, align 8
  %i = alloca i32, align 4
  store i8* %args, i8** %args.addr, align 8
  %0 = load i8*, i8** %args.addr, align 8
  %1 = bitcast i8* %0 to %struct.rwargs*
  store %struct.rwargs* %1, %struct.rwargs** %a, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %lock = getelementptr inbounds %struct.rwargs, %struct.rwargs* %3, i32 0, i32 0
  %4 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %5 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %id = getelementptr inbounds %struct.rwargs, %struct.rwargs* %5, i32 0, i32 1
  %6 = load i32, i32* %id, align 8
  call void @writelock(%struct.rwl* %4, i32 %6)
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* @data, align 4
  %8 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %delay = getelementptr inbounds %struct.rwargs, %struct.rwargs* %8, i32 0, i32 2
  %9 = load i64, i64* %delay, align 8
  %conv = trunc i64 %9 to i32
  %call = call i32 @usleep(i32 %conv)
  %10 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %lock1 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %10, i32 0, i32 0
  %11 = load %struct.rwl*, %struct.rwl** %lock1, align 8
  call void @writeunlock(%struct.rwl* %11)
  %12 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %id2 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %12, i32 0, i32 1
  %13 = load i32, i32* %id2, align 8
  %14 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %14)
  %15 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %delay4 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %15, i32 0, i32 2
  %16 = load i64, i64* %delay4, align 8
  %conv5 = trunc i64 %16 to i32
  %call6 = call i32 @usleep(i32 %conv5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %18 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %id7 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %18, i32 0, i32 1
  %19 = load i32, i32* %id7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %20 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %lock9 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %20, i32 0, i32 0
  %21 = load %struct.rwl*, %struct.rwl** %lock9, align 8
  %22 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %id10 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %22, i32 0, i32 1
  %23 = load i32, i32* %id10, align 8
  call void @writelock(%struct.rwl* %21, i32 %23)
  store i32 0, i32* @data, align 4
  %24 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %lock11 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %24, i32 0, i32 0
  %25 = load %struct.rwl*, %struct.rwl** %lock11, align 8
  call void @writeunlock(%struct.rwl* %25)
  %26 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %id12 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %26, i32 0, i32 1
  %27 = load i32, i32* %id12, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @reader(i8* %args) #0 {
entry:
  %args.addr = alloca i8*, align 8
  %a = alloca %struct.rwargs*, align 8
  %d = alloca i32, align 4
  store i8* %args, i8** %args.addr, align 8
  %0 = load i8*, i8** %args.addr, align 8
  %1 = bitcast i8* %0 to %struct.rwargs*
  store %struct.rwargs* %1, %struct.rwargs** %a, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %lock = getelementptr inbounds %struct.rwargs, %struct.rwargs* %2, i32 0, i32 0
  %3 = load %struct.rwl*, %struct.rwl** %lock, align 8
  %4 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %id = getelementptr inbounds %struct.rwargs, %struct.rwargs* %4, i32 0, i32 1
  %5 = load i32, i32* %id, align 8
  call void @readlock(%struct.rwl* %3, i32 %5)
  %6 = load i32, i32* @data, align 4
  store i32 %6, i32* %d, align 4
  %7 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %delay = getelementptr inbounds %struct.rwargs, %struct.rwargs* %7, i32 0, i32 2
  %8 = load i64, i64* %delay, align 8
  %conv = trunc i64 %8 to i32
  %call = call i32 @usleep(i32 %conv)
  %9 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %lock1 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %9, i32 0, i32 0
  %10 = load %struct.rwl*, %struct.rwl** %lock1, align 8
  call void @readunlock(%struct.rwl* %10)
  %11 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %id2 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %11, i32 0, i32 1
  %12 = load i32, i32* %id2, align 8
  %13 = load i32, i32* %d, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %14 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %delay4 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %14, i32 0, i32 2
  %15 = load i64, i64* %delay4, align 8
  %conv5 = trunc i64 %15 to i32
  %call6 = call i32 @usleep(i32 %conv5)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load i32, i32* %d, align 4
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %17 = load %struct.rwargs*, %struct.rwargs** %a, align 8
  %id8 = getelementptr inbounds %struct.rwargs, %struct.rwargs* %17, i32 0, i32 1
  %18 = load i32, i32* %id8, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  ret i8* null
}

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readlock(%struct.rwl* %lock, i32 %d) #0 {
entry:
  %lock.addr = alloca %struct.rwl*, align 8
  %d.addr = alloca i32, align 4
  store %struct.rwl* %lock, %struct.rwl** %lock.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  %0 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, %struct.rwl* %0, i32 0, i32 0
  %1 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %1) #3
  %2 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %writers = getelementptr inbounds %struct.rwl, %struct.rwl* %2, i32 0, i32 1
  %3 = load i32, i32* %writers, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %waiting = getelementptr inbounds %struct.rwl, %struct.rwl* %4, i32 0, i32 3
  %5 = load i32, i32* %waiting, align 8
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %6 = load i32, i32* %d.addr, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %6)
  %7 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %readOK = getelementptr inbounds %struct.rwl, %struct.rwl* %7, i32 0, i32 5
  %8 = load %union.pthread_cond_t*, %union.pthread_cond_t** %readOK, align 8
  %9 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut3 = getelementptr inbounds %struct.rwl, %struct.rwl* %9, i32 0, i32 0
  %10 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut3, align 8
  %call4 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %8, %union.pthread_mutex_t* %10)
  %11 = load i32, i32* %d.addr, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %11)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %writers6 = getelementptr inbounds %struct.rwl, %struct.rwl* %12, i32 0, i32 1
  %13 = load i32, i32* %writers6, align 8
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %14 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %readers = getelementptr inbounds %struct.rwl, %struct.rwl* %14, i32 0, i32 2
  %15 = load i32, i32* %readers, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %readers, align 4
  %16 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut8 = getelementptr inbounds %struct.rwl, %struct.rwl* %16, i32 0, i32 0
  %17 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut8, align 8
  %call9 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %17) #3
  ret void
}

declare dso_local i32 @usleep(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readunlock(%struct.rwl* %lock) #0 {
entry:
  %lock.addr = alloca %struct.rwl*, align 8
  store %struct.rwl* %lock, %struct.rwl** %lock.addr, align 8
  %0 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, %struct.rwl* %0, i32 0, i32 0
  %1 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %1) #3
  %2 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %readers = getelementptr inbounds %struct.rwl, %struct.rwl* %2, i32 0, i32 2
  %3 = load i32, i32* %readers, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %readers, align 4
  %4 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %writeOK = getelementptr inbounds %struct.rwl, %struct.rwl* %4, i32 0, i32 4
  %5 = load %union.pthread_cond_t*, %union.pthread_cond_t** %writeOK, align 8
  %call1 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %5) #3
  %6 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut2 = getelementptr inbounds %struct.rwl, %struct.rwl* %6, i32 0, i32 0
  %7 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut2, align 8
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %7) #3
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writelock(%struct.rwl* %lock, i32 %d) #0 {
entry:
  %lock.addr = alloca %struct.rwl*, align 8
  %d.addr = alloca i32, align 4
  store %struct.rwl* %lock, %struct.rwl** %lock.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  %0 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, %struct.rwl* %0, i32 0, i32 0
  %1 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %1) #3
  %2 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %waiting = getelementptr inbounds %struct.rwl, %struct.rwl* %2, i32 0, i32 3
  %3 = load i32, i32* %waiting, align 8
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %waiting, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %readers = getelementptr inbounds %struct.rwl, %struct.rwl* %4, i32 0, i32 2
  %5 = load i32, i32* %readers, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %6 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %writers = getelementptr inbounds %struct.rwl, %struct.rwl* %6, i32 0, i32 1
  %7 = load i32, i32* %writers, align 8
  %tobool1 = icmp ne i32 %7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %tobool1, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load i32, i32* %d.addr, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %9)
  %10 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %writeOK = getelementptr inbounds %struct.rwl, %struct.rwl* %10, i32 0, i32 4
  %11 = load %union.pthread_cond_t*, %union.pthread_cond_t** %writeOK, align 8
  %12 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut3 = getelementptr inbounds %struct.rwl, %struct.rwl* %12, i32 0, i32 0
  %13 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut3, align 8
  %call4 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %11, %union.pthread_mutex_t* %13)
  %14 = load i32, i32* %d.addr, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %14)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %lor.end
  %15 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %waiting6 = getelementptr inbounds %struct.rwl, %struct.rwl* %15, i32 0, i32 3
  %16 = load i32, i32* %waiting6, align 8
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %waiting6, align 8
  %17 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %writers7 = getelementptr inbounds %struct.rwl, %struct.rwl* %17, i32 0, i32 1
  %18 = load i32, i32* %writers7, align 8
  %inc8 = add nsw i32 %18, 1
  store i32 %inc8, i32* %writers7, align 8
  %19 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut9 = getelementptr inbounds %struct.rwl, %struct.rwl* %19, i32 0, i32 0
  %20 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut9, align 8
  %call10 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %20) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeunlock(%struct.rwl* %lock) #0 {
entry:
  %lock.addr = alloca %struct.rwl*, align 8
  store %struct.rwl* %lock, %struct.rwl** %lock.addr, align 8
  %0 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, %struct.rwl* %0, i32 0, i32 0
  %1 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %1) #3
  %2 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %writers = getelementptr inbounds %struct.rwl, %struct.rwl* %2, i32 0, i32 1
  %3 = load i32, i32* %writers, align 8
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %writers, align 8
  %4 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %readOK = getelementptr inbounds %struct.rwl, %struct.rwl* %4, i32 0, i32 5
  %5 = load %union.pthread_cond_t*, %union.pthread_cond_t** %readOK, align 8
  %call1 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %5) #3
  %6 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut2 = getelementptr inbounds %struct.rwl, %struct.rwl* %6, i32 0, i32 0
  %7 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut2, align 8
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %7) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_signal(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deletelock(%struct.rwl* %lock) #0 {
entry:
  %lock.addr = alloca %struct.rwl*, align 8
  store %struct.rwl* %lock, %struct.rwl** %lock.addr, align 8
  %0 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %mut = getelementptr inbounds %struct.rwl, %struct.rwl* %0, i32 0, i32 0
  %1 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %mut, align 8
  %call = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %1) #3
  %2 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %readOK = getelementptr inbounds %struct.rwl, %struct.rwl* %2, i32 0, i32 5
  %3 = load %union.pthread_cond_t*, %union.pthread_cond_t** %readOK, align 8
  %call1 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %3) #3
  %4 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %writeOK = getelementptr inbounds %struct.rwl, %struct.rwl* %4, i32 0, i32 4
  %5 = load %union.pthread_cond_t*, %union.pthread_cond_t** %writeOK, align 8
  %call2 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %5) #3
  %6 = load %struct.rwl*, %struct.rwl** %lock.addr, align 8
  %7 = bitcast %struct.rwl* %6 to i8*
  call void @free(i8* %7) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_destroy(%union.pthread_cond_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
