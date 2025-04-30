; ModuleID = 'code/216-21649mk-lba-img.c'
source_filename = "code/216-21649mk-lba-img.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@DEF_FN = dso_local constant [2 x i8] c"-\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: %s: unable to open for writing: %s\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %rv = alloca i32, align 4
  %one = alloca i32, align 4
  %lba = alloca i32, align 4
  %b = alloca [128 x i32], align 16
  %len = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %tt = alloca i8, align 1
  %fn = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %rv, align 4
  store i32 0, i32* %one, align 4
  store i8 0, i8* %tt, align 1
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sge i32 %1, 3
  br i1 %cmp1, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.then
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3) #6
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx5, align 8
  store i8* %5, i8** %fn, align 8
  store i32 1, i32* %one, align 4
  br label %if.end

if.else:                                          ; preds = %if.then2
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx6, align 8
  store i8* %7, i8** %fn, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end9

if.else7:                                         ; preds = %if.then
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx8, align 8
  store i8* %9, i8** %fn, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.end
  br label %if.end11

if.else10:                                        ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @DEF_FN, i64 0, i64 0), i8** %fn, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.end9
  %10 = load i8*, i8** %fn, align 8
  %call12 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.end11
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %f, align 8
  br label %if.end16

if.else14:                                        ; preds = %if.end11
  %12 = load i8*, i8** %fn, align 8
  %call15 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %f, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool17 = icmp ne %struct._IO_FILE* %13, null
  br i1 %tobool17, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end16
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %15, i64 0
  %16 = load i8*, i8** %arrayidx19, align 8
  %17 = load i8*, i8** %fn, align 8
  %call20 = call i32* @__errno_location() #7
  %18 = load i32, i32* %call20, align 4
  %call21 = call i8* @strerror(i32 %18) #8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %16, i8* %17, i8* %call21)
  store i32 1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  store i32 0, i32* %lba, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.end23
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %b, i64 0, i64 0
  %19 = bitcast i32* %arraydecay to i8*
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call24 = call i64 @fread(i8* %19, i64 1, i64 512, %struct._IO_FILE* %20)
  %conv = trunc i64 %call24 to i32
  store i32 %conv, i32* %len, align 4
  %tobool25 = icmp ne i32 %conv, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %len, align 4
  %cmp26 = icmp slt i32 %21, 512
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %while.body
  %arraydecay29 = getelementptr inbounds [128 x i32], [128 x i32]* %b, i64 0, i64 0
  %22 = bitcast i32* %arraydecay29 to i8*
  %23 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %24 = load i32, i32* %len, align 4
  %sub = sub nsw i32 512, %24
  %conv30 = sext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr, i8 0, i64 %conv30, i1 false)
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %while.body
  %arraydecay32 = getelementptr inbounds [128 x i32], [128 x i32]* %b, i64 0, i64 0
  %25 = bitcast i32* %arraydecay32 to i8*
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call33 = call i64 @fwrite(i8* %25, i64 1, i64 512, %struct._IO_FILE* %26)
  %27 = load i32, i32* %lba, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %lba, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %arraydecay34 = getelementptr inbounds [128 x i32], [128 x i32]* %b, i64 0, i64 0
  %28 = bitcast i32* %arraydecay34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 512, i1 false)
  br label %while.cond35

while.cond35:                                     ; preds = %if.end48, %while.end
  %29 = load i32, i32* %lba, align 4
  %cmp36 = icmp ult i32 %29, 16129
  br i1 %cmp36, label %while.body38, label %while.end52

while.body38:                                     ; preds = %while.cond35
  %30 = load i32, i32* %one, align 4
  %tobool39 = icmp ne i32 %30, 0
  br i1 %tobool39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %while.body38
  %31 = load i32, i32* %lba, align 4
  %arrayidx41 = getelementptr inbounds [128 x i32], [128 x i32]* %b, i64 0, i64 0
  store i32 %31, i32* %arrayidx41, align 16
  br label %if.end48

if.else42:                                        ; preds = %while.body38
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else42
  %32 = load i32, i32* %i, align 4
  %conv43 = sext i32 %32 to i64
  %cmp44 = icmp ult i64 %conv43, 128
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %lba, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [128 x i32], [128 x i32]* %b, i64 0, i64 %idxprom
  store i32 %33, i32* %arrayidx46, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %35, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end48

if.end48:                                         ; preds = %for.end, %if.then40
  %arraydecay49 = getelementptr inbounds [128 x i32], [128 x i32]* %b, i64 0, i64 0
  %36 = bitcast i32* %arraydecay49 to i8*
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call50 = call i64 @fwrite(i8* %36, i64 1, i64 512, %struct._IO_FILE* %37)
  %38 = load i32, i32* %lba, align 4
  %inc51 = add i32 %38, 1
  store i32 %inc51, i32* %lba, align 4
  br label %while.cond35, !llvm.loop !7

while.end52:                                      ; preds = %while.cond35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp53 = icmp ne %struct._IO_FILE* %39, %40
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %while.end52
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call56 = call i32 @fclose(%struct._IO_FILE* %41)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %while.end52
  %42 = load i32, i32* %rv, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end57, %if.then18
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
