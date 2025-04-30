; ModuleID = 'code/057-21542trace-unavailable.c'
source_filename = "code/057-21542trace-unavailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [4 x i8], align 1
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %s, i64 0, i64 0
  call void @bar(i32 4, i8* %arraydecay)
  call void @foo()
  call void @marker()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bar(i32 %j, i8* %s) #0 {
entry:
  %j.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %array = alloca [2 x i8], align 1
  %i = alloca i32, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %i, align 4
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i64 0, i64 0
  store i8 99, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %array, i64 0, i64 1
  store i8 100, i8* %arrayidx1, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @foo() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marker() #0 {
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
