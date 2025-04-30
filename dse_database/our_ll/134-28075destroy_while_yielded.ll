; ModuleID = 'code/134-28075destroy_while_yielded.c'
source_filename = "code/134-28075destroy_while_yielded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"LEVEL %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SHOULD NOT BE PRINTED 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SHOULD NOT BE PRINTED 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"RETURNED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fun(i32 %level) #0 {
entry:
  %level.addr = alloca i32, align 4
  %my_mem = alloca i8*, align 8
  store i32 %level, i32* %level.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 1000) #3
  store i8* %call, i8** %my_mem, align 8
  %0 = load i32, i32* %level.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %0)
  %1 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %2, 1
  call void @fun(i32 %add)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @allocator(i64 %size, i8* %context) #0 {
entry:
  %size.addr = alloca i64, align 8
  %context.addr = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load i8*, i8** %context.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 %1) #3
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freer(i8* %data, i8* %context) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %context.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load i8*, i8** %context.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @free(i8* %1) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @fun(i32 1)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
