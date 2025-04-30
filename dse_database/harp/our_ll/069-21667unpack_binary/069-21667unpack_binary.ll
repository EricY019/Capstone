; ModuleID = 'code/069-21667unpack_binary.c'
source_filename = "code/069-21667unpack_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [47 x i8] c"\0AUsage:\0A   %s <input file> <output directory>\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s[%04d]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"(out_file = fopen(out_fname, \22wb\22)) != ((void*)0)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"code/069-21667unpack_binary.c\00", align 1
@__PRETTY_FUNCTION__.unpackBinaryFile = private unnamed_addr constant [43 x i8] c"void unpackBinaryFile(FILE *, char *, int)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"[%d] - O:0x%04x, S:0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"(file_buffer = malloc(entry_size)) != ((void*)0)\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Offset list ends at: 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Number of entries: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"(in_file = fopen(in_fname, \22rb\22)) != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.runProgram = private unnamed_addr constant [32 x i8] c"void runProgram(char *, char *)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"outs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUsage(i8* %fname) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i8*, i8** %fname.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %0)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unpackBinaryFile(%struct._IO_FILE* %in_file, i8* %out_dirname, i32 %cur_entry) #0 {
entry:
  %in_file.addr = alloca %struct._IO_FILE*, align 8
  %out_dirname.addr = alloca i8*, align 8
  %cur_entry.addr = alloca i32, align 4
  %out_file = alloca %struct._IO_FILE*, align 8
  %out_fname = alloca [256 x i8], align 16
  %file_buffer = alloca i8*, align 8
  %entry_offset = alloca i32, align 4
  %entry_size = alloca i32, align 4
  store %struct._IO_FILE* %in_file, %struct._IO_FILE** %in_file.addr, align 8
  store i8* %out_dirname, i8** %out_dirname.addr, align 8
  store i32 %cur_entry, i32* %cur_entry.addr, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %out_fname, i64 0, i64 0
  %0 = load i8*, i8** %out_dirname.addr, align 8
  %1 = load i32, i32* %cur_entry.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %0, i32 %1) #5
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %out_fname, i64 0, i64 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %out_file, align 8
  %cmp = icmp ne %struct._IO_FILE* %call2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.unpackBinaryFile, i64 0, i64 0)) #6
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file.addr, align 8
  %4 = load i32, i32* %cur_entry.addr, align 4
  %mul = mul nsw i32 8, %4
  %conv = sext i32 %mul to i64
  %call3 = call i32 @fseek(%struct._IO_FILE* %3, i64 %conv, i32 0)
  %5 = bitcast i32* %entry_offset to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file.addr, align 8
  %call4 = call i64 @fread(i8* %5, i64 4, i64 1, %struct._IO_FILE* %6)
  %7 = bitcast i32* %entry_size to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file.addr, align 8
  %call5 = call i64 @fread(i8* %7, i64 4, i64 1, %struct._IO_FILE* %8)
  %9 = load i32, i32* %cur_entry.addr, align 4
  %10 = load i32, i32* %entry_offset, align 4
  %11 = load i32, i32* %entry_size, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  %12 = load i32, i32* %entry_size, align 4
  %conv7 = sext i32 %12 to i64
  %call8 = call noalias align 16 i8* @malloc(i64 %conv7) #5
  store i8* %call8, i8** %file_buffer, align 8
  %cmp9 = icmp ne i8* %call8, null
  br i1 %cmp9, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.unpackBinaryFile, i64 0, i64 0)) #6
  unreachable

13:                                               ; No predecessors!
  br label %cond.end13

cond.end13:                                       ; preds = %13, %cond.true11
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file.addr, align 8
  %15 = load i32, i32* %entry_offset, align 4
  %conv14 = sext i32 %15 to i64
  %call15 = call i32 @fseek(%struct._IO_FILE* %14, i64 %conv14, i32 0)
  %16 = load i8*, i8** %file_buffer, align 8
  %17 = load i32, i32* %entry_size, align 4
  %conv16 = sext i32 %17 to i64
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file.addr, align 8
  %call17 = call i64 @fread(i8* %16, i64 %conv16, i64 1, %struct._IO_FILE* %18)
  %19 = load i8*, i8** %file_buffer, align 8
  %20 = load i32, i32* %entry_size, align 4
  %conv18 = sext i32 %20 to i64
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %call19 = call i64 @fwrite(i8* %19, i64 %conv18, i64 1, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %22)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getNumEntries(%struct._IO_FILE* %in_file) #0 {
entry:
  %in_file.addr = alloca %struct._IO_FILE*, align 8
  %bin_cache = alloca [4 x i8], align 1
  %offset_cache = alloca i32*, align 8
  %num_entries = alloca i32, align 4
  store %struct._IO_FILE* %in_file, %struct._IO_FILE** %in_file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file.addr, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 0, i32 0)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bin_cache, i64 0, i64 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file.addr, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 4, %struct._IO_FILE* %1)
  %2 = bitcast [4 x i8]* %bin_cache to i32*
  store i32* %2, i32** %offset_cache, align 8
  %3 = load i32*, i32** %offset_cache, align 8
  %4 = load i32, i32* %3, align 4
  %div = sdiv i32 %4, 8
  store i32 %div, i32* %num_entries, align 4
  %5 = load i32*, i32** %offset_cache, align 8
  %6 = load i32, i32* %5, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %6)
  %7 = load i32, i32* %num_entries, align 4
  %sub = sub nsw i32 %7, 1
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %sub)
  %8 = load i32, i32* %num_entries, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runProgram(i8* %in_fname, i8* %out_dir) #0 {
entry:
  %in_fname.addr = alloca i8*, align 8
  %out_dir.addr = alloca i8*, align 8
  %in_file = alloca %struct._IO_FILE*, align 8
  %out_dirname = alloca [256 x i8], align 16
  %cur_entry = alloca i32, align 4
  %end_entry = alloca i32, align 4
  store i8* %in_fname, i8** %in_fname.addr, align 8
  store i8* %out_dir, i8** %out_dir.addr, align 8
  %0 = load i8*, i8** %out_dir.addr, align 8
  %1 = load i8*, i8** %out_dir.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %sub = sub i64 %call, 1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %out_dirname, i64 0, i64 0
  %3 = load i8*, i8** %out_dir.addr, align 8
  %4 = load i8*, i8** %in_fname.addr, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %3, i8* %4) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %out_dirname, i64 0, i64 0
  %5 = load i8*, i8** %out_dir.addr, align 8
  %6 = load i8*, i8** %in_fname.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %5, i32 47, i8* %6) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ %call4, %cond.false ]
  %7 = load i8*, i8** %in_fname.addr, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %in_file, align 8
  %cmp6 = icmp ne %struct._IO_FILE* %call5, null
  br i1 %cmp6, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.runProgram, i64 0, i64 0)) #6
  unreachable

8:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %8, %cond.true8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file, align 8
  %call11 = call i32 @getNumEntries(%struct._IO_FILE* %9)
  store i32 %call11, i32* %end_entry, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file, align 8
  %call12 = call i32 @fseek(%struct._IO_FILE* %10, i64 4, i32 1)
  store i32 1, i32* %cur_entry, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end10
  %11 = load i32, i32* %cur_entry, align 4
  %12 = load i32, i32* %end_entry, align 4
  %cmp13 = icmp slt i32 %11, %12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file, align 8
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %out_dirname, i64 0, i64 0
  %14 = load i32, i32* %cur_entry, align 4
  call void @unpackBinaryFile(%struct._IO_FILE* %13, i8* %arraydecay15, i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %cur_entry, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %cur_entry, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %16)
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

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
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 2
  %4 = load i8*, i8** %arrayidx1, align 8
  call void @runProgram(i8* %2, i8* %4)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx3, align 8
  call void @runProgram(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb4
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx5, align 8
  call void @printUsage(i8* %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
