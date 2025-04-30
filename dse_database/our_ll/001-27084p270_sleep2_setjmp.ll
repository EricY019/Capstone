; ModuleID = 'code/001-27084p270_sleep2_setjmp.c'
source_filename = "code/001-27084p270_sleep2_setjmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@env_alrm = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sleep2(i32 %seconds) #0 {
entry:
  %retval = alloca i32, align 4
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, i32* %seconds.addr, align 4
  %call = call void (i32)* @signal(i32 14, void (i32)* @sig_alrm) #4
  %cmp = icmp eq void (i32)* %call, inttoptr (i64 -1 to void (i32)*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %seconds.addr, align 4
  store i32 %0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env_alrm, i64 0, i64 0)) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %1 = load i32, i32* %seconds.addr, align 4
  %call4 = call i32 @alarm(i32 %1) #4
  br label %while.body

while.body:                                       ; preds = %if.then3, %while.body
  br label %while.body

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @alarm(i32 0) #4
  store i32 %call6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_alrm(i32 %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, i32* %signo.addr, align 4
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env_alrm, i64 0, i64 0), i32 1) #6
  unreachable
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag*) #2

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @sleep2(i32 2)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag*, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind returns_twice }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
