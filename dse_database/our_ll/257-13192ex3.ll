; ModuleID = 'code/257-13192ex3.c'
source_filename = "code/257-13192ex3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i16, i16 }

@.str = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%d seconds elapsed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"stdin is readable\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"stdout is writable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fds = alloca [2 x %struct.pollfd], align 16
  %ret = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %arrayidx = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %fds, i64 0, i64 0
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx, i32 0, i32 0
  store i32 0, i32* %fd, align 16
  %arrayidx1 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %fds, i64 0, i64 0
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx1, i32 0, i32 1
  store i16 1, i16* %events, align 4
  %arrayidx2 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %fds, i64 0, i64 1
  %fd3 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx2, i32 0, i32 0
  store i32 1, i32* %fd3, align 8
  %arrayidx4 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %fds, i64 0, i64 1
  %events5 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx4, i32 0, i32 1
  store i16 4, i16* %events5, align 4
  %arraydecay = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %fds, i64 0, i64 0
  %call = call i32 @poll(%struct.pollfd* %arraydecay, i64 2, i32 5000)
  store i32 %call, i32* %ret, align 4
  %0 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %fds, i64 0, i64 0
  %revents = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx9, i32 0, i32 2
  %2 = load i16, i16* %revents, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 1
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8
  %arrayidx14 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %fds, i64 0, i64 1
  %revents15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx14, i32 0, i32 2
  %3 = load i16, i16* %revents15, align 2
  %conv16 = sext i16 %3 to i32
  %and17 = and i32 %conv16, 4
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end13
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end13
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then6, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare dso_local i32 @poll(%struct.pollfd*, i64, i32) #1

declare dso_local void @perror(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
