; ModuleID = 'code/220-3876val-profiler-threads-1.c'
source_filename = "code/220-3876val-profiler-threads-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@buffer = dso_local global [1024 x i8] zeroinitializer, align 16
@buffer2 = dso_local global [1024 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @copy_memory(i8* %dst, i8* %src, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %rem = urem i32 %2, 20
  %idxprom = zext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %4 = load i8*, i8** %dst.addr, align 8
  %5 = load i32, i32* %size.addr, align 4
  %rem1 = urem i32 %5, 10
  %idxprom2 = zext i32 %rem1 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  store i8 %3, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @foo(i8* %d) #0 {
entry:
  %retval = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  store i8* %d, i8** %d.addr, align 8
  %call = call i8* @copy_memory(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer2, i64 0, i64 0), i32 1024)
  %0 = load i8*, i8** %retval, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %threads = alloca [8 x i64], align 16
  %rc = alloca i32, align 4
  %t = alloca i64, align 8
  %retval1 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %t, align 8
  %cmp = icmp slt i64 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %t, align 8
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %threads, i64 0, i64 %1
  %call = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @foo, i8* null) #3
  store i32 %call, i32* %rc, align 4
  %2 = load i32, i32* %rc, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i64, i64* %t, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %t, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %t, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i64, i64* %t, align 8
  %cmp3 = icmp slt i64 %4, 8
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %5 = load i64, i64* %t, align 8
  %arrayidx5 = getelementptr inbounds [8 x i64], [8 x i64]* %threads, i64 0, i64 %5
  %6 = load i64, i64* %arrayidx5, align 8
  %call6 = call i32 @pthread_join(i64 %6, i8** %retval1)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i64, i64* %t, align 8
  %inc8 = add nsw i64 %7, 1
  store i64 %inc8, i64* %t, align 8
  br label %for.cond2, !llvm.loop !7

for.end9:                                         ; preds = %for.cond2
  %8 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 10), align 2
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end9, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
