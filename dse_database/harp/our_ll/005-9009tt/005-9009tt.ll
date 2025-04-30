; ModuleID = 'code/005-9009tt.c'
source_filename = "code/005-9009tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tt.c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %size = alloca i32, align 4
  %size_all = alloca i32, align 4
  %i = alloca i32, align 4
  %in13 = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %size18 = alloca i32, align 4
  %ch = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %in, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* %3, i64 -4, i32 2)
  %4 = bitcast i32* %size to i8*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call3 = call i64 @fread(i8* %4, i64 1, i64 4, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call4 = call i32 @fseek(%struct._IO_FILE* %6, i64 0, i32 2)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call5 = call i64 @ftell(%struct._IO_FILE* %7)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %size_all, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %9 = load i32, i32* %size, align 4
  %conv6 = sext i32 %9 to i64
  %call7 = call i32 @fseek(%struct._IO_FILE* %8, i64 %conv6, i32 0)
  %10 = load i32, i32* %size, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %size_all, align 4
  %sub = sub nsw i32 %12, 4
  %cmp8 = icmp slt i32 %11, %sub
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call10 = call i32 @fgetc(%struct._IO_FILE* %13)
  %call11 = call i32 @putchar(i32 %call10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %15)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call14 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %in13, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in13, align 8
  %tobool15 = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool15, label %if.then16, label %if.end31

if.then16:                                        ; preds = %if.end
  %call17 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %call17, %struct._IO_FILE** %out, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call19 = call i64 @ftell(%struct._IO_FILE* %17)
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, i32* %size18, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %in13, align 8
  %call21 = call i32 @fgetc(%struct._IO_FILE* %18)
  %conv22 = trunc i32 %call21 to i8
  store i8 %conv22, i8* %ch, align 1
  %conv23 = sext i8 %conv22 to i32
  %cmp24 = icmp ne i32 %conv23, -1
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8, i8* %ch, align 1
  %conv26 = sext i8 %19 to i32
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call27 = call i32 @fputc(i32 %conv26, %struct._IO_FILE* %20)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %21 = bitcast i32* %size18 to i8*
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call28 = call i64 @fwrite(i8* %21, i64 1, i64 4, %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %in13, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* %24)
  br label %if.end31

if.end31:                                         ; preds = %while.end, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %for.end
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i64 @ftell(%struct._IO_FILE*) #2

declare dso_local i32 @putchar(i32) #2

declare dso_local i32 @fgetc(%struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
