; ModuleID = 'code/201-12695frame-args.c'
source_filename = "code/201-12695frame-args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32 }
%union.u = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.s, align 4
  %u = alloca %union.u, align 4
  store i32 0, i32* %retval, align 4
  %a = getelementptr inbounds %struct.s, %struct.s* %s, i32 0, i32 0
  store i32 3, i32* %a, align 4
  %b = getelementptr inbounds %struct.s, %struct.s* %s, i32 0, i32 1
  store i32 5, i32* %b, align 4
  %a1 = bitcast %union.u* %u to i32*
  store i32 7, i32* %a1, align 4
  %0 = bitcast %struct.s* %s to i64*
  %1 = load i64, i64* %0, align 4
  %coerce.dive = getelementptr inbounds %union.u, %union.u* %u, i32 0, i32 0
  %2 = load i32, i32* %coerce.dive, align 4
  call void @call_me(i32 3, float 5.000000e+00, i64 %1, %struct.s* %s, i32 %2, i32 1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_me(i32 %i, float %f, i64 %s.coerce, %struct.s* %ss, i32 %u.coerce, i32 %e) #0 {
entry:
  %s = alloca %struct.s, align 4
  %u = alloca %union.u, align 4
  %i.addr = alloca i32, align 4
  %f.addr = alloca float, align 4
  %ss.addr = alloca %struct.s*, align 8
  %e.addr = alloca i32, align 4
  %0 = bitcast %struct.s* %s to i64*
  store i64 %s.coerce, i64* %0, align 4
  %coerce.dive = getelementptr inbounds %union.u, %union.u* %u, i32 0, i32 0
  store i32 %u.coerce, i32* %coerce.dive, align 4
  store i32 %i, i32* %i.addr, align 4
  store float %f, float* %f.addr, align 4
  store %struct.s* %ss, %struct.s** %ss.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  call void @break_me()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_me() #0 {
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
