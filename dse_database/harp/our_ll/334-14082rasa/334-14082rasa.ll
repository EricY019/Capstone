; ModuleID = 'code/334-14082rasa.c'
source_filename = "code/334-14082rasa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: lines %d, RaSa %d \0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"total: lines %d, RaSa %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %depth = alloca i32, align 4
  %summaryRasa = alloca i32, align 4
  %totalLines = alloca i32, align 4
  %i = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca i8*, align 8
  %rasa = alloca i32, align 4
  %lines = alloca i32, align 4
  %ch = alloca i32, align 4
  %ch1 = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %depth, align 4
  store i32 0, i32* %summaryRasa, align 4
  store i32 0, i32* %totalLines, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %filename, align 8
  %5 = load i8*, i8** %filename, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %rasa, align 4
  store i32 0, i32* %lines, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @fgetc(%struct._IO_FILE* %6)
  store i32 %call1, i32* %ch, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %ch, align 4
  %cmp3 = icmp ne i32 %7, -1
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load i32, i32* %ch, align 4
  %conv = trunc i32 %8 to i8
  store i8 %conv, i8* %ch1, align 1
  %9 = load i8, i8* %ch1, align 1
  %conv5 = sext i8 %9 to i32
  switch i32 %conv5, label %sw.epilog [
    i32 59, label %sw.bb
    i32 123, label %sw.bb6
    i32 125, label %sw.bb7
    i32 10, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body4
  %10 = load i32, i32* %depth, align 4
  %11 = load i32, i32* %rasa, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %rasa, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body4
  %12 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %depth, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body4
  %13 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %depth, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body4
  %14 = load i32, i32* %lines, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %lines, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body4, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @fgetc(%struct._IO_FILE* %15)
  store i32 %call10, i32* %ch, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* %16)
  %17 = load i8*, i8** %filename, align 8
  %18 = load i32, i32* %lines, align 4
  %19 = load i32, i32* %rasa, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %18, i32 %19)
  %20 = load i32, i32* %rasa, align 4
  %21 = load i32, i32* %summaryRasa, align 4
  %add13 = add nsw i32 %21, %20
  store i32 %add13, i32* %summaryRasa, align 4
  %22 = load i32, i32* %lines, align 4
  %23 = load i32, i32* %totalLines, align 4
  %add14 = add nsw i32 %23, %22
  store i32 %add14, i32* %totalLines, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %24, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end17:                                        ; preds = %for.cond
  %25 = load i32, i32* %totalLines, align 4
  %26 = load i32, i32* %summaryRasa, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26)
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

declare dso_local i32 @printf(i8*, ...) #1

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
!6 = distinct !{!6, !5}
