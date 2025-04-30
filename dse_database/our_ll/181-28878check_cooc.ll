; ModuleID = 'code/181-28878check_cooc.c'
source_filename = "code/181-28878check_cooc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cooccur_rec = type { i32, i32, double }

@.str = private unnamed_addr constant [9 x i8] c"cooc.bin\00", align 1
@inputfile = dso_local global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error on opening file!\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"word1=%d,word2=%d,val=%lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fin = alloca %struct._IO_FILE*, align 8
  %cr = alloca %struct.cooccur_rec, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** @inputfile, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fin, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 20
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.cooccur_rec* %cr to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call3 = call i64 @fread(i8* %3, i64 16, i64 1, %struct._IO_FILE* %4)
  %word1 = getelementptr inbounds %struct.cooccur_rec, %struct.cooccur_rec* %cr, i32 0, i32 0
  %5 = load i32, i32* %word1, align 8
  %word2 = getelementptr inbounds %struct.cooccur_rec, %struct.cooccur_rec* %cr, i32 0, i32 1
  %6 = load i32, i32* %word2, align 4
  %val = getelementptr inbounds %struct.cooccur_rec, %struct.cooccur_rec* %cr, i32 0, i32 2
  %7 = load double, double* %val, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %5, i32 %6, double %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
