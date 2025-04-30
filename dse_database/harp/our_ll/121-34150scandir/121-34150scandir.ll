; ModuleID = 'code/121-34150scandir.c'
source_filename = "code/121-34150scandir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"scandir\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter(%struct.dirent* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.dirent*, align 8
  store %struct.dirent* %d, %struct.dirent** %d.addr, align 8
  %0 = load %struct.dirent*, %struct.dirent** %d.addr, align 8
  %cmp = icmp eq %struct.dirent* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.dirent*, %struct.dirent** %d.addr, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %call = call i8* @strstr(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #4
  %cmp1 = icmp ne i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %namelist = alloca %struct.dirent**, align 8
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @scandir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.dirent*** %namelist, i32 (%struct.dirent*)* @filter, i32 (%struct.dirent**, %struct.dirent**)* @alphasort)
  store i32 %call, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %1 = load i32, i32* %n, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.dirent**, %struct.dirent*** %namelist, align 8
  %3 = load i32, i32* %n, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.dirent*, %struct.dirent** %2, i64 %idxprom
  %4 = load %struct.dirent*, %struct.dirent** %arrayidx, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay)
  %5 = load %struct.dirent**, %struct.dirent*** %namelist, align 8
  %6 = load i32, i32* %n, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds %struct.dirent*, %struct.dirent** %5, i64 %idxprom2
  %7 = load %struct.dirent*, %struct.dirent** %arrayidx3, align 8
  %8 = bitcast %struct.dirent* %7 to i8*
  call void @free(i8* %8) #5
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load %struct.dirent**, %struct.dirent*** %namelist, align 8
  %10 = bitcast %struct.dirent** %9 to i8*
  call void @free(i8* %10) #5
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret i32 0
}

declare dso_local i32 @scandir(i8*, %struct.dirent***, i32 (%struct.dirent*)*, i32 (%struct.dirent**, %struct.dirent**)*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @alphasort(%struct.dirent**, %struct.dirent**) #1

declare dso_local void @perror(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
