; ModuleID = 'code/218-6095mutex.c'
source_filename = "code/218-6095mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@semaforo = dso_local global %union.pthread_mutex_t* null, align 8
@enteroCompartido = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"Hola soy la hebra %d y el ultimo numero que deje fue %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Hebra padre ha terminado de esperar por sus hijas\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"- Finalmente enteroCompartido= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @procedimiento(i8* %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %tid = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  %0 = load i8*, i8** %in.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  store i32 %1, i32* %tid, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** @semaforo, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %3) #3
  %4 = load i32*, i32** @enteroCompartido, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %cmp1 = icmp slt i32 %add, 10000
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %tid, align 4
  %8 = load i32*, i32** @enteroCompartido, align 8
  %9 = load i32, i32* %8, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** @semaforo, align 8
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %10) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %11, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %retval, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %hebra1 = alloca i64*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 4) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** @enteroCompartido, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 40) #3
  %1 = bitcast i8* %call1 to %union.pthread_mutex_t*
  store %union.pthread_mutex_t* %1, %union.pthread_mutex_t** @semaforo, align 8
  %2 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** @semaforo, align 8
  %call2 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %2, %union.pthread_mutexattr_t* null) #3
  store i32 4, i32* %j, align 4
  %call3 = call noalias align 16 i8* @malloc(i64 32) #3
  %3 = bitcast i8* %call3 to i64*
  store i64* %3, i64** %hebra1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64*, i64** %hebra1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %idxprom
  %8 = load i32, i32* %i, align 4
  %conv = sext i32 %8 to i64
  %9 = inttoptr i64 %conv to i8*
  %call4 = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @procedimiento, i8* %9) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond5
  %13 = load i64*, i64** %hebra1, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i64, i64* %13, i64 %idxprom9
  %15 = load i64, i64* %arrayidx10, align 8
  %call11 = call i32 @pthread_join(i64 %15, i8** null)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %16 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond5, !llvm.loop !7

for.end14:                                        ; preds = %for.cond5
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** @enteroCompartido, align 8
  %18 = load i32, i32* %17, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

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
