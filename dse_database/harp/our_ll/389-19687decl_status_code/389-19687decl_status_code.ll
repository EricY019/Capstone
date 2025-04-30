; ModuleID = 'code/389-19687decl_status_code.c'
source_filename = "code/389-19687decl_status_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_decl_node_2() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [3 x i32], align 4
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_decl_node_3() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32*, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_decl_node_4() #0 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca [3 x %struct.S1], align 4
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_decl_node_5() #0 {
entry:
  %retval = alloca i32, align 4
  %t2 = alloca [3 x %struct.S1*], align 16
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_decl_node_6() #0 {
entry:
  %retval = alloca i32, align 4
  %t3 = alloca [3 x [3 x %struct.S1]], align 16
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %a = alloca i32, align 4
  %t1 = alloca %struct.S1, align 4
  %s1 = alloca %struct.S1, align 4
  %t2 = alloca %struct.S1*, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
