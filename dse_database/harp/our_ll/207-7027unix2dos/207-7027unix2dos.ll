; ModuleID = 'code/207-7027unix2dos.c'
source_filename = "code/207-7027unix2dos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"realloc fatal error!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"open file %s error!\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"malloc error!\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"malloc dest buf error!\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"load file error! ret:%zu\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"fwrite dest error!ret:%zu\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"unix2dos ok, len:%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @realloc_more(i8** %pbuf, i32 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %pbuf.addr = alloca i8**, align 8
  %new_size.addr = alloca i32, align 4
  %temp = alloca i8*, align 8
  store i8** %pbuf, i8*** %pbuf.addr, align 8
  store i32 %new_size, i32* %new_size.addr, align 4
  %0 = load i8**, i8*** %pbuf.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i32, i32* %new_size.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call align 16 i8* @realloc(i8* %1, i64 %conv) #3
  store i8* %call, i8** %temp, align 8
  %3 = load i8*, i8** %temp, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %temp, align 8
  %5 = load i8**, i8*** %pbuf.addr, align 8
  store i8* %4, i8** %5, align 8
  %6 = load i8*, i8** %temp, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
}

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unix2dos(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %file = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %src_len = alloca i64, align 8
  %dest_len = alloca i64, align 8
  %ret = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i8*, align 8
  %temp49 = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %file, align 8
  %3 = load i8*, i8** %file, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %5 = load i8*, i8** %file, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %5)
  br label %error_exit

if.end3:                                          ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @fseek(%struct._IO_FILE* %6, i64 0, i32 2)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i64 @ftell(%struct._IO_FILE* %7)
  store i64 %call5, i64* %src_len, align 8
  %8 = load i64, i64* %src_len, align 8
  %call6 = call noalias align 16 i8* @malloc(i64 %8) #3
  store i8* %call6, i8** %src, align 8
  %9 = load i8*, i8** %src, align 8
  %tobool7 = icmp ne i8* %9, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end3
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %error_alloc_src

if.end10:                                         ; preds = %if.end3
  %10 = load i64, i64* %src_len, align 8
  %call11 = call noalias align 16 i8* @malloc(i64 %10) #3
  store i8* %call11, i8** %dest, align 8
  %11 = load i8*, i8** %dest, align 8
  %tobool12 = icmp ne i8* %11, null
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %error_alloc_dest

if.end15:                                         ; preds = %if.end10
  %12 = load i64, i64* %src_len, align 8
  store i64 %12, i64* %dest_len, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @fseek(%struct._IO_FILE* %13, i64 0, i32 0)
  %14 = load i8*, i8** %src, align 8
  %15 = load i64, i64* %src_len, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i64 @fread(i8* %14, i64 1, i64 %15, %struct._IO_FILE* %16)
  store i64 %call17, i64* %ret, align 8
  %17 = load i64, i64* %ret, align 8
  %18 = load i64, i64* %src_len, align 8
  %cmp18 = icmp ne i64 %17, %18
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  %19 = load i64, i64* %ret, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %19)
  br label %error_load_file

if.end21:                                         ; preds = %if.end15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %20 = load i32, i32* %i, align 4
  %conv = sext i32 %20 to i64
  %21 = load i64, i64* %src_len, align 8
  %cmp22 = icmp slt i64 %conv, %21
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %src, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %24 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp ne i32 %conv25, 10
  br i1 %cmp26, label %if.then28, label %if.else44

if.then28:                                        ; preds = %for.body
  %25 = load i32, i32* %j, align 4
  %conv29 = sext i32 %25 to i64
  %26 = load i64, i64* %dest_len, align 8
  %cmp30 = icmp eq i64 %conv29, %26
  br i1 %cmp30, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.then28
  %27 = load i64, i64* %dest_len, align 8
  %mul = mul nsw i64 %27, 2
  %conv33 = trunc i64 %mul to i32
  %call34 = call i8* @realloc_more(i8** %dest, i32 %conv33)
  store i8* %call34, i8** %temp, align 8
  %28 = load i8*, i8** %temp, align 8
  %tobool35 = icmp ne i8* %28, null
  br i1 %tobool35, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.then32
  br label %error_load_file

if.else:                                          ; preds = %if.then32
  %29 = load i8*, i8** %temp, align 8
  store i8* %29, i8** %dest, align 8
  %30 = load i64, i64* %dest_len, align 8
  %mul37 = mul nsw i64 %30, 2
  store i64 %mul37, i64* %dest_len, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then28
  %31 = load i8*, i8** %src, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %31, i64 %idxprom40
  %33 = load i8, i8* %arrayidx41, align 1
  %34 = load i8*, i8** %dest, align 8
  %35 = load i32, i32* %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i64 %idxprom42
  store i8 %33, i8* %arrayidx43, align 1
  br label %if.end65

if.else44:                                        ; preds = %for.body
  %36 = load i32, i32* %j, align 4
  %conv45 = sext i32 %36 to i64
  %37 = load i64, i64* %dest_len, align 8
  %cmp46 = icmp eq i64 %conv45, %37
  br i1 %cmp46, label %if.then48, label %if.end58

if.then48:                                        ; preds = %if.else44
  %38 = load i64, i64* %dest_len, align 8
  %mul50 = mul nsw i64 %38, 2
  %conv51 = trunc i64 %mul50 to i32
  %call52 = call i8* @realloc_more(i8** %dest, i32 %conv51)
  store i8* %call52, i8** %temp49, align 8
  %39 = load i8*, i8** %temp49, align 8
  %tobool53 = icmp ne i8* %39, null
  br i1 %tobool53, label %if.else55, label %if.then54

if.then54:                                        ; preds = %if.then48
  br label %error_load_file

if.else55:                                        ; preds = %if.then48
  %40 = load i8*, i8** %temp49, align 8
  store i8* %40, i8** %dest, align 8
  %41 = load i64, i64* %dest_len, align 8
  %mul56 = mul nsw i64 %41, 2
  store i64 %mul56, i64* %dest_len, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else55
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.else44
  %42 = load i8*, i8** %dest, align 8
  %43 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %43, 1
  store i32 %inc59, i32* %j, align 4
  %idxprom60 = sext i32 %43 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %42, i64 %idxprom60
  store i8 13, i8* %arrayidx61, align 1
  %44 = load i8*, i8** %dest, align 8
  %45 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %45, 1
  store i32 %inc62, i32* %j, align 4
  %idxprom63 = sext i32 %45 to i64
  %arrayidx64 = getelementptr inbounds i8, i8* %44, i64 %idxprom63
  store i8 10, i8* %arrayidx64, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.end58, %if.end39
  br label %for.inc

for.inc:                                          ; preds = %if.end65
  %46 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %46, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call67 = call i32 @fseek(%struct._IO_FILE* %47, i64 0, i32 0)
  %48 = load i8*, i8** %dest, align 8
  %49 = load i32, i32* %j, align 4
  %conv68 = sext i32 %49 to i64
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call69 = call i64 @fwrite(i8* %48, i64 1, i64 %conv68, %struct._IO_FILE* %50)
  store i64 %call69, i64* %ret, align 8
  %51 = load i64, i64* %ret, align 8
  %52 = load i32, i32* %j, align 4
  %conv70 = sext i32 %52 to i64
  %cmp71 = icmp ne i64 %51, %conv70
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %for.end
  %53 = load i64, i64* %ret, align 8
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %53)
  br label %error_load_file

if.end75:                                         ; preds = %for.end
  %54 = load i32, i32* %j, align 4
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  br label %error_load_file

error_load_file:                                  ; preds = %if.end75, %if.then73, %if.then54, %if.then36, %if.then19
  %55 = load i8*, i8** %dest, align 8
  call void @free(i8* %55) #3
  br label %error_alloc_dest

error_alloc_dest:                                 ; preds = %error_load_file, %if.then13
  %56 = load i8*, i8** %src, align 8
  call void @free(i8* %56) #3
  br label %error_alloc_src

error_alloc_src:                                  ; preds = %error_alloc_dest, %if.then8
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call77 = call i32 @fclose(%struct._IO_FILE* %57)
  br label %error_exit

error_exit:                                       ; preds = %error_alloc_src, %if.then1
  br label %return

return:                                           ; preds = %error_exit, %if.then
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare dso_local i64 @ftell(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @unix2dos(i32 %0, i8** %1)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
