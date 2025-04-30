; ModuleID = 'code/363-26280order_pizza.c'
source_filename = "code/363-26280order_pizza.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"d:t\00", align 1
@optarg = external dso_local global i8*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"\D0\9D\D0\B5\D0\B8\D0\B7\D0\B2\D0\B5\D1\81\D1\82\D0\BD\D1\8B\D0\B9 \D0\BF\D0\B0\D1\80\D0\B0\D0\BC\D0\B5\D1\82\D1\80: '%s'\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"\D0\9F\D1\8B\D1\88\D0\BD\D0\BE\D0\B5 \D1\82\D0\B5\D1\81\D1\82\D0\BE.\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\D0\91\D1\83\D0\B4\D0\B5\D1\82 \D0\B4\D0\BE\D1\81\D1\82\D0\B0\D0\B2\D0\BB\D0\B5\D0\BD\D0\BE: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\D0\98\D0\BD\D0\B3\D1\80\D0\B8\D0\B4\D0\B8\D0\B5\D0\BD\D1\82\D1\8B:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %delivery = alloca i8*, align 8
  %thick = alloca i32, align 4
  %count = alloca i32, align 4
  %ch = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %delivery, align 8
  store i32 0, i32* %thick, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #3
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %ch, align 1
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %ch, align 1
  %conv3 = sext i8 %2 to i32
  switch i32 %conv3, label %sw.default [
    i32 100, label %sw.bb
    i32 116, label %sw.bb4
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i8*, i8** @optarg, align 8
  store i8* %3, i8** %delivery, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  store i32 1, i32* %thick, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @optarg, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %5)
  store i32 1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* @optind, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* %argc.addr, align 4
  %8 = load i32, i32* @optind, align 4
  %9 = load i8**, i8*** %argv.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %9, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8
  %10 = load i32, i32* %thick, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call6 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %11 = load i8*, i8** %delivery, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %13 = load i8*, i8** %delivery, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %13)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %call11 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %14 = load i32, i32* %count, align 4
  %15 = load i32, i32* %argc.addr, align 4
  %cmp12 = icmp slt i32 %14, %15
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8**, i8*** %argv.addr, align 8
  %17 = load i32, i32* %count, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %18 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i32 @puts(i8* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %count, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %sw.default
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @puts(i8*) #2

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
!6 = distinct !{!6, !5}
