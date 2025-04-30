; ModuleID = 'code/323-11081pth_lock.c'
source_filename = "code/323-11081pth_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.arg_t = type { i64, i64, i64, i64, i64*, %union.pthread_mutex_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutexattr_t = type { i32 }

@m = dso_local global [1 x %union.pthread_mutex_t] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"NG: p = %ld != nthreads * ninc_per_thread = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f(i8* %arg_) #0 {
entry:
  %arg_.addr = alloca i8*, align 8
  %arg = alloca %struct.arg_t*, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %ninc_per_thread = alloca i64, align 8
  %i = alloca i32, align 4
  %c = alloca i64, align 8
  %cargs = alloca [2 x %struct.arg_t], align 16
  %tid = alloca i64, align 8
  store i8* %arg_, i8** %arg_.addr, align 8
  %0 = load i8*, i8** %arg_.addr, align 8
  %1 = bitcast i8* %0 to %struct.arg_t*
  store %struct.arg_t* %1, %struct.arg_t** %arg, align 8
  %2 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %a1 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %2, i32 0, i32 1
  %3 = load i64, i64* %a1, align 8
  store i64 %3, i64* %a, align 8
  %4 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %b2 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %4, i32 0, i32 2
  %5 = load i64, i64* %b2, align 8
  store i64 %5, i64* %b, align 8
  %6 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %ninc_per_thread3 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %6, i32 0, i32 0
  %7 = load i64, i64* %ninc_per_thread3, align 8
  store i64 %7, i64* %ninc_per_thread, align 8
  %8 = load i64, i64* %b, align 8
  %9 = load i64, i64* %a, align 8
  %sub = sub nsw i64 %8, %9
  %cmp = icmp eq i64 %sub, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %conv = sext i32 %10 to i64
  %11 = load i64, i64* %ninc_per_thread, align 8
  %cmp4 = icmp slt i64 %conv, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %m = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i32 0, i32 5
  %13 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %13) #5
  %14 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %p = getelementptr inbounds %struct.arg_t, %struct.arg_t* %14, i32 0, i32 4
  %15 = load i64*, i64** %p, align 8
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 0
  %16 = load i64, i64* %arrayidx, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %arrayidx, align 8
  %17 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %m6 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %17, i32 0, i32 5
  %18 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m6, align 8
  %call7 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %18) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %19, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %20 = load i64, i64* %a, align 8
  %21 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %r = getelementptr inbounds %struct.arg_t, %struct.arg_t* %21, i32 0, i32 3
  store i64 %20, i64* %r, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i64, i64* %a, align 8
  %23 = load i64, i64* %b, align 8
  %add = add nsw i64 %22, %23
  %div = sdiv i64 %add, 2
  store i64 %div, i64* %c, align 8
  %arrayinit.begin = getelementptr inbounds [2 x %struct.arg_t], [2 x %struct.arg_t]* %cargs, i64 0, i64 0
  %ninc_per_thread9 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 0
  %24 = load i64, i64* %ninc_per_thread, align 8
  store i64 %24, i64* %ninc_per_thread9, align 16
  %a10 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 1
  %25 = load i64, i64* %a, align 8
  store i64 %25, i64* %a10, align 8
  %b11 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 2
  %26 = load i64, i64* %c, align 8
  store i64 %26, i64* %b11, align 16
  %r12 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 3
  store i64 0, i64* %r12, align 8
  %p13 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 4
  %27 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %p14 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %27, i32 0, i32 4
  %28 = load i64*, i64** %p14, align 8
  store i64* %28, i64** %p13, align 16
  %m15 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 5
  %29 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %m16 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %29, i32 0, i32 5
  %30 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m16, align 8
  store %union.pthread_mutex_t* %30, %union.pthread_mutex_t** %m15, align 8
  %arrayinit.element = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i64 1
  %ninc_per_thread17 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.element, i32 0, i32 0
  %31 = load i64, i64* %ninc_per_thread, align 8
  store i64 %31, i64* %ninc_per_thread17, align 16
  %a18 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.element, i32 0, i32 1
  %32 = load i64, i64* %c, align 8
  store i64 %32, i64* %a18, align 8
  %b19 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.element, i32 0, i32 2
  %33 = load i64, i64* %b, align 8
  store i64 %33, i64* %b19, align 16
  %r20 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.element, i32 0, i32 3
  store i64 0, i64* %r20, align 8
  %p21 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.element, i32 0, i32 4
  %34 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %p22 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %34, i32 0, i32 4
  %35 = load i64*, i64** %p22, align 8
  store i64* %35, i64** %p21, align 16
  %m23 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.element, i32 0, i32 5
  %36 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %m24 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %36, i32 0, i32 5
  %37 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m24, align 8
  store %union.pthread_mutex_t* %37, %union.pthread_mutex_t** %m23, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.arg_t], [2 x %struct.arg_t]* %cargs, i64 0, i64 0
  %38 = bitcast %struct.arg_t* %arraydecay to i8*
  %call25 = call i32 @pthread_create(i64* %tid, %union.pthread_attr_t* null, i8* (i8*)* @f, i8* %38) #5
  %arraydecay26 = getelementptr inbounds [2 x %struct.arg_t], [2 x %struct.arg_t]* %cargs, i64 0, i64 0
  %add.ptr = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arraydecay26, i64 1
  %39 = bitcast %struct.arg_t* %add.ptr to i8*
  %call27 = call i8* @f(i8* %39)
  %40 = load i64, i64* %tid, align 8
  %call28 = call i32 @pthread_join(i64 %40, i8** null)
  %arrayidx29 = getelementptr inbounds [2 x %struct.arg_t], [2 x %struct.arg_t]* %cargs, i64 0, i64 0
  %r30 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx29, i32 0, i32 3
  %41 = load i64, i64* %r30, align 8
  %arrayidx31 = getelementptr inbounds [2 x %struct.arg_t], [2 x %struct.arg_t]* %cargs, i64 0, i64 1
  %r32 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx31, i32 0, i32 3
  %42 = load i64, i64* %r32, align 8
  %add33 = add nsw i64 %41, %42
  %43 = load %struct.arg_t*, %struct.arg_t** %arg, align 8
  %r34 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %43, i32 0, i32 3
  store i64 %add33, i64* %r34, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %nthreads = alloca i64, align 8
  %ninc_per_thread = alloca i64, align 8
  %p = alloca [1 x i64], align 8
  %arg = alloca [1 x %struct.arg_t], align 16
  %tid = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @atol(i8* %2) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 100, %cond.false ]
  store i64 %cond, i64* %nthreads, align 8
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @atol(i8* %5) #6
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i64 [ %call4, %cond.true2 ], [ 10000, %cond.false5 ]
  store i64 %cond7, i64* %ninc_per_thread, align 8
  %call8 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* getelementptr inbounds ([1 x %union.pthread_mutex_t], [1 x %union.pthread_mutex_t]* @m, i64 0, i64 0), %union.pthread_mutexattr_t* null) #5
  %6 = bitcast [1 x i64]* %p to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 8, i1 false)
  %arrayinit.begin = getelementptr inbounds [1 x %struct.arg_t], [1 x %struct.arg_t]* %arg, i64 0, i64 0
  %ninc_per_thread9 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 0
  %7 = load i64, i64* %ninc_per_thread, align 8
  store i64 %7, i64* %ninc_per_thread9, align 16
  %a = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 1
  store i64 0, i64* %a, align 8
  %b = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 2
  %8 = load i64, i64* %nthreads, align 8
  store i64 %8, i64* %b, align 16
  %r = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 3
  store i64 0, i64* %r, align 8
  %p10 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %p, i64 0, i64 0
  store i64* %arraydecay, i64** %p10, align 16
  %m = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayinit.begin, i32 0, i32 5
  store %union.pthread_mutex_t* getelementptr inbounds ([1 x %union.pthread_mutex_t], [1 x %union.pthread_mutex_t]* @m, i64 0, i64 0), %union.pthread_mutex_t** %m, align 8
  %arraydecay11 = getelementptr inbounds [1 x %struct.arg_t], [1 x %struct.arg_t]* %arg, i64 0, i64 0
  %9 = bitcast %struct.arg_t* %arraydecay11 to i8*
  %call12 = call i32 @pthread_create(i64* %tid, %union.pthread_attr_t* null, i8* (i8*)* @f, i8* %9) #5
  %10 = load i64, i64* %tid, align 8
  %call13 = call i32 @pthread_join(i64 %10, i8** null)
  %arraydecay14 = getelementptr inbounds [1 x %struct.arg_t], [1 x %struct.arg_t]* %arg, i64 0, i64 0
  %r15 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arraydecay14, i32 0, i32 3
  %11 = load i64, i64* %r15, align 8
  %12 = load i64, i64* %nthreads, align 8
  %sub = sub nsw i64 %12, 1
  %13 = load i64, i64* %nthreads, align 8
  %mul = mul nsw i64 %sub, %13
  %div = sdiv i64 %mul, 2
  %cmp16 = icmp eq i64 %11, %div
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end6
  %arraydecay17 = getelementptr inbounds [1 x %struct.arg_t], [1 x %struct.arg_t]* %arg, i64 0, i64 0
  %p18 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arraydecay17, i32 0, i32 4
  %14 = load i64*, i64** %p18, align 16
  %arrayidx19 = getelementptr inbounds i64, i64* %14, i64 0
  %15 = load i64, i64* %arrayidx19, align 8
  %16 = load i64, i64* %nthreads, align 8
  %17 = load i64, i64* %ninc_per_thread, align 8
  %mul20 = mul nsw i64 %16, %17
  %cmp21 = icmp eq i64 %15, %mul20
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %cond.end6
  %arraydecay23 = getelementptr inbounds [1 x %struct.arg_t], [1 x %struct.arg_t]* %arg, i64 0, i64 0
  %p24 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arraydecay23, i32 0, i32 4
  %18 = load i64*, i64** %p24, align 16
  %arrayidx25 = getelementptr inbounds i64, i64* %18, i64 0
  %19 = load i64, i64* %arrayidx25, align 8
  %20 = load i64, i64* %nthreads, align 8
  %21 = load i64, i64* %ninc_per_thread, align 8
  %mul26 = mul nsw i64 %20, %21
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %19, i64 %mul26)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
