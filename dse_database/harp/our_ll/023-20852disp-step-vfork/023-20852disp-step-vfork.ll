; ModuleID = 'code/023-20852disp-step-vfork.c'
source_filename = "code/023-20852disp-step-vfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pid = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @vfork() #3
  store i32 %call, i32* %pid, align 4
  %0 = load i32, i32* %pid, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %pid, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  br label %if.end

if.else3:                                         ; preds = %if.else
  call void @_exit(i32 0) #4
  unreachable

if.end:                                           ; preds = %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @vfork() #3
  store i32 %call5, i32* %pid, align 4
  %2 = load i32, i32* %pid, align 4
  %cmp6 = icmp eq i32 %2, -1
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.end4
  store i32 1, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.end4
  %3 = load i32, i32* %pid, align 4
  %cmp9 = icmp ne i32 %3, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  br label %if.end12

if.else11:                                        ; preds = %if.else8
  call void @_exit(i32 0) #4
  unreachable

if.end12:                                         ; preds = %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  %call14 = call i32 @vfork() #3
  store i32 %call14, i32* %pid, align 4
  %4 = load i32, i32* %pid, align 4
  %cmp15 = icmp eq i32 %4, -1
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end13
  store i32 1, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %if.end13
  %5 = load i32, i32* %pid, align 4
  %cmp18 = icmp ne i32 %5, 0
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else17
  br label %if.end21

if.else20:                                        ; preds = %if.else17
  call void @_exit(i32 0) #4
  unreachable

if.end21:                                         ; preds = %if.then19
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  call void @marker()
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then16, %if.then7, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @vfork() #1

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marker() #0 {
entry:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind returns_twice }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
