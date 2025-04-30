; ModuleID = 'code/015-21469sigchld.c'
source_filename = "code/015-21469sigchld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sigset_t = type { [16 x i64] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %mask = alloca %struct.__sigset_t, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @sigemptyset(%struct.__sigset_t* %mask) #2
  %call1 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* null, %struct.__sigset_t* %mask) #2
  %call2 = call i32 @sigismember(%struct.__sigset_t* %mask, i32 17) #2
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: nounwind
declare dso_local i32 @sigemptyset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @sigismember(%struct.__sigset_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
