; ModuleID = 'code/339-15920eg10_21.c'
source_filename = "code/339-15920eg10_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sleep(i32 %nsecs) #0 {
entry:
  %nsecs.addr = alloca i32, align 4
  %newact = alloca %struct.sigaction, align 8
  %oldact = alloca %struct.sigaction, align 8
  %newmask = alloca %struct.__sigset_t, align 8
  %oldmask = alloca %struct.__sigset_t, align 8
  %suspmask = alloca %struct.__sigset_t, align 8
  %unslept = alloca i32, align 4
  store i32 %nsecs, i32* %nsecs.addr, align 4
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %newact, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* @sig_alrm, void (i32)** %sa_handler, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %newact, i32 0, i32 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #4
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %newact, i32 0, i32 2
  store i32 0, i32* %sa_flags, align 8
  %call1 = call i32 @sigaction(i32 14, %struct.sigaction* %newact, %struct.sigaction* %oldact) #4
  %call2 = call i32 @sigemptyset(%struct.__sigset_t* %newmask) #4
  %call3 = call i32 @sigaddset(%struct.__sigset_t* %newmask, i32 14) #4
  %call4 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %newmask, %struct.__sigset_t* %oldmask) #4
  %0 = load i32, i32* %nsecs.addr, align 4
  %call5 = call i32 @alarm(i32 %0) #4
  %1 = bitcast %struct.__sigset_t* %suspmask to i8*
  %2 = bitcast %struct.__sigset_t* %oldmask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 128, i1 false)
  %call6 = call i32 @sigdelset(%struct.__sigset_t* %suspmask, i32 14) #4
  %call7 = call i32 @sigsuspend(%struct.__sigset_t* %suspmask)
  %call8 = call i32 @alarm(i32 0) #4
  store i32 %call8, i32* %unslept, align 4
  %call9 = call i32 @sigaction(i32 14, %struct.sigaction* %oldact, %struct.sigaction* null) #4
  %call10 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %oldmask, %struct.__sigset_t* null) #4
  %3 = load i32, i32* %unslept, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_alrm(i32 %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, i32* %signo.addr, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sigemptyset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

; Function Attrs: nounwind
declare dso_local i32 @sigaddset(%struct.__sigset_t*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @sigdelset(%struct.__sigset_t*, i32) #1

declare dso_local i32 @sigsuspend(%struct.__sigset_t*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %unslept = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @Sleep(i32 10)
  store i32 %call, i32* %unslept, align 4
  %0 = load i32, i32* %unslept, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
