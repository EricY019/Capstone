; ModuleID = 'code/297-30183exemple_semaphores.c'
source_filename = "code/297-30183exemple_semaphores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sem_t = type { i64, [24 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@semaphore = dso_local global %union.sem_t zeroinitializer, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"Thread %d dans portion critique\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Thread %d sort de la portion critique\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %thread = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @sem_init(%union.sem_t* @semaphore, i32 0, i32 3) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = inttoptr i64 %conv to i8*
  %call1 = call i32 @pthread_create(i64* %thread, %union.pthread_attr_t* null, i8* (i8*)* @routine_thread, i8* %2) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @sem_init(%union.sem_t*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @routine_thread(i8* %numero_thread) #0 {
entry:
  %numero_thread.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %numero_thread, i8** %numero_thread.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @sem_wait(%union.sem_t* @semaphore)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = load i8*, i8** %numero_thread.addr, align 8
  %3 = ptrtoint i8* %2 to i32
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %3)
  %call2 = call i32 @aleatoire(i32 4)
  %call3 = call i32 @sleep(i32 %call2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %5 = load i8*, i8** %numero_thread.addr, align 8
  %6 = ptrtoint i8* %5 to i32
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %call5 = call i32 @sem_post(%union.sem_t* @semaphore) #4
  %call6 = call i32 @aleatoire(i32 4)
  %call7 = call i32 @sleep(i32 %call6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i8* null
}

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #2

declare dso_local i32 @sem_wait(%union.sem_t*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i32 @sleep(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aleatoire(i32 %maximum) #0 {
entry:
  %maximum.addr = alloca i32, align 4
  %d = alloca double, align 8
  store i32 %maximum, i32* %maximum.addr, align 4
  %0 = load i32, i32* %maximum.addr, align 4
  %conv = sitofp i32 %0 to double
  %call = call i32 @rand() #4
  %conv1 = sitofp i32 %call to double
  %mul = fmul double %conv, %conv1
  store double %mul, double* %d, align 8
  %1 = load double, double* %d, align 8
  %div = fdiv double %1, 0x41E0000000000000
  store double %div, double* %d, align 8
  %2 = load double, double* %d, align 8
  %conv2 = fptosi double %2 to i32
  ret i32 %conv2
}

; Function Attrs: nounwind
declare dso_local i32 @sem_post(%union.sem_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
