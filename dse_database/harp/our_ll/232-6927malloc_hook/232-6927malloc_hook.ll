; ModuleID = 'code/232-6927malloc_hook.c'
source_filename = "code/232-6927malloc_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_malloc_hook_enabled = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [21 x i8] c"caller=%p, size=%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @malloc_hook(i64 %size, i8* %caller) #0 {
entry:
  %size.addr = alloca i64, align 8
  %caller.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %caller, i8** %caller.addr, align 8
  store i32 0, i32* @is_malloc_hook_enabled, align 4
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 %0) #4
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %caller.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %1, i64 %2)
  store i32 1, i32* @is_malloc_hook_enabled, align 4
  %3 = load i8*, i8** %p, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias align 16 i8* @malloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %caller = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = call i8* @llvm.returnaddress(i32 0)
  store i8* %0, i8** %caller, align 8
  %1 = load i32, i32* @is_malloc_hook_enabled, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i8*, i8** %caller, align 8
  %call = call i8* @malloc_hook(i64 %2, i8* %3)
  store i8* %call, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8
  %call1 = call i8* @__libc_malloc(i64 %4)
  store i8* %call1, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #2

declare dso_local i8* @__libc_malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 4) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %p, align 8
  %1 = load i32*, i32** %p, align 8
  store i32 42, i32* %1, align 4
  %2 = load i32*, i32** %p, align 8
  %3 = load i32, i32* %2, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %4 = load i32*, i32** %p, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #4
  store i32* null, i32** %p, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
