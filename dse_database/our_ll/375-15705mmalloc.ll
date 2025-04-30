; ModuleID = 'code/375-15705mmalloc.c'
source_filename = "code/375-15705mmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stop = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"initial increment is %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"incrementing by %zd to %zd bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"speeding up to %zd-byte steps\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"slowing down to %zd-byte steps\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"\0A\0Aallocated %zd bytes of memory\0Asteps=%d\0Aspeedups=%d\0Aslowdowns=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_interruption(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store volatile i32 1, i32* @stop, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %increment = alloca i64, align 8
  %s = alloca i64, align 8
  %steps = alloca i32, align 4
  %speedups = alloca i32, align 4
  %slowdowns = alloca i32, align 4
  %p = alloca i8*, align 8
  %newp = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 131072, i64* %increment, align 8
  store i64 0, i64* %s, align 8
  store i32 0, i32* %steps, align 4
  store i32 0, i32* %speedups, align 4
  store i32 0, i32* %slowdowns, align 4
  %0 = load i64, i64* %increment, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %0)
  %1 = load i64, i64* %increment, align 8
  %2 = load i64, i64* %s, align 8
  %add = add i64 %2, %1
  store i64 %add, i64* %s, align 8
  %3 = load i32, i32* %steps, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %steps, align 4
  store volatile i32 0, i32* @stop, align 4
  %call1 = call void (i32)* @signal(i32 2, void (i32)* @handle_interruption) #3
  %call2 = call void (i32)* @signal(i32 15, void (i32)* @handle_interruption) #3
  %call3 = call void (i32)* @signal(i32 1, void (i32)* @handle_interruption) #3
  %4 = load i64, i64* %s, align 8
  %call4 = call noalias align 16 i8* @malloc(i64 %4) #3
  store i8* %call4, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %5 = load i64, i64* %increment, align 8
  %cmp = icmp ugt i64 %5, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %p, align 8
  %7 = load i64, i64* %s, align 8
  %8 = load i64, i64* %increment, align 8
  %add5 = add i64 %7, %8
  %call6 = call align 16 i8* @realloc(i8* %6, i64 %add5) #3
  store i8* %call6, i8** %newp, align 8
  %9 = load i8*, i8** %newp, align 8
  %cmp7 = icmp ne i8* %9, null
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load i8*, i8** %newp, align 8
  store i8* %10, i8** %p, align 8
  %11 = load i64, i64* %increment, align 8
  %12 = load i64, i64* %s, align 8
  %add8 = add i64 %12, %11
  store i64 %add8, i64* %s, align 8
  %13 = load i32, i32* %steps, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %steps, align 4
  %14 = load i64, i64* %increment, align 8
  %15 = load i64, i64* %s, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %14, i64 %15)
  %16 = load i64, i64* %increment, align 8
  %mul = mul i64 %16, 2
  store i64 %mul, i64* %increment, align 8
  %17 = load i32, i32* %speedups, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %speedups, align 4
  %18 = load i64, i64* %increment, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load i64, i64* %increment, align 8
  %div = udiv i64 %19, 2
  store i64 %div, i64* %increment, align 8
  %20 = load i32, i32* %slowdowns, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %slowdowns, align 4
  %21 = load i64, i64* %increment, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %steps, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, i32* %steps, align 4
  %23 = load volatile i32, i32* @stop, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %while.end

if.end17:                                         ; preds = %if.end
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then16, %while.cond
  %24 = load i8*, i8** %p, align 8
  call void @free(i8* %24) #3
  %25 = load i64, i64* %s, align 8
  %26 = load i32, i32* %steps, align 4
  %27 = load i32, i32* %speedups, align 4
  %28 = load i32, i32* %slowdowns, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %25, i32 %26, i32 %27, i32 %28)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
