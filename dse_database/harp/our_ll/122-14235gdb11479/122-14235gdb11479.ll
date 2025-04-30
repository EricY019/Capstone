; ModuleID = 'code/122-14235gdb11479.c'
source_filename = "code/122-14235gdb11479.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy = type { i32, i32, double }

@tag_dummy = dso_local global %struct.dummy zeroinitializer, align 8
@tag_dummy_enum = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test(%struct.dummy* %t) #0 {
entry:
  %t.addr = alloca %struct.dummy*, align 8
  %tt = alloca %struct.dummy*, align 8
  %e = alloca i32*, align 8
  store %struct.dummy* %t, %struct.dummy** %t.addr, align 8
  %0 = load %struct.dummy*, %struct.dummy** %t.addr, align 8
  store %struct.dummy* %0, %struct.dummy** %tt, align 8
  %1 = load %struct.dummy*, %struct.dummy** %t.addr, align 8
  %2 = load i32*, i32** %e, align 8
  %call = call i8* @hack(%struct.dummy* %1, i32* %2)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hack(%struct.dummy* %t, i32* %e) #0 {
entry:
  %t.addr = alloca %struct.dummy*, align 8
  %e.addr = alloca i32*, align 8
  store %struct.dummy* %t, %struct.dummy** %t.addr, align 8
  store i32* %e, i32** %e.addr, align 8
  %0 = load %struct.dummy*, %struct.dummy** %t.addr, align 8
  %1 = bitcast %struct.dummy* %0 to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test2(%struct.dummy* %t) #0 {
entry:
  %t.addr = alloca %struct.dummy*, align 8
  %tt = alloca %struct.dummy*, align 8
  %e = alloca i32*, align 8
  store %struct.dummy* %t, %struct.dummy** %t.addr, align 8
  %0 = load %struct.dummy*, %struct.dummy** %t.addr, align 8
  store %struct.dummy* %0, %struct.dummy** %tt, align 8
  %1 = load %struct.dummy*, %struct.dummy** %t.addr, align 8
  %2 = load i32*, i32** %e, align 8
  %call = call i8* @hack(%struct.dummy* %1, i32* %2)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tt = alloca %struct.dummy, align 8
  store i32 0, i32* %retval, align 4
  %x = getelementptr inbounds %struct.dummy, %struct.dummy* %tt, i32 0, i32 0
  store i32 5, i32* %x, align 8
  %y = getelementptr inbounds %struct.dummy, %struct.dummy* %tt, i32 0, i32 1
  store i32 25, i32* %y, align 4
  %b = getelementptr inbounds %struct.dummy, %struct.dummy* %tt, i32 0, i32 2
  store double 2.500000e+00, double* %b, align 8
  %call = call i8* @test2(%struct.dummy* %tt)
  %call1 = call i8* @test(%struct.dummy* %tt)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
