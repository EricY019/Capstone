; ModuleID = 'code/225-15006find_track_oo.c'
source_filename = "code/225-15006find_track_oo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }

@tracks = dso_local global [5 x [80 x i8]] [[80 x i8] c"So What\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Freddie Freeloader\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Blue in Green\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"All Blues\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Flamenco Sketches\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@.str = private unnamed_addr constant [16 x i8] c"Track %i: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"F.*F.*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.re_pattern_buffer* @make_regex(i8* %pattern, i32 %flags) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  ret %struct.re_pattern_buffer* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regex_match(%struct.re_pattern_buffer* %regex, i8* %s) #0 {
entry:
  %regex.addr = alloca %struct.re_pattern_buffer*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.re_pattern_buffer* %regex, %struct.re_pattern_buffer** %regex.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regex_free(%struct.re_pattern_buffer* %regex) #0 {
entry:
  %regex.addr = alloca %struct.re_pattern_buffer*, align 8
  store %struct.re_pattern_buffer* %regex, %struct.re_pattern_buffer** %regex.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_track_regex(i8* %pattern) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %regex = alloca %struct.re_pattern_buffer*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  %0 = load i8*, i8** %pattern.addr, align 8
  %call = call %struct.re_pattern_buffer* @make_regex(i8* %0, i32 9)
  store %struct.re_pattern_buffer* %call, %struct.re_pattern_buffer** %regex, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x [80 x i8]], [5 x [80 x i8]]* @tracks, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx, i64 0, i64 0
  %call1 = call i32 @regex_match(%struct.re_pattern_buffer* %2, i8* %arraydecay)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [5 x [80 x i8]], [5 x [80 x i8]]* @tracks, i64 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx3, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %4, i8* %arraydecay4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex, align 8
  call void @regex_free(%struct.re_pattern_buffer* %7)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pattern = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %pattern, align 8
  %0 = load i8*, i8** %pattern, align 8
  call void @find_track_regex(i8* %0)
  ret i32 0
}

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
