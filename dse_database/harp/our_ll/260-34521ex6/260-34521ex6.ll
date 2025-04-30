; ModuleID = 'code/260-34521ex6.c'
source_filename = "code/260-34521ex6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [30 x i8] c"status = %d, count = %lu: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"count = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"System can only create more than %d threads within one process.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_thread(i8* %v_param) #0 {
entry:
  %v_param.addr = alloca i8*, align 8
  store i8* %v_param, i8** %v_param.addr, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_demo(i8* %count) #0 {
entry:
  %count.addr = alloca i8*, align 8
  store i8* %count, i8** %count.addr, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i64, align 8
  %thread = alloca i64, align 8
  %status = alloca i32, align 4
  %thread_ = alloca i64*, align 8
  %status13 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @setvbuf(%struct._IO_FILE* %0, i8* null, i32 2, i64 0) #4
  store i64 0, i64* %count, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %1, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_create(i64* %thread, %union.pthread_attr_t* null, i8* (i8*)* @test_thread, i8* null) #4
  store i32 %call1, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %status, align 4
  %4 = load i64, i64* %count, align 8
  %call3 = call i32* @__errno_location() #5
  %5 = load i32, i32* %call3, align 4
  %call4 = call i8* @strerror(i32 %5) #4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %3, i64 %4, i8* %call4)
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.body
  %6 = load i64, i64* %count, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load i64, i64* %thread, align 8
  %call7 = call i32 @pthread_join(i64 %7, i8** null)
  %call8 = call i32 @sched_yield() #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, i64* %count, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %count, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call9 = call noalias align 16 i8* @malloc(i64 800) #4
  %9 = bitcast i8* %call9 to i64*
  store i64* %9, i64** %thread_, align 8
  store i64 0, i64* %count, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc22, %for.end
  %10 = load i64, i64* %count, align 8
  %cmp11 = icmp ult i64 %10, 100
  br i1 %cmp11, label %for.body12, label %for.end24

for.body12:                                       ; preds = %for.cond10
  %11 = load i64*, i64** %thread_, align 8
  %12 = load i64, i64* %count, align 8
  %arrayidx = getelementptr inbounds i64, i64* %11, i64 %12
  %13 = load i64, i64* %count, align 8
  %14 = inttoptr i64 %13 to i8*
  %call14 = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @test_demo, i8* %14) #4
  store i32 %call14, i32* %status13, align 4
  %15 = load i32, i32* %status13, align 4
  %cmp15 = icmp ne i32 %15, 0
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %for.body12
  %16 = load i32, i32* %status13, align 4
  %17 = load i64, i64* %count, align 8
  %call17 = call i32* @__errno_location() #5
  %18 = load i32, i32* %call17, align 4
  %call18 = call i8* @strerror(i32 %18) #4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17, i8* %call18)
  %19 = load i64, i64* %count, align 8
  %add = add i64 %19, 2
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %add)
  store i32 1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %for.body12
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21
  %20 = load i64, i64* %count, align 8
  %inc23 = add i64 %20, 1
  store i64 %inc23, i64* %count, align 8
  br label %for.cond10, !llvm.loop !6

for.end24:                                        ; preds = %for.cond10
  %21 = load i64*, i64** %thread_, align 8
  %22 = bitcast i64* %21 to i8*
  call void @free(i8* %22) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end24, %if.then16, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare dso_local i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare dso_local i32 @sched_yield() #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
