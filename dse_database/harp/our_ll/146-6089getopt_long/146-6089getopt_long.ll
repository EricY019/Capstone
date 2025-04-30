; ModuleID = 'code/146-6089getopt_long.c'
source_filename = "code/146-6089getopt_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"a:b:c:d\00", align 1
@main.long_options = internal global [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 2, i32* null, i32 111 }, %struct.option zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"reqarg\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"noarg\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"optarg\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"opt = %c\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"optarg = %s\0A\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"optind = %d\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"argv[optind - 1] = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"option_index = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %opt = alloca i32, align 4
  %digit_optind = alloca i32, align 4
  %option_index = alloca i32, align 4
  %optstring = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %digit_optind, align 4
  store i32 0, i32* %option_index, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %optstring, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %0, 2
  %1 = load i8**, i8*** %argv.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %1, i64 2
  %2 = load i8*, i8** %optstring, align 8
  %call = call i32 @getopt_long(i32 %sub, i8** %add.ptr, i8* %2, %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %option_index) #3
  store i32 %call, i32* %opt, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %opt, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %3)
  %4 = load i8*, i8** @optarg, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %4)
  %5 = load i32, i32* @optind, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %5)
  %6 = load i8**, i8*** %argv.addr, align 8
  %7 = load i32, i32* @optind, align 4
  %sub4 = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %8)
  %9 = load i32, i32* %option_index, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %9)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #2

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
