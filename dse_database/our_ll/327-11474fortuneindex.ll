; ModuleID = 'code/327-11474fortuneindex.c'
source_filename = "code/327-11474fortuneindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @indexfile(%struct._IO_FILE* %in, %struct._IO_FILE* %out) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  %ch0 = alloca i32, align 4
  %ch1 = alloca i32, align 4
  %pos = alloca i64, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i64 0, i64* %pos, align 8
  store i32 0, i32* %ch0, align 4
  store i32 0, i32* %ch1, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %ch1, align 4
  %cmp1 = icmp eq i32 %1, 10
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load i32, i32* %ch1, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %while.body
  %3 = load i32, i32* %ch0, align 4
  %cmp3 = icmp eq i32 %3, 37
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load i32, i32* %ch, align 4
  %cmp5 = icmp eq i32 %4, 10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %5 = bitcast i64* %pos to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call6 = call i64 @fwrite(i8* %5, i64 1, i64 8, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call7 = call i64 @ftell(%struct._IO_FILE* %7)
  store i64 %call7, i64* %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %lor.lhs.false
  %8 = load i32, i32* %ch0, align 4
  store i32 %8, i32* %ch1, align 4
  %9 = load i32, i32* %ch, align 4
  store i32 %9, i32* %ch0, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %10 = bitcast i64* %pos to i8*
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call8 = call i64 @fwrite(i8* %10, i64 1, i64 8, %struct._IO_FILE* %11)
  ret void
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @indexfile(%struct._IO_FILE* %1, %struct._IO_FILE* %2)
  br label %if.end16

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.then11, %if.then5, %if.then2, %if.else
  %3 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %4 = load i8*, i8** %incdec.ptr, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8**, i8*** %argv.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #3
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @indexfile(%struct._IO_FILE* %7, %struct._IO_FILE* %8)
  br label %while.cond, !llvm.loop !6

if.end:                                           ; preds = %while.body
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %in, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %11, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %12 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr6, i8*** %argv.addr, align 8
  %13 = load i8*, i8** %12, align 8
  call void @perror(i8* %13)
  br label %while.cond, !llvm.loop !6

if.end7:                                          ; preds = %if.end
  %14 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %incdec.ptr8, i8*** %argv.addr, align 8
  %15 = load i8*, i8** %incdec.ptr8, align 8
  %call9 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %out, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %16, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %17 = load i8**, i8*** %argv.addr, align 8
  %18 = load i8*, i8** %17, align 8
  call void @perror(i8* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %while.cond, !llvm.loop !6

if.end13:                                         ; preds = %if.end7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @indexfile(%struct._IO_FILE* %20, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %23)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end16

if.end16:                                         ; preds = %while.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local void @perror(i8*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

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
