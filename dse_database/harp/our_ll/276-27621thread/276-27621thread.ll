; ModuleID = 'code/276-27621thread.c'
source_filename = "code/276-27621thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [24 x i8] c"\0Ahello wolrd ! from:%ld\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error creating thread ; %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @printhello(i8* %threadid) #0 {
entry:
  %threadid.addr = alloca i8*, align 8
  %tid = alloca i64, align 8
  store i8* %threadid, i8** %threadid.addr, align 8
  %0 = load i8*, i8** %threadid.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  store i64 %1, i64* %tid, align 8
  %2 = load i64, i64* %tid, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %2)
  %call1 = call i32 @sleep(i32 10)
  call void @pthread_exit(i8* null) #4
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  %thread = alloca [5 x i64], align 16
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [5 x i64], [5 x i64]* %thread, i64 0, i64 0
  %1 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay, i64 %idx.ext
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %t, align 8
  %3 = inttoptr i64 %conv to i8*
  %call = call i32 @pthread_create(i64* %add.ptr, %union.pthread_attr_t* null, i8* (i8*)* @printhello, i8* %3) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %4, 1
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %add1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #4
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
