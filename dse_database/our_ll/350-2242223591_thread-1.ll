; ModuleID = 'code/350-2242223591_thread-1.c'
source_filename = "code/350-2242223591_thread-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [22 x i8] c"./testsuite_shared.so\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dlopen failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"try_throw_exception\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"dlsym failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pt = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_create(i64* %pt, %union.pthread_attr_t* null, i8* (i8*)* @run, i8* null) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i64, i64* %pt, align 8
  %call1 = call i32 @pthread_join(i64 %0, i8** null)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run(i8* %arg) #0 {
entry:
  %retval = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %lib = alloca i8*, align 8
  %cb = alloca void (...)*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i8* @dlopen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 2) #4
  store i8* %call, i8** %lib, align 8
  %0 = load i8*, i8** %lib, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #5
  %1 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %1) #4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %call2)
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %lib, align 8
  %call4 = call i8* @dlsym(i8* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #4
  %3 = bitcast i8* %call4 to void ()*
  %4 = bitcast void ()* %3 to void (...)*
  store void (...)* %4, void (...)** %cb, align 8
  %5 = load void (...)*, void (...)** %cb, align 8
  %tobool5 = icmp ne void (...)* %5, null
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call i32* @__errno_location() #5
  %6 = load i32, i32* %call7, align 4
  %call8 = call i8* @strerror(i32 %6) #4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %call8)
  store i8* null, i8** %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end
  %7 = load void (...)*, void (...)** %cb, align 8
  call void (...) %7()
  %8 = load i8*, i8** %lib, align 8
  %call11 = call i32 @dlclose(i8* %8) #4
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then6, %if.then
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: nounwind
declare dso_local i8* @dlsym(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @dlclose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
