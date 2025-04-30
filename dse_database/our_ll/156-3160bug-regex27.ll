; ModuleID = 'code/156-3160bug-regex27.c'
source_filename = "code/156-3160bug-regex27.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tests = type { i8*, i8*, i32, i32 }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.regmatch_t = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"a.b\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a\0Ab\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"a[^x]b\00", align 1
@tests = dso_local global [4 x %struct.tests] [%struct.tests { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 5, i32 1 }, %struct.tests { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 0 }, %struct.tests { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 5, i32 1 }, %struct.tests { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [20 x i8] c"regcomp %zd failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"regexec %zd unexpected value %d != %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca %struct.re_pattern_buffer, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %rv = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ret, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = bitcast %struct.re_pattern_buffer* %r to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 64, i1 false)
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [4 x %struct.tests], [4 x %struct.tests]* @tests, i64 0, i64 %2
  %regex = getelementptr inbounds %struct.tests, %struct.tests* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %regex, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [4 x %struct.tests], [4 x %struct.tests]* @tests, i64 0, i64 %4
  %cflags = getelementptr inbounds %struct.tests, %struct.tests* %arrayidx1, i32 0, i32 2
  %5 = load i32, i32* %cflags, align 8
  %call = call i32 @regcomp(%struct.re_pattern_buffer* %r, i8* %3, i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %6)
  store i32 1, i32* %ret, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds [4 x %struct.tests], [4 x %struct.tests]* @tests, i64 0, i64 %7
  %string = getelementptr inbounds %struct.tests, %struct.tests* %arrayidx3, i32 0, i32 1
  %8 = load i8*, i8** %string, align 8
  %call4 = call i32 @regexec(%struct.re_pattern_buffer* %r, i8* %8, i64 0, %struct.regmatch_t* null, i32 0)
  store i32 %call4, i32* %rv, align 4
  %9 = load i32, i32* %rv, align 4
  %10 = load i64, i64* %i, align 8
  %arrayidx5 = getelementptr inbounds [4 x %struct.tests], [4 x %struct.tests]* @tests, i64 0, i64 %10
  %retval6 = getelementptr inbounds %struct.tests, %struct.tests* %arrayidx5, i32 0, i32 3
  %11 = load i32, i32* %retval6, align 4
  %cmp7 = icmp ne i32 %9, %11
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %13 = load i32, i32* %rv, align 4
  %14 = load i64, i64* %i, align 8
  %arrayidx9 = getelementptr inbounds [4 x %struct.tests], [4 x %struct.tests]* @tests, i64 0, i64 %14
  %retval10 = getelementptr inbounds %struct.tests, %struct.tests* %arrayidx9, i32 0, i32 3
  %15 = load i32, i32* %retval10, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %12, i32 %13, i32 %15)
  store i32 1, i32* %ret, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  call void @regfree(%struct.re_pattern_buffer* %r)
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @regcomp(%struct.re_pattern_buffer*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @regexec(%struct.re_pattern_buffer*, i8*, i64, %struct.regmatch_t*, i32) #2

declare dso_local void @regfree(%struct.re_pattern_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
