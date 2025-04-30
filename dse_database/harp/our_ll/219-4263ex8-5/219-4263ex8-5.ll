; ModuleID = 'code/219-4263ex8-5.c'
source_filename = "code/219-4263ex8-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Slept for %u of %u secs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snooze(i32 %secs) #0 {
entry:
  %secs.addr = alloca i32, align 4
  %sleep_secs = alloca i32, align 4
  store i32 %secs, i32* %secs.addr, align 4
  %0 = load i32, i32* %secs.addr, align 4
  %call = call i32 @sleep(i32 %0)
  store i32 %call, i32* %sleep_secs, align 4
  %1 = load i32, i32* %secs.addr, align 4
  %2 = load i32, i32* %sleep_secs, align 4
  %sub = sub i32 %1, %2
  %3 = load i32, i32* %secs.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %sub, i32 %3)
  %4 = load i32, i32* %sleep_secs, align 4
  ret i32 %4
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @snooze(i32 3)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
