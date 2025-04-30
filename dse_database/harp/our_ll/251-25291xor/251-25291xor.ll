; ModuleID = 'code/251-25291xor.c'
source_filename = "code/251-25291xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"CANT OPEN %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"USAGE:\0A xor file0 file1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @size(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %sz = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 0, i32 2)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @ftell(%struct._IO_FILE* %1)
  store i64 %call1, i64* %sz, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* %2, i64 0, i32 0)
  %3 = load i64, i64* %sz, align 8
  ret i64 %3
}

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare dso_local i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @min(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply(i8* %cyphername, i8* %filename) #0 {
entry:
  %cyphername.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %cypher = alloca %struct._IO_FILE*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  %num_bytes = alloca i64, align 8
  %f = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %cyphername, i8** %cyphername.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %cyphername.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %cypher, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %cypher, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %cyphername.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %5 = load i8*, i8** %filename.addr, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  store i64 0, i64* %i, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call7 = call i64 @size(%struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %cypher, align 8
  %call8 = call i64 @size(%struct._IO_FILE* %7)
  %call9 = call i64 @min(i64 %call7, i64 %call8)
  store i64 %call9, i64* %num_bytes, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %num_bytes, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call10 = call i32 @fgetc(%struct._IO_FILE* %10)
  store i32 %call10, i32* %f, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %cypher, align 8
  %call11 = call i32 @fgetc(%struct._IO_FILE* %11)
  store i32 %call11, i32* %c, align 4
  %12 = load i32, i32* %f, align 4
  %13 = load i32, i32* %c, align 4
  %xor = xor i32 %12, %13
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %xor)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eq(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* %1) #3
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %cc, i8** %cv) #0 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca i32, align 4
  %cv.addr = alloca i8**, align 8
  %c = alloca i8*, align 8
  %f = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %cc, i32* %cc.addr, align 4
  store i8** %cv, i8*** %cv.addr, align 8
  %0 = load i32, i32* %cc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %cc.addr, align 4
  %1 = load i32, i32* %cc.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %cv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %c, align 8
  %4 = load i8**, i8*** %cv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx1, align 8
  store i8* %5, i8** %f, align 8
  %6 = load i8*, i8** %c, align 8
  %7 = load i8*, i8** %f, align 8
  call void @apply(i8* %6, i8* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @usage()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

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
