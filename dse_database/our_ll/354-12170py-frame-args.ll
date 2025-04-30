; ModuleID = 'code/354-12170py-frame-args.c'
source_filename = "code/354-12170py-frame-args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32 }
%struct.ss = type { %struct.s, %struct.s }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_s(%struct.s* %s, i32 %m) #0 {
entry:
  %s.addr = alloca %struct.s*, align 8
  %m.addr = alloca i32, align 4
  store %struct.s* %s, %struct.s** %s.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load %struct.s*, %struct.s** %s.addr, align 8
  %m1 = getelementptr inbounds %struct.s, %struct.s* %1, i32 0, i32 0
  store i32 %0, i32* %m1, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ss(%struct.ss* %s, i32 %a, i32 %b) #0 {
entry:
  %s.addr = alloca %struct.ss*, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store %struct.ss* %s, %struct.ss** %s.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct.ss*, %struct.ss** %s.addr, align 8
  %a1 = getelementptr inbounds %struct.ss, %struct.ss* %0, i32 0, i32 0
  %1 = load i32, i32* %a.addr, align 4
  call void @init_s(%struct.s* %a1, i32 %1)
  %2 = load %struct.ss*, %struct.ss** %s.addr, align 8
  %b2 = getelementptr inbounds %struct.ss, %struct.ss* %2, i32 0, i32 1
  %3 = load i32, i32* %b.addr, align 4
  call void @init_s(%struct.s* %b2, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %x, i64 %ss.coerce) #0 {
entry:
  %ss = alloca %struct.ss, align 4
  %x.addr = alloca i32, align 4
  %0 = bitcast %struct.ss* %ss to i64*
  store i64 %ss.coerce, i64* %0, align 4
  store i32 %x, i32* %x.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ss = alloca %struct.ss, align 4
  store i32 0, i32* %retval, align 4
  call void @init_ss(%struct.ss* %ss, i32 1, i32 2)
  %0 = bitcast %struct.ss* %ss to i64*
  %1 = load i64, i64* %0, align 4
  call void @foo(i32 42, i64 %1)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
