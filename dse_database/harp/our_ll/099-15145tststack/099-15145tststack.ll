; ModuleID = 'code/099-15145tststack.c'
source_filename = "code/099-15145tststack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [19 x i8] c"invalid stack size\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"res1 = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"res2 = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"This is `%s'\0A\00", align 1
@__FUNCTION__.f1 = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@__FUNCTION__.f2 = private unnamed_addr constant [3 x i8] c"f2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %attr = alloca %union.pthread_attr_t, align 8
  %th1 = alloca i64, align 8
  %th2 = alloca i64, align 8
  %res1 = alloca i8*, align 8
  %res2 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %th1, align 8
  store i64 0, i64* %th2, align 8
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #3
  %call1 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attr, i64 71680) #3
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i32 @pthread_create(i64* %th1, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #3
  %call4 = call i32 @pthread_create(i64* %th2, %union.pthread_attr_t* %attr, i8* (i8*)* @f2, i8* null) #3
  %0 = load i64, i64* %th1, align 8
  %call5 = call i32 @pthread_join(i64 %0, i8** %res1)
  %1 = load i64, i64* %th2, align 8
  %call6 = call i32 @pthread_join(i64 %1, i8** %res2)
  %2 = load i8*, i8** %res1, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %2)
  %3 = load i8*, i8** %res2, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %3)
  %4 = load i8*, i8** %res1, align 8
  %cmp9 = icmp ne i8* %4, inttoptr (i64 1 to i8*)
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %5 = load i8*, i8** %res2, align 8
  %cmp10 = icmp ne i8* %5, inttoptr (i64 2 to i8*)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %6 = phi i1 [ true, %if.end ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  store i32 %lor.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_init(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setstacksize(%union.pthread_attr_t*, i64) #1

declare dso_local i32 @puts(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @f1(i8* %parm) #0 {
entry:
  %parm.addr = alloca i8*, align 8
  store i8* %parm, i8** %parm.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @__FUNCTION__.f1, i64 0, i64 0))
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %0)
  ret i8* inttoptr (i64 1 to i8*)
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @f2(i8* %parm) #0 {
entry:
  %parm.addr = alloca i8*, align 8
  store i8* %parm, i8** %parm.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @__FUNCTION__.f2, i64 0, i64 0))
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %0)
  %call2 = call i32 @sleep(i32 1)
  ret i8* inttoptr (i64 2 to i8*)
}

declare dso_local i32 @pthread_join(i64, i8**) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

declare dso_local i32 @sleep(i32) #2

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
