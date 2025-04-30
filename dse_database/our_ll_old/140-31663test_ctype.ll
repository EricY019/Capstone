; ModuleID = './code/140-31663test_ctype.c'
source_filename = "./code/140-31663test_ctype.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c" BOGUS\00", align 1
@__stdoutp = external global ptr, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i16, align 2
  %lose = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %lose, align 4
  store i16 0, ptr %c, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr %c, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr %c, align 2
  %conv2 = trunc i16 %1 to i8
  call void @print_char(i8 noundef zeroext %conv2)
  %2 = load i16, ptr %c, align 2
  %conv3 = zext i16 %2 to i32
  %call = call i32 @islower(i32 noundef %conv3) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %3 = load i16, ptr %c, align 2
  %conv4 = zext i16 %3 to i32
  %cmp5 = icmp sle i32 97, %conv4
  br i1 %cmp5, label %land.lhs.true7, label %if.then

land.lhs.true7:                                   ; preds = %land.lhs.true
  %4 = load i16, ptr %c, align 2
  %conv8 = zext i16 %4 to i32
  %cmp9 = icmp sle i32 %conv8, 122
  br i1 %cmp9, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true7, %for.body
  %5 = load i16, ptr %c, align 2
  %conv11 = zext i16 %5 to i32
  %call12 = call i32 @islower(i32 noundef %conv11) #3
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.lhs.false22, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %6 = load i16, ptr %c, align 2
  %conv15 = zext i16 %6 to i32
  %cmp16 = icmp sle i32 97, %conv15
  br i1 %cmp16, label %land.lhs.true18, label %lor.lhs.false22

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %7 = load i16, ptr %c, align 2
  %conv19 = zext i16 %7 to i32
  %cmp20 = icmp sle i32 %conv19, 122
  br i1 %cmp20, label %if.then, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %land.lhs.true18, %land.lhs.true14, %lor.lhs.false
  %8 = load i16, ptr %c, align 2
  %conv23 = zext i16 %8 to i32
  %call24 = call i32 @toupper(i32 noundef %conv23) #3
  %9 = load i16, ptr %c, align 2
  %conv25 = zext i16 %9 to i32
  %cmp26 = icmp sle i32 97, %conv25
  br i1 %cmp26, label %land.lhs.true28, label %cond.false

land.lhs.true28:                                  ; preds = %lor.lhs.false22
  %10 = load i16, ptr %c, align 2
  %conv29 = zext i16 %10 to i32
  %cmp30 = icmp sle i32 %conv29, 122
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true28
  %11 = load i16, ptr %c, align 2
  %conv32 = zext i16 %11 to i32
  %sub = sub nsw i32 %conv32, 97
  %add = add nsw i32 65, %sub
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true28, %lor.lhs.false22
  %12 = load i16, ptr %c, align 2
  %conv33 = zext i16 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv33, %cond.false ]
  %cmp34 = icmp ne i32 %call24, %cond
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end, %land.lhs.true18, %land.lhs.true7, %land.lhs.true
  %13 = load ptr, ptr @__stdoutp, align 8
  %call36 = call i32 @"\01_fputs"(ptr noundef @.str, ptr noundef %13)
  %14 = load i32, ptr %lose, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %lose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load i16, ptr %c, align 2
  %conv37 = zext i16 %15 to i32
  %call38 = call i32 @isascii(i32 noundef %conv37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %do.body
  %16 = load ptr, ptr @__stdoutp, align 8
  %call41 = call i32 @"\01_fputs"(ptr noundef @.str.1, ptr noundef %16)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %do.body
  %17 = load i16, ptr %c, align 2
  %conv43 = zext i16 %17 to i32
  %call44 = call i32 @isalnum(i32 noundef %conv43) #3
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end42
  %18 = load ptr, ptr @__stdoutp, align 8
  %call47 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %18)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42
  %19 = load i16, ptr %c, align 2
  %conv49 = zext i16 %19 to i32
  %call50 = call i32 @isalpha(i32 noundef %conv49) #3
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end48
  %20 = load ptr, ptr @__stdoutp, align 8
  %call53 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %20)
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48
  %21 = load i16, ptr %c, align 2
  %conv55 = zext i16 %21 to i32
  %call56 = call i32 @iscntrl(i32 noundef %conv55) #3
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end54
  %22 = load ptr, ptr @__stdoutp, align 8
  %call59 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %22)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end54
  %23 = load i16, ptr %c, align 2
  %conv61 = zext i16 %23 to i32
  %call62 = call i32 @isdigit(i32 noundef %conv61) #3
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end60
  %24 = load ptr, ptr @__stdoutp, align 8
  %call65 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %24)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end60
  %25 = load i16, ptr %c, align 2
  %conv67 = zext i16 %25 to i32
  %call68 = call i32 @isgraph(i32 noundef %conv67) #3
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end66
  %26 = load ptr, ptr @__stdoutp, align 8
  %call71 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %26)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end66
  %27 = load i16, ptr %c, align 2
  %conv73 = zext i16 %27 to i32
  %call74 = call i32 @islower(i32 noundef %conv73) #3
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end72
  %28 = load ptr, ptr @__stdoutp, align 8
  %call77 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %28)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end72
  %29 = load i16, ptr %c, align 2
  %conv79 = zext i16 %29 to i32
  %call80 = call i32 @isprint(i32 noundef %conv79) #3
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end78
  %30 = load ptr, ptr @__stdoutp, align 8
  %call83 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %30)
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end78
  %31 = load i16, ptr %c, align 2
  %conv85 = zext i16 %31 to i32
  %call86 = call i32 @ispunct(i32 noundef %conv85) #3
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end84
  %32 = load ptr, ptr @__stdoutp, align 8
  %call89 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %32)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end84
  %33 = load i16, ptr %c, align 2
  %conv91 = zext i16 %33 to i32
  %call92 = call i32 @isspace(i32 noundef %conv91) #3
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end90
  %34 = load ptr, ptr @__stdoutp, align 8
  %call95 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %34)
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end90
  %35 = load i16, ptr %c, align 2
  %conv97 = zext i16 %35 to i32
  %call98 = call i32 @isupper(i32 noundef %conv97) #3
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.end96
  %36 = load ptr, ptr @__stdoutp, align 8
  %call101 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %36)
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end96
  %37 = load i16, ptr %c, align 2
  %conv103 = zext i16 %37 to i32
  %call104 = call i32 @isxdigit(i32 noundef %conv103) #3
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end102
  %38 = load ptr, ptr @__stdoutp, align 8
  %call107 = call i32 @"\01_fputs"(ptr noundef @.str.12, ptr noundef %38)
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end102
  %39 = load i16, ptr %c, align 2
  %conv109 = zext i16 %39 to i32
  %call110 = call i32 @isblank(i32 noundef %conv109) #3
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end108
  %40 = load ptr, ptr @__stdoutp, align 8
  %call113 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %40)
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end108
  br label %do.end

do.end:                                           ; preds = %if.end114
  %41 = load ptr, ptr @__stdoutp, align 8
  %call115 = call i32 @"\01_fputs"(ptr noundef @.str.14, ptr noundef %41)
  %42 = load i16, ptr %c, align 2
  %conv116 = zext i16 %42 to i32
  %call117 = call i32 @tolower(i32 noundef %conv116) #3
  %conv118 = trunc i32 %call117 to i8
  call void @print_char(i8 noundef zeroext %conv118)
  %43 = load ptr, ptr @__stdoutp, align 8
  %call119 = call i32 @"\01_fputs"(ptr noundef @.str.15, ptr noundef %43)
  %44 = load i16, ptr %c, align 2
  %conv120 = zext i16 %44 to i32
  %call121 = call i32 @toupper(i32 noundef %conv120) #3
  %conv122 = trunc i32 %call121 to i8
  call void @print_char(i8 noundef zeroext %conv122)
  %call123 = call i32 @putchar(i32 noundef 10)
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %45 = load i16, ptr %c, align 2
  %inc124 = add i16 %45, 1
  store i16 %inc124, ptr %c, align 2
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %46 = load ptr, ptr @__stdoutp, align 8
  %call125 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %46)
  %call126 = call i32 @tolower(i32 noundef -1) #3
  %cmp127 = icmp ne i32 %call126, -1
  br i1 %cmp127, label %if.then129, label %if.end133

if.then129:                                       ; preds = %for.end
  %47 = load i32, ptr %lose, align 4
  %inc130 = add nsw i32 %47, 1
  store i32 %inc130, ptr %lose, align 4
  %call131 = call i32 @tolower(i32 noundef -1) #3
  %call132 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, i32 noundef %call131)
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %for.end
  %call134 = call i32 @toupper(i32 noundef -1) #3
  %cmp135 = icmp ne i32 %call134, -1
  br i1 %cmp135, label %if.then137, label %if.end141

if.then137:                                       ; preds = %if.end133
  %48 = load i32, ptr %lose, align 4
  %inc138 = add nsw i32 %48, 1
  store i32 %inc138, ptr %lose, align 4
  %call139 = call i32 @toupper(i32 noundef -1) #3
  %call140 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %call139)
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end133
  br label %do.body142

do.body142:                                       ; preds = %if.end141
  %call143 = call i32 @isascii(i32 noundef -1)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then145, label %if.end148

if.then145:                                       ; preds = %do.body142
  %49 = load ptr, ptr @__stdoutp, align 8
  %call146 = call i32 @"\01_fputs"(ptr noundef @.str.1, ptr noundef %49)
  %50 = load i32, ptr %lose, align 4
  %inc147 = add nsw i32 %50, 1
  store i32 %inc147, ptr %lose, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %do.body142
  %call149 = call i32 @isalnum(i32 noundef -1) #3
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.end148
  %51 = load ptr, ptr @__stdoutp, align 8
  %call152 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %51)
  %52 = load i32, ptr %lose, align 4
  %inc153 = add nsw i32 %52, 1
  store i32 %inc153, ptr %lose, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end148
  %call155 = call i32 @isalpha(i32 noundef -1) #3
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then157, label %if.end160

if.then157:                                       ; preds = %if.end154
  %53 = load ptr, ptr @__stdoutp, align 8
  %call158 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %53)
  %54 = load i32, ptr %lose, align 4
  %inc159 = add nsw i32 %54, 1
  store i32 %inc159, ptr %lose, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.end154
  %call161 = call i32 @iscntrl(i32 noundef -1) #3
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then163, label %if.end166

if.then163:                                       ; preds = %if.end160
  %55 = load ptr, ptr @__stdoutp, align 8
  %call164 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %55)
  %56 = load i32, ptr %lose, align 4
  %inc165 = add nsw i32 %56, 1
  store i32 %inc165, ptr %lose, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end160
  %call167 = call i32 @isdigit(i32 noundef -1) #3
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.end166
  %57 = load ptr, ptr @__stdoutp, align 8
  %call170 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %57)
  %58 = load i32, ptr %lose, align 4
  %inc171 = add nsw i32 %58, 1
  store i32 %inc171, ptr %lose, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.end166
  %call173 = call i32 @isgraph(i32 noundef -1) #3
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.end178

if.then175:                                       ; preds = %if.end172
  %59 = load ptr, ptr @__stdoutp, align 8
  %call176 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %59)
  %60 = load i32, ptr %lose, align 4
  %inc177 = add nsw i32 %60, 1
  store i32 %inc177, ptr %lose, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.end172
  %call179 = call i32 @islower(i32 noundef -1) #3
  %tobool180 = icmp ne i32 %call179, 0
  br i1 %tobool180, label %if.then181, label %if.end184

if.then181:                                       ; preds = %if.end178
  %61 = load ptr, ptr @__stdoutp, align 8
  %call182 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %61)
  %62 = load i32, ptr %lose, align 4
  %inc183 = add nsw i32 %62, 1
  store i32 %inc183, ptr %lose, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %if.end178
  %call185 = call i32 @isprint(i32 noundef -1) #3
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then187, label %if.end190

if.then187:                                       ; preds = %if.end184
  %63 = load ptr, ptr @__stdoutp, align 8
  %call188 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %63)
  %64 = load i32, ptr %lose, align 4
  %inc189 = add nsw i32 %64, 1
  store i32 %inc189, ptr %lose, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then187, %if.end184
  %call191 = call i32 @ispunct(i32 noundef -1) #3
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.then193, label %if.end196

if.then193:                                       ; preds = %if.end190
  %65 = load ptr, ptr @__stdoutp, align 8
  %call194 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %65)
  %66 = load i32, ptr %lose, align 4
  %inc195 = add nsw i32 %66, 1
  store i32 %inc195, ptr %lose, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %if.end190
  %call197 = call i32 @isspace(i32 noundef -1) #3
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.then199, label %if.end202

if.then199:                                       ; preds = %if.end196
  %67 = load ptr, ptr @__stdoutp, align 8
  %call200 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %67)
  %68 = load i32, ptr %lose, align 4
  %inc201 = add nsw i32 %68, 1
  store i32 %inc201, ptr %lose, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then199, %if.end196
  %call203 = call i32 @isupper(i32 noundef -1) #3
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then205, label %if.end208

if.then205:                                       ; preds = %if.end202
  %69 = load ptr, ptr @__stdoutp, align 8
  %call206 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %69)
  %70 = load i32, ptr %lose, align 4
  %inc207 = add nsw i32 %70, 1
  store i32 %inc207, ptr %lose, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %if.end202
  %call209 = call i32 @isxdigit(i32 noundef -1) #3
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then211, label %if.end214

if.then211:                                       ; preds = %if.end208
  %71 = load ptr, ptr @__stdoutp, align 8
  %call212 = call i32 @"\01_fputs"(ptr noundef @.str.12, ptr noundef %71)
  %72 = load i32, ptr %lose, align 4
  %inc213 = add nsw i32 %72, 1
  store i32 %inc213, ptr %lose, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %if.end208
  %call215 = call i32 @isblank(i32 noundef -1) #3
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then217, label %if.end220

if.then217:                                       ; preds = %if.end214
  %73 = load ptr, ptr @__stdoutp, align 8
  %call218 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %73)
  %74 = load i32, ptr %lose, align 4
  %inc219 = add nsw i32 %74, 1
  store i32 %inc219, ptr %lose, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end214
  br label %do.end221

do.end221:                                        ; preds = %if.end220
  %75 = load i32, ptr %lose, align 4
  %tobool222 = icmp ne i32 %75, 0
  %76 = zext i1 %tobool222 to i64
  %cond223 = select i1 %tobool222, i32 1, i32 0
  ret i32 %cond223
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @print_char(i8 noundef zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %conv = zext i8 %0 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i32 noundef %conv)
  %1 = load i8, ptr %c.addr, align 1
  %conv1 = zext i8 %1 to i32
  %call2 = call i32 @isgraph(i32 noundef %conv1) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1
  %conv3 = zext i8 %2 to i32
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %conv3)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8, ptr %c.addr, align 1
  %conv5 = zext i8 %3 to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i32 noundef %conv5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @islower(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

declare i32 @isascii(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @iscntrl(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isgraph(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @ispunct(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isupper(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isblank(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #1

declare i32 @putchar(i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
