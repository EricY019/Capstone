; ModuleID = 'code/266-29346timer_implementation.c'
source_filename = "code/266-29346timer_implementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@stop = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Counted till %u \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigalarm_handler(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store volatile i32 1, i32* @stop, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %sinst = alloca %struct.sigaction, align 8
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %counter, align 4
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sinst, i32 0, i32 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #3
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sinst, i32 0, i32 2
  store i32 0, i32* %sa_flags, align 8
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sinst, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* @sigalarm_handler, void (i32)** %sa_handler, align 8
  %call1 = call i32 @sigaction(i32 14, %struct.sigaction* %sinst, %struct.sigaction* null) #3
  %call2 = call i32 @alarm(i32 10) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load volatile i32, i32* @stop, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %counter, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %counter, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* %counter, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %2)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @sigemptyset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @printf(i8*, ...) #2

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
