; ModuleID = 'code/157-5749lictool.c'
source_filename = "code/157-5749lictool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [187 x i8] c"lictool - PS1 license file manipulation tool\0Ausage: lictool <input> <output> <options>\0A\0AOptions:\0A -tmd=<file>      TMD file for boot logo\0A -removelogo      Remove logo from license file\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not open input license file! Aborting.\0A\00", align 1
@lic_buffer = dso_local global [37632 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"-tmd=\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Could not open TMD file %s. Ignoring option.\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"-removelogo\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Could not open output file path for writing! Aborting.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_usage() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %sz = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @display_usage()
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i64 @fread(i8* getelementptr inbounds ([37632 x i8], [37632 x i8]* @lic_buffer, i64 0, i64 0), i64 1, i64 37632, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %5)
  store i32 3, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %if.end4
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i32, i32* %x, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %10 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 5) #3
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else38

if.then11:                                        ; preds = %for.body
  %11 = load i8**, i8*** %argv.addr, align 8
  %12 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds i8*, i8** %11, i64 %idxprom12
  %13 = load i8*, i8** %arrayidx13, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 5
  %call14 = call %struct._IO_FILE* @fopen(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %f, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then11
  %15 = load i8**, i8*** %argv.addr, align 8
  %16 = load i32, i32* %x, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds i8*, i8** %15, i64 %idxprom17
  %17 = load i8*, i8** %arrayidx18, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %17, i64 5
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %add.ptr19)
  br label %if.end37

if.else:                                          ; preds = %if.then11
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call21 = call i32 @fseek(%struct._IO_FILE* %18, i64 0, i32 2)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call22 = call i64 @ftell(%struct._IO_FILE* %19)
  %conv = trunc i64 %call22 to i32
  store i32 %conv, i32* %sz, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call23 = call i32 @fseek(%struct._IO_FILE* %20, i64 0, i32 0)
  store i32 11784, i32* %z, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %if.else
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %sz, align 4
  %cmp25 = icmp slt i32 %21, %22
  br i1 %cmp25, label %for.body27, label %for.end

for.body27:                                       ; preds = %for.cond24
  %23 = load i32, i32* %z, align 4
  %24 = load i32, i32* %z, align 4
  %div = sdiv i32 %24, 2352
  %mul = mul nsw i32 %div, 2352
  %sub = sub nsw i32 %23, %mul
  %cmp28 = icmp eq i32 %sub, 2072
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.body27
  %25 = load i32, i32* %z, align 4
  %add = add nsw i32 %25, 304
  store i32 %add, i32* %z, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %for.body27
  %26 = load i32, i32* %z, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [37632 x i8], [37632 x i8]* @lic_buffer, i64 0, i64 %idxprom32
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call34 = call i64 @fread(i8* %arrayidx33, i64 1, i64 1, %struct._IO_FILE* %27)
  %28 = load i32, i32* %z, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %z, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %29 = load i32, i32* %y, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %y, align 4
  br label %for.cond24, !llvm.loop !4

for.end:                                          ; preds = %for.cond24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call36 = call i32 @fclose(%struct._IO_FILE* %30)
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.then16
  br label %if.end58

if.else38:                                        ; preds = %for.body
  %31 = load i8**, i8*** %argv.addr, align 8
  %32 = load i32, i32* %x, align 4
  %idxprom39 = sext i32 %32 to i64
  %arrayidx40 = getelementptr inbounds i8*, i8** %31, i64 %idxprom39
  %33 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 11) #3
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end57

if.then44:                                        ; preds = %if.else38
  store i32 11784, i32* %z, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc52, %if.then44
  %34 = load i32, i32* %y, align 4
  %cmp46 = icmp slt i32 %34, 12
  br i1 %cmp46, label %for.body48, label %for.end54

for.body48:                                       ; preds = %for.cond45
  %35 = load i32, i32* %z, align 4
  %36 = load i32, i32* %y, align 4
  %add49 = add nsw i32 %35, %36
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [37632 x i8], [37632 x i8]* @lic_buffer, i64 0, i64 %idxprom50
  store i8 0, i8* %arrayidx51, align 1
  br label %for.inc52

for.inc52:                                        ; preds = %for.body48
  %37 = load i32, i32* %y, align 4
  %inc53 = add nsw i32 %37, 1
  store i32 %inc53, i32* %y, align 4
  br label %for.cond45, !llvm.loop !6

for.end54:                                        ; preds = %for.cond45
  %38 = load i32, i32* %z, align 4
  %idxprom55 = sext i32 %38 to i64
  %arrayidx56 = getelementptr inbounds [37632 x i8], [37632 x i8]* @lic_buffer, i64 0, i64 %idxprom55
  store i8 65, i8* %arrayidx56, align 1
  br label %if.end57

if.end57:                                         ; preds = %for.end54, %if.else38
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end37
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %39 = load i32, i32* %x, align 4
  %inc60 = add nsw i32 %39, 1
  store i32 %inc60, i32* %x, align 4
  br label %for.cond, !llvm.loop !7

for.end61:                                        ; preds = %for.cond
  %40 = load i8**, i8*** %argv.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %40, i64 2
  %41 = load i8*, i8** %arrayidx62, align 8
  %call63 = call %struct._IO_FILE* @fopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %call63, %struct._IO_FILE** %f, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp64 = icmp eq %struct._IO_FILE* %42, null
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %for.end61
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %for.end61
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call69 = call i64 @fwrite(i8* getelementptr inbounds ([37632 x i8], [37632 x i8]* @lic_buffer, i64 0, i64 0), i64 1, i64 37632, %struct._IO_FILE* %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call70 = call i32 @fclose(%struct._IO_FILE* %44)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end68, %if.then66, %if.then2, %if.then
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare dso_local i64 @ftell(%struct._IO_FILE*) #1

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
