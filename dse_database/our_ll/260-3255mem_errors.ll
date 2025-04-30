; ModuleID = 'code/260-3255mem_errors.c'
source_filename = "code/260-3255mem_errors.c"
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
  %free_twice = alloca i32*, align 8
  %use_after_free = alloca i32*, align 8
  %never_free = alloca i32*, align 8
  %array1 = alloca [100 x i32], align 16
  %array2 = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 4) #2
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %free_twice, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 4) #2
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %use_after_free, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 4) #2
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %never_free, align 8
  %call3 = call noalias align 16 i8* @malloc(i64 400) #2
  %3 = bitcast i8* %call3 to i32*
  store i32* %3, i32** %array2, align 8
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %array1, i64 0, i64 0
  %call4 = call i32 @read_element(i32* %arraydecay, i32 0)
  %arraydecay5 = getelementptr inbounds [100 x i32], [100 x i32]* %array1, i64 0, i64 0
  %call6 = call i32 @read_element(i32* %arraydecay5, i32 99)
  %4 = load i32*, i32** %array2, align 8
  %call7 = call i32 @read_element(i32* %4, i32 0)
  %5 = load i32*, i32** %array2, align 8
  %call8 = call i32 @read_element(i32* %5, i32 99)
  %6 = load i32*, i32** %use_after_free, align 8
  store i32 17, i32* %6, align 4
  %7 = load i32*, i32** %use_after_free, align 8
  %8 = bitcast i32* %7 to i8*
  call void @free(i8* %8) #2
  %9 = load i32*, i32** %never_free, align 8
  store i32 17, i32* %9, align 4
  %10 = load i32*, i32** %never_free, align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #2
  %12 = load i32*, i32** %array2, align 8
  %13 = bitcast i32* %12 to i8*
  call void @free(i8* %13) #2
  %14 = load i32*, i32** %free_twice, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #2
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
