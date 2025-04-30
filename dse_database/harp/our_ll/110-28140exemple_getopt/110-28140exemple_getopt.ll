; ModuleID = 'code/110-28140exemple_getopt.c'
source_filename = "code/110-28140exemple_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"abc:XY\00", align 1
@opterr = external dso_local global i32, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Option a\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Option b\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Option c %s\0A\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Option %c\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Option %c fausse\0A\00", align 1
@optopt = external dso_local global i32, align 4
@optind = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Arguments restants :\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %liste_options = alloca i8*, align 8
  %option = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %liste_options, align 8
  store i32 0, i32* @opterr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %2 = load i8*, i8** %liste_options, align 8
  %call = call i32 @getopt(i32 %0, i8** %1, i8* %2) #3
  store i32 %call, i32* %option, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %option, align 4
  switch i32 %3, label %sw.epilog [
    i32 97, label %sw.bb
    i32 98, label %sw.bb2
    i32 99, label %sw.bb4
    i32 88, label %sw.bb6
    i32 89, label %sw.bb6
    i32 63, label %sw.bb8
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** @optarg, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %7)
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body, %while.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %9 = load i32, i32* %option, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i32, i32* @optopt, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* @optind, align 4
  %13 = load i32, i32* %argc.addr, align 4
  %cmp10 = icmp ne i32 %12, %13
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %if.then
  %15 = load i32, i32* @optind, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %cmp13 = icmp ne i32 %15, %16
  br i1 %cmp13, label %while.body14, label %while.end16

while.body14:                                     ; preds = %while.cond12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = load i8**, i8*** %argv.addr, align 8
  %19 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @optind, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %20)
  br label %while.cond12, !llvm.loop !6

while.end16:                                      ; preds = %while.cond12
  br label %if.end

if.end:                                           ; preds = %while.end16, %while.end
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

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
