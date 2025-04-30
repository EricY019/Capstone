; ModuleID = 'code/140-31663test_ctype.c'
source_filename = "code/140-31663test_ctype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c" BOGUS\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" isascii\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" isalnum\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" isalpha\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" iscntrl\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" isdigit\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" isgraph\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" islower\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" isprint\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" ispunct\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" isspace\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" isupper\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" isxdigit\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" isblank\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"; lower = \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"; upper = \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c" tolower BOGUS %d;\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c" toupper BOGUS %d;\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%d/\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"'\\%.3o'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i16, align 2
  %lose = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %lose, align 4
  store i16 0, i16* %c, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %c, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %c, align 2
  %conv2 = trunc i16 %1 to i8
  call void @print_char(i8 zeroext %conv2)
  %call = call i16** @__ctype_b_loc() #4
  %2 = load i16*, i16** %call, align 8
  %3 = load i16, i16* %c, align 2
  %conv3 = zext i16 %3 to i32
  %idxprom = sext i32 %conv3 to i64
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %4 to i32
  %and = and i32 %conv4, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %5 = load i16, i16* %c, align 2
  %conv5 = zext i16 %5 to i32
  %cmp6 = icmp sle i32 97, %conv5
  br i1 %cmp6, label %land.lhs.true8, label %if.then

land.lhs.true8:                                   ; preds = %land.lhs.true
  %6 = load i16, i16* %c, align 2
  %conv9 = zext i16 %6 to i32
  %cmp10 = icmp sle i32 %conv9, 122
  br i1 %cmp10, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true8, %for.body
  %call12 = call i16** @__ctype_b_loc() #4
  %7 = load i16*, i16** %call12, align 8
  %8 = load i16, i16* %c, align 2
  %conv13 = zext i16 %8 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds i16, i16* %7, i64 %idxprom14
  %9 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %9 to i32
  %and17 = and i32 %conv16, 512
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %lor.lhs.false27, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %lor.lhs.false
  %10 = load i16, i16* %c, align 2
  %conv20 = zext i16 %10 to i32
  %cmp21 = icmp sle i32 97, %conv20
  br i1 %cmp21, label %land.lhs.true23, label %lor.lhs.false27

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %11 = load i16, i16* %c, align 2
  %conv24 = zext i16 %11 to i32
  %cmp25 = icmp sle i32 %conv24, 122
  br i1 %cmp25, label %if.then, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true23, %land.lhs.true19, %lor.lhs.false
  %12 = load i16, i16* %c, align 2
  %conv28 = zext i16 %12 to i32
  %call29 = call i32 @toupper(i32 %conv28) #5
  %13 = load i16, i16* %c, align 2
  %conv30 = zext i16 %13 to i32
  %cmp31 = icmp sle i32 97, %conv30
  br i1 %cmp31, label %land.lhs.true33, label %cond.false

land.lhs.true33:                                  ; preds = %lor.lhs.false27
  %14 = load i16, i16* %c, align 2
  %conv34 = zext i16 %14 to i32
  %cmp35 = icmp sle i32 %conv34, 122
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true33
  %15 = load i16, i16* %c, align 2
  %conv37 = zext i16 %15 to i32
  %sub = sub nsw i32 %conv37, 97
  %add = add nsw i32 65, %sub
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true33, %lor.lhs.false27
  %16 = load i16, i16* %c, align 2
  %conv38 = zext i16 %16 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv38, %cond.false ]
  %cmp39 = icmp ne i32 %call29, %cond
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end, %land.lhs.true23, %land.lhs.true8, %land.lhs.true
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* %17)
  %18 = load i32, i32* %lose, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %lose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %19 = load i16, i16* %c, align 2
  %conv42 = zext i16 %19 to i32
  %and43 = and i32 %conv42, -128
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %do.body
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %20)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %do.body
  %call49 = call i16** @__ctype_b_loc() #4
  %21 = load i16*, i16** %call49, align 8
  %22 = load i16, i16* %c, align 2
  %conv50 = zext i16 %22 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %arrayidx52 = getelementptr inbounds i16, i16* %21, i64 %idxprom51
  %23 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %23 to i32
  %and54 = and i32 %conv53, 8
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end48
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %24)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end48
  %call59 = call i16** @__ctype_b_loc() #4
  %25 = load i16*, i16** %call59, align 8
  %26 = load i16, i16* %c, align 2
  %conv60 = zext i16 %26 to i32
  %idxprom61 = sext i32 %conv60 to i64
  %arrayidx62 = getelementptr inbounds i16, i16* %25, i64 %idxprom61
  %27 = load i16, i16* %arrayidx62, align 2
  %conv63 = zext i16 %27 to i32
  %and64 = and i32 %conv63, 1024
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end58
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call67 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %28)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end58
  %call69 = call i16** @__ctype_b_loc() #4
  %29 = load i16*, i16** %call69, align 8
  %30 = load i16, i16* %c, align 2
  %conv70 = zext i16 %30 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %29, i64 %idxprom71
  %31 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %31 to i32
  %and74 = and i32 %conv73, 2
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end68
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call77 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %32)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end68
  %call79 = call i16** @__ctype_b_loc() #4
  %33 = load i16*, i16** %call79, align 8
  %34 = load i16, i16* %c, align 2
  %conv80 = zext i16 %34 to i32
  %idxprom81 = sext i32 %conv80 to i64
  %arrayidx82 = getelementptr inbounds i16, i16* %33, i64 %idxprom81
  %35 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %35 to i32
  %and84 = and i32 %conv83, 2048
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end78
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call87 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %36)
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end78
  %call89 = call i16** @__ctype_b_loc() #4
  %37 = load i16*, i16** %call89, align 8
  %38 = load i16, i16* %c, align 2
  %conv90 = zext i16 %38 to i32
  %idxprom91 = sext i32 %conv90 to i64
  %arrayidx92 = getelementptr inbounds i16, i16* %37, i64 %idxprom91
  %39 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %39 to i32
  %and94 = and i32 %conv93, 32768
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end88
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call97 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %40)
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end88
  %call99 = call i16** @__ctype_b_loc() #4
  %41 = load i16*, i16** %call99, align 8
  %42 = load i16, i16* %c, align 2
  %conv100 = zext i16 %42 to i32
  %idxprom101 = sext i32 %conv100 to i64
  %arrayidx102 = getelementptr inbounds i16, i16* %41, i64 %idxprom101
  %43 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %43 to i32
  %and104 = and i32 %conv103, 512
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end98
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call107 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %44)
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end98
  %call109 = call i16** @__ctype_b_loc() #4
  %45 = load i16*, i16** %call109, align 8
  %46 = load i16, i16* %c, align 2
  %conv110 = zext i16 %46 to i32
  %idxprom111 = sext i32 %conv110 to i64
  %arrayidx112 = getelementptr inbounds i16, i16* %45, i64 %idxprom111
  %47 = load i16, i16* %arrayidx112, align 2
  %conv113 = zext i16 %47 to i32
  %and114 = and i32 %conv113, 16384
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end108
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call117 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %48)
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end108
  %call119 = call i16** @__ctype_b_loc() #4
  %49 = load i16*, i16** %call119, align 8
  %50 = load i16, i16* %c, align 2
  %conv120 = zext i16 %50 to i32
  %idxprom121 = sext i32 %conv120 to i64
  %arrayidx122 = getelementptr inbounds i16, i16* %49, i64 %idxprom121
  %51 = load i16, i16* %arrayidx122, align 2
  %conv123 = zext i16 %51 to i32
  %and124 = and i32 %conv123, 4
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.end118
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call127 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %52)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end118
  %call129 = call i16** @__ctype_b_loc() #4
  %53 = load i16*, i16** %call129, align 8
  %54 = load i16, i16* %c, align 2
  %conv130 = zext i16 %54 to i32
  %idxprom131 = sext i32 %conv130 to i64
  %arrayidx132 = getelementptr inbounds i16, i16* %53, i64 %idxprom131
  %55 = load i16, i16* %arrayidx132, align 2
  %conv133 = zext i16 %55 to i32
  %and134 = and i32 %conv133, 8192
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.end128
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call137 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* %56)
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end128
  %call139 = call i16** @__ctype_b_loc() #4
  %57 = load i16*, i16** %call139, align 8
  %58 = load i16, i16* %c, align 2
  %conv140 = zext i16 %58 to i32
  %idxprom141 = sext i32 %conv140 to i64
  %arrayidx142 = getelementptr inbounds i16, i16* %57, i64 %idxprom141
  %59 = load i16, i16* %arrayidx142, align 2
  %conv143 = zext i16 %59 to i32
  %and144 = and i32 %conv143, 256
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end138
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call147 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct._IO_FILE* %60)
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end138
  %call149 = call i16** @__ctype_b_loc() #4
  %61 = load i16*, i16** %call149, align 8
  %62 = load i16, i16* %c, align 2
  %conv150 = zext i16 %62 to i32
  %idxprom151 = sext i32 %conv150 to i64
  %arrayidx152 = getelementptr inbounds i16, i16* %61, i64 %idxprom151
  %63 = load i16, i16* %arrayidx152, align 2
  %conv153 = zext i16 %63 to i32
  %and154 = and i32 %conv153, 4096
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end148
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call157 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %64)
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end148
  %call159 = call i16** @__ctype_b_loc() #4
  %65 = load i16*, i16** %call159, align 8
  %66 = load i16, i16* %c, align 2
  %conv160 = zext i16 %66 to i32
  %idxprom161 = sext i32 %conv160 to i64
  %arrayidx162 = getelementptr inbounds i16, i16* %65, i64 %idxprom161
  %67 = load i16, i16* %arrayidx162, align 2
  %conv163 = zext i16 %67 to i32
  %and164 = and i32 %conv163, 1
  %tobool165 = icmp ne i32 %and164, 0
  br i1 %tobool165, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.end158
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call167 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %68)
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.end158
  br label %do.end

do.end:                                           ; preds = %if.end168
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call169 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), %struct._IO_FILE* %69)
  %70 = load i16, i16* %c, align 2
  %conv170 = zext i16 %70 to i32
  %call171 = call i32 @tolower(i32 %conv170) #5
  %conv172 = trunc i32 %call171 to i8
  call void @print_char(i8 zeroext %conv172)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call173 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %struct._IO_FILE* %71)
  %72 = load i16, i16* %c, align 2
  %conv174 = zext i16 %72 to i32
  %call175 = call i32 @toupper(i32 %conv174) #5
  %conv176 = trunc i32 %call175 to i8
  call void @print_char(i8 zeroext %conv176)
  %call177 = call i32 @putchar(i32 10)
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %73 = load i16, i16* %c, align 2
  %inc178 = add i16 %73, 1
  store i16 %inc178, i16* %c, align 2
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call179 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct._IO_FILE* %74)
  %call180 = call i32 @tolower(i32 -1) #5
  %cmp181 = icmp ne i32 %call180, -1
  br i1 %cmp181, label %if.then183, label %if.end187

if.then183:                                       ; preds = %for.end
  %75 = load i32, i32* %lose, align 4
  %inc184 = add nsw i32 %75, 1
  store i32 %inc184, i32* %lose, align 4
  %call185 = call i32 @tolower(i32 -1) #5
  %call186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %call185)
  br label %if.end187

if.end187:                                        ; preds = %if.then183, %for.end
  %call188 = call i32 @toupper(i32 -1) #5
  %cmp189 = icmp ne i32 %call188, -1
  br i1 %cmp189, label %if.then191, label %if.end195

if.then191:                                       ; preds = %if.end187
  %76 = load i32, i32* %lose, align 4
  %inc192 = add nsw i32 %76, 1
  store i32 %inc192, i32* %lose, align 4
  %call193 = call i32 @toupper(i32 -1) #5
  %call194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %call193)
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %if.end187
  br label %do.body196

do.body196:                                       ; preds = %if.end195
  %call197 = call i16** @__ctype_b_loc() #4
  %77 = load i16*, i16** %call197, align 8
  %arrayidx198 = getelementptr inbounds i16, i16* %77, i64 -1
  %78 = load i16, i16* %arrayidx198, align 2
  %conv199 = zext i16 %78 to i32
  %and200 = and i32 %conv199, 8
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then202, label %if.end205

if.then202:                                       ; preds = %do.body196
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call203 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %79)
  %80 = load i32, i32* %lose, align 4
  %inc204 = add nsw i32 %80, 1
  store i32 %inc204, i32* %lose, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then202, %do.body196
  %call206 = call i16** @__ctype_b_loc() #4
  %81 = load i16*, i16** %call206, align 8
  %arrayidx207 = getelementptr inbounds i16, i16* %81, i64 -1
  %82 = load i16, i16* %arrayidx207, align 2
  %conv208 = zext i16 %82 to i32
  %and209 = and i32 %conv208, 1024
  %tobool210 = icmp ne i32 %and209, 0
  br i1 %tobool210, label %if.then211, label %if.end214

if.then211:                                       ; preds = %if.end205
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call212 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %83)
  %84 = load i32, i32* %lose, align 4
  %inc213 = add nsw i32 %84, 1
  store i32 %inc213, i32* %lose, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %if.end205
  %call215 = call i16** @__ctype_b_loc() #4
  %85 = load i16*, i16** %call215, align 8
  %arrayidx216 = getelementptr inbounds i16, i16* %85, i64 -1
  %86 = load i16, i16* %arrayidx216, align 2
  %conv217 = zext i16 %86 to i32
  %and218 = and i32 %conv217, 2
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %if.then220, label %if.end223

if.then220:                                       ; preds = %if.end214
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call221 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %87)
  %88 = load i32, i32* %lose, align 4
  %inc222 = add nsw i32 %88, 1
  store i32 %inc222, i32* %lose, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.then220, %if.end214
  %call224 = call i16** @__ctype_b_loc() #4
  %89 = load i16*, i16** %call224, align 8
  %arrayidx225 = getelementptr inbounds i16, i16* %89, i64 -1
  %90 = load i16, i16* %arrayidx225, align 2
  %conv226 = zext i16 %90 to i32
  %and227 = and i32 %conv226, 2048
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.then229, label %if.end232

if.then229:                                       ; preds = %if.end223
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call230 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %91)
  %92 = load i32, i32* %lose, align 4
  %inc231 = add nsw i32 %92, 1
  store i32 %inc231, i32* %lose, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then229, %if.end223
  %call233 = call i16** @__ctype_b_loc() #4
  %93 = load i16*, i16** %call233, align 8
  %arrayidx234 = getelementptr inbounds i16, i16* %93, i64 -1
  %94 = load i16, i16* %arrayidx234, align 2
  %conv235 = zext i16 %94 to i32
  %and236 = and i32 %conv235, 32768
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %if.then238, label %if.end241

if.then238:                                       ; preds = %if.end232
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call239 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %95)
  %96 = load i32, i32* %lose, align 4
  %inc240 = add nsw i32 %96, 1
  store i32 %inc240, i32* %lose, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then238, %if.end232
  %call242 = call i16** @__ctype_b_loc() #4
  %97 = load i16*, i16** %call242, align 8
  %arrayidx243 = getelementptr inbounds i16, i16* %97, i64 -1
  %98 = load i16, i16* %arrayidx243, align 2
  %conv244 = zext i16 %98 to i32
  %and245 = and i32 %conv244, 512
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then247, label %if.end250

if.then247:                                       ; preds = %if.end241
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call248 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %99)
  %100 = load i32, i32* %lose, align 4
  %inc249 = add nsw i32 %100, 1
  store i32 %inc249, i32* %lose, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then247, %if.end241
  %call251 = call i16** @__ctype_b_loc() #4
  %101 = load i16*, i16** %call251, align 8
  %arrayidx252 = getelementptr inbounds i16, i16* %101, i64 -1
  %102 = load i16, i16* %arrayidx252, align 2
  %conv253 = zext i16 %102 to i32
  %and254 = and i32 %conv253, 16384
  %tobool255 = icmp ne i32 %and254, 0
  br i1 %tobool255, label %if.then256, label %if.end259

if.then256:                                       ; preds = %if.end250
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call257 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %103)
  %104 = load i32, i32* %lose, align 4
  %inc258 = add nsw i32 %104, 1
  store i32 %inc258, i32* %lose, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then256, %if.end250
  %call260 = call i16** @__ctype_b_loc() #4
  %105 = load i16*, i16** %call260, align 8
  %arrayidx261 = getelementptr inbounds i16, i16* %105, i64 -1
  %106 = load i16, i16* %arrayidx261, align 2
  %conv262 = zext i16 %106 to i32
  %and263 = and i32 %conv262, 4
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %if.then265, label %if.end268

if.then265:                                       ; preds = %if.end259
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call266 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %107)
  %108 = load i32, i32* %lose, align 4
  %inc267 = add nsw i32 %108, 1
  store i32 %inc267, i32* %lose, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.then265, %if.end259
  %call269 = call i16** @__ctype_b_loc() #4
  %109 = load i16*, i16** %call269, align 8
  %arrayidx270 = getelementptr inbounds i16, i16* %109, i64 -1
  %110 = load i16, i16* %arrayidx270, align 2
  %conv271 = zext i16 %110 to i32
  %and272 = and i32 %conv271, 8192
  %tobool273 = icmp ne i32 %and272, 0
  br i1 %tobool273, label %if.then274, label %if.end277

if.then274:                                       ; preds = %if.end268
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call275 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* %111)
  %112 = load i32, i32* %lose, align 4
  %inc276 = add nsw i32 %112, 1
  store i32 %inc276, i32* %lose, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.then274, %if.end268
  %call278 = call i16** @__ctype_b_loc() #4
  %113 = load i16*, i16** %call278, align 8
  %arrayidx279 = getelementptr inbounds i16, i16* %113, i64 -1
  %114 = load i16, i16* %arrayidx279, align 2
  %conv280 = zext i16 %114 to i32
  %and281 = and i32 %conv280, 256
  %tobool282 = icmp ne i32 %and281, 0
  br i1 %tobool282, label %if.then283, label %if.end286

if.then283:                                       ; preds = %if.end277
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call284 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct._IO_FILE* %115)
  %116 = load i32, i32* %lose, align 4
  %inc285 = add nsw i32 %116, 1
  store i32 %inc285, i32* %lose, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.then283, %if.end277
  %call287 = call i16** @__ctype_b_loc() #4
  %117 = load i16*, i16** %call287, align 8
  %arrayidx288 = getelementptr inbounds i16, i16* %117, i64 -1
  %118 = load i16, i16* %arrayidx288, align 2
  %conv289 = zext i16 %118 to i32
  %and290 = and i32 %conv289, 4096
  %tobool291 = icmp ne i32 %and290, 0
  br i1 %tobool291, label %if.then292, label %if.end295

if.then292:                                       ; preds = %if.end286
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call293 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %119)
  %120 = load i32, i32* %lose, align 4
  %inc294 = add nsw i32 %120, 1
  store i32 %inc294, i32* %lose, align 4
  br label %if.end295

if.end295:                                        ; preds = %if.then292, %if.end286
  %call296 = call i16** @__ctype_b_loc() #4
  %121 = load i16*, i16** %call296, align 8
  %arrayidx297 = getelementptr inbounds i16, i16* %121, i64 -1
  %122 = load i16, i16* %arrayidx297, align 2
  %conv298 = zext i16 %122 to i32
  %and299 = and i32 %conv298, 1
  %tobool300 = icmp ne i32 %and299, 0
  br i1 %tobool300, label %if.then301, label %if.end304

if.then301:                                       ; preds = %if.end295
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call302 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %123)
  %124 = load i32, i32* %lose, align 4
  %inc303 = add nsw i32 %124, 1
  store i32 %inc303, i32* %lose, align 4
  br label %if.end304

if.end304:                                        ; preds = %if.then301, %if.end295
  br label %do.end305

do.end305:                                        ; preds = %if.end304
  %125 = load i32, i32* %lose, align 4
  %tobool306 = icmp ne i32 %125, 0
  %126 = zext i1 %tobool306 to i64
  %cond307 = select i1 %tobool306, i32 1, i32 0
  ret i32 %cond307
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_char(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = zext i8 %0 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %conv)
  %call1 = call i16** @__ctype_b_loc() #4
  %1 = load i16*, i16** %call1, align 8
  %2 = load i8, i8* %c.addr, align 1
  %conv2 = zext i8 %2 to i32
  %idxprom = sext i32 %conv2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %3 to i32
  %and = and i32 %conv3, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %conv4 = zext i8 %4 to i32
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %conv4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8, i8* %c.addr, align 1
  %conv6 = zext i8 %5 to i32
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %conv6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32) #2

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @putchar(i32) #3

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
