; ModuleID = 'code/253-735py-strfns.c'
source_filename = "code/253-735py-strfns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str1 = dso_local constant [7 x i8] c"Hello.\00", align 1
@str2 = dso_local constant [7 x i8] c"Hello.\00", align 1
@str3 = dso_local constant [9 x i8] c"Goodbye.\00", align 1
@buf1 = dso_local constant [4 x i8] c"\00\01\02\03", align 1
@buf2 = dso_local constant [4 x i8] c"\00\01\02\03", align 1
@buf3 = dso_local constant [4 x i8] c"\00\01\02\04", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @func(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str1, i64 0, i64 0))
  call void @func(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str2, i64 0, i64 0))
  call void @func(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str3, i64 0, i64 0))
  call void @bfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @buf1, i64 0, i64 0))
  call void @bfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @buf2, i64 0, i64 0))
  call void @bfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @buf3, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @func(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfunc(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
