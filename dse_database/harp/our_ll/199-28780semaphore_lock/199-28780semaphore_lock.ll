; ModuleID = 'code/199-28780semaphore_lock.c'
source_filename = "code/199-28780semaphore_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sem_t = type { i64, [24 x i8] }
%struct.SWorker = type { i64, [10 x i8], i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [37 x i8] c"[Work_%s] - is waiting for Resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"[Work_%s] - is keeping resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[Work_%s] - Release Resource\0A\00", align 1
@gResource = dso_local global i32 0, align 4
@gResSema = internal global %union.sem_t zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"[%s_%s] - Begin transaction, target = %d and work with in %d sec\0A\00", align 1
@__FUNCTION__.Work = private unnamed_addr constant [5 x i8] c"Work\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"[%s_%s] - End transaction, Resource = %d and target = %d \0A\00", align 1
@__const.ExampleWithSema.workerA = private unnamed_addr constant %struct.SWorker { i64 0, [10 x i8] c"A\00\00\00\00\00\00\00\00\00", i32 10, i32 10 }, align 8
@__const.ExampleWithSema.workerB = private unnamed_addr constant %struct.SWorker { i64 0, [10 x i8] c"B\00\00\00\00\00\00\00\00\00", i32 4, i32 11 }, align 8
@__const.ExampleWithSema.workerC = private unnamed_addr constant %struct.SWorker { i64 0, [10 x i8] c"C\00\00\00\00\00\00\00\00\00", i32 2, i32 11 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @semaCreate(%union.sem_t* %sem, i32 %initialCount) #0 {
entry:
  %sem.addr = alloca %union.sem_t*, align 8
  %initialCount.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store %union.sem_t* %sem, %union.sem_t** %sem.addr, align 8
  store i32 %initialCount, i32* %initialCount.addr, align 4
  %0 = load %union.sem_t*, %union.sem_t** %sem.addr, align 8
  %1 = load i32, i32* %initialCount.addr, align 4
  %call = call i32 @sem_init(%union.sem_t* %0, i32 0, i32 %1) #5
  store i32 %call, i32* %rc, align 4
  %2 = load i32, i32* %rc, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local i32 @sem_init(%union.sem_t*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @semaDestroy(%union.sem_t* %sem) #0 {
entry:
  %sem.addr = alloca %union.sem_t*, align 8
  store %union.sem_t* %sem, %union.sem_t** %sem.addr, align 8
  %0 = load %union.sem_t*, %union.sem_t** %sem.addr, align 8
  %call = call i32 @sem_destroy(%union.sem_t* %0) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sem_destroy(%union.sem_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @semaWait(%union.sem_t* %sem, i8* %name) #0 {
entry:
  %sem.addr = alloca %union.sem_t*, align 8
  %name.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  store %union.sem_t* %sem, %union.sem_t** %sem.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %0)
  %1 = load %union.sem_t*, %union.sem_t** %sem.addr, align 8
  %call1 = call i32 @sem_wait(%union.sem_t* %1)
  store i32 %call1, i32* %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 -1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call2 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 4, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %4 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %land.end
  %5 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %6 = load i32, i32* %rc, align 4
  ret i32 %6
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sem_wait(%union.sem_t*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @semaRelease(%union.sem_t* %sem, i8* %name) #0 {
entry:
  %sem.addr = alloca %union.sem_t*, align 8
  %name.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  store %union.sem_t* %sem, %union.sem_t** %sem.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %union.sem_t*, %union.sem_t** %sem.addr, align 8
  %call = call i32 @sem_post(%union.sem_t* %0) #5
  store i32 %call, i32* %rc, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %1)
  %2 = load i32, i32* %rc, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local i32 @sem_post(%union.sem_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Work(%struct.SWorker* %person) #0 {
entry:
  %person.addr = alloca %struct.SWorker*, align 8
  store %struct.SWorker* %person, %struct.SWorker** %person.addr, align 8
  %0 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %name = getelementptr inbounds %struct.SWorker, %struct.SWorker* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0
  %call = call i32 @semaWait(%union.sem_t* @gResSema, i8* %arraydecay)
  %1 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %name1 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %1, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %name1, i64 0, i64 0
  %2 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %target = getelementptr inbounds %struct.SWorker, %struct.SWorker* %2, i32 0, i32 3
  %3 = load i32, i32* %target, align 8
  %4 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %time = getelementptr inbounds %struct.SWorker, %struct.SWorker* %4, i32 0, i32 2
  %5 = load i32, i32* %time, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__FUNCTION__.Work, i64 0, i64 0), i8* %arraydecay2, i32 %3, i32 %5)
  %6 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %time4 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %6, i32 0, i32 2
  %7 = load i32, i32* %time4, align 4
  %call5 = call i32 @sleep(i32 %7)
  %8 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %target6 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %8, i32 0, i32 3
  %9 = load i32, i32* %target6, align 8
  store i32 %9, i32* @gResource, align 4
  %10 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %name7 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %10, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [10 x i8], [10 x i8]* %name7, i64 0, i64 0
  %11 = load i32, i32* @gResource, align 4
  %12 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %target9 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %12, i32 0, i32 3
  %13 = load i32, i32* %target9, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__FUNCTION__.Work, i64 0, i64 0), i8* %arraydecay8, i32 %11, i32 %13)
  %14 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %name11 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %14, i32 0, i32 1
  %arraydecay12 = getelementptr inbounds [10 x i8], [10 x i8]* %name11, i64 0, i64 0
  %call13 = call i32 @semaRelease(%union.sem_t* @gResSema, i8* %arraydecay12)
  ret void
}

declare dso_local i32 @sleep(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DoWork(i8* %param) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %worker = alloca %struct.SWorker*, align 8
  store i8* %param, i8** %param.addr, align 8
  %0 = load i8*, i8** %param.addr, align 8
  %1 = bitcast i8* %0 to %struct.SWorker*
  store %struct.SWorker* %1, %struct.SWorker** %worker, align 8
  %2 = load %struct.SWorker*, %struct.SWorker** %worker, align 8
  call void @Work(%struct.SWorker* %2)
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DoAWork(%struct.SWorker* %person) #0 {
entry:
  %person.addr = alloca %struct.SWorker*, align 8
  %var_thread = alloca i64, align 8
  store %struct.SWorker* %person, %struct.SWorker** %person.addr, align 8
  %0 = load %struct.SWorker*, %struct.SWorker** %person.addr, align 8
  %1 = bitcast %struct.SWorker* %0 to i8*
  %call = call i32 @pthread_create(i64* %var_thread, %union.pthread_attr_t* null, i8* (i8*)* @DoWork, i8* %1) #5
  %2 = load i64, i64* %var_thread, align 8
  ret i64 %2
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExampleWithSema() #0 {
entry:
  %workerA = alloca %struct.SWorker, align 8
  %workerB = alloca %struct.SWorker, align 8
  %workerC = alloca %struct.SWorker, align 8
  %call = call i32 @semaCreate(%union.sem_t* @gResSema, i32 1)
  %0 = bitcast %struct.SWorker* %workerA to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.SWorker* @__const.ExampleWithSema.workerA to i8*), i64 32, i1 false)
  %call1 = call i64 @DoAWork(%struct.SWorker* %workerA)
  %threadID = getelementptr inbounds %struct.SWorker, %struct.SWorker* %workerA, i32 0, i32 0
  store i64 %call1, i64* %threadID, align 8
  %1 = bitcast %struct.SWorker* %workerB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.SWorker* @__const.ExampleWithSema.workerB to i8*), i64 32, i1 false)
  %call2 = call i64 @DoAWork(%struct.SWorker* %workerB)
  %threadID3 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %workerB, i32 0, i32 0
  store i64 %call2, i64* %threadID3, align 8
  %2 = bitcast %struct.SWorker* %workerC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.SWorker* @__const.ExampleWithSema.workerC to i8*), i64 32, i1 false)
  %call4 = call i64 @DoAWork(%struct.SWorker* %workerC)
  %threadID5 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %workerC, i32 0, i32 0
  store i64 %call4, i64* %threadID5, align 8
  %threadID6 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %workerA, i32 0, i32 0
  %3 = load i64, i64* %threadID6, align 8
  %call7 = call i32 @pthread_join(i64 %3, i8** null)
  %threadID8 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %workerB, i32 0, i32 0
  %4 = load i64, i64* %threadID8, align 8
  %call9 = call i32 @pthread_join(i64 %4, i8** null)
  %threadID10 = getelementptr inbounds %struct.SWorker, %struct.SWorker* %workerC, i32 0, i32 0
  %5 = load i64, i64* %threadID10, align 8
  %call11 = call i32 @pthread_join(i64 %5, i8** null)
  call void @semaDestroy(%union.sem_t* @gResSema)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @ExampleWithSema()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
