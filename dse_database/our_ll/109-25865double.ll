; ModuleID = 'code/109-25865double.c'
source_filename = "code/109-25865double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: can't open '%s' (%s)\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@linenum = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx2, align 8
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %9, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32* @__errno_location() #5
  %12 = load i32, i32* %call5, align 4
  %call6 = call i8* @strerror(i32 %12) #6
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %8, i8* %11, i8* %call6)
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.body
  %13 = load i8**, i8*** %argv.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %13, i64 %idxprom8
  %15 = load i8*, i8** %arrayidx9, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @doubleword(i8* %15, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %17)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %argc.addr, align 4
  %cmp11 = icmp eq i32 %19, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @doubleword(i8* null, %struct._IO_FILE* %20)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doubleword(i8* %name, %struct._IO_FILE* %fp) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %prev = alloca [128 x i8], align 16
  %word = alloca [128 x i8], align 16
  store i8* %name, i8** %name.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 1, i32* @linenum, align 4
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %prev, i64 0, i64 0
  store i8 0, i8* %arrayidx, align 16
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %word, i64 0, i64 0
  %call = call i32 @getword(%struct._IO_FILE* %0, i8* %arraydecay, i32 128)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i16** @__ctype_b_loc() #5
  %1 = load i16*, i16** %call1, align 8
  %arrayidx2 = getelementptr inbounds [128 x i8], [128 x i8]* %word, i64 0, i64 0
  %2 = load i8, i8* %arrayidx2, align 16
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx3, align 2
  %conv4 = zext i16 %3 to i32
  %and = and i32 %conv4, 1024
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %while.body
  %arraydecay6 = getelementptr inbounds [128 x i8], [128 x i8]* %prev, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [128 x i8], [128 x i8]* %word, i64 0, i64 0
  %call8 = call i32 @strcmp(i8* %arraydecay6, i8* %arraydecay7) #7
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %name.addr, align 8
  %tobool10 = icmp ne i8* %4, null
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %5 = load i8*, i8** %name.addr, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  %6 = load i32, i32* @linenum, align 4
  %arraydecay13 = getelementptr inbounds [128 x i8], [128 x i8]* %word, i64 0, i64 0
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %6, i8* %arraydecay13)
  br label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true, %while.body
  %arraydecay16 = getelementptr inbounds [128 x i8], [128 x i8]* %prev, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [128 x i8], [128 x i8]* %word, i64 0, i64 0
  %call18 = call i8* @strcpy(i8* %arraydecay16, i8* %arraydecay17) #6
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getword(%struct._IO_FILE* %fp, i8* %buf, i32 %size) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %call1 = call i16** @__ctype_b_loc() #5
  %2 = load i16*, i16** %call1, align 8
  %3 = load i32, i32* %c, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %6, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* @linenum, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @linenum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  store i32 %call4, i32* %c, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc26, %for.end
  %9 = load i32, i32* %c, align 4
  %cmp6 = icmp ne i32 %9, -1
  br i1 %cmp6, label %land.rhs8, label %land.end15

land.rhs8:                                        ; preds = %for.cond5
  %call9 = call i16** @__ctype_b_loc() #5
  %10 = load i16*, i16** %call9, align 8
  %11 = load i32, i32* %c, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds i16, i16* %10, i64 %idxprom10
  %12 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %12 to i32
  %and13 = and i32 %conv12, 8192
  %tobool14 = icmp ne i32 %and13, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end15

land.end15:                                       ; preds = %land.rhs8, %for.cond5
  %13 = phi i1 [ false, %for.cond5 ], [ %lnot, %land.rhs8 ]
  br i1 %13, label %for.body16, label %for.end28

for.body16:                                       ; preds = %land.end15
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %15, 1
  %cmp17 = icmp slt i32 %14, %sub
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %for.body16
  %16 = load i32, i32* %c, align 4
  %call20 = call i32 @tolower(i32 %16) #7
  %conv21 = trunc i32 %call20 to i8
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %18, 1
  store i32 %inc22, i32* %i, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 %idxprom23
  store i8 %conv21, i8* %arrayidx24, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %for.body16
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call27 = call i32 @_IO_getc(%struct._IO_FILE* %19)
  store i32 %call27, i32* %c, align 4
  br label %for.cond5, !llvm.loop !8

for.end28:                                        ; preds = %land.end15
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %size.addr, align 4
  %cmp29 = icmp slt i32 %20, %21
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %for.end28
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %22, i64 %idxprom32
  store i8 0, i8* %arrayidx33, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %for.end28
  %24 = load i32, i32* %c, align 4
  %cmp35 = icmp ne i32 %24, -1
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %25 = load i32, i32* %c, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call38 = call i32 @ungetc(i32 %25, %struct._IO_FILE* %26)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34
  %27 = load i8*, i8** %buf.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %28 to i32
  %cmp42 = icmp ne i32 %conv41, 0
  %conv43 = zext i1 %cmp42 to i32
  ret i32 %conv43
}

declare dso_local i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32) #4

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!8 = distinct !{!8, !5}
