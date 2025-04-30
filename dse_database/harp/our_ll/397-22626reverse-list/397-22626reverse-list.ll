; ModuleID = 'code/397-22626reverse-list.c'
source_filename = "code/397-22626reverse-list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._node_t = type { i32, %struct._node_t* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(%struct._node_t* %list) #0 {
entry:
  %list.addr = alloca %struct._node_t*, align 8
  %n = alloca %struct._node_t*, align 8
  store %struct._node_t* %list, %struct._node_t** %list.addr, align 8
  store %struct._node_t* null, %struct._node_t** %n, align 8
  %0 = load %struct._node_t*, %struct._node_t** %list.addr, align 8
  store %struct._node_t* %0, %struct._node_t** %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._node_t*, %struct._node_t** %n, align 8
  %cmp = icmp ne %struct._node_t* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._node_t*, %struct._node_t** %n, align 8
  %val = getelementptr inbounds %struct._node_t, %struct._node_t* %2, i32 0, i32 0
  %3 = load i32, i32* %val, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct._node_t*, %struct._node_t** %n, align 8
  %next = getelementptr inbounds %struct._node_t, %struct._node_t* %4, i32 0, i32 1
  %5 = load %struct._node_t*, %struct._node_t** %next, align 8
  store %struct._node_t* %5, %struct._node_t** %n, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._node_t* @reverse(%struct._node_t* %list) #0 {
entry:
  %list.addr = alloca %struct._node_t*, align 8
  %n = alloca %struct._node_t*, align 8
  %next = alloca %struct._node_t*, align 8
  %prev = alloca %struct._node_t*, align 8
  store %struct._node_t* %list, %struct._node_t** %list.addr, align 8
  store %struct._node_t* null, %struct._node_t** %n, align 8
  %0 = load %struct._node_t*, %struct._node_t** %list.addr, align 8
  store %struct._node_t* %0, %struct._node_t** %next, align 8
  store %struct._node_t* null, %struct._node_t** %prev, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct._node_t*, %struct._node_t** %next, align 8
  store %struct._node_t* %1, %struct._node_t** %n, align 8
  %2 = load %struct._node_t*, %struct._node_t** %n, align 8
  %next1 = getelementptr inbounds %struct._node_t, %struct._node_t* %2, i32 0, i32 1
  %3 = load %struct._node_t*, %struct._node_t** %next1, align 8
  store %struct._node_t* %3, %struct._node_t** %next, align 8
  %4 = load %struct._node_t*, %struct._node_t** %prev, align 8
  %5 = load %struct._node_t*, %struct._node_t** %n, align 8
  %next2 = getelementptr inbounds %struct._node_t, %struct._node_t* %5, i32 0, i32 1
  store %struct._node_t* %4, %struct._node_t** %next2, align 8
  %6 = load %struct._node_t*, %struct._node_t** %n, align 8
  store %struct._node_t* %6, %struct._node_t** %prev, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load %struct._node_t*, %struct._node_t** %next, align 8
  %cmp = icmp ne %struct._node_t* %7, null
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %8 = load %struct._node_t*, %struct._node_t** %n, align 8
  ret %struct._node_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n1 = alloca %struct._node_t*, align 8
  %n2 = alloca %struct._node_t*, align 8
  %n3 = alloca %struct._node_t*, align 8
  %n4 = alloca %struct._node_t*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct._node_t*
  store %struct._node_t* %0, %struct._node_t** %n1, align 8
  %1 = load %struct._node_t*, %struct._node_t** %n1, align 8
  %val = getelementptr inbounds %struct._node_t, %struct._node_t* %1, i32 0, i32 0
  store i32 1, i32* %val, align 8
  %2 = load %struct._node_t*, %struct._node_t** %n1, align 8
  %next = getelementptr inbounds %struct._node_t, %struct._node_t* %2, i32 0, i32 1
  store %struct._node_t* null, %struct._node_t** %next, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 16) #3
  %3 = bitcast i8* %call1 to %struct._node_t*
  store %struct._node_t* %3, %struct._node_t** %n2, align 8
  %4 = load %struct._node_t*, %struct._node_t** %n2, align 8
  %val2 = getelementptr inbounds %struct._node_t, %struct._node_t* %4, i32 0, i32 0
  store i32 2, i32* %val2, align 8
  %5 = load %struct._node_t*, %struct._node_t** %n2, align 8
  %next3 = getelementptr inbounds %struct._node_t, %struct._node_t* %5, i32 0, i32 1
  store %struct._node_t* null, %struct._node_t** %next3, align 8
  %6 = load %struct._node_t*, %struct._node_t** %n2, align 8
  %7 = load %struct._node_t*, %struct._node_t** %n1, align 8
  %next4 = getelementptr inbounds %struct._node_t, %struct._node_t* %7, i32 0, i32 1
  store %struct._node_t* %6, %struct._node_t** %next4, align 8
  %call5 = call noalias align 16 i8* @malloc(i64 16) #3
  %8 = bitcast i8* %call5 to %struct._node_t*
  store %struct._node_t* %8, %struct._node_t** %n3, align 8
  %9 = load %struct._node_t*, %struct._node_t** %n3, align 8
  %val6 = getelementptr inbounds %struct._node_t, %struct._node_t* %9, i32 0, i32 0
  store i32 3, i32* %val6, align 8
  %10 = load %struct._node_t*, %struct._node_t** %n3, align 8
  %next7 = getelementptr inbounds %struct._node_t, %struct._node_t* %10, i32 0, i32 1
  store %struct._node_t* null, %struct._node_t** %next7, align 8
  %11 = load %struct._node_t*, %struct._node_t** %n3, align 8
  %12 = load %struct._node_t*, %struct._node_t** %n2, align 8
  %next8 = getelementptr inbounds %struct._node_t, %struct._node_t* %12, i32 0, i32 1
  store %struct._node_t* %11, %struct._node_t** %next8, align 8
  %call9 = call noalias align 16 i8* @malloc(i64 16) #3
  %13 = bitcast i8* %call9 to %struct._node_t*
  store %struct._node_t* %13, %struct._node_t** %n4, align 8
  %14 = load %struct._node_t*, %struct._node_t** %n4, align 8
  %val10 = getelementptr inbounds %struct._node_t, %struct._node_t* %14, i32 0, i32 0
  store i32 4, i32* %val10, align 8
  %15 = load %struct._node_t*, %struct._node_t** %n4, align 8
  %next11 = getelementptr inbounds %struct._node_t, %struct._node_t* %15, i32 0, i32 1
  store %struct._node_t* null, %struct._node_t** %next11, align 8
  %16 = load %struct._node_t*, %struct._node_t** %n4, align 8
  %17 = load %struct._node_t*, %struct._node_t** %n3, align 8
  %next12 = getelementptr inbounds %struct._node_t, %struct._node_t* %17, i32 0, i32 1
  store %struct._node_t* %16, %struct._node_t** %next12, align 8
  %18 = load %struct._node_t*, %struct._node_t** %n1, align 8
  call void @print(%struct._node_t* %18)
  %19 = load %struct._node_t*, %struct._node_t** %n1, align 8
  %call13 = call %struct._node_t* @reverse(%struct._node_t* %19)
  store %struct._node_t* %call13, %struct._node_t** %n1, align 8
  %20 = load %struct._node_t*, %struct._node_t** %n1, align 8
  call void @print(%struct._node_t* %20)
  ret i32 0
}

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
!6 = distinct !{!6, !5}
