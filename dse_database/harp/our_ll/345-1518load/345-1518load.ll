; ModuleID = 'code/345-1518load.c'
source_filename = "code/345-1518load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %from = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 20, i64* %j, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @atol(i8* %2) #3
  store i64 %call, i64* %from, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 20, i64* %from, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %if.end
  %3 = load i64, i64* %j, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %from, align 8
  store i64 %4, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i64, i64* %j, align 8
  %cmp2 = icmp sgt i64 %5, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %j, align 8
  %rem = srem i64 %6, %7
  %tobool4 = icmp ne i64 %rem, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body3
  br label %for.end

if.end6:                                          ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %8 = load i64, i64* %j, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then5, %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i64, i64* %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  %10 = load i64, i64* %i, align 8
  %dec9 = add nsw i64 %10, -1
  store i64 %dec9, i64* %i, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %dec9)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
