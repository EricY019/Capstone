; ModuleID = 'code/070-10036HelloWorld.c'
source_filename = "code/070-10036HelloWorld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.census_entry = type { i8*, i8*, %struct.census_entry* }

@.str = private unnamed_addr constant [15 x i8] c"Allen Comp Sci\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AllenCompSci\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Maxwell Cody\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"MaxwellCody\00", align 1
@head = internal global %struct.census_entry* null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Hello World from %s @ https://github.com/%s\0A\00", align 1
@tail = internal global %struct.census_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @populate_census() #0 {
entry:
  call void @add_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  call void @add_entry(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_entry(i8* %fullName, i8* %githubUsername) #0 {
entry:
  %fullName.addr = alloca i8*, align 8
  %githubUsername.addr = alloca i8*, align 8
  %entry1 = alloca %struct.census_entry*, align 8
  store i8* %fullName, i8** %fullName.addr, align 8
  store i8* %githubUsername, i8** %githubUsername.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.census_entry*
  store %struct.census_entry* %0, %struct.census_entry** %entry1, align 8
  %1 = load i8*, i8** %fullName.addr, align 8
  %2 = load %struct.census_entry*, %struct.census_entry** %entry1, align 8
  %fullName2 = getelementptr inbounds %struct.census_entry, %struct.census_entry* %2, i32 0, i32 0
  store i8* %1, i8** %fullName2, align 8
  %3 = load i8*, i8** %githubUsername.addr, align 8
  %4 = load %struct.census_entry*, %struct.census_entry** %entry1, align 8
  %githubUsername3 = getelementptr inbounds %struct.census_entry, %struct.census_entry* %4, i32 0, i32 1
  store i8* %3, i8** %githubUsername3, align 8
  %5 = load %struct.census_entry*, %struct.census_entry** %entry1, align 8
  %next = getelementptr inbounds %struct.census_entry, %struct.census_entry* %5, i32 0, i32 2
  store %struct.census_entry* null, %struct.census_entry** %next, align 8
  %6 = load %struct.census_entry*, %struct.census_entry** @head, align 8
  %cmp = icmp eq %struct.census_entry* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.census_entry*, %struct.census_entry** @tail, align 8
  %cmp4 = icmp eq %struct.census_entry* %7, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct.census_entry*, %struct.census_entry** %entry1, align 8
  store %struct.census_entry* %8, %struct.census_entry** @head, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.census_entry*, %struct.census_entry** %entry1, align 8
  %10 = load %struct.census_entry*, %struct.census_entry** @tail, align 8
  %next5 = getelementptr inbounds %struct.census_entry, %struct.census_entry* %10, i32 0, i32 2
  store %struct.census_entry* %9, %struct.census_entry** %next5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.census_entry*, %struct.census_entry** %entry1, align 8
  store %struct.census_entry* %11, %struct.census_entry** @tail, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %current = alloca %struct.census_entry*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @populate_census()
  %0 = load %struct.census_entry*, %struct.census_entry** @head, align 8
  store %struct.census_entry* %0, %struct.census_entry** %current, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.census_entry*, %struct.census_entry** %current, align 8
  %cmp = icmp ne %struct.census_entry* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.census_entry*, %struct.census_entry** %current, align 8
  %fullName = getelementptr inbounds %struct.census_entry, %struct.census_entry* %2, i32 0, i32 0
  %3 = load i8*, i8** %fullName, align 8
  %4 = load %struct.census_entry*, %struct.census_entry** %current, align 8
  %githubUsername = getelementptr inbounds %struct.census_entry, %struct.census_entry* %4, i32 0, i32 1
  %5 = load i8*, i8** %githubUsername, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %3, i8* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.census_entry*, %struct.census_entry** %current, align 8
  %next = getelementptr inbounds %struct.census_entry, %struct.census_entry* %6, i32 0, i32 2
  %7 = load %struct.census_entry*, %struct.census_entry** %next, align 8
  store %struct.census_entry* %7, %struct.census_entry** %current, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

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
