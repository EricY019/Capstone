; ModuleID = 'code/376-10864sleep1.c'
source_filename = "code/376-10864sleep1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Going to sleep for 5 seconds.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Woke up after %u seconds.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigalrm(i32 %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, i32* %signo.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sleep1(i32 %seconds) #0 {
entry:
  %retval = alloca i32, align 4
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, i32* %seconds.addr, align 4
  %call = call void (i32)* @signal(i32 14, void (i32)* @sigalrm) #3
  %cmp = icmp eq void (i32)* %call, inttoptr (i64 -1 to void (i32)*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %seconds.addr, align 4
  store i32 %0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %seconds.addr, align 4
  %call1 = call i32 @alarm(i32 %1) #3
  %call2 = call i32 @pause()
  %call3 = call i32 @alarm(i32 0) #3
  store i32 %call3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @pause() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sleep_left = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 @sleep1(i32 5)
  store i32 %call1, i32* %sleep_left, align 4
  %0 = load i32, i32* %sleep_left, align 4
  %sub = sub i32 5, %0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %sub)
  ret i32 0
}

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
