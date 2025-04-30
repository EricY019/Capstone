; ModuleID = './code/211-10044test_wctype.c'
source_filename = "./code/211-10044test_wctype.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

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

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %bit_alnum = alloca i32, align 4
  %bit_alpha = alloca i32, align 4
  %bit_cntrl = alloca i32, align 4
  %bit_digit = alloca i32, align 4
  %bit_graph = alloca i32, align 4
  %bit_lower = alloca i32, align 4
  %bit_print = alloca i32, align 4
  %bit_punct = alloca i32, align 4
  %bit_space = alloca i32, align 4
  %bit_upper = alloca i32, align 4
  %bit_xdigit = alloca i32, align 4
  %ch = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %result, align 4
  %call = call i32 @wctype(ptr noundef @.str)
  store i32 %call, ptr %bit_alnum, align 4
  %call1 = call i32 @wctype(ptr noundef @.str.1)
  store i32 %call1, ptr %bit_alpha, align 4
  %call2 = call i32 @wctype(ptr noundef @.str.2)
  store i32 %call2, ptr %bit_cntrl, align 4
  %call3 = call i32 @wctype(ptr noundef @.str.3)
  store i32 %call3, ptr %bit_digit, align 4
  %call4 = call i32 @wctype(ptr noundef @.str.4)
  store i32 %call4, ptr %bit_graph, align 4
  %call5 = call i32 @wctype(ptr noundef @.str.5)
  store i32 %call5, ptr %bit_lower, align 4
  %call6 = call i32 @wctype(ptr noundef @.str.6)
  store i32 %call6, ptr %bit_print, align 4
  %call7 = call i32 @wctype(ptr noundef @.str.7)
  store i32 %call7, ptr %bit_punct, align 4
  %call8 = call i32 @wctype(ptr noundef @.str.8)
  store i32 %call8, ptr %bit_space, align 4
  %call9 = call i32 @wctype(ptr noundef @.str.9)
  store i32 %call9, ptr %bit_upper, align 4
  %call10 = call i32 @wctype(ptr noundef @.str.10)
  store i32 %call10, ptr %bit_xdigit, align 4
  %call11 = call i32 @wctype(ptr noundef @.str.11)
  %cmp = icmp ne i32 %call11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call12 = call i32 @puts(ptr noundef @.str.12)
  store i32 1, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %ch, align 4
  %cmp13 = icmp slt i32 %0, 256
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %1 = load i32, ptr %ch, align 4
  %call14 = call i32 @isalnum(i32 noundef %1) #3
  %cmp15 = icmp eq i32 %call14, 0
  %conv = zext i1 %cmp15 to i32
  %2 = load i32, ptr %ch, align 4
  %3 = load i32, ptr %bit_alnum, align 4
  %call16 = call i32 @iswctype(i32 noundef %2, i32 noundef %3)
  %cmp17 = icmp eq i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %cmp19 = icmp ne i32 %conv, %conv18
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %do.body
  %4 = load i32, ptr %ch, align 4
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str, i32 noundef %4)
  store i32 1, ptr %result, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body
  %5 = load i32, ptr %ch, align 4
  %call24 = call i32 @isalnum(i32 noundef %5) #3
  %cmp25 = icmp eq i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %6 = load i32, ptr %ch, align 4
  %call27 = call i32 @iswalnum(i32 noundef %6)
  %cmp28 = icmp eq i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %cmp30 = icmp ne i32 %conv26, %conv29
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end23
  %7 = load i32, ptr %ch, align 4
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str, i32 noundef %7)
  store i32 1, ptr %result, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end23
  br label %do.end

do.end:                                           ; preds = %if.end34
  br label %do.body35

do.body35:                                        ; preds = %do.end
  %8 = load i32, ptr %ch, align 4
  %call36 = call i32 @isalpha(i32 noundef %8) #3
  %cmp37 = icmp eq i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %9 = load i32, ptr %ch, align 4
  %10 = load i32, ptr %bit_alpha, align 4
  %call39 = call i32 @iswctype(i32 noundef %9, i32 noundef %10)
  %cmp40 = icmp eq i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %cmp42 = icmp ne i32 %conv38, %conv41
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %do.body35
  %11 = load i32, ptr %ch, align 4
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.1, i32 noundef %11)
  store i32 1, ptr %result, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body35
  %12 = load i32, ptr %ch, align 4
  %call47 = call i32 @isalpha(i32 noundef %12) #3
  %cmp48 = icmp eq i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %13 = load i32, ptr %ch, align 4
  %call50 = call i32 @iswalpha(i32 noundef %13)
  %cmp51 = icmp eq i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %cmp53 = icmp ne i32 %conv49, %conv52
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end46
  %14 = load i32, ptr %ch, align 4
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.1, i32 noundef %14)
  store i32 1, ptr %result, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end46
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  br label %do.body59

do.body59:                                        ; preds = %do.end58
  %15 = load i32, ptr %ch, align 4
  %call60 = call i32 @iscntrl(i32 noundef %15) #3
  %cmp61 = icmp eq i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %16 = load i32, ptr %ch, align 4
  %17 = load i32, ptr %bit_cntrl, align 4
  %call63 = call i32 @iswctype(i32 noundef %16, i32 noundef %17)
  %cmp64 = icmp eq i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %cmp66 = icmp ne i32 %conv62, %conv65
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %do.body59
  %18 = load i32, ptr %ch, align 4
  %call69 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.2, i32 noundef %18)
  store i32 1, ptr %result, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %do.body59
  %19 = load i32, ptr %ch, align 4
  %call71 = call i32 @iscntrl(i32 noundef %19) #3
  %cmp72 = icmp eq i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %20 = load i32, ptr %ch, align 4
  %call74 = call i32 @iswcntrl(i32 noundef %20)
  %cmp75 = icmp eq i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %cmp77 = icmp ne i32 %conv73, %conv76
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end70
  %21 = load i32, ptr %ch, align 4
  %call80 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.2, i32 noundef %21)
  store i32 1, ptr %result, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end70
  br label %do.end82

do.end82:                                         ; preds = %if.end81
  br label %do.body83

do.body83:                                        ; preds = %do.end82
  %22 = load i32, ptr %ch, align 4
  %call84 = call i32 @isdigit(i32 noundef %22) #3
  %cmp85 = icmp eq i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  %23 = load i32, ptr %ch, align 4
  %24 = load i32, ptr %bit_digit, align 4
  %call87 = call i32 @iswctype(i32 noundef %23, i32 noundef %24)
  %cmp88 = icmp eq i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %cmp90 = icmp ne i32 %conv86, %conv89
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %do.body83
  %25 = load i32, ptr %ch, align 4
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.3, i32 noundef %25)
  store i32 1, ptr %result, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %do.body83
  %26 = load i32, ptr %ch, align 4
  %call95 = call i32 @isdigit(i32 noundef %26) #3
  %cmp96 = icmp eq i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %27 = load i32, ptr %ch, align 4
  %call98 = call i32 @iswdigit(i32 noundef %27)
  %cmp99 = icmp eq i32 %call98, 0
  %conv100 = zext i1 %cmp99 to i32
  %cmp101 = icmp ne i32 %conv97, %conv100
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end94
  %28 = load i32, ptr %ch, align 4
  %call104 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.3, i32 noundef %28)
  store i32 1, ptr %result, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end94
  br label %do.end106

do.end106:                                        ; preds = %if.end105
  br label %do.body107

do.body107:                                       ; preds = %do.end106
  %29 = load i32, ptr %ch, align 4
  %call108 = call i32 @isgraph(i32 noundef %29) #3
  %cmp109 = icmp eq i32 %call108, 0
  %conv110 = zext i1 %cmp109 to i32
  %30 = load i32, ptr %ch, align 4
  %31 = load i32, ptr %bit_graph, align 4
  %call111 = call i32 @iswctype(i32 noundef %30, i32 noundef %31)
  %cmp112 = icmp eq i32 %call111, 0
  %conv113 = zext i1 %cmp112 to i32
  %cmp114 = icmp ne i32 %conv110, %conv113
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %do.body107
  %32 = load i32, ptr %ch, align 4
  %call117 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.4, i32 noundef %32)
  store i32 1, ptr %result, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %do.body107
  %33 = load i32, ptr %ch, align 4
  %call119 = call i32 @isgraph(i32 noundef %33) #3
  %cmp120 = icmp eq i32 %call119, 0
  %conv121 = zext i1 %cmp120 to i32
  %34 = load i32, ptr %ch, align 4
  %call122 = call i32 @iswgraph(i32 noundef %34)
  %cmp123 = icmp eq i32 %call122, 0
  %conv124 = zext i1 %cmp123 to i32
  %cmp125 = icmp ne i32 %conv121, %conv124
  br i1 %cmp125, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.end118
  %35 = load i32, ptr %ch, align 4
  %call128 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.4, i32 noundef %35)
  store i32 1, ptr %result, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end118
  br label %do.end130

do.end130:                                        ; preds = %if.end129
  br label %do.body131

do.body131:                                       ; preds = %do.end130
  %36 = load i32, ptr %ch, align 4
  %call132 = call i32 @islower(i32 noundef %36) #3
  %cmp133 = icmp eq i32 %call132, 0
  %conv134 = zext i1 %cmp133 to i32
  %37 = load i32, ptr %ch, align 4
  %38 = load i32, ptr %bit_lower, align 4
  %call135 = call i32 @iswctype(i32 noundef %37, i32 noundef %38)
  %cmp136 = icmp eq i32 %call135, 0
  %conv137 = zext i1 %cmp136 to i32
  %cmp138 = icmp ne i32 %conv134, %conv137
  br i1 %cmp138, label %if.then140, label %if.end142

if.then140:                                       ; preds = %do.body131
  %39 = load i32, ptr %ch, align 4
  %call141 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.5, i32 noundef %39)
  store i32 1, ptr %result, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %do.body131
  %40 = load i32, ptr %ch, align 4
  %call143 = call i32 @islower(i32 noundef %40) #3
  %cmp144 = icmp eq i32 %call143, 0
  %conv145 = zext i1 %cmp144 to i32
  %41 = load i32, ptr %ch, align 4
  %call146 = call i32 @iswlower(i32 noundef %41)
  %cmp147 = icmp eq i32 %call146, 0
  %conv148 = zext i1 %cmp147 to i32
  %cmp149 = icmp ne i32 %conv145, %conv148
  br i1 %cmp149, label %if.then151, label %if.end153

if.then151:                                       ; preds = %if.end142
  %42 = load i32, ptr %ch, align 4
  %call152 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.5, i32 noundef %42)
  store i32 1, ptr %result, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end142
  br label %do.end154

do.end154:                                        ; preds = %if.end153
  br label %do.body155

do.body155:                                       ; preds = %do.end154
  %43 = load i32, ptr %ch, align 4
  %call156 = call i32 @isprint(i32 noundef %43) #3
  %cmp157 = icmp eq i32 %call156, 0
  %conv158 = zext i1 %cmp157 to i32
  %44 = load i32, ptr %ch, align 4
  %45 = load i32, ptr %bit_print, align 4
  %call159 = call i32 @iswctype(i32 noundef %44, i32 noundef %45)
  %cmp160 = icmp eq i32 %call159, 0
  %conv161 = zext i1 %cmp160 to i32
  %cmp162 = icmp ne i32 %conv158, %conv161
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %do.body155
  %46 = load i32, ptr %ch, align 4
  %call165 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.6, i32 noundef %46)
  store i32 1, ptr %result, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %do.body155
  %47 = load i32, ptr %ch, align 4
  %call167 = call i32 @isprint(i32 noundef %47) #3
  %cmp168 = icmp eq i32 %call167, 0
  %conv169 = zext i1 %cmp168 to i32
  %48 = load i32, ptr %ch, align 4
  %call170 = call i32 @iswprint(i32 noundef %48)
  %cmp171 = icmp eq i32 %call170, 0
  %conv172 = zext i1 %cmp171 to i32
  %cmp173 = icmp ne i32 %conv169, %conv172
  br i1 %cmp173, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end166
  %49 = load i32, ptr %ch, align 4
  %call176 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.6, i32 noundef %49)
  store i32 1, ptr %result, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.end166
  br label %do.end178

do.end178:                                        ; preds = %if.end177
  br label %do.body179

do.body179:                                       ; preds = %do.end178
  %50 = load i32, ptr %ch, align 4
  %call180 = call i32 @ispunct(i32 noundef %50) #3
  %cmp181 = icmp eq i32 %call180, 0
  %conv182 = zext i1 %cmp181 to i32
  %51 = load i32, ptr %ch, align 4
  %52 = load i32, ptr %bit_punct, align 4
  %call183 = call i32 @iswctype(i32 noundef %51, i32 noundef %52)
  %cmp184 = icmp eq i32 %call183, 0
  %conv185 = zext i1 %cmp184 to i32
  %cmp186 = icmp ne i32 %conv182, %conv185
  br i1 %cmp186, label %if.then188, label %if.end190

if.then188:                                       ; preds = %do.body179
  %53 = load i32, ptr %ch, align 4
  %call189 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.7, i32 noundef %53)
  store i32 1, ptr %result, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %do.body179
  %54 = load i32, ptr %ch, align 4
  %call191 = call i32 @ispunct(i32 noundef %54) #3
  %cmp192 = icmp eq i32 %call191, 0
  %conv193 = zext i1 %cmp192 to i32
  %55 = load i32, ptr %ch, align 4
  %call194 = call i32 @iswpunct(i32 noundef %55)
  %cmp195 = icmp eq i32 %call194, 0
  %conv196 = zext i1 %cmp195 to i32
  %cmp197 = icmp ne i32 %conv193, %conv196
  br i1 %cmp197, label %if.then199, label %if.end201

if.then199:                                       ; preds = %if.end190
  %56 = load i32, ptr %ch, align 4
  %call200 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.7, i32 noundef %56)
  store i32 1, ptr %result, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %if.end190
  br label %do.end202

do.end202:                                        ; preds = %if.end201
  br label %do.body203

do.body203:                                       ; preds = %do.end202
  %57 = load i32, ptr %ch, align 4
  %call204 = call i32 @isspace(i32 noundef %57) #3
  %cmp205 = icmp eq i32 %call204, 0
  %conv206 = zext i1 %cmp205 to i32
  %58 = load i32, ptr %ch, align 4
  %59 = load i32, ptr %bit_space, align 4
  %call207 = call i32 @iswctype(i32 noundef %58, i32 noundef %59)
  %cmp208 = icmp eq i32 %call207, 0
  %conv209 = zext i1 %cmp208 to i32
  %cmp210 = icmp ne i32 %conv206, %conv209
  br i1 %cmp210, label %if.then212, label %if.end214

if.then212:                                       ; preds = %do.body203
  %60 = load i32, ptr %ch, align 4
  %call213 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.8, i32 noundef %60)
  store i32 1, ptr %result, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %do.body203
  %61 = load i32, ptr %ch, align 4
  %call215 = call i32 @isspace(i32 noundef %61) #3
  %cmp216 = icmp eq i32 %call215, 0
  %conv217 = zext i1 %cmp216 to i32
  %62 = load i32, ptr %ch, align 4
  %call218 = call i32 @iswspace(i32 noundef %62)
  %cmp219 = icmp eq i32 %call218, 0
  %conv220 = zext i1 %cmp219 to i32
  %cmp221 = icmp ne i32 %conv217, %conv220
  br i1 %cmp221, label %if.then223, label %if.end225

if.then223:                                       ; preds = %if.end214
  %63 = load i32, ptr %ch, align 4
  %call224 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.8, i32 noundef %63)
  store i32 1, ptr %result, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.end214
  br label %do.end226

do.end226:                                        ; preds = %if.end225
  br label %do.body227

do.body227:                                       ; preds = %do.end226
  %64 = load i32, ptr %ch, align 4
  %call228 = call i32 @isupper(i32 noundef %64) #3
  %cmp229 = icmp eq i32 %call228, 0
  %conv230 = zext i1 %cmp229 to i32
  %65 = load i32, ptr %ch, align 4
  %66 = load i32, ptr %bit_upper, align 4
  %call231 = call i32 @iswctype(i32 noundef %65, i32 noundef %66)
  %cmp232 = icmp eq i32 %call231, 0
  %conv233 = zext i1 %cmp232 to i32
  %cmp234 = icmp ne i32 %conv230, %conv233
  br i1 %cmp234, label %if.then236, label %if.end238

if.then236:                                       ; preds = %do.body227
  %67 = load i32, ptr %ch, align 4
  %call237 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.9, i32 noundef %67)
  store i32 1, ptr %result, align 4
  br label %if.end238

if.end238:                                        ; preds = %if.then236, %do.body227
  %68 = load i32, ptr %ch, align 4
  %call239 = call i32 @isupper(i32 noundef %68) #3
  %cmp240 = icmp eq i32 %call239, 0
  %conv241 = zext i1 %cmp240 to i32
  %69 = load i32, ptr %ch, align 4
  %call242 = call i32 @iswupper(i32 noundef %69)
  %cmp243 = icmp eq i32 %call242, 0
  %conv244 = zext i1 %cmp243 to i32
  %cmp245 = icmp ne i32 %conv241, %conv244
  br i1 %cmp245, label %if.then247, label %if.end249

if.then247:                                       ; preds = %if.end238
  %70 = load i32, ptr %ch, align 4
  %call248 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.9, i32 noundef %70)
  store i32 1, ptr %result, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then247, %if.end238
  br label %do.end250

do.end250:                                        ; preds = %if.end249
  br label %do.body251

do.body251:                                       ; preds = %do.end250
  %71 = load i32, ptr %ch, align 4
  %call252 = call i32 @isxdigit(i32 noundef %71) #3
  %cmp253 = icmp eq i32 %call252, 0
  %conv254 = zext i1 %cmp253 to i32
  %72 = load i32, ptr %ch, align 4
  %73 = load i32, ptr %bit_xdigit, align 4
  %call255 = call i32 @iswctype(i32 noundef %72, i32 noundef %73)
  %cmp256 = icmp eq i32 %call255, 0
  %conv257 = zext i1 %cmp256 to i32
  %cmp258 = icmp ne i32 %conv254, %conv257
  br i1 %cmp258, label %if.then260, label %if.end262

if.then260:                                       ; preds = %do.body251
  %74 = load i32, ptr %ch, align 4
  %call261 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.10, i32 noundef %74)
  store i32 1, ptr %result, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %do.body251
  %75 = load i32, ptr %ch, align 4
  %call263 = call i32 @isxdigit(i32 noundef %75) #3
  %cmp264 = icmp eq i32 %call263, 0
  %conv265 = zext i1 %cmp264 to i32
  %76 = load i32, ptr %ch, align 4
  %call266 = call i32 @iswxdigit(i32 noundef %76)
  %cmp267 = icmp eq i32 %call266, 0
  %conv268 = zext i1 %cmp267 to i32
  %cmp269 = icmp ne i32 %conv265, %conv268
  br i1 %cmp269, label %if.then271, label %if.end273

if.then271:                                       ; preds = %if.end262
  %77 = load i32, ptr %ch, align 4
  %call272 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.10, i32 noundef %77)
  store i32 1, ptr %result, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %if.end262
  br label %do.end274

do.end274:                                        ; preds = %if.end273
  br label %for.inc

for.inc:                                          ; preds = %do.end274
  %78 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %79 = load i32, ptr %result, align 4
  %cmp275 = icmp eq i32 %79, 0
  br i1 %cmp275, label %if.then277, label %if.end279

if.then277:                                       ; preds = %for.end
  %call278 = call i32 @puts(ptr noundef @.str.15)
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %for.end
  %80 = load i32, ptr %result, align 4
  ret i32 %80
}

declare i32 @wctype(ptr noundef) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) #2

declare i32 @iswctype(i32 noundef, i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @iswalnum(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) #2

declare i32 @iswalpha(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @iscntrl(i32 noundef) #2

declare i32 @iswcntrl(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #2

declare i32 @iswdigit(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isgraph(i32 noundef) #2

declare i32 @iswgraph(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @islower(i32 noundef) #2

declare i32 @iswlower(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) #2

declare i32 @iswprint(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @ispunct(i32 noundef) #2

declare i32 @iswpunct(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #2

declare i32 @iswspace(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isupper(i32 noundef) #2

declare i32 @iswupper(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) #2

declare i32 @iswxdigit(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
