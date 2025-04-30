; ModuleID = 'code/171-26597starsrch.c'
source_filename = "code/171-26597starsrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"astronomy\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"astounding\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"astrophysics\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ostracize\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"asterism\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"astrophobia\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"astro\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Found: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"The list contained %d words beginning with astro.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %list = alloca [6 x i8*], align 16
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i8*]* %list to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 48, i1 false)
  %1 = bitcast i8* %0 to [6 x i8*]*
  %2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %2, align 16
  %3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8
  %4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8** %4, align 16
  %5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %5, align 8
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8** %7, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %list, i64 0, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 5) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %list, i64 0, i64 %idxprom2
  %12 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %12)
  %13 = load i32, i32* %count, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %14, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %count, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %15)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
