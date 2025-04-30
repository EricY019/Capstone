; ModuleID = 'code/372-28831putenv_test.c'
source_filename = "code/372-28831putenv_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"foobar=blubb\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test1: putenv 1 failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"test1: getenv 1 failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"blubb\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"test1: value mismatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"test1: putenv 2 failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"test1: getenv 2 failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test1() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i8*, align 8
  %call = call i32 @putenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #4
  store i8* %call2, i8** %s, align 8
  %0 = load i8*, i8** %s, align 8
  %cmp3 = icmp eq i8* %0, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %1 = load i8*, i8** %s, align 8
  %call7 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @putenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %call17 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #4
  store i8* %call17, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %cmp18 = icmp ne i8* %2, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then19, %if.then14, %if.then9, %if.then4, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind
declare dso_local i32 @putenv(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @test1()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
