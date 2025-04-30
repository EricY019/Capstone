; ModuleID = 'code/392-20285dirent.c'
source_filename = "code/392-20285dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@main.mydir = internal global [20 x i8] c"/tmp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Got dir entry: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %dirh = alloca %struct.__dirstream*, align 8
  %dirp = alloca %struct.dirent*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @main.mydir, i64 0, i64 0))
  store %struct.__dirstream* %call, %struct.__dirstream** %dirh, align 8
  %cmp = icmp eq %struct.__dirstream* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.__dirstream*, %struct.__dirstream** %dirh, align 8
  %call1 = call %struct.dirent* @readdir(%struct.__dirstream* %0)
  store %struct.dirent* %call1, %struct.dirent** %dirp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.dirent*, %struct.dirent** %dirp, align 8
  %cmp2 = icmp ne %struct.dirent* %1, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.dirent*, %struct.dirent** %dirp, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %2, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.__dirstream*, %struct.__dirstream** %dirh, align 8
  %call4 = call %struct.dirent* @readdir(%struct.__dirstream* %3)
  store %struct.dirent* %call4, %struct.dirent** %dirp, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %4 = load %struct.__dirstream*, %struct.__dirstream** %dirh, align 8
  %call5 = call i32 @closedir(%struct.__dirstream* %4)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local %struct.__dirstream* @opendir(i8*) #1

declare dso_local void @perror(i8*) #1

declare dso_local %struct.dirent* @readdir(%struct.__dirstream*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @closedir(%struct.__dirstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
