; ModuleID = 'code/249-12141time_c.c'
source_filename = "code/249-12141time_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [44 x i8] c"The current time with asctime function: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Year: %d, Month: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"UTC Time: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Formatting Time with strftime\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Now it's %I:%M%p.\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Today it is %A, %d of %B, %Y. Day of number %j. Offset from UTC %z.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @struct_tm_mktime()
  call void @format_time()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @struct_tm_mktime() #0 {
entry:
  %now = alloca i64, align 8
  %today = alloca %struct.tm*, align 8
  %utc_time = alloca %struct.tm*, align 8
  %call = call i64 @time(i64* %now) #3
  %call1 = call %struct.tm* @localtime(i64* %now) #3
  store %struct.tm* %call1, %struct.tm** %today, align 8
  %0 = load %struct.tm*, %struct.tm** %today, align 8
  %call2 = call i8* @asctime(%struct.tm* %0) #3
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %call2)
  %1 = load %struct.tm*, %struct.tm** %today, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %2 = load i32, i32* %tm_year, align 4
  %add = add nsw i32 1900, %2
  %3 = load %struct.tm*, %struct.tm** %today, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %4 = load i32, i32* %tm_mon, align 8
  %add4 = add nsw i32 1, %4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %add, i32 %add4)
  %call6 = call %struct.tm* @gmtime(i64* %now) #3
  store %struct.tm* %call6, %struct.tm** %utc_time, align 8
  %5 = load %struct.tm*, %struct.tm** %utc_time, align 8
  %call7 = call i8* @asctime(%struct.tm* %5) #3
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %call7)
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @asctime(%struct.tm*) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_time() #0 {
entry:
  %raw_time = alloca i64, align 8
  %timeinfo = alloca %struct.tm*, align 8
  %buffer = alloca [200 x i8], align 16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %call1 = call i64 @time(i64* %raw_time) #3
  %call2 = call %struct.tm* @localtime(i64* %raw_time) #3
  store %struct.tm* %call2, %struct.tm** %timeinfo, align 8
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %0 = load %struct.tm*, %struct.tm** %timeinfo, align 8
  %call3 = call i64 @strftime(i8* %arraydecay, i64 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %0) #3
  %arraydecay4 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %call5 = call i32 @puts(i8* %arraydecay4)
  %arraydecay6 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %1 = load %struct.tm*, %struct.tm** %timeinfo, align 8
  %call7 = call i64 @strftime(i8* %arraydecay6, i64 200, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %1) #3
  %arraydecay8 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i64 0, i64 0
  %call9 = call i32 @puts(i8* %arraydecay8)
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

declare dso_local i32 @puts(i8*) #2

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
