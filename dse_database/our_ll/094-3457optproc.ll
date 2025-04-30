; ModuleID = 'code/094-3457optproc.c'
source_filename = "code/094-3457optproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.optstring = internal global [5 x i8] c"gW:c\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"-c processed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"-g processed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"-W processed\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Unknown options!\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"argv[ %d ] = '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optch = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @main.optstring, i64 0, i64 0)) #3
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %optch, align 1
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %optch, align 1
  %conv3 = sext i8 %2 to i32
  switch i32 %conv3, label %sw.default [
    i32 99, label %sw.bb
    i32 103, label %sw.bb5
    i32 87, label %sw.bb7
  ]

sw.bb:                                            ; preds = %while.body
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %3 = load i32, i32* @optind, align 4
  %4 = load i32, i32* %argc.addr, align 4
  %cmp10 = icmp slt i32 %3, %4
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @optind, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  %7 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %5, i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @optind, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

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
