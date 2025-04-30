; ModuleID = 'code/012-6739qt-faststart.c'
source_filename = "code/012-6739qt-faststart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Usage: qt-faststart <infile.mov> <outfile.mov>\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"input and output files need to be different\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"could not allocate %lu byte for ftyp atom\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%c%c%c%c %10lu %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"encountered non-QT top-level atom (is this a Quicktime file?)\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"last atom in file was not a moov atom\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"could not allocate %lu byte for moov atom\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"this utility does not support compressed moov atoms yet\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c" patching stco atom...\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" bad atom size\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c" patching co64 atom...\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" writing ftyp atom...\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c" writing moov atom...\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c" copying rest of file...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %outfile = alloca %struct._IO_FILE*, align 8
  %atom_bytes = alloca [8 x i8], align 1
  %atom_type = alloca i32, align 4
  %atom_size = alloca i64, align 8
  %atom_offset = alloca i64, align 8
  %last_offset = alloca i64, align 8
  %moov_atom = alloca i8*, align 8
  %ftyp_atom = alloca i8*, align 8
  %moov_atom_size = alloca i64, align 8
  %ftyp_atom_size = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %offset_count = alloca i32, align 4
  %current_offset = alloca i64, align 8
  %start_offset = alloca i64, align 8
  %copy_buffer = alloca [1024 x i8], align 16
  %bytes_to_copy = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %infile, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %outfile, align 8
  store i32 0, i32* %atom_type, align 4
  store i64 0, i64* %atom_size, align 8
  store i64 0, i64* %atom_offset, align 8
  store i8* null, i8** %moov_atom, align 8
  store i8* null, i8** %ftyp_atom, align 8
  store i64 0, i64* %ftyp_atom_size, align 8
  store i64 0, i64* %start_offset, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 2
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* %4) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx6, align 8
  %call7 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %infile, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %tobool8 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx10, align 8
  call void @perror(i8* %10)
  br label %error_out

if.end11:                                         ; preds = %if.end5
  br label %while.cond

while.cond:                                       ; preds = %if.end162, %if.end11
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call12 = call i32 @feof(%struct._IO_FILE* %11) #5
  %tobool13 = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool13, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call14 = call i64 @fread(i8* %arraydecay, i64 8, i64 1, %struct._IO_FILE* %12)
  %cmp15 = icmp ne i64 %call14, 1
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  br label %while.end

if.end17:                                         ; preds = %while.body
  %arrayidx18 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx19 = getelementptr inbounds i8, i8* %arrayidx18, i64 0
  %13 = load i8, i8* %arrayidx19, align 1
  %conv = zext i8 %13 to i32
  %shl = shl i32 %conv, 24
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx21 = getelementptr inbounds i8, i8* %arrayidx20, i64 1
  %14 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %14 to i32
  %shl23 = shl i32 %conv22, 16
  %or = or i32 %shl, %shl23
  %arrayidx24 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx25 = getelementptr inbounds i8, i8* %arrayidx24, i64 2
  %15 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %15 to i32
  %shl27 = shl i32 %conv26, 8
  %or28 = or i32 %or, %shl27
  %arrayidx29 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx30 = getelementptr inbounds i8, i8* %arrayidx29, i64 3
  %16 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %16 to i32
  %or32 = or i32 %or28, %conv31
  %conv33 = zext i32 %or32 to i64
  store i64 %conv33, i64* %atom_size, align 8
  %arrayidx34 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 4
  %arrayidx35 = getelementptr inbounds i8, i8* %arrayidx34, i64 0
  %17 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %17 to i32
  %shl37 = shl i32 %conv36, 24
  %arrayidx38 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 4
  %arrayidx39 = getelementptr inbounds i8, i8* %arrayidx38, i64 1
  %18 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %18 to i32
  %shl41 = shl i32 %conv40, 16
  %or42 = or i32 %shl37, %shl41
  %arrayidx43 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 4
  %arrayidx44 = getelementptr inbounds i8, i8* %arrayidx43, i64 2
  %19 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %19 to i32
  %shl46 = shl i32 %conv45, 8
  %or47 = or i32 %or42, %shl46
  %arrayidx48 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 4
  %arrayidx49 = getelementptr inbounds i8, i8* %arrayidx48, i64 3
  %20 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %20 to i32
  %or51 = or i32 %or47, %conv50
  store i32 %or51, i32* %atom_type, align 4
  %21 = load i32, i32* %atom_type, align 4
  %cmp52 = icmp eq i32 %21, 1718909296
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end17
  %22 = load i64, i64* %atom_size, align 8
  store i64 %22, i64* %ftyp_atom_size, align 8
  %23 = load i8*, i8** %ftyp_atom, align 8
  call void @free(i8* %23) #5
  %24 = load i64, i64* %ftyp_atom_size, align 8
  %call55 = call noalias align 16 i8* @malloc(i64 %24) #5
  store i8* %call55, i8** %ftyp_atom, align 8
  %25 = load i8*, i8** %ftyp_atom, align 8
  %tobool56 = icmp ne i8* %25, null
  br i1 %tobool56, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.then54
  %26 = load i64, i64* %atom_size, align 8
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %26)
  br label %error_out

if.end59:                                         ; preds = %if.then54
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call60 = call i32 @fseeko(%struct._IO_FILE* %27, i64 -8, i32 1)
  %28 = load i8*, i8** %ftyp_atom, align 8
  %29 = load i64, i64* %atom_size, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call61 = call i64 @fread(i8* %28, i64 %29, i64 1, %struct._IO_FILE* %30)
  %cmp62 = icmp ne i64 %call61, 1
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end59
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx65, align 8
  call void @perror(i8* %32)
  br label %error_out

if.end66:                                         ; preds = %if.end59
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call67 = call i64 @ftello(%struct._IO_FILE* %33)
  store i64 %call67, i64* %start_offset, align 8
  br label %if.end120

if.else:                                          ; preds = %if.end17
  %34 = load i64, i64* %atom_size, align 8
  %cmp68 = icmp eq i64 %34, 1
  br i1 %cmp68, label %if.then70, label %if.else116

if.then70:                                        ; preds = %if.else
  %arraydecay71 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call72 = call i64 @fread(i8* %arraydecay71, i64 8, i64 1, %struct._IO_FILE* %35)
  %cmp73 = icmp ne i64 %call72, 1
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then70
  br label %while.end

if.end76:                                         ; preds = %if.then70
  %arrayidx77 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx78 = getelementptr inbounds i8, i8* %arrayidx77, i64 0
  %36 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %36 to i64
  %shl80 = shl i64 %conv79, 56
  %arrayidx81 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx82 = getelementptr inbounds i8, i8* %arrayidx81, i64 1
  %37 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %37 to i64
  %shl84 = shl i64 %conv83, 48
  %or85 = or i64 %shl80, %shl84
  %arrayidx86 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx87 = getelementptr inbounds i8, i8* %arrayidx86, i64 2
  %38 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %38 to i64
  %shl89 = shl i64 %conv88, 40
  %or90 = or i64 %or85, %shl89
  %arrayidx91 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx92 = getelementptr inbounds i8, i8* %arrayidx91, i64 3
  %39 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %39 to i64
  %shl94 = shl i64 %conv93, 32
  %or95 = or i64 %or90, %shl94
  %arrayidx96 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx97 = getelementptr inbounds i8, i8* %arrayidx96, i64 4
  %40 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %40 to i64
  %shl99 = shl i64 %conv98, 24
  %or100 = or i64 %or95, %shl99
  %arrayidx101 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx102 = getelementptr inbounds i8, i8* %arrayidx101, i64 5
  %41 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %41 to i64
  %shl104 = shl i64 %conv103, 16
  %or105 = or i64 %or100, %shl104
  %arrayidx106 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx107 = getelementptr inbounds i8, i8* %arrayidx106, i64 6
  %42 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %42 to i64
  %shl109 = shl i64 %conv108, 8
  %or110 = or i64 %or105, %shl109
  %arrayidx111 = getelementptr inbounds [8 x i8], [8 x i8]* %atom_bytes, i64 0, i64 0
  %arrayidx112 = getelementptr inbounds i8, i8* %arrayidx111, i64 7
  %43 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %43 to i64
  %or114 = or i64 %or110, %conv113
  store i64 %or114, i64* %atom_size, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %45 = load i64, i64* %atom_size, align 8
  %sub = sub i64 %45, 16
  %call115 = call i32 @fseeko(%struct._IO_FILE* %44, i64 %sub, i32 1)
  br label %if.end119

if.else116:                                       ; preds = %if.else
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %47 = load i64, i64* %atom_size, align 8
  %sub117 = sub i64 %47, 8
  %call118 = call i32 @fseeko(%struct._IO_FILE* %46, i64 %sub117, i32 1)
  br label %if.end119

if.end119:                                        ; preds = %if.else116, %if.end76
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end66
  %48 = load i32, i32* %atom_type, align 4
  %shr = lshr i32 %48, 24
  %and = and i32 %shr, 255
  %49 = load i32, i32* %atom_type, align 4
  %shr121 = lshr i32 %49, 16
  %and122 = and i32 %shr121, 255
  %50 = load i32, i32* %atom_type, align 4
  %shr123 = lshr i32 %50, 8
  %and124 = and i32 %shr123, 255
  %51 = load i32, i32* %atom_type, align 4
  %shr125 = lshr i32 %51, 0
  %and126 = and i32 %shr125, 255
  %52 = load i64, i64* %atom_offset, align 8
  %53 = load i64, i64* %atom_size, align 8
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %and, i32 %and122, i32 %and124, i32 %and126, i64 %52, i64 %53)
  %54 = load i32, i32* %atom_type, align 4
  %cmp128 = icmp ne i32 %54, 1718773093
  br i1 %cmp128, label %land.lhs.true, label %if.end158

land.lhs.true:                                    ; preds = %if.end120
  %55 = load i32, i32* %atom_type, align 4
  %cmp130 = icmp ne i32 %55, 1786080875
  br i1 %cmp130, label %land.lhs.true132, label %if.end158

land.lhs.true132:                                 ; preds = %land.lhs.true
  %56 = load i32, i32* %atom_type, align 4
  %cmp133 = icmp ne i32 %56, 1835295092
  br i1 %cmp133, label %land.lhs.true135, label %if.end158

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %57 = load i32, i32* %atom_type, align 4
  %cmp136 = icmp ne i32 %57, 1836019574
  br i1 %cmp136, label %land.lhs.true138, label %if.end158

land.lhs.true138:                                 ; preds = %land.lhs.true135
  %58 = load i32, i32* %atom_type, align 4
  %cmp139 = icmp ne i32 %58, 1886285684
  br i1 %cmp139, label %land.lhs.true141, label %if.end158

land.lhs.true141:                                 ; preds = %land.lhs.true138
  %59 = load i32, i32* %atom_type, align 4
  %cmp142 = icmp ne i32 %59, 1936419184
  br i1 %cmp142, label %land.lhs.true144, label %if.end158

land.lhs.true144:                                 ; preds = %land.lhs.true141
  %60 = load i32, i32* %atom_type, align 4
  %cmp145 = icmp ne i32 %60, 2003395685
  br i1 %cmp145, label %land.lhs.true147, label %if.end158

land.lhs.true147:                                 ; preds = %land.lhs.true144
  %61 = load i32, i32* %atom_type, align 4
  %cmp148 = icmp ne i32 %61, 1346978644
  br i1 %cmp148, label %land.lhs.true150, label %if.end158

land.lhs.true150:                                 ; preds = %land.lhs.true147
  %62 = load i32, i32* %atom_type, align 4
  %cmp151 = icmp ne i32 %62, 1970628964
  br i1 %cmp151, label %land.lhs.true153, label %if.end158

land.lhs.true153:                                 ; preds = %land.lhs.true150
  %63 = load i32, i32* %atom_type, align 4
  %cmp154 = icmp ne i32 %63, 1718909296
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %land.lhs.true153
  %call157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  br label %while.end

if.end158:                                        ; preds = %land.lhs.true153, %land.lhs.true150, %land.lhs.true147, %land.lhs.true144, %land.lhs.true141, %land.lhs.true138, %land.lhs.true135, %land.lhs.true132, %land.lhs.true, %if.end120
  %64 = load i64, i64* %atom_size, align 8
  %65 = load i64, i64* %atom_offset, align 8
  %add = add i64 %65, %64
  store i64 %add, i64* %atom_offset, align 8
  %66 = load i64, i64* %atom_size, align 8
  %cmp159 = icmp ult i64 %66, 8
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end158
  br label %while.end

if.end162:                                        ; preds = %if.end158
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then161, %if.then156, %if.then75, %if.then16, %while.cond
  %67 = load i32, i32* %atom_type, align 4
  %cmp163 = icmp ne i32 %67, 1836019574
  br i1 %cmp163, label %if.then165, label %if.end168

if.then165:                                       ; preds = %while.end
  %call166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i8*, i8** %ftyp_atom, align 8
  call void @free(i8* %68) #5
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call167 = call i32 @fclose(%struct._IO_FILE* %69)
  store i32 0, i32* %retval, align 4
  br label %return

if.end168:                                        ; preds = %while.end
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %71 = load i64, i64* %atom_size, align 8
  %sub169 = sub i64 0, %71
  %call170 = call i32 @fseeko(%struct._IO_FILE* %70, i64 %sub169, i32 2)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call171 = call i64 @ftello(%struct._IO_FILE* %72)
  store i64 %call171, i64* %last_offset, align 8
  %73 = load i64, i64* %atom_size, align 8
  store i64 %73, i64* %moov_atom_size, align 8
  %74 = load i64, i64* %moov_atom_size, align 8
  %call172 = call noalias align 16 i8* @malloc(i64 %74) #5
  store i8* %call172, i8** %moov_atom, align 8
  %75 = load i8*, i8** %moov_atom, align 8
  %tobool173 = icmp ne i8* %75, null
  br i1 %tobool173, label %if.end176, label %if.then174

if.then174:                                       ; preds = %if.end168
  %76 = load i64, i64* %atom_size, align 8
  %call175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i64 %76)
  br label %error_out

if.end176:                                        ; preds = %if.end168
  %77 = load i8*, i8** %moov_atom, align 8
  %78 = load i64, i64* %atom_size, align 8
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call177 = call i64 @fread(i8* %77, i64 %78, i64 1, %struct._IO_FILE* %79)
  %cmp178 = icmp ne i64 %call177, 1
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end176
  %80 = load i8**, i8*** %argv.addr, align 8
  %arrayidx181 = getelementptr inbounds i8*, i8** %80, i64 1
  %81 = load i8*, i8** %arrayidx181, align 8
  call void @perror(i8* %81)
  br label %error_out

if.end182:                                        ; preds = %if.end176
  %82 = load i8*, i8** %moov_atom, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %82, i64 12
  %arrayidx184 = getelementptr inbounds i8, i8* %arrayidx183, i64 0
  %83 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %83 to i32
  %shl186 = shl i32 %conv185, 24
  %84 = load i8*, i8** %moov_atom, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %84, i64 12
  %arrayidx188 = getelementptr inbounds i8, i8* %arrayidx187, i64 1
  %85 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %85 to i32
  %shl190 = shl i32 %conv189, 16
  %or191 = or i32 %shl186, %shl190
  %86 = load i8*, i8** %moov_atom, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %86, i64 12
  %arrayidx193 = getelementptr inbounds i8, i8* %arrayidx192, i64 2
  %87 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %87 to i32
  %shl195 = shl i32 %conv194, 8
  %or196 = or i32 %or191, %shl195
  %88 = load i8*, i8** %moov_atom, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %88, i64 12
  %arrayidx198 = getelementptr inbounds i8, i8* %arrayidx197, i64 3
  %89 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %89 to i32
  %or200 = or i32 %or196, %conv199
  %cmp201 = icmp eq i32 %or200, 1668116342
  br i1 %cmp201, label %if.then203, label %if.end205

if.then203:                                       ; preds = %if.end182
  %call204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  br label %error_out

if.end205:                                        ; preds = %if.end182
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call206 = call i32 @fclose(%struct._IO_FILE* %90)
  store %struct._IO_FILE* null, %struct._IO_FILE** %infile, align 8
  store i64 4, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc550, %if.end205
  %91 = load i64, i64* %i, align 8
  %92 = load i64, i64* %moov_atom_size, align 8
  %sub207 = sub i64 %92, 4
  %cmp208 = icmp ult i64 %91, %sub207
  br i1 %cmp208, label %for.body, label %for.end552

for.body:                                         ; preds = %for.cond
  %93 = load i8*, i8** %moov_atom, align 8
  %94 = load i64, i64* %i, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %93, i64 %94
  %arrayidx211 = getelementptr inbounds i8, i8* %arrayidx210, i64 0
  %95 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %95 to i32
  %shl213 = shl i32 %conv212, 24
  %96 = load i8*, i8** %moov_atom, align 8
  %97 = load i64, i64* %i, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %96, i64 %97
  %arrayidx215 = getelementptr inbounds i8, i8* %arrayidx214, i64 1
  %98 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %98 to i32
  %shl217 = shl i32 %conv216, 16
  %or218 = or i32 %shl213, %shl217
  %99 = load i8*, i8** %moov_atom, align 8
  %100 = load i64, i64* %i, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %99, i64 %100
  %arrayidx220 = getelementptr inbounds i8, i8* %arrayidx219, i64 2
  %101 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %101 to i32
  %shl222 = shl i32 %conv221, 8
  %or223 = or i32 %or218, %shl222
  %102 = load i8*, i8** %moov_atom, align 8
  %103 = load i64, i64* %i, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %102, i64 %103
  %arrayidx225 = getelementptr inbounds i8, i8* %arrayidx224, i64 3
  %104 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %104 to i32
  %or227 = or i32 %or223, %conv226
  store i32 %or227, i32* %atom_type, align 4
  %105 = load i32, i32* %atom_type, align 4
  %cmp228 = icmp eq i32 %105, 1937007471
  br i1 %cmp228, label %if.then230, label %if.else354

if.then230:                                       ; preds = %for.body
  %call231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %106 = load i8*, i8** %moov_atom, align 8
  %107 = load i64, i64* %i, align 8
  %sub232 = sub i64 %107, 4
  %arrayidx233 = getelementptr inbounds i8, i8* %106, i64 %sub232
  %arrayidx234 = getelementptr inbounds i8, i8* %arrayidx233, i64 0
  %108 = load i8, i8* %arrayidx234, align 1
  %conv235 = zext i8 %108 to i32
  %shl236 = shl i32 %conv235, 24
  %109 = load i8*, i8** %moov_atom, align 8
  %110 = load i64, i64* %i, align 8
  %sub237 = sub i64 %110, 4
  %arrayidx238 = getelementptr inbounds i8, i8* %109, i64 %sub237
  %arrayidx239 = getelementptr inbounds i8, i8* %arrayidx238, i64 1
  %111 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %111 to i32
  %shl241 = shl i32 %conv240, 16
  %or242 = or i32 %shl236, %shl241
  %112 = load i8*, i8** %moov_atom, align 8
  %113 = load i64, i64* %i, align 8
  %sub243 = sub i64 %113, 4
  %arrayidx244 = getelementptr inbounds i8, i8* %112, i64 %sub243
  %arrayidx245 = getelementptr inbounds i8, i8* %arrayidx244, i64 2
  %114 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %114 to i32
  %shl247 = shl i32 %conv246, 8
  %or248 = or i32 %or242, %shl247
  %115 = load i8*, i8** %moov_atom, align 8
  %116 = load i64, i64* %i, align 8
  %sub249 = sub i64 %116, 4
  %arrayidx250 = getelementptr inbounds i8, i8* %115, i64 %sub249
  %arrayidx251 = getelementptr inbounds i8, i8* %arrayidx250, i64 3
  %117 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %117 to i32
  %or253 = or i32 %or248, %conv252
  %conv254 = sext i32 %or253 to i64
  store i64 %conv254, i64* %atom_size, align 8
  %118 = load i64, i64* %i, align 8
  %119 = load i64, i64* %atom_size, align 8
  %add255 = add i64 %118, %119
  %sub256 = sub i64 %add255, 4
  %120 = load i64, i64* %moov_atom_size, align 8
  %cmp257 = icmp ugt i64 %sub256, %120
  br i1 %cmp257, label %if.then259, label %if.end261

if.then259:                                       ; preds = %if.then230
  %call260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %error_out

if.end261:                                        ; preds = %if.then230
  %121 = load i8*, i8** %moov_atom, align 8
  %122 = load i64, i64* %i, align 8
  %add262 = add i64 %122, 8
  %arrayidx263 = getelementptr inbounds i8, i8* %121, i64 %add262
  %arrayidx264 = getelementptr inbounds i8, i8* %arrayidx263, i64 0
  %123 = load i8, i8* %arrayidx264, align 1
  %conv265 = zext i8 %123 to i32
  %shl266 = shl i32 %conv265, 24
  %124 = load i8*, i8** %moov_atom, align 8
  %125 = load i64, i64* %i, align 8
  %add267 = add i64 %125, 8
  %arrayidx268 = getelementptr inbounds i8, i8* %124, i64 %add267
  %arrayidx269 = getelementptr inbounds i8, i8* %arrayidx268, i64 1
  %126 = load i8, i8* %arrayidx269, align 1
  %conv270 = zext i8 %126 to i32
  %shl271 = shl i32 %conv270, 16
  %or272 = or i32 %shl266, %shl271
  %127 = load i8*, i8** %moov_atom, align 8
  %128 = load i64, i64* %i, align 8
  %add273 = add i64 %128, 8
  %arrayidx274 = getelementptr inbounds i8, i8* %127, i64 %add273
  %arrayidx275 = getelementptr inbounds i8, i8* %arrayidx274, i64 2
  %129 = load i8, i8* %arrayidx275, align 1
  %conv276 = zext i8 %129 to i32
  %shl277 = shl i32 %conv276, 8
  %or278 = or i32 %or272, %shl277
  %130 = load i8*, i8** %moov_atom, align 8
  %131 = load i64, i64* %i, align 8
  %add279 = add i64 %131, 8
  %arrayidx280 = getelementptr inbounds i8, i8* %130, i64 %add279
  %arrayidx281 = getelementptr inbounds i8, i8* %arrayidx280, i64 3
  %132 = load i8, i8* %arrayidx281, align 1
  %conv282 = zext i8 %132 to i32
  %or283 = or i32 %or278, %conv282
  store i32 %or283, i32* %offset_count, align 4
  store i64 0, i64* %j, align 8
  br label %for.cond284

for.cond284:                                      ; preds = %for.inc, %if.end261
  %133 = load i64, i64* %j, align 8
  %134 = load i32, i32* %offset_count, align 4
  %conv285 = zext i32 %134 to i64
  %cmp286 = icmp ult i64 %133, %conv285
  br i1 %cmp286, label %for.body288, label %for.end

for.body288:                                      ; preds = %for.cond284
  %135 = load i8*, i8** %moov_atom, align 8
  %136 = load i64, i64* %i, align 8
  %add289 = add i64 %136, 12
  %137 = load i64, i64* %j, align 8
  %mul = mul i64 %137, 4
  %add290 = add i64 %add289, %mul
  %arrayidx291 = getelementptr inbounds i8, i8* %135, i64 %add290
  %arrayidx292 = getelementptr inbounds i8, i8* %arrayidx291, i64 0
  %138 = load i8, i8* %arrayidx292, align 1
  %conv293 = zext i8 %138 to i32
  %shl294 = shl i32 %conv293, 24
  %139 = load i8*, i8** %moov_atom, align 8
  %140 = load i64, i64* %i, align 8
  %add295 = add i64 %140, 12
  %141 = load i64, i64* %j, align 8
  %mul296 = mul i64 %141, 4
  %add297 = add i64 %add295, %mul296
  %arrayidx298 = getelementptr inbounds i8, i8* %139, i64 %add297
  %arrayidx299 = getelementptr inbounds i8, i8* %arrayidx298, i64 1
  %142 = load i8, i8* %arrayidx299, align 1
  %conv300 = zext i8 %142 to i32
  %shl301 = shl i32 %conv300, 16
  %or302 = or i32 %shl294, %shl301
  %143 = load i8*, i8** %moov_atom, align 8
  %144 = load i64, i64* %i, align 8
  %add303 = add i64 %144, 12
  %145 = load i64, i64* %j, align 8
  %mul304 = mul i64 %145, 4
  %add305 = add i64 %add303, %mul304
  %arrayidx306 = getelementptr inbounds i8, i8* %143, i64 %add305
  %arrayidx307 = getelementptr inbounds i8, i8* %arrayidx306, i64 2
  %146 = load i8, i8* %arrayidx307, align 1
  %conv308 = zext i8 %146 to i32
  %shl309 = shl i32 %conv308, 8
  %or310 = or i32 %or302, %shl309
  %147 = load i8*, i8** %moov_atom, align 8
  %148 = load i64, i64* %i, align 8
  %add311 = add i64 %148, 12
  %149 = load i64, i64* %j, align 8
  %mul312 = mul i64 %149, 4
  %add313 = add i64 %add311, %mul312
  %arrayidx314 = getelementptr inbounds i8, i8* %147, i64 %add313
  %arrayidx315 = getelementptr inbounds i8, i8* %arrayidx314, i64 3
  %150 = load i8, i8* %arrayidx315, align 1
  %conv316 = zext i8 %150 to i32
  %or317 = or i32 %or310, %conv316
  %conv318 = sext i32 %or317 to i64
  store i64 %conv318, i64* %current_offset, align 8
  %151 = load i64, i64* %moov_atom_size, align 8
  %152 = load i64, i64* %current_offset, align 8
  %add319 = add i64 %152, %151
  store i64 %add319, i64* %current_offset, align 8
  %153 = load i64, i64* %current_offset, align 8
  %shr320 = lshr i64 %153, 24
  %and321 = and i64 %shr320, 255
  %conv322 = trunc i64 %and321 to i8
  %154 = load i8*, i8** %moov_atom, align 8
  %155 = load i64, i64* %i, align 8
  %add323 = add i64 %155, 12
  %156 = load i64, i64* %j, align 8
  %mul324 = mul i64 %156, 4
  %add325 = add i64 %add323, %mul324
  %add326 = add i64 %add325, 0
  %arrayidx327 = getelementptr inbounds i8, i8* %154, i64 %add326
  store i8 %conv322, i8* %arrayidx327, align 1
  %157 = load i64, i64* %current_offset, align 8
  %shr328 = lshr i64 %157, 16
  %and329 = and i64 %shr328, 255
  %conv330 = trunc i64 %and329 to i8
  %158 = load i8*, i8** %moov_atom, align 8
  %159 = load i64, i64* %i, align 8
  %add331 = add i64 %159, 12
  %160 = load i64, i64* %j, align 8
  %mul332 = mul i64 %160, 4
  %add333 = add i64 %add331, %mul332
  %add334 = add i64 %add333, 1
  %arrayidx335 = getelementptr inbounds i8, i8* %158, i64 %add334
  store i8 %conv330, i8* %arrayidx335, align 1
  %161 = load i64, i64* %current_offset, align 8
  %shr336 = lshr i64 %161, 8
  %and337 = and i64 %shr336, 255
  %conv338 = trunc i64 %and337 to i8
  %162 = load i8*, i8** %moov_atom, align 8
  %163 = load i64, i64* %i, align 8
  %add339 = add i64 %163, 12
  %164 = load i64, i64* %j, align 8
  %mul340 = mul i64 %164, 4
  %add341 = add i64 %add339, %mul340
  %add342 = add i64 %add341, 2
  %arrayidx343 = getelementptr inbounds i8, i8* %162, i64 %add342
  store i8 %conv338, i8* %arrayidx343, align 1
  %165 = load i64, i64* %current_offset, align 8
  %shr344 = lshr i64 %165, 0
  %and345 = and i64 %shr344, 255
  %conv346 = trunc i64 %and345 to i8
  %166 = load i8*, i8** %moov_atom, align 8
  %167 = load i64, i64* %i, align 8
  %add347 = add i64 %167, 12
  %168 = load i64, i64* %j, align 8
  %mul348 = mul i64 %168, 4
  %add349 = add i64 %add347, %mul348
  %add350 = add i64 %add349, 3
  %arrayidx351 = getelementptr inbounds i8, i8* %166, i64 %add350
  store i8 %conv346, i8* %arrayidx351, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body288
  %169 = load i64, i64* %j, align 8
  %inc = add i64 %169, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond284, !llvm.loop !6

for.end:                                          ; preds = %for.cond284
  %170 = load i64, i64* %atom_size, align 8
  %sub352 = sub i64 %170, 4
  %171 = load i64, i64* %i, align 8
  %add353 = add i64 %171, %sub352
  store i64 %add353, i64* %i, align 8
  br label %if.end549

if.else354:                                       ; preds = %for.body
  %172 = load i32, i32* %atom_type, align 4
  %cmp355 = icmp eq i32 %172, 1668232756
  br i1 %cmp355, label %if.then357, label %if.end548

if.then357:                                       ; preds = %if.else354
  %call358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %173 = load i8*, i8** %moov_atom, align 8
  %174 = load i64, i64* %i, align 8
  %sub359 = sub i64 %174, 4
  %arrayidx360 = getelementptr inbounds i8, i8* %173, i64 %sub359
  %arrayidx361 = getelementptr inbounds i8, i8* %arrayidx360, i64 0
  %175 = load i8, i8* %arrayidx361, align 1
  %conv362 = zext i8 %175 to i32
  %shl363 = shl i32 %conv362, 24
  %176 = load i8*, i8** %moov_atom, align 8
  %177 = load i64, i64* %i, align 8
  %sub364 = sub i64 %177, 4
  %arrayidx365 = getelementptr inbounds i8, i8* %176, i64 %sub364
  %arrayidx366 = getelementptr inbounds i8, i8* %arrayidx365, i64 1
  %178 = load i8, i8* %arrayidx366, align 1
  %conv367 = zext i8 %178 to i32
  %shl368 = shl i32 %conv367, 16
  %or369 = or i32 %shl363, %shl368
  %179 = load i8*, i8** %moov_atom, align 8
  %180 = load i64, i64* %i, align 8
  %sub370 = sub i64 %180, 4
  %arrayidx371 = getelementptr inbounds i8, i8* %179, i64 %sub370
  %arrayidx372 = getelementptr inbounds i8, i8* %arrayidx371, i64 2
  %181 = load i8, i8* %arrayidx372, align 1
  %conv373 = zext i8 %181 to i32
  %shl374 = shl i32 %conv373, 8
  %or375 = or i32 %or369, %shl374
  %182 = load i8*, i8** %moov_atom, align 8
  %183 = load i64, i64* %i, align 8
  %sub376 = sub i64 %183, 4
  %arrayidx377 = getelementptr inbounds i8, i8* %182, i64 %sub376
  %arrayidx378 = getelementptr inbounds i8, i8* %arrayidx377, i64 3
  %184 = load i8, i8* %arrayidx378, align 1
  %conv379 = zext i8 %184 to i32
  %or380 = or i32 %or375, %conv379
  %conv381 = sext i32 %or380 to i64
  store i64 %conv381, i64* %atom_size, align 8
  %185 = load i64, i64* %i, align 8
  %186 = load i64, i64* %atom_size, align 8
  %add382 = add i64 %185, %186
  %sub383 = sub i64 %add382, 4
  %187 = load i64, i64* %moov_atom_size, align 8
  %cmp384 = icmp ugt i64 %sub383, %187
  br i1 %cmp384, label %if.then386, label %if.end388

if.then386:                                       ; preds = %if.then357
  %call387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %error_out

if.end388:                                        ; preds = %if.then357
  %188 = load i8*, i8** %moov_atom, align 8
  %189 = load i64, i64* %i, align 8
  %add389 = add i64 %189, 8
  %arrayidx390 = getelementptr inbounds i8, i8* %188, i64 %add389
  %arrayidx391 = getelementptr inbounds i8, i8* %arrayidx390, i64 0
  %190 = load i8, i8* %arrayidx391, align 1
  %conv392 = zext i8 %190 to i32
  %shl393 = shl i32 %conv392, 24
  %191 = load i8*, i8** %moov_atom, align 8
  %192 = load i64, i64* %i, align 8
  %add394 = add i64 %192, 8
  %arrayidx395 = getelementptr inbounds i8, i8* %191, i64 %add394
  %arrayidx396 = getelementptr inbounds i8, i8* %arrayidx395, i64 1
  %193 = load i8, i8* %arrayidx396, align 1
  %conv397 = zext i8 %193 to i32
  %shl398 = shl i32 %conv397, 16
  %or399 = or i32 %shl393, %shl398
  %194 = load i8*, i8** %moov_atom, align 8
  %195 = load i64, i64* %i, align 8
  %add400 = add i64 %195, 8
  %arrayidx401 = getelementptr inbounds i8, i8* %194, i64 %add400
  %arrayidx402 = getelementptr inbounds i8, i8* %arrayidx401, i64 2
  %196 = load i8, i8* %arrayidx402, align 1
  %conv403 = zext i8 %196 to i32
  %shl404 = shl i32 %conv403, 8
  %or405 = or i32 %or399, %shl404
  %197 = load i8*, i8** %moov_atom, align 8
  %198 = load i64, i64* %i, align 8
  %add406 = add i64 %198, 8
  %arrayidx407 = getelementptr inbounds i8, i8* %197, i64 %add406
  %arrayidx408 = getelementptr inbounds i8, i8* %arrayidx407, i64 3
  %199 = load i8, i8* %arrayidx408, align 1
  %conv409 = zext i8 %199 to i32
  %or410 = or i32 %or405, %conv409
  store i32 %or410, i32* %offset_count, align 4
  store i64 0, i64* %j, align 8
  br label %for.cond411

for.cond411:                                      ; preds = %for.inc543, %if.end388
  %200 = load i64, i64* %j, align 8
  %201 = load i32, i32* %offset_count, align 4
  %conv412 = zext i32 %201 to i64
  %cmp413 = icmp ult i64 %200, %conv412
  br i1 %cmp413, label %for.body415, label %for.end545

for.body415:                                      ; preds = %for.cond411
  %202 = load i8*, i8** %moov_atom, align 8
  %203 = load i64, i64* %i, align 8
  %add416 = add i64 %203, 12
  %204 = load i64, i64* %j, align 8
  %mul417 = mul i64 %204, 8
  %add418 = add i64 %add416, %mul417
  %arrayidx419 = getelementptr inbounds i8, i8* %202, i64 %add418
  %arrayidx420 = getelementptr inbounds i8, i8* %arrayidx419, i64 0
  %205 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %205 to i64
  %shl422 = shl i64 %conv421, 56
  %206 = load i8*, i8** %moov_atom, align 8
  %207 = load i64, i64* %i, align 8
  %add423 = add i64 %207, 12
  %208 = load i64, i64* %j, align 8
  %mul424 = mul i64 %208, 8
  %add425 = add i64 %add423, %mul424
  %arrayidx426 = getelementptr inbounds i8, i8* %206, i64 %add425
  %arrayidx427 = getelementptr inbounds i8, i8* %arrayidx426, i64 1
  %209 = load i8, i8* %arrayidx427, align 1
  %conv428 = zext i8 %209 to i64
  %shl429 = shl i64 %conv428, 48
  %or430 = or i64 %shl422, %shl429
  %210 = load i8*, i8** %moov_atom, align 8
  %211 = load i64, i64* %i, align 8
  %add431 = add i64 %211, 12
  %212 = load i64, i64* %j, align 8
  %mul432 = mul i64 %212, 8
  %add433 = add i64 %add431, %mul432
  %arrayidx434 = getelementptr inbounds i8, i8* %210, i64 %add433
  %arrayidx435 = getelementptr inbounds i8, i8* %arrayidx434, i64 2
  %213 = load i8, i8* %arrayidx435, align 1
  %conv436 = zext i8 %213 to i64
  %shl437 = shl i64 %conv436, 40
  %or438 = or i64 %or430, %shl437
  %214 = load i8*, i8** %moov_atom, align 8
  %215 = load i64, i64* %i, align 8
  %add439 = add i64 %215, 12
  %216 = load i64, i64* %j, align 8
  %mul440 = mul i64 %216, 8
  %add441 = add i64 %add439, %mul440
  %arrayidx442 = getelementptr inbounds i8, i8* %214, i64 %add441
  %arrayidx443 = getelementptr inbounds i8, i8* %arrayidx442, i64 3
  %217 = load i8, i8* %arrayidx443, align 1
  %conv444 = zext i8 %217 to i64
  %shl445 = shl i64 %conv444, 32
  %or446 = or i64 %or438, %shl445
  %218 = load i8*, i8** %moov_atom, align 8
  %219 = load i64, i64* %i, align 8
  %add447 = add i64 %219, 12
  %220 = load i64, i64* %j, align 8
  %mul448 = mul i64 %220, 8
  %add449 = add i64 %add447, %mul448
  %arrayidx450 = getelementptr inbounds i8, i8* %218, i64 %add449
  %arrayidx451 = getelementptr inbounds i8, i8* %arrayidx450, i64 4
  %221 = load i8, i8* %arrayidx451, align 1
  %conv452 = zext i8 %221 to i64
  %shl453 = shl i64 %conv452, 24
  %or454 = or i64 %or446, %shl453
  %222 = load i8*, i8** %moov_atom, align 8
  %223 = load i64, i64* %i, align 8
  %add455 = add i64 %223, 12
  %224 = load i64, i64* %j, align 8
  %mul456 = mul i64 %224, 8
  %add457 = add i64 %add455, %mul456
  %arrayidx458 = getelementptr inbounds i8, i8* %222, i64 %add457
  %arrayidx459 = getelementptr inbounds i8, i8* %arrayidx458, i64 5
  %225 = load i8, i8* %arrayidx459, align 1
  %conv460 = zext i8 %225 to i64
  %shl461 = shl i64 %conv460, 16
  %or462 = or i64 %or454, %shl461
  %226 = load i8*, i8** %moov_atom, align 8
  %227 = load i64, i64* %i, align 8
  %add463 = add i64 %227, 12
  %228 = load i64, i64* %j, align 8
  %mul464 = mul i64 %228, 8
  %add465 = add i64 %add463, %mul464
  %arrayidx466 = getelementptr inbounds i8, i8* %226, i64 %add465
  %arrayidx467 = getelementptr inbounds i8, i8* %arrayidx466, i64 6
  %229 = load i8, i8* %arrayidx467, align 1
  %conv468 = zext i8 %229 to i64
  %shl469 = shl i64 %conv468, 8
  %or470 = or i64 %or462, %shl469
  %230 = load i8*, i8** %moov_atom, align 8
  %231 = load i64, i64* %i, align 8
  %add471 = add i64 %231, 12
  %232 = load i64, i64* %j, align 8
  %mul472 = mul i64 %232, 8
  %add473 = add i64 %add471, %mul472
  %arrayidx474 = getelementptr inbounds i8, i8* %230, i64 %add473
  %arrayidx475 = getelementptr inbounds i8, i8* %arrayidx474, i64 7
  %233 = load i8, i8* %arrayidx475, align 1
  %conv476 = zext i8 %233 to i64
  %or477 = or i64 %or470, %conv476
  store i64 %or477, i64* %current_offset, align 8
  %234 = load i64, i64* %moov_atom_size, align 8
  %235 = load i64, i64* %current_offset, align 8
  %add478 = add i64 %235, %234
  store i64 %add478, i64* %current_offset, align 8
  %236 = load i64, i64* %current_offset, align 8
  %shr479 = lshr i64 %236, 56
  %and480 = and i64 %shr479, 255
  %conv481 = trunc i64 %and480 to i8
  %237 = load i8*, i8** %moov_atom, align 8
  %238 = load i64, i64* %i, align 8
  %add482 = add i64 %238, 12
  %239 = load i64, i64* %j, align 8
  %mul483 = mul i64 %239, 8
  %add484 = add i64 %add482, %mul483
  %add485 = add i64 %add484, 0
  %arrayidx486 = getelementptr inbounds i8, i8* %237, i64 %add485
  store i8 %conv481, i8* %arrayidx486, align 1
  %240 = load i64, i64* %current_offset, align 8
  %shr487 = lshr i64 %240, 48
  %and488 = and i64 %shr487, 255
  %conv489 = trunc i64 %and488 to i8
  %241 = load i8*, i8** %moov_atom, align 8
  %242 = load i64, i64* %i, align 8
  %add490 = add i64 %242, 12
  %243 = load i64, i64* %j, align 8
  %mul491 = mul i64 %243, 8
  %add492 = add i64 %add490, %mul491
  %add493 = add i64 %add492, 1
  %arrayidx494 = getelementptr inbounds i8, i8* %241, i64 %add493
  store i8 %conv489, i8* %arrayidx494, align 1
  %244 = load i64, i64* %current_offset, align 8
  %shr495 = lshr i64 %244, 40
  %and496 = and i64 %shr495, 255
  %conv497 = trunc i64 %and496 to i8
  %245 = load i8*, i8** %moov_atom, align 8
  %246 = load i64, i64* %i, align 8
  %add498 = add i64 %246, 12
  %247 = load i64, i64* %j, align 8
  %mul499 = mul i64 %247, 8
  %add500 = add i64 %add498, %mul499
  %add501 = add i64 %add500, 2
  %arrayidx502 = getelementptr inbounds i8, i8* %245, i64 %add501
  store i8 %conv497, i8* %arrayidx502, align 1
  %248 = load i64, i64* %current_offset, align 8
  %shr503 = lshr i64 %248, 32
  %and504 = and i64 %shr503, 255
  %conv505 = trunc i64 %and504 to i8
  %249 = load i8*, i8** %moov_atom, align 8
  %250 = load i64, i64* %i, align 8
  %add506 = add i64 %250, 12
  %251 = load i64, i64* %j, align 8
  %mul507 = mul i64 %251, 8
  %add508 = add i64 %add506, %mul507
  %add509 = add i64 %add508, 3
  %arrayidx510 = getelementptr inbounds i8, i8* %249, i64 %add509
  store i8 %conv505, i8* %arrayidx510, align 1
  %252 = load i64, i64* %current_offset, align 8
  %shr511 = lshr i64 %252, 24
  %and512 = and i64 %shr511, 255
  %conv513 = trunc i64 %and512 to i8
  %253 = load i8*, i8** %moov_atom, align 8
  %254 = load i64, i64* %i, align 8
  %add514 = add i64 %254, 12
  %255 = load i64, i64* %j, align 8
  %mul515 = mul i64 %255, 8
  %add516 = add i64 %add514, %mul515
  %add517 = add i64 %add516, 4
  %arrayidx518 = getelementptr inbounds i8, i8* %253, i64 %add517
  store i8 %conv513, i8* %arrayidx518, align 1
  %256 = load i64, i64* %current_offset, align 8
  %shr519 = lshr i64 %256, 16
  %and520 = and i64 %shr519, 255
  %conv521 = trunc i64 %and520 to i8
  %257 = load i8*, i8** %moov_atom, align 8
  %258 = load i64, i64* %i, align 8
  %add522 = add i64 %258, 12
  %259 = load i64, i64* %j, align 8
  %mul523 = mul i64 %259, 8
  %add524 = add i64 %add522, %mul523
  %add525 = add i64 %add524, 5
  %arrayidx526 = getelementptr inbounds i8, i8* %257, i64 %add525
  store i8 %conv521, i8* %arrayidx526, align 1
  %260 = load i64, i64* %current_offset, align 8
  %shr527 = lshr i64 %260, 8
  %and528 = and i64 %shr527, 255
  %conv529 = trunc i64 %and528 to i8
  %261 = load i8*, i8** %moov_atom, align 8
  %262 = load i64, i64* %i, align 8
  %add530 = add i64 %262, 12
  %263 = load i64, i64* %j, align 8
  %mul531 = mul i64 %263, 8
  %add532 = add i64 %add530, %mul531
  %add533 = add i64 %add532, 6
  %arrayidx534 = getelementptr inbounds i8, i8* %261, i64 %add533
  store i8 %conv529, i8* %arrayidx534, align 1
  %264 = load i64, i64* %current_offset, align 8
  %shr535 = lshr i64 %264, 0
  %and536 = and i64 %shr535, 255
  %conv537 = trunc i64 %and536 to i8
  %265 = load i8*, i8** %moov_atom, align 8
  %266 = load i64, i64* %i, align 8
  %add538 = add i64 %266, 12
  %267 = load i64, i64* %j, align 8
  %mul539 = mul i64 %267, 8
  %add540 = add i64 %add538, %mul539
  %add541 = add i64 %add540, 7
  %arrayidx542 = getelementptr inbounds i8, i8* %265, i64 %add541
  store i8 %conv537, i8* %arrayidx542, align 1
  br label %for.inc543

for.inc543:                                       ; preds = %for.body415
  %268 = load i64, i64* %j, align 8
  %inc544 = add i64 %268, 1
  store i64 %inc544, i64* %j, align 8
  br label %for.cond411, !llvm.loop !7

for.end545:                                       ; preds = %for.cond411
  %269 = load i64, i64* %atom_size, align 8
  %sub546 = sub i64 %269, 4
  %270 = load i64, i64* %i, align 8
  %add547 = add i64 %270, %sub546
  store i64 %add547, i64* %i, align 8
  br label %if.end548

if.end548:                                        ; preds = %for.end545, %if.else354
  br label %if.end549

if.end549:                                        ; preds = %if.end548, %for.end
  br label %for.inc550

for.inc550:                                       ; preds = %if.end549
  %271 = load i64, i64* %i, align 8
  %inc551 = add i64 %271, 1
  store i64 %inc551, i64* %i, align 8
  br label %for.cond, !llvm.loop !8

for.end552:                                       ; preds = %for.cond
  %272 = load i8**, i8*** %argv.addr, align 8
  %arrayidx553 = getelementptr inbounds i8*, i8** %272, i64 1
  %273 = load i8*, i8** %arrayidx553, align 8
  %call554 = call %struct._IO_FILE* @fopen(i8* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call554, %struct._IO_FILE** %infile, align 8
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %tobool555 = icmp ne %struct._IO_FILE* %274, null
  br i1 %tobool555, label %if.end558, label %if.then556

if.then556:                                       ; preds = %for.end552
  %275 = load i8**, i8*** %argv.addr, align 8
  %arrayidx557 = getelementptr inbounds i8*, i8** %275, i64 1
  %276 = load i8*, i8** %arrayidx557, align 8
  call void @perror(i8* %276)
  br label %error_out

if.end558:                                        ; preds = %for.end552
  %277 = load i64, i64* %start_offset, align 8
  %cmp559 = icmp ugt i64 %277, 0
  br i1 %cmp559, label %if.then561, label %if.end564

if.then561:                                       ; preds = %if.end558
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %279 = load i64, i64* %start_offset, align 8
  %call562 = call i32 @fseeko(%struct._IO_FILE* %278, i64 %279, i32 0)
  %280 = load i64, i64* %start_offset, align 8
  %281 = load i64, i64* %last_offset, align 8
  %sub563 = sub i64 %281, %280
  store i64 %sub563, i64* %last_offset, align 8
  br label %if.end564

if.end564:                                        ; preds = %if.then561, %if.end558
  %282 = load i8**, i8*** %argv.addr, align 8
  %arrayidx565 = getelementptr inbounds i8*, i8** %282, i64 2
  %283 = load i8*, i8** %arrayidx565, align 8
  %call566 = call %struct._IO_FILE* @fopen(i8* %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store %struct._IO_FILE* %call566, %struct._IO_FILE** %outfile, align 8
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool567 = icmp ne %struct._IO_FILE* %284, null
  br i1 %tobool567, label %if.end570, label %if.then568

if.then568:                                       ; preds = %if.end564
  %285 = load i8**, i8*** %argv.addr, align 8
  %arrayidx569 = getelementptr inbounds i8*, i8** %285, i64 2
  %286 = load i8*, i8** %arrayidx569, align 8
  call void @perror(i8* %286)
  br label %error_out

if.end570:                                        ; preds = %if.end564
  %287 = load i64, i64* %ftyp_atom_size, align 8
  %cmp571 = icmp ugt i64 %287, 0
  br i1 %cmp571, label %if.then573, label %if.end581

if.then573:                                       ; preds = %if.end570
  %call574 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %288 = load i8*, i8** %ftyp_atom, align 8
  %289 = load i64, i64* %ftyp_atom_size, align 8
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call575 = call i64 @fwrite(i8* %288, i64 %289, i64 1, %struct._IO_FILE* %290)
  %cmp576 = icmp ne i64 %call575, 1
  br i1 %cmp576, label %if.then578, label %if.end580

if.then578:                                       ; preds = %if.then573
  %291 = load i8**, i8*** %argv.addr, align 8
  %arrayidx579 = getelementptr inbounds i8*, i8** %291, i64 2
  %292 = load i8*, i8** %arrayidx579, align 8
  call void @perror(i8* %292)
  br label %error_out

if.end580:                                        ; preds = %if.then573
  br label %if.end581

if.end581:                                        ; preds = %if.end580, %if.end570
  %call582 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %293 = load i8*, i8** %moov_atom, align 8
  %294 = load i64, i64* %moov_atom_size, align 8
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call583 = call i64 @fwrite(i8* %293, i64 %294, i64 1, %struct._IO_FILE* %295)
  %cmp584 = icmp ne i64 %call583, 1
  br i1 %cmp584, label %if.then586, label %if.end588

if.then586:                                       ; preds = %if.end581
  %296 = load i8**, i8*** %argv.addr, align 8
  %arrayidx587 = getelementptr inbounds i8*, i8** %296, i64 2
  %297 = load i8*, i8** %arrayidx587, align 8
  call void @perror(i8* %297)
  br label %error_out

if.end588:                                        ; preds = %if.end581
  %call589 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %while.cond590

while.cond590:                                    ; preds = %if.end614, %if.end588
  %298 = load i64, i64* %last_offset, align 8
  %tobool591 = icmp ne i64 %298, 0
  br i1 %tobool591, label %while.body592, label %while.end617

while.body592:                                    ; preds = %while.cond590
  %299 = load i64, i64* %last_offset, align 8
  %cmp593 = icmp ugt i64 %299, 1024
  br i1 %cmp593, label %if.then595, label %if.else596

if.then595:                                       ; preds = %while.body592
  store i32 1024, i32* %bytes_to_copy, align 4
  br label %if.end598

if.else596:                                       ; preds = %while.body592
  %300 = load i64, i64* %last_offset, align 8
  %conv597 = trunc i64 %300 to i32
  store i32 %conv597, i32* %bytes_to_copy, align 4
  br label %if.end598

if.end598:                                        ; preds = %if.else596, %if.then595
  %arraydecay599 = getelementptr inbounds [1024 x i8], [1024 x i8]* %copy_buffer, i64 0, i64 0
  %301 = load i32, i32* %bytes_to_copy, align 4
  %conv600 = sext i32 %301 to i64
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call601 = call i64 @fread(i8* %arraydecay599, i64 %conv600, i64 1, %struct._IO_FILE* %302)
  %cmp602 = icmp ne i64 %call601, 1
  br i1 %cmp602, label %if.then604, label %if.end606

if.then604:                                       ; preds = %if.end598
  %303 = load i8**, i8*** %argv.addr, align 8
  %arrayidx605 = getelementptr inbounds i8*, i8** %303, i64 1
  %304 = load i8*, i8** %arrayidx605, align 8
  call void @perror(i8* %304)
  br label %error_out

if.end606:                                        ; preds = %if.end598
  %arraydecay607 = getelementptr inbounds [1024 x i8], [1024 x i8]* %copy_buffer, i64 0, i64 0
  %305 = load i32, i32* %bytes_to_copy, align 4
  %conv608 = sext i32 %305 to i64
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call609 = call i64 @fwrite(i8* %arraydecay607, i64 %conv608, i64 1, %struct._IO_FILE* %306)
  %cmp610 = icmp ne i64 %call609, 1
  br i1 %cmp610, label %if.then612, label %if.end614

if.then612:                                       ; preds = %if.end606
  %307 = load i8**, i8*** %argv.addr, align 8
  %arrayidx613 = getelementptr inbounds i8*, i8** %307, i64 2
  %308 = load i8*, i8** %arrayidx613, align 8
  call void @perror(i8* %308)
  br label %error_out

if.end614:                                        ; preds = %if.end606
  %309 = load i32, i32* %bytes_to_copy, align 4
  %conv615 = sext i32 %309 to i64
  %310 = load i64, i64* %last_offset, align 8
  %sub616 = sub i64 %310, %conv615
  store i64 %sub616, i64* %last_offset, align 8
  br label %while.cond590, !llvm.loop !9

while.end617:                                     ; preds = %while.cond590
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call618 = call i32 @fclose(%struct._IO_FILE* %311)
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call619 = call i32 @fclose(%struct._IO_FILE* %312)
  %313 = load i8*, i8** %moov_atom, align 8
  call void @free(i8* %313) #5
  %314 = load i8*, i8** %ftyp_atom, align 8
  call void @free(i8* %314) #5
  store i32 0, i32* %retval, align 4
  br label %return

error_out:                                        ; preds = %if.then612, %if.then604, %if.then586, %if.then578, %if.then568, %if.then556, %if.then386, %if.then259, %if.then203, %if.then180, %if.then174, %if.then64, %if.then57, %if.then9
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %tobool620 = icmp ne %struct._IO_FILE* %315, null
  br i1 %tobool620, label %if.then621, label %if.end623

if.then621:                                       ; preds = %error_out
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call622 = call i32 @fclose(%struct._IO_FILE* %316)
  br label %if.end623

if.end623:                                        ; preds = %if.then621, %error_out
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool624 = icmp ne %struct._IO_FILE* %317, null
  br i1 %tobool624, label %if.then625, label %if.end627

if.then625:                                       ; preds = %if.end623
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call626 = call i32 @fclose(%struct._IO_FILE* %318)
  br label %if.end627

if.end627:                                        ; preds = %if.then625, %if.end623
  %319 = load i8*, i8** %moov_atom, align 8
  call void @free(i8* %319) #5
  %320 = load i8*, i8** %ftyp_atom, align 8
  call void @free(i8* %320) #5
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end627, %while.end617, %if.then165, %if.then3, %if.then
  %321 = load i32, i32* %retval, align 4
  ret i32 %321
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local void @perror(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #3

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

declare dso_local i32 @fseeko(%struct._IO_FILE*, i64, i32) #1

declare dso_local i64 @ftello(%struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !5}
