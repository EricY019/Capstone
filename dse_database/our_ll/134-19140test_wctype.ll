; ModuleID = 'code/134-19140test_wctype.c'
source_filename = "code/134-19140test_wctype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"does not exist\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"wctype return value != 0 for non existing property\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"`iswctype' class `%s' test for character \\%o failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"`isw%s' test for character \\%o failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"All test successful!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  %bit_alnum = alloca i64, align 8
  %bit_alpha = alloca i64, align 8
  %bit_cntrl = alloca i64, align 8
  %bit_digit = alloca i64, align 8
  %bit_graph = alloca i64, align 8
  %bit_lower = alloca i64, align 8
  %bit_print = alloca i64, align 8
  %bit_punct = alloca i64, align 8
  %bit_space = alloca i64, align 8
  %bit_upper = alloca i64, align 8
  %bit_xdigit = alloca i64, align 8
  %ch = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %result, align 4
  %call = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #4
  store i64 %call, i64* %bit_alnum, align 8
  %call1 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #4
  store i64 %call1, i64* %bit_alpha, align 8
  %call2 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #4
  store i64 %call2, i64* %bit_cntrl, align 8
  %call3 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #4
  store i64 %call3, i64* %bit_digit, align 8
  %call4 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #4
  store i64 %call4, i64* %bit_graph, align 8
  %call5 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #4
  store i64 %call5, i64* %bit_lower, align 8
  %call6 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #4
  store i64 %call6, i64* %bit_print, align 8
  %call7 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #4
  store i64 %call7, i64* %bit_punct, align 8
  %call8 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #4
  store i64 %call8, i64* %bit_space, align 8
  %call9 = call i64 @wctype(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #4
  store i64 %call9, i64* %bit_upper, align 8
  %call10 = call i64 @wctype(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #4
  store i64 %call10, i64* %bit_xdigit, align 8
  %call11 = call i64 @wctype(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #4
  %cmp = icmp ne i64 %call11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call12 = call i32 @puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, i32* %ch, align 4
  %cmp13 = icmp slt i32 %0, 256
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %call14 = call i16** @__ctype_b_loc() #5
  %1 = load i16*, i16** %call14, align 8
  %2 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 8
  %cmp15 = icmp eq i32 %and, 0
  %conv16 = zext i1 %cmp15 to i32
  %4 = load i32, i32* %ch, align 4
  %5 = load i64, i64* %bit_alnum, align 8
  %call17 = call i32 @iswctype(i32 %4, i64 %5) #4
  %cmp18 = icmp eq i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %cmp20 = icmp ne i32 %conv16, %conv19
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %do.body
  %6 = load i32, i32* %ch, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 1, i32* %result, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.body
  %call25 = call i16** @__ctype_b_loc() #5
  %7 = load i16*, i16** %call25, align 8
  %8 = load i32, i32* %ch, align 4
  %idxprom26 = sext i32 %8 to i64
  %arrayidx27 = getelementptr inbounds i16, i16* %7, i64 %idxprom26
  %9 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %9 to i32
  %and29 = and i32 %conv28, 8
  %cmp30 = icmp eq i32 %and29, 0
  %conv31 = zext i1 %cmp30 to i32
  %10 = load i32, i32* %ch, align 4
  %call32 = call i32 @iswalnum(i32 %10) #4
  %cmp33 = icmp eq i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %cmp35 = icmp ne i32 %conv31, %conv34
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end24
  %11 = load i32, i32* %ch, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 1, i32* %result, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end24
  br label %do.end

do.end:                                           ; preds = %if.end39
  br label %do.body40

do.body40:                                        ; preds = %do.end
  %call41 = call i16** @__ctype_b_loc() #5
  %12 = load i16*, i16** %call41, align 8
  %13 = load i32, i32* %ch, align 4
  %idxprom42 = sext i32 %13 to i64
  %arrayidx43 = getelementptr inbounds i16, i16* %12, i64 %idxprom42
  %14 = load i16, i16* %arrayidx43, align 2
  %conv44 = zext i16 %14 to i32
  %and45 = and i32 %conv44, 1024
  %cmp46 = icmp eq i32 %and45, 0
  %conv47 = zext i1 %cmp46 to i32
  %15 = load i32, i32* %ch, align 4
  %16 = load i64, i64* %bit_alpha, align 8
  %call48 = call i32 @iswctype(i32 %15, i64 %16) #4
  %cmp49 = icmp eq i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %cmp51 = icmp ne i32 %conv47, %conv50
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %do.body40
  %17 = load i32, i32* %ch, align 4
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 1, i32* %result, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.body40
  %call56 = call i16** @__ctype_b_loc() #5
  %18 = load i16*, i16** %call56, align 8
  %19 = load i32, i32* %ch, align 4
  %idxprom57 = sext i32 %19 to i64
  %arrayidx58 = getelementptr inbounds i16, i16* %18, i64 %idxprom57
  %20 = load i16, i16* %arrayidx58, align 2
  %conv59 = zext i16 %20 to i32
  %and60 = and i32 %conv59, 1024
  %cmp61 = icmp eq i32 %and60, 0
  %conv62 = zext i1 %cmp61 to i32
  %21 = load i32, i32* %ch, align 4
  %call63 = call i32 @iswalpha(i32 %21) #4
  %cmp64 = icmp eq i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %cmp66 = icmp ne i32 %conv62, %conv65
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end55
  %22 = load i32, i32* %ch, align 4
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 1, i32* %result, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end55
  br label %do.end71

do.end71:                                         ; preds = %if.end70
  br label %do.body72

do.body72:                                        ; preds = %do.end71
  %call73 = call i16** @__ctype_b_loc() #5
  %23 = load i16*, i16** %call73, align 8
  %24 = load i32, i32* %ch, align 4
  %idxprom74 = sext i32 %24 to i64
  %arrayidx75 = getelementptr inbounds i16, i16* %23, i64 %idxprom74
  %25 = load i16, i16* %arrayidx75, align 2
  %conv76 = zext i16 %25 to i32
  %and77 = and i32 %conv76, 2
  %cmp78 = icmp eq i32 %and77, 0
  %conv79 = zext i1 %cmp78 to i32
  %26 = load i32, i32* %ch, align 4
  %27 = load i64, i64* %bit_cntrl, align 8
  %call80 = call i32 @iswctype(i32 %26, i64 %27) #4
  %cmp81 = icmp eq i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %cmp83 = icmp ne i32 %conv79, %conv82
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %do.body72
  %28 = load i32, i32* %ch, align 4
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i32 1, i32* %result, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %do.body72
  %call88 = call i16** @__ctype_b_loc() #5
  %29 = load i16*, i16** %call88, align 8
  %30 = load i32, i32* %ch, align 4
  %idxprom89 = sext i32 %30 to i64
  %arrayidx90 = getelementptr inbounds i16, i16* %29, i64 %idxprom89
  %31 = load i16, i16* %arrayidx90, align 2
  %conv91 = zext i16 %31 to i32
  %and92 = and i32 %conv91, 2
  %cmp93 = icmp eq i32 %and92, 0
  %conv94 = zext i1 %cmp93 to i32
  %32 = load i32, i32* %ch, align 4
  %call95 = call i32 @iswcntrl(i32 %32) #4
  %cmp96 = icmp eq i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %cmp98 = icmp ne i32 %conv94, %conv97
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.end87
  %33 = load i32, i32* %ch, align 4
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 1, i32* %result, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end87
  br label %do.end103

do.end103:                                        ; preds = %if.end102
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %call105 = call i16** @__ctype_b_loc() #5
  %34 = load i16*, i16** %call105, align 8
  %35 = load i32, i32* %ch, align 4
  %idxprom106 = sext i32 %35 to i64
  %arrayidx107 = getelementptr inbounds i16, i16* %34, i64 %idxprom106
  %36 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %36 to i32
  %and109 = and i32 %conv108, 2048
  %cmp110 = icmp eq i32 %and109, 0
  %conv111 = zext i1 %cmp110 to i32
  %37 = load i32, i32* %ch, align 4
  %38 = load i64, i64* %bit_digit, align 8
  %call112 = call i32 @iswctype(i32 %37, i64 %38) #4
  %cmp113 = icmp eq i32 %call112, 0
  %conv114 = zext i1 %cmp113 to i32
  %cmp115 = icmp ne i32 %conv111, %conv114
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %do.body104
  %39 = load i32, i32* %ch, align 4
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  store i32 1, i32* %result, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %do.body104
  %call120 = call i16** @__ctype_b_loc() #5
  %40 = load i16*, i16** %call120, align 8
  %41 = load i32, i32* %ch, align 4
  %idxprom121 = sext i32 %41 to i64
  %arrayidx122 = getelementptr inbounds i16, i16* %40, i64 %idxprom121
  %42 = load i16, i16* %arrayidx122, align 2
  %conv123 = zext i16 %42 to i32
  %and124 = and i32 %conv123, 2048
  %cmp125 = icmp eq i32 %and124, 0
  %conv126 = zext i1 %cmp125 to i32
  %43 = load i32, i32* %ch, align 4
  %call127 = call i32 @iswdigit(i32 %43) #4
  %cmp128 = icmp eq i32 %call127, 0
  %conv129 = zext i1 %cmp128 to i32
  %cmp130 = icmp ne i32 %conv126, %conv129
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end119
  %44 = load i32, i32* %ch, align 4
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  store i32 1, i32* %result, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end119
  br label %do.end135

do.end135:                                        ; preds = %if.end134
  br label %do.body136

do.body136:                                       ; preds = %do.end135
  %call137 = call i16** @__ctype_b_loc() #5
  %45 = load i16*, i16** %call137, align 8
  %46 = load i32, i32* %ch, align 4
  %idxprom138 = sext i32 %46 to i64
  %arrayidx139 = getelementptr inbounds i16, i16* %45, i64 %idxprom138
  %47 = load i16, i16* %arrayidx139, align 2
  %conv140 = zext i16 %47 to i32
  %and141 = and i32 %conv140, 32768
  %cmp142 = icmp eq i32 %and141, 0
  %conv143 = zext i1 %cmp142 to i32
  %48 = load i32, i32* %ch, align 4
  %49 = load i64, i64* %bit_graph, align 8
  %call144 = call i32 @iswctype(i32 %48, i64 %49) #4
  %cmp145 = icmp eq i32 %call144, 0
  %conv146 = zext i1 %cmp145 to i32
  %cmp147 = icmp ne i32 %conv143, %conv146
  br i1 %cmp147, label %if.then149, label %if.end151

if.then149:                                       ; preds = %do.body136
  %50 = load i32, i32* %ch, align 4
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  store i32 1, i32* %result, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %do.body136
  %call152 = call i16** @__ctype_b_loc() #5
  %51 = load i16*, i16** %call152, align 8
  %52 = load i32, i32* %ch, align 4
  %idxprom153 = sext i32 %52 to i64
  %arrayidx154 = getelementptr inbounds i16, i16* %51, i64 %idxprom153
  %53 = load i16, i16* %arrayidx154, align 2
  %conv155 = zext i16 %53 to i32
  %and156 = and i32 %conv155, 32768
  %cmp157 = icmp eq i32 %and156, 0
  %conv158 = zext i1 %cmp157 to i32
  %54 = load i32, i32* %ch, align 4
  %call159 = call i32 @iswgraph(i32 %54) #4
  %cmp160 = icmp eq i32 %call159, 0
  %conv161 = zext i1 %cmp160 to i32
  %cmp162 = icmp ne i32 %conv158, %conv161
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %if.end151
  %55 = load i32, i32* %ch, align 4
  %call165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  store i32 1, i32* %result, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %if.end151
  br label %do.end167

do.end167:                                        ; preds = %if.end166
  br label %do.body168

do.body168:                                       ; preds = %do.end167
  %call169 = call i16** @__ctype_b_loc() #5
  %56 = load i16*, i16** %call169, align 8
  %57 = load i32, i32* %ch, align 4
  %idxprom170 = sext i32 %57 to i64
  %arrayidx171 = getelementptr inbounds i16, i16* %56, i64 %idxprom170
  %58 = load i16, i16* %arrayidx171, align 2
  %conv172 = zext i16 %58 to i32
  %and173 = and i32 %conv172, 512
  %cmp174 = icmp eq i32 %and173, 0
  %conv175 = zext i1 %cmp174 to i32
  %59 = load i32, i32* %ch, align 4
  %60 = load i64, i64* %bit_lower, align 8
  %call176 = call i32 @iswctype(i32 %59, i64 %60) #4
  %cmp177 = icmp eq i32 %call176, 0
  %conv178 = zext i1 %cmp177 to i32
  %cmp179 = icmp ne i32 %conv175, %conv178
  br i1 %cmp179, label %if.then181, label %if.end183

if.then181:                                       ; preds = %do.body168
  %61 = load i32, i32* %ch, align 4
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  store i32 1, i32* %result, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then181, %do.body168
  %call184 = call i16** @__ctype_b_loc() #5
  %62 = load i16*, i16** %call184, align 8
  %63 = load i32, i32* %ch, align 4
  %idxprom185 = sext i32 %63 to i64
  %arrayidx186 = getelementptr inbounds i16, i16* %62, i64 %idxprom185
  %64 = load i16, i16* %arrayidx186, align 2
  %conv187 = zext i16 %64 to i32
  %and188 = and i32 %conv187, 512
  %cmp189 = icmp eq i32 %and188, 0
  %conv190 = zext i1 %cmp189 to i32
  %65 = load i32, i32* %ch, align 4
  %call191 = call i32 @iswlower(i32 %65) #4
  %cmp192 = icmp eq i32 %call191, 0
  %conv193 = zext i1 %cmp192 to i32
  %cmp194 = icmp ne i32 %conv190, %conv193
  br i1 %cmp194, label %if.then196, label %if.end198

if.then196:                                       ; preds = %if.end183
  %66 = load i32, i32* %ch, align 4
  %call197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  store i32 1, i32* %result, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %if.end183
  br label %do.end199

do.end199:                                        ; preds = %if.end198
  br label %do.body200

do.body200:                                       ; preds = %do.end199
  %call201 = call i16** @__ctype_b_loc() #5
  %67 = load i16*, i16** %call201, align 8
  %68 = load i32, i32* %ch, align 4
  %idxprom202 = sext i32 %68 to i64
  %arrayidx203 = getelementptr inbounds i16, i16* %67, i64 %idxprom202
  %69 = load i16, i16* %arrayidx203, align 2
  %conv204 = zext i16 %69 to i32
  %and205 = and i32 %conv204, 16384
  %cmp206 = icmp eq i32 %and205, 0
  %conv207 = zext i1 %cmp206 to i32
  %70 = load i32, i32* %ch, align 4
  %71 = load i64, i64* %bit_print, align 8
  %call208 = call i32 @iswctype(i32 %70, i64 %71) #4
  %cmp209 = icmp eq i32 %call208, 0
  %conv210 = zext i1 %cmp209 to i32
  %cmp211 = icmp ne i32 %conv207, %conv210
  br i1 %cmp211, label %if.then213, label %if.end215

if.then213:                                       ; preds = %do.body200
  %72 = load i32, i32* %ch, align 4
  %call214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  store i32 1, i32* %result, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %do.body200
  %call216 = call i16** @__ctype_b_loc() #5
  %73 = load i16*, i16** %call216, align 8
  %74 = load i32, i32* %ch, align 4
  %idxprom217 = sext i32 %74 to i64
  %arrayidx218 = getelementptr inbounds i16, i16* %73, i64 %idxprom217
  %75 = load i16, i16* %arrayidx218, align 2
  %conv219 = zext i16 %75 to i32
  %and220 = and i32 %conv219, 16384
  %cmp221 = icmp eq i32 %and220, 0
  %conv222 = zext i1 %cmp221 to i32
  %76 = load i32, i32* %ch, align 4
  %call223 = call i32 @iswprint(i32 %76) #4
  %cmp224 = icmp eq i32 %call223, 0
  %conv225 = zext i1 %cmp224 to i32
  %cmp226 = icmp ne i32 %conv222, %conv225
  br i1 %cmp226, label %if.then228, label %if.end230

if.then228:                                       ; preds = %if.end215
  %77 = load i32, i32* %ch, align 4
  %call229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  store i32 1, i32* %result, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.end215
  br label %do.end231

do.end231:                                        ; preds = %if.end230
  br label %do.body232

do.body232:                                       ; preds = %do.end231
  %call233 = call i16** @__ctype_b_loc() #5
  %78 = load i16*, i16** %call233, align 8
  %79 = load i32, i32* %ch, align 4
  %idxprom234 = sext i32 %79 to i64
  %arrayidx235 = getelementptr inbounds i16, i16* %78, i64 %idxprom234
  %80 = load i16, i16* %arrayidx235, align 2
  %conv236 = zext i16 %80 to i32
  %and237 = and i32 %conv236, 4
  %cmp238 = icmp eq i32 %and237, 0
  %conv239 = zext i1 %cmp238 to i32
  %81 = load i32, i32* %ch, align 4
  %82 = load i64, i64* %bit_punct, align 8
  %call240 = call i32 @iswctype(i32 %81, i64 %82) #4
  %cmp241 = icmp eq i32 %call240, 0
  %conv242 = zext i1 %cmp241 to i32
  %cmp243 = icmp ne i32 %conv239, %conv242
  br i1 %cmp243, label %if.then245, label %if.end247

if.then245:                                       ; preds = %do.body232
  %83 = load i32, i32* %ch, align 4
  %call246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  store i32 1, i32* %result, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.then245, %do.body232
  %call248 = call i16** @__ctype_b_loc() #5
  %84 = load i16*, i16** %call248, align 8
  %85 = load i32, i32* %ch, align 4
  %idxprom249 = sext i32 %85 to i64
  %arrayidx250 = getelementptr inbounds i16, i16* %84, i64 %idxprom249
  %86 = load i16, i16* %arrayidx250, align 2
  %conv251 = zext i16 %86 to i32
  %and252 = and i32 %conv251, 4
  %cmp253 = icmp eq i32 %and252, 0
  %conv254 = zext i1 %cmp253 to i32
  %87 = load i32, i32* %ch, align 4
  %call255 = call i32 @iswpunct(i32 %87) #4
  %cmp256 = icmp eq i32 %call255, 0
  %conv257 = zext i1 %cmp256 to i32
  %cmp258 = icmp ne i32 %conv254, %conv257
  br i1 %cmp258, label %if.then260, label %if.end262

if.then260:                                       ; preds = %if.end247
  %88 = load i32, i32* %ch, align 4
  %call261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  store i32 1, i32* %result, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %if.end247
  br label %do.end263

do.end263:                                        ; preds = %if.end262
  br label %do.body264

do.body264:                                       ; preds = %do.end263
  %call265 = call i16** @__ctype_b_loc() #5
  %89 = load i16*, i16** %call265, align 8
  %90 = load i32, i32* %ch, align 4
  %idxprom266 = sext i32 %90 to i64
  %arrayidx267 = getelementptr inbounds i16, i16* %89, i64 %idxprom266
  %91 = load i16, i16* %arrayidx267, align 2
  %conv268 = zext i16 %91 to i32
  %and269 = and i32 %conv268, 8192
  %cmp270 = icmp eq i32 %and269, 0
  %conv271 = zext i1 %cmp270 to i32
  %92 = load i32, i32* %ch, align 4
  %93 = load i64, i64* %bit_space, align 8
  %call272 = call i32 @iswctype(i32 %92, i64 %93) #4
  %cmp273 = icmp eq i32 %call272, 0
  %conv274 = zext i1 %cmp273 to i32
  %cmp275 = icmp ne i32 %conv271, %conv274
  br i1 %cmp275, label %if.then277, label %if.end279

if.then277:                                       ; preds = %do.body264
  %94 = load i32, i32* %ch, align 4
  %call278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %94)
  store i32 1, i32* %result, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %do.body264
  %call280 = call i16** @__ctype_b_loc() #5
  %95 = load i16*, i16** %call280, align 8
  %96 = load i32, i32* %ch, align 4
  %idxprom281 = sext i32 %96 to i64
  %arrayidx282 = getelementptr inbounds i16, i16* %95, i64 %idxprom281
  %97 = load i16, i16* %arrayidx282, align 2
  %conv283 = zext i16 %97 to i32
  %and284 = and i32 %conv283, 8192
  %cmp285 = icmp eq i32 %and284, 0
  %conv286 = zext i1 %cmp285 to i32
  %98 = load i32, i32* %ch, align 4
  %call287 = call i32 @iswspace(i32 %98) #4
  %cmp288 = icmp eq i32 %call287, 0
  %conv289 = zext i1 %cmp288 to i32
  %cmp290 = icmp ne i32 %conv286, %conv289
  br i1 %cmp290, label %if.then292, label %if.end294

if.then292:                                       ; preds = %if.end279
  %99 = load i32, i32* %ch, align 4
  %call293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  store i32 1, i32* %result, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then292, %if.end279
  br label %do.end295

do.end295:                                        ; preds = %if.end294
  br label %do.body296

do.body296:                                       ; preds = %do.end295
  %call297 = call i16** @__ctype_b_loc() #5
  %100 = load i16*, i16** %call297, align 8
  %101 = load i32, i32* %ch, align 4
  %idxprom298 = sext i32 %101 to i64
  %arrayidx299 = getelementptr inbounds i16, i16* %100, i64 %idxprom298
  %102 = load i16, i16* %arrayidx299, align 2
  %conv300 = zext i16 %102 to i32
  %and301 = and i32 %conv300, 256
  %cmp302 = icmp eq i32 %and301, 0
  %conv303 = zext i1 %cmp302 to i32
  %103 = load i32, i32* %ch, align 4
  %104 = load i64, i64* %bit_upper, align 8
  %call304 = call i32 @iswctype(i32 %103, i64 %104) #4
  %cmp305 = icmp eq i32 %call304, 0
  %conv306 = zext i1 %cmp305 to i32
  %cmp307 = icmp ne i32 %conv303, %conv306
  br i1 %cmp307, label %if.then309, label %if.end311

if.then309:                                       ; preds = %do.body296
  %105 = load i32, i32* %ch, align 4
  %call310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  store i32 1, i32* %result, align 4
  br label %if.end311

if.end311:                                        ; preds = %if.then309, %do.body296
  %call312 = call i16** @__ctype_b_loc() #5
  %106 = load i16*, i16** %call312, align 8
  %107 = load i32, i32* %ch, align 4
  %idxprom313 = sext i32 %107 to i64
  %arrayidx314 = getelementptr inbounds i16, i16* %106, i64 %idxprom313
  %108 = load i16, i16* %arrayidx314, align 2
  %conv315 = zext i16 %108 to i32
  %and316 = and i32 %conv315, 256
  %cmp317 = icmp eq i32 %and316, 0
  %conv318 = zext i1 %cmp317 to i32
  %109 = load i32, i32* %ch, align 4
  %call319 = call i32 @iswupper(i32 %109) #4
  %cmp320 = icmp eq i32 %call319, 0
  %conv321 = zext i1 %cmp320 to i32
  %cmp322 = icmp ne i32 %conv318, %conv321
  br i1 %cmp322, label %if.then324, label %if.end326

if.then324:                                       ; preds = %if.end311
  %110 = load i32, i32* %ch, align 4
  %call325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %110)
  store i32 1, i32* %result, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.then324, %if.end311
  br label %do.end327

do.end327:                                        ; preds = %if.end326
  br label %do.body328

do.body328:                                       ; preds = %do.end327
  %call329 = call i16** @__ctype_b_loc() #5
  %111 = load i16*, i16** %call329, align 8
  %112 = load i32, i32* %ch, align 4
  %idxprom330 = sext i32 %112 to i64
  %arrayidx331 = getelementptr inbounds i16, i16* %111, i64 %idxprom330
  %113 = load i16, i16* %arrayidx331, align 2
  %conv332 = zext i16 %113 to i32
  %and333 = and i32 %conv332, 4096
  %cmp334 = icmp eq i32 %and333, 0
  %conv335 = zext i1 %cmp334 to i32
  %114 = load i32, i32* %ch, align 4
  %115 = load i64, i64* %bit_xdigit, align 8
  %call336 = call i32 @iswctype(i32 %114, i64 %115) #4
  %cmp337 = icmp eq i32 %call336, 0
  %conv338 = zext i1 %cmp337 to i32
  %cmp339 = icmp ne i32 %conv335, %conv338
  br i1 %cmp339, label %if.then341, label %if.end343

if.then341:                                       ; preds = %do.body328
  %116 = load i32, i32* %ch, align 4
  %call342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %116)
  store i32 1, i32* %result, align 4
  br label %if.end343

if.end343:                                        ; preds = %if.then341, %do.body328
  %call344 = call i16** @__ctype_b_loc() #5
  %117 = load i16*, i16** %call344, align 8
  %118 = load i32, i32* %ch, align 4
  %idxprom345 = sext i32 %118 to i64
  %arrayidx346 = getelementptr inbounds i16, i16* %117, i64 %idxprom345
  %119 = load i16, i16* %arrayidx346, align 2
  %conv347 = zext i16 %119 to i32
  %and348 = and i32 %conv347, 4096
  %cmp349 = icmp eq i32 %and348, 0
  %conv350 = zext i1 %cmp349 to i32
  %120 = load i32, i32* %ch, align 4
  %call351 = call i32 @iswxdigit(i32 %120) #4
  %cmp352 = icmp eq i32 %call351, 0
  %conv353 = zext i1 %cmp352 to i32
  %cmp354 = icmp ne i32 %conv350, %conv353
  br i1 %cmp354, label %if.then356, label %if.end358

if.then356:                                       ; preds = %if.end343
  %121 = load i32, i32* %ch, align 4
  %call357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %121)
  store i32 1, i32* %result, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %if.end343
  br label %do.end359

do.end359:                                        ; preds = %if.end358
  br label %for.inc

for.inc:                                          ; preds = %do.end359
  %122 = load i32, i32* %ch, align 4
  %inc = add nsw i32 %122, 1
  store i32 %inc, i32* %ch, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %123 = load i32, i32* %result, align 4
  %cmp360 = icmp eq i32 %123, 0
  br i1 %cmp360, label %if.then362, label %if.end364

if.then362:                                       ; preds = %for.end
  %call363 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %if.end364

if.end364:                                        ; preds = %if.then362, %for.end
  %124 = load i32, i32* %result, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare dso_local i64 @wctype(i8*) #1

declare dso_local i32 @puts(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare dso_local i32 @iswctype(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @iswalnum(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswalpha(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswcntrl(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswdigit(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswgraph(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswlower(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswprint(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswpunct(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswspace(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswupper(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
