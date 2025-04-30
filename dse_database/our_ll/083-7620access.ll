; ModuleID = 'code/083-7620access.c'
source_filename = "code/083-7620access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/readable\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/writeable\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/allaccess\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/forbidden\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"/nonexistent\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"F_OK(%s): %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"errno: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"R_OK(%s): %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"X_OK(%s): %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"W_OK(%s): %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %files = alloca [5 x i8*], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i8*]* %files to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %1 = bitcast i8* %0 to [5 x i8*]*
  %2 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %2, align 16
  %3 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8
  %4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8** %4, align 16
  %5 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %5, align 8
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8** %6, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %conv = sext i32 %7 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %files, i64 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds [5 x i8*], [5 x i8*]* %files, i64 0, i64 %idxprom2
  %11 = load i8*, i8** %arrayidx3, align 8
  %call = call i32 @access(i8* %11, i32 0) #5
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %9, i32 %call)
  %call5 = call i32* @__errno_location() #6
  %12 = load i32, i32* %call5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %12)
  %call7 = call i32* @__errno_location() #6
  store i32 0, i32* %call7, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %files, i64 0, i64 %idxprom8
  %14 = load i8*, i8** %arrayidx9, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %files, i64 0, i64 %idxprom10
  %16 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 @access(i8* %16, i32 4) #5
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %14, i32 %call12)
  %call14 = call i32* @__errno_location() #6
  %17 = load i32, i32* %call14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %17)
  %call16 = call i32* @__errno_location() #6
  store i32 0, i32* %call16, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %files, i64 0, i64 %idxprom17
  %19 = load i8*, i8** %arrayidx18, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %files, i64 0, i64 %idxprom19
  %21 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @access(i8* %21, i32 1) #5
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %19, i32 %call21)
  %call23 = call i32* @__errno_location() #6
  %22 = load i32, i32* %call23, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  %call25 = call i32* @__errno_location() #6
  store i32 0, i32* %call25, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %files, i64 0, i64 %idxprom26
  %24 = load i8*, i8** %arrayidx27, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %files, i64 0, i64 %idxprom28
  %26 = load i8*, i8** %arrayidx29, align 8
  %call30 = call i32 @access(i8* %26, i32 2) #5
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %24, i32 %call30)
  %call32 = call i32* @__errno_location() #6
  %27 = load i32, i32* %call32, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %27)
  %call34 = call i32* @__errno_location() #6
  store i32 0, i32* %call34, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @access(i8*, i32) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
