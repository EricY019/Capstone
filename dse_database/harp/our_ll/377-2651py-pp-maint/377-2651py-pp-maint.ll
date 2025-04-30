; ModuleID = 'code/377-2651py-pp-maint.c'
source_filename = "code/377-2651py-pp-maint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_lookup_test = type { i32, i32 }
%struct.s = type { i32, i32* }
%struct.ss = type { %struct.s, %struct.s }

@fval = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_flt(%struct.function_lookup_test* %p, i32 %x, i32 %y) #0 {
entry:
  %p.addr = alloca %struct.function_lookup_test*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.function_lookup_test* %p, %struct.function_lookup_test** %p.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load %struct.function_lookup_test*, %struct.function_lookup_test** %p.addr, align 8
  %x1 = getelementptr inbounds %struct.function_lookup_test, %struct.function_lookup_test* %1, i32 0, i32 0
  store i32 %0, i32* %x1, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct.function_lookup_test*, %struct.function_lookup_test** %p.addr, align 8
  %y2 = getelementptr inbounds %struct.function_lookup_test, %struct.function_lookup_test* %3, i32 0, i32 1
  store i32 %2, i32* %y2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_s(%struct.s* %s, i32 %a) #0 {
entry:
  %s.addr = alloca %struct.s*, align 8
  %a.addr = alloca i32, align 4
  store %struct.s* %s, %struct.s** %s.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load %struct.s*, %struct.s** %s.addr, align 8
  %a1 = getelementptr inbounds %struct.s, %struct.s* %1, i32 0, i32 0
  store i32 %0, i32* %a1, align 8
  %2 = load %struct.s*, %struct.s** %s.addr, align 8
  %a2 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  %3 = load %struct.s*, %struct.s** %s.addr, align 8
  %b = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 1
  store i32* %a2, i32** %b, align 8
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
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %flt = alloca %struct.function_lookup_test, align 4
  %ss = alloca %struct.ss, align 8
  store i32 0, i32* %retval, align 4
  call void @init_flt(%struct.function_lookup_test* %flt, i32 42, i32 43)
  call void @init_ss(%struct.ss* %ss, i32 1, i32 2)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
