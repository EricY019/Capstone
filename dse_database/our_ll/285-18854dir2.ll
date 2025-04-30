; ModuleID = 'code/285-18854dir2.c'
source_filename = "code/285-18854dir2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't open the directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %eps = alloca %struct.dirent**, align 8
  %n = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @scandir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.dirent*** %eps, i32 (%struct.dirent*)* @one, i32 (%struct.dirent**, %struct.dirent**)* @alphasort)
  store i32 %call, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %cnt, align 4
  %2 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.dirent**, %struct.dirent*** %eps, align 8
  %4 = load i32, i32* %cnt, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.dirent*, %struct.dirent** %3, i64 %idxprom
  %5 = load %struct.dirent*, %struct.dirent** %arrayidx, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %call2 = call i32 @puts(i8* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret i32 0
}

declare dso_local i32 @scandir(i8*, %struct.dirent***, i32 (%struct.dirent*)*, i32 (%struct.dirent**, %struct.dirent**)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one(%struct.dirent* %unused) #0 {
entry:
  %unused.addr = alloca %struct.dirent*, align 8
  store %struct.dirent* %unused, %struct.dirent** %unused.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @alphasort(%struct.dirent**, %struct.dirent**) #2

declare dso_local i32 @puts(i8*) #1

declare dso_local void @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
