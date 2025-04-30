; ModuleID = 'code/269-32268bin2c.c'
source_filename = "code/269-32268bin2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"error: can't open input or output file\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"const int %s_size = %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"const unsigned char %s_data[%d] =\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"{\0A\09\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"usage: bin2c <input> <output> [prefix]\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert(i8* %ifn, i8* %ofn, i8* %prefix) #0 {
entry:
  %ifn.addr = alloca i8*, align 8
  %ofn.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %i = alloca %struct._IO_FILE*, align 8
  %o = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [2048 x i8], align 16
  %red = alloca i32, align 4
  %left = alloca i32, align 4
  %lc = alloca i32, align 4
  %q = alloca i32, align 4
  %buf = alloca [8192 x i8], align 16
  store i8* %ifn, i8** %ifn.addr, align 8
  store i8* %ofn, i8** %ofn.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load i8*, i8** %ifn.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %i, align 8
  %1 = load i8*, i8** %ofn.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %o, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %i, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %i, align 8
  %call4 = call i32 @fseek(%struct._IO_FILE* %4, i64 0, i32 2)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %i, align 8
  %call5 = call i64 @ftell(%struct._IO_FILE* %5)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %left, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %i, align 8
  %call6 = call i32 @fseek(%struct._IO_FILE* %6, i64 0, i32 0)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i64 0, i64 0
  call void @setbuf(%struct._IO_FILE* %7, i8* %arraydecay) #3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %9 = load i8*, i8** %prefix.addr, align 8
  %10 = load i32, i32* %left, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %9, i32 %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %12 = load i8*, i8** %prefix.addr, align 8
  %13 = load i32, i32* %left, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %12, i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %lc, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %15 = load i32, i32* %left, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i64 0, i64 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %i, align 8
  %call12 = call i64 @fread(i8* %arraydecay11, i64 1, i64 2048, %struct._IO_FILE* %16)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %red, align 4
  %17 = load i32, i32* %red, align 4
  %18 = load i32, i32* %left, align 4
  %sub = sub nsw i32 %18, %17
  store i32 %sub, i32* %left, align 4
  store i32 0, i32* %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %19 = load i32, i32* %q, align 4
  %20 = load i32, i32* %red, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %22 = load i32, i32* %q, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i64 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %conv16 = zext i8 %23 to i32
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %conv16)
  %24 = load i32, i32* %lc, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %lc, align 4
  %cmp18 = icmp sge i32 %inc, 8
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.body
  store i32 0, i32* %lc, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %26 = load i32, i32* %q, align 4
  %inc23 = add nsw i32 %26, 1
  store i32 %inc23, i32* %q, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %i, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %o, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %29)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare dso_local i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %prefix = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp ne i32 %2, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %argc.addr, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 3
  %5 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %cond.false ]
  store i8* %cond, i8** %prefix, align 8
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx3, align 8
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 2
  %9 = load i8*, i8** %arrayidx4, align 8
  %10 = load i8*, i8** %prefix, align 8
  call void @convert(i8* %7, i8* %9, i8* %10)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
