; ModuleID = 'code/224-12935variant.c'
source_filename = "code/224-12935variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer = dso_local global [8 x i8] zeroinitializer, align 1
@buffer2 = dso_local global [8 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 23, i32* %x, align 4
  %0 = bitcast i32* %x to i8*
  %1 = load i8, i8* %0, align 4
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @buffer, i64 0, i64 0), align 1
  store i8 23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @buffer, i64 0, i64 4), align 1
  store i8 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @buffer2, i64 0, i64 0), align 1
  store i8 23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @buffer2, i64 0, i64 4), align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @buffer, i64 0, i64 3), align 1
  store i8 23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @buffer, i64 0, i64 7), align 1
  store i8 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @buffer2, i64 0, i64 0), align 1
  store i8 23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @buffer2, i64 0, i64 7), align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @func()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @func() #0 {
entry:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
