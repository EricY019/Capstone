; ModuleID = 'code/128-19180getoptlong.c'
source_filename = "code/128-19180getoptlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }

@__const.main.one_char = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"GETOPTTEST\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"abzf:o:\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 2, i32* null, i32 51 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* null, i32 4 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* @foo, i32 1 }, %struct.option zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"c = %s, optind = %d (\22%s\22), optarg = \22%s\22, optopt = '%c', foo = %d, longindex = %d\0A\00", align 1
@optind = external dso_local global i32, align 4
@optarg = external dso_local global i8*, align 8
@optopt = external dso_local global i32, align 4
@foo = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"fourth\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"set-foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %parser = alloca i8*, align 8
  %showchar = alloca i8*, align 8
  %one_char = alloca [4 x i8], align 1
  %num_buf = alloca [16 x i8], align 16
  %c = alloca i32, align 4
  %longindex = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [4 x i8]* %one_char to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.one_char, i32 0, i32 0), i64 4, i1 false)
  %call = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #4
  store i8* %call, i8** %parser, align 8
  %1 = load i8*, i8** %parser, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %parser, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i8*, i8** %parser, align 8
  %call1 = call i32 @getopt_long(i32 %2, i8** %3, i8* %4, %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* %longindex) #4
  store i32 %call1, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %do.body
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %showchar, align 8
  br label %if.end11

if.else:                                          ; preds = %do.body
  %6 = load i32, i32* %c, align 4
  %cmp3 = icmp sge i32 %6, 32
  br i1 %cmp3, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.else
  %7 = load i32, i32* %c, align 4
  %cmp4 = icmp sle i32 %7, 126
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %c, align 4
  %conv = trunc i32 %8 to i8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %one_char, i64 0, i64 1
  store i8 %conv, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %one_char, i64 0, i64 0
  store i8* %arraydecay, i8** %showchar, align 8
  br label %if.end10

if.else6:                                         ; preds = %land.lhs.true, %if.else
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %num_buf, i64 0, i64 0
  %9 = load i32, i32* %c, align 4
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay7, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %9) #4
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %num_buf, i64 0, i64 0
  store i8* %arraydecay9, i8** %showchar, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else6, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then2
  %10 = load i8*, i8** %showchar, align 8
  %11 = load i32, i32* @optind, align 4
  %12 = load i8**, i8*** %argv.addr, align 8
  %13 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %14 = load i8*, i8** %arrayidx12, align 8
  %15 = load i8*, i8** @optarg, align 8
  %16 = load i32, i32* @optopt, align 4
  %17 = load i32, i32* @foo, align 4
  %18 = load i32, i32* %longindex, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i8* %10, i32 %11, i8* %14, i8* %15, i32 %16, i32 %17, i32 %18)
  br label %do.cond

do.cond:                                          ; preds = %if.end11
  %19 = load i32, i32* %c, align 4
  %cmp14 = icmp ne i32 %19, -1
  br i1 %cmp14, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
