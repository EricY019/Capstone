; ModuleID = 'code/016-10867signal_test.c'
source_filename = "code/016-10867signal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.siginfo_t = type { i32, i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3, [80 x i8] }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.anon.2 = type { i32, i32, %union.sigval }
%union.sigval = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sighold\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"holding...\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"raised...\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"unblocking...\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"sigprocmask\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"unblocked!\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Alarm! %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %act = alloca %struct.sigaction, align 8
  %set = alloca %struct.__sigset_t, align 8
  store i32 0, i32* %retval, align 4
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 0
  %sa_sigaction = bitcast %union.anon* %__sigaction_handler to void (i32, %struct.siginfo_t*, i8*)**
  store void (i32, %struct.siginfo_t*, i8*)* @alarm_handler, void (i32, %struct.siginfo_t*, i8*)** %sa_sigaction, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #3
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 2
  store i32 4, i32* %sa_flags, align 8
  %call1 = call i32 @sigaction(i32 14, %struct.sigaction* %act, %struct.sigaction* null) #3
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @sigaction(i32 10, %struct.sigaction* %act, %struct.sigaction* null) #3
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @sighold to i32 (i32, ...)*)(i32 14)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 (i32, ...) bitcast (i32 (...)* @sighold to i32 (i32, ...)*)(i32 10)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %call15 = call i32 @raise(i32 14) #3
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %call20 = call i32 @raise(i32 10) #3
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %call26 = call i32 @sigemptyset(%struct.__sigset_t* %set) #3
  %call27 = call i32 @sigaddset(%struct.__sigset_t* %set, i32 14) #3
  %call28 = call i32 @sigaddset(%struct.__sigset_t* %set, i32 10) #3
  %call29 = call i32 @sigprocmask(i32 1, %struct.__sigset_t* %set, %struct.__sigset_t* null) #3
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end23
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end23
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %return

return:                                           ; preds = %if.end32, %if.then31, %if.then22, %if.then17, %if.then12, %if.then8, %if.then4, %if.then
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alarm_handler(i32 %signo, %struct.siginfo_t* %info, i8* %context) #0 {
entry:
  %signo.addr = alloca i32, align 4
  %info.addr = alloca %struct.siginfo_t*, align 8
  %context.addr = alloca i8*, align 8
  store i32 %signo, i32* %signo.addr, align 4
  store %struct.siginfo_t* %info, %struct.siginfo_t** %info.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load i8*, i8** %context.addr, align 8
  %1 = load i32, i32* %signo.addr, align 4
  %2 = load %struct.siginfo_t*, %struct.siginfo_t** %info.addr, align 8
  %si_signo = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %2, i32 0, i32 0
  %3 = load i32, i32* %si_signo, align 8
  %4 = load %struct.siginfo_t*, %struct.siginfo_t** %info.addr, align 8
  %_sifields = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %4, i32 0, i32 3
  %_rt = bitcast %union.anon.0* %_sifields to %struct.anon.2*
  %si_sigval = getelementptr inbounds %struct.anon.2, %struct.anon.2* %_rt, i32 0, i32 2
  %sival_int = bitcast %union.sigval* %si_sigval to i32*
  %5 = load i32, i32* %sival_int, align 8
  %6 = load %struct.siginfo_t*, %struct.siginfo_t** %info.addr, align 8
  %si_code = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %6, i32 0, i32 2
  %7 = load i32, i32* %si_code, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %1, i32 %3, i32 %5, i32 %7)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sigemptyset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local void @perror(i8*) #2

declare dso_local i32 @sighold(...) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @raise(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @sigaddset(%struct.__sigset_t*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #1

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
