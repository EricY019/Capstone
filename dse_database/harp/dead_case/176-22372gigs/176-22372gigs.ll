; ModuleID = 'code/176-22372gigs.c'
source_filename = "code/176-22372gigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [20 x i8] c"%Y-%m-%dT%H:%M:%S%z\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"time=\22%s\22 pid=%d msg=\22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"allocating %.2fGB\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"filling buffer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"exiting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_gigs_log(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %rawtime = alloca i64, align 8
  %timeinfo = alloca %struct.tm*, align 8
  %timebuf = alloca [256 x i8], align 16
  store i8* %message, i8** %message.addr, align 8
  %call = call i64 @time(i64* %rawtime) #5
  %call1 = call %struct.tm* @localtime(i64* %rawtime) #5
  store %struct.tm* %call1, %struct.tm** %timeinfo, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %timebuf, i64 0, i64 0
  %0 = load %struct.tm*, %struct.tm** %timeinfo, align 8
  %call2 = call i64 @strftime(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.tm* %0) #5
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %timebuf, i64 0, i64 0
  %call4 = call i32 @getpid() #5
  %1 = load i8*, i8** %message.addr, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay3, i32 %call4, i8* %1)
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @getpid() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %amt = alloca double, align 8
  %n = alloca double, align 8
  %i = alloca i64, align 8
  %msgbuf = alloca [32 x i8], align 16
  %membuf = alloca i8*, align 8
  %err = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 1.000000e+00, double* %n, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call double @atof(i8* %2) #6
  store double %call, double* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %msgbuf, i64 0, i64 0
  %3 = load double, double* %n, align 8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), double %3) #5
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %msgbuf, i64 0, i64 0
  call void @_gigs_log(i8* %arraydecay2)
  %4 = load double, double* %n, align 8
  %mul = fmul double 0x41D0000000000000, %4
  %mul3 = fmul double 1.000000e+00, %mul
  %conv = fptosi double %mul3 to i32
  %conv4 = sext i32 %conv to i64
  %call5 = call noalias align 16 i8* @malloc(i64 %conv4) #5
  store i8* %call5, i8** %membuf, align 8
  %cmp6 = icmp eq i8* null, %call5
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call9, align 4
  store i32 %5, i32* %err, align 4
  call void @_gigs_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  call void @_gigs_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %6 = load i64, i64* %i, align 8
  %conv11 = uitofp i64 %6 to double
  %7 = load double, double* %n, align 8
  %mul12 = fmul double 0x41D0000000000000, %7
  %cmp13 = fcmp olt double %conv11, %mul12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %membuf, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8 122, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @_gigs_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind readonly willreturn
declare dso_local double @atof(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
