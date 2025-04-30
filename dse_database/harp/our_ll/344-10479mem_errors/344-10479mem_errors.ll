; ModuleID = 'code/344-10479mem_errors.c'
source_filename = "code/344-10479mem_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_anything(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #2
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_element(i32* %array, i32 %index) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %index.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32*, i32** %array.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %x, align 4
  %3 = load i32, i32* %x, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %never_allocated = alloca i32*, align 8
  %free_twice = alloca i32*, align 8
  %use_after_free = alloca i32*, align 8
  %never_free = alloca i32*, align 8
  %array1 = alloca i32*, align 8
  %array2 = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 4) #2
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %never_allocated, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 4) #2
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %free_twice, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 4) #2
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %use_after_free, align 8
  %call3 = call noalias align 16 i8* @malloc(i64 4) #2
  %3 = bitcast i8* %call3 to i32*
  store i32* %3, i32** %never_free, align 8
  %call4 = call noalias align 16 i8* @malloc(i64 400) #2
  %4 = bitcast i8* %call4 to i32*
  store i32* %4, i32** %array1, align 8
  %call5 = call noalias align 16 i8* @malloc(i64 400) #2
  %5 = bitcast i8* %call5 to i32*
  store i32* %5, i32** %array2, align 8
  %6 = load i32*, i32** %array1, align 8
  %call6 = call i32 @read_element(i32* %6, i32 0)
  %7 = load i32*, i32** %array1, align 8
  %call7 = call i32 @read_element(i32* %7, i32 99)
  %8 = load i32*, i32** %array2, align 8
  %call8 = call i32 @read_element(i32* %8, i32 0)
  %9 = load i32*, i32** %array2, align 8
  %call9 = call i32 @read_element(i32* %9, i32 99)
  %10 = load i32*, i32** %use_after_free, align 8
  store i32 17, i32* %10, align 4
  %11 = load i32*, i32** %use_after_free, align 8
  %12 = bitcast i32* %11 to i8*
  call void @free(i8* %12) #2
  %13 = load i32*, i32** %never_free, align 8
  store i32 17, i32* %13, align 4
  %14 = load i32*, i32** %never_free, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #2
  %16 = load i32*, i32** %never_allocated, align 8
  call void @free_anything(i32* %16)
  %17 = load i32*, i32** %free_twice, align 8
  %18 = bitcast i32* %17 to i8*
  call void @free(i8* %18) #2
  %19 = load i32*, i32** %array1, align 8
  %20 = bitcast i32* %19 to i8*
  call void @free(i8* %20) #2
  %21 = load i32*, i32** %array2, align 8
  %22 = bitcast i32* %21 to i8*
  call void @free(i8* %22) #2
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
